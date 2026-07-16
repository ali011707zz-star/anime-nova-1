"""
hopx_proxy_server.py — runs inside Hopx sandbox on port 3000
curl_cffi + playwright are pre-installed by the manager before this script is launched.
Uses only built-in http.server (no Flask) to avoid blinker/distutils conflicts.

Endpoints:
  GET /health                          → {"ok":true, "playwright":bool}
  GET /fetch?url=                      → {"status":..,"html":..,"cookies":..,"final_url":..}
  GET /stream?url=&ref=                → CDN stream proxy (Range-aware, chunked)
  GET /chain-fetch?url1=&url2=&ref1=   → two-step session fetch (cookies shared)
  GET /browser-extract?url=            → {"ok":bool,"urls":[{"url":..,"type":"hls"|"mp4"}]}
  GET /browser-html?url=&wait=         → {"ok":bool,"html":..,"title":..}
  POST /post?url=                      → {"status":..,"html":..,"cookies":..}
"""
import asyncio
import json
import re
import sys
from http.server import HTTPServer, BaseHTTPRequestHandler
from urllib.parse import urlparse, parse_qs, unquote

from curl_cffi import requests as cf

session = cf.Session()

# ── Playwright availability ──────────────────────────────────────────────────

_PLAYWRIGHT_OK: bool | None = None

def _check_playwright() -> bool:
    global _PLAYWRIGHT_OK
    if _PLAYWRIGHT_OK is not None:
        return _PLAYWRIGHT_OK
    try:
        from playwright.sync_api import sync_playwright  # noqa
        _PLAYWRIGHT_OK = True
    except Exception:
        _PLAYWRIGHT_OK = False
    return _PLAYWRIGHT_OK


# ── Video URL detection ──────────────────────────────────────────────────────

_VIDEO_NOISE = [
    "ads", "track", "banner", "pixel", "thumb", "poster",
    "analytics", "gtm", "doubleclick", "facebook", "google",
    "twitter", "img.", "logo", "icon",
]

def _is_video_url(u: str) -> "dict | None":
    if not u.startswith("http"):
        return None
    if any(n in u for n in _VIDEO_NOISE):
        return None
    if ".m3u8" in u:
        return {"url": u, "type": "hls"}
    if ".mp4" in u and len(u) > 30:
        return {"url": u, "type": "mp4"}
    return None

_M3U8_RE = re.compile(r"https?://[^\s\"'<>\\]+\.m3u8(?:\?[^\s\"'<>\\]*)?")
_MP4_RE  = re.compile(r"https?://[^\s\"'<>\\]+\.mp4(?:\?[^\s\"'<>\\]*)?")
_JSON_KEY_RE = re.compile(
    r'"(?:file|src|url|source|hls|stream|videoUrl|streamUrl|link|video_url|stream_url|master)"\s*:\s*"(https?://[^"\\]+)"',
    re.IGNORECASE,
)

def _extract_from_text(text: str) -> "list[dict]":
    found: list[dict] = []
    seen: set[str] = set()

    def add(u: str, t: str):
        u = u.strip().rstrip("\\,;)")
        if u not in seen and len(u) > 20 and u.startswith("http"):
            if not any(n in u for n in _VIDEO_NOISE):
                seen.add(u)
                found.append({"url": u, "type": t})

    for m in _M3U8_RE.finditer(text):
        add(m.group(0), "hls")
    for m in _MP4_RE.finditer(text):
        add(m.group(0), "mp4")
    for m in _JSON_KEY_RE.finditer(text):
        u = m.group(1)
        t = "hls" if ".m3u8" in u else "mp4" if ".mp4" in u else None
        if t:
            add(u, t)
    return found


# ── Async browser helpers ────────────────────────────────────────────────────

# Selectors to try clicking for Arabic streaming server buttons
_SERVER_SELECTORS = [
    # Common patterns on Arabic sites
    ".server-btn", ".server_btn", ".btn-server",
    ".tab-server", ".servers-list li", ".servers li",
    ".watch-btn", ".watch_btn",
    "a[data-url]", "a[data-src]", "a[data-embed]",
    ".player-tabs li:first-child", ".player-tab:first-child",
    ".tab-content .tab-pane:first-child .btn",
    # Akwam specific (tab plugin: idTabs)
    ".box-content .tab-link:first-child",
    "ul.tabs li:first-child a", "ul.tab li:first-child a",
    # Generic play button fallbacks
    "button.play", ".play-btn", ".play_btn",
    "[aria-label*='play' i]", "[title*='play' i]",
    ".jw-icon-display", ".plyr__control--overlaid",
    # Any button with "سيرفر" or "مشاهدة" text
    "a:has-text('سيرفر')", "button:has-text('سيرفر')",
    "a:has-text('مشاهدة')", "button:has-text('مشاهدة')",
    "a:has-text('تشغيل')", "button:has-text('تشغيل')",
]

async def _probe_page(page, video_urls: list, debug_list: "list | None" = None):
    """Attach request/response interceptors to an already-loaded page."""
    seen_in_list = {v["url"] for v in video_urls}

    def _add_unique(items: list):
        for item in items:
            u = item["url"]
            if u not in seen_in_list and len(u) > 20:
                seen_in_list.add(u)
                video_urls.append(item)

    async def on_request(req):
        u = req.url
        if debug_list is not None:
            debug_list.append(u)
        v = _is_video_url(u)
        if v:
            _add_unique([v])

    async def on_response(resp):
        u = resp.url
        ct = (resp.headers.get("content-type") or "").lower()
        interesting = (
            any(x in u for x in [".m3u8", ".mp4", "playlist", "stream", "video",
                                  "play", "source", "embed", "hls", "vod", "/v/"])
            or "json" in ct or "m3u8" in ct
        )
        if interesting:
            try:
                body = await resp.body()
                text = body.decode("utf-8", errors="replace")[:30000]
                hits = _extract_from_text(text)
                if hits:
                    _add_unique(hits)
            except Exception:
                pass

    page.on("request", on_request)
    page.on("response", on_response)


async def _js_probe_sources(page) -> "list[dict]":
    """Probe JS player APIs for source URLs."""
    try:
        srcs: list = await page.evaluate("""() => {
            const r = [];
            try { const f = jwplayer().getPlaylistItem().file; if (f) r.push(f); } catch(e) {}
            try { const s = window._player?.src; if (s) r.push(s); } catch(e) {}
            try { const s = window.playerConfig?.file; if (s) r.push(s); } catch(e) {}
            try {
                document.querySelectorAll('video source, video').forEach(v => {
                    const s = v.src || v.getAttribute('src') || v.currentSrc;
                    if (s && s.startsWith('http')) r.push(s);
                });
            } catch(e) {}
            try {
                for (const k of Object.keys(window)) {
                    const v = window[k];
                    if (typeof v === 'string' && (v.includes('.m3u8') || v.includes('.mp4')))
                        r.push(v);
                }
            } catch(e) {}
            return r;
        }""")
        hits = []
        for s in (srcs or []):
            if isinstance(s, str):
                hits.extend(_extract_from_text(s))
        return hits
    except Exception:
        return []


async def _try_click_server_buttons(page) -> bool:
    """Try clicking server/play buttons. Returns True if any click succeeded."""
    clicked = False
    for sel in _SERVER_SELECTORS:
        try:
            el = page.locator(sel).first
            cnt = await el.count()
            if cnt > 0:
                await el.click(timeout=2500)
                await asyncio.sleep(3)
                clicked = True
                break
        except Exception:
            continue
    return clicked


# ── Main browser extractor ───────────────────────────────────────────────────

async def _async_browser_extract(
    url: str, referer: str, timeout_ms: int, debug: bool = False
) -> dict:
    from playwright.async_api import async_playwright

    video_urls: list[dict] = []
    debug_list: "list[str] | None" = [] if debug else None

    async with async_playwright() as pw:
        browser = await pw.chromium.launch(
            headless=True,
            args=["--no-sandbox", "--disable-dev-shm-usage", "--disable-gpu",
                  "--disable-web-security"],
        )
        ctx = await browser.new_context(
            user_agent=(
                "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
                "AppleWebKit/537.36 (KHTML, like Gecko) "
                "Chrome/136.0.0.0 Safari/537.36"
            ),
            extra_http_headers={"Referer": referer} if referer else {},
            ignore_https_errors=True,
        )

        # ── Phase 1: Main page ──────────────────────────────────────────────
        page = await ctx.new_page()
        await _probe_page(page, video_urls, debug_list)

        try:
            await page.goto(url, timeout=timeout_ms, wait_until="domcontentloaded")
        except Exception:
            pass

        await asyncio.sleep(4)

        # Probe JS APIs
        video_urls.extend(await _js_probe_sources(page))

        # ── Phase 2: Click server buttons ───────────────────────────────────
        if not video_urls:
            clicked = await _try_click_server_buttons(page)
            if clicked:
                await asyncio.sleep(4)
                video_urls.extend(await _js_probe_sources(page))

        # ── Phase 3: Follow iframes ──────────────────────────────────────────
        if not video_urls:
            try:
                iframe_urls: list = await page.evaluate("""() =>
                    Array.from(document.querySelectorAll('iframe[src]'))
                        .map(f => f.src)
                        .filter(s => s.startsWith('http')
                            && !s.includes('google')
                            && !s.includes('facebook')
                            && !s.includes('twitter')
                            && !s.includes('ads'))
                """)
                for iurl in (iframe_urls or [])[:3]:
                    if debug_list is not None:
                        debug_list.append("__iframe__:" + iurl)
                    ip = await ctx.new_page()
                    await _probe_page(ip, video_urls, debug_list)
                    try:
                        await ip.goto(iurl, timeout=18000, wait_until="domcontentloaded")
                        await asyncio.sleep(4)
                        video_urls.extend(await _js_probe_sources(ip))
                        if not video_urls:
                            await _try_click_server_buttons(ip)
                            await asyncio.sleep(3)
                            video_urls.extend(await _js_probe_sources(ip))
                    except Exception:
                        pass
                    finally:
                        await ip.close()
                    if video_urls:
                        break
            except Exception:
                pass

        await browser.close()

    # Deduplicate
    seen: set[str] = set()
    unique = []
    for item in video_urls:
        u = item["url"]
        if u not in seen and u.startswith("http") and len(u) > 20:
            seen.add(u)
            unique.append(item)

    result: dict = {"ok": bool(unique), "urls": unique}
    if debug and debug_list is not None:
        result["all_requests"] = debug_list[:300]
    return result



# ── Network capture (RE tool) ────────────────────────────────────────────────

async def _async_network_capture(url: str, referer: str, wait_ms: int = 10000) -> dict:
    from playwright.async_api import async_playwright
    import re as _re

    VIDEO_EXT = (".m3u8", ".mp4", ".ts", ".mkv", ".webm")
    API_HINTS = ("api", "source", "stream", "proxy", "hls", "token",
                 "embed", "playlist", "manifest", "cdn", "media")

    reqs: list[dict] = []
    resps: list[dict] = []
    video_urls: list[str] = []

    async with async_playwright() as pw:
        browser = await pw.chromium.launch(
            headless=True,
            args=["--no-sandbox", "--disable-dev-shm-usage", "--disable-gpu",
                  "--disable-web-security",
                  "--disable-blink-features=AutomationControlled"],
        )
        ctx = await browser.new_context(
            user_agent=(
                "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
                "AppleWebKit/537.36 (KHTML, like Gecko) "
                "Chrome/136.0.0.0 Safari/537.36"
            ),
            extra_http_headers={"Referer": referer} if referer else {},
            ignore_https_errors=True,
        )
        # Stealth: hide webdriver fingerprint
        await ctx.add_init_script("Object.defineProperty(navigator,'webdriver',{get:()=>undefined})")
        page = await ctx.new_page()

        def _interesting(u: str) -> bool:
            u_lo = u.lower()
            if any(u_lo.endswith(e) or (e + "?") in u_lo for e in VIDEO_EXT):
                return True
            if any(h in u_lo for h in API_HINTS):
                # skip static assets
                if any(u_lo.endswith(s) for s in (".js", ".css", ".png", ".jpg", ".svg", ".ico", ".woff")):
                    return False
                return True
            return False

        async def on_request(req):
            u = req.url
            if _interesting(u):
                reqs.append({"method": req.method, "url": u,
                             "headers": dict(req.headers)})

        async def on_response(resp):
            u = resp.url
            u_lo = u.lower()
            if any(u_lo.endswith(e) or (e + "?") in u_lo for e in VIDEO_EXT):
                video_urls.append(u)
            if _interesting(u):
                try:
                    body = await resp.body()
                    txt = body.decode("utf-8", errors="ignore")
                    # Also look for m3u8 URLs in response body
                    found = _re.findall(r'https?://[^\s"\'<>\\]+\.m3u8[^\s"\'<>\\]*', txt)
                    found += _re.findall(r'https?://[^\s"\'<>\\]+\.mp4[^\s"\'<>\\]*', txt)
                    video_urls.extend(found)
                    resps.append({"status": resp.status, "url": u,
                                  "body": txt[:400]})
                except Exception:
                    resps.append({"status": resp.status, "url": u})

        page.on("request",  on_request)
        page.on("response", on_response)

        try:
            await page.goto(url, timeout=30000, wait_until="domcontentloaded")
        except Exception:
            pass
        await asyncio.sleep(wait_ms / 1000)

        # Also check iframes
        try:
            iframes = await page.evaluate("""() =>
                Array.from(document.querySelectorAll('iframe[src]'))
                    .map(f => f.src).filter(s => s.startsWith('http'))
            """)
            for iurl in (iframes or [])[:3]:
                ip = await ctx.new_page()
                ip.on("request",  on_request)
                ip.on("response", on_response)
                try:
                    await ip.goto(iurl, timeout=15000, wait_until="domcontentloaded")
                    await asyncio.sleep(5)
                except Exception:
                    pass
                finally:
                    await ip.close()
        except Exception:
            pass

        await browser.close()

    # deduplicate video URLs
    seen: set[str] = set()
    unique_vids = []
    for v in video_urls:
        if v not in seen:
            seen.add(v)
            unique_vids.append(v)

    return {
        "ok": True,
        "video_urls": unique_vids,
        "requests": reqs[:60],
        "responses": resps[:60],
    }


def network_capture_sync(url: str, referer: str, wait_ms: int) -> dict:
    try:
        loop = asyncio.new_event_loop()
        try:
            return loop.run_until_complete(_async_network_capture(url, referer, wait_ms))
        finally:
            loop.close()
    except Exception as e:
        return {"ok": False, "video_urls": [], "requests": [], "responses": [], "error": str(e)}

def browser_extract_sync(
    url: str, referer: str, timeout_ms: int, debug: bool = False
) -> dict:
    try:
        loop = asyncio.new_event_loop()
        try:
            return loop.run_until_complete(
                _async_browser_extract(url, referer, timeout_ms, debug)
            )
        finally:
            loop.close()
    except Exception as e:
        return {"ok": False, "urls": [], "error": str(e)}


# ── Browser HTML getter ──────────────────────────────────────────────────────

async def _async_get_html(url: str, referer: str, wait_ms: int) -> dict:
    from playwright.async_api import async_playwright
    async with async_playwright() as pw:
        browser = await pw.chromium.launch(
            headless=True,
            args=["--no-sandbox", "--disable-dev-shm-usage", "--disable-gpu"],
        )
        ctx = await browser.new_context(
            user_agent=(
                "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
                "AppleWebKit/537.36 (KHTML, like Gecko) "
                "Chrome/136.0.0.0 Safari/537.36"
            ),
            extra_http_headers={"Referer": referer} if referer else {},
            ignore_https_errors=True,
        )
        page = await ctx.new_page()
        try:
            await page.goto(url, timeout=30000, wait_until="domcontentloaded")
            await asyncio.sleep(wait_ms / 1000)
            html = await page.content()
            title = await page.title()
        except Exception as e:
            await browser.close()
            return {"ok": False, "html": "", "error": str(e)}
        await browser.close()
    return {"ok": True, "html": html[:100000], "title": title}


def get_html_sync(url: str, referer: str, wait_ms: int) -> dict:
    try:
        loop = asyncio.new_event_loop()
        try:
            return loop.run_until_complete(_async_get_html(url, referer, wait_ms))
        finally:
            loop.close()
    except Exception as e:
        return {"ok": False, "html": "", "error": str(e)}


# ── Cookie extractor (Playwright) ─────────────────────────────────────────────
# يُشغّل المتصفح مرة واحدة → يحل CF challenge → يُرجع كل الكوكيز + HTML المُعالج.
# الـ caller يخزّنها ويعيد استخدامها بدون متصفح في الطلبات التالية.

async def _async_extract_cookies(url: str, referer: str, wait_ms: int) -> dict:
    from playwright.async_api import async_playwright
    cookies_list: list = []
    async with async_playwright() as pw:
        browser = await pw.chromium.launch(
            headless=True,
            args=["--no-sandbox", "--disable-dev-shm-usage", "--disable-gpu",
                  "--disable-blink-features=AutomationControlled"],
        )
        ctx = await browser.new_context(
            user_agent=(
                "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
                "AppleWebKit/537.36 (KHTML, like Gecko) "
                "Chrome/136.0.0.0 Safari/537.36"
            ),
            extra_http_headers={"Referer": referer} if referer else {},
            ignore_https_errors=True,
        )
        # إخفاء بصمة webdriver
        await ctx.add_init_script(
            "Object.defineProperty(navigator,'webdriver',{get:()=>undefined})"
        )
        page = await ctx.new_page()
        try:
            await page.goto(url, timeout=30000, wait_until="domcontentloaded")
            # انتظر حل CF challenge + تحميل JS
            await asyncio.sleep(wait_ms / 1000)
            cookies_list = await ctx.cookies()
            html  = await page.content()
            title = await page.title()
        except Exception as e:
            await browser.close()
            return {"ok": False, "cookie_str": "", "cookies": {}, "html": "", "error": str(e)}
        await browser.close()
    cookie_str = "; ".join(f"{c['name']}={c['value']}" for c in cookies_list)
    return {
        "ok":         True,
        "cookie_str": cookie_str,
        "cookies":    {c["name"]: c["value"] for c in cookies_list},
        "html":       html[:80000],
        "title":      title,
    }


def extract_cookies_sync(url: str, referer: str, wait_ms: int) -> dict:
    try:
        loop = asyncio.new_event_loop()
        try:
            return loop.run_until_complete(_async_extract_cookies(url, referer, wait_ms))
        finally:
            loop.close()
    except Exception as e:
        return {"ok": False, "cookie_str": "", "cookies": {}, "html": "", "error": str(e)}


# ── HTTP server ──────────────────────────────────────────────────────────────

class ProxyHandler(BaseHTTPRequestHandler):
    def log_message(self, *args):
        pass

    def _send_json(self, code, data):
        body = json.dumps(data, ensure_ascii=False).encode("utf-8")
        self.send_response(code)
        self.send_header("Content-Type", "application/json; charset=utf-8")
        self.send_header("Content-Length", str(len(body)))
        self.end_headers()
        self.wfile.write(body)

    def _parse_qs(self):
        p = urlparse(self.path)
        return {k: v[0] for k, v in parse_qs(p.query).items()}

    def do_GET(self):
        parsed = urlparse(self.path)

        # ── /health ──────────────────────────────────────────────────────────
        if parsed.path == "/health":
            self._send_json(200, {
                "ok": True, "service": "hopx-proxy",
                "playwright": _check_playwright(),
            })
            return

        # ── /fetch ───────────────────────────────────────────────────────────
        if parsed.path == "/fetch":
            params = self._parse_qs()
            url    = unquote(params.get("url", ""))
            imp    = params.get("imp", "chrome136")
            ref    = params.get("ref", "")
            cookie = unquote(params.get("cookie", ""))   # كوكيز مسبقة الاستخراج
            if not url:
                self._send_json(400, {"error": "no url"}); return
            try:
                hdrs: dict = {"Referer": ref} if ref else {}
                if cookie:
                    hdrs["Cookie"] = cookie
                r = session.get(url, impersonate=imp, timeout=25,
                                allow_redirects=True, headers=hdrs or None)
                self._send_json(200, {
                    "status": r.status_code,
                    "html": r.text[:80000],
                    "cookies": dict(r.cookies),
                    "final_url": str(r.url),
                })
            except Exception as e:
                self._send_json(500, {"error": str(e)})
            return

        # ── /stream ───────────────────────────────────────────────────────────
        # CDN stream proxy مع دعم Range للـ video seeking
        if parsed.path == "/stream":
            params = self._parse_qs()
            url = unquote(params.get("url", ""))
            ref = params.get("ref", "")
            if not url:
                self._send_json(400, {"error": "url required"}); return
            try:
                from urllib.parse import urlparse as _urlparse
                _p = _urlparse(url)
                origin = f"{_p.scheme}://{_p.netloc}"
                hdrs = {
                    "Referer": ref or url,
                    "Origin": origin,
                    "Accept": "*/*",
                    "Accept-Encoding": "identity",
                }
                range_hdr = self.headers.get("Range")
                if range_hdr:
                    hdrs["Range"] = range_hdr
                r = session.get(url, impersonate="chrome136", timeout=30,
                                allow_redirects=True, headers=hdrs, stream=True)
                self.send_response(r.status_code)
                self.send_header("Access-Control-Allow-Origin", "*")
                self.send_header("Access-Control-Allow-Headers", "Range")
                self.send_header("Access-Control-Expose-Headers",
                                 "Content-Length, Content-Range, Content-Type")
                for h in ("Content-Type", "Content-Length", "Content-Range",
                          "Accept-Ranges", "Cache-Control"):
                    v = r.headers.get(h)
                    if v:
                        self.send_header(h, v)
                self.end_headers()
                for chunk in r.iter_content(chunk_size=65536):
                    if chunk:
                        self.wfile.write(chunk)
            except Exception as e:
                try:
                    self._send_json(502, {"error": str(e)})
                except Exception:
                    pass
            return

        # ── /chain-fetch ──────────────────────────────────────────────────────
        # جلب صفحتين بنفس الجلسة (cookies مشتركة) — مطلوب لبعض المصادر
        if parsed.path == "/chain-fetch":
            params = self._parse_qs()
            url1 = unquote(params.get("url1", ""))
            url2 = unquote(params.get("url2", ""))
            ref1 = params.get("ref1", "")
            if not url1 or not url2:
                self._send_json(400, {"error": "url1 and url2 required"}); return
            try:
                sess2 = cf.Session(impersonate="chrome136")
                hdrs1 = {"Referer": ref1} if ref1 else {}
                hdrs2 = {"Referer": url1}
                r1 = sess2.get(url1, headers=hdrs1, timeout=20, allow_redirects=True)
                r2 = sess2.get(url2, headers=hdrs2, timeout=20, allow_redirects=True)
                body2 = r2.text.encode("utf-8", errors="replace")
                self.send_response(r2.status_code)
                self.send_header("Content-Type", "text/html; charset=utf-8")
                self.send_header("Content-Length", str(len(body2)))
                self.send_header("X-Chain-Status1", str(r1.status_code))
                self.send_header("X-Chain-Size1", str(len(r1.text)))
                self.send_header("X-Chain-Size2", str(len(r2.text)))
                self.end_headers()
                self.wfile.write(body2)
            except Exception as e:
                self._send_json(502, {"error": str(e)})
            return

        # ── /browser-extract ─────────────────────────────────────────────────
        if parsed.path == "/browser-extract":
            if not _check_playwright():
                self._send_json(503, {"ok": False, "error": "playwright not available"})
                return
            params = self._parse_qs()
            url = unquote(params.get("url", ""))
            ref = params.get("ref", "")
            timeout_ms = int(params.get("timeout", "25000"))
            debug = params.get("debug", "0") == "1"
            if not url:
                self._send_json(400, {"ok": False, "error": "no url"}); return
            self._send_json(200, browser_extract_sync(url, ref, timeout_ms, debug))
            return

        # ── /browser-html ─────────────────────────────────────────────────────
        if parsed.path == "/browser-html":
            if not _check_playwright():
                self._send_json(503, {"ok": False, "error": "playwright not available"})
                return
            params = self._parse_qs()
            url = unquote(params.get("url", ""))
            ref = params.get("ref", "")
            wait_ms = int(params.get("wait", "4000"))
            if not url:
                self._send_json(400, {"ok": False, "error": "no url"}); return
            self._send_json(200, get_html_sync(url, ref, wait_ms))
            return


        # ── /network-capture ─────────────────────────────────────────────────
        if parsed.path == "/network-capture":
            if not _check_playwright():
                self._send_json(503, {"ok": False, "error": "playwright not available"})
                return
            params = self._parse_qs()
            url = unquote(params.get("url", ""))
            ref = params.get("ref", "")
            wait_ms = int(params.get("wait", "10000"))
            if not url:
                self._send_json(400, {"ok": False, "error": "no url"}); return
            self._send_json(200, network_capture_sync(url, ref, wait_ms))
            return

        # ── /extract-cookies ─────────────────────────────────────────────────────
        # يُشغّل Playwright مرة واحدة → يحل CF challenge → يُرجع cookies + HTML
        # الـ TTL والتخزين مسؤولية الـ caller (animation.ts)
        if parsed.path == "/extract-cookies":
            if not _check_playwright():
                self._send_json(503, {"ok": False, "error": "playwright not available"})
                return
            params  = self._parse_qs()
            url     = unquote(params.get("url", ""))
            ref     = params.get("ref", "")
            wait_ms = int(params.get("wait", "6000"))
            if not url:
                self._send_json(400, {"ok": False, "error": "no url"}); return
            self._send_json(200, extract_cookies_sync(url, ref, wait_ms))
            return

        self._send_json(404, {"error": "not found"})

    def do_POST(self):
        parsed = urlparse(self.path)

        if parsed.path == "/post":
            params = self._parse_qs()
            url    = unquote(params.get("url", ""))
            cookie = unquote(params.get("cookie", ""))   # كوكيز مسبقة الاستخراج
            if not url:
                self._send_json(400, {"error": "no url"}); return
            try:
                length = int(self.headers.get("Content-Length", 0))
                raw    = self.rfile.read(length) if length else b"{}"
                body   = json.loads(raw) if raw else {}
                hdrs: dict = {}
                if cookie:
                    hdrs["Cookie"] = cookie
                r = session.post(url, impersonate="chrome136", timeout=25,
                                 data=body.get("data"), json=body.get("json"),
                                 headers=hdrs or None)
                self._send_json(200, {
                    "status":  r.status_code,
                    "html":    r.text[:80000],
                    "cookies": dict(r.cookies),
                })
            except Exception as e:
                self._send_json(500, {"error": str(e)})
            return

        self._send_json(404, {"error": "not found"})


if __name__ == "__main__":
    port = 3000
    print(f"[hopx-proxy] starting on port {port}", flush=True)
    sys.stdout.flush()
    HTTPServer(("0.0.0.0", port), ProxyHandler).serve_forever()
