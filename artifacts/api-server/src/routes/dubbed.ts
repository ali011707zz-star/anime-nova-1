import { Router } from "express";
import { logger } from "../lib/logger";

const router = Router();

// AnimeWitcher Firestore is the source of truth for dubbed animation.
// Supabase is intentionally kept as the fast/cache path, but it can lag when
// an import fails or when the table has no matching conflict constraint.
const AW_FS_BASE =
  "https://firestore.googleapis.com/v1/projects/animewitcher-1c66d/databases/(default)/documents";
const AW_FS_HEADERS = {
  "User-Agent":
    "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36",
  Accept: "application/json",
};

function awFsValue(value: any): any {
  if (!value) return "";
  if ("stringValue" in value) return value.stringValue;
  if ("integerValue" in value) return Number(value.integerValue);
  if ("doubleValue" in value) return Number(value.doubleValue);
  if ("booleanValue" in value) return value.booleanValue;
  if ("arrayValue" in value) return (value.arrayValue.values || []).map(awFsValue);
  if ("mapValue" in value) {
    const result: Record<string, any> = {};
    for (const [key, child] of Object.entries(value.mapValue.fields || {})) {
      result[key] = awFsValue(child);
    }
    return result;
  }
  return "";
}

function awFsDoc(document: any): Record<string, any> {
  const result: Record<string, any> = {};
  for (const [key, value] of Object.entries(document?.fields || {})) {
    result[key] = awFsValue(value);
  }
  return result;
}

async function fetchAwFirestoreEpisodes(series: string): Promise<number[]> {
  const numbers: number[] = [];
  let pageToken = "";
  do {
    const url =
      `${AW_FS_BASE}/anime_list/${encodeURIComponent(series)}/episodes?pageSize=300` +
      (pageToken ? `&pageToken=${encodeURIComponent(pageToken)}` : "");
    try {
      const response = await fetch(url, {
        headers: AW_FS_HEADERS,
        signal: AbortSignal.timeout(12000),
      });
      if (!response.ok) break;
      const payload = await response.json() as any;
      for (const document of payload.documents || []) {
        const id = String(document.name || "").split("/").pop() || "";
        const fields = awFsDoc(document);
        const label = String(fields.name || fields.nameFull || id);
        const match = label.match(/(\d+(?:\.\d+)?)/);
        const number = match ? Number(match[1]) : Number(id.replace(/\D/g, ""));
        if (Number.isFinite(number) && number > 0) numbers.push(number);
      }
      pageToken = String(payload.nextPageToken || "");
    } catch {
      break;
    }
  } while (pageToken);
  return [...new Set(numbers)].sort((a, b) => a - b);
}

async function fetchAwFirestoreServers(
  series: string,
  episode: number,
): Promise<{ server: string; quality: string; link: string }[]> {
  const base = `${AW_FS_BASE}/anime_list/${encodeURIComponent(series)}/episodes`;
  const ids = [...new Set([
    String(Math.round(episode)).padStart(3, "0"),
    String(Math.round(episode)).padStart(4, "0"),
    String(Math.round(episode)),
  ])];

  for (const id of ids) {
    try {
      const response = await fetch(`${base}/${encodeURIComponent(id)}/servers?pageSize=30`, {
        headers: AW_FS_HEADERS,
        signal: AbortSignal.timeout(12000),
      });
      if (!response.ok) continue;
      const payload = await response.json() as any;
      const documents = Array.isArray(payload.documents) ? payload.documents : [];
      if (!documents.length) continue;
      return documents.map((document: any) => {
        const fields = awFsDoc(document);
        return {
          server: String(fields.serverName || fields.name || ""),
          quality: String(fields.quality || "720p"),
          link: String(fields.link || fields.url || fields.imageUrl || fields.server || ""),
        };
      }).filter((row: any) => row.server && row.link && row.server !== "KF");
    } catch {
      // Try the next padding convention.
    }
  }

  // Some AW titles store servers as one document instead of a collection.
  for (const id of ids) {
    try {
      const response = await fetch(`${base}/${encodeURIComponent(id)}/servers2/all_servers`, {
        headers: AW_FS_HEADERS,
        signal: AbortSignal.timeout(12000),
      });
      if (!response.ok) continue;
      const fields = awFsDoc(await response.json());
      const servers = Array.isArray(fields.servers) ? fields.servers : [];
      const rows = servers.map((server: any) => ({
        server: String(server.serverName || server.name || ""),
        quality: String(server.quality || "720p"),
        link: String(server.link || server.url || server.imageUrl || ""),
      })).filter((row: any) => row.server && row.link && row.server !== "KF");
      if (rows.length) return rows;
    } catch {
      // Continue to the next padding convention.
    }
  }
  return [];
}

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

// ── Mediafire CDN resolver (module-level with TTL cache) ──────────────────────
const _mfCdnCache = new Map<string, { url: string; exp: number }>();

async function resolveMfUrl(link: string): Promise<string | null> {
  const cached = _mfCdnCache.get(link);
  if (cached && cached.exp > Date.now()) return cached.url;
  try {
    const r = await fetch(link, {
      headers: { "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36" },
      signal: AbortSignal.timeout(8000),
    });
    if (!r.ok) return null;
    const html = await r.text();
    const m = html.match(/href="(https:\/\/download\d*\.mediafire\.com\/[^"]+)"/);
    const cdnUrl = m?.[1] ?? html.match(/id="downloadButton"[^>]+href="([^"]+)"/)?.[1] ?? null;
    if (cdnUrl) _mfCdnCache.set(link, { url: cdnUrl, exp: Date.now() + 3 * 60_000 }); // 3min
    return cdnUrl;
  } catch { return null; }
}
const AT_BASE = "https://www.arabic-toons.com";
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

  // جرّب الـ disk cache أولاً (يبقى بعد restart)
  const diskHit = _dcGet(path);
  if (diskHit) {
    _catalogCache.set(path, { data: diskHit, ts: Date.now() - CATALOG_TTL + 10 * 60_000 }); // يُجدَّد خلال 10 دقائق
  }

  try {
    const r = await fetch(`${SC_BASE}${path}`, {
      headers: {
        "User-Agent": BROWSER_UA,
        Referer: `${SC_BASE}/dubbed`,
        Accept: "application/json",
      },
      signal: AbortSignal.timeout(12000),
    });
    if (!r.ok) {
      // إذا فشل الشبكة، ارجع للـ disk cache إن وُجد
      if (diskHit) return diskHit;
      return null;
    }
    const data = await r.json();
    _catalogCache.set(path, { data, ts: Date.now() });
    _dcSet(path, data); // حفظ على القرص للـ restart القادم
    return data;
  } catch (e) {
    logger.warn({ err: e }, "dubbed: fetchStarCimaDubbed error");
    // عند فشل الشبكة (CF block / timeout)، ارجع للـ disk cache إن وُجد
    if (diskHit) return diskHit;
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
    const rawEps = Array.isArray(data) ? data : (data.episodes || []);

    // ── تطبيع روابط الحلقات: بعض استجابات starcima تُعيد روابط نسبية أو من نطاقها
    // الـ watch-src يقبل فقط arabic-toons.com — نُطبّع هنا تفادياً لـ 400
    const AT_BASE_NORM = "https://www.arabic-toons.com";
    const SC_HOST = new URL(SC_BASE).hostname; // "starcima.com"
    const episodes = rawEps.map((ep: any) => {
      if (!ep || typeof ep.url !== "string") return ep;
      let url = ep.url.trim();
      // رابط نسبي → مطلق على arabic-toons (النمط الأصلي)
      if (url.startsWith("/")) url = `${AT_BASE_NORM}${url}`;
      // رابط starcima.com → حوّله إلى arabic-toons.com (نفس المسار)
      try {
        const u = new URL(url);
        if (u.hostname === SC_HOST || u.hostname === `www.${SC_HOST}`) {
          u.hostname = "www.arabic-toons.com";
          url = u.toString();
        }
      } catch { /* url غير قابل للتحليل — ابقه كما هو */ }
      return { ...ep, url };
    });

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
  "starcima.com",
  "www.starcima.com",
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
    // ── جلب صفحة الحلقة — نجرب direct و cfGet بالتوازي.
    // الانتظار التسلسلي كان يجعل الطلب يستهلك 12s + 18s عند تعثر VPS
    // في الوصول المباشر، وهو ما كان يظهر للمستخدم كتعليق طويل قبل المشغل.
    let html: string | null = null;
    const fetchDirectPage = async (): Promise<string> => {
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
      if (!directR.ok) throw new Error(`direct_${directR.status}`);
      const t = await directR.text();
      if (t.length <= 500 || isCfBlock(t)) throw new Error("direct_invalid");
      return t;
    };
    const fetchCfPage = async (): Promise<string> => {
      const t = await cfGet(epUrl, AT_BASE + "/", 18000);
      if (!t || t.length <= 500 || isCfBlock(t)) throw new Error("cf_invalid");
      return t;
    };
    try {
      // Promise.any keeps the fast successful path and only waits for the
      // slower path when the first one is blocked or unavailable.
      html = await Promise.any([fetchDirectPage(), fetchCfPage()]);
    } catch { /* both retrieval paths failed */ }
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

// ════════════════════════════════════════════════════════════════════════════
// aw-dubbed routes — أنيميشن مدبلج (aw_links table in Supabase)
// ════════════════════════════════════════════════════════════════════════════

interface AwCatalogItem {
  key: string;
  title: string;
  titleAr: string | null;
  poster: string | null;
  seasons: { label: string; animeId: string }[];
}

let _awCatalog: AwCatalogItem[] | null = null;
let _awCatalogTs = 0;
const AW_TTL = 2 * 60 * 60_000; // 2 ساعات
let _awLoadPromise: Promise<AwCatalogItem[]> | null = null;

function awPoster(anilistId: number | null | undefined): string | null {
  if (!anilistId) return null;
  return `https://img.anili.st/media/${anilistId}`;
}

// ── TMDB poster cache (عمر الكاش = 24 ساعة مع السيرفر) ──
const _tmdbPosterCache = new Map<string, string | null>();
const TMDB_KEY = "8265bd1679663a7ea12ac168da84d2e8";
const TMDB_IMG = "https://image.tmdb.org/t/p/w300";

/** استخرج العنوان الأساسي: احذف "Season N" و "Dub" و "Dub Season N" */
function awBaseTitle(title: string): string {
  return title
    .replace(/\s+Season\s+\d+(\s+Dub)?$/i, "")
    .replace(/\s+Dub$/i, "")
    .trim();
}

/** ابحث عن بوستر في TMDB بالعنوان */
async function tmdbPosterByTitle(title: string): Promise<string | null> {
  const base = awBaseTitle(title);
  if (_tmdbPosterCache.has(base)) return _tmdbPosterCache.get(base) ?? null;
  try {
    const url = `https://api.themoviedb.org/3/search/multi?api_key=${TMDB_KEY}&query=${encodeURIComponent(base)}&language=en-US&page=1`;
    const r = await fetch(url, { signal: AbortSignal.timeout(6000) });
    if (!r.ok) { _tmdbPosterCache.set(base, null); return null; }
    const data = await r.json();
    const hit = (data.results as any[] || []).find((h: any) =>
      h.poster_path && (h.media_type === "tv" || h.media_type === "movie")
    );
    const poster = hit ? `${TMDB_IMG}${hit.poster_path}` : null;
    _tmdbPosterCache.set(base, poster);
    return poster;
  } catch { _tmdbPosterCache.set(base, null); return null; }
}

/** جلب بوسترات TMDB لقائمة من العناوين (تشغيل متوازٍ بحد أقصى 8) */
async function fetchTmdbPosters(titles: string[]): Promise<Map<string, string | null>> {
  const unique = [...new Set(titles.map(awBaseTitle))];
  const results = new Map<string, string | null>();
  // معالجة دُفعات بمعدل 8 طلبات متوازية
  for (let i = 0; i < unique.length; i += 8) {
    const batch = unique.slice(i, i + 8);
    const posters = await Promise.all(batch.map(t => tmdbPosterByTitle(t)));
    batch.forEach((t, idx) => results.set(t, posters[idx]));
    if (i + 8 < unique.length) await new Promise(r => setTimeout(r, 250)); // تأخير بسيط
  }
  return results;
}

/** جلب كل السلاسل من جدول dubbed_anim_links (الجديد) */
async function fetchDalCatalog(
  sbUrl: string, sbKey: string
): Promise<Map<string, { series_name: string; series_name_ar: string | null }>> {
  const result = new Map<string, { series_name: string; series_name_ar: string | null }>();
  let offset = 0;
  const batch = 1000;
  while (true) {
    try {
      const url = `${sbUrl}/rest/v1/dubbed_anim_links?select=series_id,series_name,series_name_ar&ep_number=not.is.null&order=series_id.asc&limit=${batch}&offset=${offset}`;
      const r = await fetch(url, {
        headers: { apikey: sbKey, Authorization: `Bearer ${sbKey}` },
        signal: AbortSignal.timeout(15000),
      });
      if (!r.ok) break;
      const rows: { series_id: string; series_name: string; series_name_ar: string | null }[] = await r.json();
      if (!Array.isArray(rows) || !rows.length) break;
      for (const row of rows) {
        if (row.series_id && !result.has(row.series_id)) {
          result.set(row.series_id, { series_name: row.series_name || row.series_id, series_name_ar: row.series_name_ar || null });
        }
      }
      if (rows.length < batch) break;
      offset += batch;
    } catch { break; }
  }
  return result;
}

async function buildAwCatalog(): Promise<AwCatalogItem[]> {
  const SB_URL = (process.env.SUPABASE_URL || "").replace(/\/$/, "");
  const SB_KEY = process.env.SUPABASE_SERVICE_KEY || process.env.SUPABASE_SERVICE_ROLE_KEY || "";
  if (!SB_URL || !SB_KEY) return [];

  const seen = new Map<string, { anime_name: string; anilist_id: number | null; titleAr: string | null }>();
  let offset = 0;
  const batchSize = 1000;

  // ── جلب aw_links + dubbed_anim_links بالتوازي ──
  const [, dalMap] = await Promise.all([
    // aw_links: يملأ seen مباشرةً
    (async () => {
      while (true) {
        try {
          const url = `${SB_URL}/rest/v1/aw_links?select=anime_id,anime_name,anilist_id&content_type=eq.dubbed&order=anime_id.asc&limit=${batchSize}&offset=${offset}`;
          const r = await fetch(url, {
            headers: { apikey: SB_KEY, Authorization: `Bearer ${SB_KEY}` },
            signal: AbortSignal.timeout(15000),
          });
          if (!r.ok) break;
          const rows: { anime_id: string; anime_name: string; anilist_id: number | null }[] = await r.json();
          if (!Array.isArray(rows) || !rows.length) break;
          for (const row of rows) {
            if (row.anime_id && !seen.has(row.anime_id)) {
              seen.set(row.anime_id, { anime_name: row.anime_name || row.anime_id, anilist_id: row.anilist_id ?? null, titleAr: null });
            }
          }
          if (rows.length < batchSize) break;
          offset += batchSize;
        } catch { break; }
      }
    })(),
    // dubbed_anim_links: يُعاد كـ Map
    fetchDalCatalog(SB_URL, SB_KEY),
  ]);

  // دمج: أضف سلاسل dubbed_anim_links غير الموجودة في aw_links
  for (const [sid, info] of dalMap) {
    if (!seen.has(sid)) {
      seen.set(sid, { anime_name: info.series_name, anilist_id: null, titleAr: info.series_name_ar });
    } else {
      // أضف العنوان العربي لمن وُجد في aw_links دون عنوان عربي
      const existing = seen.get(sid)!;
      if (!existing.titleAr && info.series_name_ar) {
        existing.titleAr = info.series_name_ar;
      }
    }
  }

  // بناء العناصر الأولية
  const items: AwCatalogItem[] = [];
  for (const [anime_id, { anime_name, anilist_id, titleAr }] of seen) {
    items.push({
      key: anime_id,
      title: anime_name || anime_id,
      titleAr: titleAr ?? null,
      poster: awPoster(anilist_id), // null إذا لم يكن هناك anilist_id
      seasons: [{ label: "الحلقات", animeId: anime_id }],
    });
  }
  items.sort((a, b) => a.title.localeCompare(b.title, "en-US"));

  // جلب بوسترات TMDB للعناصر التي ليس لها بوستر من AniList
  const needPosters = items.filter(it => !it.poster).map(it => it.title);
  if (needPosters.length > 0) {
    logger.info({ count: needPosters.length }, "[aw-dubbed] جلب بوسترات TMDB...");
    const posterMap = await fetchTmdbPosters(needPosters);
    for (const item of items) {
      if (!item.poster) {
        item.poster = posterMap.get(awBaseTitle(item.title)) ?? null;
      }
    }
  }

  logger.info({ count: items.length }, "[aw-dubbed] catalog built");
  return items;
}

async function getAwCatalog(): Promise<AwCatalogItem[]> {
  if (_awCatalog && Date.now() - _awCatalogTs < AW_TTL) return _awCatalog;
  if (_awLoadPromise) return _awLoadPromise;
  _awLoadPromise = buildAwCatalog().then(c => {
    _awCatalog = c;
    _awCatalogTs = Date.now();
    _awLoadPromise = null;
    return c;
  }).catch(() => { _awLoadPromise = null; return _awCatalog || []; });
  return _awLoadPromise;
}

// دفء الكاش عند بدء السيرفر
setTimeout(() => { getAwCatalog().catch(() => {}); }, 6000);

const AW_PAGE_SIZE = 36;

// ── GET /api/aw-dubbed/catalog?page=N&q=search ──
router.get("/aw-dubbed/catalog", async (req, res) => {
  const page = Math.max(1, parseInt(req.query.page as string || "1", 10) || 1);
  const q = (req.query.q as string || "").trim().toLowerCase();
  try {
    let catalog = await getAwCatalog();
    if (q.length >= 2) {
      catalog = catalog.filter(s =>
        s.title.toLowerCase().includes(q) ||
        (s.titleAr && s.titleAr.toLowerCase().includes(q))
      );
    }
    const totalPages = Math.max(1, Math.ceil(catalog.length / AW_PAGE_SIZE));
    const results = catalog.slice((page - 1) * AW_PAGE_SIZE, page * AW_PAGE_SIZE);
    res.setHeader("Cache-Control", "public, max-age=300");
    res.json({ results, page, totalPages, total: catalog.length });
  } catch {
    res.status(502).json({ error: "failed to load catalog" });
  }
});

// ── GET /api/aw-dubbed/episodes?series=anime_id ──
router.get("/aw-dubbed/episodes", async (req, res) => {
  // Do not trim the key: legacy AnimeWitcher IDs can intentionally begin or
  // end with whitespace, and Supabase stores that value verbatim.
  const series = String(req.query.series || "");
  if (!series.trim()) { res.json({ episodes: [] }); return; }

  const SB_URL = (process.env.SUPABASE_URL || "").replace(/\/$/, "");
  const SB_KEY = process.env.SUPABASE_SERVICE_KEY || process.env.SUPABASE_SERVICE_ROLE_KEY || "";
  if (!SB_URL || !SB_KEY) { res.json({ episodes: [] }); return; }

  try {
    // جلب من الجدولين بالتوازي — dubbed_anim_links أولاً (أحدث) ثم aw_links كـ fallback
    const [dalR, awR] = await Promise.all([
      fetch(`${SB_URL}/rest/v1/dubbed_anim_links?select=ep_number&series_id=eq.${encodeURIComponent(series)}&order=ep_number.asc&limit=2000`, {
        headers: { apikey: SB_KEY, Authorization: `Bearer ${SB_KEY}` },
        signal: AbortSignal.timeout(10000),
      }).then(r => r.ok ? r.json() as Promise<{ ep_number: number }[]> : [] as { ep_number: number }[]).catch(() => [] as { ep_number: number }[]),
      fetch(`${SB_URL}/rest/v1/aw_links?select=ep_number&anime_id=eq.${encodeURIComponent(series)}&content_type=eq.dubbed&order=ep_number.asc&limit=2000`, {
        headers: { apikey: SB_KEY, Authorization: `Bearer ${SB_KEY}` },
        signal: AbortSignal.timeout(10000),
      }).then(r => r.ok ? r.json() as Promise<{ ep_number: number }[]> : [] as { ep_number: number }[]).catch(() => [] as { ep_number: number }[]),
    ]);

    // دمج: dubbed_anim_links أولاً، ثم aw_links للتكملة
    const rawRows: { ep_number: number }[] = [
      ...(Array.isArray(dalR) ? dalR : []),
      ...(Array.isArray(awR)  ? awR  : []),
    ];

    const seen = new Set<number>();
    const episodes: { number: number }[] = [];
    for (const row of rawRows) {
      if (typeof row.ep_number === "number" && !seen.has(row.ep_number)) {
        seen.add(row.ep_number);
        episodes.push({ number: row.ep_number });
      }
    }
    // Supabase may lag behind AnimeWitcher's Firestore import. Merge the live
    // list so a failed sync cannot make the mobile detail page look empty.
    if (episodes.length === 0 || episodes.length < 3) {
      for (const number of await fetchAwFirestoreEpisodes(series)) {
        if (!seen.has(number)) {
          seen.add(number);
          episodes.push({ number });
        }
      }
    }
    episodes.sort((a, b) => a.number - b.number);
    res.setHeader("Cache-Control", "public, max-age=1800");
    res.json({ episodes });
  } catch { res.json({ episodes: [] }); }
});

// ── GET /api/aw-dubbed/watch-src?series=anime_id&ep=N ──
router.get("/aw-dubbed/watch-src", async (req, res) => {
  // Keep the exact AnimeWitcher/Supabase ID; trimming breaks titles imported
  // with a leading space and makes valid episodes look unavailable.
  const series = String(req.query.series || "");
  const ep     = Math.max(1, parseInt(req.query.ep as string || "1", 10) || 1);
  if (!series.trim()) { res.status(400).json({ error: "missing series" }); return; }

  const SB_URL = (process.env.SUPABASE_URL || "").replace(/\/$/, "");
  const SB_KEY = process.env.SUPABASE_SERVICE_KEY || process.env.SUPABASE_SERVICE_ROLE_KEY || "";
  if (!SB_URL || !SB_KEY) { res.status(502).json({ error: "not configured" }); return; }

  try {
    // جلب من الجدولين بالتوازي — dubbed_anim_links أولاً ثم aw_links
    // ملاحظة: order=quality.desc يفرز نصياً (720p > 480p > 1080p) — نفرز بعدها رقمياً في الكود
    const [dalRows, awRows] = await Promise.all([
      fetch(`${SB_URL}/rest/v1/dubbed_anim_links?select=server,quality,link&series_id=eq.${encodeURIComponent(series)}&ep_number=eq.${ep}&limit=30`, {
        headers: { apikey: SB_KEY, Authorization: `Bearer ${SB_KEY}` },
        signal: AbortSignal.timeout(10000),
      }).then(r => r.ok ? r.json() as Promise<{ server: string; quality: string; link: string }[]> : [] as { server: string; quality: string; link: string }[]).catch(() => [] as { server: string; quality: string; link: string }[]),
      fetch(`${SB_URL}/rest/v1/aw_links?select=server,quality,link&anime_id=eq.${encodeURIComponent(series)}&ep_number=eq.${ep}&content_type=eq.dubbed&limit=30`, {
        headers: { apikey: SB_KEY, Authorization: `Bearer ${SB_KEY}` },
        signal: AbortSignal.timeout(10000),
      }).then(r => r.ok ? r.json() as Promise<{ server: string; quality: string; link: string }[]> : [] as { server: string; quality: string; link: string }[]).catch(() => [] as { server: string; quality: string; link: string }[]),
    ]);

    // وزن الجودة الرقمي للفرز الصحيح
    function qualityWeight(q: string): number {
      const n = parseInt(q.replace(/\D/g, "") || "0", 10);
      return n; // 1080 > 720 > 480 > 360
    }

    // دمج: dubbed_anim_links أولاً، ثم aw_links — مع تخطي KF (روابطه محذوفة)
    const seenSrv = new Set<string>();
    const rows: { server: string; quality: string; link: string }[] = [];
    for (const r of [...(Array.isArray(dalRows) ? dalRows : []), ...(Array.isArray(awRows) ? awRows : [])]) {
      if (r.server === "KF") continue; // KrakenFiles: كل روابطه 404 — تخطي مباشر
      const k = `${r.server}|${r.link}`;
      if (!seenSrv.has(k)) { seenSrv.add(k); rows.push(r); }
    }
    // A missing DB row must not make a real AW episode unplayable. Fetch the
    // current server documents directly when the cached tables have no link.
    if (!rows.length) {
      rows.push(...await fetchAwFirestoreServers(series, ep));
    }
    // فرز: 1080p أولاً ثم 720p ثم 480p
    rows.sort((a, b) => qualityWeight(b.quality) - qualityWeight(a.quality));
    if (!rows.length) { res.status(404).json({ error: "no sources found" }); return; }

    function serverLabel(srv: string): string {
      if (srv === "PD")  return "Pixeldrain";
      if (srv === "MF")  return "Mediafire";
      if (srv === "MF2") return "Mediafire";
      if (srv === "VT")  return "Vidtape";
      return srv;
    }

    /** لفّ رابط مباشر عبر video-proxy حتى يلتقطه RiftPlayer isDirect branch */
    function wrapProxy(directUrl: string): string {
      return `/api/anime/video-proxy?url=${encodeURIComponent(directUrl)}&ref=${encodeURIComponent("https://animenovaa.duckdns.org")}`;
    }

    /** تحويل رابط أي خادم إلى رابط تشغيل؛ null = تخطي */
    async function toPlayUrl(link: string, srv: string): Promise<string | null> {
      // KrakenFiles — كل الروابط 404 (محذوفة) → تخطي
      if (srv === "KF") return null;
      // Pixeldrain: رابط مباشر — RiftPlayer يتعامل معه عبر CORS_DIRECT_CDN (لا حاجة لـ proxy)
      if (srv === "PD" || link.includes("pixeldrain.com/u/")) {
        const id = link.split("/u/").pop()?.split("?")[0];
        if (id) return `https://pixeldrain.com/api/file/${id}`;
      }
      // Mediafire: لا نحلّ رابط CDN الآن (ينتهي صلاحيته) — نُمرّر صفحة MF عبر mf-stream
      // الـ endpoint يحلّ الرابط وقت التشغيل الفعلي مع TTL cache
      if (srv === "MF" || srv === "MF2" || link.includes("mediafire.com")) {
        if (!link.includes("mediafire.com")) return null;
        return `/api/aw-dubbed/mf-stream?link=${encodeURIComponent(link)}`;
      }
      return wrapProxy(link);
    }

    // استخراج الروابط بشكل متوازٍ
    const resolved = await Promise.all(
      rows.map(async row => {
        const rawUrl = await toPlayUrl(row.link, row.server);
        if (!rawUrl) return null;
        return {
          quality: row.quality || "720p",
          name:    serverLabel(row.server),
          rawUrl,
          hlsUrl: null,
        };
      })
    );
    const allSources = resolved.filter(Boolean) as { quality: string; name: string; rawUrl: string; hlsUrl: null }[];

    if (!allSources.length) {
      res.status(404).json({ error: "لا توجد مصادر متاحة لهذه الحلقة حالياً" });
      return;
    }

    res.setHeader("Cache-Control", "no-cache");
    res.json({ allSources, rawUrl: allSources[0]?.rawUrl ?? null, hlsUrl: null });
  } catch (e: any) {
    res.status(502).json({ error: String(e?.message || e) });
  }
});

// ── mf-stream: يحلّ رابط Mediafire CDN وقت التشغيل ويبثّ الفيديو ────────────
// لا نحلّ رابط CDN عند scrape (ينتهي صلاحيته) — نؤجّل الحلّ لطلب التشغيل الفعلي
router.get("/aw-dubbed/mf-stream", async (req, res) => {
  const link = (req.query.link as string || "").trim();
  if (!link || !link.includes("mediafire.com")) {
    res.status(400).json({ error: "invalid mediafire link" }); return;
  }

  const cdnUrl = await resolveMfUrl(link);
  if (!cdnUrl) { res.status(502).json({ error: "تعذّر استخراج رابط Mediafire" }); return; }

  const hdrs: Record<string, string> = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36",
    "Accept": "video/mp4,video/*,*/*;q=0.8",
  };
  const range = req.headers.range;
  if (range) hdrs["Range"] = range;

  try {
    const r = await fetch(cdnUrl, { headers: hdrs, signal: AbortSignal.timeout(30000) });

    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Access-Control-Allow-Headers", "Range");
    res.setHeader("Content-Type", r.headers.get("content-type") || "video/mp4");
    const cl = r.headers.get("content-length"); if (cl) res.setHeader("Content-Length", cl);
    const cr = r.headers.get("content-range");  if (cr) res.setHeader("Content-Range", cr);
    const ar = r.headers.get("accept-ranges");  if (ar) res.setHeader("Accept-Ranges", ar);
    res.status(r.status);

    if (!r.body) { res.end(); return; }
    const { Readable } = await import("node:stream");
    const nodeStream = Readable.fromWeb(r.body as any);
    nodeStream.pipe(res);
    req.on("close", () => nodeStream.destroy());
  } catch (e: any) {
    if (!res.headersSent) res.status(502).json({ error: String(e?.message) });
  }
});

export default router;
