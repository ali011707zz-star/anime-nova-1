import fs from "node:fs";
import path from "node:path";
import crypto from "node:crypto";
import { Router } from "express";
import { load } from "cheerio";
import { logger } from "../lib/logger";
import { getTelegramDubbedCatalogItems, getTelegramDubbedEpisodes, getTelegramSd2CatalogItems, getTelegramSd2Detail, getTelegramAnimeZidCatalogItems, getTelegramAnimeZidDetail, getTelegramAwDubbedCatalogItems, getTelegramAwDubbedEpisodes, getTelegramAwDubbedWatchSrc, TG_SPACETOON_ID_BASE, getTelegramSpacetoonCatalogItems, getTelegramSpacetoonEpisodes, getTelegramSpacetoonWatchSrc, getTelegramEpisodeQualities, getTelegramEpisodeById, buildSignedStreamPath, buildSignedStreamUrl, buildSubtitleUrl } from "../lib/telegramStorage.js";
import { streamMultiRangeMediaVPS } from "../lib/multiRangeStreamer.js";
import { mergeAwSourceRows } from "../lib/awSourceRows.mjs";
import { parseCarateenEpisodeUrl } from "../lib/carateenEpisodeRef.mjs";
import {
  findStardimaV2ByIdOrSlug,
  getStardimaV2Catalog,
  getStardimaV2Episodes,
  getStardimaV2Servers,
  isAllowedHyperwatchingUrl,
  warmStardimaV2CatalogSlice,
  resolveStardimaV2Stream,
} from "../lib/stardimaV2Source.js";
import {
  getCarateenCatalog,
  getCarateenEpisodes,
  getCarateenEpisodeStream,
  isAllowedCarateenStreamUrl,
  type CarateenProvider,
} from "../lib/carateenSource.js";
import {
  getAnimeZidCatalog,
  getAnimeZidDetail,
  getAnimeZidServers,
  resolveAnimeZidWatchSrc,
} from "../lib/animezidSource.js";

const router = Router();

const PLAYBACK_TRACE_ID = /^[a-z0-9_-]{8,36}$/i;

function readPlaybackTrace(value: unknown): string {
  const trace = typeof value === "string" ? value : "";
  return PLAYBACK_TRACE_ID.test(trace) ? trace : "";
}

function traceDubbedResponse(
  res: import("express").Response,
  trace: string,
  route: string,
  host: string,
  startedAt: number,
): void {
  if (!trace) return;
  let logged = false;
  const log = (stage: string) => {
    if (logged) return;
    logged = true;
    console.info(
      `[playback-trace] id=${trace} route=${route} stage=${stage} host=${host} status=${res.statusCode} elapsed_ms=${Date.now() - startedAt}`,
    );
  };
  res.once("finish", () => log("response"));
  res.once("close", () => {
    if (!res.writableFinished) log("client_closed");
  });
}

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
  timeoutMs = 12000,
): Promise<{ server: string; quality: string; link: string }[]> {
  const deadline = Date.now() + timeoutMs;
  const base = `${AW_FS_BASE}/anime_list/${encodeURIComponent(series)}/episodes`;
  const ids = [...new Set([
    String(Math.round(episode)).padStart(3, "0"),
    String(Math.round(episode)).padStart(4, "0"),
    String(Math.round(episode)),
  ])];

  for (const id of ids) {
    const remainingMs = deadline - Date.now();
    if (remainingMs <= 0) break;
    try {
      const response = await fetch(`${base}/${encodeURIComponent(id)}/servers?pageSize=30`, {
        headers: AW_FS_HEADERS,
        signal: AbortSignal.timeout(remainingMs),
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
    const remainingMs = deadline - Date.now();
    if (remainingMs <= 0) break;
    try {
      const response = await fetch(`${base}/${encodeURIComponent(id)}/servers2/all_servers`, {
        headers: AW_FS_HEADERS,
        signal: AbortSignal.timeout(remainingMs),
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
const DUBBED_DISK_MAX_STALE_MS = 30 * 24 * 60 * 60_000;
try { if (!_dcExists(_DC_DIR)) _dcMkdir(_DC_DIR, { recursive: true }); } catch {}

function _dcGet(key: string): any | null {
  try {
    const fp = _dcJoin(_DC_DIR, key.replace(/[^a-z0-9_-]/gi,"_") + ".json");
    if (!_dcExists(fp)) return null;
    const r = JSON.parse(_dcRead(fp, "utf8"));
    if (!Number.isFinite(r._ts) || Date.now() - r._ts > DUBBED_DISK_MAX_STALE_MS) return null;
    if (!Array.isArray(r.data?.results)) return null;
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
const CATALOG_TTL = 30 * 60_000; // 30 دقيقة — يبقى سريعاً لكن لا يحبس الإضافات اليومية
const ARABIC_TOONS_HOSTS = new Set(["arabic-toons.com", "www.arabic-toons.com"]);

function normalizeArabicToonsSeriesUrl(value: string): string | null {
  try {
    const url = new URL(value);
    if (
      url.protocol !== "https:" ||
      !ARABIC_TOONS_HOSTS.has(url.hostname.toLowerCase()) ||
      url.username ||
      url.password ||
      url.port ||
      !/-anime-streaming\.html$/i.test(url.pathname)
    ) return null;
    return `${AT_BASE}${url.pathname}`;
  } catch {
    return null;
  }
}

async function fetchArabicToonsHtml(url: string, referer: string): Promise<string | null> {
  try {
    const parsed = new URL(url);
    if (parsed.protocol !== "https:" || !ARABIC_TOONS_HOSTS.has(parsed.hostname.toLowerCase())) return null;
    // VPS direct egress can be blocked by Cloudflare. Use the existing
    // curl_cffi proxy first, then cfGet's direct-fetch fallbacks.
    const html = await cfGet(url, referer, 18000);
    if (!html) return null;
    return html.length > 500 && !isCfBlock(html) ? html : null;
  } catch {
    return null;
  }
}

async function fetchArabicToonsCatalogPage(page: number): Promise<any | null> {
  const safePage = Math.max(1, Math.min(1000, Math.floor(page) || 1));
  const url = new URL(`${AT_BASE}/cartoon.php`);
  url.searchParams.set("next", String(safePage));
  const html = await fetchArabicToonsHtml(url.toString(), `${AT_BASE}/cartoon.php`);
  if (!html) return null;

  const $ = load(html);
  const results: any[] = [];
  const seen = new Set<string>();
  $("a[href]").each((_, element) => {
    const anchor = $(element);
    const rawHref = anchor.attr("href") || "";
    let seriesUrl: URL;
    try {
      seriesUrl = new URL(rawHref, AT_BASE);
    } catch {
      return;
    }
    if (
      !ARABIC_TOONS_HOSTS.has(seriesUrl.hostname.toLowerCase()) ||
      !/-anime-streaming\.html$/i.test(seriesUrl.pathname)
    ) return;

    const canonicalUrl = `${AT_BASE}${seriesUrl.pathname}`;
    if (seen.has(canonicalUrl)) return;
    const image = anchor.find("img").first();
    const rawImage = image.attr("src") || image.attr("data-src") || "";
    let imageUrl: string | undefined;
    if (rawImage) {
      try {
        const parsedImage = new URL(rawImage, AT_BASE);
        if (ARABIC_TOONS_HOSTS.has(parsedImage.hostname.toLowerCase())) imageUrl = parsedImage.toString();
      } catch { /* skip malformed poster URLs */ }
    }
    const title = String(
      image.attr("alt") || anchor.attr("title") || anchor.text() || "",
    ).replace(/\s+/g, " ").trim();
    const slug = seriesUrl.pathname.split("/").pop()?.replace(/-anime-streaming\.html$/i, "") || "";
    if (!slug || !title) return;
    let posterImage = imageUrl;
    if (imageUrl) {
      const filename = new URL(imageUrl).pathname.match(/^\/images\/anime\/([^/]+)$/)?.[1];
      if (filename && /^[\w.-]+$/.test(filename)) {
        posterImage = `/api/dubbed/img?f=${encodeURIComponent(filename)}`;
      }
    }

    seen.add(canonicalUrl);
    results.push({
      key: slug,
      slug,
      title,
      image: posterImage,
      poster: posterImage,
      seasons: [{ label: "الحلقات", arabicToonsId: canonicalUrl }],
    });
  });

  if (!results.length) return null;
  let totalPages = safePage;
  const pageLinkPattern = /cartoon\.php\?next=(\d+)/gi;
  let pageLink: RegExpExecArray | null;
  while ((pageLink = pageLinkPattern.exec(html))) {
    totalPages = Math.max(totalPages, Number(pageLink[1]) || safePage);
  }
  return { results, page: safePage, totalPages };
}

function normalizeArabicDigits(value: string): string {
  return value
    .replace(/[٠-٩]/g, digit => String("٠١٢٣٤٥٦٧٨٩".indexOf(digit)))
    .replace(/[۰-۹]/g, digit => String("۰۱۲۳۴۵۶۷۸۹".indexOf(digit)));
}

function parseArabicToonsEpisodes(html: string, seriesUrl: string): any[] {
  const $ = load(html);
  const seriesPath = new URL(seriesUrl).pathname;
  const seriesStem = seriesPath.replace(/-anime-streaming\.html$/i, "");
  const episodes = new Map<string, any>();

  $("a[href]").each((_, element) => {
    const anchor = $(element);
    let episodeUrl: URL;
    try {
      episodeUrl = new URL(anchor.attr("href") || "", seriesUrl);
    } catch {
      return;
    }
    if (!ARABIC_TOONS_HOSTS.has(episodeUrl.hostname.toLowerCase())) return;
    const episodeId = episodeUrl.pathname.match(/-(\d+)\.html$/i)?.[1];
    if (!episodeId || episodeUrl.pathname.replace(/-\d+\.html$/i, "") !== seriesStem) return;
    if (episodes.has(episodeId)) return;

    const image = anchor.find("img").first();
    const label = normalizeArabicDigits([
      anchor.attr("title") || "",
      anchor.text(),
      image.attr("alt") || "",
    ].join(" "));
    const labelledNumber = label.match(/(?:الحلقة|episode)\s*[:#-]?\s*(\d+(?:\.\d+)?)/i)?.[1];
    const anyNumber = label.match(/(?:^|[^\d])(\d+(?:\.\d+)?)(?:$|[^\d])/)?.[1];
    const parsedNumber = Number(labelledNumber || anyNumber);
    const number = Number.isFinite(parsedNumber) && parsedNumber > 0
      ? parsedNumber
      : episodes.size + 1;

    let thumbnail: string | undefined;
    const srcsetThumbnail = (image.attr("data-srcset") || image.attr("srcset"))
      ?.split(",")[0]
      ?.trim()
      .split(/\s+/)[0];
    const thumbnailCandidates = [
      image.attr("data-src"),
      image.attr("data-original"),
      image.attr("data-lazy-src"),
      srcsetThumbnail,
      image.attr("src"),
    ].filter((value): value is string => Boolean(value?.trim()));
    for (const rawThumbnail of thumbnailCandidates) {
      try {
        const parsedThumbnail = new URL(rawThumbnail, AT_BASE);
        if (ARABIC_TOONS_HOSTS.has(parsedThumbnail.hostname.toLowerCase())) {
          thumbnail = parsedThumbnail.toString();
          break;
        }
      } catch { /* skip malformed thumbnails */ }
    }

    if (!episodeUrl.hash) episodeUrl.hash = "sets";
    episodes.set(episodeId, {
      number,
      epId: episodeId,
      url: episodeUrl.toString(),
      ...(thumbnail ? { thumbnail } : {}),
    });
  });

  return [...episodes.values()].sort((a, b) => a.number - b.number);
}

async function fetchStarCimaDubbed(path: string, forceRefresh = false): Promise<any> {
  const hit = _catalogCache.get(path);
  if (!forceRefresh && hit && Date.now() - hit.ts < CATALOG_TTL) return hit.data;

  // احتفظ بآخر كتالوج صالح كخطة رجوع حتى لو انتهت مدة حداثته القصيرة.
  // تعطل المصدر الخارجي لا يجب أن يحول كتالوج الهاتف إلى شاشة فارغة.
  const diskHit = _dcGet(path);
  const staleData = diskHit ?? (Array.isArray(hit?.data?.results) ? hit.data : null);
  if (!forceRefresh && diskHit) {
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
    if (r.ok) {
      const data = await r.json();
      if (!Array.isArray(data?.results)) throw new Error("invalid StarCima dubbed catalog response");
      _catalogCache.set(path, { data, ts: Date.now() });
      _dcSet(path, data); // حفظ على القرص للـ restart القادم
      return data;
    }
    logger.warn({ status: r.status, path }, "dubbed: StarCima catalog unavailable; trying Arabic-Toons");
  } catch (e) {
    logger.warn({ err: e, path }, "dubbed: fetchStarCimaDubbed error; trying Arabic-Toons");
  }

  const page = path.match(/^\/api\/dubbed\/catalog\?page=(\d+)$/);
  if (page) {
    const fallback = await fetchArabicToonsCatalogPage(Number(page[1]));
    if (fallback) {
      _catalogCache.set(path, { data: fallback, ts: Date.now() });
      _dcSet(path, fallback);
      return fallback;
    }
  }
  return staleData;
}

function parseCarateenProvider(value: unknown): CarateenProvider | null {
  return value === "sp" || value === "carateen" ? value : null;
}

function parsePositiveId(value: unknown): number | null {
  const id = Number(value);
  return Number.isSafeInteger(id) && id > 0 ? id : null;
}

function normalizeCarateenText(value: string): string {
  return value
    .normalize("NFKD")
    .replace(/[\u064B-\u065F\u0670]/g, "")
    .toLocaleLowerCase("ar")
    .trim();
}

// ── Carateen + Spacetoon catalogs ──
router.get("/dubbed/carateen/catalog", async (req, res) => {
  const page = Math.max(1, Number.parseInt(String(req.query.page || "1"), 10) || 1);
  const limit = Math.min(60, Math.max(12, Number.parseInt(String(req.query.limit || "36"), 10) || 36));
  const query = normalizeCarateenText(String(req.query.q || ""));
  const provider = req.query.provider === undefined
    ? null
    : parseCarateenProvider(req.query.provider);
  if (req.query.provider !== undefined && !provider) {
    res.status(400).json({ error: "provider must be sp or carateen" });
    return;
  }

  try {
    const all = await getCarateenCatalog(req.query.refresh === "1");
    const order = req.query.order === "oldest" ? "oldest" : "newest";
    const orderedAll = [...all].sort((a, b) => {
      const ya = parseInt(a.year || "0", 10) || 0;
      const yb = parseInt(b.year || "0", 10) || 0;
      if (order === "oldest") {
        if (ya && yb && ya !== yb) return ya - yb;
        return a.id - b.id;
      }
      if (ya && yb && ya !== yb) return yb - ya;
      return b.id - a.id;
    });
    const providerRows = provider
      ? orderedAll.filter((entry) => entry.provider === provider)
      : orderedAll;
    const filtered = query
      ? providerRows.filter((entry) =>
          normalizeCarateenText(
            `${entry.title} ${entry.category} ${entry.providerLabel}`,
          ).includes(query),
        )
      : providerRows;
    const SPACETOON_POSTER_FIXES: Record<number, string> = {
      1148159749: "https://animenovaa.duckdns.org/api/source-catalog/tmdb-poster/w342/1rqrypnOq4cuwzobGW9gQgarkSr.jpg",
      969501286: "https://animenovaa.duckdns.org/api/source-catalog/tmdb-poster/w342/3qiBRbIsfpw6O32TfD1FZ81MiKw.jpg",
      186: "https://animenovaa.duckdns.org/api/source-catalog/tmdb-poster/w342/wzUQbSs3X15xs6GRE0fnPeAFWPs.jpg",
    };
    const tgSpItems = (page === 1 && provider !== "carateen")
      ? await getTelegramSpacetoonCatalogItems(String(req.query.q || ""))
      : [];
    const totalResults = filtered.length + (page === 1 ? tgSpItems.length : 0);
    const totalPages = Math.max(1, Math.ceil(totalResults / limit));
    const start = (page - 1) * limit;
    const baseSlice = filtered.slice(start, start + limit).map((entry) => {
      const fixedPoster = SPACETOON_POSTER_FIXES[entry.id];
      if (fixedPoster) return { ...entry, image: fixedPoster };
      const rawImg = String(entry.image || "").trim();
      if (/^https?:\/\/(?:(?:www\.)?carateen\.tv|cdn\.spacetoongo\.com)\//i.test(rawImg)) {
        return {
          ...entry,
          image: `https://animenovaa.duckdns.org/api/dubbed/carateen/poster?url=${encodeURIComponent(rawImg)}`,
        };
      }
      return entry;
    });
    const pageSlice = tgSpItems.length > 0 ? [...tgSpItems, ...baseSlice] : baseSlice;
    res.setHeader("Cache-Control", (req.query.refresh === "1" || provider === "sp") ? "no-store" : "public, max-age=300");
    res.json({
      results: pageSlice,
      page,
      limit,
      totalResults,
      totalPages,
      sourceCounts: {
        sp: all.filter((entry) => entry.provider === "sp").length + tgSpItems.length,
        carateen: all.filter((entry) => entry.provider === "carateen").length,
      },
    });
  } catch (error) {
    logger.warn({ err: error }, "dubbed: Carateen catalog unavailable");
    res.status(502).json({ error: "تعذر تحميل كتالوج كراتين وسبيستون" });
  }
});

router.get("/dubbed/carateen/episodes", async (req, res) => {
  const provider = parseCarateenProvider(req.query.provider);
  const showId = parsePositiveId(req.query.showId);
  if (!provider || !showId) {
    res.status(400).json({ error: "provider and showId are required" });
    return;
  }
  if (showId > TG_SPACETOON_ID_BASE) {
    const episodes = await getTelegramSpacetoonEpisodes(showId);
    res.setHeader("Cache-Control", "no-store");
    res.json({ episodes });
    return;
  }

  try {
    const rows = await getCarateenEpisodes(provider, showId, req.query.refresh === "1");
    const episodes = rows
      .map((episode, index) => {
        const rawNumber = Number(episode.number || episode.order_id || index + 1);
        const number = Number.isFinite(rawNumber) && rawNumber > 0 ? rawNumber : index + 1;
        const episodeId = parsePositiveId(episode.id);
        if (!episodeId) return null;
        const imageValue =
          provider === "sp"
            ? episode.cover_full_path
            : episode.thumbnail;
        let thumbnail = "";
        if (typeof imageValue === "string" && imageValue.startsWith("https://")) {
          try {
            const imageUrl = new URL(imageValue);
            if (
              imageUrl.hostname === "cdn.spacetoongo.com" ||
              imageUrl.hostname.endsWith(".spacetoongo.com")
            ) {
              thumbnail = imageUrl.toString();
            }
          } catch {}
        }
        const title = String(episode.pref || episode.title || "").trim();
        return {
          number,
          epId: String(episodeId),
          url: `carateen://${provider}/${showId}/${episodeId}`,
          title,
          thumbnail,
          season: episode.season ?? null,
        };
      })
      .filter((episode): episode is NonNullable<typeof episode> => episode !== null)
      .sort((a, b) => a.number - b.number);

    res.setHeader("Cache-Control", req.query.refresh === "1" ? "no-store" : "public, max-age=900");
    res.json({ episodes });
  } catch (error) {
    logger.warn({ err: error, provider, showId }, "dubbed: Carateen episodes unavailable");
    res.status(502).json({ error: "تعذر تحميل حلقات هذا العمل" });
  }
});

router.get("/dubbed/carateen/stream", async (req, res) => {
  const provider = parseCarateenProvider(req.query.provider);
  const showId = parsePositiveId(req.query.showId);
  const episodeId = parsePositiveId(req.query.episodeId);
  if (!provider || !showId || !episodeId) {
    res.status(400).json({ error: "provider, showId and episodeId are required" });
    return;
  }
  if (episodeId > TG_SPACETOON_ID_BASE) {
    // First-party Telegram stream: return empty streamUrl so mobile watch.tsx falls through
    // cleanly to /dubbed/carateen/watch-src and plays /api/tg-media/stream/:id directly without
    // wrapping it inside /api/anime/video-proxy?ref=https://carateen.tv/.
    res.setHeader("Cache-Control", "no-store");
    res.json({ streamUrl: "", useWatchSrc: true, success: false });
    return;
  }
  try {
    const rawUrl = await getCarateenEpisodeStream(provider, showId, episodeId);
    if (!isAllowedCarateenStreamUrl(rawUrl)) {
      res.status(502).json({ error: "مصدر الحلقة غير مدعوم" });
      return;
    }
    res.setHeader("Cache-Control", "no-store");
    res.json({ streamUrl: rawUrl, success: true });
  } catch (error) {
    logger.warn(
      { err: error, provider, showId, episodeId },
      "dubbed: Carateen stream unavailable",
    );
    res.status(502).json({ error: "تعذر استخراج رابط الحلقة" });
  }
});

router.get("/dubbed/carateen/watch-src", async (req, res) => {
  const provider = parseCarateenProvider(req.query.provider);
  const showId = parsePositiveId(req.query.showId);
  const episodeId = parsePositiveId(req.query.episodeId);
  if (!provider || !showId || !episodeId) {
    res.status(400).json({ error: "provider, showId and episodeId are required" });
    return;
  }
  if (episodeId > TG_SPACETOON_ID_BASE) {
    const tgSrc = await getTelegramSpacetoonWatchSrc(episodeId);
    if (!tgSrc) { res.status(404).json({ error: "الحلقة غير موجودة" }); return; }
    res.setHeader("Cache-Control", "no-store");
    res.json({
      hlsUrl: tgSrc.hlsUrl,
      rawUrl: tgSrc.rawUrl,
      type: "mp4",
      serverName: tgSrc.serverName,
      quality: tgSrc.quality,
      servers: tgSrc.servers,
      ...(tgSrc.subtitleUrl ? { subtitleUrl: tgSrc.subtitleUrl } : {}),
    });
    return;
  }

  try {
    const rawUrl = await getCarateenEpisodeStream(provider, showId, episodeId);
    if (!isAllowedCarateenStreamUrl(rawUrl)) {
      res.status(502).json({ error: "مصدر الحلقة غير مدعوم" });
      return;
    }
    const mediaUrl = new URL(rawUrl);
    const isHls = /\.m3u8$/i.test(mediaUrl.pathname);
    const proxyPath = isHls ? "/api/anime/hls-proxy" : "/api/anime/video-proxy";
    const proxiedUrl =
      `${proxyPath}?url=${encodeURIComponent(rawUrl)}` +
      `&ref=${encodeURIComponent("https://carateen.tv/")}`;
    res.setHeader("Cache-Control", "no-store");
    res.json({ hlsUrl: proxiedUrl, type: isHls ? "hls" : "mp4" });
  } catch (error) {
    logger.warn(
      { err: error, provider, showId, episodeId },
      "dubbed: Carateen stream unavailable",
    );
    res.status(502).json({ error: "تعذر استخراج رابط الحلقة" });
  }
});

// ── StarDima V2 (كرتون مدبلج 2) routes ──
router.get("/dubbed/sd2/catalog", async (req, res) => {
  const page = Math.max(1, Number.parseInt(String(req.query.page || "1"), 10) || 1);
  const limit = Math.min(60, Math.max(12, Number.parseInt(String(req.query.limit || "36"), 10) || 36));
  const query = normalizeCarateenText(String(req.query.q || ""));
  const typeFilter = String(req.query.type || "all").toLowerCase();
  const order = req.query.order === "oldest" ? "oldest" : req.query.order === "title" ? "title" : "newest";
  try {
    const all = await getStardimaV2Catalog(req.query.refresh === "1");
    const byType = typeFilter === "series" ? all.filter((e) => e.mediaType === "series") : typeFilter === "movie" ? all.filter((e) => e.mediaType === "movie") : all;
    const filtered = query ? byType.filter((e) => normalizeCarateenText(e.title + " " + e.languageLabel + " " + e.category).includes(query)) : byType;
    const sorted = [...filtered].sort((a, b) => {
      if (order === "title") return a.title.localeCompare(b.title, "ar");
      const ya = parseInt(a.year || "0", 10) || 0;
      const yb = parseInt(b.year || "0", 10) || 0;
      if (order === "oldest") { if (ya && yb && ya !== yb) return ya - yb; return a.id - b.id; }
      if (ya && yb && ya !== yb) return yb - ya;
      return 0;
    });
    const totalPages = Math.max(1, Math.ceil(sorted.length / limit));
    const start = (page - 1) * limit;
    let pageSlice: any[] = sorted.slice(start, start + limit);
    warmStardimaV2CatalogSlice(pageSlice.map((it) => ({ slug: it.slug, mediaType: it.mediaType })));
    if (page === 1 && typeFilter !== "movie") {
      const tgSd2 = await getTelegramSd2CatalogItems(String(req.query.q || ""));
      if (tgSd2.length > 0) pageSlice = [...tgSd2, ...pageSlice];
    }
    res.setHeader("Cache-Control", req.query.refresh === "1" ? "no-store" : "public, max-age=300");
    res.json({ results: pageSlice, page, limit, totalResults: sorted.length, totalPages, counts: { all: all.length, series: all.filter((e) => e.mediaType === "series").length, movies: all.filter((e) => e.mediaType === "movie").length } });
  } catch (error) {
    logger.warn({ err: error }, "dubbed: StarDima V2 catalog unavailable");
    res.status(502).json({ error: "تعذر تحميل كتالوج كرتون مدبلج 2" });
  }
});
router.get("/dubbed/sd2/episodes", async (req, res) => {
  const slugParam = String(req.query.slug || req.query.showId || "").trim();
  const mediaTypeParam = String(req.query.mediaType || "").trim();
  const mediaTypeHint = mediaTypeParam === "movie" ? "movie" : mediaTypeParam === "series" ? "series" : undefined;
  if (!slugParam) { res.status(400).json({ error: "slug or showId is required" }); return; }
  if (/^tg-sd2-\d+$/i.test(slugParam)) {
    const tgDetail = await getTelegramSd2Detail(slugParam);
    if (!tgDetail) { res.status(404).json({ error: "العمل غير موجود" }); return; }
    res.setHeader("Cache-Control", "no-store");
    res.json(tgDetail);
    return;
  }
  try {
    const detail = await getStardimaV2Episodes(slugParam, mediaTypeHint, req.query.refresh === "1");
    const known = findStardimaV2ByIdOrSlug(slugParam);
    const seasons = detail.seasons.map((season) => ({
      label: season.label,
      seasonNumber: season.seasonNumber,
      episodes: season.episodes.map((ep) => ({
        number: ep.number,
        epId: ep.epId,
        url: "carateen://sd2/" + detail.slug + "/" + ep.epId,
        watchUrl: ep.watchUrl,
        title: ep.title,
        thumbnail: ep.thumbnail || detail.image || known?.image || "",
        season: ep.seasonNumber,
        seasonLabel: ep.seasonLabel,
      })),
    }));
    const flatEpisodes = seasons.flatMap((s) => s.episodes);
    res.setHeader("Cache-Control", req.query.refresh === "1" ? "no-store" : "public, max-age=900");
    res.json({ slug: detail.slug, title: detail.title, mediaType: detail.mediaType, image: detail.image, year: detail.year, languageLabel: detail.languageLabel, seasons, episodes: flatEpisodes });
  } catch (error) {
    logger.warn({ err: error, slug: slugParam }, "dubbed: StarDima V2 episodes unavailable");
    res.status(502).json({ error: error?.message || "تعذر تحميل حلقات هذا العمل" });
  }
});
router.get("/dubbed/sd2/servers", async (req, res) => {
  const watchUrl = String(req.query.watchUrl || "").trim();
  const tgSrvM = watchUrl.match(/^tg:\/\/episode\/(\d+)$/i);
  if (tgSrvM) {
    const epRow = await getTelegramEpisodeById(Number.parseInt(tgSrvM[1], 10));
    if (!epRow) { res.status(404).json({ error: "الحلقة غير موجودة" }); return; }
    res.setHeader("Cache-Control", "no-store");
    const qualities = await getTelegramEpisodeQualities(epRow.id);
    res.json({ watchUrl, servers: qualities.map((q) => ({ id: q.id, name: q.name, quality: q.quality })) });
    return;
  }
  if (!watchUrl || !isAllowedHyperwatchingUrl(watchUrl)) { res.status(400).json({ error: "valid watchUrl is required" }); return; }
  try {
    const servers = await getStardimaV2Servers(watchUrl);
    res.setHeader("Cache-Control", "public, max-age=300");
    res.json({ watchUrl, servers });
  } catch (error) {
    logger.warn({ err: error, watchUrl }, "dubbed: StarDima V2 servers unavailable");
    res.status(502).json({ error: error?.message || "تعذر جلب سيرفرات التشغيل" });
  }
});
const CARATEEN_POSTER_CACHE_DIR = "/opt/nova-cache/carateen-posters";
try { fs.mkdirSync(CARATEEN_POSTER_CACHE_DIR, { recursive: true }); } catch {}

router.get("/dubbed/carateen/poster", async (req, res) => {
  const rawUrl = String(req.query.url || "").trim();
  if (!rawUrl || !/^https?:\/\/(?:(?:www\.)?carateen\.tv|cdn\.spacetoongo\.com)\//i.test(rawUrl)) {
    res.status(400).end();
    return;
  }
  const hash = crypto.createHash("sha1").update(rawUrl).digest("hex");
  const extMatch = rawUrl.match(/\.(webp|jpe?g|png)(?:[?#]|$)/i);
  const ext = (extMatch ? extMatch[1] : "jpg").toLowerCase();
  const contentType = ext === "png" ? "image/png" : ext === "webp" ? "image/webp" : "image/jpeg";
  const cacheFile = path.join(CARATEEN_POSTER_CACHE_DIR, hash + "." + ext);

  try {
    if (fs.existsSync(cacheFile)) {
      const buf = fs.readFileSync(cacheFile);
      if (buf.length > 100) {
        res.setHeader("Content-Type", contentType);
        res.setHeader("Cache-Control", "public, max-age=2592000, immutable");
        res.send(buf);
        return;
      }
    }
    const isSp = /spacetoongo\.com/i.test(rawUrl);
    const r = await fetch(rawUrl, {
      headers: {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36",
        Referer: isSp ? "https://spacetoongo.com/" : "https://carateen.tv/",
        Accept: "image/jpeg,image/png,image/webp,image/*,*/*;q=0.8",
      },
      signal: AbortSignal.timeout(10000),
    });
    if (!r.ok) {
      res.status(502).end();
      return;
    }
    const buf = Buffer.from(await r.arrayBuffer());
    if (buf.length > 100) {
      try { fs.writeFileSync(cacheFile, buf); } catch {}
    }
    res.setHeader("Content-Type", r.headers.get("content-type") || contentType);
    res.setHeader("Cache-Control", "public, max-age=2592000, immutable");
    res.send(buf);
  } catch {
    res.status(502).end();
  }
});

const SD2_POSTER_CACHE_DIR = "/opt/nova-cache/sd2-posters";
try { fs.mkdirSync(SD2_POSTER_CACHE_DIR, { recursive: true }); } catch {}

router.get("/dubbed/sd2/poster", async (req, res) => {
  const rawUrl = String(req.query.url || "").trim();
  if (!rawUrl || !/^https?:\/\/watch-\d+\.stardima\.com\.im\/storage\//i.test(rawUrl)) {
    res.status(400).end();
    return;
  }
  const hash = crypto.createHash("sha1").update(rawUrl).digest("hex");
  const extMatch = rawUrl.match(/\.(webp|jpe?g|png)(?:[?#]|$)/i);
  const ext = (extMatch ? extMatch[1] : "webp").toLowerCase();
  const contentType = ext === "png" ? "image/png" : ext === "webp" ? "image/webp" : "image/jpeg";
  const cacheFile = path.join(SD2_POSTER_CACHE_DIR, hash + "." + ext);

  try {
    if (fs.existsSync(cacheFile)) {
      const buf = fs.readFileSync(cacheFile);
      if (buf.length > 100) {
        res.setHeader("Content-Type", contentType);
        res.setHeader("Cache-Control", "public, max-age=2592000, immutable");
        res.send(buf);
        return;
      }
    }
    const r = await fetch(rawUrl, {
      headers: {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36",
        Referer: "https://watch-79.stardima.com.im/",
        Accept: "image/avif,image/webp,image/apng,image/*,*/*;q=0.8",
      },
      signal: AbortSignal.timeout(10000),
    });
    if (!r.ok) {
      res.status(502).end();
      return;
    }
    const buf = Buffer.from(await r.arrayBuffer());
    if (buf.length > 100) {
      try { fs.writeFileSync(cacheFile, buf); } catch {}
    }
    res.setHeader("Content-Type", r.headers.get("content-type") || contentType);
    res.setHeader("Cache-Control", "public, max-age=2592000, immutable");
    res.send(buf);
  } catch {
    res.status(502).end();
  }
});

router.get("/dubbed/sd2/watch-src", async (req, res) => {
  const watchUrl = String(req.query.watchUrl || "").trim();
  const serverId = String(req.query.serverId || "").trim() || undefined;
  const preferMp4 = req.query.preferMp4 === "1" || req.query.forDownload === "1";
  const tgWatchM = watchUrl.match(/^tg:\/\/episode\/(\d+)$/i);
  if (tgWatchM) {
    const epRow = await getTelegramEpisodeById(Number.parseInt(tgWatchM[1], 10));
    if (!epRow) { res.status(404).json({ error: "الحلقة غير موجودة" }); return; }
    const signedPath = buildSignedStreamPath(epRow.id);
    const signedUrl = buildSignedStreamUrl(epRow.id);
    const subtitleUrl = epRow.subtitle_file_id ? buildSubtitleUrl(epRow.id) : undefined;
    res.setHeader("Cache-Control", "no-store");
    res.json({ hlsUrl: signedPath, rawUrl: signedUrl, referer: "", type: "mp4", serverId: "nova_tg", serverName: "NOVA VIP", quality: epRow.quality, ...(subtitleUrl ? { subtitleUrl } : {}) });
    return;
  }
  if (!watchUrl || !isAllowedHyperwatchingUrl(watchUrl)) { res.status(400).json({ error: "valid watchUrl is required" }); return; }
  try {
    const resolved = await resolveStardimaV2Stream(watchUrl, serverId, preferMp4);
    const isHls = resolved.type === "hls";
    const proxyPath = isHls ? "/api/anime/hls-proxy" : "/api/anime/video-proxy";
    const proxiedUrl = proxyPath + "?url=" + encodeURIComponent(resolved.streamUrl) + "&ref=" + encodeURIComponent(resolved.referer);
    res.setHeader("Cache-Control", "no-store");
    res.json({ hlsUrl: proxiedUrl, rawUrl: resolved.streamUrl, referer: resolved.referer, type: resolved.type, serverId: resolved.serverId, serverName: resolved.serverName, quality: resolved.quality });
  } catch (error: any) {
    logger.warn({ err: error, watchUrl, serverId }, "dubbed: StarDima V2 stream unavailable");
    res.status(502).json({ error: error?.message || "تعذر استخراج رابط الفيديو" });
  }
});

// ── GET /api/dubbed/catalog?page=N ──
router.get("/dubbed/catalog", async (req, res) => {
  const page = parseInt(req.query.page as string || "1", 10) || 1;
  const forceRefresh = req.query.refresh === "1";
  const data = await fetchStarCimaDubbed(`/api/dubbed/catalog?page=${page}`, forceRefresh);
  if (!data) { res.status(502).json({ error: "upstream failed" }); return; }
  // Older mobile builds accept only absolute poster URLs. StarCima returns
  // /api/dubbed/img paths, so expose the same proxy as an absolute URL.
  const publicBase = (process.env.NOVA_PUBLIC_URL || "https://animenovaa.duckdns.org").replace(/\/$/, "");
  const absoluteImageUrl = (value: any) =>
    typeof value === "string" && value.startsWith("/") ? `${publicBase}${value}` : value;
  const results = Array.isArray(data.results) ? data.results.map((item: any) => ({
    ...item,
    image: absoluteImageUrl(item.image),
    poster: absoluteImageUrl(item.poster),
  })) : data.results;
  let mergedResults = results;
  if (page === 1 && Array.isArray(results)) {
    const tgItems = await getTelegramDubbedCatalogItems();
    if (tgItems.length > 0) {
      mergedResults = [...tgItems, ...results];
    }
  }
  const responseData = mergedResults ? { ...data, results: mergedResults } : data;
  res.setHeader("Cache-Control", forceRefresh ? "no-store" : "public, max-age=180");
  res.json(responseData);
});

function normalizeDubbedSearchText(val: string): string {
  return String(val || "")
    .normalize("NFKD")
    .replace(/[\u064B-\u065F\u0670\u0640]/g, "")
    .replace(/[أإآٱ]/g, "ا")
    .replace(/ة/g, "ه")
    .replace(/ى/g, "ي")
    .replace(/ؤ/g, "و")
    .replace(/ئ/g, "ي")
    .toLowerCase()
    .replace(/[-_.:،,!?()\[\]]+/g, " ")
    .replace(/\s+/g, " ")
    .trim();
}

// ── GET /api/dubbed/search?q= ──
router.get("/dubbed/search", async (req, res) => {
  const q = (req.query.q as string || "").trim();
  if (!q) { res.json({ results: [] }); return; }
  const needle = normalizeDubbedSearchText(q);
  const needleTokens = needle.split(" ").filter(Boolean);
  const publicBase = (process.env.NOVA_PUBLIC_URL || "https://animenovaa.duckdns.org").replace(/\/$/, "");
  const absoluteImageUrl = (value: any) =>
    typeof value === "string" && value.startsWith("/") ? `${publicBase}${value}` : value;

  try {
    const seen = new Set<string>();
    const results: any[] = [];

    const addCandidate = (item: any) => {
      if (!item || typeof item !== "object") return;
      const idKey = String(item.key || item.slug || item.title || "").trim();
      if (!idKey || seen.has(idKey)) return;
      const hay = normalizeDubbedSearchText([item.title, item.key, item.slug].filter(Boolean).join(" "));
      if (!hay) return;
      const matches = needleTokens.length > 0 && needleTokens.every(tok => hay.includes(tok));
      if (!matches) return;
      seen.add(idKey);
      results.push({
        ...item,
        image: absoluteImageUrl(item.image),
        poster: absoluteImageUrl(item.poster),
      });
    };

    // 0. Include matching Telegram private storage cartoon/dubbed series
    const tgSearchItems = await getTelegramDubbedCatalogItems(q);
    for (const item of tgSearchItems) addCandidate(item);

    // 1. Search all in-memory cached catalog pages
    for (const [, entry] of _catalogCache.entries()) {
      if (Array.isArray(entry?.data?.results)) {
        for (const item of entry.data.results) addCandidate(item);
      }
    }

    // 2. Search all 55+ disk-cached catalog pages in /opt/nova-cache/dubbed
    for (let p = 1; p <= 60; p++) {
      const pageData = _dcGet(`/api/dubbed/catalog?page=${p}`);
      if (Array.isArray(pageData?.results)) {
        for (const item of pageData.results) addCandidate(item);
      }
    }

    res.setHeader("Cache-Control", "public, max-age=300");
    res.json({ results });
  } catch {
    res.json({ results: [] });
  }
});

// ── GET /api/dubbed/episodes?series= ──
router.get("/dubbed/episodes", async (req, res) => {
  const series = (req.query.series as string || "").trim();
  const order = req.query.order === "asc" ? "asc" : "desc";
  const sortEps = (list: any[]) => [...list].sort((a, b) => {
    const an = Number(a?.number) || 0;
    const bn = Number(b?.number) || 0;
    return order === "asc" ? an - bn : bn - an;
  });
  if (!series) { res.json({ episodes: [] }); return; }
  if (series.startsWith("tg://series/")) {
    const tgEps = await getTelegramDubbedEpisodes(series);
    res.setHeader("Cache-Control", "no-store");
    res.json({ episodes: sortEps(tgEps) });
    return;
  }

  const cacheKey = `/api/dubbed/episodes?series=${series}`;
  const hit = _catalogCache.get(cacheKey);
  const arabicToonsSeriesUrl = normalizeArabicToonsSeriesUrl(series);
  if (
    arabicToonsSeriesUrl &&
    hit &&
    Array.isArray(hit.data) &&
    hit.data.length > 0 &&
    Date.now() - hit.ts < CATALOG_TTL
  ) {
    res.setHeader("Cache-Control", "public, max-age=1800");
    res.json({ episodes: sortEps(hit.data) });
    return;
  }

  if (arabicToonsSeriesUrl) {
    const html = await fetchArabicToonsHtml(arabicToonsSeriesUrl, `${AT_BASE}/cartoon.php`);
    const arabicToonsEpisodes = html
      ? parseArabicToonsEpisodes(html, arabicToonsSeriesUrl)
      : [];
    if (arabicToonsEpisodes.length) {
      _catalogCache.set(cacheKey, { data: arabicToonsEpisodes, ts: Date.now() });
      res.setHeader("Cache-Control", "public, max-age=1800");
      res.json({ episodes: sortEps(arabicToonsEpisodes) });
      return;
    }
  }

  if (hit && Date.now() - hit.ts < CATALOG_TTL && !arabicToonsSeriesUrl) {
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
    res.json({ episodes: sortEps(episodes) });
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
  const tgEpMatch = epUrl.match(/^tg:\/\/episode\/(\d+)$/i);
  if (tgEpMatch) {
    const epId = Number.parseInt(tgEpMatch[1], 10);
    const epRow = await getTelegramEpisodeById(epId);
    if (!epRow) { res.status(404).json({ error: "الحلقة غير موجودة" }); return; }
    const signedPath = buildSignedStreamPath(epRow.id);
    const signedUrl = buildSignedStreamUrl(epRow.id);
    const subtitleUrl = epRow.subtitle_file_id ? buildSubtitleUrl(epRow.id) : undefined;
    const servers = await getTelegramEpisodeQualities(epRow.id);
    res.setHeader("Cache-Control", "no-store");
    res.json({
      hlsUrl: signedPath,
      rawUrl: signedUrl,
      type: "mp4",
      serverName: "NOVA VIP",
      quality: (epRow.quality || "720p").toLowerCase(),
      servers,
      ...(subtitleUrl ? { subtitleUrl } : {}),
    });
    return;
  }
  const carateenRef = parseCarateenEpisodeUrl(epUrl);
  if (carateenRef) {
    const provider = carateenRef.provider;
    const showId = parsePositiveId(carateenRef.showId);
    const episodeId = parsePositiveId(carateenRef.episodeId);
    if (!showId || !episodeId) {
      res.status(400).json({ error: "invalid Carateen episode reference" });
      return;
    }
    if (episodeId > TG_SPACETOON_ID_BASE) {
      const tgSrc = await getTelegramSpacetoonWatchSrc(episodeId);
      if (!tgSrc) { res.status(404).json({ error: "الحلقة غير موجودة" }); return; }
      res.setHeader("Cache-Control", "no-store");
      res.json({
      hlsUrl: tgSrc.hlsUrl,
      rawUrl: tgSrc.rawUrl,
      type: "mp4",
      serverName: tgSrc.serverName,
      quality: tgSrc.quality,
      servers: tgSrc.servers,
      ...(tgSrc.subtitleUrl ? { subtitleUrl: tgSrc.subtitleUrl } : {}),
    });
      return;
    }

    try {
      const rawUrl = await getCarateenEpisodeStream(provider, showId, episodeId);
      if (!isAllowedCarateenStreamUrl(rawUrl)) {
        res.status(502).json({ error: "مصدر الحلقة غير مدعوم" });
        return;
      }
      const mediaUrl = new URL(rawUrl);
      const isHls = /\.m3u8$/i.test(mediaUrl.pathname);
      const proxyPath = isHls ? "/api/anime/hls-proxy" : "/api/anime/video-proxy";
      const proxiedUrl =
        `${proxyPath}?url=${encodeURIComponent(rawUrl)}` +
        `&ref=${encodeURIComponent("https://carateen.tv/")}`;
      res.setHeader("Cache-Control", "no-store");
      res.json({ hlsUrl: proxiedUrl, type: isHls ? "hls" : "mp4" });
    } catch (error) {
      logger.warn(
        { err: error, provider, showId, episodeId },
        "dubbed: Carateen legacy watch-src unavailable",
      );
      res.status(502).json({ error: "تعذر استخراج رابط الحلقة" });
    }
    return;
  }

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
  const trace = readPlaybackTrace(req.query.trace);
  const sourceLookupStartedAt = Date.now();
  if (trace) {
    console.info(`[playback-trace] id=${trace} route=dubbed-source stage=request host=${parsedEpUrl.hostname}`);
    traceDubbedResponse(res, trace, "dubbed-source", parsedEpUrl.hostname, sourceLookupStartedAt);
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

/**
 * Timeout only the connection/headers phase. A timeout attached directly to
 * fetch() also aborts the response body later, truncating open-ended Range
 * requests while a large MP4 is still streaming.
 */
async function fetchFoupixHeaders(
  url: string,
  headers: Record<string, string>,
): Promise<Response> {
  const controller = new AbortController();
  const timeout = setTimeout(() => controller.abort(), 15_000);
  try {
    return await fetch(url, { headers, signal: controller.signal });
  } finally {
    clearTimeout(timeout);
  }
}

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
  const trace = readPlaybackTrace(req.query.trace);
  const streamStartedAt = Date.now();
  if (trace) {
    console.info(`[playback-trace] id=${trace} route=dubbed-stream stage=request host=${parsed.hostname}`);
    traceDubbedResponse(res, trace, "dubbed-stream", parsed.hostname, streamStartedAt);
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
    const uaHeader = String(req.headers["user-agent"] || "");
    const isDownloadReq = Boolean(
      String(req.query.dl || "") === "1" ||
      String(req.query.download || "") === "1" ||
      req.headers["x-download-token"] ||
      req.query.dlToken ||
      !rangeHeader ||
      /DownloadManager|NovaAnime/i.test(uaHeader)
    );
    if (isDownloadReq) {
      await streamMultiRangeMediaVPS({
        url: rawUrl,
        upstreamHeaders: fetchHeaders,
        req,
        res,
        isDownload: String(req.query.dl || "") === "1",
      });
      return;
    }
    if (rangeHeader) fetchHeaders["Range"] = rangeHeader;

    // foupix occasionally returns a transient 403 for the first request
    // even though the same signed URL works immediately afterwards. Retry
    // the same token before handing the failure to the mobile player.
    let upstream: Response | null = null;
    let networkRetryUsed = false;
    const retryableNetworkCodes = new Set<string>([
      "ECONNRESET", "ECONNREFUSED", "EAI_AGAIN", "ETIMEDOUT",
      "UND_ERR_CONNECT_TIMEOUT", "UND_ERR_SOCKET",
    ]);
    for (let attempt = 0; attempt < 3; attempt += 1) {
      try {
        upstream = await fetchFoupixHeaders(rawUrl, fetchHeaders);
        if (trace) {
          console.info(
            `[playback-trace] id=${trace} route=dubbed-stream stage=upstream_headers host=${parsed.hostname} status=${upstream.status} elapsed_ms=${Date.now() - streamStartedAt}`,
          );
        }
      } catch (error) {
        const errorName = error instanceof Error ? error.name : "UnknownError";
        const errorCode = (error as any)?.cause?.code;
        const retryableNetworkFailure =
          errorName !== "AbortError" &&
          (errorName === "TypeError" ||
            retryableNetworkCodes.has(String(errorCode)));
        if (retryableNetworkFailure && !networkRetryUsed && attempt < 2) {
          networkRetryUsed = true;
          await new Promise(resolve => setTimeout(resolve, 300));
          continue;
        }
        logger.warn({ errorName, errorCode }, "dubbed: stream upstream request failed");
        res.status(502).json({ error: "upstream unavailable" }); return;
      }
      const retryableStatus =
        upstream.status === 401 ||
        upstream.status === 403 ||
        ([502, 503, 504].includes(upstream.status) && attempt === 0);
      if (!retryableStatus || attempt === 2) break;
      try { await upstream.body?.cancel(); } catch {}
      await new Promise(resolve => setTimeout(resolve, 250 * (attempt + 1)));
    }
    if (!upstream) {
      res.status(502).json({ error: "upstream unavailable" }); return;
    }

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

function detectDubbedImageMime(buffer: Buffer): string | null {
  if (
    buffer.length >= 8 &&
    buffer.subarray(0, 8).equals(Buffer.from([0x89, 0x50, 0x4e, 0x47, 0x0d, 0x0a, 0x1a, 0x0a]))
  ) return "image/png";
  if (buffer.length >= 3 && buffer[0] === 0xff && buffer[1] === 0xd8 && buffer[2] === 0xff) {
    return "image/jpeg";
  }
  const signature = buffer.subarray(0, 6).toString("ascii");
  if (signature === "GIF87a" || signature === "GIF89a") return "image/gif";
  if (
    buffer.length >= 12 &&
    buffer.subarray(0, 4).toString("ascii") === "RIFF" &&
    buffer.subarray(8, 12).toString("ascii") === "WEBP"
  ) return "image/webp";
  return null;
}

// ── GET /api/dubbed/img?f= → binary-safe Arabic-Toons poster proxy ──
router.get("/dubbed/img", async (req, res) => {
  const f = (req.query.f as string || "").trim();
  if (!f || !/^[\w\-\.]+$/.test(f)) { res.status(400).send("bad"); return; }

  const atImgUrl = `${AT_BASE}/images/anime/${f}`;
  const sendImage = (buffer: Buffer): boolean => {
    const mime = detectDubbedImageMime(buffer);
    if (!mime) return false;
    res.setHeader("Content-Type", mime);
    res.setHeader("Cache-Control", "public, max-age=86400");
    res.send(buffer);
    return true;
  };

  // Fetch raw bytes directly; cfGet returns text and corrupts binary PNG/JPEG data.
  try {
    const direct = await fetch(atImgUrl, {
      headers: {
        "User-Agent": BROWSER_UA,
        Referer: `${AT_BASE}/`,
        Accept: "image/*,*/*",
      },
      signal: AbortSignal.timeout(8000),
    });
    if (direct.ok && sendImage(Buffer.from(await direct.arrayBuffer()))) return;
  } catch { /* try the StarCima image proxy */ }

  try {
    const scImgUrl = `${SC_BASE}/api/dubbed/img?f=${encodeURIComponent(f)}`;
    const r = await fetch(scImgUrl, {
      headers: {
        "User-Agent": BROWSER_UA,
        Referer: `${SC_BASE}/dubbed`,
        Accept: "image/*,*/*",
      },
      signal: AbortSignal.timeout(8000),
    });
    if (r.ok && sendImage(Buffer.from(await r.arrayBuffer()))) return;
  } catch { /* use the existing CF fallback below */ }

  try {
    const cfImage = await cfGet(atImgUrl, `${AT_BASE}/`, 8000);
    if (cfImage && sendImage(Buffer.from(cfImage, "binary"))) return;
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
  dubbedConfirmed: boolean;
  year?: number;
}

interface AwSourceTitle {
  animeId: string;
  title: string;
  titleAr: string | null;
  anilistId: number | null;
  dubbedConfirmed: boolean;
}

let _awCatalog: AwCatalogItem[] | null = null;
let _awCatalogTs = 0;
const AW_TTL = 2 * 60 * 60_000; // 2 ساعات
const AW_DISK_CACHE_FILE = _dcJoin(_DC_DIR, "aw-catalog-v2.json");
const AW_DISK_TTL = 7 * 24 * 60 * 60_000;
let _awLoadPromise: Promise<AwCatalogItem[]> | null = null;
let _awPosterHydrationPromise: Promise<void> | null = null;

function awPoster(anilistId: number | null | undefined): string | null {
  if (!Number.isFinite(anilistId) || Number(anilistId) <= 0) return null;
  return `https://img.anili.st/media/${anilistId}`;
}

// ── Poster caches (عمر الكاش = 24 ساعة مع السيرفر) ──
const _tmdbPosterCache = new Map<string, string | null>();
const _tvMazePosterCache = new Map<string, string | null>();
const _anilistPosterCache = new Map<string, string | null>();
const TMDB_KEY = "8265bd1679663a7ea12ac168da84d2e8";
const TMDB_IMG = "https://animenovaa.duckdns.org/api/source-catalog/tmdb-poster/w342";

function normalizeAwPosterUrl(url: string | null | undefined): string | null {
  if (!url) return null;
  return url.replace(
    /^https?:\/\/image\.tmdb\.org\/t\/p\/(?:w\d+|original)\//i,
    `${TMDB_IMG}/`,
  );
}

/** احذف لاحقة الموسم/الجزء والوسوم التي لا تدخل في مطابقة العمل الأساسي. */
function awBaseTitle(title: string): string {
  let s = title
    .replace(/[_-]+/g, " ")
    .replace(/\s*[\[(]\s*(?:season|saison|الموسم|موسم|part|الجزء|جزء|#?special\.?\d*|tv)\s*[-_.#]?\s*\d*\s*[\])]\s*/gi, " ")
    .replace(/\s+(?:season|saison|الموسم|موسم)\s*[-_.#]?\s*\d+\s*(?:dub(?:bed)?|مدبلج)?$/i, "")
    .replace(/\s+\d+(?:st|nd|rd|th)\s+season(?:\s+picture\s+drama)?\s*(?:dub(?:bed)?|مدبلج)?$/i, "")
    .replace(/\s+(?:part|الجزء|جزء)\s*[-_.#]?\s*\d+\s*$/i, "")
    .replace(/\s+s\s*[-_.#]?\s*\d+\s*$/i, "")
    .replace(/\s+(?:dub(?:bed)?|مدبلج)$/i, "")
    .replace(/\s+/g, " ")
    .trim();
  // Strip trailing standalone season number (1..15) for multi-season cartoons (e.g. "Regular Show 6", "Sponge Bob 11", "Batman: The Animated Series 1")
  if (!/(?:movie|ova|special|part|episode|ep|film)\s+\d+$/i.test(s) && !/^\d+\s+lives$/i.test(s)) {
    s = s.replace(/^(.*[A-Za-z]{3,})\s+(?:[1-9]|1[0-5])$/, "$1").trim();
  }
  if (/^sponge\s*bob$/i.test(s)) s = "SpongeBob SquarePants";
  return s;
}

// Some older western-animation rows were imported into aw_links with the
// generic content_type=anime, while newer seasons use content_type=dubbed.
// Keep this compatibility scope explicit so ordinary Japanese anime does not
// leak into the Arabic dubbed catalogue.
const LEGACY_ANIMATION_KEYS = new Set(["invincible", "castlevania"]);
function isLegacyAnimationSeries(series: string): boolean {
  return LEGACY_ANIMATION_KEYS.has(
    awBaseTitle(series).toLocaleLowerCase("en-US").replace(/[^a-z0-9]+/gi, " ").trim(),
  );
}

function awSeasonLabel(title: string, animeId: string): string {
  const value = `${title} ${animeId}`;
  const season = value.match(/(?:season|saison|الموسم|موسم)\s*[-_.#]?\s*(\d+)/i)
    || value.match(/\b(\d+)(?:st|nd|rd|th)\s+season\b/i)
    || value.match(/\bs\s*[-_.#]?\s*(\d+)\b/i);
  if (season) return `Season ${season[1]}`;
  const part = value.match(/(?:part|الجزء|جزء)\s*[-_.#]?\s*(\d+)/i);
  if (part) return `Part ${part[1]}`;
  const cleanTitle = title.replace(/\s+(?:dub(?:bed)?|مدبلج)$/i, "").trim();
  const trailingNum = cleanTitle.match(/^(.*[A-Za-z]{3,})\s+([1-9]|1[0-5])$/);
  if (trailingNum && !/(?:movie|ova|special|part|episode|ep|film)$/i.test(trailingNum[1].trim())) {
    return `Season ${trailingNum[2]}`;
  }
  return "الحلقات";
}

function awGroupKey(title: string): string {
  return awBaseTitle(title)
    .toLocaleLowerCase("en-US")
    .replace(/[^\p{L}\p{N}]+/gu, " ")
    .trim();
}

function awTitleScore(title: string): number {
  return awSeasonLabel(title, "") !== "الحلقات" ? 2 : title.trim() ? 1 : 0;
}

function buildAwSearchCandidates(title: string): string[] {
  const base = awBaseTitle(title);
  const candidates: string[] = [base];
  const noParen = base.replace(/\s*\([^)]*\)\s*/g, " ").replace(/\s+/g, " ").trim();
  if (noParen && !candidates.includes(noParen)) candidates.push(noParen);
  const noMovieNum = noParen
    .replace(/\b(?:Movie|OVA|Special|SP)\s*\d*\s*[:\-]?\s*/gi, " ")
    .replace(/\b(?:Movies|Specials|Recap|Picture Drama|Manner Movies)\b/gi, "")
    .replace(/\s+/g, " ")
    .trim();
  if (noMovieNum && !candidates.includes(noMovieNum)) candidates.push(noMovieNum);
  const beforeColon = noParen.split(/[:：]/)[0]
    .replace(/\b(?:Movie|OVA|Special|SP|Movies|Specials|Recap)\s*\d*$/i, "")
    .replace(/\s+(?:[1-9]|1[0-5])$/, "")
    .trim();
  if (beforeColon && beforeColon.length >= 3 && !candidates.includes(beforeColon)) {
    candidates.push(beforeColon);
  }
  return candidates.filter(Boolean);
}

/** ابحث عن بوستر في TMDB بالعنوان */
async function tmdbPosterByTitle(title: string): Promise<string | null> {
  const base = awBaseTitle(title);
  if (_tmdbPosterCache.has(base)) return _tmdbPosterCache.get(base) ?? null;
  for (const q of buildAwSearchCandidates(title)) {
    try {
      const url = `https://api.themoviedb.org/3/search/multi?api_key=${TMDB_KEY}&query=${encodeURIComponent(q)}&language=en-US&page=1`;
      const r = await fetch(url, { signal: AbortSignal.timeout(6000) });
      if (!r.ok) continue;
      const data = await r.json();
      const hit = (data.results as any[] || []).find((h: any) =>
        h.poster_path && (h.media_type === "tv" || h.media_type === "movie")
      );
      if (hit?.poster_path) {
        const poster = `${TMDB_IMG}${hit.poster_path}`;
        _tmdbPosterCache.set(base, poster);
        return poster;
      }
    } catch {}
  }
  _tmdbPosterCache.set(base, null);
  return null;
}

/** TVMaze fallback لا يحتاج مفتاحاً، ويفيد خصوصاً في الأعمال الغربية المدبلجة. */
async function tvMazePosterByTitle(title: string): Promise<string | null> {
  const base = awBaseTitle(title);
  if (_tvMazePosterCache.has(base)) return _tvMazePosterCache.get(base) ?? null;
  for (const q of buildAwSearchCandidates(title)) {
    try {
      const r = await fetch(`https://api.tvmaze.com/search/shows?q=${encodeURIComponent(q)}`, {
        signal: AbortSignal.timeout(6000),
      });
      if (!r.ok) continue;
      const data = await r.json();
      const normalized = q.toLocaleLowerCase("en-US");
      const ranked = (Array.isArray(data) ? data : [])
        .filter((row: any) => row?.show?.image?.original || row?.show?.image?.medium)
        .sort((a: any, b: any) => {
          const an = String(a?.show?.name || "").toLocaleLowerCase("en-US");
          const bn = String(b?.show?.name || "").toLocaleLowerCase("en-US");
          return Number(bn === normalized) - Number(an === normalized);
        });
      const poster = ranked[0]?.show?.image?.original || ranked[0]?.show?.image?.medium || null;
      if (poster) {
        _tvMazePosterCache.set(base, poster);
        return poster;
      }
    } catch {}
  }
  _tvMazePosterCache.set(base, null);
  return null;
}

/** AniList GraphQL fallback للأعمال اليابانية والـ OVA والأفلام */
async function anilistPosterByTitle(title: string): Promise<string | null> {
  const base = awBaseTitle(title);
  if (_anilistPosterCache.has(base)) return _anilistPosterCache.get(base) ?? null;
  for (const q of buildAwSearchCandidates(title)) {
    try {
      const r = await fetch("https://graphql.anilist.co", {
        method: "POST",
        headers: { "Content-Type": "application/json", Accept: "application/json" },
        body: JSON.stringify({
          query: "query ($s: String) { Media(search: $s, type: ANIME) { id coverImage { extraLarge large } } }",
          variables: { s: q },
        }),
        signal: AbortSignal.timeout(6000),
      });
      if (!r.ok) continue;
      const data = await r.json() as any;
      const media = data?.data?.Media;
      const poster = (media?.id ? awPoster(Number(media.id)) : null) || media?.coverImage?.extraLarge || media?.coverImage?.large || null;
      if (poster) {
        _anilistPosterCache.set(base, poster);
        return poster;
      }
    } catch {}
  }
  _anilistPosterCache.set(base, null);
  return null;
}

async function posterByTitle(title: string): Promise<string | null> {
  const tmdb = await tmdbPosterByTitle(title);
  if (tmdb) return tmdb;
  const tvmaze = await tvMazePosterByTitle(title);
  if (tvmaze) return tvmaze;
  return await anilistPosterByTitle(title);
}

function awFallbackPoster(title: string): string {
  const label = awBaseTitle(title).slice(0, 42) || "Anime NOVA";
  return `https://placehold.co/300x450/111827/FFFFFF/png?text=${encodeURIComponent(label)}`;
}

/** جلب البوسترات للعناوين التي لا تحمل anilist_id (تشغيل متوازٍ بحد أقصى 8). */
async function fetchFallbackPosters(titles: string[]): Promise<Map<string, string | null>> {
  const unique = [...new Set(titles.map(awBaseTitle))];
  const results = new Map<string, string | null>();
  // معالجة دُفعات بمعدل 8 طلبات متوازية
  for (let i = 0; i < unique.length; i += 8) {
    const batch = unique.slice(i, i + 8);
    const posters = await Promise.all(batch.map(t => posterByTitle(t)));
    batch.forEach((t, idx) => results.set(t, posters[idx]));
    if (i + 8 < unique.length) await new Promise(r => setTimeout(r, 250)); // تأخير بسيط
  }
  return results;
}

function readAwDiskCatalog(): AwCatalogItem[] | null {
  try {
    if (!_dcExists(AW_DISK_CACHE_FILE)) return null;
    const cached = JSON.parse(_dcRead(AW_DISK_CACHE_FILE, "utf8"));
    if (!cached?._ts || Date.now() - Number(cached._ts) > AW_DISK_TTL) return null;
    if (!Array.isArray(cached.data)) return null;
    return cached.data.filter((item: any) =>
      item && typeof item.key === "string" &&
      typeof item.title === "string" &&
      Array.isArray(item.seasons) &&
      typeof item.dubbedConfirmed === "boolean",
    ) as AwCatalogItem[];
  } catch {
    return null;
  }
}

function writeAwDiskCatalog(catalog: AwCatalogItem[]): void {
  try {
    _dcWrite(AW_DISK_CACHE_FILE, JSON.stringify({ data: catalog, _ts: Date.now() }), "utf8");
  } catch {
    // Disk cache is an optimization; a read-only cache directory must not
    // prevent the live Supabase catalog from being served.
  }
}

function hydrateAwPostersInBackground(
  catalog: AwCatalogItem[],
  titles: string[],
): void {
  if (!titles.length || _awPosterHydrationPromise) return;
  _awPosterHydrationPromise = (async () => {
    logger.info({ count: titles.length }, "[aw-dubbed] background poster hydration started");
    const posterMap = await fetchFallbackPosters(titles);
    for (const item of catalog) {
      const poster = posterMap.get(awBaseTitle(item.title));
      if (poster) item.poster = poster;
    }
    if (_awCatalog === catalog) writeAwDiskCatalog(catalog);
    logger.info({ count: titles.length }, "[aw-dubbed] background poster hydration finished");
  })().catch(err => {
    logger.warn({ err }, "[aw-dubbed] background poster hydration failed");
  }).finally(() => {
    _awPosterHydrationPromise = null;
  });
}

/** جلب كل السلاسل من جدول dubbed_anim_links (الجديد) */
async function fetchDalCatalog(
  sbUrl: string, sbKey: string
): Promise<Map<string, { series_name: string; series_name_ar: string | null; dubbedConfirmed: boolean }>> {
  const result = new Map<string, { series_name: string; series_name_ar: string | null; dubbedConfirmed: boolean }>();
  let offset = 0;
  const batch = 1000;
  while (true) {
    try {
      const url = `${sbUrl}/rest/v1/dubbed_anim_links?select=series_id,series_name,series_name_ar&ep_number=not.is.null&link=not.is.null&link=neq.&order=series_id.asc&limit=${batch}&offset=${offset}`;
      const r = await fetch(url, {
        headers: { apikey: sbKey, Authorization: `Bearer ${sbKey}` },
        signal: AbortSignal.timeout(15000),
      });
      if (!r.ok) break;
      const rows: { series_id: string; series_name: string; series_name_ar: string | null }[] = await r.json();
      if (!Array.isArray(rows) || !rows.length) break;
      for (const row of rows) {
        if (row.series_id && !result.has(row.series_id)) {
          result.set(row.series_id, {
            series_name: row.series_name || row.series_id,
            series_name_ar: row.series_name_ar || null,
            dubbedConfirmed: true,
          });
        }
      }
      if (rows.length < batch) break;
      offset += batch;
    } catch { break; }
  }
  return result;
}


function extractAwYear(title: string, anilistId: number | null): number {
  const titleYear = title.match(/\b(19\d{2}|20\d{2})\b/)?.[1];
  if (titleYear) {
    const y = parseInt(titleYear, 10);
    if (y >= 1950 && y <= 2030) return y;
  }
  const KNOWN_YEARS: Record<string, number> = {
    "invincible": 2024,
    "arcane": 2024,
    "10 lives": 2024,
    "200% wolf": 2024,
    "7 bears": 2024,
    "castlevania: nocturne": 2023,
    "fionna & cake": 2023,
    "spider-man: across the spider-verse": 2023,
    "spider-man: into the spider-verse": 2018,
    "puss in boots: the last wish": 2022,
    "bad guys": 2022,
    "super mario bros": 2023,
    "wish": 2023,
    "elemental": 2023,
    "inside out 2": 2024,
    "moana 2": 2024,
    "despicable me 4": 2024,
    "kung fu panda 4": 2024,
    "the wild robot": 2024,
    "transformers one": 2024,
    "lion king": 1994,
    "aladdin": 1992,
    "beauty and the beast": 1991,
    "mulan": 1998,
    "tarzan": 1999,
    "hercules": 1997,
    "adventure time": 2010,
    "regular show": 2010,
    "gravity falls": 2012,
    "ben 10": 2005,
    "avatar": 2005,
    "samurai jack": 2001,
  };
  const lower = title.toLowerCase();
  for (const [key, yr] of Object.entries(KNOWN_YEARS)) {
    if (lower.includes(key)) return yr;
  }
  if (anilistId && anilistId > 0) {
    if (anilistId >= 160000) return 2024;
    if (anilistId >= 140000) return 2022;
    if (anilistId >= 110000) return 2020;
    if (anilistId >= 90000) return 2017;
    if (anilistId >= 20000) return 2014;
    return 2010;
  }
  return 2020;
}

async function buildAwCatalog(): Promise<AwCatalogItem[]> {
  const SB_URL = (process.env.SUPABASE_URL || "").replace(/\/$/, "");
  const SB_KEY = process.env.SUPABASE_SERVICE_KEY || process.env.SUPABASE_SERVICE_ROLE_KEY || "";
  if (!SB_URL || !SB_KEY) return [];

  const sources = new Map<string, AwSourceTitle>();
  const batchSize = 1000;

  // ── جلب aw_links + dubbed_anim_links بالتوازي ──
  const [, dalMap] = await Promise.all([
    // aw_links: احتفظ بعنوان واحد موثوق لكل anime_id، مع تفضيل الاسم الذي
    // يحتوي على رقم موسم إذا كان المصدر يعيد أكثر من نسخة للمعرف نفسه.
    (async () => {
      let offset = 0;
      while (true) {
        try {
          const url = `${SB_URL}/rest/v1/aw_links?select=anime_id,anime_name,anilist_id,content_type&or=(content_type.eq.dubbed,anime_id.ilike.*Invincible*,anime_name.ilike.*Invincible*,anime_id.ilike.*Castlevania*,anime_name.ilike.*Castlevania*)&ep_number=not.is.null&link=not.is.null&link=neq.&order=anime_id.asc&limit=${batchSize}&offset=${offset}`;
          const r = await fetch(url, {
            headers: { apikey: SB_KEY, Authorization: `Bearer ${SB_KEY}` },
            signal: AbortSignal.timeout(15000),
          });
          if (!r.ok) break;
          const rows: {
            anime_id: string;
            anime_name: string;
            anilist_id: number | null;
            content_type?: string | null;
          }[] = await r.json();
          if (!Array.isArray(rows) || !rows.length) break;
          for (const row of rows) {
            const animeId = String(row.anime_id ?? "");
            if (!animeId.trim()) continue;
            // The legacy OR clause is intentionally broad for PostgREST, but
            // only exact legacy series may use the old anime content type.
            if (row.content_type !== "dubbed" && !isLegacyAnimationSeries(animeId)) continue;
            const title = String(row.anime_name || animeId);
            const previous = sources.get(animeId);
            if (!previous || awTitleScore(title) > awTitleScore(previous.title)) {
              sources.set(animeId, {
                animeId,
                title,
                titleAr: previous?.titleAr ?? null,
                anilistId: row.anilist_id == null ? (previous?.anilistId ?? null) : Number(row.anilist_id),
                dubbedConfirmed: row.content_type === "dubbed",
              });
            } else if (previous.anilistId == null && row.anilist_id != null) {
              previous.anilistId = Number(row.anilist_id);
            }
            if (previous && row.content_type === "dubbed") previous.dubbedConfirmed = true;
          }
          if (rows.length < batchSize) break;
          offset += batchSize;
        } catch { break; }
      }
    })(),
    // dubbed_anim_links: يُعاد كـ Map
    fetchDalCatalog(SB_URL, SB_KEY),
  ]);

  // دمج: أضف سلاسل dubbed_anim_links غير الموجودة في aw_links، أو استكمل
  // العنوان العربي للمعرف الموجود في الجدول الأول.
  for (const [sid, info] of dalMap) {
    const existing = sources.get(sid);
    if (!existing) {
      sources.set(sid, {
        animeId: sid,
        title: info.series_name || sid,
        titleAr: info.series_name_ar || null,
        anilistId: null,
        dubbedConfirmed: info.dubbedConfirmed,
      });
    } else if (!existing.titleAr && info.series_name_ar) {
      existing.titleAr = info.series_name_ar;
    }
    if (existing && info.dubbedConfirmed) existing.dubbedConfirmed = true;
  }

  // اجمع نسخ العمل الواحد (مثل Invincible Season 1/2/3) في بطاقة واحدة.
  // لا نعتمد على عنوان ثابت أو استثناء لعمل بعينه؛ كل ما يهم هو إزالة لاحقة
  // الموسم/الجزء من الاسم وبناء season لكل anime_id فعلي.
  const groups = new Map<string, {
    key: string;
    title: string;
    titleAr: string | null;
    seasons: { label: string; animeId: string; dubbedConfirmed: boolean }[];
    anilistIds: number[];
  }>();

  for (const source of sources.values()) {
    const baseTitle = awBaseTitle(source.title) || source.title || source.animeId;
    const groupKey = awGroupKey(baseTitle) || `id:${source.animeId}`;
    let group = groups.get(groupKey);
    if (!group) {
      group = {
        key: source.animeId,
        title: baseTitle,
        titleAr: source.titleAr,
        seasons: [],
        anilistIds: [],
      };
      groups.set(groupKey, group);
    } else if (!group.titleAr && source.titleAr) {
      group.titleAr = source.titleAr;
    }

    const label = awSeasonLabel(source.title, source.animeId);
    const existingLabelSeason = label !== "الحلقات"
      ? group.seasons.find(season => season.label === label)
      : group.seasons.find(season =>
          season.label === "الحلقات" &&
          season.animeId.replace(/\s+Dub$/i, "").trim().toLowerCase() ===
            source.animeId.replace(/\s+Dub$/i, "").trim().toLowerCase()
        );
    if (existingLabelSeason) {
      if (source.dubbedConfirmed) existingLabelSeason.dubbedConfirmed = true;
      // Prefer the canonical non-"Dub" animeId as primary key when both exist
      if (/\s+Dub$/i.test(existingLabelSeason.animeId) && !/\s+Dub$/i.test(source.animeId)) {
        existingLabelSeason.animeId = source.animeId;
      }
    } else if (!group.seasons.some(season => season.animeId === source.animeId)) {
      group.seasons.push({ label, animeId: source.animeId, dubbedConfirmed: source.dubbedConfirmed });
    }
    if (source.anilistId && Number.isFinite(source.anilistId) && !group.anilistIds.includes(source.anilistId)) {
      group.anilistIds.push(source.anilistId);
    }
  }

  // A base AnimeWitcher ID such as "Invincible" represents season 1 when
  // the same work also has numbered seasons. Do not relabel standalone
  // titles that simply have multiple alternate IDs.
  for (const group of groups.values()) {
    if (
      group.seasons.length > 1 &&
      group.seasons.some(season => season.label !== "الحلقات")
    ) {
      for (const season of group.seasons) {
        if (season.label === "الحلقات") season.label = "Season 1";
      }
      const deduped: typeof group.seasons = [];
      for (const season of group.seasons) {
        const prev = deduped.find(s => s.label === season.label);
        if (prev) {
          if (season.dubbedConfirmed) prev.dubbedConfirmed = true;
          if (/\s+Dub$/i.test(prev.animeId) && !/\s+Dub$/i.test(season.animeId)) {
            prev.animeId = season.animeId;
          }
        } else {
          deduped.push(season);
        }
      }
      group.seasons = deduped;
    }
  }

  const items: AwCatalogItem[] = [...groups.values()].map(group => {
    group.seasons.sort((a, b) => {
      const an = Number(a.label.match(/\d+/)?.[0] || 0);
      const bn = Number(b.label.match(/\d+/)?.[0] || 0);
      return an - bn || a.label.localeCompare(b.label, "en-US");
    });
    return {
      key: group.key,
      title: group.title,
      titleAr: group.titleAr,
      poster: awPoster(group.anilistIds[0]),
      seasons: group.seasons,
      dubbedConfirmed: group.seasons.some(season => season.dubbedConfirmed),
      year: extractAwYear(group.title, group.anilistIds[0] ?? null),
    };
  });

  // لا تنتظر TMDB/TVMaze هنا؛ أعد الكتالوج فوراً مع fallback poster، ثم
  // حدّث البوسترات الحقيقية في الخلفية. هذا يمنع أول طلب بعد restart من
  // الانتظار لعشرات طلبات الصور الخارجية.
  const needPosters = items.filter(item => !item.poster).map(item => item.title);
  for (const item of items) {
    if (!item.poster) item.poster = awFallbackPoster(item.title);
  }
  items.sort((a, b) => (b.year || 2020) - (a.year || 2020) || a.title.localeCompare(b.title, "en-US"));

  writeAwDiskCatalog(items);
  hydrateAwPostersInBackground(items, needPosters);
  logger.info({ count: items.length }, "[aw-dubbed] catalog built");
  return items;
}

function refreshAwCatalog(): Promise<AwCatalogItem[]> {
  if (_awLoadPromise) return _awLoadPromise;
  _awLoadPromise = buildAwCatalog().then(c => {
    _awCatalog = c;
    _awCatalogTs = Date.now();
    _awLoadPromise = null;
    return c;
  }).catch(() => { _awLoadPromise = null; return _awCatalog || []; });
  return _awLoadPromise;
}

async function getAwCatalog(): Promise<AwCatalogItem[]> {
  if (_awCatalog && Date.now() - _awCatalogTs < AW_TTL) return _awCatalog;

  // Survive PM2 restarts: serve the last complete catalog immediately, while
  // refreshAwCatalog() updates it from Supabase in the background.
  const diskCatalog = readAwDiskCatalog();
  if (diskCatalog?.length) {
    _awCatalog = diskCatalog;
    _awCatalogTs = Date.now();
    void refreshAwCatalog();
    return diskCatalog;
  }
  return refreshAwCatalog();
}

// دفء الكاش عند بدء السيرفر
setTimeout(() => { getAwCatalog().catch(() => {}); }, 6000);

const AW_PAGE_SIZE = 36;

function awSearchResults(catalog: AwCatalogItem[], query: string): AwCatalogItem[] {
  const q = query.toLocaleLowerCase("en-US");
  const results: AwCatalogItem[] = [];

  for (const item of catalog) {
    const matchingSeasons = item.seasons.filter(season => {
      const haystack = [
        item.title,
        item.titleAr || "",
        season.label,
      ].join(" ").toLocaleLowerCase("en-US");
      return haystack.includes(q);
    });
    if (!matchingSeasons.length) continue;

    // عند البحث، أعد كل موسم كسجل مستقل حتى لا تظهر بطاقة واحدة باسم عام
    // بينما يضطر المستخدم لاكتشاف الأجزاء من صفحة التفاصيل.
    // Keep an explicit season visible even when the work has only one
    // verified dubbed season (for example, Invincible Season 4).
    if (item.seasons.length > 1 || matchingSeasons.some(season => season.label !== "الحلقات")) {
      for (const season of matchingSeasons) {
        results.push({
          ...item,
          key: `${item.key}::${season.animeId}`,
          title: `${item.title} — ${season.label}`,
          titleAr: item.titleAr ? `${item.titleAr} — ${season.label}` : null,
          seasons: [season],
        });
      }
    } else {
      results.push(item);
    }
  }
  return results;
}

// ── GET /api/aw-dubbed/catalog?page=N&q=search ──
router.get("/aw-dubbed/catalog", async (req, res) => {
  const page = Math.max(1, parseInt(req.query.page as string || "1", 10) || 1);
  const q = (req.query.q as string || "").trim();
  const order = req.query.order === "oldest" ? "oldest" : req.query.order === "alpha" ? "alpha" : "newest";
  try {
    let catalog = await getAwCatalog();
    if (order === "oldest") {
      catalog = [...catalog].sort((a, b) => (a.year || 2020) - (b.year || 2020) || a.title.localeCompare(b.title, "en-US"));
    } else if (order === "alpha") {
      catalog = [...catalog].sort((a, b) => a.title.localeCompare(b.title, "en-US"));
    } else {
      catalog = [...catalog].sort((a, b) => (b.year || 2020) - (a.year || 2020) || a.title.localeCompare(b.title, "en-US"));
    }
    if (q.length >= 2) {
      catalog = awSearchResults(catalog, q);
      // A cold process may return the persistent catalog before its background
      // poster hydration finishes. Resolve only the small search result here
      // so a searched title never spends its first render on a placeholder.
      const posterBackfill = catalog
        .filter(item => item.poster?.includes("placehold.co"))
        .slice(0, 8);
      if (posterBackfill.length) {
        await Promise.all(posterBackfill.map(async item => {
          const poster = await posterByTitle(item.title);
          if (poster) item.poster = poster;
        }));
      }
    }
    const tgAwItems = page === 1 ? await getTelegramAwDubbedCatalogItems(q) : [];
    const pagedBase = catalog
      .slice((page - 1) * AW_PAGE_SIZE, page * AW_PAGE_SIZE)
      .map(item => ({
        ...item,
        poster: normalizeAwPosterUrl(item.poster),
      }));
    const results = tgAwItems.length > 0 ? [...tgAwItems, ...pagedBase] : pagedBase;
    const total = catalog.length + (page === 1 ? tgAwItems.length : 0);
    const totalPages = Math.max(1, Math.ceil(total / AW_PAGE_SIZE));
    res.setHeader("Cache-Control", "public, max-age=300");
    res.json({ results, page, totalPages, total });
  } catch {
    res.status(502).json({ error: "failed to load catalog" });
  }
});

function expandAwSeriesVariants(series: string): string[] {
  const variants = new Set<string>([series]);
  const noDub = series.replace(/\s+Dub$/i, "");
  if (noDub) {
    variants.add(noDub);
    variants.add(`${noDub} Dub`);
  }
  const mSeason = noDub.match(/^(.*?)\s+Season\s+(\d+)$/i);
  if (mSeason) {
    const base = mSeason[1].trim();
    const sNum = mSeason[2];
    variants.add(`${base} ${sNum}`);
    if (sNum === "1") {
      variants.add(base);
      variants.add(`${base} Dub`);
    }
  } else {
    const mTrailing = noDub.match(/^(.*[A-Za-z]{3,})\s+([1-9]|1[0-5])$/);
    if (mTrailing) {
      const base = mTrailing[1].trim();
      const sNum = mTrailing[2];
      variants.add(`${base} Season ${sNum}`);
      variants.add(`${base} Season ${sNum} Dub`);
      if (sNum === "1") {
        variants.add(base);
        variants.add(`${base} Dub`);
      }
    } else {
      variants.add(`${noDub} Season 1`);
      variants.add(`${noDub} Season 1 Dub`);
    }
  }
  return [...variants].filter(v => v.trim().length > 0);
}

// ── GET /api/aw-dubbed/episodes?series=anime_id ──
router.get("/aw-dubbed/episodes", async (req, res) => {
  // Do not trim the key: legacy AnimeWitcher IDs can intentionally begin or
  // end with whitespace, and Supabase stores that value verbatim.
  const series = String(req.query.series || "");
  if (!series.trim()) { res.json({ episodes: [] }); return; }
  if (series.startsWith("tg://aw/")) {
    const order = req.query.order === "asc" ? "asc" : "desc";
    const episodes = await getTelegramAwDubbedEpisodes(series, order);
    res.setHeader("Cache-Control", "public, max-age=60");
    res.json({ episodes });
    return;
  }

  const SB_URL = (process.env.SUPABASE_URL || "").replace(/\/$/, "");
  const SB_KEY = process.env.SUPABASE_SERVICE_KEY || process.env.SUPABASE_SERVICE_ROLE_KEY || "";
  if (!SB_URL || !SB_KEY) { res.json({ episodes: [] }); return; }

  try {
    const variants = expandAwSeriesVariants(series);
    const inClause = variants.map(v => `"${v.replace(/"/g, '\"')}"`).join(",");
    // جلب من الجدولين بالتوازي لكل الصيغ المتطابقة للموسم (مثل Season 1 و Season 1 Dub)
    const [dalR, awR] = await Promise.all([
      fetch(`${SB_URL}/rest/v1/dubbed_anim_links?select=ep_number&series_id=in.(${encodeURIComponent(inClause)})&order=ep_number.asc&limit=3000`, {
        headers: { apikey: SB_KEY, Authorization: `Bearer ${SB_KEY}` },
        signal: AbortSignal.timeout(10000),
      }).then(r => r.ok ? r.json() as Promise<{ ep_number: number }[]> : [] as { ep_number: number }[]).catch(() => [] as { ep_number: number }[]),
      fetch(`${SB_URL}/rest/v1/aw_links?select=ep_number&anime_id=in.(${encodeURIComponent(inClause)})${isLegacyAnimationSeries(series) ? "" : "&content_type=eq.dubbed"}&order=ep_number.asc&limit=3000`, {
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
    const order = req.query.order === "asc" ? "asc" : "desc";
    episodes.sort((a, b) => order === "asc" ? a.number - b.number : b.number - a.number);
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
  if (series.startsWith("tg://aw/")) {
    const allSources = await getTelegramAwDubbedWatchSrc(series, ep);
    if (!allSources.length) {
      res.status(404).json({ error: "لا توجد مصادر متاحة لهذه الحلقة حالياً" });
      return;
    }
    res.setHeader("Cache-Control", "no-cache");
    res.json({ allSources, rawUrl: allSources[0]?.rawUrl ?? null, hlsUrl: null });
    return;
  }
  const trace = readPlaybackTrace(req.query.trace);
  const sourceStartedAt = Date.now();
  if (trace) {
    console.info(`[playback-trace] id=${trace} route=aw-source-lookup stage=request provider=animewitcher`);
    traceDubbedResponse(res, trace, "aw-source-lookup", "animewitcher", sourceStartedAt);
  }

  const SB_URL = (process.env.SUPABASE_URL || "").replace(/\/$/, "");
  const SB_KEY = process.env.SUPABASE_SERVICE_KEY || process.env.SUPABASE_SERVICE_ROLE_KEY || "";
  if (!SB_URL || !SB_KEY) { res.status(502).json({ error: "not configured" }); return; }

  try {
    // Supabase is the fast cache; Firestore is the source of truth and may
    // contain rows/qualities missing from either Supabase table.
    // ملاحظة: order=quality.desc يفرز نصياً (720p > 480p > 1080p) — نفرز بعدها رقمياً في الكود
    const variants = expandAwSeriesVariants(series);
    const inClause = variants.map(v => `"${v.replace(/"/g, '\"')}"`).join(",");
    const [dalRows, awRows, firestoreRows] = await Promise.all([
      fetch(`${SB_URL}/rest/v1/dubbed_anim_links?select=server,quality,link&series_id=in.(${encodeURIComponent(inClause)})&ep_number=eq.${ep}&limit=50`, {
        headers: { apikey: SB_KEY, Authorization: `Bearer ${SB_KEY}` },
        signal: AbortSignal.timeout(10000),
      }).then(r => r.ok ? r.json() as Promise<{ server: string; quality: string; link: string }[]> : [] as { server: string; quality: string; link: string }[]).catch(() => [] as { server: string; quality: string; link: string }[]),
      fetch(`${SB_URL}/rest/v1/aw_links?select=server,quality,link&anime_id=in.(${encodeURIComponent(inClause)})&ep_number=eq.${ep}${isLegacyAnimationSeries(series) ? "" : "&content_type=eq.dubbed"}&limit=50`, {
        headers: { apikey: SB_KEY, Authorization: `Bearer ${SB_KEY}` },
        signal: AbortSignal.timeout(10000),
      }).then(r => r.ok ? r.json() as Promise<{ server: string; quality: string; link: string }[]> : [] as { server: string; quality: string; link: string }[]).catch(() => [] as { server: string; quality: string; link: string }[]),
      fetchAwFirestoreServers(series, ep, 4500).catch(() => [] as { server: string; quality: string; link: string }[]),
    ]);

    // وزن الجودة الرقمي للفرز الصحيح
    function qualityWeight(q: string): number {
      const n = parseInt(q.replace(/\D/g, "") || "0", 10);
      return n; // 1080 > 720 > 480 > 360
    }

    // Merge Supabase and Firestore, but only collapse the same server, quality,
    // and link. A single server URL can be recorded under more than one quality.
    const rows = mergeAwSourceRows(
      Array.isArray(dalRows) ? dalRows : [],
      Array.isArray(awRows) ? awRows : [],
      firestoreRows,
    );
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
        if (id) return wrapProxy(`https://pixeldrain.com/api/file/${id}`);
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
  const trace = readPlaybackTrace(req.query.trace);
  const streamStartedAt = Date.now();
  if (trace) {
    console.info(`[playback-trace] id=${trace} route=aw-mediafire-stream stage=request host=mediafire.com`);
    traceDubbedResponse(res, trace, "aw-mediafire-stream", "mediafire.com", streamStartedAt);
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
    if (trace) {
      let cdnHost = "invalid";
      try { cdnHost = new URL(cdnUrl).hostname; } catch {}
      console.info(
        `[playback-trace] id=${trace} route=aw-mediafire-stream stage=upstream_headers host=${cdnHost} status=${r.status} elapsed_ms=${Date.now() - streamStartedAt}`,
      );
    }

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


const ANIMEZID_POSTER_CACHE_DIR = "/opt/nova-cache/animezid-posters";
try { fs.mkdirSync(ANIMEZID_POSTER_CACHE_DIR, { recursive: true }); } catch {}

function proxyAnimeZidPosterUrl(raw: unknown): string {
  const value = typeof raw === "string" ? raw.trim() : "";
  if (!value) return "";
  if (/^https?:\/\/(?:[a-z0-9-]+\.)*animezid\.org\//i.test(value)) {
    return `https://animenovaa.duckdns.org/api/dubbed/animezid/poster?url=${encodeURIComponent(value)}`;
  }
  return value;
}

router.get("/dubbed/animezid/poster", async (req, res) => {
  const rawUrl = String(req.query.url || "").trim();
  if (!rawUrl || !/^https?:\/\/(?:[a-z0-9-]+\.)*animezid\.org\//i.test(rawUrl)) {
    res.status(400).end();
    return;
  }
  const hash = crypto.createHash("sha1").update(rawUrl).digest("hex");
  const extMatch = rawUrl.match(/\.(webp|jpe?g|png)(?:[?#]|$)/i);
  const ext = (extMatch ? extMatch[1] : "jpg").toLowerCase();
  const fallbackContentType = ext === "png" ? "image/png" : ext === "webp" ? "image/webp" : "image/jpeg";
  const cacheFile = path.join(ANIMEZID_POSTER_CACHE_DIR, hash + "." + ext);
  try {
    if (fs.existsSync(cacheFile)) {
      const buf = fs.readFileSync(cacheFile);
      if (buf.length > 200) {
        res.setHeader("Content-Type", fallbackContentType);
        res.setHeader("Cache-Control", "public, max-age=2592000, immutable");
        res.send(buf);
        return;
      }
    }
    const r = await fetch(rawUrl, {
      headers: {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36",
        Referer: "https://animezid.org/",
        Accept: "image/avif,image/webp,image/png,image/jpeg,image/*,*/*;q=0.8",
      },
      signal: AbortSignal.timeout(15000),
    });
    if (!r.ok) {
      res.status(502).end();
      return;
    }
    const upstreamType = (r.headers.get("content-type") || "").toLowerCase();
    const buf = Buffer.from(await r.arrayBuffer());
    const headStr = buf.subarray(0, 64).toString("utf8").trim().toLowerCase();
    const looksHtml = headStr.startsWith("<!doctype") || headStr.startsWith("<html") || upstreamType.includes("text/html");
    if (buf.length <= 200 || looksHtml) {
      res.status(502).end();
      return;
    }
    try { fs.writeFileSync(cacheFile, buf); } catch {}
    res.setHeader("Content-Type", upstreamType.startsWith("image/") ? upstreamType : fallbackContentType);
    res.setHeader("Cache-Control", "public, max-age=2592000, immutable");
    res.send(buf);
  } catch {
    res.status(502).end();
  }
});

// ── AnimeZid (أنمي مدبلج) routes ──
router.get("/dubbed/animezid/catalog", async (req, res) => {
  const page = Math.max(1, Number.parseInt(String(req.query.page || "1"), 10) || 1);
  const sort = String(req.query.sort || "newest").trim();
  const q = String(req.query.q || "").trim();
  try {
    const data: any = await getAnimeZidCatalog({ page, sort, q });
    const baseResults = data && Array.isArray(data.results)
      ? data.results.map((item: any) => ({
          ...item,
          poster: proxyAnimeZidPosterUrl(item?.poster),
        }))
      : null;
    let mergedAz = baseResults;
    if (page === 1 && Array.isArray(baseResults)) {
      const tgAz = await getTelegramAnimeZidCatalogItems(q);
      if (tgAz.length > 0) mergedAz = [...tgAz, ...baseResults];
    }
    const proxied = mergedAz ? { ...data, results: mergedAz } : data;
    res.setHeader("Cache-Control", "public, max-age=300");
    res.json(proxied);
  } catch (error) {
    logger.warn({ err: error }, "dubbed: AnimeZid catalog unavailable");
    res.status(502).json({ error: "تعذر تحميل قائمة الأنمي المدبلج" });
  }
});

router.get("/dubbed/animezid/detail", async (req, res) => {
  const slug = String(req.query.slug || req.query.id || "").trim();
  const season = Number.parseInt(String(req.query.season || "0"), 10) || undefined;
  if (!slug) {
    res.status(400).json({ error: "slug is required" });
    return;
  }
  if (/^tg-az-\d+$/i.test(slug)) {
    const tgDetail = await getTelegramAnimeZidDetail(slug, season);
    if (!tgDetail) { res.status(404).json({ error: "العمل غير موجود" }); return; }
    res.setHeader("Cache-Control", "no-store");
    res.json(tgDetail);
    return;
  }
  try {
    const detail: any = await getAnimeZidDetail(slug, season);
    const proxiedDetail = detail && typeof detail === "object"
      ? {
          ...detail,
          poster: proxyAnimeZidPosterUrl(detail.poster),
        }
      : detail;
    res.setHeader("Cache-Control", "public, max-age=900");
    res.json(proxiedDetail);
  } catch (error: any) {
    logger.warn({ err: error, slug }, "dubbed: AnimeZid detail unavailable");
    res.status(502).json({ error: error?.message || "تعذر تحميل تفاصيل الأنمي المدبلج" });
  }
});

router.get("/dubbed/animezid/servers", async (req, res) => {
  const vid = String(req.query.vid || "").trim();
  if (!vid) {
    res.status(400).json({ error: "vid is required" });
    return;
  }
  const tgAzSrvM = vid.match(/^tg-ep-(\d+)$/i);
  if (tgAzSrvM) {
    const epRow = await getTelegramEpisodeById(Number.parseInt(tgAzSrvM[1], 10));
    if (!epRow) { res.status(404).json({ error: "الحلقة غير موجودة" }); return; }
    res.setHeader("Cache-Control", "no-store");
    res.json({
      vid,
      watchSources: [{
        id: "nova_tg",
        provider: "NOVA VIP",
        type: "direct_mp4",
        label: `NOVA VIP · ${epRow.quality}`,
        quality: epRow.quality,
        supportsNative: true,
        priority: 120,
      }],
    });
    return;
  }
  try {
    const data = await getAnimeZidServers(vid);
    res.setHeader("Cache-Control", "private, max-age=180");
    res.json(data);
  } catch (error: any) {
    logger.warn({ err: error, vid }, "dubbed: AnimeZid servers unavailable");
    res.status(502).json({ error: error?.message || "تعذر جلب سيرفرات الحلقة" });
  }
});

router.get("/dubbed/animezid/watch-src", async (req, res) => {
  const vid = String(req.query.vid || "").trim();
  const sourceId = String(req.query.sourceId || "").trim() || undefined;
  const trace = readPlaybackTrace(req.query.trace);
  const startedAt = Date.now();
  if (!vid) {
    res.status(400).json({ error: "vid is required" });
    return;
  }
  const tgAzWatchM = vid.match(/^tg-ep-(\d+)$/i);
  if (tgAzWatchM) {
    const epRow = await getTelegramEpisodeById(Number.parseInt(tgAzWatchM[1], 10));
    if (!epRow) { res.status(404).json({ error: "الحلقة غير موجودة" }); return; }
    const signedPath = buildSignedStreamPath(epRow.id);
    const signedUrl = buildSignedStreamUrl(epRow.id);
    const subtitleUrl = epRow.subtitle_file_id ? buildSubtitleUrl(epRow.id) : undefined;
    res.setHeader("Cache-Control", "no-store");
    res.json({ hlsUrl: signedPath, rawUrl: signedUrl, type: "mp4", quality: epRow.quality, ...(subtitleUrl ? { subtitleUrl } : {}) });
    return;
  }
  traceDubbedResponse(res, trace, "animezid-watch-src", "animezid.org", startedAt);
  try {
    const resolved = await resolveAnimeZidWatchSrc(vid, sourceId);
    res.setHeader("Cache-Control", "no-store");
    res.json(resolved);
  } catch (error: any) {
    logger.warn({ err: error, vid, sourceId }, "dubbed: AnimeZid stream unavailable");
    res.status(502).json({ error: error?.message || "تعذر استخراج رابط التشغيل" });
  }
});


// ── GET /api/dubbed/latest-episodes ────────────────────────────────────────
// يجمع أحدث الحلقات والإصدارات من:
//   1. قسم الأنمي المدبلج (animezid)
//   2. قسم الأنيميشن المدبلج (aw-dubbed / dubbed_anim_links)
//   3. قسم كرتون مدبلج 2 (sd2 / stardimaV2)
type DubbedLatestItem = {
  id: string;
  dubbedKind: "dubbed-anime" | "aw-dubbed" | "sd2";
  sectionLabel: string;
  source: string;
  name: string;
  titleAr: string;
  english: string;
  episode: number;
  cover: string;
  year: string;
  isMovie: boolean;
  updatedAt: string | null;
  dubbedSlug?: string;
  awKey?: string;
  awSeries?: string;
  awSeasons?: string;
  sd2Slug?: string;
  sd2Id?: number;
  languageLabel?: string;
};

let _dubbedLatestCache: { expiresAt: number; items: DubbedLatestItem[] } | null = null;
let _dubbedLatestInFlight: Promise<DubbedLatestItem[]> | null = null;

async function fetchAwDubbedLatestRows(): Promise<DubbedLatestItem[]> {
  const SB_URL = (process.env.SUPABASE_URL || "").replace(/\/$/, "");
  const SB_KEY = process.env.SUPABASE_SERVICE_KEY || process.env.SUPABASE_SERVICE_ROLE_KEY || "";
  if (!SB_URL || !SB_KEY) return [];
  try {
    const [rowsRes, catalog] = await Promise.all([
      fetch(
        `${SB_URL}/rest/v1/dubbed_anim_links?select=series_id,series_name,series_name_ar,ep_number,imported_at&ep_number=not.is.null&link=not.is.null&link=neq.&order=imported_at.desc&limit=120`,
        {
          headers: { apikey: SB_KEY, Authorization: `Bearer ${SB_KEY}` },
          signal: AbortSignal.timeout(10_000),
        },
      ),
      getAwCatalog().catch(() => [] as any[]),
    ]);
    if (!rowsRes.ok) return [];
    const rows: any[] = await rowsRes.json().catch(() => []);
    if (!Array.isArray(rows) || !rows.length) return [];

    // Build quick lookup from series_id -> AwCatalog entry (poster, seasons, key, titleAr)
    const bySeriesId = new Map<string, any>();
    for (const cat of catalog) {
      if (cat?.key) bySeriesId.set(String(cat.key).toLowerCase(), cat);
      for (const s of Array.isArray(cat?.seasons) ? cat.seasons : []) {
        if (s?.animeId) bySeriesId.set(String(s.animeId).toLowerCase(), cat);
      }
    }

    // Keep latest episode per series (max 12 unique series)
    const seenSeries = new Set<string>();
    const out: DubbedLatestItem[] = [];
    for (const r of rows) {
      const sid = String(r?.series_id || "").trim();
      const epNum = Math.round(Number(r?.ep_number || 0));
      if (!sid || !Number.isFinite(epNum) || epNum <= 0) continue;
      const normSid = sid.toLowerCase();
      const cat = bySeriesId.get(normSid) || bySeriesId.get(normSid.replace(/\s+dub$/i, ""));
      const dedupKey = (cat?.key || sid).toLowerCase();
      if (seenSeries.has(dedupKey)) continue;
      seenSeries.add(dedupKey);

      const titleEn = String(cat?.title || r?.series_name || sid).trim();
      const titleAr = String(cat?.titleAr || r?.series_name_ar || titleEn).trim();
      const seasons = Array.isArray(cat?.seasons) && cat.seasons.length > 0
        ? cat.seasons
        : [{ label: "الحلقات", animeId: sid }];
      const cover = String(cat?.poster || "").trim();

      out.push({
        id: `aw-dubbed:${cat?.key || sid}:${epNum}`,
        dubbedKind: "aw-dubbed",
        sectionLabel: "أنيميشن مدبلج",
        source: "aw-dubbed",
        name: titleAr || titleEn,
        titleAr: titleAr || titleEn,
        english: titleEn,
        episode: epNum,
        cover,
        year: cat?.year ? String(cat.year) : "",
        isMovie: false,
        updatedAt: r?.imported_at ? String(r.imported_at) : null,
        awKey: String(cat?.key || sid),
        awSeries: sid,
        awSeasons: JSON.stringify(seasons),
      });
      if (out.length >= 12) break;
    }
    return out;
  } catch (err: any) {
    logger.warn({ err: err?.message || String(err) }, "dubbed: aw-dubbed latest fetch failed");
    return [];
  }
}

async function fetchAnimeZidLatestRows(): Promise<DubbedLatestItem[]> {
  try {
    const data: any = await getAnimeZidCatalog({ page: 1, sort: "newest" });
    const rows: any[] = Array.isArray(data?.results) ? data.results : [];
    const out: DubbedLatestItem[] = [];
    for (const r of rows.slice(0, 12)) {
      const slug = String(r?.slug || r?.id || "").trim();
      const title = String(r?.title || "").trim();
      if (!slug || !title) continue;
      const isMovie = String(r?.mediaType || "").toLowerCase() === "movie";
      const epCount = Math.max(1, Number(r?.episodesCount || 1) || 1);
      out.push({
        id: `dubbed-anime:${slug}:${epCount}`,
        dubbedKind: "dubbed-anime",
        sectionLabel: "أنمي مدبلج",
        source: "dubbed-anime",
        name: title,
        titleAr: title,
        english: title,
        episode: epCount,
        cover: proxyAnimeZidPosterUrl(r?.poster),
        year: String(r?.year || ""),
        isMovie,
        updatedAt: r?.updatedAt ? String(r.updatedAt) : null,
        dubbedSlug: slug,
      });
    }
    return out;
  } catch (err: any) {
    logger.warn({ err: err?.message || String(err) }, "dubbed: animezid latest fetch failed");
    return [];
  }
}

async function fetchSd2LatestRows(): Promise<DubbedLatestItem[]> {
  try {
    const catalog = await getStardimaV2Catalog(false);
    const newest = [...catalog]
      .sort((a, b) => (Number(b.id) || 0) - (Number(a.id) || 0))
      .slice(0, 12);

    // For top 6 series, try to read cached/live latest episode count without blocking long
    const enriched = await Promise.all(
      newest.map(async (item, idx): Promise<DubbedLatestItem | null> => {
        const slug = String(item.slug || "").trim();
        const title = String(item.title || "").trim();
        if (!slug || !title) return null;
        const isMovie = Boolean(item.isMovie || item.mediaType === "movie");
        let epNum = 1;
        if (!isMovie && idx < 6) {
          try {
            const detail = await Promise.race([
              getStardimaV2Episodes(slug, "series"),
              new Promise<null>((resolve) => setTimeout(() => resolve(null), 3500)),
            ]);
            if (detail?.seasons?.length) {
              const lastSeason = detail.seasons[detail.seasons.length - 1];
              const eps = Array.isArray(lastSeason?.episodes) ? lastSeason.episodes : [];
              if (eps.length > 0) {
                const maxEp = eps.reduce((m, e) => Math.max(m, Number(e.number) || 0), 0);
                epNum = maxEp > 0 ? maxEp : eps.length;
              }
            }
          } catch {}
        }
        return {
          id: `sd2:${slug}:${epNum}`,
          dubbedKind: "sd2",
          sectionLabel: "كرتون مدبلج 2",
          source: "sd2",
          name: title,
          titleAr: title,
          english: title,
          episode: epNum,
          cover: String(item.image || "").trim(),
          year: String(item.year || ""),
          isMovie,
          updatedAt: null,
          sd2Slug: slug,
          sd2Id: Number(item.id) || 0,
          languageLabel: String(item.languageLabel || item.providerLabel || ""),
        };
      }),
    );
    return enriched.filter((x): x is DubbedLatestItem => Boolean(x));
  } catch (err: any) {
    logger.warn({ err: err?.message || String(err) }, "dubbed: sd2 latest fetch failed");
    return [];
  }
}

const DUBBED_RECENT_WINDOW_MS = 14 * 24 * 60 * 60 * 1000; // 14 days strictly recent window
const DUBBED_RECENT_CONFIG_KEY = "dubbed_recent_releases_v1";

function isWithinRecentWindow(iso: string | null | undefined): boolean {
  if (!iso) return false;
  const ts = Date.parse(String(iso));
  if (!Number.isFinite(ts)) return false;
  const age = Date.now() - ts;
  return age >= -24 * 60 * 60 * 1000 && age <= DUBBED_RECENT_WINDOW_MS;
}

async function readRecordedDubbedReleases(): Promise<DubbedLatestItem[]> {
  const SB_URL = (process.env.SUPABASE_URL || "").replace(/\/$/, "");
  const SB_KEY = process.env.SUPABASE_SERVICE_KEY || process.env.SUPABASE_SERVICE_ROLE_KEY || "";
  if (!SB_URL || !SB_KEY) return [];
  try {
    const r = await fetch(
      `${SB_URL}/rest/v1/app_config?key=eq.${encodeURIComponent(DUBBED_RECENT_CONFIG_KEY)}&select=value`,
      {
        headers: { apikey: SB_KEY, Authorization: `Bearer ${SB_KEY}` },
        signal: AbortSignal.timeout(8_000),
      },
    );
    if (!r.ok) return [];
    const rows = (await r.json()) as any[];
    const rawVal = rows?.[0]?.value;
    if (!rawVal) return [];
    const parsed = JSON.parse(String(rawVal));
    if (!Array.isArray(parsed)) return [];
    return parsed.filter((it: any) => it && it.id && isWithinRecentWindow(it.updatedAt));
  } catch {
    return [];
  }
}

export async function recordDubbedRecentRelease(item: any): Promise<void> {
  const SB_URL = (process.env.SUPABASE_URL || "").replace(/\/$/, "");
  const SB_KEY = process.env.SUPABASE_SERVICE_KEY || process.env.SUPABASE_SERVICE_ROLE_KEY || "";
  if (!SB_URL || !SB_KEY || !item?.id) return;
  try {
    const existing = await readRecordedDubbedReleases();
    const stamped: DubbedLatestItem = {
      ...item,
      updatedAt: new Date().toISOString(),
    };
    const next = [
      stamped,
      ...existing.filter((x) => x.id !== stamped.id),
    ]
      .filter((x) => isWithinRecentWindow(x.updatedAt))
      .slice(0, 30);

    await fetch(`${SB_URL}/rest/v1/app_config`, {
      method: "POST",
      headers: {
        apikey: SB_KEY,
        Authorization: `Bearer ${SB_KEY}`,
        "Content-Type": "application/json",
        Prefer: "resolution=merge-duplicates",
      },
      body: JSON.stringify({ key: DUBBED_RECENT_CONFIG_KEY, value: JSON.stringify(next) }),
      signal: AbortSignal.timeout(8_000),
    });
    _dubbedRecentCache = null;
  } catch (err: any) {
    logger.warn({ err: err?.message || String(err) }, "dubbed: failed to record recent release");
  }
}

let _dubbedRecentCache: { expiresAt: number; items: DubbedLatestItem[] } | null = null;
let _dubbedRecentInFlight: Promise<DubbedLatestItem[]> | null = null;

async function buildDubbedLatestFeed(): Promise<DubbedLatestItem[]> {
  const [azItems, awItems, sd2Items] = await Promise.all([
    fetchAnimeZidLatestRows(),
    fetchAwDubbedLatestRows(),
    fetchSd2LatestRows(),
  ]);
  // Interleave fairly across all 3 dubbed sections (used by Telegram monitor mode=all)
  const merged: DubbedLatestItem[] = [];
  const maxLen = Math.max(azItems.length, awItems.length, sd2Items.length);
  for (let i = 0; i < maxLen; i++) {
    if (azItems[i]) merged.push(azItems[i]);
    if (awItems[i]) merged.push(awItems[i]);
    if (sd2Items[i]) merged.push(sd2Items[i]);
  }
  return merged;
}

async function buildStrictlyRecentDubbedFeed(): Promise<DubbedLatestItem[]> {
  // Combine ONLY genuinely recent releases (within last 14 days):
  // 1) Newly detected dubbed releases stamped by our 10-min monitor
  // 2) Any aw-dubbed / live rows whose real updatedAt/imported_at is within the last 14 days
  const [recorded, awItems] = await Promise.all([
    readRecordedDubbedReleases(),
    fetchAwDubbedLatestRows(),
  ]);
  const recentLive = awItems.filter((it) => isWithinRecentWindow(it.updatedAt));
  const combined = [...recorded, ...recentLive];
  combined.sort((a, b) => {
    const ta = a.updatedAt ? Date.parse(a.updatedAt) : 0;
    const tb = b.updatedAt ? Date.parse(b.updatedAt) : 0;
    return (Number.isFinite(tb) ? tb : 0) - (Number.isFinite(ta) ? ta : 0);
  });
  const seen = new Set<string>();
  const deduped: DubbedLatestItem[] = [];
  for (const item of combined) {
    if (!item.id || seen.has(item.id)) continue;
    seen.add(item.id);
    deduped.push(item);
  }
  return deduped.slice(0, 24);
}

router.get("/dubbed/latest-episodes", async (req, res) => {
  const force = req.query.refresh === "1";
  const allMode = req.query.mode === "all";
  try {
    if (allMode) {
      if (!force && _dubbedLatestCache && Date.now() < _dubbedLatestCache.expiresAt) {
        res.setHeader("Cache-Control", "no-store");
        res.json({ items: _dubbedLatestCache.items });
        return;
      }
      if (!_dubbedLatestInFlight) {
        _dubbedLatestInFlight = buildDubbedLatestFeed().finally(() => {
          _dubbedLatestInFlight = null;
        });
      }
      const items = await _dubbedLatestInFlight;
      if (items.length > 0) {
        _dubbedLatestCache = { expiresAt: Date.now() + 5 * 60 * 1000, items };
      }
      res.setHeader("Cache-Control", "no-store");
      res.json({ items });
      return;
    }

    // Default public app feed: STRICTLY recent dubbed episodes only (<= 14 days old)
    if (!force && _dubbedRecentCache && Date.now() < _dubbedRecentCache.expiresAt) {
      res.setHeader("Cache-Control", "no-store");
      res.json({ items: _dubbedRecentCache.items });
      return;
    }
    if (!_dubbedRecentInFlight) {
      _dubbedRecentInFlight = buildStrictlyRecentDubbedFeed().finally(() => {
        _dubbedRecentInFlight = null;
      });
    }
    const items = await _dubbedRecentInFlight;
    _dubbedRecentCache = { expiresAt: Date.now() + 3 * 60 * 1000, items };
    res.setHeader("Cache-Control", "no-store");
    res.json({ items });
  } catch (err: any) {
    logger.warn({ err: err?.message || String(err) }, "dubbed: latest-episodes route failed");
    res.setHeader("Cache-Control", "no-store");
    res.json({ items: allMode ? (_dubbedLatestCache?.items || []) : (_dubbedRecentCache?.items || []) });
  }
});

export default router;
