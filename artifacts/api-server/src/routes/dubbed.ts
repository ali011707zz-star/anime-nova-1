import { Router } from "express";
import { logger } from "../lib/logger";

const router = Router();

const SC_BASE = "https://starcima.com";
const AT_BASE = "https://www.arabic-toons.com";
const CF_PROXY_BASE = "http://localhost:8000";

const BROWSER_UA =
  "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36";

let _cfProxyAlive: boolean | null = null;
let _cfProxyCheckedAt = 0;

async function cfGet(url: string, referer?: string, timeoutMs = 12000): Promise<string | null> {
  const now = Date.now();
  if (_cfProxyAlive === null || now - _cfProxyCheckedAt > 60_000) {
    try {
      const h = await fetch(`${CF_PROXY_BASE}/health`, { signal: AbortSignal.timeout(2000) });
      _cfProxyAlive = h.ok;
    } catch { _cfProxyAlive = false; }
    _cfProxyCheckedAt = now;
  }
  if (!_cfProxyAlive) {
    try {
      const r = await fetch(url, {
        headers: { "User-Agent": BROWSER_UA, Referer: referer || url, Accept: "text/html,*/*" },
        signal: AbortSignal.timeout(timeoutMs),
      });
      return r.ok ? r.text() : null;
    } catch { return null; }
  }
  try {
    const proxyUrl = new URL(`${CF_PROXY_BASE}/fetch`);
    proxyUrl.searchParams.set("url", url);
    if (referer) proxyUrl.searchParams.set("ref", referer);
    proxyUrl.searchParams.set("timeout", String(Math.floor(timeoutMs / 1000)));
    const r = await fetch(proxyUrl.toString(), { signal: AbortSignal.timeout(timeoutMs + 3000) });
    return r.ok ? r.text() : null;
  } catch { return null; }
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
// Fetches the arabic-toons.com episode page and extracts the HLS URL
router.get("/dubbed/watch-src", async (req, res) => {
  const epUrl = (req.query.epUrl as string || "").trim();
  if (!epUrl || !epUrl.includes("arabic-toons.com")) {
    res.status(400).json({ error: "invalid epUrl" }); return;
  }

  try {
    const html = await cfGet(epUrl, AT_BASE + "/");
    if (!html) { res.status(502).json({ error: "failed to fetch episode page" }); return; }

    // Extract HLS URL from <source src="...">
    const srcMatch = html.match(/src=["']([^"']+\.m3u8[^"']*)['"]/);
    if (!srcMatch) {
      res.status(404).json({ error: "no HLS source found" }); return;
    }
    const hlsRaw = srcMatch[1];
    const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(hlsRaw)}&ref=${encodeURIComponent(AT_BASE + "/")}`;
    res.json({ hlsUrl: proxied, rawUrl: hlsRaw });
  } catch (e: any) {
    logger.warn({ err: e }, "dubbed: watch-src error");
    res.status(502).json({ error: String(e?.message || e) });
  }
});

// ── GET /api/dubbed/img?f= → proxy arabic-toons thumbnail ──
// arabic-toons.com images are CF-protected; route via CF proxy binary endpoint
router.get("/dubbed/img", async (req, res) => {
  const f = (req.query.f as string || "").trim();
  if (!f || !/^[\w\-\.\/]+$/.test(f)) { res.status(400).send("bad"); return; }
  const imgUrl = f.startsWith("http") ? f : `${AT_BASE}/img/${f}`;
  try {
    // Use CF proxy /fetch endpoint — returns binary response via curl_cffi impersonate
    const proxyUrl = new URL(`${CF_PROXY_BASE}/fetch`);
    proxyUrl.searchParams.set("url", imgUrl);
    proxyUrl.searchParams.set("ref", AT_BASE + "/");
    const pr = await fetch(proxyUrl.toString(), { signal: AbortSignal.timeout(12000) });
    if (pr.ok) {
      const ct = pr.headers.get("content-type") || "image/jpeg";
      if (ct.includes("image") || ct.includes("octet")) {
        const buf = Buffer.from(await pr.arrayBuffer());
        res.setHeader("Content-Type", ct);
        res.setHeader("Cache-Control", "public, max-age=86400");
        res.send(buf);
        return;
      }
    }
    // Fallback: direct fetch with browser UA (may fail on CF-protected hosts)
    const r = await fetch(imgUrl, {
      headers: { "User-Agent": BROWSER_UA, Referer: AT_BASE + "/", Accept: "image/*,*/*" },
      signal: AbortSignal.timeout(8000),
    });
    if (!r.ok) { res.status(404).send("not found"); return; }
    const ct = r.headers.get("content-type") || "image/jpeg";
    const buf = Buffer.from(await r.arrayBuffer());
    res.setHeader("Content-Type", ct);
    res.setHeader("Cache-Control", "public, max-age=86400");
    res.send(buf);
  } catch { res.status(502).send("proxy error"); }
});

export default router;
