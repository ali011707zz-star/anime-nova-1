import { Router } from "express";
import { logger } from "../lib/logger";

const router = Router();

// ── Disk cache for dubbed catalog (يبقى بعد pm2 restart) ──────────────────────
import { existsSync as _dcExists, readFileSync as _dcRead, writeFileSync as _dcWrite, mkdirSync as _dcMkdir } from "node:fs";
import { join as _dcJoin } from "node:path";

const _DC_DIR = "/opt/nova-cache/dubbed";
try { if (!_dcExists(_DC_DIR)) _dcMkdir(_DC_DIR, { recursive: true }); } catch {}

function _dcGet(key: string): any | null {
  try {
    const fp = _dcJoin(_DC_DIR, key.replace(/[^a-z0-9_-]/gi,"_") + ".json");
    if (!_dcExists(fp)) return null;
    const r = JSON.parse(_dcRead(fp, "utf8"));
    if (r._ts && Date.now() - r._ts > CATALOG_TTL * 2) return null; // 2× TTL grace
    return r.data;
  } catch { return null; }
}

function _dcSet(key: string, data: any): void {
  try {
    const fp = _dcJoin(_DC_DIR, key.replace(/[^a-z0-9_-]/gi,"_") + ".json");
    _dcWrite(fp, JSON.stringify({ data, _ts: Date.now() }), "utf8");
  } catch {}
}

const SC_BASE = "https://starcima.com";
const AT_BASE = "https://www.arabic-toons.com";
const TMDB_KEY_DUB = "8265bd1679663a7ea12ac168da84d2e8";

/* ── TMDB poster lookup (24h cache) ── */
const _tmdbPosterCache = new Map<string, { poster: string; ts: number }>();
async function _fetchTmdbPosterDub(title: string): Promise<string> {
  const cacheKey = title.toLowerCase().trim();
  const hit = _tmdbPosterCache.get(cacheKey);
  if (hit && Date.now() - hit.ts < 24 * 60 * 60_000) return hit.poster;
  try {
    const q = title.replace(/\s*(Dub(?:bed)?|\d+)\s*/gi, " ").replace(/\s+/g, " ").trim();
    const r = await fetch(
      `https://api.themoviedb.org/3/search/multi?api_key=${TMDB_KEY_DUB}&query=${encodeURIComponent(q)}&language=ar`,
      { signal: AbortSignal.timeout(5000) }
    );
    if (!r.ok) return "";
    const d = await r.json();
    const path = d.results?.[0]?.poster_path;
    const poster = path ? `https://image.tmdb.org/t/p/w342${path}` : "";
    _tmdbPosterCache.set(cacheKey, { poster, ts: Date.now() });
    return poster;
  } catch { return ""; }
}
const CF_PROXY_BASE = "http://localhost:8000";
const BROWSER_UA =
  "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36";

let _cfProxyAlive: boolean | null = null;
let _cfProxyCheckedAt = 0;

function isCfBlock(html: string): boolean {
    return !html || html.length < 300
    || html.includes("Just a moment")
    || html.includes("cf-browser-verification")
    || html.includes("Attention Required!");
} // <-- هذا هو القوس الذي حُذف بالخطأ، قم بإعادته هنا

const MOBILE_UA =
  "Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.6367.82 Mobile Safari/537.36";

async function cfGet(url: string, referer?: string, timeoutMs = 18000): Promise<string | null> {
  const now = Date.now();
  if (_cfProxyAlive === null || now - _cfProxyCheckedAt > 60_000) {
    try {
      const h = await fetch(`${CF_PROXY_BASE}/health`, { signal: AbortSignal.timeout(2000) });
      _cfProxyAlive = h.ok;
    } catch { _cfProxyAlive = false; }
    _cfProxyCheckedAt = now;
  }

  // 1. Try CF proxy (localhost:8000) if alive
  if (_cfProxyAlive) {
    try {
      const proxyUrl = new URL(`${CF_PROXY_BASE}/fetch`);
      proxyUrl.searchParams.set("url", url);
      if (referer) proxyUrl.searchParams.set("ref", referer);
      proxyUrl.searchParams.set("timeout", String(Math.floor(timeoutMs / 1000)));
      const r = await fetch(proxyUrl.toString(), { signal: AbortSignal.timeout(timeoutMs + 3000) });
      if (r.ok) {
        const html = await r.text();
        if (!isCfBlock(html)) return html;
      }
    } catch { /* fall through */ }
  }

  // 2. Try direct fetch with desktop UA
  try {
    const r = await fetch(url, {
      headers: {
        "User-Agent": BROWSER_UA,
        Referer: referer || url,
        Accept: "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
        "Accept-Language": "ar,en-US;q=0.9,en;q=0.8",
        "Accept-Encoding": "gzip, deflate, br",
        "Cache-Control": "no-cache",
      },
      signal: AbortSignal.timeout(Math.min(timeoutMs, 12000)),
    });
    if (r.ok) {
      const html = await r.text();
      if (!isCfBlock(html)) return html;
    }
  } catch { /* fall through */ }

  // 3. Try with mobile UA (CF sometimes lets mobile through)
  try {
    const r = await fetch(url, {
      headers: {
        "User-Agent": MOBILE_UA,
        Referer: referer || url,
        Accept: "text/html,*/*;q=0.9",
        "Accept-Language": "ar-SA,ar;q=0.9",
      },
      signal: AbortSignal.timeout(Math.min(timeoutMs, 10000)),
    });
    if (r.ok) {
      const html = await r.text();
      if (!isCfBlock(html)) return html;
    }
  } catch { /* fall through */ }

  return null;
}

// ── L1 cache for catalog pages ──
const _catalogCache = new Map<string, { data: any; ts: number }>();
const CATALOG_TTL = 4 * 60 * 60_000; // 4 ساعات — أطول من قبل (كان 30 دقيقة)

async function fetchStarCimaDubbed(path: string): Promise<any> {
  const hit = _catalogCache.get(path);
  if (hit && Date.now() - hit.ts < CATALOG_TTL) return hit.data;
  try {
    // قبل الجلب من الشبكة، جرّب الـ disk cache (يبقى بعد restart)
    const diskHit = _dcGet(path);
    if (diskHit) {
      _catalogCache.set(path, { data: diskHit, ts: Date.now() - CATALOG_TTL + 10 * 60_000 }); // يُجدَّد خلال 10 دقائق
    }
    const r = await fetch(`${SC_BASE}${path}`, {
      headers: {
        "User-Agent": BROWSER_UA,
        Referer: `${SC_BASE}/dubbed`,
        Accept: "application/json",
      },
      signal: AbortSignal.timeout(12000),
    });
    if (!r.ok) return null;
    const data = await r.json();
    _catalogCache.set(path, { data, ts: Date.now() });
    _dcSet(path, data); // حفظ على القرص للـ restart القادم
    return data;
  } catch (e) {
    logger.warn({ err: e }, "dubbed: fetchStarCimaDubbed error");
    return null;
  }
}

// ── GET /api/dubbed/catalog?page=N ──
router.get("/dubbed/catalog", async (req, res) => {
  const page = parseInt(req.query.page as string || "1", 10) || 1;
  const data = await fetchStarCimaDubbed(`/api/dubbed/catalog?page=${page}`);
  if (!data) { res.status(502).json({ error: "upstream failed" }); return; }

  // ── TMDB poster fallback: أصناف بدون poster أو image → ابحث في TMDB ──
  const results: any[] = Array.isArray(data) ? data : (data.results || []);
  const missing = results.filter((s: any) => !s.poster && !s.image);
  if (missing.length > 0) {
    await Promise.allSettled(missing.map(async (s: any) => {
      const p = await _fetchTmdbPosterDub(s.title || s.name || "");
      if (p) { s.poster = p; s.image = p; }
    }));
  }

  res.setHeader("Cache-Control", "public, max-age=1800");
  res.json(data);
});

// ── GET /api/dubbed/search?q= ──
router.get("/dubbed/search", async (req, res) => {
  const q = (req.query.q as string || "").trim();
  if (!q) { res.json({ results: [] }); return; }
  try {
    const r = await fetch(`${SC_BASE}/api/dubbed/search?q=${encodeURIComponent(q)}`, {
      headers: { "User-Agent": BROWSER_UA, Referer: `${SC_BASE}/dubbed`, Accept: "application/json" },
      signal: AbortSignal.timeout(8000),
    });
    if (!r.ok) { res.json({ results: [] }); return; }
    const data = await r.json();
    res.setHeader("Cache-Control", "public, max-age=300");
    res.json(data);
  } catch { res.json({ results: [] }); }
});

// ── GET /api/dubbed/episodes?series= ──
router.get("/dubbed/episodes", async (req, res) => {
  const series = (req.query.series as string || "").trim();
  if (!series) { res.json({ episodes: [] }); return; }

  const cacheKey = `/api/dubbed/episodes?series=${series}`;
  const hit = _catalogCache.get(cacheKey);
  if (hit && Date.now() - hit.ts < CATALOG_TTL) {
    res.setHeader("Cache-Control", "public, max-age=1800");
    res.json({ episodes: hit.data });
    return;
  }

  try {
    const r = await fetch(`${SC_BASE}/api/dubbed/episodes?series=${encodeURIComponent(series)}`, {
      headers: { "User-Agent": BROWSER_UA, Referer: `${SC_BASE}/dubbed`, Accept: "application/json" },
      signal: AbortSignal.timeout(10000),
    });
    if (!r.ok) { res.json({ episodes: [] }); return; }
    const data = await r.json();
    const episodes = Array.isArray(data) ? data : (data.episodes || []);
    _catalogCache.set(cacheKey, { data: episodes, ts: Date.now() });
    res.setHeader("Cache-Control", "public, max-age=1800");
    res.json({ episodes });
  } catch { res.json({ episodes: [] }); }
});

// ── GET /api/dubbed/watch-src?epUrl= ──
// Fetches the arabic-toons.com episode page and extracts the video URL (MP4 or HLS).
// arabic-toons uses a clappr player with a JS variable: const videoSrc = "https://...mp4?tkn=..."
const ALLOWED_DUBBED_HOSTNAMES = new Set([
  "www.arabic-toons.com",
  "arabic-toons.com",
]);

router.get("/dubbed/watch-src", async (req, res) => {
  const epUrl = (req.query.epUrl as string || "").trim();
  // صلاحية الـ URL: يجب أن يكون https ومن نطاق arabic-toons.com فقط
  let parsedEpUrl: URL;
  try {
    parsedEpUrl = new URL(epUrl);
    if (parsedEpUrl.protocol !== "https:" || !ALLOWED_DUBBED_HOSTNAMES.has(parsedEpUrl.hostname)) {
      throw new Error("hostname not allowed");
    }
  } catch {
    res.status(400).json({ error: "invalid epUrl" }); return;
  }

  try {
    // ── جلب صفحة الحلقة — نجرب direct fetch أولاً (أسرع وأكثر موثوقية لـ arabic-toons)
    // ثم cfGet كـ fallback إن فشل الطلب المباشر
    let html: string | null = null;
    try {
      const directR = await fetch(epUrl, {
        headers: {
          "User-Agent": BROWSER_UA,
          Referer: AT_BASE + "/",
          Accept: "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
          "Accept-Language": "ar,en-US;q=0.9,en;q=0.8",
          "Accept-Encoding": "gzip, deflate, br",
          "Cache-Control": "no-cache",
        },
        signal: AbortSignal.timeout(12000),
      });
      if (directR.ok) {
        const t = await directR.text();
        if (t.length > 500 && !isCfBlock(t)) html = t;
      }
    } catch { /* fall through */ }

    if (!html) html = await cfGet(epUrl, AT_BASE + "/", 18000);
    if (!html) { res.status(502).json({ error: "failed to fetch episode page" }); return; }

    // Helper: build proxied URL + return rawUrl for mobile clients.
    // foupix CDN (stream.foupix.com:8443) blocks datacenter IPs (VPS/Replit).
    // Mobile devices on residential IPs CAN stream rawUrl directly.
    // The `ips` query param is a constant tied to the content file — NOT to any IP.
    // nova-mobile/dubbed/watch.tsx picks rawUrl first, proxyUrl as fallback.
    function resolveVideoUrl(rawUrl: string, type: "hls" | "mp4"): { hlsUrl: string; rawUrl: string; type: string } {
      if (type === "hls") {
        const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(rawUrl)}&ref=${encodeURIComponent(AT_BASE + "/")}`;
        return { hlsUrl: proxied, rawUrl, type: "hls" };
      }
      // foupix CDN validates ua-hash in token against the User-Agent used at token-generation time.
      // Use /api/dubbed/stream which proxies from server with the same BROWSER_UA — NOT a 307 redirect.
      const proxied = `/api/dubbed/stream?url=${encodeURIComponent(rawUrl)}`;
      return { hlsUrl: proxied, rawUrl, type: "mp4" };
    }

    // Pattern 1: videoSrc = "https://stream.foupix.com:8443/...mp4?tkn=..."  (main pattern)
    // arabic-toons uses: videoSrc = "URL"+ "&_=" + Date.now()  — بدون كلمة const
    const videoSrcMatch = html.match(/(?:const\s+)?videoSrc\s*=\s*["']([^"']+(?:\.mp4|\.m3u8)[^"']*)["']/);
    if (videoSrcMatch) {
      const rawUrl = videoSrcMatch[1].split('"')[0].split("'")[0]; // strip any trailing quote
      const isHls = rawUrl.includes(".m3u8");
      const resolved = await resolveVideoUrl(rawUrl, isHls ? "hls" : "mp4");
      res.json(resolved);
      return;
    }

    // Pattern 2: file: "https://....mp4" (JW Player or Video.js setup)
    const fileMatch = html.match(/['"](https?:\/\/[^"']+\.mp4[^"']*)['"]/);
    if (fileMatch) {
      const rawUrl = fileMatch[1];
      const resolved = await resolveVideoUrl(rawUrl, "mp4");
      res.json(resolved);
      return;
    }

    // Pattern 3: HLS m3u8 in <source src="...">
    const srcMatch = html.match(/src=["']([^"']+\.m3u8[^"']*)["']/);
    if (srcMatch) {
      const hlsRaw = srcMatch[1];
      const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(hlsRaw)}&ref=${encodeURIComponent(AT_BASE + "/")}`;
      res.json({ hlsUrl: proxied, rawUrl: hlsRaw, type: "hls" });
      return;
    }

    logger.warn({ epUrl }, "dubbed: no video source found in episode page");
    res.status(404).json({ error: "no video source found" });
  } catch (e: any) {
    logger.warn({ err: e }, "dubbed: watch-src error");
    res.status(502).json({ error: String(e?.message || e) });
  }
});

// ── GET /api/dubbed/stream → فوبيكس CDN streaming proxy ──────────────────────
// foupix CDN يتحقق من UA hash في الـ token — يجب الـ stream من السيرفر بنفس UA الذي أنتج الـ token.
// يدعم Range requests للتقديم والتأخير (seeking).
const FOUPIX_HOSTS = new Set(["stream.foupix.com"]);

router.get("/dubbed/stream", async (req, res) => {
  const rawUrl = (req.query.url as string || "").trim();
  if (!rawUrl) { res.status(400).json({ error: "missing url" }); return; }
  let parsed: URL;
  try {
    parsed = new URL(rawUrl);
    if (parsed.protocol !== "https:" || !FOUPIX_HOSTS.has(parsed.hostname)) {
      throw new Error("hostname not allowed");
    }
  } catch {
    res.status(400).json({ error: "invalid or disallowed url" }); return;
  }
  try {
    const fetchHeaders: Record<string, string> = {
      "User-Agent": BROWSER_UA,
      "Referer": AT_BASE + "/",
      "Origin": AT_BASE,
      "Accept": "*/*",
    };
    // Forward Range header for seeking support
    const rangeHeader = req.headers["range"];
    if (rangeHeader) fetchHeaders["Range"] = rangeHeader;

    const upstream = await fetch(rawUrl, {
      headers: fetchHeaders,
      signal: AbortSignal.timeout(30_000),
    });

    // Forward status (206 Partial Content for Range, 200 for full)
    const status = upstream.status;
    if (status === 403 || status === 401) {
      res.status(403).json({ error: "foupix token expired or UA mismatch" }); return;
    }
    if (!upstream.ok && status !== 206) {
      res.status(status).json({ error: `upstream ${status}` }); return;
    }

    // Forward relevant headers
    const ct = upstream.headers.get("content-type") || "video/mp4";
    const cl = upstream.headers.get("content-length");
    const cr = upstream.headers.get("content-range");
    const ac = upstream.headers.get("accept-ranges");
    res.status(status);
    res.setHeader("Content-Type", ct);
    res.setHeader("Cache-Control", "no-store");
    res.setHeader("Access-Control-Allow-Origin", "*");
    if (cl) res.setHeader("Content-Length", cl);
    if (cr) res.setHeader("Content-Range", cr);
    if (ac) res.setHeader("Accept-Ranges", ac);

    // Pipe body
    if (upstream.body) {
      const { Readable } = await import("stream");
      const readable = Readable.fromWeb(upstream.body as any);
      readable.pipe(res);
      readable.on("error", () => res.end());
    } else {
      res.end();
    }
  } catch (e: any) {
    if (!res.headersSent) res.status(502).json({ error: String(e?.message || e) });
  }
});

// ── GET /api/dubbed/img?f= → proxy image through StarCima's own img endpoint ──
// StarCima hosts/proxies all arabic-toons images via /api/dubbed/img?f=
// This approach is reliable and avoids CF challenges on arabic-toons.com directly.
// Supports both series posters (cat_XXXXXXXXXX.jpg) and episode thumbnails (mqdefault_XXXXX.jpg)
router.get("/dubbed/img", async (req, res) => {
  const f = (req.query.f as string || "").trim();
  if (!f || !/^[\w\-\.]+$/.test(f)) { res.status(400).send("bad"); return; }

  // Use StarCima's own image proxy endpoint (confirmed HTTP 200)
  const scImgUrl = `${SC_BASE}/api/dubbed/img?f=${encodeURIComponent(f)}`;

  try {
    const r = await fetch(scImgUrl, {
      headers: {
        "User-Agent": BROWSER_UA,
        Referer: `${SC_BASE}/dubbed`,
        Accept: "image/*,*/*",
      },
      signal: AbortSignal.timeout(10000),
    });
    if (r.ok) {
      const ct = r.headers.get("content-type") || "image/jpeg";
      if (ct.includes("image") || ct.includes("octet")) {
        const buf = Buffer.from(await r.arrayBuffer());
        res.setHeader("Content-Type", ct);
        res.setHeader("Cache-Control", "public, max-age=86400");
        res.send(buf);
        return;
      }
    }
    // Fallback: try arabic-toons.com/images/anime/{f} directly via CF proxy
    const atImgUrl = `${AT_BASE}/images/anime/${f}`;
    const html2 = await cfGet(atImgUrl, AT_BASE + "/", 8000);
    if (html2) {
      res.setHeader("Content-Type", "image/jpeg");
      res.setHeader("Cache-Control", "public, max-age=86400");
      res.send(Buffer.from(html2, "binary"));
      return;
    }
    res.status(404).send("not found");
  } catch {
    res.status(502).send("proxy error");
  }
});

export default router;
