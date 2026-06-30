import { Router } from "express";
import { logger } from "../lib/logger";

const router = Router();

const SC_BASE = "https://starcima.com";
const AT_BASE = "https://www.arabic-toons.com";
const CF_PROXY_BASE = "http://localhost:8000";
const ORKESTR_BASE = process.env.ORKESTR_RELAY_URL || process.env.ORKESTR_URL || "https://anime-nova.orkestr.run";

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
const CATALOG_TTL = 30 * 60_000;

async function fetchStarCimaDubbed(path: string): Promise<any> {
  const hit = _catalogCache.get(path);
  if (hit && Date.now() - hit.ts < CATALOG_TTL) return hit.data;
  try {
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
router.get("/dubbed/watch-src", async (req, res) => {
  const epUrl = (req.query.epUrl as string || "").trim();
  if (!epUrl || !epUrl.includes("arabic-toons.com")) {
    res.status(400).json({ error: "invalid epUrl" }); return;
  }

  try {
    const html = await cfGet(epUrl, AT_BASE + "/", 18000);
    if (!html) { res.status(502).json({ error: "failed to fetch episode page" }); return; }

    // Helper: probe if a URL is accessible from our server (not IP-blocked)
    async function probeOk(url: string): Promise<boolean> {
      try {
        const r = await fetch(url, {
          method: "HEAD",
          headers: { Referer: AT_BASE + "/", "User-Agent": BROWSER_UA },
          signal: AbortSignal.timeout(6000),
        });
        return r.ok || r.status === 206;
      } catch { return false; }
    }

    // Helper: choose between proxied URL and raw URL based on server-side probe
    async function resolveVideoUrl(rawUrl: string, type: "hls" | "mp4"): Promise<{ hlsUrl: string; rawUrl: string; type: string }> {
      if (type === "hls") {
        const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(rawUrl)}&ref=${encodeURIComponent(AT_BASE + "/")}`;
        return { hlsUrl: proxied, rawUrl, type: "hls" };
      }
      // For MP4: probe to see if server can access it; if blocked, return raw URL to client
      const accessible = await probeOk(rawUrl);
      if (accessible) {
        const proxied = `/api/anime/video-proxy?url=${encodeURIComponent(rawUrl)}&ref=${encodeURIComponent(AT_BASE + "/")}`;
        return { hlsUrl: proxied, rawUrl, type: "mp4" };
      }
      // CDN is IP-restricted (e.g. foupix.com:8443 token-tied to client IP)
      // Return raw URL so the mobile WebView fetches it directly from the user's IP
      return { hlsUrl: rawUrl, rawUrl, type: "mp4-direct" };
    }

    // Pattern 1: const videoSrc = "https://stream.foupix.com:8443/...mp4?tkn=..."  (main pattern)
    const videoSrcMatch = html.match(/const\s+videoSrc\s*=\s*["']([^"']+(?:\.mp4|\.m3u8)[^"']*)["']/);
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
