"""
CF Proxy — خادم Flask يستخدم curl_cffi + primp لتجاوز Cloudflare
/fetch        : scraping النصوص (HTML) مع Cloudflare bypass (curl_cffi → primp fallback)
/stream       : proxy ثنائي للـ CDN مع Referer/Origin + Range support
/chain-fetch  : جلب صفحتين بنفس الجلسة (session persistence للـ cookies)
/health       : فحص الحالة

تحسينات 2026-07:
- strip_html() : حذف الصور/CSS/الإعلانات/SVG من HTML → تقليل الحجم 70-85%
- cookie_cache : تخزين كوكيز الـ domain وإعادة استخدامها (TTL 45 دقيقة)
  → أول طلب لـ domain = يحل الكوكيز ويخزّنها
  → كل طلب تالٍ = يستخدم الكوكيز المخزّنة فوراً بدون إعادة التفاوض
  → يشمل كل أنمي وكل حلقة وكل مستخدم على نفس الـ domain
"""

import json
import os
import random
import re
import threading
import time
import urllib.parse
from flask import Flask, request, Response, stream_with_context
from curl_cffi import requests as cf

try:
    import primp as _primp
    PRIMP_AVAILABLE = True
except ImportError:
    PRIMP_AVAILABLE = False

app = Flask(__name__)

CF_PROXY_KEY = os.environ.get("CF_PROXY_KEY", "")

# ── بصمات curl_cffi ────────────────────────────────────────────────────────────
CURL_IMPERSONATES = [
    "chrome136", "chrome131", "chrome130", "chrome124",
    "safari18_0", "firefox133",
]

# ── بصمات primp ───────────────────────────────────────────────────────────────
PRIMP_IMPERSONATES = [
    ("chrome_148", "windows"),
    ("chrome_147", "windows"),
    ("chrome_146", "macos"),
    ("chrome_145", "linux"),
    ("edge_148",   "windows"),
    ("edge_147",   "windows"),
    ("firefox_148","windows"),
    ("firefox_146","linux"),
    ("safari_26",  "macos"),
]

_IMP_TO_CHROME_VER = {
    "chrome136": "136", "chrome131": "131", "chrome130": "130", "chrome124": "124",
    "edge_148": "148", "edge_147": "147",
    "chrome_148": "148", "chrome_147": "147", "chrome_146": "146",
    "chrome_145": "145",
}

# ═══════════════════════════════════════════════════════════════════════════════
# COOKIE CACHE — تخزين كوكيز لكل domain مع TTL
# كوكيز domain واحد تفتح كل صفحاته لكل المستخدمين بدون إعادة طلب
# ═══════════════════════════════════════════════════════════════════════════════
_cookie_cache: dict = {}   # domain → {"cookies": str, "ua": str, "imp": str, "ts": float}
_cookie_lock = threading.Lock()
COOKIE_TTL = 45 * 60      # 45 دقيقة

def _get_domain(url: str) -> str:
    try:
        p = urllib.parse.urlparse(url)
        return p.netloc.lower()
    except Exception:
        return ""

def _load_cookies(domain: str) -> dict | None:
    """استرجاع كوكيز domain من الـ cache إذا لم تنتهِ صلاحيتها"""
    if not domain:
        return None
    with _cookie_lock:
        entry = _cookie_cache.get(domain)
        if entry and (time.time() - entry["ts"]) < COOKIE_TTL:
            return entry
    return None

def _save_cookies(domain: str, cookies_str: str, ua: str, imp: str):
    """حفظ كوكيز domain في الـ cache"""
    if not domain or not cookies_str:
        return
    with _cookie_lock:
        _cookie_cache[domain] = {
            "cookies": cookies_str,
            "ua":      ua,
            "imp":     imp,
            "ts":      time.time(),
        }

def _extract_cookies(resp) -> str:
    """استخراج Set-Cookie headers من الـ response"""
    try:
        cookies = resp.cookies
        if hasattr(cookies, 'items'):
            return "; ".join(f"{k}={v}" for k, v in cookies.items())
    except Exception:
        pass
    return ""

# ═══════════════════════════════════════════════════════════════════════════════
# HTML STRIPPER — حذف الصور/CSS/الإعلانات/SVG
# يقلل حجم الـ HTML من 70-100KB إلى 8-20KB عادةً
# يُبقي: <script> (قد تحتوي روابط فيديو) + <iframe> (مشغّلات الفيديو)
# ═══════════════════════════════════════════════════════════════════════════════

# شبكات الإعلانات المعروفة — يُحذف الـ script tag كاملاً لو ذُكر في src
_AD_DOMAINS = (
    "googlesyndication", "doubleclick", "googleadservices", "adsbygoogle",
    "prebid", "amazon-adsystem", "disqus", "pushcrew", "onesignal",
    "outbrain", "taboola", "revcontent", "propellerads", "popcash",
    "popads", "exoclick", "trafficjunky", "juicyads",
)

def strip_html(html: str) -> str:
    """
    يحذف من HTML كل ما لا علاقة له باستخراج رابط الفيديو:
    - الصور (<img>, <picture>, <source> للصور, <figure>)
    - SVG
    - CSS (<style>, <link rel=stylesheet>)
    - تعليقات HTML
    - <noscript> blocks
    - الإعلانات (script tags من شبكات معروفة)
    - سطور فارغة متكررة
    يُبقي: <script> (JSON/video data) + <iframe> (player embeds)
    """
    # حذف صور
    html = re.sub(r'<img\b[^>]*/?>',                          '', html, flags=re.IGNORECASE)
    html = re.sub(r'<picture\b[^>]*>.*?</picture>',           '', html, flags=re.IGNORECASE | re.DOTALL)
    html = re.sub(r'<figure\b[^>]*>.*?</figure>',             '', html, flags=re.IGNORECASE | re.DOTALL)
    # حذف <source> للصور فقط (type=image أو داخل picture — تم حذف picture بالكامل أعلاه)
    html = re.sub(r'<source\b[^>]*type=["\']image/[^"\']*["\'][^>]*/?>','', html, flags=re.IGNORECASE)
    # حذف SVG
    html = re.sub(r'<svg\b[^>]*>.*?</svg>',                   '', html, flags=re.IGNORECASE | re.DOTALL)
    # حذف CSS
    html = re.sub(r'<style\b[^>]*>.*?</style>',               '', html, flags=re.IGNORECASE | re.DOTALL)
    html = re.sub(r'<link\b[^>]*rel=["\']stylesheet["\'][^>]*/?>','', html, flags=re.IGNORECASE)
    html = re.sub(r'<link\b[^>]*rel=["\']preload["\'][^>]*/?>','',   html, flags=re.IGNORECASE)
    html = re.sub(r'<link\b[^>]*rel=["\']prefetch["\'][^>]*/?>','',  html, flags=re.IGNORECASE)
    # حذف تعليقات HTML
    html = re.sub(r'<!--.*?-->',                               '', html, flags=re.DOTALL)
    # حذف <noscript>
    html = re.sub(r'<noscript\b[^>]*>.*?</noscript>',         '', html, flags=re.IGNORECASE | re.DOTALL)
    # حذف إعلانات — script tags من شبكات معروفة
    ad_pattern = '|'.join(re.escape(d) for d in _AD_DOMAINS)
    html = re.sub(
        r'<script\b[^>]*src=["\'][^"\']*(' + ad_pattern + r')[^"\']*["\'][^>]*>.*?</script>',
        '', html, flags=re.IGNORECASE | re.DOTALL
    )
    html = re.sub(
        r'<script\b[^>]*src=["\'][^"\']*(' + ad_pattern + r')[^"\']*["\'][^>]*/?>',
        '', html, flags=re.IGNORECASE
    )
    # تنظيف سطور فارغة متكررة
    html = re.sub(r'\n{3,}', '\n\n', html)
    html = re.sub(r'[ \t]{2,}', ' ',  html)
    return html.strip()


# ═══════════════════════════════════════════════════════════════════════════════
# HELPERS
# ═══════════════════════════════════════════════════════════════════════════════

def _sec_ch_ua(imp_name: str) -> str:
    ver = _IMP_TO_CHROME_VER.get(imp_name, "136")
    if "safari"  in imp_name: return '"Safari";v="18", "Not=A?Brand";v="8"'
    if "firefox" in imp_name: return ""
    if "edge"    in imp_name:
        return f'"Microsoft Edge";v="{ver}", "Chromium";v="{ver}", "Not=A?Brand";v="99"'
    return f'"Chromium";v="{ver}", "Google Chrome";v="{ver}", "Not=A?Brand";v="99"'

def _build_headers(imp_name: str, referer: str | None = None,
                   extra: dict | None = None,
                   cached_cookies: str | None = None) -> dict:
    is_firefox = "firefox" in imp_name
    is_safari  = "safari"  in imp_name
    ver = _IMP_TO_CHROME_VER.get(imp_name, "136")

    if is_firefox:
        ua = "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:133.0) Gecko/20100101 Firefox/133.0"
    elif is_safari:
        ua = "Mozilla/5.0 (Macintosh; Intel Mac OS X 14_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0 Safari/605.1.15"
    else:
        ua = (f"Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
              f"AppleWebKit/537.36 (KHTML, like Gecko) Chrome/{ver}.0.0.0 Safari/537.36")

    hdrs = {
        "User-Agent":                ua,
        "Accept":                    "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8",
        "Accept-Language":           "ar,en-US;q=0.9,en;q=0.8",
        "Accept-Encoding":           "gzip, deflate, br",
        "Cache-Control":             "no-cache",
        "Pragma":                    "no-cache",
        "Upgrade-Insecure-Requests": "1",
    }

    sec = _sec_ch_ua(imp_name)
    if sec:
        is_mobile = "mobile" in imp_name
        hdrs["sec-ch-ua"]          = sec
        hdrs["sec-ch-ua-mobile"]   = "?1" if is_mobile else "?0"
        hdrs["sec-ch-ua-platform"] = (
            '"macOS"' if ("macos" in imp_name or is_safari) else
            '"Linux"' if "linux" in imp_name else '"Windows"'
        )
        hdrs["sec-fetch-dest"] = "document"
        hdrs["sec-fetch-mode"] = "navigate"
        hdrs["sec-fetch-site"] = "none" if not referer else "same-origin"
        hdrs["sec-fetch-user"] = "?1"

    if referer:
        hdrs["Referer"] = referer

    # حقن الكوكيز المخزّنة لهذا الـ domain
    if cached_cookies:
        hdrs["Cookie"] = cached_cookies

    if extra:
        hdrs.update(extra)

    return hdrs

DEFAULT_UA = (
    "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
    "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36"
)

def check_key():
    if not CF_PROXY_KEY:
        return True
    return request.args.get("key", "") == CF_PROXY_KEY

def is_cf_blocked(status: int, body: str) -> bool:
    if status in (403, 429, 503):
        return True
    low = body.lower()
    if "just a moment" in low and ("cf_chl_" in low or "cloudflare" in low):
        return True
    if "access denied" in low and "cloudflare" in low:
        return True
    if "error 1020" in low or "error 1015" in low:
        return True
    return False

def fetch_curl(url: str, hdrs: dict, method: str = "GET",
               body: bytes = b"", timeout: int = 15,
               impersonate: str = None) -> tuple:
    imp = impersonate or random.choice(CURL_IMPERSONATES)
    kwargs = dict(headers=hdrs, impersonate=imp, timeout=timeout,
                  allow_redirects=True, verify=False)
    if method == "POST":
        resp = cf.post(url, data=body, **kwargs)
    else:
        resp = cf.get(url, **kwargs)
    return resp.status_code, resp.text, imp, resp

def fetch_primp(url: str, hdrs: dict, method: str = "GET",
                body: bytes = b"", timeout: int = 15,
                imp_pair: tuple = None) -> tuple:
    if not PRIMP_AVAILABLE:
        raise RuntimeError("primp not installed")
    browser, os_name = imp_pair or random.choice(PRIMP_IMPERSONATES)
    client = _primp.Client(impersonate=browser, impersonate_os=os_name,
                            verify=False, timeout=timeout)
    if method == "POST":
        resp = client.post(url, headers=hdrs, data=body)
    else:
        resp = client.get(url, headers=hdrs)
    return resp.status_code, resp.text, f"{browser}/{os_name}", resp


# ═══════════════════════════════════════════════════════════════════════════════
# ROUTES
# ═══════════════════════════════════════════════════════════════════════════════

@app.route("/health")
def health():
    with _cookie_lock:
        cached_domains = list(_cookie_cache.keys())
    return {
        "ok":             True,
        "service":        "cf-proxy",
        "curl_cffi":      True,
        "primp":          PRIMP_AVAILABLE,
        "curl_imps":      len(CURL_IMPERSONATES),
        "primp_imps":     len(PRIMP_IMPERSONATES),
        "cached_domains": cached_domains,          # المواقع التي عندنا كوكيز لها
        "cookie_ttl_min": COOKIE_TTL // 60,
    }


@app.route("/fetch", methods=["GET", "POST"])
def fetch_url():
    url = request.args.get("url", "").strip()
    if not url:
        return {"error": "url param required"}, 400

    referer      = request.args.get("ref", "").strip() or None
    method       = request.args.get("method", "GET").upper()
    timeout      = int(request.args.get("timeout", "15"))
    force_engine = request.args.get("engine", "").lower()
    warmup       = request.args.get("warmup", "").strip()
    do_strip     = request.args.get("strip", "0") == "1"  # ?strip=1 → حذف الصور/CSS/إعلانات

    extra_raw = request.args.get("headers", "")
    extra_hdrs = {}
    if extra_raw:
        try:
            extra_hdrs = json.loads(extra_raw)
        except Exception:
            pass

    post_body = b""
    if method == "POST":
        post_body = request.get_data(as_text=False) or b""

    # ── كوكيز مخزّنة لهذا الـ domain ─────────────────────────────────────────
    domain      = _get_domain(url)
    cached_data = _load_cookies(domain)
    cached_ck   = cached_data["cookies"] if cached_data else None
    if cached_ck:
        cached_imp = cached_data.get("imp", random.choice(CURL_IMPERSONATES))
    else:
        cached_imp = None

    status, body_text, engine_used, raw_resp = 0, "", "none", None
    error_msg = ""

    # ── المحاولة 1: curl_cffi ─────────────────────────────────────────────────
    if force_engine != "primp":
        # لو عندنا كوكيز مخزّنة → جرّب بنفس الـ fingerprint أولاً
        imps_to_try = (
            [cached_imp] + [i for i in CURL_IMPERSONATES if i != cached_imp]
            if cached_imp else random.sample(CURL_IMPERSONATES, len(CURL_IMPERSONATES))
        )
        for imp in imps_to_try:
            try:
                hdrs = _build_headers(imp, referer, extra_hdrs, cached_ck)
                if method == "POST":
                    hdrs.setdefault("Content-Type",
                                    request.content_type or "application/x-www-form-urlencoded")
                if warmup:
                    try:
                        sess = cf.Session(impersonate=imp)
                        warmup_hdrs = _build_headers(imp, cached_cookies=cached_ck)
                        sess.get(warmup, headers=warmup_hdrs, timeout=8,
                                 allow_redirects=True, verify=False)
                        hdrs["Referer"] = warmup
                        resp = sess.get(url, headers=hdrs, timeout=timeout,
                                        allow_redirects=True, verify=False)
                        status, body_text, raw_resp = resp.status_code, resp.text, resp
                    except Exception:
                        status, body_text, imp, raw_resp = fetch_curl(
                            url, hdrs, method, post_body, timeout, imp)
                else:
                    status, body_text, imp, raw_resp = fetch_curl(
                        url, hdrs, method, post_body, timeout, imp)
                engine_used = f"curl/{imp}"
                error_msg = ""
                break
            except (ValueError, Exception) as e:
                error_msg = str(e)
                continue

    # ── المحاولة 2: primp fallback ────────────────────────────────────────────
    if PRIMP_AVAILABLE and (force_engine == "primp" or
                            not body_text or is_cf_blocked(status, body_text)):
        pair  = random.choice(PRIMP_IMPERSONATES)
        hdrs2 = _build_headers(pair[0], referer, extra_hdrs, cached_ck)
        if method == "POST":
            hdrs2.setdefault("Content-Type",
                             request.content_type or "application/x-www-form-urlencoded")
        try:
            s2, t2, imp2, resp2 = fetch_primp(url, hdrs2, method, post_body, timeout, pair)
            if not is_cf_blocked(s2, t2) or is_cf_blocked(status, body_text):
                status, body_text, engine_used, raw_resp = s2, t2, f"primp/{imp2}", resp2
                error_msg = ""
        except Exception as e2:
            if not body_text:
                error_msg = f"curl:{error_msg} | primp:{e2}"

    if not body_text and error_msg:
        return {"error": error_msg}, 502

    cf_blocked = is_cf_blocked(status, body_text)

    # ── حفظ الكوكيز إذا نجح الطلب ────────────────────────────────────────────
    if not cf_blocked and raw_resp and domain:
        new_cookies = _extract_cookies(raw_resp)
        if new_cookies:
            # استخرج imp المستخدم من engine_used مثل "curl/chrome131"
            used_imp = engine_used.split("/", 1)[-1] if "/" in engine_used else engine_used
            _save_cookies(domain, new_cookies, DEFAULT_UA, used_imp)

    # ── تطبيق HTML stripping إذا طُلب ────────────────────────────────────────
    original_size = len(body_text)
    if do_strip and not cf_blocked and body_text:
        body_text = strip_html(body_text)
    stripped_size = len(body_text)

    # ── اكتشاف __NEXT_DATA__ ──────────────────────────────────────────────────
    next_data = None
    if not cf_blocked and "__NEXT_DATA__" in body_text:
        m = re.search(
            r'<script[^>]+id=["\']__NEXT_DATA__["\'][^>]*>(.*?)</script>',
            body_text, re.DOTALL)
        if m:
            try:
                next_data = json.loads(m.group(1))
            except Exception:
                pass

    resp_headers = {
        "X-CF-Blocked":    "1" if cf_blocked else "0",
        "X-Final-URL":     url,
        "X-Engine-Used":   engine_used,
        "X-Body-Size":     str(stripped_size),
        "X-Original-Size": str(original_size),
        "X-Stripped":      "1" if do_strip else "0",
        "X-Cookie-Hit":    "1" if cached_ck else "0",   # هل استخدمنا كوكيز مخزّنة؟
        "Content-Type":    "text/html; charset=utf-8",
    }
    if next_data is not None:
        resp_headers["X-Has-NextData"] = "1"

    return Response(
        body_text.encode("utf-8", errors="replace"),
        status=status,
        headers=resp_headers,
    )


@app.route("/fetch-json")
def fetch_json():
    """يجلب الصفحة ويستخرج __NEXT_DATA__ مباشرة كـ JSON"""
    url = request.args.get("url", "").strip()
    if not url:
        return {"error": "url param required"}, 400

    referer = request.args.get("ref", "").strip() or None
    timeout = int(request.args.get("timeout", "15"))
    imp     = random.choice(CURL_IMPERSONATES)

    domain    = _get_domain(url)
    cached    = _load_cookies(domain)
    cached_ck = cached["cookies"] if cached else None
    hdrs      = _build_headers(imp, referer, cached_cookies=cached_ck)

    try:
        status, body_text, _, raw_resp = fetch_curl(url, hdrs, timeout=timeout)
    except Exception as e:
        if PRIMP_AVAILABLE:
            try:
                pair  = random.choice(PRIMP_IMPERSONATES)
                hdrs2 = _build_headers(pair[0], referer, cached_cookies=cached_ck)
                status, body_text, _, raw_resp = fetch_primp(url, hdrs2, timeout=timeout, imp_pair=pair)
            except Exception as e2:
                return {"error": str(e2)}, 502
        else:
            return {"error": str(e)}, 502

    if is_cf_blocked(status, body_text):
        return {"error": "cf_blocked", "status": status}, 503

    if not is_cf_blocked(status, body_text) and raw_resp and domain:
        ck = _extract_cookies(raw_resp)
        if ck:
            _save_cookies(domain, ck, DEFAULT_UA, imp)

    m = re.search(r'<script[^>]+id=["\']__NEXT_DATA__["\'][^>]*>(.*?)</script>',
                  body_text, re.DOTALL)
    if not m:
        return {"error": "no_next_data", "body_size": len(body_text)}, 404

    try:
        data = json.loads(m.group(1))
        return {"ok": True, "data": data, "engine": imp}
    except Exception as e:
        return {"error": f"json_parse: {e}"}, 500


@app.route("/stream")
def stream_url():
    if not check_key():
        return "Unauthorized", 401

    target = request.args.get("url", "").strip()
    ref    = request.args.get("ref", "").strip()
    if not target:
        return "url param required", 400
    if not target.startswith(("http://", "https://")):
        return "invalid url", 400

    origin = ""
    if ref:
        try:
            p = urllib.parse.urlparse(ref)
            origin = f"{p.scheme}://{p.netloc}"
        except Exception:
            pass
    if not origin:
        try:
            p = urllib.parse.urlparse(target)
            origin = f"{p.scheme}://{p.netloc}"
        except Exception:
            pass

    imp  = random.choice(CURL_IMPERSONATES)
    hdrs = _build_headers(imp, ref or None)
    hdrs["Accept"]          = "*/*"
    hdrs["Accept-Encoding"] = "identity"
    if origin:
        hdrs["Origin"] = origin

    range_hdr = request.headers.get("Range")
    if range_hdr:
        hdrs["Range"] = range_hdr

    try:
        resp = cf.get(target, headers=hdrs, impersonate=imp, timeout=30,
                      allow_redirects=True, stream=True, verify=False)
    except Exception as e:
        return f"upstream fetch failed: {e}", 502

    res_headers = {
        "Access-Control-Allow-Origin":   "*",
        "Access-Control-Allow-Headers":  "Range",
        "Access-Control-Expose-Headers": "Content-Length, Content-Range, Content-Type",
    }
    for h in ("Content-Type", "Content-Length", "Content-Range",
              "Accept-Ranges", "Cache-Control"):
        v = resp.headers.get(h)
        if v:
            res_headers[h] = v
    if "Cache-Control" not in res_headers:
        res_headers["Cache-Control"] = "public, max-age=3600"

    def generate():
        try:
            for chunk in resp.iter_content(chunk_size=65536):
                if chunk:
                    yield chunk
        finally:
            resp.close()

    return Response(stream_with_context(generate()), status=resp.status_code,
                    headers=res_headers)


@app.route("/chain-fetch", methods=["GET"])
def chain_fetch():
    url1 = request.args.get("url1", "").strip()
    url2 = request.args.get("url2", "").strip()
    ref1 = request.args.get("ref1", "").strip() or None
    timeout = int(request.args.get("timeout", "18"))

    if not url1 or not url2:
        return {"error": "url1 and url2 params required"}, 400

    domain    = _get_domain(url1)
    cached    = _load_cookies(domain)
    cached_ck = cached["cookies"] if cached else None

    imp   = random.choice(CURL_IMPERSONATES)
    hdrs1 = _build_headers(imp, ref1, cached_cookies=cached_ck)
    hdrs2 = _build_headers(imp, url1, cached_cookies=cached_ck)

    try:
        sess = cf.Session(impersonate=imp)
        r1   = sess.get(url1, headers=hdrs1, timeout=timeout,
                        allow_redirects=True, verify=False)
        r2   = sess.get(url2, headers=hdrs2, timeout=timeout,
                        allow_redirects=True, verify=False)

        if PRIMP_AVAILABLE and is_cf_blocked(r2.status_code, r2.text):
            pair = random.choice(PRIMP_IMPERSONATES)
            pc   = _primp.Client(impersonate=pair[0], impersonate_os=pair[1],
                                 verify=False, timeout=timeout)
            ph1  = _build_headers(pair[0], ref1, cached_cookies=cached_ck)
            ph2  = _build_headers(pair[0], url1, cached_cookies=cached_ck)
            pr1  = pc.get(url1, headers=ph1)
            pr2  = pc.get(url2, headers=ph2)
            if not is_cf_blocked(pr2.status_code, pr2.text):
                r2 = pr2

        # حفظ كوكيز الجلسة
        if not is_cf_blocked(r2.status_code, r2.text) and domain:
            ck = _extract_cookies(r2)
            if ck:
                _save_cookies(domain, ck, DEFAULT_UA, imp)

        body2 = r2.text.encode("utf-8", errors="replace")
        return Response(body2, status=r2.status_code, headers={
            "Content-Type":    "text/html; charset=utf-8",
            "X-Chain-Size1":   str(len(r1.text)),
            "X-Chain-Size2":   str(len(r2.text)),
            "X-Chain-Status1": str(r1.status_code),
            "X-Engine-Used":   imp,
            "X-Cookie-Hit":    "1" if cached_ck else "0",
        })
    except Exception as e:
        return {"error": str(e)}, 502


@app.route("/cookies")
def list_cookies():
    """فحص الكوكيز المخزّنة حالياً — لأغراض الـ debug"""
    now = time.time()
    with _cookie_lock:
        result = {
            domain: {
                "age_min": round((now - data["ts"]) / 60, 1),
                "ttl_min": round((COOKIE_TTL - (now - data["ts"])) / 60, 1),
                "imp":     data.get("imp", "?"),
                "preview": data["cookies"][:60] + "..." if len(data["cookies"]) > 60 else data["cookies"],
            }
            for domain, data in _cookie_cache.items()
        }
    return {"cached": len(result), "ttl_minutes": COOKIE_TTL // 60, "domains": result}


if __name__ == "__main__":
    port = int(os.environ.get("CF_PROXY_PORT", 8082))
    print(f"[cf-proxy] Starting on port {port}", flush=True)
    print(f"[cf-proxy] curl_cffi: {len(CURL_IMPERSONATES)} fingerprints", flush=True)
    print(f"[cf-proxy] primp:     {'✅ ' + str(len(PRIMP_IMPERSONATES)) + ' fingerprints' if PRIMP_AVAILABLE else '❌ not installed'}", flush=True)
    print(f"[cf-proxy] cookie_cache: ✅ TTL={COOKIE_TTL//60}min | strip_html: ✅", flush=True)
    app.run(host="0.0.0.0", port=port, debug=False)
