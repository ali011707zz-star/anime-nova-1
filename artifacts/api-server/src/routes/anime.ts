import { Router, type Request } from "express";
import { createHash, createDecipheriv, createCipheriv, randomBytes } from "crypto";
import { execSync, execFile, spawn } from "child_process";
import { createReadStream, existsSync, writeFileSync, readFileSync, readdirSync, mkdirSync, rmSync, statSync } from "fs";
import { join as pathJoin } from "path";
import {
  makeSourceCacheKey,
  getFromSourceCache,
  setSourceCache,
  shouldRefreshCache,
  cdnManifestGet,
  cdnManifestSet,
  getSubtitleCache,
  setSubtitleCache,
} from "../lib/sourceCache.js";
import { notifyNewEpisode } from "./telegram.js";
import { encryptProxyUrl, encryptParam, decryptParam, isEncrypted, isSafeExternalUrl } from "../lib/security.js";
import { ANIVEXA_SOURCES, getAnivexaSources, isAnivexaSite } from "../lib/anivexa.js";
import {
  CONSUMET_SOURCES,
  decodeEncryptedHlsPlaylist,
  getConsumetSources,
  checkConsumetEpisode,
  isConsumetSite,
  probeHlsManifest,
  probeHlsQuality,
  probeHlsVariants,
} from "../lib/consumet.js";
import { sbSelect, sbUpsert, sbPatch } from "../lib/supabaseClient.js";
import pg from "pg";
import { translate as nodeGoogleTranslate } from "node-google-translator";
// Pool مباشر لـ translations_cache + anime_meta_ar (بدون Supabase REST)
let _tcPool: pg.Pool | null = null;
function getTcPool(): pg.Pool | null {
  if (!process.env.DATABASE_URL) return null;
  if (!_tcPool) _tcPool = new pg.Pool({ connectionString: process.env.DATABASE_URL, max: 3 });
  return _tcPool;
}
async function pgTranslateGet(key: string): Promise<string | null> {
  try {
    const pool = getTcPool();
    if (!pool) return null;
    const r = await pool.query("SELECT translated FROM translations_cache WHERE cache_key=$1 LIMIT 1", [key]);
    return r.rows[0]?.translated ?? null;
  } catch { return null; }
}
async function pgTranslateSave(key: string, translated: string, from: string, to: string): Promise<void> {
  try {
    const pool = getTcPool();
    if (!pool) return;
    await pool.query(
      `INSERT INTO translations_cache (cache_key, translated, from_lang, to_lang)
       VALUES ($1,$2,$3,$4) ON CONFLICT (cache_key) DO UPDATE SET translated=EXCLUDED.translated`,
      [key, translated, from, to]
    );
  } catch { /* silent */ }
}
const router = Router();

const BROWSER_UA =
  "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36";

const BASE_HDRS: Record<string, string> = {
  "User-Agent": BROWSER_UA,
  Accept: "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8",
  "Accept-Language": "ar,en-US;q=0.9,en;q=0.8",
  Connection: "keep-alive",
};

// ── Lightweight media telemetry + bounded manifest cache ─────────────────────
// Keep this cache deliberately small and manifest-only. Segments/MP4s are never
// buffered here: they must flow through Readable.fromWeb() with backpressure.
type HlsManifestCacheEntry = {
  body: string;
  expiresAt: number;
};
const HLS_MANIFEST_CACHE = new Map<string, HlsManifestCacheEntry>();
const HLS_MANIFEST_INFLIGHT = new Map<string, Promise<string | null>>();
const HLS_MANIFEST_CACHE_MAX = 256;
const HLS_MANIFEST_TTL_MS = 4_000;
const HLS_MASTER_TTL_MS = 30_000;
const mediaMetrics = {
  activeMedia: 0,
  activeManifests: 0,
  mediaRequests: 0,
  manifestRequests: 0,
  upstreamErrors: 0,
  lastCpuSample: process.cpuUsage(),
  lastCpuAt: Date.now(),
  cpuPercent: 0,
};

function hlsCacheKey(url: string, ref: string, manifestKey: string): string {
  return `${url}\n${ref}\n${manifestKey}`;
}

function hlsCacheTtl(url: string, body: string): number {
  // Never cache beyond an explicit epoch-style expiry embedded in a signed URL.
  const now = Date.now();
  let ttl = body.includes("#EXT-X-STREAM-INF") ? HLS_MASTER_TTL_MS : HLS_MANIFEST_TTL_MS;
  try {
    const parsed = new URL(url);
    for (const key of ["expires", "expires_at", "exp", "e"]) {
      const raw = parsed.searchParams.get(key);
      const value = raw ? Number(raw) : NaN;
      if (!Number.isFinite(value)) continue;
      const expiryMs = value < 10_000_000_000 ? value * 1000 : value;
      ttl = Math.min(ttl, Math.max(0, expiryMs - now - 1_000));
    }
  } catch {}
  return ttl;
}

function putHlsManifestCache(key: string, body: string, url: string): void {
  const ttl = hlsCacheTtl(url, body);
  if (ttl <= 0) return;
  if (HLS_MANIFEST_CACHE.size >= HLS_MANIFEST_CACHE_MAX) {
    const oldest = HLS_MANIFEST_CACHE.keys().next().value;
    if (oldest) HLS_MANIFEST_CACHE.delete(oldest);
  }
  HLS_MANIFEST_CACHE.set(key, { body, expiresAt: Date.now() + ttl });
}

function sampleMediaCpu(): void {
  const now = Date.now();
  const elapsedMs = now - mediaMetrics.lastCpuAt;
  if (elapsedMs < 500) return;
  const usage = process.cpuUsage(mediaMetrics.lastCpuSample);
  mediaMetrics.cpuPercent = Math.min(999, ((usage.user + usage.system) / 1000 / elapsedMs) * 100);
  mediaMetrics.lastCpuSample = process.cpuUsage();
  mediaMetrics.lastCpuAt = now;
}

// أحدث الحلقات تستخدم معرّف AnimeSlayer في الرابط، بينما مصادر البث
// (خصوصاً KW) تحتاج AniList ID. نحل العنوان مرة واحدة عند غياب AniList ID.
type AniListSourceMeta = {
  id: number;
  ts: number;
  titles: string[];
  romaji?: string;
  english?: string;
  native?: string;
};
const _titleAniListCache = new Map<string, AniListSourceMeta>();
const TITLE_ANILIST_TTL = 6 * 60 * 60 * 1000;

function normalizeAniTitle(value: string): string {
  return value.toLowerCase()
    .normalize("NFKD")
    .replace(/\p{Diacritic}/gu, "")
    .replace(/[^a-z0-9]+/g, " ")
    .trim();
}

async function resolveAniListIdForSource(
  title: string,
  english: string | null,
  variants: string[],
  titleAr: string | null,
): Promise<number | undefined> {
  const candidates = Array.from(new Set(
    [english, title, ...variants, titleAr]
      .filter((value): value is string => typeof value === "string" && value.trim().length > 1)
      .map(value => value.trim()),
  ));
  if (!candidates.length) return undefined;

  const cacheKey = normalizeAniTitle(candidates[0]);
  const cached = _titleAniListCache.get(cacheKey);
  if (cached && Date.now() - cached.ts < TITLE_ANILIST_TTL) return cached.id;

  const query = `query($search:String!){Page(perPage:8){media(search:$search,type:ANIME){id title{romaji english native userPreferred}}}}`;
  for (const candidate of candidates) {
    try {
      const response = await fetch("https://graphql.anilist.co", {
        method: "POST",
        headers: { "Content-Type": "application/json", Accept: "application/json", ...BASE_HDRS },
        body: JSON.stringify({ query, variables: { search: candidate } }),
        signal: AbortSignal.timeout(8000),
      });
      if (!response.ok) continue;
      const payload = await response.json() as any;
      const media = Array.isArray(payload?.data?.Page?.media) ? payload.data.Page.media : [];
      const normalizedCandidate = normalizeAniTitle(candidate);
      const exact = media.find((item: any) =>
        [item?.title?.romaji, item?.title?.english, item?.title?.native]
          .filter(Boolean)
          .some((name: string) => normalizeAniTitle(name) === normalizedCandidate),
      );
      const match = exact || media[0];
      const id = Number(match?.id || 0);
      if (id > 0) {
        const titleValues = [
          match?.title?.romaji,
          match?.title?.english,
          match?.title?.native,
          match?.title?.userPreferred,
        ].filter((value): value is string => typeof value === "string" && value.trim().length > 1);
        _titleAniListCache.set(cacheKey, {
          id,
          ts: Date.now(),
          titles: Array.from(new Set(titleValues)),
          romaji: match?.title?.romaji || undefined,
          english: match?.title?.english || undefined,
          native: match?.title?.native || undefined,
        });
        return id;
      }
    } catch { /* try the next title variant */ }
  }

  // AniList can be temporarily disabled (403) while the public catalog is
  // still available. Kitsu provides the same stable numeric namespace needed
  // by the clients, so do not make the whole latest-episodes section vanish.
  for (const candidate of candidates) {
    try {
      const search = encodeURIComponent(candidate);
      const response = await fetch(
        `https://kitsu.io/api/edge/anime?filter[text]=${search}&page[limit]=5`,
        {
          headers: { Accept: "application/vnd.api+json", ...BASE_HDRS },
          signal: AbortSignal.timeout(8000),
        },
      );
      if (!response.ok) continue;
      const payload = await response.json() as any;
      const entries = Array.isArray(payload?.data) ? payload.data : [];
      const normalizedCandidate = normalizeAniTitle(candidate);
      const exact = entries.find((entry: any) => {
        const attr = entry?.attributes || {};
        return [attr.slug, attr.canonicalTitle, attr.titles?.en, attr.titles?.en_jp, attr.titles?.ja_jp]
          .filter(Boolean)
          .some((name: string) => normalizeAniTitle(name) === normalizedCandidate);
      });
      const match = exact || entries[0];
      const id = Number(match?.id || 0);
      if (id > 0) {
        const attr = match?.attributes || {};
        const titleValues = [
          attr.canonicalTitle,
          attr.titles?.en,
          attr.titles?.en_jp,
          attr.titles?.ja_jp,
          attr.slug,
        ].filter((value): value is string => typeof value === "string" && value.trim().length > 1);
        _titleAniListCache.set(cacheKey, {
          id,
          ts: Date.now(),
          titles: Array.from(new Set(titleValues)),
          romaji: attr.titles?.en_jp || attr.canonicalTitle || undefined,
          english: attr.titles?.en || undefined,
          native: attr.titles?.ja_jp || undefined,
        });
        return id;
      }
    } catch { /* try the next fallback title */ }
  }
  return undefined;
}

function getCachedAniListSourceMeta(id: number): AniListSourceMeta | undefined {
  for (const meta of _titleAniListCache.values()) {
    if (meta.id === id) return meta;
  }
  return undefined;
}

/**
 * Upstream source sites occasionally reset connections or return transient
 * 5xx/429 responses. Retry those requests locally so a brief upstream issue
 * does not become an empty shared-cache result.
 */
async function fetchSourceWithRetry(
  input: string | URL,
  init: RequestInit = {},
  timeoutMs = 10_000,
  attempts = 2,
): Promise<Response | null> {
  for (let attempt = 0; attempt < Math.max(1, attempts); attempt++) {
    try {
      const response = await fetch(input, {
        ...init,
        signal: AbortSignal.timeout(timeoutMs),
      });
      if (response.ok || (response.status < 500 && response.status !== 429)) {
        return response;
      }
    } catch {
      // Retry below; upstream failures are expected to be transient sometimes.
    }
    if (attempt + 1 < attempts) {
      await new Promise(resolve => setTimeout(resolve, 250 * (attempt + 1)));
    }
  }
  return null;
}

// ── In-memory caches ──
const searchCache    = new Map<string, { result: any; ts: number }>();
const translateCache = new Map<string, string>();
const SEARCH_TTL     = 3_600_000;
const SRC_TTL        = 6 * 3_600_000;
const adarSlugCache  = new Map<string, { url: string | null; ts: number }>();

// CDN response cache
const cdnCache = new Map<string, { body: Buffer; ct: string; ts: number }>();
const CDN_CACHE_TTL = 15 * 60_000; // 15 دقيقة — كافية لمشاهدة فيلم كامل من cache
const CDN_CACHE_HOSTS = [
  "vault-13.owocdn.top", "owocdn.top", "kwik.cx",
];
function isCdnCacheable(url: string): boolean {
  try { return CDN_CACHE_HOSTS.some(h => new URL(url).hostname.endsWith(h)); } catch { return false; }
}
function evictCdnCache() {
  const now = Date.now();
  for (const [k, v] of cdnCache) { if (now - v.ts > CDN_CACHE_TTL) cdnCache.delete(k); }
}
setInterval(evictCdnCache, 2 * 60_000);
const adarSrcCache = new Map<string, { sources: UnifiedSource[]; ts: number }>();

// ── Known-dead / unplayable file hosts ──
const DEAD_FILE_HOSTS = [
  "4shared.com","solidfiles.com","d000d.com",
  "vadbam.net","vadbam.com","okfiles.com","gofile.io","uploadfiles.io","hexupload.net",
  "filerio.in","doodstream.com","dood.watch","dood.to","dood.la","dood.ws","dood.pm",
  "dooood.com","doodrive.com","megaup.net","1fichier.com",
  "bayfiles.com","uploadhaven.com","tusfiles.com","letsupload.co","letsupload.io","workupload.com",
  "hexload.com","mp4upload.com","uqload.net","uqload.com","file-up.org",
  "mega.nz","mega.co.nz","mediafire.com",
  "drive.google","docs.google","googleapis.com/drive",
  "ok.ru","odnoklassniki.ru","youtube.com","youtu.be",
  "cloudflareinsights.com","beacon.min.js",
  "jquery.min.js","bootstrap.min.js",
  ".css",".png",".jpg",".jpeg",".gif",".svg",".ico",
  "favicon","robots.txt","sitemap",
  "larhu.net","larhu.website","larhu.tv","larhu.me","larhu.io","larhu.org","larhu.co",
  "hubcloud.cx","hubcloud.co","hubcloud.fun",
  "file-upload.com","file-upload.org","file-upload.net","fileupload.pw","fileupload.net",
  "uptobox.com","uptobox.fr","upstream.to",
  "flashx.tv","gostream.site","embedrise.com",
  "megaplay.buzz",
  "dood.wf","dood.gg","dood.li","dood.re","dood.sh","dood.cx",
  "doodstream.io","ds2play.com","doods.pro",
];

// ── Embed-only hosts (skip server-side extraction) ──
// Hosts allowed as sandboxed iframe embed (vidmoly has Cloudflare Turnstile — can't extract server-side)
const VIDMOLY_HOSTS = ["vidmoly.biz","vidmoly.to","vidmoly.net"];
/** مواقع محمية بـ Cloudflare/Turnstile — مسموح بتمرير مصادرها كـ isEmbed لأن تطبيق
 * الموبايل يحاول حلها عبر WebView مخفي (IP سكني) قبل عرض بطاقة "يحتاج تطبيق أصلي".
 * بدون هذه القائمة تُحذف هذه المصادر بالكامل بواسطة سياسة iframe (mega/vidmoly فقط). */
const HIDDEN_RESOLVE_EMBED_HOSTS = ["fasel-hd.cam", "animelek.top", "animedar.com", "ristoanime"];
// مواقع تُحلَّل عبر متصفح خفي على جهاز المستخدم (WEBVIEW_RESOLVE_SITES في التطبيق) —
// روابط سيرفراتها متنوّعة (mp4plus/anafast/vidoba/... لماي سيما، عدة CDNs لويت أنمي)
// لذا نسمح بها بالاعتماد على site بدل مطابقة hostname واحد.
const HIDDEN_RESOLVE_EMBED_SITES = ["mycima", "moviz_time"];

// Hosts that cannot be extracted AND are NOT allowed as embed → skip entirely
const EMBED_ONLY_HOSTS = [
  "vidbm.com","vidbm.me","uptostream.com",
  "playerwish.com","wishfast.top",
  "streamvid.net","streamlare.com",
  "asnwish.com",
  "uqload.is","uqload.co","uqload.com",
  "dailymotion.com",
  "videa.hu",
  "vkvideo.ru","vk.com",
  "ok.ru","odnoklassniki.ru",
  "yourupload.com",
  "voe.sx","voe.tv",
  "megamax.me","megamax.io","megamax.tv",
];

const CLOUDFLARE_PATTERNS = ["just a moment", "cf_chl_"];

function isCloudflareBlock(html: string): boolean {
  const lower = html.toLowerCase();
  return CLOUDFLARE_PATTERNS.some(p => lower.includes(p));
}

// ════════════════════════════════════════════════════════════════════
//  cfGet — attempt fetch with browser-like headers (best-effort CF bypass)
//  Works on sites where CF JS challenge is not triggered server-side.
//  Returns null if Cloudflare blocks the request.
// ════════════════════════════════════════════════════════════════════
const CF_BROWSER_HDRS: Record<string, string> = {
  "sec-ch-ua": '"Chromium";v="124", "Google Chrome";v="124", "Not-A.Brand";v="99"',
  "sec-ch-ua-mobile": "?0",
  "sec-ch-ua-platform": '"Windows"',
  "sec-fetch-dest": "document",
  "sec-fetch-mode": "navigate",
  "sec-fetch-site": "none",
  "sec-fetch-user": "?1",
  "upgrade-insecure-requests": "1",
  "accept-language": "ar,en-US;q=0.9,en;q=0.8",
};

async function cfProxyPost(
  url: string,
  body: string,
  contentType = "application/x-www-form-urlencoded",
  referer?: string,
  timeoutMs = 12000,
): Promise<string | null> {
  const now = Date.now();
  if (_cfProxyAlive === null || now - _cfProxyCheckedAt > 60_000) {
    try {
      const h = await fetch(`${CF_PROXY_BASE}/health`, { signal: AbortSignal.timeout(2000) });
      _cfProxyAlive = h.ok;
    } catch { _cfProxyAlive = false; }
    _cfProxyCheckedAt = now;
  }
  if (!_cfProxyAlive) return null;
  try {
    const proxyUrl = new URL(`${CF_PROXY_BASE}/fetch`);
    proxyUrl.searchParams.set("url", url);
    proxyUrl.searchParams.set("method", "POST");
    if (referer) proxyUrl.searchParams.set("ref", referer);
    proxyUrl.searchParams.set("timeout", String(Math.floor(timeoutMs / 1000)));
    const r = await fetch(proxyUrl.toString(), {
      method: "POST",
      headers: { "Content-Type": contentType, "X-Requested-With": "XMLHttpRequest" },
      body,
      signal: AbortSignal.timeout(timeoutMs + 2000),
    });
    if (!r.ok) return null;
    const text = await r.text();
    if (text.length < 10) return null;
    return text;
  } catch { _cfProxyAlive = false; return null; }
}

async function cfGet(url: string, extraHdrs: Record<string, string> = {}): Promise<string | null> {
  try {
    const r = await fetch(url, {
      headers: { ...BASE_HDRS, ...CF_BROWSER_HDRS, ...extraHdrs },
      signal: AbortSignal.timeout(12000),
      redirect: "follow",
    });
    if (r.ok) {
      const html = await r.text();
      return isCloudflareBlock(html) ? null : html;
    }
    /* ── nomore403 bypass: retry with IP-spoofing / path-override headers ── */
    if (r.status === 403 || r.status === 401) {
      const bypassHdrs: Record<string, string>[] = [
        { "X-Forwarded-For": "127.0.0.1", "X-Real-IP": "127.0.0.1" },
        { "X-Originating-IP": "127.0.0.1", "X-Remote-IP": "127.0.0.1", "X-Client-IP": "127.0.0.1" },
        { "X-Original-URL": "/", "X-Rewrite-URL": "/" },
        { "X-Custom-IP-Authorization": "127.0.0.1" },
      ];
      for (const bh of bypassHdrs) {
        try {
          const r2 = await fetch(url, {
            headers: { ...BASE_HDRS, ...CF_BROWSER_HDRS, ...extraHdrs, ...bh },
            signal: AbortSignal.timeout(10000),
            redirect: "follow",
          });
          if (r2.ok) {
            const html2 = await r2.text();
            if (!isCloudflareBlock(html2)) return html2;
          }
        } catch { /* try next */ }
      }
    }
    return null;
  } catch { return null; }
}

// ════════════════════════════════════════════════════════════════════
//  cycleTLSGet — TLS fingerprint spoofing via CycleTLS (JA3/Chrome120)
//  Bypasses Cloudflare TLS fingerprint detection.
//  NOTE: r.data is a Buffer — NOT r.body (confirmed from tests).
//  Does NOT solve JS IUAM/Managed Challenge — for that use cfProxyGet.
// ════════════════════════════════════════════════════════════════════
const CYCLE_JA3 =
  "771,4865-4866-4867-49195-49199-49196-49200-52393-52392-49171-49172-156-157-47-53," +
  "0-23-65281-10-11-35-16-5-13-18-51-45-43-27-21,29-23-24,0";
const CYCLE_UA =
  "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 " +
  "(KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36";

let _cycleTLS: any = null;
let _cycleTLSPending: Promise<any> | null = null;

async function getCycleTLS(): Promise<any> {
  if (_cycleTLS) return _cycleTLS;
  if (_cycleTLSPending) return _cycleTLSPending;
  try {
    // eslint-disable-next-line @typescript-eslint/no-require-imports
    const initCycleTLS = require("cycletls");
    _cycleTLSPending = initCycleTLS().then((c: any) => {
      _cycleTLS = c;
      _cycleTLSPending = null;
      return c;
    });
    return _cycleTLSPending;
  } catch (e: any) {
    console.warn("[CycleTLS] init failed:", e?.message);
    return null;
  }
}

async function cycleTLSGet(url: string, referer?: string): Promise<string | null> {
  try {
    const client = await getCycleTLS();
    if (!client) return null;
    const r = await client.get(url, {
      ja3: CYCLE_JA3,
      userAgent: CYCLE_UA,
      headers: {
        Accept: "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
        "Accept-Language": "ar,en;q=0.9",
        ...(referer ? { Referer: referer } : {}),
      },
    });
    if (r.status !== 200) return null;
    // CycleTLS response body is in r.data (Buffer) — NOT r.body
    const text: string = Buffer.isBuffer(r.data)
      ? r.data.toString("utf-8")
      : typeof r.data === "string" ? r.data : "";
    if (!text || isCloudflareBlock(text)) return null;
    return text;
  } catch { return null; }
}

// ════════════════════════════════════════════════════════════════════
//  cfProxyGet — fetches via Python curl_cffi proxy (port 8000 locally)
//  على VPS: CF_PROXY_BASE = http://localhost:8000 (مباشر)
//  على Replit: NOVA_PROXY_BASE=https://animenovaa.duckdns.org → /api/cfproxy
// ════════════════════════════════════════════════════════════════════
const CF_PROXY_PORT = process.env.CF_PROXY_PORT || "8000";
const _NOVA_PROXY_BASE = process.env.NOVA_PROXY_BASE;
const CF_PROXY_BASE = _NOVA_PROXY_BASE
  ? `${_NOVA_PROXY_BASE}/api/cfproxy`
  : `http://localhost:${CF_PROXY_PORT}`;
// The VPS cf-proxy may require its internal key for binary media streams.
// Keep it server-side; it is never included in client-facing URLs.
const CF_PROXY_KEY = process.env.CF_PROXY_KEY || "";
let _cfProxyAlive: boolean | null = null;
let _cfProxyCheckedAt = 0;

// cfProxyChainFetch — يجلب url1 ثم url2 بنفس الجلسة (session-persistent cookies)
// يُستخدم لـ FaselHD: player_token مرتبط بـ session cookies من صفحة الحلقة
async function cfProxyChainFetch(
  url1: string,
  url2: string,
  ref1?: string,
  timeoutMs = 20_000,
): Promise<string | null> {
  const now = Date.now();
  if (_cfProxyAlive === null || now - _cfProxyCheckedAt > 60_000) {
    try {
      const h = await fetch(`${CF_PROXY_BASE}/health`, { signal: AbortSignal.timeout(2000) });
      _cfProxyAlive = h.ok;
    } catch { _cfProxyAlive = false; }
    _cfProxyCheckedAt = now;
  }
  if (!_cfProxyAlive) return null;

  try {
    const params = new URLSearchParams({ url1, url2, timeout: String(Math.floor(timeoutMs / 1000)) });
    if (ref1) params.set("ref1", ref1);
    const r = await fetch(`${CF_PROXY_BASE}/chain-fetch?${params}`, {
      signal: AbortSignal.timeout(timeoutMs + 5_000),
    });
    const chainSize2 = parseInt(r.headers.get("X-Chain-Size2") || "0");
    if (!r.ok || chainSize2 < 100) return null;
    return await r.text();
  } catch { _cfProxyAlive = false; return null; }
}

async function cfProxyGet(
  url: string,
  referer?: string,
  timeoutMs = 18000,
): Promise<string | null> {
  // Health-check proxy once per 60s
  const now = Date.now();
  if (_cfProxyAlive === null || now - _cfProxyCheckedAt > 60_000) {
    try {
      const h = await fetch(`${CF_PROXY_BASE}/health`, { signal: AbortSignal.timeout(2000) });
      _cfProxyAlive = h.ok;
    } catch { _cfProxyAlive = false; }
    _cfProxyCheckedAt = now;
  }

  if (_cfProxyAlive) {
    try {
      const proxyUrl = new URL(`${CF_PROXY_BASE}/fetch`);
      proxyUrl.searchParams.set("url", url);
      if (referer) proxyUrl.searchParams.set("ref", referer);
      proxyUrl.searchParams.set("timeout", String(Math.floor(timeoutMs / 1000)));
      const r = await fetch(proxyUrl.toString(), { signal: AbortSignal.timeout(timeoutMs + 2000) });
      const cfBlocked = r.headers.get("x-cf-blocked") === "1";
      if (!r.ok || cfBlocked) return null;
      return await r.text();
    } catch { _cfProxyAlive = false; }
  }

  // Fallback to regular cfGet
  return cfGet(url, referer ? { Referer: referer } : {});
}

// Binary companion for the local curl_cffi proxy. Reanime's media CDN
// rejects the VPS fetch implementation, while the dedicated stream route
// preserves the browser fingerprint, Referer, Origin, and Range headers.
async function cfProxyStreamFetch(
  url: string,
  referer?: string,
  range?: string,
): Promise<Response | null> {
  try {
    const streamUrl = new URL(`${CF_PROXY_BASE}/stream`);
    streamUrl.searchParams.set("url", url);
    if (referer) streamUrl.searchParams.set("ref", referer);
    if (CF_PROXY_KEY) streamUrl.searchParams.set("key", CF_PROXY_KEY);
    const headers: Record<string, string> = {};
    if (range) headers.Range = range;
    return await fetch(streamUrl, {
      headers,
      signal: AbortSignal.timeout(35_000),
    });
  } catch {
    return null;
  }
}

// ════════════════════════════════════════════════════════════════════
//  denoProxyGet — جلب HTML عبر Deno Deploy proxy (IP مختلف عن Replit)
//  يُستخدم فقط لسحب روابط الحلقات من مواقع تحجب IP Replit تحديداً.
//  يُفعَّل عبر env vars: DENO_PROXY_URL + DENO_PROXY_SECRET (اختياري)
//  لا يُستخدم للمصادقة أو التخزين أو أي شيء آخر — scraping فقط.
// ════════════════════════════════════════════════════════════════════
const DENO_PROXY_URL    = (process.env.DENO_PROXY_URL    || "").replace(/\/$/, "");
const DENO_PROXY_SECRET = process.env.DENO_PROXY_SECRET  || "";
let _denoProxyAlive: boolean | null = null;
let _denoProxyCheckedAt = 0;

async function denoProxyGet(
  url: string,
  referer?: string,
  extraHeaders: Record<string, string> = {},
  timeoutMs = 20000,
): Promise<string | null> {
  if (!DENO_PROXY_URL) return null;

  // Health-check الـ proxy مرة كل 120 ثانية
  const now = Date.now();
  if (_denoProxyAlive === null || now - _denoProxyCheckedAt > 120_000) {
    try {
      const h = await fetch(`${DENO_PROXY_URL}/health`, {
        headers: DENO_PROXY_SECRET ? { "X-Proxy-Key": DENO_PROXY_SECRET } : {},
        signal: AbortSignal.timeout(5000),
      });
      _denoProxyAlive = h.ok;
    } catch { _denoProxyAlive = false; }
    _denoProxyCheckedAt = now;
  }
  if (!_denoProxyAlive) return null;

  try {
    const proxyUrl = new URL(DENO_PROXY_URL);
    proxyUrl.searchParams.set("url", url);
    if (referer) proxyUrl.searchParams.set("ref", referer);
    if (Object.keys(extraHeaders).length) {
      proxyUrl.searchParams.set("headers", JSON.stringify(extraHeaders));
    }

    const reqHeaders: Record<string, string> = {};
    if (DENO_PROXY_SECRET) reqHeaders["X-Proxy-Key"] = DENO_PROXY_SECRET;

    const r = await fetch(proxyUrl.toString(), {
      headers: reqHeaders,
      signal: AbortSignal.timeout(timeoutMs + 3000),
    });
    if (!r.ok) return null;
    const text = await r.text();
    return text.length > 50 ? text : null;
  } catch { _denoProxyAlive = false; return null; }
}

// ════════════════════════════════════════════════════════════════════
//  orkestGet — يستخدم CF_PROXY_BASE (curl_cffi + primp محلي)
// ════════════════════════════════════════════════════════════════════
async function orkestGet(
  url: string,
  referer?: string,
  timeoutMs = 25000,
): Promise<string | null> {
  // cfProxy (curl_cffi + primp) — hopx حُذف نهائياً
  return await cfProxyGet(url, referer, timeoutMs).catch(() => null);
}

// ════════════════════════════════════════════════════════════════════
//  scrapingAntGet — جلب HTML عبر ScrapingAnt (10,000 كريدت/شهر مجاناً)
//  Chrome headless حقيقي — يتجاوز Cloudflare
//  التسجيل المجاني: https://app.scrapingant.com/signup (بدون بطاقة بنك)
//  يتطلب: SCRAPINGANT_KEY في env vars
// ════════════════════════════════════════════════════════════════════
const SCRAPINGANT_KEY = process.env.SCRAPINGANT_KEY || "";

async function scrapingAntGet(
  url: string,
  opts: { browser?: boolean; timeoutMs?: number } = {},
): Promise<string | null> {
  if (!SCRAPINGANT_KEY) return null;
  const { browser = false, timeoutMs = 35000 } = opts;
  try {
    // browser=true → 10 كريدت (يحل JS Challenge) | browser=false → 1 كريدت (HTML فقط)
    const apiUrl = new URL("https://api.scrapingant.com/v2/general");
    apiUrl.searchParams.set("url", url);
    apiUrl.searchParams.set("x-api-key", SCRAPINGANT_KEY);
    if (browser) apiUrl.searchParams.set("browser", "true");
    const r = await fetch(apiUrl.toString(), { signal: AbortSignal.timeout(timeoutMs) });
    if (!r.ok) {
      console.warn(`[scrapingant] ${r.status} for ${url}`);
      return null;
    }
    const text = await r.text();
    if (isCloudflareBlock(text)) return null;
    return text.length > 50 ? text : null;
  } catch (e: any) {
    console.warn(`[scrapingant] error: ${e.message}`);
    return null;
  }
}

// ════════════════════════════════════════════════════════════════════

// Hound CF-Bypass Service — patchright stealth browser يحل Turnstile محلياً على VPS
const HOUND_SERVICE_URL    = process.env.HOUND_SERVICE_URL   || "http://localhost:8766";

// hopxProxyGet — معطَّل نهائياً (hopx-manager حُذف 2026-08-03)
// eslint-disable-next-line @typescript-eslint/no-unused-vars
async function hopxProxyGet(_url: string, _ref?: string, _t?: number): Promise<string | null> { return null; }

// hopxBrowserExtract — معطَّل (hopx-manager حُذف)
// eslint-disable-next-line @typescript-eslint/no-unused-vars
async function hopxBrowserExtract(
  _url: string, _referer?: string, _timeoutMs = 25000,
): Promise<{ url: string; type: "hls" | "mp4" } | null> { return null; }


// ════════════════════════════════════════════════════════════════════
//  extractViaYtDlp — استخراج رابط مباشر من embed page عبر yt-dlp
//  تعمل بشكل ممتاز مع: videa.hu · mp4upload · أي embed تدعمه yt-dlp
// ════════════════════════════════════════════════════════════════════
async function extractViaYtDlp(
  embedUrl: string,
  referer?: string,
  timeoutMs = 25000,
  format = "bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio/best",
): Promise<string | null> {
  return new Promise<string | null>((resolve) => {
    const args = [
      "--no-warnings",
      "--no-download",
      "--get-url",
      "--no-playlist",
      "-f", format,
    ];
    if (referer) {
      args.push("--add-header", `Referer:${referer}`);
    }
    args.push(embedUrl);

    const timer = setTimeout(() => resolve(null), timeoutMs);
    execFile("/usr/local/bin/yt-dlp", args, { timeout: timeoutMs }, (err, stdout) => {
      clearTimeout(timer);
      if (err || !stdout.trim()) { resolve(null); return; }
      // bestvideo+bestaudio يُرجع سطرين (video URL + audio URL) — نأخذ الأول فقط
      const urls = stdout.trim().split("\n").map((l: string) => l.trim()).filter((l: string) => l.startsWith("http"));
      resolve(urls[0] ?? null);
    });
  });
}

/** استخرج جودة الفيديو من رابط videa.hu (w1080p/w720p/360p/…) */
function videaQualityFromUrl(url: string): { quality: string; qualityRank: number } {
  const m = url.match(/\/(?:w(\d+)p|(\d+)p)\//);
  const h = m ? parseInt(m[1] ?? m[2], 10) : 0;
  if (h >= 1080) return { quality: "FHD", qualityRank: 11 };
  if (h >= 720)  return { quality: "HD",  qualityRank: 9  };
  if (h >= 480)  return { quality: "SD+", qualityRank: 7  };
  if (h >= 360)  return { quality: "SD",  qualityRank: 5  };
  return { quality: "SD", qualityRank: 5 };
}

//  smartFetch — جلب ذكي يجرب كل الوسائل بالترتيب (تلقائياً)
//  1. cfProxy (curl_cffi + primp محلي)
//  2. ScrapingAnt (Chrome headless — آخر خيار لتوفير الكريدت)
//  ملاحظة: hopx حُذف نهائياً 2026-08-03
// ════════════════════════════════════════════════════════════════════
async function smartFetch(
  url: string,
  opts: { referer?: string; timeoutMs?: number; forceAnt?: boolean } = {},
): Promise<string | null> {
  const { referer, timeoutMs = 20000, forceAnt = false } = opts;

  // 1) cfProxy (curl_cffi + primp) — المحلي الأسرع
  const fromProxy = await cfProxyGet(url, referer, timeoutMs).catch(() => null);
  if (fromProxy && !isCloudflareBlock(fromProxy)) return fromProxy;

  // 2) ScrapingAnt — الأقوى لكن يستهلك كريدت أكثر
  if (SCRAPINGANT_KEY) {
    const fromAnt = await scrapingAntGet(url, { browser: forceAnt, timeoutMs: timeoutMs + 15000 });
    if (fromAnt) return fromAnt;
  }

  return null;
}

// ════════════════════════════════════════════════════════════════════
//  UTILITIES
// ════════════════════════════════════════════════════════════════════

function normalize(s: string) {
  return s.toLowerCase().replace(/[^a-z0-9 ]/g, "").trim();
}
function similarity(a: string, b: string) {
  a = normalize(a); b = normalize(b);
  if (a === b) return 1;
  const aWords = a.split(" ").length;
  const bWords = b.split(" ").length;
  // If b includes a: a is a prefix/subset of b (a is shorter query, b is longer site title)
  // Penalise by word-count ratio so "dragon ball super" doesn't score 0.85 for "dragon ball super broly"
  if (b.includes(a)) {
    const ratio = aWords / bWords; // 0..1, lower = a covers less of b
    return 0.85 * (0.4 + ratio * 0.6); // range: 0.34 (very short a) → 0.85 (a≈b)
  }
  // If a includes b (a is longer, b is a subset) → penalise by word-count ratio
  if (a.includes(b)) {
    const ratio = bWords / aWords; // 0..1, lower = b covers less of a
    return 0.85 * (0.4 + ratio * 0.6); // range: 0.34 (very short b) → 0.85 (b≈a)
  }
  const aw = a.split(" ");
  const bw = b.split(" ");
  // Fuzzy word match: also match if one word is a prefix of the other (≥4 chars)
  // e.g. "haikyu" matches "haikyuu", "boku" matches "bokurano"
  const matches = bw.filter(bWord =>
    aw.some(aWord =>
      aWord === bWord ||
      (aWord.length >= 4 && bWord.length >= 4 &&
        (aWord.startsWith(bWord) || bWord.startsWith(aWord)))
    )
  ).length;
  return matches / Math.max(aw.length, bw.length);
}

/**
 * Similarity that works for mixed Arabic-English slug strings.
 * Replaces non-ASCII chars and hyphens with spaces before comparing,
 * so "انمي-ون-بيس-one-piece-hg" → "one piece hg" which matches "One Piece".
 */
function asciiSimilarity(a: string, b: string): number {
  const toAscii = (s: string) => s.replace(/[^\x00-\x7F]/g, " ").replace(/-/g, " ");
  return similarity(toAscii(a), b);
}

/** All AniList title forms accepted by source catalogues. */
function titleQueries(
  title: string,
  english: string | null,
  variants: string[] = [],
): string[] {
  return [...new Set([title, english, ...variants]
    .filter((value): value is string => typeof value === "string" && value.trim().length > 0)
    .map(value => value.trim()))];
}
/**
 * Stricter similarity for movie/OVA matching:
 * Combines normal similarity with a character-length ratio penalty.
 * Prevents "Dragon Ball Super" (18 chars) from matching "Dragon Ball Super: Broly" (24 chars) too closely.
 */
function strictMovieSimilarity(siteTitle: string, queryTitle: string): number {
  const base = Math.max(
    similarity(siteTitle, queryTitle),
    asciiSimilarity(siteTitle, queryTitle),
  );
  const aN = normalize(siteTitle), bN = normalize(queryTitle);
  if (!aN || !bN) return base;
  const lenRatio = Math.min(aN.length, bN.length) / Math.max(aN.length, bN.length);
  // If char lengths differ by more than 35%, apply additional length penalty
  if (lenRatio < 0.65) return base * lenRatio;
  return base;
}
// ─── Multi-criteria matching helpers ─────────────────────────────────────────

/**
 * Extracts the season/part number from any title string.
 * Handles Arabic ("الموسم الثاني"), English ("Season 2", "2nd Season"),
 * Roman numerals ("II", "III"), and bare trailing digits ("Dragon Ball Super 2").
 * Returns null if no explicit season marker found (treated as season 1 / unknown).
 */
function extractSeasonNum(title: string): number | null {
  if (!title) return null;
  const t = title.toLowerCase();
  // Arabic ordinals for الموسم / الجزء context
  const arOrdinals: [string, number][] = [
    ["العاشر",10],["التاسع",9],["الثامن",8],["السابع",7],
    ["السادس",6],["الخامس",5],["الرابع",4],["الثالث",3],["الثاني",2],
  ];
  if (t.includes("الموسم") || t.includes("الجزء")) {
    for (const [ar, n] of arOrdinals) { if (t.includes(ar)) return n; }
    const dm = t.match(/(?:الموسم|الجزء)\s*(\d+)/); if (dm) return parseInt(dm[1]);
  }
  // English "Season N" / "Nth Season" / "Cour N"
  let m = t.match(/\b(?:season|cour)\s*(\d+)\b/i); if (m) return parseInt(m[1]);
  m = t.match(/\b(\d+)(?:st|nd|rd|th)\s+(?:season|cour)\b/i); if (m) return parseInt(m[1]);
  // Part N / Part-N
  m = t.match(/\bpart[-\s]*(\d+)\b/i); if (m) return parseInt(m[1]);
  // S2, S3 … S9 (S1 → null same as no marker)
  m = t.match(/\bs([2-9]|1[0-9])\b/i); if (m) return parseInt(m[1]);
  // Roman numerals as standalone words (order: longer first to avoid partial match)
  const romMap: [RegExp, number][] = [
    [/\bviii\b/, 8],[/\bvii\b/, 7],[/\bvi\b/, 6],[/\biv\b/, 4],
    [/\biii\b/, 3],[/\bii\b/, 2],
  ];
  for (const [re, n] of romMap) { if (re.test(t)) return n; }
  // Bare trailing digit ≥ 2 with word boundary (e.g. "Sword Art Online 2")
  m = t.match(/\b([2-9])\s*$/); if (m) return parseInt(m[1]);
  return null;
}

/** Context object for multi-criteria matching — passed through scraper call chain */
interface MatchCtx {
  romaji: string;
  english?: string | null;
  native?: string | null;
  year?: number | null;       // AniList seasonYear
  totalEps?: number | null;   // AniList total episodes
  seasonNum?: number | null;  // expected season number (derived from romaji/english title)
  isMovie: boolean;
  scraper: string;            // label for console.log
}

/**
 * Multi-criteria match score.
 * Combines title similarity + year bonus + season number match + ep count hint.
 * Returns score (0..1.2, slightly above 1 for excellent multi-signal matches)
 * and a human-readable log string.
 *
 * Usage: replace `similarity(siteTitle, queryTitle) > threshold`
 *        with    `multiScore(siteTitle, ctx).score > threshold`
 */
function multiScore(
  siteTitle: string,
  ctx: MatchCtx,
  siteYear?: number | null,
  siteTotalEps?: number | null,
): { score: number; log: string } {
  const { romaji, english, native, year, totalEps, seasonNum, isMovie, scraper } = ctx;
  const simFn = isMovie ? strictMovieSimilarity : similarity;

  // 1. Base title similarity — max across all known title variants
  const baseSim = Math.max(
    simFn(siteTitle, romaji),
    english  ? simFn(siteTitle, english) : 0,
    native   ? simFn(siteTitle, native)  : 0,
    asciiSimilarity(siteTitle, romaji),
    english  ? asciiSimilarity(siteTitle, english) : 0,
  );

  let score = baseSim;
  const parts: string[] = [`base=${baseSim.toFixed(2)}`];

  // 2. Year match bonus / penalty (only when both sides available)
  if (siteYear && year) {
    const diff = Math.abs(siteYear - year);
    if (diff === 0)      { score += 0.15; parts.push(`year✓+0.15`); }
    else if (diff === 1) { score += 0.05; parts.push(`year≈+0.05`); }
    else if (diff <= 3)  {                parts.push(`year~`); }
    else                 { score -= 0.15; parts.push(`year✗-0.15`); }
  }

  // 3. Season number match / mismatch
  const siteSeasonNum = extractSeasonNum(siteTitle);
  if (seasonNum !== null && seasonNum !== undefined) {
    if (siteSeasonNum !== null) {
      if (siteSeasonNum === seasonNum) { score += 0.12; parts.push(`s${siteSeasonNum}✓+0.12`); }
      else                            { score -= 0.25; parts.push(`s${siteSeasonNum}≠s${seasonNum}-0.25`); }
    } else if (seasonNum >= 2) {
      // Expected season ≥2 but site title has no season marker → likely wrong season
      score -= 0.10; parts.push(`noSMark(exp:s${seasonNum})-0.10`);
    }
  }

  // 4. Episode count proximity (small bonus, never penalise)
  if (siteTotalEps && totalEps && totalEps > 0) {
    const ratio = Math.min(siteTotalEps, totalEps) / Math.max(siteTotalEps, totalEps);
    if (ratio >= 0.90) { score += 0.05; parts.push(`eps≈+0.05`); }
  }

  const clamped = Math.max(0, Math.min(1.2, score));
  const log = `[match:${scraper}] "${siteTitle}" ${parts.join(" | ")} = ${clamped.toFixed(3)}`;
  console.log(log);
  return { score: clamped, log };
}

function toSlug(s: string): string {
  return s.toLowerCase()
    .replace(/[^\w\s-]/g, " ").trim()
    .replace(/\s+/g, "-").replace(/-+/g, "-").replace(/^-|-$/g, "");
}

/**
 * Build stable, language-aware search slugs without adding a runtime
 * dependency.  ASCII slugs are useful to Arabic/Latin catalogues, while the
 * Unicode slug keeps Japanese, Korean, Chinese, and other native titles
 * searchable instead of silently dropping their characters.
 */
const ARABIC_TRANSLITERATION: Record<string, string> = {
  ا: "a", أ: "a", إ: "i", آ: "a", ء: "a", ؤ: "w", ئ: "y",
  ب: "b", ت: "t", ث: "th", ج: "j", ح: "h", خ: "kh", د: "d",
  ذ: "dh", ر: "r", ز: "z", س: "s", ش: "sh", ص: "s", ض: "d",
  ط: "t", ظ: "z", ع: "a", غ: "gh", ف: "f", ق: "q", ك: "k",
  ل: "l", م: "m", ن: "n", ه: "h", و: "w", ي: "y", ى: "a",
  ة: "a", لا: "la",
};

function transliterateTitle(value: string): string {
  let out = value.normalize("NFKD").replace(/\p{M}/gu, "");
  for (const [from, to] of Object.entries(ARABIC_TRANSLITERATION)) {
    out = out.split(from).join(to);
  }
  return out
    .replace(/[^\p{ASCII}\p{L}\p{N}]+/gu, " ")
    .normalize("NFKD")
    .replace(/[^\x00-\x7F]/g, " ")
    .replace(/\s+/g, " ")
    .trim();
}

function unicodeSlug(value: string): string {
  return value
    .normalize("NFKC")
    .toLocaleLowerCase()
    .replace(/[^\p{L}\p{N}]+/gu, "-")
    .replace(/-+/g, "-")
    .replace(/^-|-$/g, "");
}

function buildAnimeSlugs(titles: string[]): string[] {
  const slugs = new Set<string>();
  for (const raw of titles) {
    const title = String(raw || "").trim();
    if (!title) continue;
    const nativeSlug = unicodeSlug(title);
    if (nativeSlug) slugs.add(nativeSlug);
    const latin = transliterateTitle(title);
    const latinSlug = toSlug(latin);
    if (latinSlug) slugs.add(latinSlug);
    const compact = latinSlug.replace(/-/g, "");
    if (compact.length >= 3) slugs.add(compact);
    // Keep a compact native form too; this helps catalogues that omit spaces.
    const compactNative = nativeSlug.replace(/-/g, "");
    if (compactNative.length >= 3) slugs.add(compactNative);
  }
  return [...slugs].slice(0, 80);
}

function slugSimilarity(a: string, b: string): number {
  const left = new Set(buildAnimeSlugs([a]));
  const right = new Set(buildAnimeSlugs([b]));
  return slugSimilarityFromSets(left, right);
}

function slugSimilarityFromSets(left: Set<string>, right: Set<string>): number {
  for (const item of left) if (right.has(item)) return 1;
  const leftAscii = [...left].filter(s => /^[a-z0-9-]+$/i.test(s));
  const rightAscii = [...right].filter(s => /^[a-z0-9-]+$/i.test(s));
  let best = 0;
  for (const l of leftAscii) {
    for (const r of rightAscii) best = Math.max(best, similarity(l.replace(/-/g, " "), r.replace(/-/g, " ")));
  }
  return best;
}

type AnimeSlugRecord = { slugs: string[]; titles: string[] };
const animeSlugCache = new Map<number, { record: AnimeSlugRecord; ts: number }>();
const ANIME_SLUG_CACHE_TTL = 24 * 3_600_000;

/**
 * Production Supabase currently exposes the canonical title as `slug`, while
 * newer migrations add the richer `slugs` JSONB column. Keep the runtime
 * representation rich without making source lookup depend on one schema
 * version. This is intentionally read-compatible with both layouts.
 */
function normalizeAnimeSlugRow(row: {
  slug?: unknown;
  slugs?: unknown;
  titles?: unknown;
}): AnimeSlugRecord {
  const titles = Array.isArray(row.titles)
    ? row.titles.filter((value): value is string => typeof value === "string" && value.trim().length > 0)
    : [];
  const storedSlugs = Array.isArray(row.slugs)
    ? row.slugs.filter((value): value is string => typeof value === "string" && value.trim().length > 0)
    : [];
  const canonicalSlug = typeof row.slug === "string" ? row.slug.trim() : "";
  return {
    titles,
    slugs: [...new Set([...storedSlugs, canonicalSlug, ...buildAnimeSlugs(titles)])],
  };
}

async function getAnimeSlugRecord(anilistId: number): Promise<AnimeSlugRecord | null> {
  if (!anilistId) return null;
  const cached = animeSlugCache.get(anilistId);
  if (cached && Date.now() - cached.ts < ANIME_SLUG_CACHE_TTL) return cached.record;
  try {
    const rows = await sbSelect<{ slug?: unknown; titles?: unknown }>(
      "anime",
      { anilist_id: `eq.${anilistId}` },
      { limit: 1, select: "slug,titles" },
    );
    const row = rows[0];
    if (!row) return null;
    const record = normalizeAnimeSlugRow(row);
    animeSlugCache.set(anilistId, { record, ts: Date.now() });
    return record;
  } catch { return null; }
}

async function saveAnimeSlugRecord(anilistId: number, titles: string[]): Promise<AnimeSlugRecord | null> {
  if (!anilistId) return null;
  const cleanTitles = [...new Set(titles.map(t => String(t || "").trim()).filter(Boolean))].slice(0, 30);
  const record: AnimeSlugRecord = { titles: cleanTitles, slugs: buildAnimeSlugs(cleanTitles) };
  if (!record.slugs.length) return null;
  animeSlugCache.set(anilistId, { record, ts: Date.now() });
  sbUpsert(
    "anime",
    // Keep writes compatible with the production schema (`slug` is a scalar).
    // The in-memory record still retains every generated variant for matching.
    { anilist_id: anilistId, titles: record.titles, slug: record.slugs[0], updated_at: new Date().toISOString() },
    "anilist_id",
  ).catch(() => {});
  return record;
}

async function ensureAnimeSlugRecord(
  anilistId: number | undefined,
  titles: string[],
): Promise<AnimeSlugRecord | null> {
  if (!anilistId) return null;
  const existing = await getAnimeSlugRecord(anilistId);
  if (existing?.slugs.length) return existing;
  return saveAnimeSlugRecord(anilistId, titles);
}

function cacheAnimeSlugsFromAniListResponse(response: any): void {
  const mediaItems: any[] = [];
  if (response?.data?.Media) mediaItems.push(response.data.Media);
  if (Array.isArray(response?.data?.Page?.media)) mediaItems.push(...response.data.Page.media);
  for (const media of mediaItems) {
    const anilistId = Number(media?.id);
    if (!Number.isInteger(anilistId) || anilistId <= 0) continue;
    const titles = [
      media?.title?.romaji,
      media?.title?.english,
      media?.title?.native,
      ...(Array.isArray(media?.synonyms) ? media.synonyms : []),
    ].filter((value): value is string => typeof value === "string" && value.trim().length > 0);
    if (titles.length) saveAnimeSlugRecord(anilistId, titles).catch(() => {});
  }
}

function qualityRank(quality: string): number {
  const q = quality.toUpperCase();
  if (q.includes("FHD") || q.includes("1080") || q.includes("FULLHD")) return 3;
  if (q.includes("HD") || q.includes("720")) return 2;
  if (q.includes("SD") || q.includes("480") || q.includes("360")) return 1;
  return 0;
}

/** فحص HLS master.m3u8 وإعادة قائمة الجودات المتاحة مع روابطها */
async function parseM3u8Qualities(
  masterUrl: string,
  referer: string,
): Promise<Array<{ quality: string; rank: number; url: string }>> {
  try {
    const text = await fetch(masterUrl, {
      headers: { ...BASE_HDRS, Referer: referer },
      signal: AbortSignal.timeout(8000),
    }).then(r => r.ok ? r.text() : "").catch(() => "");

    if (!text || !text.includes("#EXTM3U") || !text.includes("#EXT-X-STREAM-INF")) return [];

    const results: Array<{ quality: string; rank: number; url: string }> = [];
    const base = masterUrl.replace(/[^/]+$/, "");
    const lines = text.split("\n").map(l => l.trim()).filter(Boolean);

    for (let i = 0; i < lines.length - 1; i++) {
      if (!lines[i].startsWith("#EXT-X-STREAM-INF")) continue;
      const urlLine = lines[i + 1];
      if (!urlLine || urlLine.startsWith("#")) continue;

      const resM = lines[i].match(/RESOLUTION=(\d+)x(\d+)/i);
      const bwM  = lines[i].match(/BANDWIDTH=(\d+)/i);
      const height = resM ? parseInt(resM[2]) : 0;
      const bw     = bwM  ? parseInt(bwM[1])  : 0;

      let quality: string, rank: number;
      if      (height >= 1080 || bw >= 2_000_000) { quality = "1080p"; rank = 11; }
      else if (height >=  720 || bw >= 1_000_000) { quality = "720p";  rank = 10; }
      else if (height >=  480 || bw >=   500_000) { quality = "480p";  rank = 9;  }
      else                                          { quality = "360p";  rank = 8;  }

      const url = urlLine.startsWith("http") ? urlLine
        : urlLine.startsWith("//") ? "https:" + urlLine
        : base + urlLine;

      if (!results.find(r => r.quality === quality)) {
        results.push({ quality, rank, url });
      }
    }

    return results.sort((a, b) => b.rank - a.rank);
  } catch { return []; }
}
async function safeHead(url: string, headers: Record<string, string>): Promise<number> {
  try {
    const r = await fetch(url, { method: "HEAD", headers, signal: AbortSignal.timeout(4000), redirect: "follow" });
    return r.status;
  } catch { return 0; }
}

// ════════════════════════════════════════════════════════════════════
//  VIDEO EXTRACTION ENGINE
// ════════════════════════════════════════════════════════════════════

/**
 * Find the substring inside the balanced parens/braces/brackets that open right after
 * `str[openCharIdx]` (which must be `(`, `{`, or `[`). Respects string literals so
 * quoted parens/braces inside packed JS strings don't throw off the scan. Never
 * executes anything — pure text scanning.
 */
function extractBalanced(str: string, openCharIdx: number): string | null {
  const open = str[openCharIdx];
  const close = open === "(" ? ")" : open === "{" ? "}" : open === "[" ? "]" : null;
  if (!close) return null;
  let depth = 1;
  let inStr: string | null = null;
  for (let i = openCharIdx + 1; i < str.length; i++) {
    const ch = str[i];
    if (inStr) {
      if (ch === "\\") { i++; continue; }
      if (ch === inStr) inStr = null;
      continue;
    }
    if (ch === '"' || ch === "'" || ch === "`") { inStr = ch; continue; }
    if (ch === open) depth++;
    else if (ch === close) {
      depth--;
      if (depth === 0) return str.slice(openCharIdx + 1, i);
    }
  }
  return null;
}

/** Split a top-level comma-separated argument list, ignoring commas inside strings/parens/brackets. */
function splitTopLevelArgs(argsStr: string): string[] {
  const parts: string[] = [];
  let depth = 0;
  let inStr: string | null = null;
  let cur = "";
  for (let i = 0; i < argsStr.length; i++) {
    const ch = argsStr[i];
    if (inStr) {
      cur += ch;
      if (ch === "\\") { i++; cur += argsStr[i] ?? ""; continue; }
      if (ch === inStr) inStr = null;
      continue;
    }
    if (ch === '"' || ch === "'" || ch === "`") { inStr = ch; cur += ch; continue; }
    if (ch === "(" || ch === "[" || ch === "{") { depth++; cur += ch; continue; }
    if (ch === ")" || ch === "]" || ch === "}") { depth--; cur += ch; continue; }
    if (ch === "," && depth === 0) { parts.push(cur); cur = ""; continue; }
    cur += ch;
  }
  if (cur.trim().length) parts.push(cur);
  return parts;
}

/** Unescape a single-quoted or double-quoted JS string literal (no eval). */
function unquoteJsString(literal: string): string | null {
  const t = literal.trim();
  if (t.length < 2) return null;
  const q = t[0];
  if ((q !== "'" && q !== '"') || t[t.length - 1] !== q) return null;
  const body = t.slice(1, -1);
  // Minimal, safe unescape — no code execution, just character substitution.
  return body.replace(/\\(.)/g, (_, c) => (c === "n" ? "\n" : c === "t" ? "\t" : c));
}

/**
 * Unpack Dean-Edwards-style `eval(function(p,a,c,k,e,d){...}('...',a,c,'...'.split('|')[,e,d]))`
 * packed JS blocks purely by text-parsing the packer's own arguments — never executes the
 * scraped payload (avoids remote-code-execution risk from untrusted third-party HTML).
 * Uses balanced-paren/brace scanning (not a fixed-shape regex) because real-world payloads
 * (e.g. fastvip.space/StreamHG) often carry extra trailing args like `,0,{}` before the
 * closing parens, which a regex anchored on `.split('|')))` silently fails to match.
 */
function unpackPacked(html: string): string | null {
  let result = html;
  let found = false;
  let searchFrom = 0;
  const marker = "function(p,a,c,k,e,d)";
  while (true) {
    const fnIdx = result.indexOf(marker, searchFrom);
    if (fnIdx === -1) break;
    const evalIdx = result.lastIndexOf("eval(", fnIdx);
    if (evalIdx === -1 || evalIdx < searchFrom) { searchFrom = fnIdx + marker.length; continue; }

    // Locate the function body { ... } right after the params list, then the call args ( ... ) after it.
    const bodyOpenIdx = result.indexOf("{", fnIdx + marker.length);
    if (bodyOpenIdx === -1) { searchFrom = fnIdx + marker.length; continue; }
    const body = extractBalanced(result, bodyOpenIdx);
    if (body === null) { searchFrom = fnIdx + marker.length; continue; }
    const bodyCloseIdx = bodyOpenIdx + 1 + body.length; // index of closing "}"
    const callOpenIdx = result.indexOf("(", bodyCloseIdx + 1);
    if (callOpenIdx === -1) { searchFrom = fnIdx + marker.length; continue; }
    const argsStr = extractBalanced(result, callOpenIdx);
    if (argsStr === null) { searchFrom = fnIdx + marker.length; continue; }
    const callCloseIdx = callOpenIdx + 1 + argsStr.length; // index of matching ")"
    // The whole eval(...) call ends at the closing ")" that matches "eval(".
    const evalArgsStr = extractBalanced(result, evalIdx + "eval".length);
    if (evalArgsStr === null) { searchFrom = fnIdx + marker.length; continue; }
    const evalEndIdx = evalIdx + "eval(".length + evalArgsStr.length + 1; // one past matching ")"

    try {
      const args = splitTopLevelArgs(argsStr);
      // args[0]="'...'"  args[1]=base(number)  args[2]=count(number)  args[3]="'...'.split('|')" [,e,d]
      const packed = args[0] !== undefined ? unquoteJsString(args[0]) : null;
      const base = args[1] !== undefined ? parseInt(args[1].trim(), 10) : NaN;
      const count = args[2] !== undefined ? parseInt(args[2].trim(), 10) : NaN;
      const keywordsLiteralMatch = args[3] !== undefined ? args[3].match(/^\s*('(?:[^'\\]|\\.)*'|"(?:[^"\\]|\\.)*")/) : null;
      const keywordsStr = keywordsLiteralMatch ? unquoteJsString(keywordsLiteralMatch[1]) : null;

      if (packed !== null && keywordsStr !== null && Number.isFinite(base) && Number.isFinite(count)) {
        const k = keywordsStr.split("|");
        const toS = (n: number, b: number): string => {
          const c = "0123456789abcdefghijklmnopqrstuvwxyz";
          return n < b ? c[n] : toS(Math.floor(n / b), b) + c[n % b];
        };
        let unpacked = packed;
        for (let i = count - 1; i >= 0; i--) {
          if (k[i]) unpacked = unpacked.replace(new RegExp("\\b" + toS(i, base) + "\\b", "g"), k[i]);
        }
        result = result.slice(0, evalIdx) + unpacked + result.slice(evalEndIdx);
        found = true;
        searchFrom = evalIdx + unpacked.length;
        continue;
      }
    } catch {}
    searchFrom = Math.max(callCloseIdx, fnIdx + marker.length);
  }
  return found ? result : null;
}

function parseVideoUrl(html: string): { url: string; type: "hls" | "mp4" } | null {
  const unpacked = unpackPacked(html);
  const alts = [
    html,
    html.replace(/\\\/\//g, "//").replace(/\\\//g, "/").replace(/\\"/g, '"'),
    html.replace(/\\u003[Cc]/g, "<").replace(/\\u003[Ee]/g, ">"),
    html.replace(/\\n/g, "\n").replace(/\\t/g, "\t"),
    ...(unpacked ? [unpacked] : []),
  ];
  for (const text of alts) {
    const m3u8Pats = [
      // Quoted keys: "file":"url"
      /"(?:file|src|url|source|hls|videoUrl|streamUrl)"\s*:\s*"(https?:\/\/[^"\\]+\.m3u8[^"\\]*)"/i,
      /'(?:file|src|url|source)'\s*:\s*'(https?:\/\/[^'\\]+\.m3u8[^'\\]*)'/i,
      // Unquoted keys (after JS unpacking): file:"url" or src:'url'
      /\b(?:file|src|url|source|hls|videoUrl|streamUrl)\s*:\s*["'`](https?:\/\/[^"'`\s]+\.m3u8[^"'`\s]*)["'`]/i,
      /<source[^>]+src=["'](https?:\/\/[^"']+\.m3u8[^"']*)["']/i,
      /['"](https?:\/\/[^\s"'<>\\]+\.m3u8(?:\?[^\s"'<>\\]*)?)["']/i,
      /https?:\/\/[^\s"'<>\\,\)]+\.m3u8(?:\?[^\s"'<>\\,\)]*)?/i,
    ];
    for (const p of m3u8Pats) {
      const m = text.match(p);
      if (m) {
        const url = (m[1] || m[0]).replace(/[\\,;\)\s]+$/, "").replace(/\\n.*/s, "");
        if (url.startsWith("http") && url.length > 20) return { url, type: "hls" };
      }
    }
    const mp4Pats = [
      /"(?:file|src|url|source|videoUrl|mp4)"\s*:\s*"(https?:\/\/[^"\\]+\.mp4[^"\\]*)"/i,
      /'(?:file|src|url|source)'\s*:\s*'(https?:\/\/[^'\\]+\.mp4[^'\\]*)'/i,
      /\b(?:file|src|url|source|videoUrl|mp4)\s*:\s*["'`](https?:\/\/[^"'`\s]+\.mp4[^"'`\s]*)["'`]/i,
      /<source[^>]+src=["'](https?:\/\/[^"']+\.mp4[^"']*)["']/i,
      /['"](https?:\/\/[^\s"'<>\\]+\.mp4(?:\?[^\s"'<>\\]*)?)["']/i,
    ];
    for (const p of mp4Pats) {
      const m = text.match(p);
      if (m) {
        const url = (m[1] || m[0]).replace(/[\\,;\)\s]+$/, "");
        if (url.startsWith("http") && url.length > 20 &&
            !url.match(/\/(ads?|banner|track|pixel|promo|thumb|poster)\//i)) {
          return { url, type: "mp4" };
        }
      }
    }
    // DASH manifests (.mpd)
    const mpdPats = [
      /"(?:file|src|url|source|dash|mpd)[^"]*"\s*:\s*"(https?:\/\/[^"\\]+\.mpd[^"\\]*)"/i,
      /\b(?:file|src|url|dash|mpd)\s*:\s*["'`](https?:\/\/[^"'`\s]+\.mpd[^"'`\s]*)["'`]/i,
      /['"](https?:\/\/[^\s"'<>\\]+\.mpd(?:\?[^\s"'<>\\]*)?)["']/i,
    ];
    for (const p of mpdPats) {
      const m = text.match(p);
      if (m) {
        const url = (m[1] || m[0]).replace(/[\\,;\)\s]+$/, "");
        if (url.startsWith("http") && url.length > 20) return { url, type: "mp4" }; // treat as mp4 stream
      }
    }
    // WebM
    const webmPats = [
      /"(?:file|src|url|source)[^"]*"\s*:\s*"(https?:\/\/[^"\\]+\.webm[^"\\]*)"/i,
      /['"](https?:\/\/[^\s"'<>\\]+\.webm(?:\?[^\s"'<>\\]*)?)["']/i,
    ];
    for (const p of webmPats) {
      const m = text.match(p);
      if (m) {
        const url = (m[1] || m[0]).replace(/[\\,;\)\s]+$/, "");
        if (url.startsWith("http") && url.length > 20) return { url, type: "mp4" };
      }
    }
  }
  return null;
}

function parseStreamtape(html: string): { url: string; type: "mp4" } | null {
  try {
    // --- Pattern A: الصيغة الجديدة (2025+) ---
    // innerHTML = '//str' + '' + ('xcdeamtape.com/get_video?...&token=T').substring(1).substring(2)
    // أو: innerHTML = '//str' + ('defgeamtape.com/get_video?...').substring(4)
    // الحل: استخرج الـ prefix + الـ garbled string + عمليات substring ثم طبّقها
    const substRe = /["'`]([^"'`]{1,10})["'`]\s*(?:\+\s*["'`][^"'`]{0,20}["'`]\s*)*\+\s*\(\s*["'`]([A-Za-z0-9+/=]{0,20}[A-Za-z]*(?:tape|stre)[^"'`]*)["'`]\s*\)((?:\.substring\(\d+\))*)/gm;
    for (const m of html.matchAll(substRe)) {
      const prefix = m[1];
      let garbled  = m[2];
      const ops    = m[3] || "";
      for (const s of ops.matchAll(/\.substring\((\d+)\)/g)) {
        garbled = garbled.substring(parseInt(s[1]));
      }
      const combined = (prefix + garbled).replace(/\s/g, "");
      const url = combined.startsWith("//") ? "https:" + combined
                : combined.startsWith("/")  ? "https://streamtape.com" + combined
                : combined;
      if ((url.includes("streamtape.com") || url.includes("streamtape.to")) && url.includes("get_video")) {
        return { url, type: "mp4" };
      }
    }

    // --- Pattern B: الصيغة الكلاسيكية --- innerHTML = "part1" + "part2"
    const m1 = html.match(/getElementById\(['"]\S+['"]\)\.innerHTML\s*=\s*["']([^"']+)["']\s*\+\s*["']([^"']+)["']/);
    if (m1) {
      const combined = (m1[1] + m1[2]).replace(/\s/g, "");
      const url = combined.startsWith("//") ? "https:" + combined
                : combined.startsWith("/")  ? "https://streamtape.com" + combined
                : combined;
      if (url.includes("streamtape") || url.includes("get_video")) return { url, type: "mp4" };
    }

    // --- Pattern C: var A="//streamtape.../get_video" ; innerHTML = A + "token=..."
    const m2 = html.match(/var\s+\w+\s*=\s*["'](\/\/[^"']+get_video[^"']*)["'][^;]*;\s*[^;]*innerHTML\s*=\s*\w+\s*\+\s*["']([^"']*)["']/);
    if (m2) {
      const combined = (m2[1] + m2[2]).replace(/\s/g, "");
      return { url: "https:" + combined, type: "mp4" };
    }

    // --- Pattern E: محتوى مباشر في div#robotlink (2025+) ---
    // <div id="robotlink" style="display:none;">/streamtape.to/get_video?id=...&token=...</div>
    const mRobot = html.match(/id=["']robotlink["'][^>]*>([^<]+)/);
    if (mRobot) {
      let raw = mRobot[1].trim();
      // /streamtape.to/get_video?... → https://streamtape.to/get_video?...
      if (raw.startsWith("/") && !raw.startsWith("//")) raw = "https:/" + raw;
      else if (raw.startsWith("//")) raw = "https:" + raw;
      if (raw.includes("get_video")) return { url: raw, type: "mp4" };
    }

    // --- Pattern D: get_video?id=...&token=... مباشراً في سياق JS ---
    // نبحث فقط في سياق JS (بعد إزالة محتوى divs لتجنب الـ token المزيّف)
    const jsSection = html.replace(/<div[^>]*>.*?<\/div>/gis, "");
    const m3 = jsSection.match(/get_video\?id=[^&"'<\s]+&expires=\d+(?:&ip=[^&"'<\s]+)?&token=[^&"'<>\s;)]+/);
    if (m3) return { url: "https://streamtape.com/" + m3[0], type: "mp4" };

  } catch {}
  return null;
}

function parseStreamwish(html: string): { url: string; type: "hls" | "mp4" } | null {
  const unpacked = unpackPacked(html);
  const texts = unpacked ? [unpacked, html] : [html];
  const pats = [
    /sources\s*:\s*\[\s*\{[^}]*file\s*:\s*["'`](https?:\/\/[^"'`]+)["'`]/i,
    /jwplayer\([^)]+\)\.setup\s*\([^{]*\{[^}]*file\s*:\s*["'`](https?:\/\/[^"'`]+)["'`]/i,
    /["']file["']\s*:\s*["'`](https?:\/\/[^"'`]+\.m3u8[^"'`]*)["'`]/i,
    /\bfile\s*:\s*["'`](https?:\/\/[^"'`\s]+\.m3u8[^"'`\s]*)["'`]/i,
    /['"](https?:\/\/[^\s"'<>\\]+\.m3u8(?:\?[^\s"'<>\\]*)?)["']/i,
  ];
  for (const text of texts) {
    for (const p of pats) {
      const m = text.match(p);
      if (m) {
        const url = m[1];
        if (url.includes(".m3u8")) return { url, type: "hls" };
        if (url.includes(".mp4")) return { url, type: "mp4" };
      }
    }
  }
  return null;
}

function parseMp4Upload(html: string): string | null {
  const m = html.match(/\bsrc\s*:\s*["'](https?:\/\/[^"']+\.mp4[^"']*)["']/i);
  if (m?.[1]?.startsWith("http")) return m[1];
  return null;
}

function parseUqloadHls(html: string): string | null {
  // Uqload يشفّر الـ player setup بـ Dean Edwards packer
  const re = /eval\(function\(p,a,c,k,e,d?\)\{[\s\S]+?\}\('([\s\S]+?)',(\d+),(\d+),'([\s\S]+?)'\.split/;
  const m = html.match(re);
  if (!m) return null;
  let [, p, a, c, k] = m as [string, string, string, string, string];
  const base = parseInt(a), count = parseInt(c);
  const keys = k.split("|");
  let decoded = p;
  let i = count;
  while (i--) if (keys[i]) decoded = decoded.replace(new RegExp("\\b" + i.toString(base) + "\\b", "g"), keys[i]);
  // استخرج file URL من jwplayer sources
  const fm = decoded.match(/['"]file['"]\s*:\s*['"]( https?:\/\/[^'"]+)['"]/);
  if (fm) return fm[1].trim();
  const fm2 = decoded.match(/file["']?\s*:\s*["'](https?:\/\/[^"']+)["']/);
  return fm2 ? fm2[1].trim() : null;
}

function anifoxQualityRank(quality: string): number {
  const q = quality.toLowerCase();
  return q.includes("1080") || q.includes("fhd") ? 14
    : q.includes("720") || q.includes("hd") ? 10
    : q.includes("480") || q.includes("sd") ? 7
    : 6;
}

/* AW returns quality in several fields and occasionally embeds it in the
 * server name or URL. Keep one canonical tier so availability and playback
 * use the same picker rows. */
function normalizeAwQuality(value: string): "1080p" | "720p" | "480p" | "360p" {
  const q = String(value || "").toLowerCase();
  if (/(?:2160|4k|1080|fhd)/i.test(q)) return "1080p";
  if (/(?:720|hd)/i.test(q)) return "720p";
  if (/(?:480|sd)/i.test(q)) return "480p";
  return "360p";
}

async function extractAnifoxExternal(
  pageUrl: string,
  quality: string,
  sourceName: string,
): Promise<UnifiedSource | null> {
  const lower = pageUrl.toLowerCase();
  if (lower.includes("yandex.com") || lower.includes("yadi.sk")) return null;
  try {
    const r = await fetchSourceWithRetry(pageUrl, {
      headers: { ...BASE_HDRS, Referer: "https://max-panel.monster/" },
      redirect: "follow",
    }, 12_000);
    if (!r) return null;
    const html = await r.text();
    let directUrl: string | null = null;
    let directType: "mp4" | "hls" = "mp4";
    let referer = pageUrl;

    if (lower.includes("mp4upload.com")) {
      directUrl = parseMp4Upload(html);
    } else if (lower.includes("mediafire.com")) {
      directUrl = await extractMediafireDirect(pageUrl);
    } else if (lower.includes("uqload.is") || lower.includes("uqload.co") || lower.includes("uqload.com")) {
      directUrl = parseUqloadHls(html);
      referer = "https://uqload.is/";
      if (directUrl) directType = "hls";
    } else if (/\.(mp4|mkv|webm)(?:[?#]|$)/i.test(pageUrl) || lower.includes("archive.org/download/")) {
      directUrl = pageUrl;
      referer = "https://archive.org/";
    }
    if (!directUrl) return null;
    if (!(await probeAnifoxDirectUrl(directUrl, referer))) {
      console.log(`[ANIFOX] dead direct URL skipped: ${directUrl.slice(0, 100)}`);
      return null;
    }

    // HLS → hls-proxy ، MP4 → video-proxy
    const proxied = directType === "hls"
      ? `/api/anime/hls-proxy?url=${encodeURIComponent(directUrl)}&ref=${encodeURIComponent(referer)}`
      : `/api/anime/video-proxy?url=${encodeURIComponent(directUrl)}&ref=${encodeURIComponent(referer)}`;

    return {
      name: `ANIFOX · ${sourceName} · ${quality || "HD"}`,
      url: pageUrl,
      quality: quality || "HD",
      qualityRank: anifoxQualityRank(quality),
      site: "anifox",
      directUrl: proxied,
      directType,
      headers: { Referer: referer },
    };
  } catch { return null; }
}

/**
 * ANIFOX may keep a catalog row alive after the underlying file disappears.
 * Probe the extracted file itself and reject HTML error pages, 404/410, and
 * upstream 5xx responses before returning it or writing it to source_cache.
 */
async function probeAnifoxDirectUrl(url: string, referer?: string): Promise<boolean> {
  try {
    const r = await fetch(url, {
      headers: {
        ...BASE_HDRS,
        ...(referer ? { Referer: referer } : {}),
        Range: "bytes=0-2048",
      },
      signal: AbortSignal.timeout(7000),
      redirect: "follow",
    });
    if (r.status === 404 || r.status === 410 || r.status >= 500) return false;
    const contentType = (r.headers.get("content-type") || "").toLowerCase();
    if (contentType.includes("text/html") || contentType.includes("application/json")) return false;
    if (!r.ok && r.status !== 206) return false;
    if (r.body) await r.body.cancel().catch(() => {});
    return true;
  } catch {
    return false;
  }
}

function unwrapSourceProxyUrl(value: string): string | null {
  if (!value.startsWith("/api/")) return value.startsWith("http") ? value : null;
  try {
    const query = value.split("?")[1] || "";
    const inner = new URLSearchParams(query).get("url");
    return inner && /^https?:\/\//i.test(inner) ? inner : null;
  } catch {
    return null;
  }
}

async function filterAnifoxCachedSources(sources: UnifiedSource[]): Promise<UnifiedSource[]> {
  const checked = await Promise.allSettled(sources.map(async source => {
    const raw = source.directUrl ? unwrapSourceProxyUrl(source.directUrl) : null;
    if (!raw) return null;
    const referer = source.headers?.Referer;
    return await probeAnifoxDirectUrl(raw, referer) ? source : null;
  }));
  return checked
    .filter((item): item is PromiseFulfilledResult<UnifiedSource | null> => item.status === "fulfilled")
    .map(item => item.value)
    .filter((source): source is UnifiedSource => source !== null);
}

// ── ANIFOX catalog cache — يمنع جلب 9 صفحات عند كل طلب (كان يسبب timeout 75s) ──
const _anifoxCatalog: { items: Array<{ content_id: string; content_title: string }>; ts: number } = {
  items: [], ts: 0,
};
let _anifoxCatalogInFlight: Promise<Array<{ content_id: string; content_title: string }>> | null = null;
const ANIFOX_CATALOG_TTL = 24 * 3_600_000; // 24h — الكاتلوج لا يتغير كثيراً

async function _getAnifoxCatalog(): Promise<Array<{ content_id: string; content_title: string }>> {
  if (_anifoxCatalog.items.length && Date.now() - _anifoxCatalog.ts < ANIFOX_CATALOG_TTL) {
    return _anifoxCatalog.items;
  }
  if (_anifoxCatalogInFlight) return _anifoxCatalogInFlight;

  _anifoxCatalogInFlight = (async () => {
  const all: Array<{ content_id: string; content_title: string }> = [];
  // The endpoint accepts the complete catalog in one bounded response. This
  // avoids the old 10-page fan-out that made the availability check time out.
  for (const start of [0]) {
    const starts = [start];
    const pages = await Promise.allSettled(starts.map(start => {
      const body = new URLSearchParams({ start: String(start), limit: "5000", genre_id: "0", order_by: "content_title", order_direction: "ASC" });
      return fetchSourceWithRetry("https://max-panel.monster/api/Content/searchContent", {
        method: "POST",
        headers: { "Unique-Key": "flix!123", Accept: "application/json", "Content-Type": "application/x-www-form-urlencoded" },
        body,
      }, 14_000).then(r => r ? r.json() : null).catch(() => null);
    }));
    let lastPageFull = false;
    for (const p of pages) {
      if (p.status !== "fulfilled" || !p.value) continue;
      const items: any[] = Array.isArray(p.value?.data) ? p.value.data : [];
      if (items.length) {
        items.forEach(item => all.push({ content_id: String(item.content_id || ""), content_title: String(item.content_title || "") }));
        if (items.length >= 500) lastPageFull = true;
      }
    }
    if (!lastPageFull) break; // الكاتلوج انتهى قبل 4000
  }
  // Do not replace a complete catalog with a partial result after a transient
  // batch failure; partial catalogs cause false "no match" responses.
  const deduped = [...new Map(
    all.filter(item => item.content_id && item.content_title)
      .map(item => [item.content_id, item]),
  ).values()];
  if (deduped.length >= 100 || !_anifoxCatalog.items.length) {
    _anifoxCatalog.items = deduped;
    _anifoxCatalog.ts = Date.now();
  }
  console.log(`[ANIFOX] catalog cached: ${_anifoxCatalog.items.length} titles`);
  return _anifoxCatalog.items;
  })();

  try {
    return await _anifoxCatalogInFlight;
  } finally {
    _anifoxCatalogInFlight = null;
  }
}

async function getAnifoxSources(
  title: string,
  english: string | null,
  ep: number,
  variants: string[] = [],
  anilistId?: number,
  availabilityOnly = false,
): Promise<UnifiedSource[]> {
  const out: UnifiedSource[] = [];
  const seen = new Set<string>();
  const queries = titleQueries(title, english, variants);
  try {
    // ── البحث من الكاش (< 1ms بعد أول جلب) بدل 9 HTTP requests متسلسلة ──
    const [catalog, animeRecord] = await Promise.all([
      _getAnifoxCatalog(),
      ensureAnimeSlugRecord(anilistId, [title, english || "", ...variants]),
    ]);
    const storedSlugs = animeRecord?.slugs ?? [];
    const candidates: Array<{ content_id: string; content_title: string; score: number }> = [];
    const querySlugSets = queries.map(query => new Set(buildAnimeSlugs([query])));
    const storedSlugSet = new Set(storedSlugs);
    const catalogSlugSets = new Map<string, Set<string>>();
    for (const item of catalog) {
      const titleScore = Math.max(...queries.map(q =>
        Math.max(similarity(q, item.content_title), asciiSimilarity(item.content_title, q)),
      ));
      let itemSlugSet = catalogSlugSets.get(item.content_id);
      if (!itemSlugSet) {
        itemSlugSet = new Set(buildAnimeSlugs([item.content_title]));
        catalogSlugSets.set(item.content_id, itemSlugSet);
      }
      const slugScore = storedSlugs.length
        ? slugSimilarityFromSets(storedSlugSet, itemSlugSet)
        : Math.max(...querySlugSets.map(querySet => slugSimilarityFromSets(querySet, itemSlugSet)));
      const score = Math.max(titleScore, slugScore);
      if (score > 0.50) candidates.push({ ...item, score });
    }
    candidates.sort((a, b) => b.score - a.score);
    const best = candidates[0];
    if (!best?.content_id) { console.log(`[ANIFOX] no match ≥0.50 for "${queries.join(" / ")}"`); return []; }
    console.log(`[ANIFOX] match: "${best.content_title}" score=${best.score.toFixed(2)}`);

    const seasonBody = new URLSearchParams({
      user_id: "",
      content_id: best.content_id,
      lazy: "0",
    });
    const seasonRes = await fetchSourceWithRetry("https://max-panel.monster/api/Content/getSeasonByContentID", {
      method: "POST",
      headers: { "Unique-Key": "flix!123", Accept: "application/json", "Content-Type": "application/x-www-form-urlencoded" },
      body: seasonBody,
    }, 16_000);
    if (!seasonRes) return [];
    const seasonJson = await seasonRes.json().catch(() => null) as any;
    const episodes = (Array.isArray(seasonJson?.data) ? seasonJson.data : [])
      .flatMap((s: any) => Array.isArray(s?.episodes) ? s.episodes : []);
    const episode = episodes.find((e: any) => Number(e?.episode_id) && Number(e?.episode_title?.match(/\d+/)?.[0]) === ep)
      || episodes.find((e: any) => Number(e?.episode_id) && String(e?.episode_title || "").includes(`الحلقة ${ep}`));
    if (!episode?.episode_id) return [];

    // المصادر مضمّنة في getSeasonByContentID مباشرةً — لا حاجة لـ getSourceByEpisodeID
    const allSources = Array.isArray(episode.sources) ? episode.sources : [];
    if (availabilityOnly) {
      return allSources
        .filter((source: any) => String(source?.source || source?.source_url || "").trim())
        .map((source: any) => {
          const quality = String(source?.source_quality || "HD");
          const name = String(source?.source_title || "Server");
          return {
            name: `ANIFOX · ${name} · ${quality}`, url: "", quality,
            qualityRank: anifoxQualityRank(quality), site: "anifox", verified: true,
          } as UnifiedSource;
        });
    }
    // ── فلتر المصادر الموثوقة فقط — نتجاهل الـ embeds وصفحات الهبوط غير المدعومة ──
    // مصادر مدعومة: archive.org · mediafire · mp4upload · uqload · direct CDN (.mp4/.mkv/.webm)
    const ANIFOX_TRUSTED = (url: string) => {
      const l = url.toLowerCase();
      return (
        /archive\.org\/download\//i.test(l) ||        // Archive.org — MP4 مباشر موثوق
        /\.(?:mp4|mkv|webm)(?:[?#]|$)/i.test(l) ||  // أي CDN مباشر (server.sanime.net وغيره)
        l.includes("mediafire.com") ||                // MediaFire — تحتاج page fetch → direct link
        l.includes("mp4upload.com") ||                // MP4Upload — HTML parse → CDN link
        l.includes("uqload.is") || l.includes("uqload.co") || l.includes("uqload.com") // Uqload
      );
    };
    const jobs = allSources
      .filter((s: any) => {
        if (!s?.source) return false;
        const url = String(s.source);
        if (/yandex\.(com|ru)|yadi\.sk/i.test(url)) return false;
        if (!ANIFOX_TRUSTED(url)) {
          console.log(`[ANIFOX] skip unsupported host: ${url.slice(0, 60)}`);
          return false;
        }
        return true;
      })
      .map(async (s: any) => {
        const pageUrl = String(s.source);
        const quality = String(s.source_quality || "HD");
        const name = String(s.source_title || "Server");
        let result: UnifiedSource | null = null;
        if (/archive\.org\/download\/.*\.(?:mp4|mkv|webm)/i.test(pageUrl) || /\.(?:mp4|mkv|webm)(?:[?#]|$)/i.test(pageUrl)) {
          const isArchive = pageUrl.includes("archive.org");
          const referer = isArchive ? "https://archive.org/" : pageUrl.split("/").slice(0, 3).join("/") + "/";
          if (!(await probeAnifoxDirectUrl(pageUrl, referer))) {
            console.log(`[ANIFOX] dead direct source skipped: ${pageUrl.slice(0, 100)}`);
            return;
          }
          result = {
            name: `ANIFOX · ${name} · ${quality}`,
            url: pageUrl,
            quality,
            qualityRank: anifoxQualityRank(quality) + 2,
            site: "anifox",
            directUrl: `/api/anime/video-proxy?url=${encodeURIComponent(pageUrl)}&ref=${encodeURIComponent(referer)}`,
            directType: "mp4",
            headers: { Referer: referer },
          };
        } else {
          result = await extractAnifoxExternal(pageUrl, quality, name);
        }
        if (result && !seen.has(result.directUrl || result.url)) {
          seen.add(result.directUrl || result.url);
          out.push(result);
        }
      });
    await Promise.allSettled(jobs);
    out.sort((a, b) => b.qualityRank - a.qualityRank);
    console.log(`[ANIFOX] "${best.content_title}" ep${ep} → ${out.length} direct sources`);
  } catch (e: any) {
    console.warn("[ANIFOX]", e?.message || e);
  }
  return out;
}

function parseMegamax(html: string): { url: string; type: "hls" | "mp4" } | null {
  const pats = [
    /["']sources["']\s*:\s*\[.*?["']file["']\s*:\s*["'](https?:\/\/[^"']+)["']/is,
    /sources\s*=\s*\[.*?file\s*:\s*["'](https?:\/\/[^"']+)["']/is,
    /["']src["']\s*:\s*["'](https?:\/\/[^"']+\.(?:mp4|m3u8)[^"']*)["']/i,
  ];
  for (const p of pats) {
    const m = html.match(p);
    if (m) {
      const url = m[1];
      return { url, type: url.includes(".m3u8") ? "hls" : "mp4" };
    }
  }
  return null;
}

// ── share4max.com / megamax.me — Inertia.js stream extraction ──
async function parseShareMaxStreams(
  host: string,
  fileId: string,
  referer: string,
): Promise<{ url: string; type: "hls" | "mp4" } | null> {
  const iframeUrl = `https://${host}/iframe/${fileId}`;
  const FALLBACK_VERSION = "d98bcc9c79d1c5ff36a86cc41dfcd275";
  try {
    const pageRes = await fetch(iframeUrl, {
      headers: { "User-Agent": BROWSER_UA, Referer: referer, Accept: "text/html" },
      signal: AbortSignal.timeout(12000),
      redirect: "follow",
    });
    if (!pageRes.ok) return null;
    const pageHtml = await pageRes.text();
    if (isCloudflareBlock(pageHtml)) return null;
    const version = pageHtml.match(/"version"\s*:\s*"([a-f0-9]{20,})"/)?.[1] || FALLBACK_VERSION;
    const rawCookies = pageRes.headers.getSetCookie?.() ?? [pageRes.headers.get("set-cookie") ?? ""];
    const cookieStr = rawCookies.map(c => c.split(";")[0]).filter(Boolean).join("; ");

    const reload = await fetch(iframeUrl, {
      headers: {
        "User-Agent": BROWSER_UA,
        "X-Inertia": "true",
        "X-Inertia-Version": version,
        "X-Inertia-Partial-Data": "streams",
        "X-Inertia-Partial-Component": "files/mirror/video",
        Referer: iframeUrl,
        Accept: "application/json, text/plain, */*",
        ...(cookieStr ? { Cookie: cookieStr } : {}),
      },
      signal: AbortSignal.timeout(14000),
    });
    if (!reload.ok) return null;
    const data = (await reload.json()) as any;

    const streams = data?.props?.streams;
    if (streams?.status !== "success" || !Array.isArray(streams.data) || !streams.data.length) {
      return null;
    }

    for (const quality of streams.data) {
      for (const mirror of (quality.mirrors ?? [])) {
        let link: string = mirror.link ?? "";
        if (link.startsWith("//")) link = "https:" + link;
        if (!link.startsWith("http")) continue;
        const drv: string = mirror.driver ?? "";
        // ── ok.ru: fastest reliable direct HLS ──────────────────────────────
        if (drv === "ok" || link.includes("ok.ru/videoembed/")) {
          const okm = link.match(/\/videoembed\/(\d+)/);
          if (okm) {
            try {
              const vids = await extractOkRuVideo(okm[1]);
              const hlsSrc = vids.find((v: any) => v.type === "hls" && v.url);
              if (hlsSrc) return { url: hlsSrc.url, type: "hls" };
              const bestMp4 = vids.filter((v: any) => v.url && v.type !== "hls")
                .sort((a: any, b: any) => {
                  const rank = (n: string) =>
                    n.includes("1080") || n.includes("fhd") ? 4 :
                    n.includes("720")  || n.includes("hd")  ? 3 :
                    n.includes("480")  || n.includes("sd")  ? 2 : 1;
                  return rank(b.name.toLowerCase()) - rank(a.name.toLowerCase());
                })[0];
              if (bestMp4) return { url: bestMp4.url, type: "mp4" };
            } catch {}
          }
        } else if (drv === "streamhg" || link.includes("streamwish")) {
          try {
            const r = await fetch(link, {
              headers: { "User-Agent": BROWSER_UA, Referer: iframeUrl },
              signal: AbortSignal.timeout(10000),
              redirect: "follow",
            });
            if (r.ok) {
              const v = parseStreamwish(await r.text());
              if (v?.url) return v;
            }
          } catch {}
        } else if (drv === "streamtape") {
          try {
            const r = await fetch(link, {
              headers: { "User-Agent": BROWSER_UA, Referer: iframeUrl },
              signal: AbortSignal.timeout(10000),
              redirect: "follow",
            });
            if (r.ok) {
              const v = parseStreamtape(await r.text());
              if (v?.url) return v;
            }
          } catch {}
        }
      }
    }
  } catch {}
  return null;
}

function extractIframeSrc(html: string, baseUrl: string): string | null {
  const re = /<iframe[^>]+(?:src|data-src)=["']([^"']+)["'][^>]*>/gi;
  let m: RegExpExecArray | null;
  const skip = ["facebook.com","twitter.com","google.com","googleapis.com","youtube-nocookie","ads","doubleclick","analytics"];
  const origin = (() => { try { return new URL(baseUrl).hostname; } catch { return ""; } })();
  while ((m = re.exec(html)) !== null) {
    let src = m[1].trim();
    if (!src || src === "about:blank" || src.startsWith("javascript:")) continue;
    if (skip.some(s => src.includes(s))) continue;
    if (src.includes(origin)) continue;
    if (src.startsWith("//")) src = "https:" + src;
    if (src.startsWith("/")) { try { src = new URL(src, baseUrl).href; } catch { continue; } }
    if (src.startsWith("http")) return src;
  }
  return null;
}

// ── vidhls.com parser ──────────────────────────────────────────────
// The player page includes a FirePlayer() call with the full video config inline.
// Config has: videoUrl (relative path), videoServer (key), hostList (key→[hostname])
// Constructed URL: https://{hostList[videoServer][0]}{videoUrl}
// Call format: FirePlayer(vhash, {config}) OR FirePlayer(vhash, {config}, true/false)
// The site has 14 CDN servers — probes each until one returns 200.
async function parseVidHls(
  html: string,
  referer?: string,
): Promise<{ url: string; type: "hls" | "mp4" } | null> {
  // Find FirePlayer( call and extract the config object using a JSON-aware scanner.
  // Non-greedy regex breaks on nested JSON objects; bracket counting alone breaks when
  // '}' appears inside a quoted string value. This scanner tracks string context properly.
  const fpIdx = html.search(/FirePlayer\s*\(/);
  if (fpIdx === -1) return null;
  // Skip to the opening '{' of the config argument (second arg after vhash)
  const objStart = html.indexOf("{", fpIdx);
  if (objStart === -1) return null;
  // JSON-aware bracket scan: ignore '{' and '}' inside string literals
  let depth = 0, configEnd = -1;
  let inStr = false, escNext = false;
  for (let i = objStart; i < html.length; i++) {
    const ch = html[i];
    if (escNext) { escNext = false; continue; }
    if (ch === "\\" && inStr) { escNext = true; continue; }
    if (ch === '"') { inStr = !inStr; continue; }
    if (inStr) continue;
    if (ch === "{") depth++;
    else if (ch === "}") { depth--; if (depth === 0) { configEnd = i; break; } }
  }
  if (configEnd === -1) return null;
  const configStr = html.slice(objStart, configEnd + 1);
  try {
    const config = JSON.parse(configStr);
    const rawVideoUrl: string = config.videoUrl || "";
    if (!rawVideoUrl) return null;
    const cleanUrl = rawVideoUrl.replace(/\\\//g, "/");
    const type: "hls" | "mp4" = cleanUrl.includes(".mp4") ? "mp4" : "hls";
    const videoServer: string = String(config.videoServer ?? "1");
    const hostList: Record<string, string[]> = config.hostList || {};

    // Collect CDN hosts: selected server first, then all others
    const seen = new Set<string>();
    const allHosts: string[] = [];
    for (const key of [videoServer, ...Object.keys(hostList)]) {
      for (const h of (hostList[key] ?? [])) {
        if (!seen.has(h)) { seen.add(h); allHosts.push(h); }
      }
    }
    if (!allHosts.length) return null;

    const hdrs: Record<string, string> = {
      "User-Agent": BROWSER_UA,
      ...(referer ? { Referer: referer } : {}),
    };

    // Probe each CDN host (max 6 attempts) for a working URL
    for (const host of allHosts.slice(0, 6)) {
      const fullUrl = `https://${host}${cleanUrl}`;
      const status = await safeHead(fullUrl, hdrs);
      if (status === 200 || status === 206 || status === 301 || status === 302) {
        return { url: fullUrl, type };
      }
    }

    // Fallback: return first host (may still work from browser with different IP)
    return { url: `https://${allHosts[0]}${cleanUrl}`, type };
  } catch {
    return null;
  }
}

// ────── VIDHIDEPRO / FILELIONS CDN ──────────────────────────────────
// vidhidepro.com (FileLions) uses packed JS with var links={hls4,hls2,hls3}
// hls4 is a relative /stream/... URL that follows redirects to callistanise.com CDN
function parseVidhidePro(html: string): string | null {
  // Enhanced packed-JS regex that handles escaped single-quotes inside the encoded string
  const re = /eval\(function\(p,a,c,k,e,?d?\)\{[^}]+\}\('((?:[^'\\]|\\[\s\S])*)',\s*(\d+)\s*,\s*(\d+)\s*,\s*'((?:[^'\\]|\\[\s\S])*)'\s*\.split\('\|'\)/;
  const m = html.match(re);
  if (!m) return null;
  try {
    const packed = m[1].replace(/\\'/g, "'");
    const base   = parseInt(m[2]);
    const count  = parseInt(m[3]);
    const k      = m[4].replace(/\\'/g, "'").split("|");
    const toS = (n: number, b: number): string => {
      const chars = "0123456789abcdefghijklmnopqrstuvwxyz";
      return n < b ? chars[n] : toS(Math.floor(n / b), b) + chars[n % b];
    };
    let unpacked = packed;
    for (let i = count - 1; i >= 0; i--) {
      if (k[i]) unpacked = unpacked.replace(new RegExp("\\b" + toS(i, base) + "\\b", "g"), k[i]);
    }
    // Extract var links={hls4:"/stream/...", hls2:"https://...m3u8?..."}
    const linksM = unpacked.match(/var\s+links\s*=\s*\{([^}]+)\}/);
    if (linksM) {
      const ls = linksM[1];
      // hls4 is a stable relative URL (CDN redirects: vidhidepro→vidhidefast→callistanise)
      const hls4M = ls.match(/"hls4"\s*:\s*"(\/[^"]+)"/);
      const hls2M = ls.match(/"hls2"\s*:\s*"(https?:\/\/[^"]+\.m3u8[^"]*)"/);
      if (hls4M) return `https://vidhidepro.com${hls4M[1]}`;
      if (hls2M) return hls2M[1];
    }
    // Fallback: generic parseVideoUrl on the unpacked content
    return parseVideoUrl(unpacked)?.url ?? null;
  } catch { return null; }
}

async function extractVideoDeep(
  startUrl: string,
  referer?: string,
): Promise<{ url: string; type: "hls" | "mp4" } | null> {
  const visited = new Set<string>();
  let url = startUrl;
  let ref = referer || startUrl;
  for (let hop = 0; hop < 4; hop++) {
    if (visited.has(url)) break;
    visited.add(url);
    try {
      let html: string;
      // FileMoon و StreamWish و مشابهاتها تحجب Replit IP → نستخدم CF proxy (curl_cffi)
      const needsCfProxy = url.includes("filemoon") || url.includes("streamwish") ||
        url.includes("wishembed") || url.includes("swdyu") || url.includes("luluvdo");
      if (needsCfProxy) {
        const cfHtml = await cfProxyGet(url, ref, 14000);
        if (!cfHtml) break;
        html = cfHtml;
      } else {
        let origin = "";
        try { origin = new URL(url).origin; } catch {}
        const r = await fetch(url, {
          headers: { "User-Agent": BROWSER_UA, Referer: ref, Origin: origin, Accept: "text/html,*/*;q=0.9", "Accept-Language": "ar,en;q=0.9" },
          signal: AbortSignal.timeout(10000),
          redirect: "follow",
        });
        if (!r.ok) break;
        html = await r.text();
      }
      if (isCloudflareBlock(html)) break;
      if (url.includes("streamtape.com") || url.includes("streamtape.net")) {
        const v = parseStreamtape(html); if (v) return v;
      }
      if (url.includes("streamwish") || url.includes("wishembed") || url.includes("embedwish") ||
          url.includes("filemoon") ||
          url.includes("swdyu") || url.includes("awish") || url.includes("playerwish") ||
          url.includes("hlswish.com") || url.includes("vidspeed.org") ||
          url.includes("luluvdo.com") || url.includes("darkibox.com") || url.includes("hydracker.com") ||
          url.includes("1vid.xyz") || url.includes("1vid1shar.space") ||
          url.includes("uqload.is") || url.includes("uqload.co") ||
          url.includes("voe.sx") || url.includes("vidoza.net") ||
          url.includes("bigwarp.io") || url.includes("forafile.com") ||
          url.includes("anafast.com") || url.includes("listeamed.net") ||
          url.includes("fastvip.space") || url.includes("streamup.ws") ||
          url.includes("mxdrop.to") || url.includes("vidtube.one") ||
          url.includes("mp4plus.cyou") || url.includes("vidoba.cyou") ||
          url.includes("vidspeed.cyou") || url.includes("anafast.cyou") ||
          url.includes("hgcloud.to") || url.includes("stmruby.com") ||
          url.includes("bysekoze.com") || url.includes("vidaraa.cc") ||
          url.includes("playmogo.com") || url.includes("mixdrop.top") ||
          url.includes("mixdrop.ag") || url.includes("mixdrop.ch") ||
          url.includes("mixdrop.co")) {
        const v = parseStreamwish(html); if (v) return v;
      }
      if (url.includes("share4max.com/iframe/") || url.includes("megamax.me/iframe/")) {
        const m2 = url.match(/\/iframe\/([^/?#]+)/);
        if (m2) {
          let hn = "";
          try { hn = new URL(url).hostname; } catch {}
          const v = await parseShareMaxStreams(hn, m2[1], ref);
          if (v) return v;
          break;
        }
      }
      // vidhidepro.com / vidhidefast.com / filelions family = packed JS with var links={hls4,hls2}
      if (url.includes("vidhidepro.com/v/") || url.includes("filelions.online/v/") || url.includes("filelions.to/v/") ||
          url.includes("vidhidefast.com/v/") || url.includes("filelions.live/v/") || url.includes("vidhide.com/v/")) {
        const m3u8 = parseVidhidePro(html);
        if (m3u8) return { url: m3u8, type: "hls" };
      }
      if (url.includes("vidbm.com") || url.includes("uptostream.com") ||
          url.includes("vidlink") || url.includes("vidhide") || url.includes("streamlare")) {
        const v = parseMegamax(html); if (v) return v;
      }
      if (url.includes("vidhls.com/player/")) {
        const v = await parseVidHls(html, ref); if (v) return v;
      }
      // ── ok.ru / odnoklassniki videoembed ─────────────────────────
      if (url.includes("ok.ru/videoembed/") || url.includes("odnoklassniki.ru/videoembed/")) {
        const okm = url.match(/\/videoembed\/(\d+)/);
        if (okm) {
          try {
            const vids = await extractOkRuVideo(okm[1]);
            // Prefer HLS master (adaptive), fall back to best MP4
            const hlsSrc = vids.find(v => v.type === "hls" && v.name === "auto" && v.url);
            if (hlsSrc) return { url: hlsSrc.url, type: "hls" };
            const bestMp4 = vids.filter(v => v.url && v.type !== "hls")
              .sort((a, b) => {
                const rank = (n: string) =>
                  n.includes("1080") || n.includes("fhd") ? 4 :
                  n.includes("720")  || n.includes("hd")  ? 3 :
                  n.includes("480")  || n.includes("sd")  ? 2 : 1;
                return rank(b.name.toLowerCase()) - rank(a.name.toLowerCase());
              })[0];
            if (bestMp4) return { url: bestMp4.url, type: "mp4" };
          } catch {}
        }
        break; // don't follow iframes for ok.ru
      }
      // ── mp4upload — direct HTML parse (~800ms, confirmed 2026-07-24) ────
      // URL is in plain HTML: player.src({ type:"video/mp4", src:"https://a4.mp4upload.com:183/..." })
      // Rocket Loader obfuscates <script> types but leaves inline player.src() intact.
      if (url.includes("mp4upload.com/embed-")) {
        const m = html.match(/player\.src\s*\(\s*\{[^}]*src\s*:\s*["'](https?:[^"']+\.mp4[^"']*)/s)
               || html.match(/["']src["']\s*:\s*["'](https?:[^"']+\.mp4[^"']*)/);
        if (m) return { url: m[1], type: "mp4" };
        break;
      }
      // ── upvideo.to — TLS fingerprint blocked from any non-browser client ────
      if (url.includes("upvideo.to/e/")) break;
      const direct = parseVideoUrl(html);
      if (direct) return direct;
      const nextSrc = extractIframeSrc(html, url);
      if (!nextSrc) break;
      ref = url;
      url = nextSrc;
    } catch { break; }
  }
  return null;
}


// ════════════════════════════════════════════════════════════════════
//  SHAHIID-ANIME.NET scraper
// ════════════════════════════════════════════════════════════════════
const SHAHIID_BASE = "https://shahiid-anime.net";
const SHAHIID_HDRS: Record<string, string> = {
  ...BASE_HDRS,
  Referer: "https://shahiid-anime.net/",
};
const SHAHIID_EP_PER_PAGE = 54;

const shahiidSeriesCache = new Map<string, { url: string | null; ts: number }>();
const shahiidEpUrlCache  = new Map<string, { url: string | null; ts: number }>();
const shahiidSrcCache    = new Map<string, { sources: UnifiedSource[]; ts: number }>();

async function searchShahiid(query: string): Promise<Array<{ url: string; label: string }>> {
  const fd = new URLSearchParams({ action: "data_fetch", keyword: query });
  try {
    const r = await fetch(`${SHAHIID_BASE}/wp-admin/admin-ajax.php`, {
      method: "POST",
      headers: { ...SHAHIID_HDRS, "Content-Type": "application/x-www-form-urlencoded" },
      body: fd.toString(),
      signal: AbortSignal.timeout(10000),
    });
    if (!r.ok) return [];
    const html = await r.text();
    const results: Array<{ url: string; label: string }> = [];
    const seen = new Set<string>();
    const re = /href="(https?:\/\/shahiid-anime\.net\/(?:series|anime|serieses|seasonses|seasons)\/([^/"]+)\/?)"/gi;
    for (const m of html.matchAll(re)) {
      const url = m[1].replace(/\/?$/, "/");
      if (seen.has(url)) continue;
      seen.add(url);
      const slugLabel = decodeURIComponent(m[2]).replace(/-/g, " ");
      const nearby = html.slice(m.index!, m.index! + 400);
      const h2m = nearby.match(/<h2>([^<]{1,80})<\/h2>/i);
      const label = (h2m?.[1] || slugLabel).trim();
      results.push({ url, label });
    }
    return results;
  } catch { return []; }
}

async function resolveShahiidUrl(romaji: string, english?: string | null): Promise<string | null> {
  const cacheKey = romaji.toLowerCase().trim();
  const cached = shahiidSeriesCache.get(cacheKey);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.url;

  let best: string | null = null;
  let bestScore = 0;

  for (const q of [english, romaji].filter(Boolean) as string[]) {
    const results = await searchShahiid(q);
    for (const r of results) {
      const s = Math.max(
        similarity(r.label, romaji),
        english ? similarity(r.label, english) : 0,
      );
      if (s > bestScore && s > 0.40) { bestScore = s; best = r.url; }
    }
    if (best && bestScore > 0.60) break;
  }

  shahiidSeriesCache.set(cacheKey, { url: best, ts: Date.now() });
  return best;
}

async function resolveAllShahiidUrls(romaji: string, english?: string | null, isMovie = false, ctx?: MatchCtx): Promise<string[]> {
  const seen = new Set<string>();
  const all: Array<{ url: string; score: number }> = [];
  const MIN_SCORE = isMovie ? 0.65 : 0.52; // lower threshold since multiScore is more precise

  for (const q of [english, romaji].filter(Boolean) as string[]) {
    const results = await searchShahiid(q);
    for (const r of results) {
      if (seen.has(r.url)) continue;
      seen.add(r.url);
      let s: number;
      if (ctx) {
        s = multiScore(r.label, { ...ctx, scraper: "shahiid" }).score;
      } else {
        s = isMovie
          ? Math.max(strictMovieSimilarity(r.label, romaji), english ? strictMovieSimilarity(r.label, english) : 0)
          : Math.max(similarity(r.label, romaji), english ? similarity(r.label, english) : 0);
      }
      if (s > MIN_SCORE) all.push({ url: r.url, score: s });
    }
  }

  // Sort: higher score first, then prefer seasons/seasonses URLs (fastest to find episodes)
  all.sort((a, b) => {
    if (b.score !== a.score) return b.score - a.score;
    const aIsSeason = a.url.includes("/seasons") ? 1 : 0;
    const bIsSeason = b.url.includes("/seasons") ? 1 : 0;
    return bIsSeason - aIsSeason;
  });
  return all.map(x => x.url);
}

async function getShahiidSeasonsUrl(seriesUrl: string): Promise<string> {
  if (seriesUrl.includes("/anime/")) return seriesUrl;
  if (seriesUrl.includes("/seasonses/") || seriesUrl.includes("?serie=")) return seriesUrl;
  if (seriesUrl.includes("/seasons/") && !seriesUrl.includes("/serieses/")) return seriesUrl;

  try {
    const r = await fetch(seriesUrl, {
      headers: SHAHIID_HDRS,
      signal: AbortSignal.timeout(10000),
      redirect: "follow",
    });
    if (r.ok) {
      const html = await r.text();
      const jsRedir = html.match(/window\.location\s*=\s*["'](https?:\/\/shahiid-anime\.net\/seasonses\/?[^"']+)["']/i);
      if (jsRedir) return jsRedir[1];
      const hrefSeasonses = html.match(/href="(https?:\/\/shahiid-anime\.net\/seasonses\/[^"]+)"/i);
      if (hrefSeasonses) return hrefSeasonses[1];
      const seasonsHref = html.match(/href="(https?:\/\/shahiid-anime\.net\/seasons\/(?!(?:page|feed|tag|category|author)\/)[^"]+)"/i);
      if (seasonsHref) return seasonsHref[1].replace(/\/?$/, "/");
    }
  } catch {}

  return seriesUrl.replace(/\/(series|serieses|seasonses)\//, "/seasons/");
}

interface ShahiidServerBtn {
  post: string;
  serv: string;
  frameserver: string;
  serverCode: string;
  isFilm: string;
}

function parseShahiidButtons(html: string): ShahiidServerBtn[] {
  const servers: ShahiidServerBtn[] = [];
  const re = /<a[^>]*class="[^"]*buttosn[^"]*"[^>]*>/gi;
  for (const m of html.matchAll(re)) {
    const tag = m[0];
    const post        = tag.match(/data-post=["']([^"']+)["']/)?.[1] || "";
    const serv        = tag.match(/data-serv=["']([^"']+)["']/)?.[1] || "";
    const frameserver = tag.match(/data-frameserver=["']([^"']+)["']/)?.[1] || "";
    const serverCode  = tag.match(/data-_server_code_=["']([^"']+)["']/)?.[1] || "";
    const isFilm      = tag.match(/data-is_film=["']([^"']+)["']/)?.[1] || "";
    if (post && serv) servers.push({ post, serv, frameserver, serverCode, isFilm });
  }
  return servers;
}

async function callShahiidAjax(btn: ShahiidServerBtn, refUrl: string): Promise<string | null> {
  const fd = new URLSearchParams({
    action: "codecanal_ajax_request",
    post: btn.post,
    "_server_code_": btn.serverCode,
    frameserver: btn.frameserver,
    is_film: btn.isFilm,
    serv: btn.serv,
  });
  try {
    const r = await fetch(`${SHAHIID_BASE}/wp-admin/admin-ajax.php`, {
      method: "POST",
      headers: {
        ...SHAHIID_HDRS,
        "Content-Type": "application/x-www-form-urlencoded",
        "X-Requested-With": "XMLHttpRequest",
        Referer: refUrl,
      },
      body: fd.toString(),
      signal: AbortSignal.timeout(10000),
    });
    if (!r.ok) return null;
    const html = await r.text();
    if (!html || html.trim() === "0" || html.trim() === "-1") return null;
    const iframeSrc = extractIframeSrc(html, SHAHIID_BASE + "/");
    if (iframeSrc) return iframeSrc;
    const urlM = html.match(/(?:src|href|url)=["'](https?:\/\/[^"']+)["']/i);
    if (urlM) return urlM[1];
  } catch {}
  return null;
}

function epNumInSlug(link: string, epNum: number): boolean {
  const padded2 = String(epNum).padStart(2, "0");
  const padded3 = String(epNum).padStart(3, "0");
  const decoded = decodeURIComponent(link).toLowerCase();
  const raw = link.toLowerCase();
  if (decoded.includes(`-${padded2}-`) || decoded.includes(`-${padded3}-`) ||
      decoded.includes(`-${epNum}-`) ||
      raw.includes(`-${padded2}-`) || raw.includes(`-${padded3}-`) ||
      raw.includes(`-${epNum}-`) ||
      raw.includes(`-%d8%a7%d9%84%d8%ad%d9%84%d9%82%d8%a9-${padded2}-`) ||
      raw.includes(`-%d8%a7%d9%84%d8%ad%d9%84%d9%82%d8%a9-${padded3}-`) ||
      raw.includes(`-%d8%a7%d9%84%d8%ad%d9%84%d9%82%d8%a9-${epNum}-`)) return true;
  // -eN or -ep-N patterns at segment boundary (e.g. s4-e6/, s4-ep-7/)
  const epPat = new RegExp(`-ep?-?${epNum}(?:[/_.-]|$)`, "i");
  if (epPat.test(raw) || epPat.test(decoded)) return true;
  // URL ending in -01/ or -1/ (without anything after)
  if (raw.endsWith(`-${padded2}/`) || raw.endsWith(`-${epNum}/`)) return true;
  return false;
}

function extractEpLinks(html: string): string[] {
  const seen = new Set<string>();
  const links: string[] = [];
  for (const m of html.matchAll(/href="(https?:\/\/shahiid-anime\.net\/episodes(?:es)?\/[^"]+)"/gi)) {
    if (!seen.has(m[1])) { seen.add(m[1]); links.push(m[1]); }
  }
  return links;
}

async function shahiidLoadMore(html: string, seasonsUrl: string, page: number): Promise<string[]> {
  try {
    // Try "misha_nonce" key first, then "nonce" inside misha_loadmore_params JSON
    const nonceM =
      html.match(/["']misha_nonce["']\s*:\s*["']([a-f0-9]+)["']/i) ??
      html.match(/"nonce"\s*:\s*"([a-f0-9]{8,12})"/i);
    if (!nonceM) return [];
    const nonce = nonceM[1];

    // Extract WP_Query args: try "query":{...} first, then "posts":"JSON_STRING"
    let query = "{}";
    const queryM = html.match(/["']query["']\s*:\s*(\{[\s\S]*?\})\s*,\s*["'](?:current_page|page|nonce)/);
    if (queryM) {
      query = queryM[1];
    } else {
      // misha_loadmore_params uses "posts":"<escaped-json>" instead of "query":
      const postsM = html.match(/"posts"\s*:\s*"((?:[^"\\]|\\.)*)"/);
      if (postsM) {
        try { query = JSON.parse(`"${postsM[1]}"`); } catch { query = postsM[1].replace(/\\"/g, '"').replace(/\\\\/g, '\\'); }
      }
    }
    const fd = new URLSearchParams({
      action: "misha_loadmore",
      nonce,
      page: String(page),
      query,
    });
    const r = await fetch(`${SHAHIID_BASE}/wp-admin/admin-ajax.php`, {
      method: "POST",
      headers: { ...SHAHIID_HDRS, "Content-Type": "application/x-www-form-urlencoded", "X-Requested-With": "XMLHttpRequest", Referer: seasonsUrl },
      body: fd.toString(),
      signal: AbortSignal.timeout(10000),
    });
    if (!r.ok) return [];
    const moreHtml = await r.text();
    if (!moreHtml || moreHtml.trim() === "0" || moreHtml.trim() === "-1") return [];
    return extractEpLinks(moreHtml);
  } catch { return []; }
}

async function findShahiidEpisodeUrl(seasonsUrl: string, epNum: number): Promise<string | null> {
  const epCacheKey = `${seasonsUrl}:${epNum}`;
  const cached = shahiidEpUrlCache.get(epCacheKey);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.url;

  const padded2 = String(epNum).padStart(2, "0");

  try {
    const r = await fetch(seasonsUrl, {
      headers: SHAHIID_HDRS,
      signal: AbortSignal.timeout(12000),
      redirect: "follow",
    });
    if (!r.ok) { shahiidEpUrlCache.set(epCacheKey, { url: null, ts: Date.now() }); return null; }
    const html = await r.text();
    if (isCloudflareBlock(html)) { shahiidEpUrlCache.set(epCacheKey, { url: null, ts: Date.now() }); return null; }

    let links = extractEpLinks(html);

    if (!links.length && seasonsUrl.includes("seasonses") && seasonsUrl.includes("serie=")) {
      const subUrls = [...html.matchAll(/href="(https?:\/\/shahiid-anime\.net\/seasonses\/[^?#"][^"]+\/?)"/gi)]
        .map(m => m[1]).filter((u, i, a) => a.indexOf(u) === i).slice(0, 10);
      if (subUrls.length) {
        const subResults = await Promise.allSettled(subUrls.map(async (subUrl) => {
          const r2 = await fetch(subUrl, { headers: SHAHIID_HDRS, signal: AbortSignal.timeout(8000), redirect: "follow" });
          if (!r2.ok) return [] as string[];
          const h2 = await r2.text();
          return isCloudflareBlock(h2) ? [] as string[] : extractEpLinks(h2);
        }));
        for (const res of subResults) {
          if (res.status === "fulfilled" && res.value.length) links = [...links, ...res.value];
        }
      }
    }

    // For ?serie= filtered pages, episodes load via AJAX (not in initial HTML)
    const isSerieFilter = seasonsUrl.includes("?serie=") || seasonsUrl.includes("&serie=");
    const needsMore = !links.some(l => epNumInSlug(l, epNum));
    if (needsMore && (links.length > 0 || isSerieFilter)) {
      const maxPages = isSerieFilter && links.length === 0 ? 10 : 3;
      for (let page = 2; page <= maxPages; page++) {
        const moreLinks = await shahiidLoadMore(html, seasonsUrl, page);
        if (!moreLinks.length) break;
        links = [...links, ...moreLinks];
        if (links.some(l => epNumInSlug(l, epNum))) break;
      }
    }

    // Fallback for ?serie= pages where misha_loadmore fails (empty query → no results):
    // try WP paged pagination: ?serie=N&paged=M which works for query-filtered pages
    if (isSerieFilter && !links.some(l => epNumInSlug(l, epNum))) {
      const serieBase = seasonsUrl.split("?")[0].replace(/\/?$/, "/");
      const serieParam = seasonsUrl.match(/[?&]serie=(\d+)/)?.[1];
      if (serieParam) {
        const epsPerPage = 20;
        const startPage = Math.max(1, Math.floor((epNum - 1) / epsPerPage) + 1);
        for (let p = startPage; p <= startPage + 3; p++) {
          try {
            const pagedUrl = `${serieBase}?serie=${serieParam}&paged=${p}`;
            const pr = await fetch(pagedUrl, {
              headers: SHAHIID_HDRS,
              signal: AbortSignal.timeout(8000),
              redirect: "follow",
            });
            if (!pr.ok) break;
            const pHtml = await pr.text();
            if (isCloudflareBlock(pHtml)) break;
            const pLinks = extractEpLinks(pHtml);
            if (!pLinks.length) break;
            links = [...links, ...pLinks];
            if (links.some(l => epNumInSlug(l, epNum))) break;
          } catch { break; }
        }
      }
    }

    if (!links.length) { shahiidEpUrlCache.set(epCacheKey, { url: null, ts: Date.now() }); return null; }

    for (const link of links) {
      if (epNumInSlug(link, epNum)) {
        shahiidEpUrlCache.set(epCacheKey, { url: link, ts: Date.now() });
        return link;
      }
    }

    for (const sample of links.slice(0, 3)) {
      const firstDecoded = decodeURIComponent(sample);
      const tmpl = firstDecoded.match(/\/episodeses?\/(.+?)-(?:الحلقة|%d8%a7%d9%84%d8%ad%d9%84%d9%82%d8%a9)-(\d+)(?:-(.+))?\//i);
      if (!tmpl) continue;
      const [, seriesBase, , suffix] = tmpl;
      const epScheme = firstDecoded.includes("/episodeses/") ? "episodeses" : "episodes";
      const epFormatted = epNum < 10 ? padded2 : String(epNum);
      const epEncoded = encodeURIComponent("الحلقة");
      const candidates: string[] = [];
      if (suffix) {
        candidates.push(`${SHAHIID_BASE}/${epScheme}/${encodeURIComponent(seriesBase)}-${epEncoded}-${epFormatted}-${encodeURIComponent(suffix)}/`);
        candidates.push(`${SHAHIID_BASE}/${epScheme}/${seriesBase}-${epEncoded}-${epFormatted}-${suffix}/`);
      }
      candidates.push(`${SHAHIID_BASE}/${epScheme}/${encodeURIComponent(seriesBase)}-${epEncoded}-${epFormatted}/`);
      for (const candidateUrl of candidates) {
        const status = await safeHead(candidateUrl, SHAHIID_HDRS);
        if (status === 200 || status === 301 || status === 302) {
          shahiidEpUrlCache.set(epCacheKey, { url: candidateUrl, ts: Date.now() });
          return candidateUrl;
        }
      }
    }
  } catch {}

  shahiidEpUrlCache.set(epCacheKey, { url: null, ts: Date.now() });
  return null;
}

async function getShahiidSources(
  romaji: string, english?: string | null, ep: number = 1, isMovie = false,
  ctx?: MatchCtx,
): Promise<UnifiedSource[]> {
  const ck = `shahiid:${romaji.toLowerCase()}:${ep}`;
  const cached = shahiidSrcCache.get(ck);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.sources;

  try {
    let candidateUrls = await resolveAllShahiidUrls(romaji, english, isMovie, ctx);

    // Supplement with direct slug construction (covers Season 1 not returned by search)
    const slugsToTry: string[] = [];
    for (const q of [romaji, english].filter(Boolean) as string[]) {
      const s = toSlug(q);
      if (s) {
        slugsToTry.push(s);
        const noColon = toSlug(q.replace(/[:：].*/g, "").trim());
        if (noColon && noColon !== s) slugsToTry.push(noColon);
      }
    }
    const extraUrls: string[] = [];
    for (const slug of [...new Set(slugsToTry)]) {
      // For movies: try /anime/ prefix FIRST (Shahiid uses /anime/ for OVA/movies)
      const prefixes = isMovie
        ? ["anime", "seasons", "series", "serieses", "seasonses"]
        : ["seasons", "series", "serieses", "seasonses"];
      for (const prefix of prefixes) {
        const u = `${SHAHIID_BASE}/${prefix}/${slug}/`;
        if (!candidateUrls.includes(u)) extraUrls.push(u);
      }
    }
    // Search results FIRST (already sorted: seasons > series by score), slug URLs as fallback
    // Rationale: slug-constructed URLs often 404 for non-ASCII anime titles (Arabic slugs),
    // wasting serial time before the correct search result URL is even attempted.
    candidateUrls = [...candidateUrls, ...extraUrls];
    // For movies: prioritize /anime/ URLs (OVA/movie pages) and sort them first
    if (isMovie) {
      candidateUrls.sort((a, b) => {
        const aIsAnime = a.includes("/anime/") ? 0 : 1;
        const bIsAnime = b.includes("/anime/") ? 0 : 1;
        return aIsAnime - bIsAnime;
      });
    }
    if (!candidateUrls.length) return [];

    let episodePage: string | null = null;

    for (const seriesUrl of candidateUrls) {
      if (seriesUrl.includes("/anime/")) {
        episodePage = seriesUrl;
        break;
      }
      const seasonsUrl = await getShahiidSeasonsUrl(seriesUrl);
      const epUrl = await findShahiidEpisodeUrl(seasonsUrl, ep);
      if (epUrl) { episodePage = epUrl; break; }
    }

    if (!episodePage) return [];

    const epR = await fetch(episodePage, {
      headers: SHAHIID_HDRS,
      signal: AbortSignal.timeout(10000),
      redirect: "follow",
    });
    if (!epR.ok) return [];
    const epHtml = await epR.text();
    if (isCloudflareBlock(epHtml)) return [];

    const buttons = parseShahiidButtons(epHtml);
    if (!buttons.length) return [];

    const embedUrls: Array<{ url: string; idx: number }> = [];
    await Promise.allSettled(buttons.map(async (btn, idx) => {
      try {
        const embedUrl = await callShahiidAjax(btn, episodePage);
        if (embedUrl) embedUrls.push({ url: embedUrl, idx });
      } catch {}
    }));

    embedUrls.sort((a, b) => a.idx - b.idx);

    const sources: UnifiedSource[] = [];
    await Promise.allSettled(embedUrls.map(async ({ url }, i) => {
      try {
        const result = await Promise.race([
          extractVideoDeep(url, episodePage ?? url),
          new Promise<null>(resolve => setTimeout(() => resolve(null), 12000)),
        ]);
        if (result?.url) {
          const directUrl = result.type === "hls"
            ? `/api/anime/hls-proxy?url=${encodeURIComponent(result.url)}&ref=${encodeURIComponent(url)}`
            : result.url;
          sources.push({
            name: `شاهيد · سيرفر ${i + 1}`,
            url,
            quality: "HD",
            qualityRank: 9,
            site: "shahiid",
            directUrl,
            directType: result.type,
          });
        } else {
          sources.push({
            name: `شاهيد · سيرفر ${i + 1}`,
            url,
            quality: "HD",
            qualityRank: 9,
            site: "shahiid",
          });
        }
      } catch {
        sources.push({
          name: `شاهيد · سيرفر ${i + 1}`,
          url,
          quality: "HD",
          qualityRank: 9,
          site: "shahiid",
        });
      }
    }));
    sources.sort((a, b) => {
      const ai = embedUrls.findIndex(e => e.url === a.url);
      const bi = embedUrls.findIndex(e => e.url === b.url);
      return ai - bi;
    });

    if (sources.length) shahiidSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  UnifiedSource type + helpers
// ════════════════════════════════════════════════════════════════════
interface UnifiedSource {
  name: string; url: string; quality: string; qualityRank: number; site: string;
  directUrl?: string; directType?: "hls" | "mp4";
  corsOk?: boolean;     // CDN يدعم CORS * + Range → تشغيل مباشر في المتصفح بدون proxy
  isEmbed?: boolean;
  subtitleUrl?: string;
  hasBuiltinSub?: boolean;
  skipIntro?: { start: number; end: number };
  skipOutro?: { start: number; end: number };
  /** Referer/Origin headers مطلوبة للـ CDN — تُرسَل مع كل طلب (segments + redirects) */
  headers?: Record<string, string>;
}

// ── Shirayuki / AniKuro bridge ─────────────────────────────────────────────
// Shirayuki runs as a separate local service on the VPS (pm2: shirayuki-api).
// Keep its network address server-side; the browser/mobile clients only receive
// our own HLS proxy URL.
const SHIRAYUKI_API_BASE = process.env.SHIRAYUKI_API_URL || "http://127.0.0.1:3100";

const SHIRAYUKI_PROVIDER_SITE: Record<string, string> = {
  anikoto: "shirayuki_anikoto",
  animix: "shirayuki_animix",
};

async function getShirayukiSources(
  anilistId: number | undefined,
  ep: number,
  onlyProvider?: string,
): Promise<UnifiedSource[]> {
  if (!anilistId) return [];

  try {
    const ref = `${anilistId}:${ep}`;
    const serversResponse = await fetch(
      `${SHIRAYUKI_API_BASE}/api/v2/anikuro/episode/servers?animeEpisodeId=${encodeURIComponent(ref)}`,
      { signal: AbortSignal.timeout(8_000) },
    );
    if (!serversResponse.ok) return [];
    const serversPayload = await serversResponse.json() as {
      data?: {
        servers?: {
          sub?: Array<{ name?: string; nameId?: string; provider?: string }>;
          dub?: Array<{ name?: string; nameId?: string; provider?: string }>;
        };
      };
    };
    const providers = (serversPayload.data?.servers?.sub || []).filter(
      (provider): provider is { name?: string; nameId?: string; provider?: string } =>
        Boolean(provider.provider || provider.nameId) &&
        (!onlyProvider || (provider.provider || provider.nameId) === onlyProvider),
    );
    if (!providers.length) return [];

    const results = await Promise.allSettled(providers.map(async (provider) => {
      const server = provider.nameId || provider.provider || "";
      const sourceResponse = await fetch(
        `${SHIRAYUKI_API_BASE}/api/v2/anikuro/episode/sources?animeEpisodeId=${encodeURIComponent(ref)}&server=${encodeURIComponent(server)}&category=sub`,
        { signal: AbortSignal.timeout(18_000) },
      );
      if (!sourceResponse.ok) return [];
      type ShirayukiSourceRow = {
        m3u8?: string; type?: string; quality?: string; referer?: string;
      };
      const payload = await sourceResponse.json() as {
        data?: {
          sources?: ShirayukiSourceRow[];
          variants?: Array<{ quality?: string; sources?: ShirayukiSourceRow[] }>;
          tracks?: Array<{ file?: string; label?: string }>;
        };
      };
      const tracks = payload.data?.tracks || [];
      // Recent Shirayuki responses group sources under quality variants while
      // older responses expose a flat sources array. Accept both response
      // shapes and let the HLS manifest provide the actual quality when it is
      // available.
      const sourceRows = [
        ...(payload.data?.sources || []),
        ...(payload.data?.variants || []).flatMap(variant =>
          (variant.sources || []).map(source => ({
            ...source,
            quality: source.quality || variant.quality,
          })),
        ),
      ];
      const expanded: UnifiedSource[] = [];

      for (const source of sourceRows) {
        if (!source.m3u8) continue;
        const referer = source.referer || "https://anikuro.ru/";
        const subtitleUrl = tracks.find(track => track.file)?.file;
        const isShirayukiProxy = source.m3u8.includes("proxy.anikuro.ru/");

        // Discard stale CDN rows instead of presenting a dead source. This
        // is especially important for AX, whose CDN hostname can rotate while
        // the Shirayuki API still has an old cached row.
        const manifestProbe = await fetch(source.m3u8, {
          headers: { ...BASE_HDRS, Accept: "*/*", Referer: referer },
          signal: AbortSignal.timeout(8_000),
        }).catch(() => null);
        if (!manifestProbe?.ok) continue;
        const manifestText = await manifestProbe.text().catch(() => "");
        if (!manifestText.includes("#EXTM3U")) continue;

        const parsedQualities = await parseM3u8Qualities(source.m3u8, referer);
        const qualities = parsedQualities.length
          ? parsedQualities.map(item => ({
              url: item.url,
              quality: item.quality,
              rank: item.rank >= 11 ? 14 : item.rank >= 10 ? 13 : 11,
            }))
          : [{
              url: source.m3u8,
              quality: source.quality || "HD",
              rank: qualityRank(source.quality || "") || 9,
            }];

        for (const variant of qualities) {
          // Shirayuki's proxy already rewrites child playlists and segments.
          // Wrapping it again through Nova creates a proxy-to-proxy request.
          const directUrl = isShirayukiProxy
            ? variant.url
            : `/api/anime/hls-proxy?url=${encodeURIComponent(variant.url)}&ref=${encodeURIComponent(referer)}`;
          expanded.push({
            name: `${server === "anikoto" ? "AK" : "AX"} · ${variant.quality}`,
            url: variant.url,
            quality: variant.quality,
            qualityRank: variant.rank,
            // Keep each AniKuro provider as its own Nova source. The picker
            // uses this value for independent status and caching.
            site: SHIRAYUKI_PROVIDER_SITE[server] || `shirayuki_${server}`,
            directUrl,
            directType: "hls" as const,
            corsOk: isShirayukiProxy,
            ...(subtitleUrl ? { subtitleUrl } : {}),
            headers: { Referer: referer },
          });
        }
      }

      return expanded;
    }));

    return results.flatMap(result => result.status === "fulfilled" ? result.value : []);
  } catch {
    return [];
  }
}

const SKIP_EXTRACT_HOSTS = [
  "drive.google","mega.nz","mediafire.com",
  "ok.ru","odnoklassniki.ru","youtube.com","youtu.be",
  ...EMBED_ONLY_HOSTS,
];

async function probeDirectUrl(url: string, referer?: string): Promise<boolean> {
  // HLS m3u8 manifests: CDN servers frequently reject HEAD with HTML error pages
  // but serve fine on GET — trust extracted m3u8 URLs without probing
  if (url.match(/\.m3u8([?#]|$)/i)) return true;
  // Direct MKV/MP4 on workers.dev CDN: blocks server HEAD but plays fine in browser
  if (url.includes("workers.dev")) return true;
  try {
    const r = await fetch(url, {
      method: "HEAD",
      headers: { "User-Agent": BROWSER_UA, ...(referer ? { Referer: referer } : {}), Range: "bytes=0-1024" },
      signal: AbortSignal.timeout(5000),
      redirect: "follow",
    });
    const ct = r.headers.get("content-type") || "";
    if (ct.includes("text/html")) return false;
    // Accept 403/405 — CDN blocks HEAD but serves GET (URL is valid)
    return r.ok || r.status === 206 || r.status === 302 || r.status === 301 || r.status === 403 || r.status === 405;
  } catch { return true; }
}

async function extractAndCollect(
  sources: UnifiedSource[],
  out: UnifiedSource[],
  seenKeys: Set<string>,
  timeoutMs = 14000,
): Promise<void> {
  function collect(s: UnifiedSource) {
    if (!s.directUrl && !s.isEmbed) return;
    // iframe policy: only mega.nz and vidmoly allowed as sandboxed embed
    if (s.isEmbed) {
      const eu = (s.directUrl || s.url).toLowerCase();
      if (!eu.includes("mega.nz") && !eu.includes("mega.co.nz") && !VIDMOLY_HOSTS.some(h => eu.includes(h)) && !HIDDEN_RESOLVE_EMBED_HOSTS.some(h => eu.includes(h)) && !HIDDEN_RESOLVE_EMBED_SITES.includes(s.site || "")) return;
    }
    const checkUrl = s.directUrl || s.url;
    const isOwnProxy = checkUrl.startsWith("/api/");
    if (!s.isEmbed && !isOwnProxy && DEAD_FILE_HOSTS.some(h => checkUrl.toLowerCase().includes(h))) return;
    const key = checkUrl.includes("workers.dev")
      ? "cdn:" + checkUrl.replace(/^https?:\/\/[^/]+/, "")
      : checkUrl;
    if (seenKeys.has(key)) return;
    seenKeys.add(key);
    out.push(s);
  }

  await Promise.allSettled(sources.map(async (s) => {
    // isEmbed sources (e.g. mega.nz/embed) pass through without extraction
    if (s.isEmbed) { collect(s); return; }
    // Already has directUrl (e.g. Phoenix direct MKV/MP4)
    if (s.directUrl) {
      const alive = await probeDirectUrl(s.directUrl, s.url);
      if (alive) collect(s);
      return;
    }
    // mega.nz/embed → allowed as sandboxed iframe (MUST be before DEAD_FILE_HOSTS since
    // "mega.nz" appears in that list but /embed/ URLs are safe to show in a sandboxed iframe)
    if (s.url.includes("mega.nz/embed") || s.url.includes("mega.co.nz/embed")) {
      collect({ ...s, directUrl: s.url, isEmbed: true }); return;
    }
    // Vidmoly → allowed as sandboxed iframe (Cloudflare Turnstile blocks server-side extraction)
    // Must also be before DEAD_FILE_HOSTS in case any vidmoly domain lands there
    if (VIDMOLY_HOSTS.some(h => s.url.includes(h))) {
      collect({ ...s, directUrl: s.url, isEmbed: true }); return;
    }
    // Dead file hosts → skip entirely
    if (DEAD_FILE_HOSTS.some(h => s.url.includes(h))) return;
    // Bare .m3u8 → wrap with hls-proxy to bypass CORS restrictions
    if (s.url.match(/\.m3u8([?#]|$)/i)) {
      const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(s.url)}&ref=${encodeURIComponent(s.url)}`;
      collect({ ...s, directUrl: proxied, directType: "hls" });
      return;
    }
    // Bare .mp4 → direct MP4
    if (s.url.match(/\.mp4([?#]|$)/i)) {
      collect({ ...s, directUrl: s.url, directType: "mp4" });
      return;
    }
    // Known un-extractable hosts (social media, junk CDNs) → skip entirely (no embed)
    if (EMBED_ONLY_HOSTS.some(h => s.url.includes(h))) return;
    // Other skippable extraction blockers (drive.google, mega.nz plain, etc.) → skip entirely
    if (SKIP_EXTRACT_HOSTS.some(h => s.url.includes(h))) return;

    // Try to extract a direct MP4/HLS URL from the embed page
    try {
      const result = await Promise.race([
        extractVideoDeep(s.url, s.url),
        new Promise<null>(r => setTimeout(() => r(null), timeoutMs)),
      ]);
      if (result?.url) {
        if (result.type === "hls") {
          // Some CDNs block Replit server IP but allow direct browser HLS.js access — skip proxy
          const NO_HLS_PROXY_HOSTS = ["yaviidcdn.com", "vidcache.net"];
          const skipProxy = NO_HLS_PROXY_HOSTS.some(h => result.url.includes(h));
          if (skipProxy) {
            collect({ ...s, url: result.url, directUrl: result.url, directType: "hls" });
          } else {
            // Wrap extracted HLS with hls-proxy to bypass CORS
            const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(result.url)}&ref=${encodeURIComponent(s.url)}`;
            collect({ ...s, url: proxied, directUrl: proxied, directType: "hls" });
          }
        } else {
          // MP4: probe to filter dead links
          const alive = await probeDirectUrl(result.url, s.url);
          if (alive) {
            // sendvid CDN URLs are IP-tied (contain ip=SERVER_IP in URL)
            // Must go through video-proxy so the request comes from our server IP
            const isIpTied = result.url.includes("sendvid.com") || result.url.includes("sendvid.net");
            if (isIpTied) {
              const proxied = `/api/anime/video-proxy?url=${encodeURIComponent(result.url)}&ref=${encodeURIComponent(s.url)}`;
              collect({ ...s, url: proxied, directUrl: proxied, directType: "mp4" });
            } else {
              collect({ ...s, url: result.url, directUrl: result.url, directType: "mp4" });
            }
          }
        }
      }
      // Extraction failed → drop (only mega.nz/embed and vidmoly allowed as iframes)
    } catch {
      // Exception during extraction → drop
    }
  }));
}


// ════════════════════════════════════════════════════════════════════
//  ANIMELEK.TOP scraper  (Arabic anime — عربي مترجم)
// ════════════════════════════════════════════════════════════════════

const ALK_BASE = "https://animelek.top";
const ALK_HDRS: Record<string, string> = { ...BASE_HDRS, Referer: "https://animelek.top/" };

const alkSlugCache = new Map<string, { slug: string | null; ts: number }>();
const alkSrcCache  = new Map<string, { sources: UnifiedSource[]; ts: number }>();

async function searchAnimelek(title: string, english: string | null, isMovie = false, ctx?: MatchCtx): Promise<string | null> {
  const ck = (title + "|" + (english || "")).toLowerCase();
  const hit = alkSlugCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.slug;

  // Build slug variations from english + title
  const slugVariants: string[] = [];
  for (const q of [english, title].filter(Boolean) as string[]) {
    const s = toSlug(q as string);
    if (!s) continue;
    slugVariants.push(s);
    // Without colon suffix (e.g. "fullmetal-alchemist-brotherhood" from "fullmetal-alchemist:-brotherhood")
    const noColon = toSlug((q as string).replace(/[:：].*/g, "").trim());
    if (noColon && noColon !== s) slugVariants.push(noColon);
    // Without trailing season indicator
    const stripped = s.replace(/[-–](?:season[-–]?\d+|\d+(?:nd|rd|th)[-–]season)$/i, "");
    if (stripped !== s) slugVariants.push(stripped);
  }

  // Direct slug check (faster than search) — use cfProxyGet to bypass CF/IP blocks
  for (const slug of [...new Set(slugVariants)]) {
    const html = await cfProxyGet(`${ALK_BASE}/anime/${slug}/`, `${ALK_BASE}/`);
    if (html && html.includes("/episode/")) {
      alkSlugCache.set(ck, { slug, ts: Date.now() });
      return slug;
    }
  }

  // Search fallback — use ?s= (standard WP search, ?search_term_string= is broken)
  const alkMinScore = ctx ? 0.52 : (isMovie ? 0.68 : 0.60);
  for (const q of [english, title].filter(Boolean) as string[]) {
    const html = await cfProxyGet(`${ALK_BASE}/search/?s=${encodeURIComponent(q as string)}`, `${ALK_BASE}/`);
    if (!html || !html.includes("/anime/")) continue;
    let best: string | null = null, bestScore = 0;
    for (const m of html.matchAll(/href="https?:\/\/animelek\.top\/anime\/([^/"]+)\/?"/gi)) {
      const s = m[1];
      const label = s.replace(/-/g, " ");
      const score = ctx
        ? multiScore(label, { ...ctx, scraper: "animelek" }).score
        : isMovie
          ? Math.max(strictMovieSimilarity(label, title), english ? strictMovieSimilarity(label, english as string) : 0)
          : Math.max(similarity(label, title), english ? similarity(label, english as string) : 0);
      if (score > bestScore && score > alkMinScore) { bestScore = score; best = s; }
    }
    if (best && bestScore > alkMinScore) {
      // Verify the found slug actually has episodes
      const vhtml = await cfProxyGet(`${ALK_BASE}/anime/${best}/`, `${ALK_BASE}/`);
      if (vhtml && vhtml.includes("/episode/")) {
        alkSlugCache.set(ck, { slug: best, ts: Date.now() });
        return best;
      }
    }
  }

  alkSlugCache.set(ck, { slug: null, ts: Date.now() });
  return null;
}

async function getAnimelekSources(
  title: string, english: string | null, ep: number, isMovie = false,
  ctx?: MatchCtx,
): Promise<UnifiedSource[]> {
  const ck = `alk:${(title + "|" + (english || "")).toLowerCase()}:${ep}`;
  const hit = alkSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;

  try {
    const slug = await searchAnimelek(title, english, isMovie, ctx);
    if (!slug) return [];

    const seriesUrl = `${ALK_BASE}/anime/${slug}/`;
    const sHtml = await cfProxyGet(seriesUrl, `${ALK_BASE}/`);
    if (!sHtml) return [];

    let epUrl: string | null = null;
    for (const m of sHtml.matchAll(/href="(https?:\/\/animelek\.top\/episode\/[^"]+)"/gi)) {
      const url = m[1];
      const decoded = decodeURIComponent(url);
      const m1 = decoded.match(/[-](\d+)[-](?:والاخيرة|الحلقة)/);
      const m2 = decoded.match(/والاخيرة(\d+)[-]/);
      const num = parseInt((m2?.[1] ?? m1?.[1]) || "");
      if (!isNaN(num) && num === ep) { epUrl = url; break; }
    }

    if (!epUrl) {
      const epPad = String(ep).padStart(2, "0");
      const candidates = [
        `${ALK_BASE}/episode/${slug}-${ep}-%D8%A7%D9%84%D8%AD%D9%84%D9%82%D8%A9/`,
        `${ALK_BASE}/episode/${slug}-${ep}-الحلقة/`,
        `${ALK_BASE}/episode/${slug}-${epPad}-%D8%A7%D9%84%D8%AD%D9%84%D9%82%D8%A9/`,
        `${ALK_BASE}/episode/${slug}-${epPad}-الحلقة/`,
        `${ALK_BASE}/episode/${slug}-%D8%A7%D9%84%D8%AD%D9%84%D9%82%D8%A9-${ep}/`,
        `${ALK_BASE}/episode/${slug}-%D8%A7%D9%84%D8%AD%D9%84%D9%82%D8%A9-${epPad}/`,
      ];
      for (const u of candidates) {
        const ph = await cfProxyGet(u, seriesUrl);
        if (ph && ph.includes("data-embed=")) { epUrl = u; break; }
        // fallback: plain HEAD check
        try {
          const pr = await fetch(u, {
            method: "HEAD",
            headers: { ...ALK_HDRS, Referer: seriesUrl },
            signal: AbortSignal.timeout(4000), redirect: "follow",
          });
          if (pr.ok) { epUrl = u; break; }
        } catch {}
      }
    }
    if (!epUrl) return [];

    const eHtml = await cfProxyGet(epUrl, seriesUrl);
    if (!eHtml) return [];

    const sources: UnifiedSource[] = [];
    const seenHosts = new Set<string>();
    let idx = 0;
    for (const aM of eHtml.matchAll(/<a\b[^>]*\bdata-embed="([^"]*)"[^>]*>([\s\S]*?)<\/a>/gi)) {
      const embedAttr = aM[1];
      const innerHtml = aM[2];
      const randM = embedAttr.match(/[?&]random=([^"&\s]+)/i);
      let rawUrl = randM ? randM[1] : embedAttr;
      try { rawUrl = decodeURIComponent(rawUrl); } catch {}
      rawUrl = rawUrl.replace(/&amp;/g, "&");
      if (!rawUrl.startsWith("http")) continue;

      // mega.nz/embed is allowed as sandboxed iframe — handle BEFORE DEAD_FILE_HOSTS
      const isMegaEmbed = rawUrl.includes("mega.nz/embed") || rawUrl.includes("mega.co.nz/embed");
      if (isMegaEmbed) {
        const host = (rawUrl.split("/")[2] || "").replace(/^www\./, "");
        if (seenHosts.has(host)) continue; seenHosts.add(host);
        const nameM = innerHtml.match(/<span[^>]*class="[^"]*server[^"]*"[^>]*>([^<]+)<\/span>/i);
        const label = (nameM?.[1] || "").trim().replace(/\s*\|.*$/, "").trim();
        idx++;
        sources.push({
          name: `AnimeLek · ${label || `Mega ${idx}`}`,
          url: rawUrl, quality: "HD", qualityRank: 9, site: "animelek",
          directUrl: rawUrl, isEmbed: true,
        });
        continue;
      }

      if (DEAD_FILE_HOSTS.some(h => rawUrl.includes(h))) continue;
      if (EMBED_ONLY_HOSTS.some(h => rawUrl.includes(h))) continue;
      const host = (rawUrl.split("/")[2] || "").replace(/^www\./, "");
      if (seenHosts.has(host)) continue; seenHosts.add(host);
      const nameM = innerHtml.match(/<span[^>]*class="[^"]*server[^"]*"[^>]*>([^<]+)<\/span>/i);
      const label = (nameM?.[1] || "").trim().replace(/\s*\|.*$/, "").trim();
      idx++;
      // Try to extract direct HLS/MP4 stream for better quality
      try {
        const result = await Promise.race([
          extractVideoDeep(rawUrl, seriesUrl),
          new Promise<null>(resolve => setTimeout(() => resolve(null), 10000)),
        ]);
        if (result?.url) {
          const directUrl = result.type === "hls"
            ? `/api/anime/hls-proxy?url=${encodeURIComponent(result.url)}&ref=${encodeURIComponent(rawUrl)}`
            : result.url;
          sources.push({
            name: `AnimeLek · ${label || `سيرفر ${idx}`}`,
            url: rawUrl,
            quality: "HD",
            qualityRank: 9,
            site: "animelek",
            directUrl,
            directType: result.type,
          });
          continue;
        }
      } catch {}
      sources.push({
        name: `AnimeLek · ${label || `سيرفر ${idx}`}`,
        url: rawUrl,
        quality: "HD",
        qualityRank: 9,
        site: "animelek",
      });
    }

    if (sources.length) alkSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  ANIMEDAR.NET scraper  (Arabic anime — WordPress/animestream theme)
// ════════════════════════════════════════════════════════════════════

const ADAR_BASE = "https://animedar.net";
const ADAR_HDRS: Record<string, string> = {
  ...BASE_HDRS,
  Referer: "https://animedar.net/",
};

const ADAR_DEAD_TYPES = new Set([
  "4shared","drive","ok","okru","uqload","fembed","videa",
  "doodstream","dood","waaw","facebook","dailymotion",
  "highload","sblanh","upvideo","turbobit","1fichier","solidfiles",
]);

function buildAnimestreamEmbed(type: string, data: string): string | null {
  const t = type.toLowerCase().trim();
  const d = data.trim();
  if (!d || d.length < 3) return null;
  if (ADAR_DEAD_TYPES.has(t)) return null;
  switch (t) {
    case "mega": {
      // Full URL already (starts with https)
      if (d.startsWith("https://mega.nz/embed") || d.startsWith("https://mega.co.nz/embed")) return d;
      // Protocol-relative: "//mega.nz/embed#!..." → "https://mega.nz/embed#!..."
      if (d.startsWith("//mega.nz") || d.startsWith("//mega.co.nz")) return "https:" + d;
      // Truncated scheme: ":/mega.nz/embed#!..." (https was stripped, leaving colon+1-slash)
      if (d.startsWith(":/mega.nz") || d.startsWith(":/mega.co.nz")) return "https://" + d.slice(2);
      // Old-style hash-bang "!fileId!key" — no # in this format, must check before the # guard
      if (d.startsWith("!")) return `https://mega.nz/embed#${d}`;
      // Standard format: "fileId#key" — requires a # separator
      if (!d.includes("#")) return null;
      return `https://mega.nz/embed/${d}`;
    }
    case "vidmoly":     return `https://vidmoly.biz/embed-${d}.html`;
    case "asnwish":     return `https://asnwish.com/embed/${d}`;
    case "streamwish":  return `https://streamwish.to/e/${d}`;
    case "filemoon":    return `https://filemoon.sx/e/${d}`;
    case "vidhide":     return `https://vidhide.com/e/${d}`;
    case "vidhide2":    return `https://vidhide.com/e/${d}`;
    case "streamlare":  return `https://streamlare.com/v/${d}`;
    case "uptostream":  return `https://uptostream.com/${d}`;
    case "doodstream":  return null;
    case "mp4upload":   return null;
    case "uqload":      return null;
    default:
      if (d.startsWith("http")) return d;
      return null;
  }
}

function parseAnimadarServers(
  html: string,
): Array<Array<{ type: string; data: string; quality: string }>> {
  const episodes: Array<Array<{ type: string; data: string; quality: string }>> = [];
  const ulRe = /<ul\s+class="ul-server-position\d+"[^>]*>([\s\S]*?)<\/ul>/gi;
  for (const ulM of html.matchAll(ulRe)) {
    const ulHtml = ulM[1];
    const servers: Array<{ type: string; data: string; quality: string }> = [];
    for (const liM of ulHtml.matchAll(/<li\b([^>]+)>/gi)) {
      const attrs = liM[1];
      if (!/source=["']ani["']/i.test(attrs)) continue;
      const type    = attrs.match(/\btype=["']([^"']+)["']/)?.[1]         || "";
      const data    = attrs.match(/(?:^|\s)data=["']([^"']+)["']/)?.[1]    || "";
      const quality = attrs.match(/\bquality-data=["']([^"']+)["']/)?.[1] || "HD";
      if (type && data && data.length >= 3) servers.push({ type, data, quality });
    }
    if (servers.length) episodes.push(servers);
  }
  return episodes;
}

async function searchAnimedar(title: string, english: string | null, isMovie = false, ctx?: MatchCtx): Promise<string | null> {
  const ck = (title + "|" + (english || "")).toLowerCase();
  const hit = adarSlugCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.url;

  const SKIP_SLUGS = ["feed/", "wp-", "/page/", "genre/", "cast/", "tag/", "category/",
    "dmca", "contact", "about", "privacy", "xmlrpc", "wp-json"];

  // ── Step 1: Search first (accurate — avoids slug hitting wrong OVA/movie page) ──
  for (const q of [english, title].filter(Boolean) as string[]) {
    try {
      const html = await cfProxyGet(`${ADAR_BASE}/?s=${encodeURIComponent(q)}`, "https://animedar.net/", 10000);
      if (!html) continue;
      if (isCloudflareBlock(html)) continue;

      let best: string | null = null;
      let bestScore = 0;

      const anchorRe = /<a\s+href="(https?:\/\/animedar\.net\/([^"#?]+))"(?:[^>]*title="([^"]*)")?[^>]*>/gi;
      for (const m of html.matchAll(anchorRe)) {
        const url      = m[1];
        const slug     = m[2];
        const rawLabel = m[3] || "";
        if (SKIP_SLUGS.some(s => slug.includes(s) || decodeURIComponent(slug).includes(s))) continue;
        let slugDecoded = slug;
        try { slugDecoded = decodeURIComponent(slug); } catch {}
        const slugAscii = slugDecoded.replace(/-/g, " ").replace(/[^\x00-\x7F]/g, " ").replace(/\s+/g, " ").trim();
        const label = rawLabel.replace(/&amp;/g, "&").replace(/&#\d+;/g, "").replace(/&[a-z]+;/g, " ").trim()
          || slugAscii
          || slugDecoded.replace(/-/g, " ");
        const adarMin = ctx ? 0.52 : (isMovie ? 0.68 : 0.60);
        const score = ctx
          ? multiScore(label || slugAscii, { ...ctx, scraper: "animedar" }).score
          : isMovie
            ? Math.max(
                strictMovieSimilarity(label, title),
                english ? strictMovieSimilarity(label, english) : 0,
                slugAscii ? strictMovieSimilarity(slugAscii, title) : 0,
                slugAscii && english ? strictMovieSimilarity(slugAscii, english) : 0,
              )
            : Math.max(
                similarity(label, title),
                english ? similarity(label, english) : 0,
                slugAscii ? similarity(slugAscii, title) : 0,
                slugAscii && english ? similarity(slugAscii, english) : 0,
              );
        if (score > bestScore && score > adarMin) { bestScore = score; best = url.replace(/\/?$/, "/"); }
      }

      if (best && bestScore > 0.38) {
        adarSlugCache.set(ck, { url: best, ts: Date.now() });
        return best;
      }
    } catch {}
  }

  // ── Step 2: Direct slug fallback (for cases where search fails / site slow) ──
  // Slug must be 3+ distinct words to avoid ambiguous matches (e.g. "one-piece" = OVA/series/movie)
  const slugCandidates: string[] = [];
  for (const q of [english, title].filter(Boolean) as string[]) {
    const s = toSlug(q as string);
    if (!s) continue;
    // Only use slug when it uniquely identifies the series (colon-variant / stripped season suffix)
    const colonJoined = toSlug((q as string).replace(/[：:]/g, ""));
    if (colonJoined && colonJoined !== s) slugCandidates.push(colonJoined);
    const stripped = s.replace(/[-–](?:season[-–]?\d+|\d+(?:nd|rd|th)[-–]season|s\d+)$/i, "");
    if (stripped !== s && stripped.length > 2) slugCandidates.push(stripped);
    const colonJoinedStripped = colonJoined.replace(/[-–](?:season[-–]?\d+|\d+(?:nd|rd|th)[-–]season|s\d+)$/i, "");
    if (colonJoinedStripped !== colonJoined && colonJoinedStripped.length > 2) slugCandidates.push(colonJoinedStripped);
    // Only add plain slug if it's long enough to be distinctive (3+ words)
    if (s.split("-").length >= 3) slugCandidates.push(s);
  }
  for (const slug of [...new Set(slugCandidates)]) {
    try {
      const html = await cfProxyGet(`${ADAR_BASE}/${slug}/`, "https://animedar.net/", 7000);
      if (html && !isCloudflareBlock(html) && html.includes("ul-server-position")) {
        const finalUrl = `${ADAR_BASE}/${slug}/`;
        adarSlugCache.set(ck, { url: finalUrl, ts: Date.now() });
        return finalUrl;
      }
    } catch {}
  }

  adarSlugCache.set(ck, { url: null, ts: Date.now() });
  return null;
}

async function getAnimadarSources(
  title: string, english: string | null, ep: number, isMovie = false,
  ctx?: MatchCtx,
): Promise<UnifiedSource[]> {
  const ck = `adar:${(title + "|" + (english || "")).toLowerCase()}:${ep}`;
  const hit = adarSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;

  try {
    const seriesUrl = await searchAnimedar(title, english, isMovie, ctx);
    if (!seriesUrl) return [];

    const html = await cfProxyGet(seriesUrl, "https://animedar.net/", 14000);
    if (!html || isCloudflareBlock(html)) return [];

    const allEpisodes = parseAnimadarServers(html);
    if (!allEpisodes.length) return [];

    let epIndex = ep - 1;
    const firstEpLabel = html.match(/id=["']IDSB1["'][^>]*>([\s\S]*?)<\/div>/i)?.[1] || "";
    const firstEpNum   = parseInt(firstEpLabel.replace(/\D/g, ""));
    if (!isNaN(firstEpNum) && firstEpNum > 1) {
      epIndex = firstEpNum - ep;
    }

    if (epIndex < 0 || epIndex >= allEpisodes.length) {
      adarSrcCache.set(ck, { sources: [], ts: Date.now() });
      return [];
    }

    const servers = allEpisodes[epIndex];
    const sources: UnifiedSource[] = [];

    for (const { type, data, quality } of servers) {
      const embedUrl = buildAnimestreamEmbed(type, data);
      if (!embedUrl) continue;
      const t = type.toLowerCase();
      const isMegaEmbed = t === "mega";
      const qRank = quality.toUpperCase().includes("FHD") ? 3
                  : quality.toUpperCase().includes("HD")  ? 2 : 1;
      sources.push({
        name: `AnimeDar · ${type.toUpperCase()} · ${quality}`,
        url: embedUrl,
        quality,
        qualityRank: isMegaEmbed ? 8 : qRank,
        site: "animedar",
        directUrl: isMegaEmbed ? embedUrl : undefined,
        isEmbed: isMegaEmbed || undefined,
      });
    }

    if (sources.length) adarSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  MITANIME.COM scraper  (RSC endpoint — Japanese audio + Arabic subtitles)
// ════════════════════════════════════════════════════════════════════
const MITANIME_BASE = "https://mitanime.com";
const MITANIME_RSC_HDRS: Record<string, string> = {
  "User-Agent": BROWSER_UA,
  "Rsc": "1",
  "Accept": "text/x-component,text/html,*/*",
  "Accept-Language": "ar,en-US;q=0.9,en;q=0.8",
};

const mitanimeSlugCache = new Map<string, { slug: string | null; ts: number }>();
const mitanimeSrcCache  = new Map<string, { sources: UnifiedSource[]; ts: number }>();

function parseMitanimeServers(
  rsc: string,
): Array<{ name: string; quality: string; url: string; isLocked: boolean }> {
  // RSC response embeds plain JSON (not escaped) — search for "servers":[
  // Confirmed 2026-07-24: Node.js fetch returns "servers":[ (no backslash-escaping).
  const MARKER = '"servers":[';
  const idx = rsc.indexOf(MARKER);
  if (idx === -1) return [];
  const start = idx + MARKER.length - 1; // point to opening '['
  let depth = 0;
  let end = start;
  for (let i = start; i < rsc.length; i++) {
    if (rsc[i] === "[") depth++;
    else if (rsc[i] === "]") { depth--; if (depth === 0) { end = i + 1; break; } }
  }
  try {
    const raw = rsc.slice(start, end);
    const arr = JSON.parse(raw);
    if (Array.isArray(arr)) return arr;
  } catch {}
  return [];
}

async function resolveMitanimeSlug(title: string, english: string | null): Promise<string | null> {
  const ck = (title + "|" + (english || "")).toLowerCase();
  const cached = mitanimeSlugCache.get(ck);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.slug;

  // Build slug candidates from both title variants
  // MitAnime often uses Japanese romanization slug (e.g. "kimetsu-no-yaiba") even when
  // the English title differs ("Demon Slayer: Kimetsu no Yaiba"). Generate many variants.
  const candidates: string[] = [];
  for (const t of [english, title].filter(Boolean) as string[]) {
    const full = toSlug(t);
    if (full) candidates.push(full);
    const beforeColon = toSlug(t.split(/[：:]/)[0].trim());
    if (beforeColon && beforeColon !== full) candidates.push(beforeColon);
    const colonParts = t.split(/[：:]/);
    if (colonParts.length > 1) {
      const afterColon = toSlug(colonParts.slice(1).join(" ").trim());
      if (afterColon && afterColon !== full) candidates.push(afterColon);
    }
    const noSeason = toSlug(t.replace(/\b(season|part|cour|s\d+)\s*\d*/gi, "").trim());
    if (noSeason && noSeason !== full) candidates.push(noSeason);
  }

  // ── PARALLEL slug validation: run all candidates at once, first success wins ──
  // Previously sequential (each 8s timeout) → up to 40s total. Now max ~5s.
  const uniqueCandidates = [...new Set(candidates)];
  const slugResult = await Promise.race([
    (async (): Promise<string | null> => {
      const checks = uniqueCandidates.map(async (slug): Promise<string | null> => {
        try {
          const r = await fetch(`${MITANIME_BASE}/anime/${slug}`, {
            headers: MITANIME_RSC_HDRS,
            signal: AbortSignal.timeout(5000),
            redirect: "follow",
          });
          if (!r.ok) return null;
          const text = await r.text();
          if (!text.includes('"/_not-found"') && text.length > 20000) return slug;
        } catch {}
        return null;
      });
      // Return the first non-null result (preserving candidate priority order)
      for (const p of checks) {
        const result = await p;
        if (result) return result;
      }
      return null;
    })(),
    new Promise<null>(res => setTimeout(() => res(null), 8000)),
  ]);

  if (slugResult) {
    mitanimeSlugCache.set(ck, { slug: slugResult, ts: Date.now() });
    return slugResult;
  }

  // Fallback: search RSC endpoint (parallel for both queries)
  const searchQueries = [english, title].filter(Boolean) as string[];
  const searchResults = await Promise.all(searchQueries.map(async (q): Promise<string | null> => {
    try {
      const r = await fetch(
        `${MITANIME_BASE}/search?q=${encodeURIComponent(q)}`,
        { headers: MITANIME_RSC_HDRS, signal: AbortSignal.timeout(6000), redirect: "follow" },
      );
      if (!r.ok) return null;
      const text = await r.text();
      const slugsFound: string[] = [];
      for (const m of text.matchAll(/"slug":"([a-z0-9][a-z0-9-]*)"/g)) {
        if (/^[a-z0-9-]+$/.test(m[1]) && m[1].length > 2) slugsFound.push(m[1]);
      }
      for (const m of text.matchAll(/href="\/anime\/([a-z0-9][a-z0-9-]*)"/g)) {
        if (/^[a-z0-9-]+$/.test(m[1]) && m[1].length > 2) slugsFound.push(m[1]);
      }
      let best: string | null = null;
      let bestScore = 0;
      for (const slug of [...new Set(slugsFound)]) {
        const label = slug.replace(/-/g, " ");
        const score = Math.max(
          similarity(label, title),
          english ? similarity(label, english) : 0,
        );
        if (score > bestScore && score > 0.40) { bestScore = score; best = slug; }
      }
      return best;
    } catch { return null; }
  }));
  const best = searchResults.find(Boolean) || null;
  mitanimeSlugCache.set(ck, { slug: best, ts: Date.now() });
  return best;
}

async function getMitanimeSources(
  title: string, english: string | null, ep: number,
): Promise<UnifiedSource[]> {

  const ck = `mitanime:${(title + "|" + (english || "")).toLowerCase()}:${ep}`;
  const hit = mitanimeSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;

  try {
    const slug = await resolveMitanimeSlug(title, english);
    if (!slug) return [];

    const r = await fetch(`${MITANIME_BASE}/watch/${slug}/${ep}`, {
      headers: MITANIME_RSC_HDRS,
      signal: AbortSignal.timeout(10000),
      redirect: "follow",
    });
    if (!r.ok) return [];
    const text = await r.text();
    if (!text.includes('"servers":[')) return [];

    const servers = parseMitanimeServers(text);
    const sources: UnifiedSource[] = [];
    // Skip file-hosting/download sites (not streamable embeds)
    // Sites confirmed dead/parked — skip immediately to save time
    const MITA_SKIP = ["mediafire.com","workupload","gofile.io","4shared.com",
                       "drive.google","soraplay","suzihazarpc.com","vivystream.com",
                       "my.mail.ru","vk.com","wtsrv.xyz",
                       "dotplay.net",  // 404 on all tested links (dead embed — 2026-07-24)
                       "fembed.com",   // TLS error / dead (2026-07-24)
                       "upvideo.to",   // TLS JA3 fingerprint block — no browser = no access
                       "ok.ru","odnoklassniki.ru",  // VPS IP blocked — embed returns "user not found" (2026-07-24)
                       "videa.hu",                  // too slow via extractVideoDeep (15-22s); removed 2026-07-25
                       // HLS-only sources — skipped by user request 2026-07-24
                       // (cfProxy + hls-proxy chain is slow and unreliable on mobile)
                       "streamwish","hlswish","wishembed","embedwish","awish","swdyu",
                       "luluvdo.com","darkibox.com","hydracker.com",
                       "playerwish.com","bigwarp.io","voe.sx",
                       ];

    // Process all servers in PARALLEL — yt-dlp/ok.ru each take ~5-25s so sequential
    // would exceed the 60s race timeout for episodes with many servers.
    const serverTasks = servers
      .filter(sv => sv.url && sv.url !== "premium" && sv.url.startsWith("http"))  // isLocked ignored — server-side fetch bypasses JS paywall
      .filter(sv => !MITA_SKIP.some(n => sv.url.toLowerCase().includes(n)))
      .map(async (server): Promise<UnifiedSource[]> => {
        const sUrl   = server.url;
        const qRank  = server.quality === "FHD" ? 12 : server.quality === "HD" ? 11 : 10;
        const qLabel = server.quality === "FHD" ? "1080p" : server.quality === "HD" ? "720p" : "480p";
        const sName  = server.name || (() => { try { return new URL(sUrl).hostname.replace(/^www\./, ""); } catch { return "stream"; } })();
        const out: UnifiedSource[] = [];

        // ── mega.nz → isEmbed ──────────────────────────────────────────────────
        if (sUrl.includes("mega.nz/embed") || sUrl.includes("mega.co.nz/embed")) {
          out.push({ name: `ميتانيمي · ميغا · ${qLabel}`, url: sUrl, quality: qLabel,
            qualityRank: qRank, site: "mitanime", directUrl: sUrl, isEmbed: true });
          return out;
        }

        // ── ok.ru → in MITA_SKIP (VPS IP blocked, 2026-07-24) — handler removed ──

        // ── mp4upload → direct HTML parse (~800ms vs 15-30s yt-dlp) ───────────
        // Confirmed 2026-07-24: MP4 URL is in plain HTML inside player.src({src:"..."})
        // Cloudflare Rocket Loader obfuscates <script> types but leaves inline player init intact.
        if (sUrl.includes("mp4upload.com/embed-")) {
          try {
            const r = await fetch(sUrl, {
              headers: { "User-Agent": BROWSER_UA, Referer: `${MITANIME_BASE}/` },
              signal: AbortSignal.timeout(10000),
            });
            if (r.ok) {
              const html = await r.text();
              // Pattern: player.src({ type: "video/mp4", src: "https://a4.mp4upload.com:183/d/.../video.mp4" })
              const m = html.match(/player\.src\s*\(\s*\{[^}]*src\s*:\s*["'](https?:[^"']+\.mp4[^"']*)/s)
                     || html.match(/["']src["']\s*:\s*["'](https?:[^"']+\.mp4[^"']*)/);
              if (m) {
                const rawUrl = m[1];
                // mp4upload CDN uses non-standard port :183 — route through video-proxy
                // Use URL.port (handles 2-5 digit ports correctly, unlike \d{4,5} regex)
                let hasNonStdPort = false;
                try { const p = new URL(rawUrl).port; hasNonStdPort = p !== "" && !["80","443","8080","8443"].includes(p); } catch {}
                const directUrl = hasNonStdPort
                  ? `/api/anime/video-proxy?url=${encodeURIComponent(rawUrl)}&ref=${encodeURIComponent(sUrl)}`
                  : rawUrl;
                out.push({ name: `ميتانيمي · MP4Upload · ${qLabel}`,
                  url: sUrl, quality: qLabel, qualityRank: qRank, site: "mitanime",
                  directUrl, directType: "mp4" });
              }
            }
          } catch {}
          return out;
        }

        // ── upvideo.to — TLS fingerprint blocked (JA3 check), skip ────────────
        if (sUrl.includes("upvideo.to/")) return out;

        // ── share4max / playerwish / streamwish-family → extractVideoDeep ──────
        try {
          const result = await Promise.race([
            extractVideoDeep(sUrl, `${MITANIME_BASE}/`),
            new Promise<null>(resolve => setTimeout(() => resolve(null), 22000)),
          ]);
          if (result?.url) {
            const isHls = result.type === "hls";
            const hasNonStdPort = /:\d{4,5}\//.test(result.url) &&
              !/:(80|443|8080|8443)\//.test(result.url);
            const directUrl = isHls
              ? `/api/anime/hls-proxy?url=${encodeURIComponent(result.url)}&ref=${encodeURIComponent(sUrl)}`
              : hasNonStdPort
                ? `/api/anime/video-proxy?url=${encodeURIComponent(result.url)}&ref=${encodeURIComponent(sUrl)}`
                : result.url;
            out.push({ name: `ميتانيمي · ${sName} · ${qLabel}`,
              url: sUrl, quality: qLabel, qualityRank: qRank, site: "mitanime",
              directUrl, directType: result.type });
          }
        } catch {}
        return out;
      });

    const perServer = await Promise.all(serverTasks);
    for (const batch of perServer) sources.push(...batch);

    if (sources.length) mitanimeSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  TOONSTREAM.VIP scraper  (Japanese/multi-audio HLS)
//  Episode slug: {anime-slug}-1x{ep}
//  Player chain: episode page → outer server iframe → .Video iframe
//                → as-cdn21.top (HEAD cookie + POST getVideo → m3u8)
//                → OR rubystm.com (packed JS → m3u8)
// ════════════════════════════════════════════════════════════════════

const TOON_VIP = "https://toonstream.vip";
const AS_CDN_B = "https://as-cdn21.top";
const RUBY_B   = "https://rubystm.com";

const toonSrcCache    = new Map<string, { sources: UnifiedSource[]; ts: number }>();
const toonSeriesCache = new Map<string, { urls: string[]; ts: number }>();

async function extractAsCdn(playerUrl: string): Promise<string | null> {
  try {
    const r1 = await fetch(playerUrl, {
      method: "HEAD",
      headers: { "User-Agent": BROWSER_UA },
      signal: AbortSignal.timeout(7000),
    });
    const rawCookies = (r1.headers.getSetCookie?.() ?? [r1.headers.get("set-cookie") ?? ""])
      .filter(Boolean);
    const cook = rawCookies.map((c: string) => c.split(";")[0]).join("; ");
    const hash = playerUrl.split("/").pop() || "";
    if (!hash || hash.length < 5) return null;

    const r2 = await fetch(`${AS_CDN_B}/player/index.php?data=${hash}&do=getVideo`, {
      method: "POST",
      body: JSON.stringify({ hash, r: "" }),
      headers: {
        "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8",
        "X-Requested-With": "XMLHttpRequest",
        Origin: AS_CDN_B,
        Referer: playerUrl,
        "User-Agent": BROWSER_UA,
        ...(cook ? { Cookie: cook } : {}),
      },
      signal: AbortSignal.timeout(8000),
    });
    if (!r2.ok) return null;
    const j = await r2.json() as any;
    const url = j.securedLink || j.videoSource;
    return (url && typeof url === "string" && url.startsWith("http")) ? url : null;
  } catch { return null; }
}

async function extractRubyStm(playerUrl: string, referer: string): Promise<string | null> {
  const fc = playerUrl.replace(".html", "").split("/").pop() || "";
  if (!fc) return null;
  try {
    const r = await fetch(`${RUBY_B}/dl`, {
      method: "POST",
      body: `op=embed&file_code=${fc}&auto=1&referer=${encodeURIComponent(referer)}`,
      headers: {
        "Content-Type": "application/x-www-form-urlencoded",
        Referer: playerUrl,
        "User-Agent": BROWSER_UA,
      },
      signal: AbortSignal.timeout(10000),
    });
    if (!r.ok) return null;
    const html = await r.text();
    const direct = parseVideoUrl(html);
    if (direct?.url && direct.url.includes(".m3u8")) return direct.url;
    return null;
  } catch { return null; }
}

/** Decode HTML entities in URLs captured from HTML attributes */
function decodeHtmlEntities(s: string): string {
  return s.replace(/&amp;/g, "&").replace(/&#038;/g, "&").replace(/&lt;/g, "<")
          .replace(/&gt;/g, ">").replace(/&quot;/g, '"').replace(/&#39;/g, "'");
}

/**
 * Resolve ALL ToonStream series page URLs for a given title.
 * Returns multiple candidates (ordered best-first) so the caller
 * can try each until one yields working HLS sources.
 */
async function resolveToonSeriesUrls(title: string, english: string | null): Promise<string[]> {
  const ck = (title + "|" + (english || "")).toLowerCase();
  const hit = toonSeriesCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.urls;

  const slugCandidates: string[] = [];
  for (const q of [english, title].filter(Boolean) as string[]) {
    const s = toSlug(q as string);
    if (!s) continue;
    slugCandidates.push(s);
    if (s.startsWith("the-")) slugCandidates.push(s.slice(4));
    const stripped = s.replace(/[-–](?:season[-–]?\d+|\d+(?:nd|rd|th)[-–]season|s\d+)$/i, "");
    if (stripped !== s && stripped.length > 2) slugCandidates.push(stripped);
    const noColon = toSlug((q as string).replace(/[:：].*/g, "").trim());
    if (noColon && noColon !== s) slugCandidates.push(noColon);
  }

  const found: string[] = [];
  const seenUrls = new Set<string>();

  function addCandidate(url: string) {
    // Reject non-Japanese-audio series (Hindi, dubbed, multi-audio, fandub, etc.)
    if (/[\-/](?:hindi|dubbed|eng-dub|english-dub|arabic-dub|multi-audio|multi-sub|fandub)(?:[\-/.]|$)/i.test(url)) return;
    if (!seenUrls.has(url)) { seenUrls.add(url); found.push(url); }
  }

  // Direct slug check — collect ALL matching series pages
  for (const slug of [...new Set(slugCandidates)]) {
    try {
      const r = await fetch(`${TOON_VIP}/series/${slug}/`, {
        headers: { "User-Agent": BROWSER_UA, Referer: TOON_VIP + "/" },
        signal: AbortSignal.timeout(7000), redirect: "follow",
      });
      if (r.ok) {
        const html = await r.text();
        if (html.includes("/episode/") && !html.includes("Page not found")) {
          addCandidate(`${TOON_VIP}/series/${slug}/`);
          // Also check for cross-domain episode links (toonstream.co slugs) that
          // point to alternative series on toonstream.vip
          for (const m of html.matchAll(/href="https?:\/\/toonstream\.co\/episode\/([^/"]+)-\d+x\d+\/"/gi)) {
            // Extract series slug from episode URL: "haikyu-multi-audio-1x1" → "haikyu-multi-audio"
            const epSlug = m[1];
            const altSeriesSlug = epSlug.replace(/-\d+x\d+$/, "");
            const altUrl = `${TOON_VIP}/series/${altSeriesSlug}/`;
            if (!seenUrls.has(altUrl)) {
              // Verify the alt series exists on toonstream.vip
              try {
                const rAlt = await fetch(altUrl, {
                  headers: { "User-Agent": BROWSER_UA, Referer: TOON_VIP + "/" },
                  signal: AbortSignal.timeout(5000), redirect: "follow",
                });
                if (rAlt.ok) {
                  const hAlt = await rAlt.text();
                  if (hAlt.includes("/episode/") && !hAlt.includes("Page not found")) {
                    addCandidate(altUrl);
                  }
                }
              } catch {}
            }
          }
        }
      }
    } catch {}
  }

  // Search /?s= — collect all matching series pages by score
  for (const q of [english, title].filter(Boolean) as string[]) {
    try {
      const r = await fetch(`${TOON_VIP}/?s=${encodeURIComponent(q as string)}`, {
        headers: { "User-Agent": BROWSER_UA, Referer: TOON_VIP + "/" },
        signal: AbortSignal.timeout(10000), redirect: "follow",
      });
      if (!r.ok) continue;
      const html = await r.text();

      const candidates: Array<{ url: string; score: number }> = [];
      for (const m of html.matchAll(/href="(https?:\/\/toonstream\.vip\/series\/([^/"]+)\/)"/gi)) {
        const seriesUrl = m[1];
        const slug = m[2];
        const label = slug.replace(/-/g, " ");
        const score = Math.max(
          similarity(label, title),
          english ? similarity(label, english) : 0,
        );
        if (score > 0.22) candidates.push({ url: seriesUrl, score });
      }
      // Prefer Arabic-dubbed series; reject Hindi
      candidates.sort((a, b) => {
        const aAr = /arabic|عربي/i.test(a.url) ? 1 : 0;
        const bAr = /arabic|عربي/i.test(b.url) ? 1 : 0;
        if (aAr !== bAr) return bAr - aAr;
        return b.score - a.score;
      });
      for (const c of candidates.slice(0, 4)) addCandidate(c.url);
      if (found.length) break;
    } catch {}
  }

  toonSeriesCache.set(ck, { urls: found, ts: Date.now() });
  return found;
}

/** Extract the episode URL from a ToonStream episode page and pull HLS sources. */
async function extractToonEpisodeSources(epPageUrl: string): Promise<UnifiedSource[]> {
  const sources: UnifiedSource[] = [];
  try {
    const r = await fetch(epPageUrl, {
      headers: { "User-Agent": BROWSER_UA, Referer: TOON_VIP + "/" },
      signal: AbortSignal.timeout(12000), redirect: "follow",
    });
    if (!r.ok) return [];
    const html = await r.text();
    if (html.length < 500) return [];

    const outerSrcs: string[] = [];
    for (const m of html.matchAll(/data-src=["']([^"']+)["']/gi)) {
      const decoded = decodeHtmlEntities(m[1]);
      if (decoded.includes("toonstream.vip") && decoded.includes("trembed")) {
        if (!outerSrcs.includes(decoded)) outerSrcs.push(decoded);
      }
    }
    if (!outerSrcs.length) return [];

    for (const outerSrc of outerSrcs.slice(0, 3)) {
      try {
        const r2 = await fetch(outerSrc, {
          headers: { "User-Agent": BROWSER_UA, Referer: TOON_VIP + "/" },
          signal: AbortSignal.timeout(10000),
        });
        if (!r2.ok) continue;
        const html2 = await r2.text();

        const innerM = html2.match(
          /<iframe[^>]+src=["']([^"']*(?:as-cdn21\.top|rubystm\.com)[^"']*)["']/i
        );
        if (!innerM) continue;
        const playerUrl = innerM[1];

        if (playerUrl.includes("as-cdn21.top")) {
          const m3u8 = await extractAsCdn(playerUrl);
          if (m3u8) {
            const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(m3u8)}&ref=${encodeURIComponent(playerUrl)}`;
            sources.push({
              name: "تون ستريم · ياباني",
              url: playerUrl,
              quality: "HD",
              qualityRank: 10,
              site: "toonstream",
              directUrl: proxied,
              directType: "hls",
            });
            if (sources.length >= 2) break;
          }
        } else if (playerUrl.includes("rubystm.com")) {
          const m3u8 = await extractRubyStm(playerUrl, outerSrc);
          if (m3u8) {
            const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(m3u8)}&ref=${encodeURIComponent(playerUrl)}`;
            sources.push({
              name: "تون ستريم · ياباني",
              url: playerUrl,
              quality: "HD",
              qualityRank: 10,
              site: "toonstream",
              directUrl: proxied,
              directType: "hls",
            });
            if (sources.length >= 2) break;
          }
        }
      } catch {}
      if (sources.length >= 2) break;
    }
  } catch {}
  return sources;
}

async function getToonStreamSources(
  title: string, english: string | null, ep: number,
): Promise<UnifiedSource[]> {
  const ck = `toon:${(title + "|" + (english || "")).toLowerCase()}:${ep}`;
  const hit = toonSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;

  // ── Step 1: Try direct episode URL guess (fast path, works for many anime) ─
  const slugCandidates: string[] = [];
  for (const q of [english, title].filter(Boolean) as string[]) {
    const s = toSlug(q as string);
    if (!s) continue;
    slugCandidates.push(s);
    if (s.startsWith("the-")) slugCandidates.push(s.slice(4));
    const stripped = s.replace(/[-–](?:season[-–]?\d+|\d+(?:nd|rd|th)[-–]season|s\d+)$/i, "");
    if (stripped !== s && stripped.length > 2) slugCandidates.push(stripped);
    const noColon = toSlug((q as string).replace(/[:：].*/g, "").trim());
    if (noColon && noColon !== s) slugCandidates.push(noColon);
  }

  for (const baseSlug of [...new Set(slugCandidates)]) {
    const epSlug = `${baseSlug}-1x${ep}`;
    try {
      const r = await fetch(`${TOON_VIP}/episode/${epSlug}/`, {
        headers: { "User-Agent": BROWSER_UA, Referer: TOON_VIP + "/" },
        signal: AbortSignal.timeout(8000), redirect: "follow",
      });
      if (r.ok) {
        const html = await r.text();
        if (html.length > 500 && html.includes("trembed")) {
          const sources = await extractToonEpisodeSources(`${TOON_VIP}/episode/${epSlug}/`);
          if (sources.length) {
            toonSrcCache.set(ck, { sources, ts: Date.now() });
            return sources;
          }
        }
      }
    } catch {}
  }

  // ── Step 2: Find series page(s) via search, then pick episode by position ─
  const seriesPageUrls = await resolveToonSeriesUrls(title, english);
  if (!seriesPageUrls.length) return [];

  for (const seriesPageUrl of seriesPageUrls) {
    try {
      const r = await fetch(seriesPageUrl, {
        headers: { "User-Agent": BROWSER_UA, Referer: TOON_VIP + "/" },
        signal: AbortSignal.timeout(10000), redirect: "follow",
      });
      if (!r.ok) continue;
      const html = await r.text();

      // Collect ordered, deduplicated episode links (toonstream.vip only)
      const epLinks: string[] = [];
      for (const m of html.matchAll(/href="(https?:\/\/toonstream\.vip\/episode\/[^"]+)"/gi)) {
        if (!epLinks.includes(m[1])) epLinks.push(m[1]);
      }
      if (!epLinks.length || ep > epLinks.length) continue;

      const epPageUrl = epLinks[ep - 1];
      const sources = await extractToonEpisodeSources(epPageUrl);
      if (sources.length) {
        toonSrcCache.set(ck, { sources, ts: Date.now() });
        return sources;
      }
    } catch {}
  }
  return [];
}


// ════════════════════════════════════════════════════════════════════
//  OKANIME.XYZ scraper  (Arabic anime — عربي مترجم)
//  Search: GET /api/search?q= → JSON [{name, slug, ...}]
//  Episode: GET /episode/{slug}-episode-{N}
//  Servers: Alpine.js @click="setServer('URL')" pattern
// ════════════════════════════════════════════════════════════════════

const OK_DOMAINS = [
  "https://ww3.okanime.xyz",  // ✅ confirmed working 2026-06
  "https://okanime.xyz",
  "https://ww1.okanime.xyz",
  "https://ww2.okanime.xyz",
  "https://ww4.okanime.xyz",
];
let OK_BASE = OK_DOMAINS[0];
const OK_HDRS: Record<string, string> = { ...BASE_HDRS, Referer: `${OK_BASE}/` };

const okSlugCache = new Map<string, { slug: string | null; ts: number }>();
const okSrcCache  = new Map<string, { sources: UnifiedSource[]; ts: number }>();

async function searchOkAnime(title: string, english: string | null, isMovie = false, ctx?: MatchCtx): Promise<string | null> {
  const ck = (title + "|" + (english || "")).toLowerCase();
  const hit = okSlugCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.slug;

  // Build slug variants from titles (fallback if API search fails)
  const slugVariants: string[] = [];
  for (const q of [english, title].filter(Boolean) as string[]) {
    const s = toSlug(q as string);
    if (!s) continue;
    slugVariants.push(s);
    const stripped = s.replace(/[-–](?:season[-–]?\d+|\d+(?:nd|rd|th)[-–]season|s\d+)$/i, "");
    if (stripped !== s && stripped.length > 2) slugVariants.push(stripped);
    const noColon = toSlug((q as string).replace(/[:：].*/g, "").trim());
    if (noColon && noColon !== s) slugVariants.push(noColon);
  }

  // Resolve the active OkAnime domain by testing /api/search (fast JSON endpoint)
  async function resolveOkBase(): Promise<string> {
    for (const domain of OK_DOMAINS) {
      try {
        const r = await fetch(`${domain}/api/search?q=naruto`, {
          headers: { ...BASE_HDRS, Referer: `${domain}/` },
          signal: AbortSignal.timeout(5000), redirect: "follow",
        });
        if (r.ok) { OK_BASE = domain; return domain; }
      } catch {}
    }
    return OK_BASE;
  }

  // Method 1 (PRIMARY): /api/search?q= JSON endpoint — direct fetch, no CF needed
  // Returns [{name, name_arabic, slug, poster, type}] — fast and reliable
  const activeBase = await resolveOkBase();
  const okMin = ctx ? 0.52 : (isMovie ? 0.68 : 0.60);
  for (const q of [english, title].filter(Boolean) as string[]) {
    try {
      const r = await fetch(
        `${activeBase}/api/search?q=${encodeURIComponent(q as string)}`,
        { headers: { ...BASE_HDRS, Referer: `${activeBase}/` }, signal: AbortSignal.timeout(8000), redirect: "follow" },
      );
      if (!r.ok) continue;
      const data = await r.json() as Array<{ name?: string; name_arabic?: string; slug?: string; type?: string }>;
      if (!Array.isArray(data) || !data.length) continue;

      let best: string | null = null, bestScore = 0;
      for (const item of data) {
        if (!item.slug) continue;
        // Filter by type if we know it (مسلسل=TV, فيلم=movie) to avoid wrong matches
        if (isMovie && item.type && !["فيلم", "movie", "فيلم قصير"].some(t => (item.type || "").includes(t))) continue;
        const nameLabel = (item.name || "").toLowerCase();
        const nameAr    = (item.name_arabic || "").toLowerCase();
        const slugLabel = item.slug.replace(/-/g, " ");
        const score = ctx
          ? Math.max(
              multiScore(nameLabel || slugLabel, { ...ctx, scraper: "okanime" }).score,
              nameAr ? multiScore(nameAr, { ...ctx, scraper: "okanime" }).score : 0,
            )
          : isMovie
            ? Math.max(
                strictMovieSimilarity(nameLabel, title),
                english ? strictMovieSimilarity(nameLabel, english) : 0,
                strictMovieSimilarity(slugLabel, title),
                english ? strictMovieSimilarity(slugLabel, english) : 0,
              )
            : Math.max(
                similarity(nameLabel, title),
                english ? similarity(nameLabel, english) : 0,
                similarity(slugLabel, title),
                english ? similarity(slugLabel, english) : 0,
              );
        if (score > bestScore && score > okMin) { bestScore = score; best = item.slug; }
      }
      if (best) { okSlugCache.set(ck, { slug: best, ts: Date.now() }); return best; }
    } catch {}
  }

  // Method 2 (FALLBACK): Direct slug guess via /anime/{slug} page
  // okanime does NOT block datacenter IPs — direct fetch works (HTTP 200 confirmed)
  const okDirectMin = ctx ? 0.52 : (isMovie ? 0.68 : 0.60);
  for (const slug of [...new Set(slugVariants)]) {
    for (const domain of OK_DOMAINS) {
      try {
        const r = await fetch(`${domain}/anime/${slug}`, {
          headers: { ...BASE_HDRS, Referer: `${domain}/` }, signal: AbortSignal.timeout(8000), redirect: "follow",
        });
        if (!r.ok) continue;
        const html = await r.text();
        if (!html.includes("/episode/")) continue;
        const pageTitleM = html.match(/<title[^>]*>([^<]{2,120})<\/title>/i)
          || html.match(/<h1[^>]*>([^<]{2,120})<\/h1>/i);
        const pageTitle = (pageTitleM?.[1] || "").replace(/\s*[-–|].*$/, "").replace(/\s*–\s*okanime.*/i, "").trim();
        const slugLabel = slug.replace(/-/g, " ");
        const verScore = ctx
          ? multiScore(pageTitle || slugLabel, { ...ctx, scraper: "okanime" }).score
          : Math.max(
            pageTitle ? similarity(pageTitle, title) : 0,
            pageTitle && english ? similarity(pageTitle, english) : 0,
            similarity(slugLabel, title),
            english ? similarity(slugLabel, english) : 0,
          );
        if (verScore >= okDirectMin) {
          OK_BASE = domain;
          okSlugCache.set(ck, { slug, ts: Date.now() });
          return slug;
        }
      } catch {}
    }
  }

  okSlugCache.set(ck, { slug: null, ts: Date.now() });
  return null;
}

// Dead/unreliable embed hosts on okanime — skip to avoid wasted iframe loads
const OK_SKIP_SERVERS = new Set(["solidfiles", "4shared", "uptostream"]);

// Quality label → qualityRank mapping (from okanime <span> labels)
const OK_QUALITY_RANK: Record<string, number> = { FHD: 14, HD: 11, SD: 7 };
const OK_QUALITY_MAP:  Record<string, string>  = { FHD: "FHD 1080p", HD: "HD 720p", SD: "SD 480p" };

async function getOkAnimeSources(
  title: string, english: string | null, ep: number, isMovie = false,
  ctx?: MatchCtx,
): Promise<UnifiedSource[]> {
  const ck = `ok:${(title + "|" + (english || "")).toLowerCase()}:${ep}`;
  const hit = okSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;

  try {
    const slug = await searchOkAnime(title, english, isMovie, ctx);
    if (!slug) return [];

    // okanime does NOT block datacenter IPs — direct fetch works (HTTP 200 confirmed 2026-07)
    // No need for cfProxy. Try non-padded then padded episode number.
    let html = "";
    for (const epCandidate of [
      `${OK_BASE}/episode/${slug}-episode-${ep}`,
      `${OK_BASE}/episode/${slug}-episode-${String(ep).padStart(2, "0")}`,
    ]) {
      try {
        const r = await fetch(epCandidate, {
          headers: { ...BASE_HDRS, Referer: `${OK_BASE}/` }, signal: AbortSignal.timeout(12000), redirect: "follow",
        });
        if (r.ok) { html = await r.text(); break; }
      } catch {}
    }
    if (html.length < 500) return [];

    // Parse structured source entries from Alpine.js HTML and resolve directly.
    // NOTE: data-server and @click are on SEPARATE LINES in the HTML, so we
    // split by <a tag and extract each attribute independently from each block.
    type OkRawEntry = { serverKey: string; rawUrl: string; qlabel: string; slabel: string };
    const rawEntries: OkRawEntry[] = [];
    const linkBlocks = html.split(/<a\s/i).slice(1);
    for (const block of linkBlocks) {
      const serverKeyM = block.match(/data-server="([^"]+)"/);
      const urlM       = block.match(/@click="setServer\('([^']+)'\)"/);
      const qlM        = block.match(/<span>(FHD|HD|SD)<\/span>/i);
      const lblM       = block.match(/<span>(?:FHD|HD|SD)<\/span>([^<]+)/i);
      if (!serverKeyM || !urlM) continue;
      const serverKey = serverKeyM[1].trim();
      const rawUrl    = decodeHtmlEntities(urlM[1].trim());
      const qlabel    = qlM ? qlM[1].trim().toUpperCase() : "HD";
      const slabel    = lblM ? lblM[1].trim() : serverKey;
      if (!rawUrl.startsWith("http") || seen.has(rawUrl)) continue;
      if (OK_SKIP_SERVERS.has(serverKey)) continue;
      seen.add(rawUrl);
      rawEntries.push({ serverKey, rawUrl, qlabel, slabel });
    }

    // Resolve in parallel — direct API calls, not embed loading
    const resolvedBatches = await Promise.all(rawEntries.map(async ({ serverKey, rawUrl, qlabel, slabel }) => {
      const quality     = OK_QUALITY_MAP[qlabel]  ?? "HD 720p";
      const qualityRank = OK_QUALITY_RANK[qlabel] ?? 11;
      const displayName = `أوك أنمي · ${slabel} ${qlabel}`;

      // share4max / megamax → Inertia API (ok.ru mirror → direct HLS, no iframe needed)
      if (rawUrl.includes("share4max.com/iframe/") || rawUrl.includes("megamax.me/iframe/")) {
        const hashMatch = rawUrl.match(/\/iframe\/([^/?#]+)/);
        // Always return isEmbed fallback — race parseShareMaxStreams with 6s timeout
        // (ok.ru geo-blocked = 12s+; this prevents 38s wait before fallback)
        const isEmbedResult: UnifiedSource = { name: displayName, url: rawUrl, quality, qualityRank,
                                               site: "okanime", isEmbed: true };
        if (hashMatch) {
          try {
            let hn = "share4max.com";
            try { hn = new URL(rawUrl).hostname; } catch {}
            const race = Promise.race([
              parseShareMaxStreams(hn, hashMatch[1], rawUrl),
              new Promise<null>(res => setTimeout(() => res(null), 6000)),
            ]);
            const direct = await race;
            if (direct?.url) {
              const directUrl = direct.type === "hls"
                ? `/api/anime/hls-proxy?url=${encodeURIComponent(direct.url)}&ref=${encodeURIComponent(rawUrl)}`
                : direct.url;
              return [{ name: displayName, url: rawUrl, quality, qualityRank, site: "okanime",
                        directUrl, directType: direct.type } as UnifiedSource];
            }
          } catch {}
        }
        return [isEmbedResult];
      }

      // ok.ru / okru → direct HLS extractor
      if (serverKey === "okru" || rawUrl.includes("ok.ru/videoembed/") || rawUrl.includes("odnoklassniki.ru/videoembed/")) {
        const okm = rawUrl.match(/\/videoembed\/(\d+)/);
        if (okm) {
          try {
            // Race with 5s — ok.ru is geo-blocked from VPS (12s default timeout wastes time)
            const vids = await Promise.race([
              extractOkRuVideo(okm[1]),
              new Promise<[]>(res => setTimeout(() => res([]), 5000)),
            ]);
            const hlsSrc = vids.find((v: any) => v.type === "hls" && v.url);
            if (hlsSrc) {
              const directUrl = `/api/anime/hls-proxy?url=${encodeURIComponent(hlsSrc.url)}&ref=${encodeURIComponent(rawUrl)}`;
              return [{ name: displayName, url: rawUrl, quality, qualityRank, site: "okanime",
                        directUrl, directType: "hls" } as UnifiedSource];
            }
          } catch {}
        }
        return [];
      }

      // mega.nz embed → return as embed (fragment key handled by browser)
      if (rawUrl.includes("mega.nz/embed")) {
        return [{ name: displayName, url: rawUrl, quality, qualityRank, site: "okanime",
                  isEmbed: true } as UnifiedSource];
      }

      // Other embeds (uqload, mp4upload, doodstream…) → skip (CDN blocks VPS IPs)
      return [] as UnifiedSource[];
    }));
    for (const batch of resolvedBatches) sources.push(...batch);

        // Fallback: simple setServer() scan (no structured data — handles edge-case HTML variants)
    // Fallback: setServer() scan — only accept share4max/ok.ru/mega (resolvable without embed loading)
    if (!sources.length) {
      for (const m of html.matchAll(/@click="setServer\('([^']+)'\)"/gs)) {
        const url = decodeHtmlEntities(m[1].trim());
        if (!url.startsWith("http") || seen.has(url)) continue;
        seen.add(url);
        if (url.includes("share4max.com/iframe/") || url.includes("megamax.me/iframe/")) {
          const hm = url.match(/\/iframe\/([^/?#]+)/);
          if (hm) {
            try {
              let hn = "share4max.com"; try { hn = new URL(url).hostname; } catch {}
              const direct = await parseShareMaxStreams(hn, hm[1], url);
              if (direct?.url) {
                const directUrl = direct.type === "hls"
                  ? `/api/anime/hls-proxy?url=${encodeURIComponent(direct.url)}&ref=${encodeURIComponent(url)}`
                  : direct.url;
                sources.push({ name: `أوك أنمي · سيرفر ${sources.length + 1}`, url, quality: "HD 720p", qualityRank: 11,
                               site: "okanime", directUrl, directType: direct.type });
              }
            } catch {}
          }
        } else if (url.includes("ok.ru/videoembed/") || url.includes("odnoklassniki.ru/videoembed/")) {
          const okm = url.match(/\/videoembed\/(\d+)/);
          if (okm) {
            try {
              const vids = await Promise.race([
                extractOkRuVideo(okm[1]),
                new Promise<[]>(res => setTimeout(() => res([]), 5000)),
              ]);
              const hlsSrc = vids.find((v: any) => v.type === "hls" && v.url);
              if (hlsSrc) {
                sources.push({ name: `أوك أنمي · سيرفر ${sources.length + 1}`, url, quality: "HD 720p", qualityRank: 11,
                               site: "okanime", directUrl: `/api/anime/hls-proxy?url=${encodeURIComponent(hlsSrc.url)}&ref=${encodeURIComponent(url)}`, directType: "hls" });
              }
            } catch {}
          }
        } else if (url.includes("mega.nz/embed")) {
          sources.push({ name: `أوك أنمي · ميغا ${sources.length + 1}`, url, quality: "HD 720p", qualityRank: 11,
                        site: "okanime", isEmbed: true });
        }
        // Skip other embeds (uqload, mp4upload, etc.) — VPS IP blocked by their CDNs
      }
    }

    if (!sources.length) return [];
    okSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch { return []; }
}


// animetime (AT / anime-time.live): أُزيل كلياً بطلب المستخدم 2026-07-09

// ════════════════════════════════════════════════════════════════════
//  RISTOANIME.CO scraper  (Arabic anime — WordPress TopAnime theme)
//  Search: POST /wp-content/themes/TopAnime/Ajaxt/Searching.php
//  Series page → extract post_id + season IDs
//  Episodes AJAX: POST /wp-content/themes/TopAnime/Ajaxt/Single/Episodes.php
//  Episode page: ul#watch li[data-watch="IFRAME_URL"]
// ════════════════════════════════════════════════════════════════════

const RISTO_BASE = "https://ristoanime.me";
const RISTO_AJAX = `${RISTO_BASE}/wp-content/themes/TopAnime/Ajaxt`;
const RISTO_HDRS: Record<string, string> = { ...BASE_HDRS, Referer: "https://ristoanime.me/" };
const RISTOANIME_DISABLED = true; // ristoanime.me — DNS failure (site dead) 2026-07-08

const ristoSeriesCache = new Map<string, { url: string | null; ts: number }>();
const ristoSrcCache    = new Map<string, { sources: UnifiedSource[]; ts: number }>();

async function searchRistoAnime(title: string, english: string | null): Promise<string | null> {
  const ck = (title + "|" + (english || "")).toLowerCase();
  const hit = ristoSeriesCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.url;

  for (const q of [english, title].filter(Boolean) as string[]) {
    try {
      // ristoanime.me AJAX works directly from Replit IPs (confirmed 2026-06)
      // Try direct fetch first (faster), fall back to cfProxyPost if blocked
      let html: string | null = null;
      try {
        const direct = await fetch(`${RISTO_AJAX}/Searching.php`, {
          method: "POST",
          headers: {
            ...RISTO_HDRS,
            "Content-Type": "application/x-www-form-urlencoded",
            "X-Requested-With": "XMLHttpRequest",
          },
          body: `search=${encodeURIComponent(q as string)}`,
          signal: AbortSignal.timeout(7000),
        });
        if (direct.ok) html = await direct.text();
      } catch { /* fall through */ }
      if (!html || isCloudflareBlock(html) || html.length < 50) {
        html = await cfProxyPost(
          `${RISTO_AJAX}/Searching.php`,
          `search=${encodeURIComponent(q as string)}`,
          "application/x-www-form-urlencoded",
          `${RISTO_BASE}/`,
          8000,
        );
      }
      if (!html || isCloudflareBlock(html) || html.length < 50) continue;

      const seriesUrls: Array<{ url: string; score: number }> = [];
      for (const m of html.matchAll(/href="(https?:\/\/ristoanime\.me\/series\/[^"]+)"/g)) {
        const u = m[1];
        const slug = decodeURIComponent(u.replace(RISTO_BASE + "/series/", "").replace(/\/$/, "")).toLowerCase();
        // Use both regular + ASCII-only similarity to handle mixed Arabic-English slugs
        // e.g. "انمي-ون-بيس-one-piece-hg" → asciiSimilarity extracts "one piece hg" first
        const score = Math.max(
          similarity(slug, title),
          english ? similarity(slug, english) : 0,
          asciiSimilarity(slug, title),
          english ? asciiSimilarity(slug, english) : 0,
        );
        seriesUrls.push({ url: u, score });
      }

      const best = seriesUrls.sort((a, b) => b.score - a.score)[0];
      if (best && best.score > 0.2) {
        ristoSeriesCache.set(ck, { url: best.url, ts: Date.now() });
        return best.url;
      }
    } catch {}
  }

  ristoSeriesCache.set(ck, { url: null, ts: Date.now() });
  return null;
}

async function getRistoAnimeSources(
  title: string, english: string | null, ep: number,
): Promise<UnifiedSource[]> {
  if (RISTOANIME_DISABLED) return [];
  const ck = `risto:${(title + "|" + (english || "")).toLowerCase()}:${ep}`;
  const hit = ristoSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;

  try {
    const seriesUrl = await searchRistoAnime(title, english);
    if (!seriesUrl) return [];

    // ristoanime.me is accessible directly from Replit (confirmed 2026-06)
    // Try direct fetch first; fall back to Orkestr/cfProxy if blocked
    let seriesHtml: string | null = null;
    try {
      const dr = await fetch(seriesUrl, { headers: RISTO_HDRS, signal: AbortSignal.timeout(10000), redirect: "follow" });
      if (dr.ok) seriesHtml = await dr.text();
    } catch { /* fall through */ }
    if (!seriesHtml || isCloudflareBlock(seriesHtml)) {
      seriesHtml = (await orkestGet(seriesUrl, `${RISTO_BASE}/`, 12000))
        ?? await cfProxyGet(seriesUrl, `${RISTO_BASE}/`, 10000);
    }
    if (!seriesHtml || isCloudflareBlock(seriesHtml)) return [];

    const postIdM = seriesHtml.match(/post_id:\s*['"](\d+)['"]/);   // single OR double quotes
    if (!postIdM) return [];
    const postId = postIdM[1];

    // Collect season IDs from the series page (WordPress category/term IDs, not sequential)
    const seasonIds = [...seriesHtml.matchAll(/data-season="([^"]+)"/g)].map(m => m[1]);
    const seasons = seasonIds.length ? [...new Set(seasonIds)] : ["1"];

    let epUrl: string | null = null;

    for (const season of seasons.slice(0, 4)) {
      const postBody = `season=${encodeURIComponent(season)}&post_id=${postId}`;
      // Try cfProxy first (bypasses IP block on AJAX endpoint), fallback to plain fetch
      let epsHtml = await cfProxyPost(`${RISTO_AJAX}/Single/Episodes.php`, postBody, "application/x-www-form-urlencoded", seriesUrl);
      if (!epsHtml) {
        try {
          const eR = await fetch(`${RISTO_AJAX}/Single/Episodes.php`, {
            method: "POST",
            body: postBody,
            headers: {
              ...RISTO_HDRS,
              "Content-Type": "application/x-www-form-urlencoded",
              "X-Requested-With": "XMLHttpRequest",
              Referer: seriesUrl,
            },
            signal: AbortSignal.timeout(8000),
          });
          if (eR.ok) epsHtml = await eR.text();
        } catch {}
      }
      if (!epsHtml || isCloudflareBlock(epsHtml) || epsHtml.length < 50) continue;

      // Episode links are at root domain (e.g. https://ristoanime.me/انمي-dandadan-الحلقة-1-...)
      const epLinks: string[] = [];
      for (const m of epsHtml.matchAll(/href="(https?:\/\/ristoanime\.me\/[^"]+)"/g)) {
        const u = m[1];
        // Skip WP system paths, series pages, feed/tag/category
        if (/\/(series|category|tag|wp-admin|wp-content|wp-json|feed|page)\//i.test(u)) continue;
        if (u === RISTO_BASE + "/" || u.endsWith("/series/")) continue;
        if (!epLinks.includes(u)) epLinks.push(u);
      }
      if (!epLinks.length) continue;

      // Match episode by Arabic URL pattern: الحلقة-{N}- or الحلقة-{N}/
      const byArabic = epLinks.find(u => {
        const dec = decodeURIComponent(u);
        return dec.includes(`الحلقة-${ep}-`) || dec.includes(`الحلقة-${ep}/`);
      });
      if (byArabic) { epUrl = byArabic; break; }

      // Fallback: slug ends with -N/ or -0N/
      const bySlug = epLinks.find(u => {
        const slug = decodeURIComponent(u).toLowerCase();
        return slug.endsWith(`-${ep}/`) || slug.endsWith(`-${String(ep).padStart(2, "0")}/`);
      });
      if (bySlug) { epUrl = bySlug; break; }

      // No position-based fallback: wrong episodes are worse than no source
    }

    if (!epUrl) return [];

    // Fetch episode page with ?watch=1 → server list is only in this variant
    const watchEpUrl = epUrl + (epUrl.includes("?") ? "&" : "?") + "watch=1";
    let epHtml: string | null = null;
    try {
      const edr = await fetch(watchEpUrl, { headers: RISTO_HDRS, signal: AbortSignal.timeout(10000), redirect: "follow" });
      if (edr.ok) epHtml = await edr.text();
    } catch { /* fall through */ }
    if (!epHtml || isCloudflareBlock(epHtml)) {
      epHtml = (await orkestGet(watchEpUrl, seriesUrl, 12000))
        ?? await cfProxyGet(watchEpUrl, seriesUrl, 10000);
    }
    if (!epHtml || isCloudflareBlock(epHtml)) return [];

    const watchUrls: string[] = [];
    for (const m of epHtml.matchAll(/data-watch=["']([^"']+)["']/g)) {
      const url = decodeHtmlEntities(m[1].trim());
      if (url.startsWith("http") && !watchUrls.includes(url)) watchUrls.push(url);
    }
    if (!watchUrls.length) return [];

    const sources: UnifiedSource[] = watchUrls.map((url, i) => ({
      name: `ريستو أنمي · سيرفر ${i + 1}`,
      url,
      quality: "HD",
      qualityRank: 11,
      site: "ristoanime",
    }));

    ristoSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  W1.ANIME4UP.REST scraper  (Arabic anime — Anime4up WordPress theme)
//  Search:  GET /?s={query} → /anime/{slug}/ links
//  Series:  GET /anime/{slug}/ → 48 visible episode links + old-format slug prefix
//  Episode: GET /episode/{slug}-الحلقة-{N}/ → src= iframe video embeds
//  Old-format URL (works for ALL episodes): /episode/{romaji-slug}-الحلقة-{N}/
// ════════════════════════════════════════════════════════════════════

const A4UP_BASE = "https://anime4up.pro";
const A4UP_HDRS: Record<string, string> = { ...BASE_HDRS, Referer: "https://anime4up.pro/" };

const a4upSeriesCache = new Map<string, { url: string | null; ts: number }>();
const a4upSrcCache    = new Map<string, { sources: UnifiedSource[]; ts: number }>();

/**
 * Fetch an anime4up.cam page, handling the JS bot-protection redirect.
 * The site sometimes returns: <script>window.location.replace('URL?ch=1&js=JWT')</script>
 * We extract the redirect URL and follow it to get the real page.
 */
async function a4upFetchHtml(url: string): Promise<{ ok: boolean; html: string }> {
  const isJwtRedir = (h: string) => /window\.location\.replace\(/.test(h);

  // ── المسار 1: Orkestr EU relay (يتجاوز CF) ──────────────────────────────
  try {
    let html = await orkestGet(url, `${A4UP2_BASE}/`, 15000) ?? "";
    if (html && !isCloudflareBlock(html)) {
      // تحقق من JWT redirect وتابعه عبر Orkestr
      const redir = html.match(/window\.location\.replace\(['"]([^'"]+)['"]\)/)?.[1];
      if (redir && isJwtRedir(html)) {
        const html2 = await orkestGet(redir, `${A4UP2_BASE}/`, 12000) ?? "";
        if (html2 && !isCloudflareBlock(html2) && !isJwtRedir(html2) && html2.length > 300)
          return { ok: true, html: html2 };
      } else if (html.length > 300 && !isJwtRedir(html)) {
        return { ok: true, html };
      }
    }
  } catch { /* fall through */ }

  // ── المسار 2: direct fetch مع متابعة JWT redirect مباشرة ─────────────────
  try {
    const r = await fetch(url, {
      headers: A4UP_HDRS, signal: AbortSignal.timeout(12000), redirect: "follow",
    });
    if (!r.ok) return { ok: false, html: "" };
    let html = await r.text();
    const jsRedir = html.match(/window\.location\.replace\(['"]([^'"]+)['"]\)/)?.[1];
    if (jsRedir) {
      const r2 = await fetch(jsRedir, {
        headers: A4UP_HDRS, signal: AbortSignal.timeout(12000), redirect: "follow",
      });
      if (!r2.ok) return { ok: false, html: "" };
      html = await r2.text();
    }
    if (html.length > 300 && !isCloudflareBlock(html)) return { ok: true, html };
  } catch { /* fall through */ }

  // ── المسار 3: Hopx proxy (IP مختلف) — يتجاوز IP block لكن لا يحل JS challenge ──────
  try {
    const hopxHtml = await hopxProxyGet(url, `${A4UP2_BASE}/`, 18000).catch(() => null);
    if (hopxHtml && hopxHtml.length > 300 && !isCloudflareBlock(hopxHtml) && !isJwtRedir(hopxHtml))
      return { ok: true, html: hopxHtml };
    if (hopxHtml && isJwtRedir(hopxHtml)) {
      const hopxRedir = hopxHtml.match(/window\.location\.replace\(['"]([^'"]+)['"]\)/)?.[1];
      if (hopxRedir) {
        const hopxHtml2 = await hopxProxyGet(hopxRedir, `${A4UP2_BASE}/`, 15000).catch(() => null);
        if (hopxHtml2 && hopxHtml2.length > 300 && !isCloudflareBlock(hopxHtml2) && !isJwtRedir(hopxHtml2))
          return { ok: true, html: hopxHtml2 };
      }
    }
  } catch { /* fall through */ }

  return { ok: false, html: "" };
}

async function searchAnime4up(title: string, english: string | null): Promise<string | null> {
  const ck = (title + "|" + (english || "")).toLowerCase();
  const hit = a4upSeriesCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.url;

  for (const q of [english, title].filter(Boolean) as string[]) {
    const { ok, html } = await a4upFetchHtml(`${A4UP_BASE}/?s=${encodeURIComponent(q)}`);
    if (!ok || isCloudflareBlock(html)) continue;

    const candidates: Array<{ url: string; score: number }> = [];
    for (const m of html.matchAll(/href="(https?:\/\/anime4up\.cam\/anime\/[^"]+)"/g)) {
      const u = m[1];
      if (u.includes("/page/") || u.includes("/feed/")) continue;
      const slug = decodeURIComponent(u.replace(A4UP_BASE + "/anime/", "").replace(/\/$/, "")).toLowerCase();
      const score = Math.max(
        asciiSimilarity(slug, title),
        english ? asciiSimilarity(slug, english) : 0,
        similarity(slug, title),
        english ? similarity(slug, english) : 0,
      );
      if (score > 0.25) candidates.push({ url: u, score });
    }
    if (candidates.length) {
      candidates.sort((a, b) => b.score - a.score);
      const best = candidates[0].url;
      a4upSeriesCache.set(ck, { url: best, ts: Date.now() });
      return best;
    }
  }

  a4upSeriesCache.set(ck, { url: null, ts: Date.now() });
  return null;
}

async function getAnime4upSources(
  title: string, english: string | null, ep: number,
): Promise<UnifiedSource[]> {
  const ck = `a4up:${(title + "|" + (english || "")).toLowerCase()}:${ep}`;
  const hit = a4upSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;

  const epStr = String(ep);
  const epPad = ep < 10 ? `0${ep}` : epStr;
  let cfBlocked = false;

  /* ── try one episode URL → return sources or null ── */
  async function tryEpUrl(url: string): Promise<UnifiedSource[] | null> {
    if (cfBlocked) return null;
    const { ok, html } = await a4upFetchHtml(url);
    if (!ok) return null;
    if (isCloudflareBlock(html)) { cfBlocked = true; return null; }
    /* Real episode pages have the Arabic word for "episode" or data-src attributes */
    if (!html.includes("الحلقة") && !html.includes("data-src") && !html.includes("player")) return null;
    const seen = new Set<string>();
    const iframeUrls: string[] = [];
    for (const m of html.matchAll(/(?:src|data-src)=["']([^"']{10,})["']/gi)) {
      const raw = m[1].trim();
      if (!raw.startsWith("https://")) continue;
      // Skip anime4up links that appear in wrong context (check by both old+new domains)
      const a4upHosts = ["anime4up.cam","w1.anime4up.rest","anime4up.pro","ww5.anime4up.pro"];
      if (a4upHosts.some(h => raw.includes(h))) continue;
      if (/google-analytics|googleapis|gstatic|facebook|twitter|cloudflare|jquery|bootstrap/i.test(raw)) continue;
      if (!seen.has(raw)) { seen.add(raw); iframeUrls.push(raw); }
    }
    if (!iframeUrls.length) return null;
    return iframeUrls.map((u, i) => ({
      name: `أنمي فور أب · سيرفر ${i + 1}`,
      url: u, quality: "HD", qualityRank: 10, site: "anime4up",
    }));
  }

  /* ── helper: try ep number variants on a known series slug ── */
  async function trySlug(slug: string): Promise<UnifiedSource[] | null> {
    for (const n of [epStr, ...(ep < 10 ? [epPad] : [])]) {
      const u = `${A4UP_BASE}/episode/${encodeURIComponent(slug + "-الحلقة-" + n)}/`;
      const s = await tryEpUrl(u);
      if (cfBlocked) return null;
      if (s && s.length > 0) return s;
    }
    return null;
  }

  // ── Step 1: Search + series page → extract real episode slug ──
  const seriesUrl = await searchAnime4up(title, english);
  if (seriesUrl && !cfBlocked) {
    try {
      const { ok: srOk, html: srHtml } = await a4upFetchHtml(seriesUrl);
      if (srOk) {
        if (isCloudflareBlock(srHtml)) {
          cfBlocked = true;
        } else {
          /* Collect all episode links from the series page */
          const epLinks: string[] = [];
          for (const m of srHtml.matchAll(/href="(https?:\/\/anime4up\.cam\/episode\/[^"]+)"/g)) {
            if (!epLinks.includes(m[1])) epLinks.push(m[1]);
          }
          /* First: look for exact episode in visible links */
          for (const link of epLinks) {
            const rawSlug = decodeURIComponent(link.replace(A4UP_BASE + "/episode/", "").replace(/\/$/, ""));
            if (rawSlug.endsWith(`-الحلقة-${epStr}`) || rawSlug.endsWith(`-الحلقة-${epPad}`)) {
              const sources = await tryEpUrl(link);
              if (cfBlocked) break;
              if (sources && sources.length > 0) {
                a4upSrcCache.set(ck, { sources, ts: Date.now() });
                return sources;
              }
            }
          }
          /* Second: extract series slug prefix from any visible link → construct episode URL */
          if (!cfBlocked && epLinks.length > 0) {
            for (const link of epLinks) {
              const rawSlug = decodeURIComponent(link.replace(A4UP_BASE + "/episode/", "").replace(/\/$/, ""));
              const m = rawSlug.match(/^(.+?)-الحلقة-\d+/);
              if (!m) continue;
              const seriesSlug = m[1];
              const sources = await trySlug(seriesSlug);
              if (cfBlocked) break;
              if (sources && sources.length > 0) {
                a4upSrcCache.set(ck, { sources, ts: Date.now() });
                return sources;
              }
              break; // only use slug from the first valid link
            }
          }
        }
      }
    } catch {}
  }

  if (cfBlocked) {
    a4upSrcCache.set(ck, { sources: [], ts: Date.now() });
    return [];
  }

  // ── Step 2: Fallback — derive slug from title directly ──
  const slugCandidates: string[] = [];
  for (const q of [english, title].filter(Boolean) as string[]) {
    const s = toSlug(q as string);
    if (!s || slugCandidates.includes(s)) continue;
    slugCandidates.push(s);
    const stripped = s.replace(/[-–](?:season[-–]?\d+|\d+(?:nd|rd|th)[-–]season|s\d+)$/i, "");
    if (stripped !== s && stripped.length > 2 && !slugCandidates.includes(stripped)) slugCandidates.push(stripped);
    if (s.startsWith("the-") && !slugCandidates.includes(s.slice(4))) slugCandidates.push(s.slice(4));
    const colonJoined = toSlug((q as string).replace(/[：:]/g, ""));
    if (colonJoined && colonJoined !== s && !slugCandidates.includes(colonJoined)) slugCandidates.push(colonJoined);
  }
  for (const slug of slugCandidates) {
    const sources = await trySlug(slug);
    if (cfBlocked) break;
    if (sources && sources.length > 0) {
      a4upSrcCache.set(ck, { sources, ts: Date.now() });
      return sources;
    }
  }

  a4upSrcCache.set(ck, { sources: [], ts: Date.now() });
  return [];
}


// ════════════════════════════════════════════════════════════════════
//  Anime4up (anime4up.pro) — Arabic dubbed/subbed scraper
//  Confirmed working via CF proxy (200). 13 servers per episode.
//  Episode structure: <li data-watch="URL"><a>Name</a></li>
//  Series page: shows latest 48 eps. Search: /?search_param=animes&s=
// ════════════════════════════════════════════════════════════════════

const A4UP2_BASE = "https://anime4up.pro";
const a4up2SeriesCache = new Map<string, { url: string | null; ts: number }>();
const a4up2SrcCache    = new Map<string, { sources: UnifiedSource[]; ts: number }>();

async function a4up2Fetch(url: string, timeoutMs = 7000): Promise<string> {
  // المسار 1: Orkestr EU relay (يتجاوز CF ويتابع JWT redirect تلقائياً)
  try {
    const html = await orkestGet(url, `${A4UP2_BASE}/`, Math.min(timeoutMs, 14000)) ?? "";
    if (html && !isCloudflareBlock(html)) {
      // تابع JWT redirect عبر Orkestr إذا وجد
      const redir = html.match(/window\.location\.replace\(['"]([^'"]+)['"]\)/)?.[1];
      if (redir) {
        const html2 = await orkestGet(redir, `${A4UP2_BASE}/`, Math.min(timeoutMs, 12000)) ?? "";
        if (html2 && !isCloudflareBlock(html2) && !/window\.location\.replace\(/.test(html2))
          return html2;
      } else if (html.length > 200) {
        return html;
      }
    }
  } catch { /* fall through */ }

  // المسار 2: CF proxy محلي (curl_cffi - يقبل 404 كنتيجة صحيحة)
  try {
    const proxyUrl = new URL(`${CF_PROXY_BASE}/fetch`);
    proxyUrl.searchParams.set("url", url);
    proxyUrl.searchParams.set("ref", `${A4UP2_BASE}/`);
    proxyUrl.searchParams.set("timeout", String(Math.floor(timeoutMs / 1000)));
    const r = await fetch(proxyUrl.toString(), { signal: AbortSignal.timeout(timeoutMs + 1500) });
    const cfBlocked = r.headers.get("x-cf-blocked") === "1";
    if (cfBlocked) return "";
    return await r.text();          // accept 404 — content is still valid
  } catch { return ""; }
}

async function searchAnime4up2(title: string, english: string | null): Promise<string | null> {
  const ck = `a4up2:${(title + "|" + (english ?? "")).toLowerCase()}`;
  const hit = a4up2SeriesCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.url;

  for (const q of [english, title].filter(Boolean) as string[]) {
    const html = await a4up2Fetch(`${A4UP2_BASE}/?search_param=animes&s=${encodeURIComponent(q as string)}`);
    if (!html || isCloudflareBlock(html)) continue;

    const candidates: Array<{ url: string; score: number }> = [];
    // Confirmed structure: <a href="URL" class="overlay" aria-label="Title">
    const cardRe = /<a\s+href="(https?:\/\/(?:anime4up\.cam|w1\.anime4up\.rest)\/anime\/[^"]+)"\s+class="overlay"[^>]+aria-label="([^"]+)"/gi;
    for (const m of html.matchAll(cardRe)) {
      const url   = m[1];
      const rawTitle = m[2].trim();
      if (!rawTitle) continue;
      const score = Math.max(
        similarity(rawTitle, title),
        english ? similarity(rawTitle, english) : 0,
        asciiSimilarity(rawTitle, title),
        english ? asciiSimilarity(rawTitle, english) : 0,
      );
      if (score > 0.28) candidates.push({ url, score });
    }

    if (candidates.length) {
      candidates.sort((a, b) => b.score - a.score);
      const best = candidates[0].url;
      a4up2SeriesCache.set(ck, { url: best, ts: Date.now() });
      return best;
    }
  }

  a4up2SeriesCache.set(ck, { url: null, ts: Date.now() });
  return null;
}

async function getAnime4up2Sources(
  title: string, english: string | null, ep: number,
): Promise<UnifiedSource[]> {
  const ck = `a4up2:${(title + "|" + (english ?? "")).toLowerCase()}:${ep}`;
  const hit = a4up2SrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;

  const epStr = String(ep);

  // Parse <li data-watch="URL"><a>Label</a></li> from episode page HTML
  function parseDataWatch(html: string): UnifiedSource[] {
    const sources: UnifiedSource[] = [];
    const seenUrls = new Set<string>();
    for (const m of html.matchAll(/<li[^>]*\sdata-watch=["'](https?:\/\/[^"']{5,})["'][^>]*>\s*<a[^>]*>([\s\S]*?)<\/a>/gi)) {
      const url = m[1].trim();
      if (seenUrls.has(url)) continue;
      seenUrls.add(url);
      const label = m[2].replace(/<[^>]+>/g, "").replace(/\s+/g, " ").trim();
      sources.push({
        name: `أنمي فور أب · ${label || "سيرفر"}`,
        url, quality: "HD", qualityRank: 10, site: "anime4up2",
      });
    }
    return sources;
  }

  // Fetch episode page and return its servers
  async function fetchEpSources(epUrl: string): Promise<UnifiedSource[] | null> {
    const html = await a4up2Fetch(epUrl);
    if (!html || isCloudflareBlock(html)) return null;
    if (!html.includes("data-watch")) return null;
    const srcs = parseDataWatch(html);
    return srcs.length ? srcs : null;
  }

  // ── START SEARCH IMMEDIATELY (runs in parallel with fast path) ──
  // This avoids the 7s fast-path wait before search can begin.
  const searchPromise = searchAnime4up2(title, english);

  // ── FAST PATH: try direct URL construction (old format slug-الحلقة-N) ──
  // Old format still works for most anime on anime4up.cam.
  // Each request has a 7s timeout (previously 20s), so parallel runs cost at most 7s.
  const fastCandidates: string[] = [];
  const seenSlugs = new Set<string>();
  const A4UP2_ALT = "https://ww5.anime4up.pro";           // نطاق بديل
  for (const q of [english, title].filter(Boolean) as string[]) {
    const slug = toSlug(q as string);
    if (!slug || seenSlugs.has(slug)) continue;
    seenSlugs.add(slug);
    for (const base of [A4UP2_BASE, A4UP2_ALT]) {
      fastCandidates.push(`${base}/episode/${encodeURIComponent(slug + "-الحلقة-" + epStr)}/`);
      fastCandidates.push(`${base}/episode/${encodeURIComponent(slug + "-الحلقة-" + epStr + "-مترجمة")}/`);
    }
  }

  // Try fast candidates in parallel (7s timeout each)
  if (fastCandidates.length > 0) {
    const fastResults = await Promise.allSettled(
      fastCandidates.map(url => fetchEpSources(url))
    );
    for (const r of fastResults) {
      if (r.status === "fulfilled" && r.value && r.value.length) {
        a4up2SrcCache.set(ck, { sources: r.value, ts: Date.now() });
        return r.value;
      }
    }
  }

  // ── SLOW PATH: use already-running search → series page → find episode ──
  const seriesUrl = await searchPromise;
  if (!seriesUrl) {
    a4up2SrcCache.set(ck, { sources: [], ts: Date.now() });
    return [];
  }

  const srHtml = await a4up2Fetch(seriesUrl);
  if (!srHtml || isCloudflareBlock(srHtml)) {
    a4up2SrcCache.set(ck, { sources: [], ts: Date.now() });
    return [];
  }

  const epLinks: string[] = [];
  for (const m of srHtml.matchAll(/href=["'](https?:\/\/(?:anime4up\.cam|w1\.anime4up\.rest)\/episode\/[^"']+)["']/g)) {
    if (!m[1].includes("/page/") && !epLinks.includes(m[1])) epLinks.push(m[1]);
  }

  // Find episode by number in decoded URL
  for (const link of epLinks) {
    try {
      const decoded = decodeURIComponent(link);
      if (new RegExp(`الحلقة-${epStr}[/-]`).test(decoded) ||
          decoded.endsWith(`الحلقة-${epStr}/`) ||
          decoded.endsWith(`الحلقة-${epStr}`)) {
        const sources = await fetchEpSources(link);
        if (sources && sources.length) {
          a4up2SrcCache.set(ck, { sources, ts: Date.now() });
          return sources;
        }
      }
    } catch {}
  }

  // Construct URL from prefix pattern found in series page
  if (epLinks.length > 0) {
    for (const link of epLinks.slice(0, 2)) {
      try {
        const decoded = decodeURIComponent(link.replace(A4UP2_BASE + "/episode/", "").replace(/\/$/, ""));
        const prefixM = decoded.match(/^([\s\S]+?)الحلقة-\d+/);
        if (!prefixM) continue;
        const prefix = prefixM[1];
        for (const suffix of ["-مترجمة", "-مترجم", ""]) {
          const candidate = `${A4UP2_BASE}/episode/${encodeURIComponent(prefix + "الحلقة-" + epStr + suffix)}/`;
          const sources = await fetchEpSources(candidate);
          if (sources && sources.length) {
            a4up2SrcCache.set(ck, { sources, ts: Date.now() });
            return sources;
          }
        }
        break;
      } catch {}
    }
  }

  a4up2SrcCache.set(ck, { sources: [], ts: Date.now() });
  return [];
}


// ════════════════════════════════════════════════════════════════════
//  MyCima / WeCima scraper (mycima.gives — WP-JSON + data-watch)
//  ماي سيما: أنمي مترجم + أفلام + كرتون مدبلج
//  Approach: WP-JSON search → episode post → data-watch servers → extractVideoDeep
// ════════════════════════════════════════════════════════════════════
const MYCIMA_BASE = "https://wecima.gold";

const mycimaSrcCache = new Map<string, { sources: UnifiedSource[]; ts: number }>();

/** Decode MyCima's custom player wrappers (mycima-my.com?mycimafsd=BASE64, mycima.cx/?wplvp=BASE64, ?my_player=BASE64) */
function decodeMyCimaWrap(url: string): string {
  try {
    const u = new URL(url);
    // my_player=VALUE: WeCima movie player token (used in /افلام/ pages instead of mycimafsd)
    const b64 = u.searchParams.get("mycimafsd") ?? u.searchParams.get("wplvp") ?? u.searchParams.get("my_player");
    if (b64) {
      const decoded = Buffer.from(b64, "base64").toString("utf-8");
      if (decoded.startsWith("http")) return decoded;
    }
  } catch {}
  return url;
}

/** Extract data-watch servers from a MyCima episode/movie page */
function parseMyCimaDataWatch(html: string, siteName: string): UnifiedSource[] {
  const sources: UnifiedSource[] = [];
  const seen = new Set<string>();
  for (const m of html.matchAll(/<li[^>]*\sdata-watch=["'](https?:\/\/[^"']{5,})["'][^>]*>([\s\S]*?)<\/li>/gi)) {
    let url = m[1].trim();
    const labelRaw = m[2].replace(/<[^>]+>/g, "").replace(/\s+/g, " ").trim();
    // Decode MyCima custom player wrappers
    url = decodeMyCimaWrap(url);
    if (seen.has(url)) continue;
    seen.add(url);
    sources.push({
      name: `ماي سيما · ${labelRaw || "سيرفر"}`,
      url, quality: "HD", qualityRank: 10, site: siteName,
      // صفحة سيرفر مضمّنة (iframe) وليست ملف فيديو مباشر
      isEmbed: true,
    });
  }
  return sources;
}

async function getMyCimaSources(
  title: string, english: string | null, ep: number, isMovie = false,
): Promise<UnifiedSource[]> {
  const ck = `mycima:${(title + "|" + (english ?? "")).toLowerCase()}:${ep}:${isMovie}`;
  const hit = mycimaSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;

  const cache = (s: UnifiedSource[]) => { mycimaSrcCache.set(ck, { sources: s, ts: Date.now() }); return s; };

  // ── Search WP-JSON for episode/movie post ──
  // NOTE: cfProxyGet double-encodes URLs (searchParams.set + Flask decode once).
  // Pass + for spaces (not %20) — %20 becomes %2520 through double-encode chain.
  // Use ASCII-only search terms to avoid Arabic triple-encoding issues.
  const epStr = String(ep);
  const toWpSearch = (s: string) => s.replace(/\s+/g, "+").replace(/[^\x20-\x7E+]/g, "").replace(/\s/g, "+");

  // Build search terms — try Arabic "الحلقة N" format first (more precise for MyCima)
  const searchTerms: Array<{ term: string; encoded: boolean }> = [];
  if (!isMovie) {
    // 1st try: Arabic episode term (most precise)
    const asciiTitle = toWpSearch(english || title);
    if (asciiTitle) searchTerms.push({ term: `${asciiTitle}+%D8%A7%D9%84%D8%AD%D9%84%D9%82%D8%A9+${epStr}`, encoded: true });
    // 2nd try: English title + ep number
    if (english) searchTerms.push({ term: toWpSearch(`${english} ${epStr}`), encoded: false });
    searchTerms.push({ term: toWpSearch(`${title} ${epStr}`), encoded: false });
    // 3rd try: just title (match any episode)
    if (english) searchTerms.push({ term: toWpSearch(english), encoded: false });
  } else {
    if (english) searchTerms.push({ term: toWpSearch(english), encoded: false });
    searchTerms.push({ term: toWpSearch(title), encoded: false });
  }

  let postUrl: string | null = null;
  for (const { term, encoded } of searchTerms) {
    const apiUrl = `${MYCIMA_BASE}/wp-json/wp/v2/posts?search=${term}&per_page=10&_fields=id,link,title`;
    try {
      const resp = await cfProxyGet(apiUrl, undefined, 14000);
      if (!resp) continue;
      let posts: Array<{ id: number; link: string; title: { rendered: string } }> = [];
      try { posts = JSON.parse(resp); } catch { continue; }
      if (!Array.isArray(posts) || posts.length === 0) continue;

      for (const post of posts) {
        const pTitle = post.title?.rendered ?? "";
        const pTitleAscii = pTitle.replace(/[^\x20-\x7E]/g, " ").toLowerCase();
        if (!isMovie) {
          // Match episode number in post title — Arabic numeral OR Western numeral
          const epMatch =
            new RegExp(`الحلقة[-\\s]*0*${epStr}(?:[^\\d]|$)`).test(pTitle) ||
            new RegExp(`ep[-\\s]*0*${epStr}(?:[^\\d]|$)`, "i").test(pTitle);
          // Also check ASCII title similarity
          const asciiSearch = toWpSearch(english || title).toLowerCase().replace(/\+/g, " ");
          const titleMatch = asciiSearch.split(" ").filter(w => w.length >= 3)
            .every(w => pTitleAscii.includes(w));
          if (epMatch && titleMatch) { postUrl = post.link; break; }
        } else {
          const queryWords = (english || title).toLowerCase()
            .replace(/[^\x20-\x7E]/g, " ").split(/\s+/).filter(w => w.length >= 3);
          const allMatch = queryWords.length > 0 && queryWords.every(w => pTitleAscii.includes(w));
          const sim = titleSimilarity(english || title, pTitle);
          if (allMatch || sim >= 0.38) { postUrl = post.link; break; }
        }
      }
      if (postUrl) break;
    } catch {}
  }

  if (!postUrl) return cache([]);

  // ── Fetch the post page and extract data-watch servers ──
  const pageHtml = await cfProxyGet(postUrl, undefined, 12000);
  if (!pageHtml || isCloudflareBlock(pageHtml)) return cache([]);
  if (!pageHtml.includes("data-watch")) return cache([]);

  let sources = parseMyCimaDataWatch(pageHtml, "mycima");

  // ── Fallback: mycami.skin → albaplayer embeds (when data-watch empty) ──
  if (!sources.length && postUrl) {
    try {
      const skinUrl = postUrl.replace(/^https?:\/\/[^/]+/, "https://mycami.skin");
      const skinHtml = await cfProxyGet(skinUrl, "https://mycami.skin/", 10000);
      if (skinHtml && !isCloudflareBlock(skinHtml)) {
        const albaM = skinHtml.match(/https:\/\/w\.aflamy\.pro\/albaplayer\/[^\s"'<>]+/);
        if (albaM) {
          const albaHtml = await cfProxyGet(albaM[0], "https://mycami.skin/", 8000);
          if (albaHtml) {
            const albaSeen = new Set<string>();
            for (const em of albaHtml.matchAll(
              /https?:\/\/(?:mp4plus|anafast|vidoba|vidspeed)[^\s"'<>]+/gi
            )) {
              if (!albaSeen.has(em[0])) {
                albaSeen.add(em[0]);
                const n = em[0].includes("mp4plus") ? "MP4Plus"
                  : em[0].includes("anafast") ? "AnaFast"
                  : em[0].includes("vidoba") ? "Vidoba" : "VidSpeed";
                sources.push({
                  name: `ماي سيما · ${n}`,
                  url: em[0], quality: "HD", qualityRank: 9, site: "mycima",
                  // صفحة سيرفر مضمّنة (iframe) وليست ملف فيديو مباشر
                  isEmbed: true,
                });
              }
            }
          }
        }
      }
    } catch {}
  }

  return cache(sources);
}

// ════════════════════════════════════════════════════════════════════
//  EgyBest scraper (egytbest.live — WordPress WP-JSON + data-embed-url)
//  أفلام + مسلسلات + أنمي عربي مترجم
//  Flow: WP-JSON search → episode post page → data-embed-url servers (hgcloud, fastvip, voe, mixdrop…)
//  NOTE: WP-JSON يعمل مباشرة بدون CF proxy — الموقع لا يحجب Replit/VPS IPs
// ════════════════════════════════════════════════════════════════════
const EGYBEST_BASE = "https://egytbest.live";
const egyBestSrcCache = new Map<string, { sources: UnifiedSource[]; ts: number }>();

async function getEgyBestSources(
  title: string, english: string | null, ep: number, isMovie = false,
): Promise<UnifiedSource[]> {
  const ck = `egybest:${(title + "|" + (english ?? "")).toLowerCase()}:${ep}:${isMovie}`;
  const hit = egyBestSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;
  const cache = (s: UnifiedSource[]) => { egyBestSrcCache.set(ck, { sources: s, ts: Date.now() }); return s; };

  const epStr = String(ep);
  const mainTitle = english || title;

  let postUrl: string | null = null;

  // ── الخطوة 1: البحث عبر WP-JSON مباشرة (لا يحتاج CF proxy) ─────────────
  const searchTerms = isMovie
    ? [mainTitle]
    : [`${mainTitle} ${epStr}`, mainTitle];

  for (const term of searchTerms) {
    const apiUrl = `${EGYBEST_BASE}/wp-json/wp/v2/posts?search=${encodeURIComponent(term)}&per_page=10&_fields=id,link,title`;
    try {
      const resp = await fetch(apiUrl, {
        headers: { "User-Agent": BROWSER_UA },
        signal: AbortSignal.timeout(14_000),
      });
      if (!resp.ok) continue;
      const posts = await resp.json() as Array<{ id: number; link: string; title: { rendered: string } }>;
      if (!Array.isArray(posts) || !posts.length) continue;

      for (const post of posts) {
        const pTitle = post.title?.rendered ?? "";
        if (!isMovie) {
          // مطابقة رقم الحلقة بالعربي أو الإنجليزي في عنوان البوست
          const epMatch =
            new RegExp(`الحلق[ةه][-\\s]*0*${epStr}(?:[^\\d]|$)`).test(pTitle) ||
            new RegExp(`ep[-\\s]*0*${epStr}(?:[^\\d]|$)`, "i").test(pTitle);
          const simMatch = Math.max(similarity(mainTitle, pTitle), asciiSimilarity(mainTitle, pTitle)) > 0.25;
          if (epMatch && simMatch) { postUrl = post.link; break; }
        } else {
          if (Math.max(similarity(mainTitle, pTitle), asciiSimilarity(mainTitle, pTitle)) > 0.35) { postUrl = post.link; break; }
        }
      }
      if (postUrl) break;
    } catch { /* جرب العبارة التالية */ }
  }

  if (!postUrl) return cache([]);

  // ── الخطوة 2: جلب صفحة الحلقة/الفيلم واستخراج data-embed-url ────────────
  try {
    const r = await fetch(postUrl, {
      headers: { "User-Agent": BROWSER_UA, Referer: `${EGYBEST_BASE}/` },
      signal: AbortSignal.timeout(12_000),
    });
    if (!r.ok) return cache([]);
    const html = await r.text();
    if (isCloudflareBlock(html)) return cache([]);

    const sources: UnifiedSource[] = [];
    const seen = new Set<string>();

    // كل سيرفر يظهر كـ data-embed-url داخل أزرار اختيار السيرفر
    for (const m of html.matchAll(/data-embed-url=["'](https?:\/\/[^"']+)["']/g)) {
      const url = m[1];
      if (seen.has(url)) continue;
      seen.add(url);
      // اسم السيرفر من دومين رابط الـ embed
      let serverName = "سيرفر";
      try {
        serverName = new URL(url).hostname.replace(/^www\./, "").split(".")[0];
        // تحسين أسماء الأسماء المعروفة
        if (serverName === "hgcloud")    serverName = "StreamHG";
        else if (serverName === "fastvip") serverName = "FastVIP";
        else if (serverName === "voe")     serverName = "VOE";
        else if (serverName === "mixdrop") serverName = "MixDrop";
        else if (serverName === "stmruby") serverName = "StmRuby";
        else if (serverName === "bysekoze") serverName = "BySekoze";
        else if (serverName === "vidaraa") serverName = "Vidaraa";
        else if (serverName === "playmogo") serverName = "PlayMogo";
      } catch { /* use default */ }

      sources.push({
        name: `EgyBest · ${serverName}`,
        url, quality: "HD", qualityRank: 9, site: "egybest",
      });
    }
    return cache(sources);
  } catch {
    return cache([]);
  }
}

// ════════════════════════════════════════════════════════════════════
//  Moviz-Time scraper (moviz-time.vip — WordPress "pinthis" theme)
//  أنمي (صفحات موسم تحتوي أزرار <button class='ep-item'> فيها كل الحلقات
//  مع سيرفراتها كـ onclick=".../href='URL'" + عنوان "الحلقة N") +
//  أفلام (WP-JSON posts search عادي، أول iframe_area زر).
// ════════════════════════════════════════════════════════════════════
const MOVIZTIME_BASE = "https://moviz-time.vip";
const movizTimeSeriesCache = new Map<string, { link: string | null; ts: number }>();
const movizTimeSrcCache    = new Map<string, { sources: UnifiedSource[]; ts: number }>();

/** استخرج كل أزرار الحلقات (رقم الحلقة + رابط السيرفر) من صفحة موسم/فيلم */
async function getMovizTimeEpisodeButtons(pageUrl: string): Promise<Array<{ ep: number; url: string }>> {
  try {
    let html: string | null = null;
    // حاول plain fetch أولاً
    try {
      const r = await fetch(pageUrl, {
        headers: { "User-Agent": BROWSER_UA, Referer: `${MOVIZTIME_BASE}/` },
        signal: AbortSignal.timeout(14_000),
      });
      if (r.ok) {
        const t = await r.text();
        if (!isCloudflareBlock(t) && t.length > 1000) html = t;
      }
    } catch { /* silent */ }
    // fallback: hopxProxy إذا plain fetch فشل أو CF-blocked
    if (!html) html = await hopxProxyGet(pageUrl, `${MOVIZTIME_BASE}/`, 18_000).catch(() => null);
    if (!html || html.length < 500) return [];
    const out: Array<{ ep: number; url: string }> = [];
    for (const m of html.matchAll(/<button class='ep-item' onclick="[^"]*?href='([^']+)'[^"]*">\s*الحلقة\s*(\d+)/gs)) {
      out.push({ url: m[1], ep: parseInt(m[2], 10) });
    }
    // نمط بديل: iframe_area.location.href= خارج onclick
    if (!out.length) {
      for (const m of html.matchAll(/iframe_area\.location\.href='([^']+)'[^<]*<[^>]+>\s*الحلقة\s*(\d+)/gs)) {
        out.push({ url: m[1], ep: parseInt(m[2], 10) });
      }
    }
    return out;
  } catch { return []; }
}

/** لفيلم بلا ترقيم حلقات — صفحات الأفلام تستخدم بنية مختلفة عن المسلسلات:
 *  <div class="single_tab" data-tab-id="server_00N" is-iframe="true"><iframe data-src="URL">
 *  (بعض المسلسلات القديمة تستخدم iframe_area.location.href= أيضاً — نجرّب الاثنين) */
async function getMovizTimeMovieButtons(pageUrl: string): Promise<string[]> {
  try {
    const r = await fetch(pageUrl, {
      headers: { "User-Agent": BROWSER_UA, Referer: `${MOVIZTIME_BASE}/` },
      signal: AbortSignal.timeout(14_000),
    });
    if (!r.ok) return [];
    const html = await r.text();
    if (isCloudflareBlock(html)) return [];
    const urls = [...html.matchAll(/<iframe[^>]*\sdata-src=["']([^"']+)["']/gi)].map(m => m[1]);
    if (urls.length) return urls;
    return [...html.matchAll(/iframe_area\.location\.href='([^']+)'/g)].map(m => m[1]);
  } catch { return []; }
}

async function getMovizTimeSources(
  title: string, english: string | null, ep: number, isMovie = false,
): Promise<UnifiedSource[]> {
  const ck = `moviz_time:${(title + "|" + (english ?? "")).toLowerCase()}:${ep}:${isMovie}`;
  const hit = movizTimeSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;
  const cache = (s: UnifiedSource[]) => { movizTimeSrcCache.set(ck, { sources: s, ts: Date.now() }); return s; };
  const mainTitle = english || title;

  try {
    if (isMovie) {
      const apiUrl = `${MOVIZTIME_BASE}/wp-json/wp/v2/posts?search=${encodeURIComponent(mainTitle)}&per_page=10&_fields=id,link,title`;
      const sr = await fetch(apiUrl, { headers: { "User-Agent": BROWSER_UA }, signal: AbortSignal.timeout(12_000) });
      if (!sr.ok) return cache([]);
      const posts = await sr.json() as Array<{ id: number; link: string; title: { rendered: string } }>;
      if (!Array.isArray(posts) || !posts.length) return cache([]);
      let best: { link: string; score: number } | null = null;
      for (const p of posts) {
        const t = p.title?.rendered ?? "";
        const score = Math.max(similarity(mainTitle, t), asciiSimilarity(mainTitle, t));
        if (!best || score > best.score) best = { link: p.link, score };
      }
      if (!best || best.score < 0.3) return cache([]);
      const urls = await getMovizTimeMovieButtons(best.link);
      if (!urls.length) return cache([]);
      const sources = urls.slice(0, 6).map((url, i) => ({
        name: `وقت الأفلام · سيرفر ${i + 1}`, url, quality: "HD", qualityRank: 8, site: "moviz_time", isEmbed: true,
      }));
      return cache(sources);
    }

    // ── أنمي (مسلسل): بحث HTML → كل روابط /anime/ المطابقة، مرتّبة بالتشابه ──
    // ملاحظة مهمة: المسلسلات الطويلة (366+ حلقة) تُقسَّم على عدة صفحات "موسم"
    // بروابط شبه متطابقة (فرق حرف/تشكيل فقط) لكن كل صفحة تغطي مدى حلقات مختلف
    // تماماً (مثال: bleach → 3 صفحات تغطي 1-122 / 123-244 / 245-366) — لذا يجب
    // تجربة كل الروابط المرشّحة (وليس الأفضل تشابهاً فقط) حتى نجد الحلقة المطلوبة.
    const sCacheKey = mainTitle.toLowerCase();
    let candidates: string[] = [];
    const sHit = movizTimeSeriesCache.get(sCacheKey);
    if (sHit && Date.now() - sHit.ts < SRC_TTL) {
      candidates = sHit.link ? JSON.parse(sHit.link) : [];
    } else {
      const sr = await fetch(`${MOVIZTIME_BASE}/?s=${encodeURIComponent(mainTitle)}`, {
        headers: { "User-Agent": BROWSER_UA, Referer: `${MOVIZTIME_BASE}/` },
        signal: AbortSignal.timeout(12_000),
      });
      if (sr.ok) {
        const html0 = await sr.text();
        const links = [...new Set(
          [...html0.matchAll(/href="(https:\/\/moviz-time\.vip\/anime\/[^"]+)"/g)].map(m => decodeURIComponent(m[1])),
        )];
        const scored = links
          .map(link => {
            const slug = (link.split("/").filter(Boolean).pop() || "").replace(/-/g, " ");
            return { link, score: Math.max(similarity(mainTitle, slug), asciiSimilarity(mainTitle, slug)) };
          })
          .filter(x => x.score > 0.2)
          .sort((a, b) => b.score - a.score);
        candidates = scored.map(x => x.link);
      }
      movizTimeSeriesCache.set(sCacheKey, { link: candidates.length ? JSON.stringify(candidates) : null, ts: Date.now() });
    }
    if (!candidates.length) return cache([]);

    let match: { ep: number; url: string } | undefined;
    for (const link of candidates.slice(0, 5)) {
      match = (await getMovizTimeEpisodeButtons(link)).find(b => b.ep === ep);
      if (match) break;
    }
    if (!match) return cache([]);

    return cache([{
      name: "وقت الأفلام", url: match.url, quality: "HD", qualityRank: 8, site: "moviz_time", isEmbed: true,
    }]);
  } catch { return cache([]); }
}

// ════════════════════════════════════════════════════════════════════
//  TopCinemaa scraper (web.topcinemaa.com — WordPress custom theme)
//  أنمي + أفلام + مسلسلات عربية مترجمة — HLS/MP4 عبر vidtube وغيره
//  Flow: /?s={title}+الحلقة+{ep} → episode URL (Arabic slug) → ?embedScreen=true → iframe
// ════════════════════════════════════════════════════════════════════
const TC_BASE = "https://web.topcinemaa.com";
const tcSrcCache = new Map<string, { sources: UnifiedSource[]; ts: number }>();

// الحلقة (الحلقة) URL-encoded lowercase
const TC_EP_AR_ENC = "%d8%a7%d9%84%d8%ad%d9%84%d9%82%d8%a9";

/** Extract episode number from a web.topcinemaa.com URL slug (Arabic-encoded) */
function tcParseEpNum(url: string): number | null {
  // Decode URL then look for "الحلقة-{N}" pattern
  try {
    const decoded = decodeURIComponent(url);
    const m = decoded.match(/الحلقة[\s-]+(\d+)/i);
    if (m) return parseInt(m[1], 10);
  } catch {}
  // Fallback: look for encoded form الحلقة-{N}
  const m2 = url.match(new RegExp(`${TC_EP_AR_ENC}-0*(\\d+)-`, "i"));
  if (m2) return parseInt(m2[1], 10);
  return null;
}

async function getTopCimaaSources(
  title: string, english: string | null, ep: number, isMovie = false,
): Promise<UnifiedSource[]> {
  const ck = `topcinemaa:${(title + "|" + (english ?? "")).toLowerCase()}:${ep}:${isMovie}`;
  const hit = tcSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;
  const cache = (s: UnifiedSource[]) => { tcSrcCache.set(ck, { sources: s, ts: Date.now() }); return s; };

  // ── 1. Search with English title → get any episode URL to learn slug pattern ──
  // web.topcinemaa.com: search returns episode posts ordered newest-first
  // Strategy: grab any episode URL from search results, extract slug prefix/suffix,
  // then CONSTRUCT the specific episode URL by substituting the episode number.
  const q = english || title;
  const searchHtml = await cfProxyGet(
    `${TC_BASE}/?s=${encodeURIComponent(q)}`,
    `${TC_BASE}/`, 10000,
  );
  if (!searchHtml || isCloudflareBlock(searchHtml)) return cache([]);

  // Collect all episode/content links from results
  const TC_SKIP_RE = /wp-content|wp-includes|\/page\/|\/category\/|\/tag\/|\/movies\/|\/netflix|\/recent\/|\/top-rating|\/full-packs\//i;
  const allLinks = [...searchHtml.matchAll(
    /href="(https?:\/\/web\.topcinemaa\.com\/[^"]{10,})"/gi,
  )].map(m => m[1]).filter(u => !TC_SKIP_RE.test(u));

  let epUrl: string | null = null;

  if (isMovie) {
    // Movies: pick best-similarity link
    let bestScore = 0;
    for (const u of allLinks) {
      const slug = decodeURIComponent(u.split("/").filter(Boolean).pop() || "");
      const sim = titleSimilarity(q, slug.replace(/-/g, " "));
      if (sim > bestScore) { bestScore = sim; epUrl = u; }
    }
  } else {
    // ── Direct match: any link with الحلقة-{ep} already in results ──
    for (const u of allLinks) {
      if (tcParseEpNum(u) === ep) { epUrl = u; break; }
    }

    // ── Construct URL: grab any episode link → replace its number with {ep} ──
    if (!epUrl && allLinks.length > 0) {
      for (const sampleUrl of allLinks.slice(0, 5)) {
        const foundNum = tcParseEpNum(sampleUrl);
        if (foundNum === null) continue;

        // URL has percent-encoded Arabic. Replace the encoded episode number segment.
        // Pattern in URL: %d8%a7%d9%84%d8%ad%d9%84%d9%82%d8%a9-{N}-  (الحلقة-N-)
        const encEp  = `${TC_EP_AR_ENC}-${foundNum}-`;
        const encNew = `${TC_EP_AR_ENC}-${ep}-`;
        if (sampleUrl.toLowerCase().includes(encEp.toLowerCase())) {
          const candidate = sampleUrl.toLowerCase().replace(
            encEp.toLowerCase(), encNew,
          );
          // Restore original casing for the non-replaced part
          epUrl = sampleUrl.slice(0, sampleUrl.toLowerCase().indexOf(encEp.toLowerCase()))
            + encNew
            + sampleUrl.slice(sampleUrl.toLowerCase().indexOf(encEp.toLowerCase()) + encEp.length);
          break;
        }
        // Fallback: try replacing the plain number in the URL string
        const numStr = String(foundNum);
        const numIdx = sampleUrl.lastIndexOf(`-${numStr}-`);
        if (numIdx !== -1) {
          epUrl = sampleUrl.slice(0, numIdx + 1) + ep + sampleUrl.slice(numIdx + 1 + numStr.length);
          break;
        }
      }
    }
  }

  if (!epUrl) return cache([]);

  // ── 2. Fetch ?embedScreen=true → extract iframes ──
  const embedUrl = `${epUrl.replace(/\/+$/, "")}/?embedScreen=true`;
  const embedHtml = await cfProxyGet(embedUrl, `${TC_BASE}/`, 12000);
  if (!embedHtml || isCloudflareBlock(embedHtml)) return cache([]);

  const sources: UnifiedSource[] = [];
  const seenTc = new Set<string>();
  for (const m of embedHtml.matchAll(
    /<iframe[^>]+src=["'](https?:\/\/[^"']{10,})["']/gi,
  )) {
    const url = m[1];
    if (seenTc.has(url)) continue;
    seenTc.add(url);
    const label = url.includes("vidtube")  ? "VidTube"
      : url.includes("mp4plus")   ? "MP4Plus"
      : url.includes("vidspeed")  ? "VidSpeed"
      : url.includes("anafast")   ? "AnaFast"
      : url.includes("vidoba")    ? "Vidoba"
      : url.includes("filemoon")  ? "FileMoon"
      : "سيرفر";
    sources.push({
      name: `توب سيما · ${label}`,
      url,
      quality: "HD",
      qualityRank: 7,
      site: "topcinemaa",
    });
  }

  return cache(sources);
}

// ════════════════════════════════════════════════════════════════════
//  Animeify.net scraper (ani-cli-arabic API → FileMoon HLS + MediaFire MP4 + Mega embed)
// ════════════════════════════════════════════════════════════════════
let _animeifyCreds: { base: string; token: string; ts: number } | null = null;
let _animeifyFallbackCreds: { base: string; token: string } | null = null; // last known good
const _animeifyInFlight = new Map<string, Promise<UnifiedSource[]>>();
const ANIMEIFY_CREDS_TTL = 12 * 60 * 60_000; // 12 hours — token نادراً ما يتغير، تجنّب طلب الخادم عند كل سحب

function invalidateAnimeifyCreds() { _animeifyCreds = null; }

async function getAnimeifyCreds(force = false): Promise<{ base: string; token: string } | null> {
  if (!force && _animeifyCreds && Date.now() - _animeifyCreds.ts < ANIMEIFY_CREDS_TTL) {
    return { base: _animeifyCreds.base, token: _animeifyCreds.token };
  }
  try {
    const r = await fetch("https://api.ani-cli-arabic.dev/credentials", {
      headers: { "X-Auth-Key": "6rK9z0XyW8vQ3J7pL2mN4sB1tH5gD0fA", "User-Agent": "AniCliAr/2.0" },
      signal: AbortSignal.timeout(8000),
    });
    if (!r.ok) {
      invalidateAnimeifyCreds();
      return _animeifyFallbackCreds; // use last known good if server down
    }
    const data = await r.json() as Record<string, string>;
    const base = String(data.ANI_CLI_AR_API_BASE || "");
    const token = String(data.ANI_CLI_AR_TOKEN || "");
    if (!base || !token) {
      invalidateAnimeifyCreds();
      return _animeifyFallbackCreds;
    }
    _animeifyCreds = { base, token, ts: Date.now() };
    _animeifyFallbackCreds = { base, token }; // persist as last known good
    return { base, token };
  } catch {
    invalidateAnimeifyCreds();
    return _animeifyFallbackCreds; // fallback on network error
  }
}

/** Fetch a URL with the animeify API token; auto-refresh on 401/403 and retry once */
async function animeifyPost(base: string, token: string, path: string, body: URLSearchParams): Promise<Response | null> {
  const doFetch = (tok: string) => fetch(base + path, {
    method: "POST",
    body: new URLSearchParams([...body.entries(), ["Token", tok]]),
    headers: { "User-Agent": "AniCliAr/2.0" },
    signal: AbortSignal.timeout(10000),
  });
  let r = await doFetch(token);
  if (r.status === 401 || r.status === 403) {
    // Token expired — force-refresh and retry once
    invalidateAnimeifyCreds();
    const fresh = await getAnimeifyCreds(true);
    if (!fresh) return null;
    r = await doFetch(fresh.token);
  }
  return r.ok ? r : null;
}

/** استخراج quick_key من رابط MediaFire */
function extractMediafireKey(urlOrKey: string): string | null {
  if (!urlOrKey.includes("/")) return urlOrKey.trim() || null; // already a key
  // https://www.mediafire.com/file/{quick_key}/filename.mp4[/file]
  // https://www.mediafire.com/file_premium/{quick_key}/filename.mp4[/file]
  const m = urlOrKey.match(/mediafire\.com\/file(?:_premium)?\/([^/?#]+)/i);
  return m?.[1] || null;
}

/**
 * Extract a direct MediaFire download link.
 * Strategy: API (quick_key) → HTML scrape fallback.
 * API URL doesn't need Referer → works on mobile without proxy.
 */
async function extractMediafireDirect(serverId: string): Promise<string | null> {
  // ── 1) Official API (fast, no HTML parsing) ──
  try {
    const key = extractMediafireKey(serverId);
    if (key) {
      const apiUrl = `https://www.mediafire.com/api/1.5/file/get_links.php?quick_key=${key}&response_format=json`;
      const apiR = await fetch(apiUrl, {
        headers: { "User-Agent": "Mozilla/5.0" },
        signal: AbortSignal.timeout(8000),
      });
      if (apiR.ok) {
        const data = await apiR.json().catch(() => null);
        const download: string | undefined =
          data?.response?.links?.[0]?.normal_download ||
          data?.response?.links?.[0]?.download;
        if (download && download.startsWith("http") && !download.includes("mediafire.com/file")) {
          return download;
        }
      }
    }
  } catch { /* fall through to HTML scrape */ }

  // ── 2) HTML scrape fallback ──
  try {
    const url = serverId.startsWith("http") ? serverId : `https://www.mediafire.com/file/${serverId}`;
    const r = await fetch(url, {
      headers: { "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36" },
      signal: AbortSignal.timeout(10000),
      redirect: "follow",
    });
    if (!r.ok) return null;
    const html = await r.text();
    const raw =
      (/(https:\/\/download\d*\.mediafire\.com\/[^"' \n<>]+)/.exec(html))?.[1] ||
      (/(https:\/\/download[^"' \n<>]*mediafire[^"' \n<>]+\.(?:mp4|mkv|avi|mov|webm)[^"' \n<>]*)/.exec(html))?.[1] ||
      (/id="downloadButton"[^>]*href="([^"]+)"/.exec(html))?.[1] ||
      (/aria-label="[Dd]ownload [Ff]ile"[^>]*href="([^"]+)"/.exec(html))?.[1] ||
      (/class="[^"]*download[^"]*"[^>]*href="(https:\/\/[^"]+)"/.exec(html))?.[1] ||
      (/(https:\/\/download\d*[^"' \n<>]+)/.exec(html))?.[1] ||
      null;
    return raw?.replace(/&amp;/g, "&") || null;
  } catch { return null; }
}

async function getAnimeifySourcesUncached(title: string, english: string | null, ep: number, variants: string[] = [], availabilityOnly = false): Promise<UnifiedSource[]> {
  try {
    const creds = await getAnimeifyCreds();
    if (!creds) return [];
    let { base, token } = creds;

    // Search with both titles; pick best match across SERIES + MOVIE — بالتوازي لسرعة أكبر
    const queries = titleQueries(title, english, variants);
    let best: { score: number; item: any } = { score: 0, item: null };

    // Four title variants are enough for the API's fuzzy search. More variants
    // multiplied the same four upstream requests and made AF slower under load.
    const searchCombinations = queries.slice(0, 4).flatMap(q =>
      (["SERIES", "MOVIE"] as const).flatMap(type =>
        (["English", "Arabic"] as const).map(lang => ({ q, type, lang }))
      )
    );

    const searchResults = await Promise.allSettled(
      searchCombinations.map(async ({ q, type, lang }) => {
        const body = new URLSearchParams({
          UserId: "0", Language: lang, FilterType: "SEARCH",
          FilterData: q, Type: type, From: "0",
        });
        const r = await animeifyPost(base, token, "anime/load_anime_list_v2.php", body);
        if (!r) return [];
        const data = await r.json() as any[];
        if (!Array.isArray(data)) return [];
        return data.map(item => ({ item, type, q }));
      })
    );

    for (const searchRes of searchResults) {
      if (searchRes.status !== "fulfilled") continue;
      for (const { item, type, q } of searchRes.value) {
        const enTitle  = String(item.EN_Title  || "");
        const arTitle  = String(item.AR_Title  || "");
        const synonyms = String(item.Synonyms  || "");
        const tags     = String(item.Tags      || "");
        const s = Math.max(
          enTitle   ? similarity(q, enTitle)   : 0,
          enTitle   ? asciiSimilarity(q, enTitle) : 0,
          enTitle   ? similarity(title, enTitle)   : 0,
          enTitle   ? asciiSimilarity(title, enTitle) : 0,
          english && enTitle ? similarity(english, enTitle) : 0,
          english && enTitle ? asciiSimilarity(english, enTitle) : 0,
          arTitle   ? similarity(q, arTitle)   : 0,
          synonyms  ? similarity(q, synonyms)  : 0,
          tags      ? similarity(q, tags)      : 0,
        );
        if (s > best.score) best = { score: s, item: { ...item, _type: type } };
      }
    }

    if (!best.item || best.score < 0.25) return [];

    const animeId: string = String(best.item.AnimeId);
    const animeType: string = best.item._type || "SERIES";

    // Refresh creds in case animeifyPost rotated the token
    const latestCreds = await getAnimeifyCreds();
    if (latestCreds) { base = latestCreds.base; token = latestCreds.token; }

    // Get episode list
    const epsRes = await animeifyPost(base, token, "episodes/load_episodes.php",
      new URLSearchParams({ AnimeID: animeId }));
    if (!epsRes) return [];
    const epsData = await epsRes.json() as any[];
    if (!Array.isArray(epsData) || !epsData.length) return [];

    const epItem = epsData.find(e => Math.abs(parseFloat(String(e.Episode || 0)) - ep) < 0.5);
    if (!epItem) return [];

    // Get streaming servers for this episode
    const srvRes = await animeifyPost(base, token, "anime/load_servers.php",
      new URLSearchParams({ UserId: "0", AnimeId: animeId, Episode: String(epItem.Episode), AnimeType: animeType }));
    if (!srvRes) return [];
    const srvData = await srvRes.json() as any;
    const epData = srvData.CurrentEpisode || epItem;

    if (availabilityOnly) {
      const rows: Array<{ key: string; name: string; quality: string; qualityRank: number }> = [
        { key: "FDLink", name: "فايل مون", quality: "FHD", qualityRank: 30 },
        { key: "FRFhdQ", name: "ميديافاير", quality: "FHD", qualityRank: 29 },
        { key: "FRLink", name: "ميديافاير", quality: "HD", qualityRank: 28 },
        { key: "FRLowQ", name: "ميديافاير", quality: "SD", qualityRank: 26 },
        { key: "SVLink", name: "سيندفيد", quality: "HD", qualityRank: 22 },
        { key: "MALink", name: "MEGA", quality: "FHD", qualityRank: 20 },
        { key: "OKLink", name: "OK.ru", quality: "SD", qualityRank: 5 },
        { key: "VKLink", name: "VK Video", quality: "HD", qualityRank: 7 },
        { key: "DELink", name: "Dailymotion", quality: "HD", qualityRank: 6 },
      ];
      return rows
        .filter(row => String(epData[row.key] || "").trim())
        .map(row => ({
          name: `Animeify · ${row.name} · ${row.quality}`, url: "",
          quality: row.quality, qualityRank: row.qualityRank, site: "animeify",
          verified: true,
        } as UnifiedSource));
    }

    const sources: UnifiedSource[] = [];

    // ── FileMoon (FDLink) → HLS مباشر → مشغّل داخلي بدون إعلانات ──
    // Start this extraction while MediaFire links are being resolved below.
    // FileMoon is the slowest AF branch on a cold cache.
    const fdLink = String(epData.FDLink || "").trim();
    const filemoonTask = fdLink
      ? (async (): Promise<UnifiedSource | null> => {
          const filemoonUrl = `https://filemoon.sx/e/${fdLink}`;
          try {
            const extracted = await extractVideoDeep(filemoonUrl, filemoonUrl);
            if (extracted?.url) {
              const proxyUrl = `/api/anime/hls-proxy?url=${encodeURIComponent(extracted.url)}&ref=${encodeURIComponent(filemoonUrl)}`;
              return {
                name: "فايل مون · 1080p", url: filemoonUrl, quality: "FHD",
                qualityRank: 30, site: "animeify", directUrl: proxyUrl, directType: "hls",
              };
            }
            // AF fallback: FileMoon extraction failed → iframe only.
            return {
              name: "فايل مون · embed", url: filemoonUrl, quality: "HD",
              qualityRank: 8, site: "animeify", directUrl: filemoonUrl, isEmbed: true,
            };
          } catch { return null; }
        })()
      : Promise.resolve(null);

    // ── MediaFire MP4 (FRFhdQ=1080p, FRLink=720p, FRLowQ=480p) → مشغّل داخلي مباشر ──
    const mfSlots = [
      { key: "FRFhdQ", label: "ميديافاير · FHD", quality: "FHD", qualityRank: 29 },
      { key: "FRLink",  label: "ميديافاير · HD",  quality: "HD",  qualityRank: 28 },
      { key: "FRLowQ", label: "ميديافاير · SD",  quality: "SD",  qualityRank: 26  },
    ] as const;

    await Promise.all(mfSlots.map(async ({ key, label, quality, qualityRank }) => {
      const serverId = String((epData as any)[key] || "").trim();
      if (!serverId) return;
      const directMp4 = await extractMediafireDirect(serverId);
      if (!directMp4) return;
      const proxyUrl = `/api/anime/video-proxy?url=${encodeURIComponent(directMp4)}&ref=https://www.mediafire.com/`;
      sources.push({
        name: label,
        url: directMp4,
        quality,
        qualityRank,
        site: "animeify",
        directUrl: proxyUrl,
        directType: "mp4",
      });
    }));

    const filemoonSource = await filemoonTask;
    if (filemoonSource) sources.push(filemoonSource);

    // ── SendVid (SVLink) → embed iframe ──────────────────────────────────────
    // ⚠️ sendvid.com يُصدر MP4 موقَّعاً بـ IP+TTL-4h، لكن SRC_TTL=6h
    //    → لا نخزّن الرابط الموقَّع في الكاش؛ نستخدم embed URL مستقر بدلاً منه
    const svLink = String(epData.SVLink || "").trim();
    if (svLink) {
      const sendvidUrl = `https://sendvid.com/embed/${svLink}`;
      sources.push({
        name: "سيندفيد · HD",
        url: sendvidUrl,
        quality: "HD",
        qualityRank: 22,
        site: "animeify",
        directUrl: sendvidUrl,
        isEmbed: true,
      });
    }

    // ── Mega.nz embed (MALink) — يدعم عدة صيغ ──
    // الصيغ الممكنة: "fileId!key" | "fileId#key" | "https://mega.nz/embed/fileId#key"
    //               | "https://mega.nz/file/fileId#key" | "fileId" (بدون مفتاح)
    const maLinkRaw = String(epData.MALink || "").trim();
    if (maLinkRaw) {
      let embedUrl: string | null = null;

      if (maLinkRaw.startsWith("https://mega.nz/embed/") || maLinkRaw.startsWith("https://mega.co.nz/embed/")) {
        // صيغة كاملة جاهزة
        embedUrl = maLinkRaw;
      } else if (maLinkRaw.startsWith("https://mega.nz/") || maLinkRaw.startsWith("https://mega.co.nz/")) {
        // رابط عادي → حوّله لـ embed
        const u = new URL(maLinkRaw);
        const pathParts = u.pathname.split("/").filter(Boolean); // ["file","fileId"] أو ["embed","fileId"]
        const fileId = pathParts[pathParts.length - 1];
        const key    = u.hash.replace(/^#/, "");
        if (fileId) embedUrl = key ? `https://mega.nz/embed/${fileId}#${key}` : `https://mega.nz/embed/${fileId}`;
      } else if (maLinkRaw.includes("!")) {
        // صيغة "fileId!key"
        const bang   = maLinkRaw.indexOf("!");
        const fileId = maLinkRaw.slice(0, bang);
        const key    = maLinkRaw.slice(bang + 1);
        if (fileId) embedUrl = key ? `https://mega.nz/embed/${fileId}#${key}` : `https://mega.nz/embed/${fileId}`;
      } else if (maLinkRaw.includes("#")) {
        // صيغة "fileId#key"
        const hash   = maLinkRaw.indexOf("#");
        const fileId = maLinkRaw.slice(0, hash);
        const key    = maLinkRaw.slice(hash + 1);
        if (fileId) embedUrl = key ? `https://mega.nz/embed/${fileId}#${key}` : `https://mega.nz/embed/${fileId}`;
      } else if (maLinkRaw.length > 4) {
        // مجرد fileId بدون مفتاح
        embedUrl = `https://mega.nz/embed/${maLinkRaw}`;
      }

      if (embedUrl) {
        // تحقق سريع: Mega API ترجع [-9] إذا الملف محذوف
        let megaOk = true;
        try {
          const u2      = new URL(embedUrl);
          const pathSeg = u2.pathname.split("/").filter(Boolean);
          const fileId  = pathSeg[pathSeg.length - 1];
          const megaCheck = await fetch("https://g.api.mega.co.nz/cs?id=0", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify([{ a: "g", p: fileId }]),
            signal: AbortSignal.timeout(5000),
          });
          const megaData = await megaCheck.json();
          megaOk = !(Array.isArray(megaData) && megaData[0] === -9);
        } catch { megaOk = true; }

        if (megaOk) {
          sources.push({
            name: "ميغا · embed",
            url: embedUrl,
            quality: "HD",
            qualityRank: 8,
            site: "animeify",
            directUrl: embedUrl,
            isEmbed: true,
          });
        }
      }
    }

    // ── SFLink → filemoon.sx أولاً (strwish.com محجوب من VPS — 452 bytes) ──
    //   نفس الـ ID يعمل على filemoon.sx (extractVideoDeep يدعمها عبر cfProxy)
    const sfLink = String(epData.SFLink || "").trim();
    if (sfLink) {
      const sfCandidates = sfLink.startsWith("http")
        ? [sfLink]
        : [`https://filemoon.sx/e/${sfLink}`, `https://strwish.com/e/${sfLink}`];
      for (const sfUrl of sfCandidates) {
        try {
          const extracted = await extractVideoDeep(sfUrl, sfUrl);
          if (extracted?.url) {
            const proxyUrl = extracted.url.includes(".m3u8")
              ? `/api/anime/hls-proxy?url=${encodeURIComponent(extracted.url)}&ref=${encodeURIComponent(sfUrl)}`
              : `/api/anime/video-proxy?url=${encodeURIComponent(extracted.url)}&ref=${encodeURIComponent(sfUrl)}`;
            sources.push({
              name: "فايل مون SF · HD",
              url: sfUrl,
              quality: "HD",
              qualityRank: 27,
              site: "animeify",
              directUrl: proxyUrl,
              directType: extracted.url.includes(".m3u8") ? "hls" : "mp4",
            });
            break; // نجح → لا حاجة للـ fallback
          }
        } catch {}
      }
    }

    // ── GDLink (Google Drive) → MP4 مباشر ──
    const gdLink = String(epData.GDLink || "").trim();
    if (gdLink) {
      try {
        let gdId = gdLink;
        if (gdLink.startsWith("http")) {
          gdId = new URL(gdLink).searchParams.get("id") ||
                 gdLink.match(/\/d\/([^/?#]+)/)?.[1] ||
                 gdLink;
        }
        if (gdId) {
          const gdDownload = `https://drive.google.com/uc?export=download&confirm=t&id=${gdId}`;
          const proxyUrl = `/api/anime/video-proxy?url=${encodeURIComponent(gdDownload)}&ref=https://drive.google.com/`;
          sources.push({
            name: "جوجل درايف · HD",
            url: gdDownload,
            quality: "HD",
            qualityRank: 26,
            site: "animeify",
            directUrl: proxyUrl,
            directType: "mp4",
          });
        }
      } catch {}
    }

    // ── OKLink (OK.ru) — جودة متوسطة لكن مستقرة ──
    const okLink = String(epData.OKLink || "").trim();
    if (okLink) {
      try {
        const okUrl = okLink.startsWith("http") ? okLink : `https://ok.ru/videoembed/${okLink}`;
        const extracted = await extractVideoDeep(okUrl, okUrl);
        if (extracted?.url) {
          const proxyUrl = `/api/anime/video-proxy?url=${encodeURIComponent(extracted.url)}&ref=${encodeURIComponent(okUrl)}`;
          sources.push({
            name: "OK.ru · SD",
            url: okUrl,
            quality: "SD",
            qualityRank: 5,
            site: "animeify",
            directUrl: proxyUrl,
            directType: "mp4",
          });
        }
      } catch {}
    }

    // ── VKLink (VK Video) — مشاركة مباشرة ──
    const vkLink = String(epData.VKLink || "").trim();
    if (vkLink) {
      try {
        const vkUrl = vkLink.startsWith("http") ? vkLink : `https://vk.com/video_ext.php?${vkLink}`;
        const extracted = await extractVideoDeep(vkUrl, vkUrl);
        if (extracted?.url) {
          const proxyUrl = `/api/anime/video-proxy?url=${encodeURIComponent(extracted.url)}&ref=${encodeURIComponent(vkUrl)}`;
          sources.push({
            name: "VK Video · HD",
            url: vkUrl,
            quality: "HD",
            qualityRank: 7,
            site: "animeify",
            directUrl: proxyUrl,
            directType: "mp4",
          });
        }
      } catch {}
    }

    // ── DELink (Dailymotion) — جودة متوسطة ──
    const deLink = String(epData.DELink || "").trim();
    if (deLink) {
      try {
        const deUrl = deLink.startsWith("http") ? deLink : `https://www.dailymotion.com/embed/video/${deLink}`;
        const extracted = await extractVideoDeep(deUrl, deUrl);
        if (extracted?.url) {
          const proxyUrl = `/api/anime/video-proxy?url=${encodeURIComponent(extracted.url)}&ref=${encodeURIComponent(deUrl)}`;
          sources.push({
            name: "Dailymotion · HD",
            url: deUrl,
            quality: "HD",
            qualityRank: 6,
            site: "animeify",
            directUrl: proxyUrl,
            directType: "mp4",
          });
        }
      } catch {}
    }

    return sources;
  } catch { return []; }
}

/** Share one AF lookup between the stream picker and background downloads. */
async function getAnimeifySources(
  title: string, english: string | null, ep: number, variants: string[] = [], availabilityOnly = false,
): Promise<UnifiedSource[]> {
  const key = `animeify:${normalize(english || title).replace(/\s+/g, "-")}:${ep}:${availabilityOnly ? "availability" : "playback"}`;
  const active = _animeifyInFlight.get(key);
  if (active) return active;
  const promise = getAnimeifySourcesUncached(title, english, ep, variants, availabilityOnly);
  _animeifyInFlight.set(key, promise);
  try {
    return await promise;
  } finally {
    if (_animeifyInFlight.get(key) === promise) _animeifyInFlight.delete(key);
  }
}


//  Domain: akwam.it (Laravel-based, JS player — video loads via JS)
//  Flow: /search?q={q} → /series/{id}/{slug} → /episode/{id}/{slug}/الحلقة-{N}
//  NOTE: since video loads via JavaScript, we return the episode page URL as isEmbed
//        so the user's browser iframe runs the JS and shows the video player.
// ════════════════════════════════════════════════════════════════════
const AKOAM_BASE = "https://akwam.it";
const AKOAM_HDRS: Record<string, string> = { ...BASE_HDRS, Referer: AKOAM_BASE + "/" };

const akoamSeriesCache = new Map<string, { url: string | null; ts: number }>();
const akoamSrcCache    = new Map<string, { sources: UnifiedSource[]; ts: number }>();

async function akoamFetch(url: string, timeoutMs = 10000): Promise<string | null> {
  try {
    const r = await fetch(url, { headers: AKOAM_HDRS, signal: AbortSignal.timeout(timeoutMs), redirect: "follow" });
    if (r.ok) {
      const t = await r.text();
      if (t.length > 200 && !isCloudflareBlock(t)) return t;
    }
  } catch { /* fall through */ }
  return cfProxyGet(url, AKOAM_BASE + "/", timeoutMs + 3000).catch(() => null);
}

/** بحث عن سيريال في akwam.it — يُرجع رابط صفحة /series/{id}/{slug} */
async function searchAkoam(query: string): Promise<string | null> {
  // akwam.it يستخدم /search?q= وليس /?s=
  const html = await akoamFetch(`${AKOAM_BASE}/search?q=${encodeURIComponent(query)}`);
  if (!html) return null;
  const candidates: Array<{ url: string; score: number; rank: number }> = [];
  let rank = 0;
  // نمط الروابط: /series/{numeric-id}/{arabic-or-latin-slug}
  const seen = new Set<string>();
  for (const m of html.matchAll(/href="(https?:\/\/akwam\.it\/series\/(\d+)\/([^"/#?]+))"[^>]*/gi)) {
    const url = m[1];
    if (seen.has(url)) continue;
    seen.add(url);
    const rawSlug = m[3];
    const slug = decodeURIComponent(rawSlug).replace(/-/g, " ");
    // المقارنة الأساسية بين الأحرف اللاتينية في الـ slug والـ query
    const latinInSlug = slug.replace(/[^\x00-\x7F]+/g, " ").trim(); // نستخرج الأجزاء اللاتينية فقط
    const slugNoSeason = slug.replace(/\u0627\u0644\u0645\u0648\u0633\u0645.*$/u, "").trim();
    const score = Math.max(
      similarity(slug, query),
      asciiSimilarity(rawSlug, query),
      similarity(latinInSlug, query),
      similarity(slugNoSeason, query),
      asciiSimilarity(latinInSlug, query),
    );
    // نقبل أي نتيجة أرجعها الموقع بدون threshold — الموقع هو من أجرى المطابقة
    candidates.push({ url, score, rank: rank++ });
  }
  if (!candidates.length) return null;
  // نُفضّل النتيجة ذات highest score، وإذا تعادلوا نُفضّل الأعلى في الصفحة (rank أصغر)
  candidates.sort((a, b) => b.score - a.score || a.rank - b.rank);
  // نقبل أي نتيجة أرجعها الموقع (score > 0 أو rank = 0)
  return candidates[0] ? candidates[0].url : null;
}

async function getAkoamSources(
  title: string, english: string | null, ep: number,
): Promise<UnifiedSource[]> {
  const ck = "akoam:" + (title + "|" + (english ?? "")).toLowerCase() + ":" + ep;
  const hit = akoamSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;

  try {
    const sCk = "akoam:s:" + (english ?? title).toLowerCase();
    let seriesUrl = akoamSeriesCache.get(sCk)?.url;
    if (seriesUrl === undefined) {
      for (const q of [...new Set([english, title].filter(Boolean) as string[])]) {
        seriesUrl = await searchAkoam(q);
        console.log(`[akoam] search "${q}" → ${seriesUrl ?? "null"}`);
        if (seriesUrl) break;
      }
      akoamSeriesCache.set(sCk, { url: seriesUrl ?? null, ts: Date.now() });
    }
    if (!seriesUrl) { akoamSrcCache.set(ck, { sources: [], ts: Date.now() }); console.log("[akoam] no series URL found"); return []; }

    const seriesHtml = await akoamFetch(seriesUrl, 12000);
    console.log(`[akoam] series page len=${seriesHtml?.length ?? 0}`);
    if (!seriesHtml) { akoamSrcCache.set(ck, { sources: [], ts: Date.now() }); return []; }

    // نمط روابط الحلقات: /episode/{id}/{series-slug}/الحلقة-{N}
    const epStr = String(ep);
    let epUrl: string | null = null;
    const EP_WORD = "\u0627\u0644\u062d\u0644\u0642\u0629"; // "الحلقة" literal
    const seenLinks = new Set<string>();
    let linkCount = 0;
    for (const m of seriesHtml.matchAll(/href="(https?:\/\/akwam\.it\/episode\/\d+\/[^"#?]+)"/gi)) {
      const link = m[1];
      if (seenLinks.has(link)) continue;
      seenLinks.add(link);
      linkCount++;
      try {
        const decoded = decodeURIComponent(link);
        const ep1 = EP_WORD + "-" + epStr;
        const ep0 = EP_WORD + "-0" + epStr;
        // بحث مبسّط: هل ينتهي الرابط بـ "الحلقة-N" حرفياً؟
        if (decoded.endsWith("/" + ep1) || decoded.endsWith("/" + ep0)) {
          epUrl = link; break;
        }
      } catch { /* skip */ }
    }
    console.log(`[akoam] ep${ep} search: ${linkCount} links checked, found=${epUrl !== null}`);
    if (epUrl) console.log("[akoam] epUrl:", epUrl);

    if (!epUrl) { akoamSrcCache.set(ck, { sources: [], ts: Date.now() }); return []; }

    // استخراج رابط الفيديو مباشرة عبر Playwright (hopxBrowserExtract)
    // صفحة الحلقة تحمّل الفيديو عبر JS — المتصفح يعترض طلبات .m3u8 ويُعيدها مباشرة
    const browserVideo = await hopxBrowserExtract(epUrl, AKOAM_BASE + "/", 25_000);
    if (browserVideo?.url.startsWith("http")) {
      console.log(`[akoam] browser-extract → ${browserVideo.url.slice(0, 80)}`);
      const akRef = encodeURIComponent(epUrl);
      const directUrl = browserVideo.type === "hls"
        ? `/api/anime/hls-proxy?url=${encodeURIComponent(browserVideo.url)}&ref=${akRef}`
        : `/api/anime/video-proxy?url=${encodeURIComponent(browserVideo.url)}&ref=${akRef}`;
      const sources: UnifiedSource[] = [{
        name: "أكوام",
        url: browserVideo.url,
        quality: "HD",
        qualityRank: 8,
        site: "akoam",
        directUrl,
        directType: browserVideo.type,
      }];
      akoamSrcCache.set(ck, { sources, ts: Date.now() });
      return sources;
    }

    // fallback: إذا لم يُتح Playwright — نُرجع رابط الصفحة كـ isEmbed
    // (أكوام يحجب الـ iframe لكن على الأقل يظهر المصدر)
    console.warn("[akoam] browser-extract failed, falling back to isEmbed");
    const sources: UnifiedSource[] = [{
      name: "أكوام",
      url: epUrl, quality: "HD", qualityRank: 8, site: "akoam",
      isEmbed: true,
    }];

    akoamSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch (e: any) {
    console.warn("[akoam]", e?.message ?? e);
    akoamSrcCache.set(ck, { sources: [], ts: Date.now() });
    return [];
  }
}


//  API: GET /api/watch?anilistId={id}&ep={ep}
//  Returns sources from cdn.momentoai.dev CDN via kawaiianime.cc API
//  AniList ID used directly — no slug lookup needed
// ════════════════════════════════════════════════════════════════════
// الدومين الجديد (kawaii-anime.com → kawaiianime.cc، CDN: cdn.momentoai.dev).
// KW أبقى نفس API على أكثر من نطاق أثناء تدوير الدومين؛ نحتفظ بها كـ
// fallback حتى لا تفشل كل الحلقات إذا تعطل alias واحد أو أعاد 5xx.
const KAWAII_BASE = "https://kawaiianime.cc";
const KAWAII_API_BASES = [
  KAWAII_BASE,
  "https://www.kawaii-anime.com",
  "https://kawaii-anime.com",
] as const;
const KAWAII_CDN_HOSTS = new Set([
  "cdn.momentoai.dev",
  "video.kawaii-anime.com",
  "cdn.mewstream.buzz",
  // Kawaii currently serves some episodes through its rotating Watching CDN.
  // The URL is still signed and is returned by the trusted Kawaii API.
  "cdn.watching.onl",
]);

function kawaiiQualityRank(value: unknown): number {
  const text = String(value || "").toLowerCase();
  const m = text.match(/(?:^|[^0-9])(2160|1440|1080|720|480|360)(?:p)?(?:[^0-9]|$)/);
  const height = m ? Number(m[1]) : 0;
  if (height >= 1080 || /\bfhd\b|\bfull[ ._-]*hd\b/.test(text)) return 20;
  if (height >= 720 || /\bhd\b/.test(text)) return 14;
  if (height >= 480) return 10;
  return 6;
}

/**
 * Kawaii rotates the hostname used for signed media URLs. Keep the explicit
 * hosts for compatibility, but also accept a rotated Kawaii subdomain or a
 * CDN-shaped hostname carrying Kawaii's md5+expiry signature. The URL still
 * has to be HTTPS and must come from the trusted Kawaii API response.
 */
function isTrustedKawaiiCdnUrl(rawUrl: string): boolean {
  try {
    const parsed = new URL(rawUrl, KAWAII_BASE);
    if (parsed.protocol !== "https:" || parsed.username || parsed.password || parsed.port) return false;
    const host = parsed.hostname.toLowerCase();
    if (
      KAWAII_CDN_HOSTS.has(host) ||
      host.endsWith(".kawaii-anime.com") ||
      host.endsWith(".momentoai.dev") ||
      host.endsWith(".mewstream.buzz")
    ) return true;

    const signed = parsed.searchParams.has("md5") && (
      parsed.searchParams.has("expires") ||
      parsed.searchParams.has("expire") ||
      parsed.searchParams.has("exp") ||
      parsed.searchParams.has("validto")
    );
    return signed && /^(cdn|video)([.-][a-z0-9-]+)*\./i.test(host);
  } catch {
    return false;
  }
}

async function getKawaiiAnimeSources(
  _title: string, _english: string | null, ep: number, anilistId?: number, availabilityOnly = false,
): Promise<UnifiedSource[]> {
  if (!anilistId) return [];
  try {
    type KawaiiApiData = {
      sources?: Array<{ url: string; quality?: string; isM3U8?: boolean; type?: string }>;
      subtitles?: Array<{ url: string; lang?: string; label?: string }>;
      headers?: Record<string, string>;
      intro?: { start: number; end: number };
      outro?: { start: number; end: number };
    };
    let data: KawaiiApiData | null = null;
    let apiBase = KAWAII_BASE;

    // Try every live API alias before validating the returned CDN host.
    for (const base of KAWAII_API_BASES) {
      /* Kawaii's MP4 variant is the reliable mobile path. Its HLS response
         can advertise a valid row while the CDN rejects the first manifest
         request with a Referer-dependent 403. */
      for (const apiUrl of [
        `${base}/api/miruro?anilistId=${anilistId}&ep=${ep}`,
        `${base}/api/miruro?anilist_id=${anilistId}&episode=${ep}`,
        `${base}/api/watch?anilistId=${anilistId}&ep=${ep}&format=mp4`,
        `${base}/api/watch?anilistId=${anilistId}&ep=${ep}`,
      ]) {
        const r = await fetchSourceWithRetry(apiUrl, {
          headers: {
            ...BASE_HDRS,
            Accept: "application/json",
            Referer: base + "/",
          },
        }, 12_000);
        if (!r) continue;
        const candidate = await r.json().catch(() => null) as (KawaiiApiData & {
          data?: KawaiiApiData | { sources?: KawaiiApiData["sources"]; subtitles?: KawaiiApiData["subtitles"]; headers?: KawaiiApiData["headers"] };
        }) | null;
        const payload = candidate?.data && typeof candidate.data === "object"
          ? { ...candidate, ...candidate.data }
          : candidate;
        if (payload?.sources?.some(source => typeof source?.url === "string" && source.url.length > 0)) {
          data = payload;
          apiBase = base;
          break;
        }
      }
      if (data) break;
    }
    if (!data?.sources?.length) return [];

    if (availabilityOnly) {
      return data.sources
        .filter(source => typeof source?.url === "string" && source.url.length > 0)
        .map((source, index) => {
          const label = String(source.quality || "1080p");
          return {
            name: `كواي أنمي · ${label}`, url: "", quality: label,
            qualityRank: index === 0 ? 20 : 13, site: "kawaii",
            verified: true,
          } as UnifiedSource;
        });
    }

    // Kawaii may return several labels. Match complete language tokens only;
    // the old includes("ar") misclassified labels such as "Spanish".
    const languageOf = (s: { lang?: string; label?: string }) =>
      `${s.lang || ""} ${s.label || ""}`.toLowerCase().trim();
    const isArabicSub = (s: { lang?: string; label?: string }) =>
      /(?:^|[\s_\-([])(?:ar|ara|arab|arabic|العربية|عربي)(?:$|[\s_\-])/.test(languageOf(s));
    const isEnglishSub = (s: { lang?: string; label?: string }) =>
      /(?:^|[\s_\-([])(?:en|eng|english|الإنجليزية|انجليزي)(?:$|[\s_\-])/.test(languageOf(s));
    const arEntry  = data.subtitles?.find(isArabicSub);
    const enEntry  = data.subtitles?.find(isEnglishSub);
    const rawSubUrl = arEntry?.url || enEntry?.url || data.subtitles?.find(s => !!s.url)?.url || undefined;

    // Always proxy the subtitle first. This fixes CORS/referer failures for Kawaii
    // and gives both clients one stable input for Arabic translation.
    const proxiedSubUrl = rawSubUrl
      ? `/api/anime/proxy-text?url=${encodeURIComponent(rawSubUrl)}&ref=${encodeURIComponent(apiBase + "/")}`
      : undefined;
    const subtitleUrl = proxiedSubUrl
      ? arEntry
        ? proxiedSubUrl
        : `/api/anime/translate-vtt?url=${encodeURIComponent(proxiedSubUrl)}&from=en&to=ar`
      : undefined;

    const subLangLabel = rawSubUrl ? "عربي" : null;

    // بيانات تخطي المقدمة/الخاتمة من API مباشرة
    const skipIntro = data.intro?.start !== undefined && data.intro?.end !== undefined
      ? { start: data.intro.start, end: data.intro.end } : undefined;
    const skipOutro = data.outro?.start !== undefined && data.outro?.end !== undefined
      ? { start: data.outro.start, end: data.outro.end } : undefined;

    // ── kawaii CDN: cdn.momentoai.dev يشترط Referer: kawaiianime.cc ──
    // المتصفح لا يستطيع تعيين Referer كـ forbidden header → التشغيل المباشر يفشل.
    // الحل: توجيه كل المصادر عبر VPS proxy مع الـ Referer الصحيح.
    const trustedSources = data.sources
      .map(s => {
        if (!s?.url) return null;
        try {
           const url = new URL(s.url, apiBase).toString();
          return { ...s, url };
        } catch { return null; }
      })
      .filter((s): s is NonNullable<typeof s> => {
        if (!s) return false;
         return isTrustedKawaiiCdnUrl(s.url);
      });
    if (!trustedSources.length) return [];

    /* Prefer the original MP4 when Kawaii returns both MP4 and HLS variants.
       Android can otherwise enter the source-fallback loop on an HLS row even
       though the same episode has a directly playable file. HLS remains in
       the list as a fallback when no MP4 is available. */
    const isKawaiiHls = (src: { url: string; isM3U8?: boolean; type?: string }) => {
      const type = String(src.type || "").toLowerCase();
      return src.isM3U8 === true
        || type === "hls"
        || type === "m3u8"
        || /\.m3u8(?:[?#]|$)/i.test(src.url)
        || /\/(?:hls|playlist)(?:\/|$)/i.test(src.url);
    };
    trustedSources.sort((a, b) => Number(isKawaiiHls(a)) - Number(isKawaiiHls(b)));

    // Kawaii can route newer episodes through another provider. For example,
    // Grand Blue S3 ep6 currently returns megaplay/mewstream and rejects the
    // Kawaii page as Referer (403); the API tells us the provider's Referer.
    // Keep the old Kawaii page as a fallback for legacy video.kawaii-anime.com
    // URLs where the API does not include headers.
    const apiReferer = data.headers?.Referer || data.headers?.referer;

    return trustedSources.map((src) => {
      // Kawaii has returned the HLS flag as a boolean, a string ("hls"/"m3u8"),
      // and occasionally omitted it while keeping the playlist-shaped URL.
      // If this is misclassified as MP4, mobile playback and the download
      // conversion path both use the wrong proxy.
      const sourceType = String(src.type || "").toLowerCase();
      const isHls =
        src.isM3U8 === true ||
        sourceType === "hls" ||
        sourceType === "m3u8" ||
        /\.m3u8(?:[?#]|$)/i.test(src.url) ||
        /\/(?:hls|playlist)(?:\/|$)/i.test(src.url);
      let sourceHost = "";
      try { sourceHost = new URL(src.url).hostname.toLowerCase(); } catch {}
      // The Kawaii API has briefly returned a stale top-level headers object
      // while rotating a source to Mewstream. The CDN host is authoritative:
      // Mewstream accepts Megaplay's Referer, not kawaiianime.cc.
      const kawaiiRefValue =
        sourceHost === "cdn.mewstream.buzz" || sourceHost.endsWith(".mewstream.buzz")
          ? "https://megaplay.buzz/"
           : apiReferer?.trim() || apiBase + "/";
      const kawaiiRef = encodeURIComponent(kawaiiRefValue);
      // Every Kawaii source goes through the VPS proxy so the provider-specific
      // Referer reaches both the manifest and its rewritten segments.
      const directUrl = isHls
        ? `/api/anime/hls-proxy?url=${encodeURIComponent(src.url)}&ref=${kawaiiRef}`
        : `/api/anime/video-proxy?url=${encodeURIComponent(src.url)}&ref=${kawaiiRef}`;
      return {
        name: `كواي أنمي · ${src.quality || "1080p"}${subLangLabel ? ` · ${subLangLabel}` : ""}`,
        url: directUrl,
        quality: src.quality || "1080p",
        qualityRank: kawaiiQualityRank(`${src.quality || ""} ${src.url}`),
        site: "kawaii",
        directUrl,
        directType: isHls ? "hls" : "mp4",
        rawUrl: src.url,
        corsOk: false,
         headers: {
           Referer: kawaiiRefValue,
           Origin: (() => {
             try { return new URL(kawaiiRefValue).origin; } catch { return kawaiiRefValue.replace(/\/$/, ""); }
           })(),
         },
        subtitleUrl,
        skipIntro,
        skipOutro,
      } as UnifiedSource;
    });
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  MEGAPLAY / ANIKOTO — raw Japanese HLS with real master-playlist qualities
//  MegaPlay's public /api page documents the stream endpoints, while the
//  playable response is an HTML page -> data-id -> /stream/getSources.
//  Its external tracks are deliberately ignored: this provider must remain
//  raw audio with no built-in/bundled subtitles. Arabic subtitles come only
//  from Kawaii's external VTT track below.
// ════════════════════════════════════════════════════════════════════
const MEGAPLAY_RAW_BASE = "https://megaplay.buzz";
const MEGAPLAY_RAW_REF = `${MEGAPLAY_RAW_BASE}/`;

type MegaPlayVariant = { url: string; quality: string; qualityRank: number };

function megaPlayQuality(height: number, bandwidth = 0): { quality: string; qualityRank: number } {
  if (height >= 1080 || bandwidth >= 5_000_000) return { quality: "1080p", qualityRank: 18 };
  if (height >= 720 || bandwidth >= 2_500_000) return { quality: "720p", qualityRank: 13 };
  if (height >= 480 || bandwidth >= 1_000_000) return { quality: "480p", qualityRank: 9 };
  return { quality: "360p", qualityRank: 6 };
}

function parseMegaPlayVariants(masterUrl: string, manifest: string): MegaPlayVariant[] {
  const lines = manifest.split(/\r?\n/);
  const out: MegaPlayVariant[] = [];
  for (let i = 0; i < lines.length; i++) {
    const info = lines[i].match(/^#EXT-X-STREAM-INF:(.+)$/i)?.[1];
    if (!info) continue;
    const resolution = info.match(/(?:^|,)RESOLUTION=(\d+)x(\d+)/i);
    const bandwidth = Number(info.match(/(?:^|,)BANDWIDTH=(\d+)/i)?.[1] || 0);
    let child = "";
    for (let j = i + 1; j < lines.length; j++) {
      const candidate = lines[j].trim();
      if (!candidate || candidate.startsWith("#")) continue;
      child = candidate;
      break;
    }
    if (!child) continue;
    try {
      const url = new URL(child, masterUrl).href;
      const { quality, qualityRank } = megaPlayQuality(Number(resolution?.[2] || 0), bandwidth);
      if (!out.some(v => v.url === url)) out.push({ url, quality, qualityRank });
    } catch { /* ignore malformed variant */ }
  }
  return out;
}

async function getMegaPlayAnimeSources(
  _title: string, _english: string | null, ep: number, anilistId?: number, availabilityOnly = false,
): Promise<UnifiedSource[]> {
  if (!anilistId || !Number.isFinite(ep) || ep < 1) return [];
  try {
    const embedUrl = `${MEGAPLAY_RAW_BASE}/stream/ani/${anilistId}/${ep}/sub`;
    const page = await fetchSourceWithRetry(embedUrl, {
      headers: { ...BASE_HDRS, Referer: "https://hianimez.to/", Accept: "text/html" },
    }, 14_000);
    if (!page?.ok) return [];
    const html = await page.text();
    const fileId = html.match(/data-id\s*=\s*["']([^"']+)["']/i)?.[1]
      || html.match(/["']data-id["']\s*:\s*["']([^"']+)["']/i)?.[1];
    if (!fileId) return [];

    // MegaPlay has served both endpoint names during provider migrations.
    // Try the documented endpoint first, then the newer endpoint before the
    // source is considered unavailable.
    const sourceEndpoints = [
      `${MEGAPLAY_RAW_BASE}/stream/getSources?id=${encodeURIComponent(fileId)}`,
      `${MEGAPLAY_RAW_BASE}/stream/getSourcesNew?id=${encodeURIComponent(fileId)}&category=sub`,
    ];
    let data: {
      sources?: { file?: string; url?: string } | Array<{ file?: string; url?: string }>;
      intro?: { start?: number; end?: number };
      outro?: { start?: number; end?: number };
    } | null = null;
    for (const sourceEndpoint of sourceEndpoints) {
      try {
        const sourceResponse = await fetchSourceWithRetry(sourceEndpoint, {
          headers: {
            ...BASE_HDRS,
            Referer: embedUrl,
            "X-Requested-With": "XMLHttpRequest",
            Accept: "application/json",
          },
        }, 12_000);
        if (!sourceResponse?.ok) continue;
        const candidate = await sourceResponse.json().catch(() => null) as typeof data;
        if (candidate?.sources) { data = candidate; break; }
      } catch { /* try the migration-compatible endpoint */ }
    }
    if (!data) return [];
    const sourceValue = Array.isArray(data.sources) ? data.sources[0] : data.sources;
    const masterUrl = String(sourceValue?.file || sourceValue?.url || "").trim();
    if (!/^https:\/\//i.test(masterUrl) || !/\.m3u8(?:[?#]|$)/i.test(masterUrl)) return [];

    if (availabilityOnly) {
      return [{
        name: "MegaPlay · 1080p", url: "", quality: "1080p",
        qualityRank: 18, site: "megaplay", verified: true,
      } as UnifiedSource];
    }

    const manifestResponse = await fetchSourceWithRetry(masterUrl, {
      headers: { ...BASE_HDRS, Referer: MEGAPLAY_RAW_REF, Accept: "application/vnd.apple.mpegurl" },
    }, 12_000);
    const manifest = manifestResponse?.ok ? await manifestResponse.text() : "";
    const variants = parseMegaPlayVariants(masterUrl, manifest);
    if (!variants.length) variants.push({ url: masterUrl, ...megaPlayQuality(1080) });

    // This is intentionally the only subtitle path attached to MegaPlay.
    // MegaPlay's own English tracks are not exposed as built-in subtitles.
    const kawaiiSubtitle = await getKawaiiSubForSource(anilistId, ep);
    const skipIntro = data.intro && Number(data.intro.start) >= 0 && Number(data.intro.end) > Number(data.intro.start)
      ? { start: Number(data.intro.start), end: Number(data.intro.end) } : undefined;
    const skipOutro = data.outro && Number(data.outro.start) >= 0 && Number(data.outro.end) > Number(data.outro.start)
      ? { start: Number(data.outro.start), end: Number(data.outro.end) } : undefined;

    return variants.map((variant) => {
      const directUrl = `/api/anime/hls-proxy?url=${encodeURIComponent(variant.url)}&ref=${encodeURIComponent(MEGAPLAY_RAW_REF)}`;
      return {
        name: `MegaPlay · ${variant.quality} · صوت خام${kawaiiSubtitle ? " · ترجمة Kawaii" : ""}`,
        url: directUrl,
        quality: variant.quality,
        qualityRank: variant.qualityRank,
        site: "megaplay",
        directUrl,
        directType: "hls",
        rawUrl: variant.url,
        hasBuiltinSub: false,
        ...(kawaiiSubtitle ? { subtitleUrl: kawaiiSubtitle } : {}),
        ...(skipIntro ? { skipIntro } : {}),
        ...(skipOutro ? { skipOutro } : {}),
      } as UnifiedSource;
    });
  } catch (e: any) {
    console.warn("[megaplay]", e?.message || e);
    return [];
  }
}


// ════════════════════════════════════════════════════════════════════
//  STARDIMA (SR) — WordPress REST API, مدبلج بشكل حصري
//  Base: https://ap45.wiib.top  (auth: Bearer tok3n-MyApp-987654321)
//  Flow: /wp/v2/tvshows?search=  → /wp/v2/episodes?search=  → repeatable_fields[].url (MP4 مباشر)
//  كاتالوج ضخم: ~2700 مسلسل، ~93000 حلقة، ~3000 فيلم — كله مدبلج عربي/كرتون
// ════════════════════════════════════════════════════════════════════
const SR_BASE = "https://ap45.wiib.top";
const SR_AUTH = "Bearer tok3n-MyApp-987654321";
const srSlugCache = new Map<string, { id: number | null; ts: number }>();

async function getStardimaSources(
  title: string, english: string | null, ep: number, isMovie?: boolean,
): Promise<UnifiedSource[]> {
  try {
    const queries = [english, title].filter(Boolean) as string[];
    const postType = isMovie ? "movies" : "tvshows";
    const ck = `sr:${postType}:${(english || title).toLowerCase()}`;
    const cached = srSlugCache.get(ck);
    let showId: number | null = (cached && Date.now() - cached.ts < SEARCH_TTL) ? cached.id : undefined as any;

    if (showId === undefined) {
      showId = null;
      for (const q of queries) {
        const r = await fetch(`${SR_BASE}/wp-json/wp/v2/${postType}?search=${encodeURIComponent(q)}&per_page=10`, {
          headers: { ...BASE_HDRS, Authorization: SR_AUTH },
          signal: AbortSignal.timeout(12000),
        }).catch(() => null);
        if (!r?.ok) continue;
        const hits = await r.json() as Array<{ id: number; title?: { rendered?: string } }>;
        if (!hits?.length) continue;
        const scored = hits.map(h => ({
          id: h.id,
          score: Math.max(similarity(q, h.title?.rendered || ""), asciiSimilarity(q, h.title?.rendered || "")),
        })).sort((a, b) => b.score - a.score);
        if (scored[0] && scored[0].score >= 0.4) { showId = scored[0].id; break; }
      }
      srSlugCache.set(ck, { id: showId, ts: Date.now() });
    }
    if (!showId) return [];
    if (isMovie) {
      // الأفلام: الفيديو مباشرة في repeatable_fields للمنشور نفسه
      const mr = await fetch(`${SR_BASE}/wp-json/wp/v2/movies/${showId}`, {
        headers: { ...BASE_HDRS, Authorization: SR_AUTH },
        signal: AbortSignal.timeout(12000),
      }).catch(() => null);
      if (!mr?.ok) return [];
      const md = await mr.json() as any;
      return buildStardimaSources(md);
    }

    // ── جلب عنوان العرض من post لبناء search term مميز للحلقات ──────────────
    // serie_id في WP REST API لـ stardima معطّل (يُرجع حلقات عشوائية) —
    // نجلب بدلاً منه عنوان المسلسل ونستخدمه كـ search term للحلقات
    const showR = await fetch(`${SR_BASE}/wp-json/wp/v2/tvshows/${showId}?_fields=title`, {
      headers: { ...BASE_HDRS, Authorization: SR_AUTH },
      signal: AbortSignal.timeout(10000),
    }).catch(() => null);
    const showData = showR?.ok ? await showR.json().catch(() => null) as any : null;
    const showTitle: string = showData?.title?.rendered || english || title;

    // استخرج الجزء الإنجليزي من العنوان كـ search term (مثال: "Dragon Ball Z مدبلج")
    // أو خذ العنوان كاملاً إذا لم يوجد فاصل "|"
    const pipePart = showTitle.includes("|") ? showTitle.split("|").slice(1).join("|").trim() : showTitle;
    const srSearchQ = pipePart || english || title;

    // نبحث بـ per_page=200 ثم نفلتر بـ episodio — نتائج البحث قد تحتوي عروض مختلفة
    // لذا نتحقق أيضاً أن عنوان الحلقة يحتوي على جزء من اسم العرض
    const epR2 = await fetch(
      `${SR_BASE}/wp-json/wp/v2/episodes?search=${encodeURIComponent(srSearchQ)}&per_page=200`,
      { headers: { ...BASE_HDRS, Authorization: SR_AUTH }, signal: AbortSignal.timeout(18000) },
    ).catch(() => null);
    const episodes: any[] = epR2?.ok ? await epR2.json().catch(() => []) as any[] : [];
    if (!episodes?.length) return [];

    // فلتر الحلقات: رقم الحلقة يجب أن يطابق ep
    // إذا كان هناك أكثر من نتيجة لنفس رقم الحلقة، نختار الأقرب لعنوان العرض
    const matchingEps = episodes.filter((e: any) =>
      String(e.episodio) === String(ep) || Number(e.episodio) === Number(ep),
    );
    if (!matchingEps.length) return [];

    // اختر الحلقة التي تحتوي عنوانها على أكبر قدر من التشابه مع srSearchQ
    const epObj = matchingEps.length === 1
      ? matchingEps[0]
      : matchingEps.sort((a: any, b: any) => {
          const aT = a.title?.rendered || "";
          const bT = b.title?.rendered || "";
          // مشاركة ASCII chars مع العنوان البحثي → أعلى = أفضل
          const scoreA = asciiSimilarity(srSearchQ, aT);
          const scoreB = asciiSimilarity(srSearchQ, bT);
          return scoreB - scoreA;
        })[0];
    return buildStardimaSources(epObj);
  } catch { return []; }
}

function buildStardimaSources(post: any): UnifiedSource[] {
  const fields = (post?.repeatable_fields || []) as Array<{ name?: string; select?: string; url?: string }>;
  const sources: UnifiedSource[] = [];
  for (const f of fields) {
    if (!f?.url || !/^https?:\/\//.test(f.url)) continue;
    const isHls = f.url.includes(".m3u8");
    sources.push({
      name: `ستارديما · مدبلج${f.select ? " · " + f.select.toUpperCase() : ""}`,
      url: f.url,
      quality: "720p",
      qualityRank: 18,
      site: "stardima",
      directUrl: f.url,
      directType: isHls ? "hls" : "mp4",
      corsOk: false,
    });
  }
  return sources;
}


// ── GET /api/anime/kawaii-meta ──────────────────────────────────────
// Returns Arabic subtitle URL + intro/outro skip times from kawaii.
// Used by the frontend to enrich ALL sources (not just kawaii) so that
// every source benefits from Arabic subtitles and skip-intro buttons.
// ────────────────────────────────────────────────────────────────────
// ── تغليف روابط CDN المباشرة للموبايل عبر VPS proxy ──────────────────────
// CDN كثيرة تحجب IPs الموبايل بدون Referer صحيح من الخادم.
// تُستدعى فقط إذا كان الطلب من تطبيق الموبايل (X-Nova-Client header).
function wrapForMobile(s: { site?: string; directUrl?: string; url?: string; directType?: string; isEmbed?: boolean; headers?: Record<string,string> }) {
  if (s.isEmbed) return s;
  // AniNeko and Kawaii both need the full VPS HLS proxy. A manifest-only
  // proxy leaves child playlists/segments on the device, where the required
  // Referer/Origin is lost and playback fails after the first request.
  //
  // The mobile contract is deliberately stronger than the web contract:
  // both `url` and `directUrl` must point at the same protected media URL.
  // Older cache rows can contain a raw URL in one field and an encrypted
  // proxy URL in the other, so prefer the readable field when the selected
  // value is already encrypted.
  const preferredUrl = s.site === "anineko"
    ? (s.url || s.directUrl || "")
    : (s.directUrl || s.url || "");
  const rawUrl = isEncrypted(preferredUrl) && s.url && !isEncrypted(s.url)
    ? s.url
    : preferredUrl;
  if (!rawUrl) return s;
  const ref = s.headers?.Referer || "";

  // Already proxied through Nova: normalize both fields and encrypt any
  // legacy plaintext query parameters before handing the URL to the app.
  // This also makes cached sources follow the exact same contract as fresh
  // scraper results.
  if (rawUrl.startsWith("/api/anime/") || rawUrl.startsWith("/proxy/hls")) {
    const protectedUrl = rawUrl.startsWith("/api/anime/")
      ? encryptProxyUrl(rawUrl)
      : rawUrl;
    return { ...s, directUrl: protectedUrl, url: protectedUrl, corsOk: false };
  }
  // Shirayuki already rewrites child playlists and segments. Wrapping its
  // URL through Nova again creates a proxy-to-proxy request.
  if (rawUrl.includes("proxy.anikuro.ru/")) return { ...s, corsOk: true };
  // روابط embed/mega
  if (rawUrl.includes("mega.nz") || rawUrl.includes("mega.co.nz")) return s;
  // لا نعتمد على امتداد الرابط فقط: AniNeko أحياناً يعيد token/playlist
  // بلا امتداد .m3u8، بينما directType هو المعلومة الموثوقة التي أعادها
  // الـ scraper. بدون ذلك يصل الرابط الخام إلى ExoPlayer فيحاول قراءته
  // كـ Progressive MP4 ثم يفشل بصمت على Android.
  const isHls =
    String(s.directType || "").toLowerCase() === "hls" ||
    /\.m3u8|hls-proxy|\/(?:hls|playlist)(?:\/|$)/i.test(rawUrl);
  const isMp4 = rawUrl.includes(".mp4") || s.directType === "mp4";
  let proxied = rawUrl;
  if (isHls) {
    proxied = ref
      ? `/api/anime/hls-proxy?url=${encryptParam(rawUrl)}&ref=${encryptParam(ref)}`
      : `/api/anime/hls-proxy?url=${encryptParam(rawUrl)}`;
  } else if (isMp4 && ref) {
    proxied = `/api/anime/video-proxy?url=${encryptParam(rawUrl)}&ref=${encryptParam(ref)}`;
  } else {
    return s; // MP4 بدون Referer — اتركه للموبايل يتعامل معه مباشرة
  }
  return { ...s, directUrl: proxied, url: proxied, directType: isHls ? "hls" : s.directType };
}


router.get("/anime/kawaii-meta", async (req: Request, res: Response) => {
  const anilistId = parseInt(req.query.anilistId as string || "0");
  const ep = parseInt(req.query.ep as string || "1");
  const empty = { arabicSubUrl: null, englishSubUrl: null, subtitleRef: null, intro: null, outro: null };
  if (!anilistId) return res.json(empty);
  try {
    type KawaiiMeta = {
      subtitles?: Array<{ url: string; lang?: string; label?: string }>;
      headers?: Record<string, string>;
      intro?: { start: number; end: number };
      outro?: { start: number; end: number };
    };
    let data: KawaiiMeta | null = null;
    let apiBase = KAWAII_BASE;
    for (const base of KAWAII_API_BASES) {
      const r = await fetchSourceWithRetry(`${base}/api/watch?anilistId=${anilistId}&ep=${ep}`, {
        headers: { ...BASE_HDRS, Accept: "application/json", Referer: `${base}/` },
      }, 10_000);
      if (!r) continue;
      const candidate = await r.json().catch(() => null) as KawaiiMeta | null;
      if (candidate?.subtitles?.some(s => typeof s?.url === "string" && s.url.length > 0)) {
        data = candidate;
        apiBase = base;
        break;
      }
    }
    if (!data) return res.json(empty);
    const language = (s: { lang?: string; label?: string }) => `${s.lang || ""} ${s.label || ""}`.toLowerCase().trim();
    const isArabic = (s: { lang?: string; label?: string }) => {
      const value = language(s);
      return value === "ar" || value === "ara" || value.includes("arabic") || value.includes("arab") || value.includes("عربي") || value.includes("العربية");
    };
    const isEnglish = (s: { lang?: string; label?: string }) => {
      const value = language(s);
      return value === "en" || value === "eng" || value.includes("english") || value.includes("انجليزي");
    };
    const arEntry = data.subtitles?.find(isArabic);
    const enEntry = data.subtitles?.find(isEnglish);
    const subtitleRef = data.headers?.Referer || data.headers?.referer || `${apiBase}/`;
    return res.json({
      arabicSubUrl: arEntry?.url || null,
      englishSubUrl: enEntry?.url || null,
      subtitleRef,
      intro: data.intro || null,
      outro: data.outro || null,
    });
  } catch {
    return res.json(empty);
  }
});// ════════════════════════════════════════════════════════════════════
//  ANIKOTO (via megaplay.buzz) — صوت ياباني + ترجمة إنجليزية → عربية
//  يستخدم AniList ID مباشرة، لا حاجة للبحث عن slug
// ════════════════════════════════════════════════════════════════════
const MEGAPLAY_BASE = "https://megaplay.buzz";
const MEGAPLAY_SPOOF_REF = "https://hianimes.re/";

async function getAniKotoSources(
  _title: string, _english: string | null, ep: number, anilistId?: number,
): Promise<UnifiedSource[]> {
  if (!anilistId) return [];
  try {
    const embedUrl = `${MEGAPLAY_BASE}/stream/ani/${anilistId}/${ep}/sub`;
    const megaHdrs = { ...BASE_HDRS, Referer: MEGAPLAY_SPOOF_REF, "Accept-Language": "en-US,en;q=0.9" };

    // جلب صفحة الـ embed — مع fallback عبر cfProxy إذا حجبت CF الطلب المباشر
    let html = await fetch(embedUrl, {
      headers: megaHdrs,
      signal: AbortSignal.timeout(10000),
    }).then(r => r.ok ? r.text() : "").catch(() => "");

    if (!html || (!html.match(/data-id="[^"]+?"/) && !html.match(/<iframe\b/i))) {
      // حاول عبر cfProxy (يتجاوز Cloudflare bot-check من الـ VPS IP)
      html = await cfProxyGet(embedUrl, MEGAPLAY_SPOOF_REF, 12000) || "";
    }

    // تتبع iframe داخلي إذا لزم الأمر
    const frameSrc = html.match(/<iframe\b[^>]*src="([^"]+)"/i)?.[1];
    let actualEmbedUrl = embedUrl;
    if (!html.match(/data-id="[^"]+?"/) && frameSrc) {
      actualEmbedUrl = frameSrc.startsWith("http") ? frameSrc : `${MEGAPLAY_BASE}${frameSrc}`;
      html = await fetch(actualEmbedUrl, {
        headers: { ...BASE_HDRS, Referer: MEGAPLAY_SPOOF_REF },
        signal: AbortSignal.timeout(8000),
      }).then(r => r.ok ? r.text() : "").catch(() => "");
      if (!html || !html.match(/data-id="[^"]+?"/)) {
        html = await cfProxyGet(actualEmbedUrl, MEGAPLAY_SPOOF_REF, 10000) || "";
      }
    }

    const fileId = html.match(/data-id="([^"]+)"/)?.[1];
    if (!fileId) return [];

    const origin = new URL(actualEmbedUrl).origin;
    // جلب مصادر الفيديو — مع fallback عبر cfProxy
    let data: any = null;
    // MegaPlay's current documented endpoint is getSourcesNew. Keep the
    // legacy endpoint as a compatibility fallback because some older embed
    // pages still only expose the old response path.
    const sourceEndpoints = [
      `${origin}/stream/getSourcesNew?id=${encodeURIComponent(fileId)}&category=sub`,
      `${origin}/stream/getSources?id=${encodeURIComponent(fileId)}`,
    ];
    const sourcesHdrs = {
      ...BASE_HDRS,
      Referer: `${origin}/`,
      "X-Requested-With": "XMLHttpRequest",
      Accept: "application/json, */*",
    };
    for (const sourcesUrl of sourceEndpoints) {
      data = await fetch(sourcesUrl, {
        headers: sourcesHdrs,
        signal: AbortSignal.timeout(8000),
      }).then(r => r.ok ? r.json() : null).catch(() => null);
      if (data?.sources?.file) break;
      const txt = await cfProxyGet(sourcesUrl, `${origin}/`, 10000);
      if (txt) {
        try { data = JSON.parse(txt); } catch {}
      }
      if (data?.sources?.file) break;
    }
    const typedData = data as {
      sources?: { file?: string };
      tracks?: Array<{ file: string; label?: string; kind?: string; default?: boolean }>;
    } | null;

    if (!typedData?.sources?.file) return [];

    const m3u8Url = typedData.sources.file;

    // اختر الـ subtitle المتاحة
    const subTrack =
      typedData.tracks?.find(t => t.kind !== "thumbnails" && /(arabic|arab|\bar\b)/i.test(t.label || "")) ||
      typedData.tracks?.find(t => t.kind !== "thumbnails" && /(english|eng)/i.test(t.label || "")) ||
      typedData.tracks?.find(t => t.kind !== "thumbnails");
    const subtitleUrl = subTrack?.file
      ? `/api/anime/proxy-text?url=${encodeURIComponent(subTrack.file)}&ref=${encodeURIComponent(origin + "/")}`
      : undefined;
    const subLang = subTrack
      ? (/(arabic|arab|\bar\b)/i.test(subTrack.label || "") ? "عربي" : "إنجليزي")
      : "";

    const referer = origin + "/";

    // استخرج كل الجودات من master.m3u8
    const qualities = await parseM3u8Qualities(m3u8Url, referer);
    if (qualities.length > 0) {
      return qualities.map(q => {
        const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(q.url)}&ref=${encodeURIComponent(referer)}`;
        return {
          name: `AniKoto · ${q.quality} · ياباني${subLang ? " · " + subLang : ""}`,
          url: q.url,
          quality: q.quality,
          qualityRank: q.rank + 5, // AniKoto rank base 16
          site: "anikoto",
          directUrl: proxied,
          directType: "hls" as const,
          subtitleUrl,
        };
      });
    }

    // fallback: جودة واحدة
    const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(m3u8Url)}&ref=${encodeURIComponent(referer)}`;
    return [{
      name: `AniKoto · 1080p · ياباني${subLang ? " · " + subLang : ""}`,
      url: m3u8Url,
      quality: "1080p",
      qualityRank: 16,
      site: "anikoto",
      directUrl: proxied,
      directType: "hls",
      subtitleUrl,
    }];
  } catch { return []; }
}


// animex: محذوف بالكامل (animex.one)
// anikuro: محذوف — موقع anikuro.ru تم إيقافه


// ════════════════════════════════════════════════════════════════════
//  ANIVAULT (Railway API) — صوت ياباني مترجم (senshi/miruro/animeheaven)
//  AniList ID مباشرة → Railway API → hlsProxyUrl/mp4ProxyUrl
//  CDN (ninstream/uwucdn) يحجب Replit → double-proxy عبر Railway ثم hls-proxy
//  senshi/miruro: HLS عبر hlsProxyUrl → hls-proxy
//  animeheaven: MP4 مباشر (rawStreamUrl) → video-proxy
// ════════════════════════════════════════════════════════════════════
// AniVault: محذوف — الـ streams تحتوي ترجمة إنجليزية مدمجة لا يمكن إزالتها

// ════════════════════════════════════════════════════════════════════
//  HIANIME (hianime.ad) — صوت ياباني + ترجمة إنجليزية VTT → عربية
//  بنية HTML مطابقة لـ AniNeko — vibeplayer.site / bibiemb.xyz HLS
//  Flow: /filter?keyword → slug → /watch/{slug}/ep-{N} → data-video
// ════════════════════════════════════════════════════════════════════
const HIANIME_BASE = "https://hianime.ad";
const HIANIME_REF  = "https://hianime.ad/";
const hianimeTitleCache = new Map<string, { slug: string | null; ts: number }>();
const HIANIME_TTL = 6 * 3_600_000;

async function searchHiAnime(q: string): Promise<Array<{ slug: string }>> {
  const html = await fetch(
    `${HIANIME_BASE}/filter?keyword=${encodeURIComponent(q)}`,
    { headers: { ...BASE_HDRS, Referer: HIANIME_REF }, signal: AbortSignal.timeout(10000) },
  ).then(r => r.ok ? r.text() : "").catch(() => "");

  const results: Array<{ slug: string }> = [];
  const seen = new Set<string>();
  for (const m of html.matchAll(/href=["']\/anime\/([^"'?#]+)["']/gi)) {
    const slug = m[1];
    if (!seen.has(slug)) { seen.add(slug); results.push({ slug }); }
  }
  return results;
}

async function findHiAnimeSlug(title: string, english: string | null): Promise<string | null> {
  const ck = `${title}|${english || ""}`.toLowerCase();
  const cached = hianimeTitleCache.get(ck);
  if (cached && Date.now() - cached.ts < HIANIME_TTL) return cached.slug;

  const queries = [...new Set([english, title].filter(Boolean) as string[])];
  for (const q of queries) {
    const results = await searchHiAnime(q);
    if (!results.length) continue;

    let bestSlug: string | null = null, bestSc = 0;
    for (const r of results) {
      const slugTitle = r.slug.replace(/-/g, " ");
      const sc = Math.max(
        similarity(slugTitle, title.toLowerCase()),
        english ? similarity(slugTitle, english.toLowerCase()) : 0,
        asciiSimilarity(r.slug, title),
        english ? asciiSimilarity(r.slug, english) : 0,
      );
      if (sc > bestSc) { bestSc = sc; bestSlug = r.slug; }
    }
    if (bestSlug && bestSc >= 0.30) {
      hianimeTitleCache.set(ck, { slug: bestSlug, ts: Date.now() });
      return bestSlug;
    }
  }
  hianimeTitleCache.set(ck, { slug: null, ts: Date.now() });
  return null;
}

async function getHiAnimeSources(
  title: string, english: string | null, ep: number, _anilistId?: number,
  availabilityOnly = false,
): Promise<UnifiedSource[]> {
  try {
    const slug = await findHiAnimeSlug(title, english);
    if (!slug) return [];

    // صفحة الحلقة — /watch/{slug}/ep-{N}
    // hianime.ad SPA — cfProxyGet (curl_cffi Chrome) → hopxProxyGet (residential IP) → direct VPS
    let epHtml = await cfProxyGet(`${HIANIME_BASE}/watch/${slug}/ep-${ep}`, HIANIME_REF, 18000) ?? "";
    if (!epHtml || epHtml.length < 1000 || !epHtml.includes("data-video")) {
      epHtml = await hopxProxyGet(`${HIANIME_BASE}/watch/${slug}/ep-${ep}`, HIANIME_REF, 20000) ?? "";
    }
    if (!epHtml || epHtml.length < 1000 || !epHtml.includes("data-video")) {
      epHtml = await fetch(`${HIANIME_BASE}/watch/${slug}/ep-${ep}`, {
        headers: { ...BASE_HDRS, Referer: `${HIANIME_BASE}/anime/${slug}` },
        signal: AbortSignal.timeout(12000),
      }).then(r => r.ok ? r.text() : "").catch(() => "");
    }
    if (!epHtml || epHtml.length < 1000) return [];

    // استخرج data-video — HSUB (مع ?sub= VTT) مفضّل على SUB (بدون ترجمة)
    const serverEntries: Array<{ embedUrl: string; rawSubUrl: string | null }> = [];
    for (const m of epHtml.matchAll(/data-video=["']([^"']+)["']/gi)) {
      const rawVal = m[1].replace(/&amp;/g, "&").replace(/&#34;/g, '"');
      let embedUrl = rawVal;
      let rawSubUrl: string | null = null;
      try {
        const parsed = new URL(rawVal);
        const subParam =
          parsed.searchParams.get("sub") ||
          parsed.searchParams.get("caption_1") ||
          parsed.searchParams.get("c1_file");
        if (subParam?.startsWith("http")) {
          rawSubUrl = subParam;
          ["sub", "caption_1", "sub_1", "c1_file", "c1_label"].forEach(p => parsed.searchParams.delete(p));
          embedUrl = parsed.toString();
        }
      } catch {}
      serverEntries.push({ embedUrl, rawSubUrl });
    }
    if (!serverEntries.length) return [];

    // فضّل HSUB (لها rawSubUrl) ثم fallback للباقي
    const hsub = serverEntries.filter(e => e.rawSubUrl);
    const toProcess = (hsub.length ? hsub : serverEntries).slice(0, 3);

    const sources: UnifiedSource[] = [];
    for (const { embedUrl, rawSubUrl: _rawSubUrl } of toProcess) {
      let rawSubUrl = _rawSubUrl;
      let m3u8Url: string | null = null;
      let referer = HIANIME_REF;
      let multiQualities: Array<{ quality: string; rank: number; url: string }> = [];

      // vibeplayer.site — اشتقاق مباشر بدون HTTP request إضافي
      const vibeToken = embedUrl.match(/vibeplayer\.site\/([a-zA-Z0-9]{10,})/i)?.[1];
      if (vibeToken) {
        m3u8Url = `https://vibeplayer.site/public/stream/${vibeToken}/master.m3u8`;
        referer  = `https://vibeplayer.site/${vibeToken}`;
        if (!rawSubUrl) {
          const vibeHtml = await fetch(`https://vibeplayer.site/${vibeToken}`, {
            headers: { ...BASE_HDRS, Referer: HIANIME_REF },
            signal: AbortSignal.timeout(6000),
          }).then(r => r.ok ? r.text() : "").catch(() => "");
          const subM = vibeHtml.match(/const\s+subtitle\s*=\s*["']([^"']{10,})["']/i);
          if (subM?.[1]?.startsWith("http")) rawSubUrl = subM[1];
        }
        // فحص الجودات من master.m3u8
        multiQualities = await parseM3u8Qualities(m3u8Url, referer);
      } else if (embedUrl.includes("bibiemb.xyz")) {
        // bibiemb.xyz — اشتق الـ m3u8 من صفحة الـ embed
        const bibiPath = embedUrl.match(/bibiemb\.xyz\/([^/?#]+)/i)?.[1];
        if (bibiPath) {
          const bibiHtml = await fetch(`https://bibiemb.xyz/${bibiPath}`, {
            headers: { ...BASE_HDRS, Referer: HIANIME_REF },
            signal: AbortSignal.timeout(8000),
          }).then(r => r.ok ? r.text() : "").catch(() => "");
          const mm = bibiHtml.match(/["'](https?:\/\/[^"'<> ]+\.m3u8[^"'<> ]*)["']/);
          if (mm) { m3u8Url = mm[1]; referer = `https://bibiemb.xyz/${bibiPath}`; }
          if (!rawSubUrl) {
            const subM = bibiHtml.match(/const\s+subtitle\s*=\s*["']([^"']{10,})["']/i);
            if (subM?.[1]?.startsWith("http")) rawSubUrl = subM[1];
          }
          if (m3u8Url) multiQualities = await parseM3u8Qualities(m3u8Url, referer);
        }
      } else {
        // خوادم أخرى (OtakuHG / OtakuVid / PlayMogo) — استخرج كل الجودات
        try { referer = new URL(embedUrl).origin + "/"; } catch {}
        multiQualities = await extractAninekoAllHls(embedUrl, slug);
        m3u8Url = multiQualities[0]?.url ?? null;
      }

      if (!m3u8Url && !multiQualities.length) continue;

      // الترجمة الإنجليزية → العربية عبر translate-vtt
      let subtitleUrl: string | undefined;
      if (rawSubUrl) {
        const proxySubUrl = `/api/anime/proxy-text?url=${encodeURIComponent(rawSubUrl)}&ref=${encodeURIComponent(HIANIME_REF)}`;
        subtitleUrl = `/api/anime/translate-vtt?url=${encodeURIComponent(proxySubUrl)}&from=en&to=ar`;
      }

      const hostLabel = embedUrl.includes("bibi")     ? "BibiEmb"
                      : embedUrl.includes("otakuhg")  ? "OtakuHG"
                      : embedUrl.includes("otakuvid") ? "OtakuVid"
                      : embedUrl.includes("playmogo") ? "PlayMogo"
                      : "VibePlayer";
      const subLabel = rawSubUrl ? " · مترجم" : "";

      if (multiQualities.length > 0) {
        // أضف مصدر منفصل لكل جودة
        for (const q of multiQualities) {
          const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(q.url)}&ref=${encodeURIComponent(referer)}`;
          sources.push({
            name: `HiAnime · ${hostLabel} · ${q.quality} · ياباني${subLabel}`,
            url: q.url,
            quality: q.quality,
            qualityRank: q.rank,
            site: "hianime",
            directUrl: proxied,
            directType: "hls",
            subtitleUrl,
          });
        }
      } else if (m3u8Url) {
        // fallback: جودة واحدة
        const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(m3u8Url)}&ref=${encodeURIComponent(referer)}`;
        sources.push({
          name: `HiAnime · ${hostLabel} · ياباني${subLabel}`,
          url: m3u8Url,
          quality: "1080p",
          qualityRank: 9,
          site: "hianime",
          directUrl: proxied,
          directType: "hls",
          subtitleUrl,
        });
      }

      if (sources.length >= 8) break;
    }
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  ANIKOTOTV (anikototv.to) — صوت ياباني + ترجمة + skip_data مدمج
//  من: AniKotoAPI repo (milkaunmutilated455/AniKotoAPI)
//  Flow: /filter?keyword → slug → /watch/{slug}/ep-{N} →
//        li[data-link-id] (sub) → /ajax/server?get={linkId} →
//        { result: { url, skip_data } } → extractVideoDeep → HLS
// ════════════════════════════════════════════════════════════════════
const ANIKOTOTV_BASE = "https://anikototv.to";
const anikototvSlugCache = new Map<string, { slug: string | null; ts: number }>();
const ANIKOTOTV_SLUG_TTL = 10 * 3_600_000;

async function findAnikototvSlug(title: string, english: string | null): Promise<string | null> {
  const ck = `${title}|${english || ""}`.toLowerCase();
  const cached = anikototvSlugCache.get(ck);
  if (cached && Date.now() - cached.ts < ANIKOTOTV_SLUG_TTL) return cached.slug;

  const queries = [...new Set([english, title].filter(Boolean) as string[])];
  for (const q of queries) {
    const html = await orkestGet(
      `${ANIKOTOTV_BASE}/filter?keyword=${encodeURIComponent(q)}`,
      `${ANIKOTOTV_BASE}/`,
      14000
    ) ?? "";
    if (!html || html.length < 500 || isCloudflareBlock(html)) continue;

    const seen = new Set<string>();
    const slugs: Array<{ slug: string }> = [];
    for (const m of html.matchAll(/href=["']\/watch\/([^/"'?#]+)/gi)) {
      const slug = m[1];
      if (slug && !seen.has(slug)) { seen.add(slug); slugs.push({ slug }); }
    }
    if (!slugs.length) continue;

    let bestSlug: string | null = null, bestSc = 0;
    for (const { slug } of slugs) {
      const slugTitle = slug.replace(/-/g, " ");
      const sc = Math.max(
        similarity(slugTitle, title.toLowerCase()),
        english ? similarity(slugTitle, english.toLowerCase()) : 0,
        asciiSimilarity(slug, title),
        english ? asciiSimilarity(slug, english) : 0,
      );
      if (sc > bestSc) { bestSc = sc; bestSlug = slug; }
    }
    if (bestSlug && bestSc >= 0.28) {
      anikototvSlugCache.set(ck, { slug: bestSlug, ts: Date.now() });
      return bestSlug;
    }
  }
  anikototvSlugCache.set(ck, { slug: null, ts: Date.now() });
  return null;
}

async function getAnikototvSources(
  title: string, english: string | null, ep: number,
): Promise<UnifiedSource[]> {
  try {
    const slug = await findAnikototvSlug(title, english);
    if (!slug) return [];

    // صفحة الحلقة عبر Orkestr relay
    const epHtml = await orkestGet(
      `${ANIKOTOTV_BASE}/watch/${slug}/ep-${ep}`,
      `${ANIKOTOTV_BASE}/watch/${slug}`,
      16000
    ) ?? "";
    if (!epHtml || epHtml.length < 500 || isCloudflareBlock(epHtml)) return [];

    // استخرج link IDs من قسم SUB فقط (صوت ياباني + ترجمة إنجليزية)
    const subSection = (() => {
      const m = epHtml.match(
        /<div\b[^>]*data-type=["']sub["'][^>]*>([\s\S]*?)(?=<div\b[^>]*data-type=["'](?:dub|raw)|$)/i
      );
      return m?.[1] || epHtml;
    })();

    const linkIds: string[] = [];
    for (const m of subSection.matchAll(/data-link-id=["']([^"']+)["']/gi)) {
      if (!linkIds.includes(m[1])) linkIds.push(m[1]);
    }
    if (!linkIds.length) return [];

    const sources: UnifiedSource[] = [];

    for (const linkId of linkIds.slice(0, 4)) {
      try {
        // AJAX: /ajax/server?get={linkId} → { status, result: { url, skip_data } }
        const ajaxRaw = await orkestGet(
          `${ANIKOTOTV_BASE}/ajax/server?get=${encodeURIComponent(linkId)}`,
          `${ANIKOTOTV_BASE}/watch/${slug}/ep-${ep}`,
          10000
        ) ?? "";
        if (!ajaxRaw) continue;

        let playerUrl: string | null = null;
        let skipIntro: { start: number; end: number } | undefined;
        let skipOutro: { start: number; end: number } | undefined;

        try {
          const parsed = JSON.parse(ajaxRaw) as Record<string, unknown>;
          const result: Record<string, unknown> =
            typeof parsed.result === "string"
              ? (JSON.parse(parsed.result as string) as Record<string, unknown>)
              : ((parsed.result as Record<string, unknown>) ?? {});

          playerUrl = typeof result.url === "string" ? result.url : null;

          // skip_data تحتوي على توقيتات المقدمة/الخاتمة المدمجة من AniKototv
          const sd = result.skip_data as Record<string, number> | undefined;
          if (sd && typeof sd === "object") {
            const is = Number(sd.intro_start ?? sd.introStart ?? sd.opening_start);
            const ie = Number(sd.intro_end   ?? sd.introEnd   ?? sd.opening_end);
            const os = Number(sd.outro_start ?? sd.outroStart ?? sd.ending_start);
            const oe = Number(sd.outro_end   ?? sd.outroEnd   ?? sd.ending_end);
            if (!isNaN(is) && !isNaN(ie) && ie > is) skipIntro = { start: is, end: ie };
            if (!isNaN(os) && !isNaN(oe) && oe > os) skipOutro = { start: os, end: oe };
          }
        } catch { continue; }

        if (!playerUrl?.startsWith("http")) continue;

        // استخرج HLS من player URL باستخدام محرك الاستخراج الموجود
        const hls = await extractVideoDeep(playerUrl, `${ANIKOTOTV_BASE}/`).catch(() => null);
        if (!hls) continue;

        const refAnikototv = `${ANIKOTOTV_BASE}/`;
        // استخرج كل الجودات من master.m3u8
        const qualities = await parseM3u8Qualities(hls, refAnikototv);
        if (qualities.length > 0) {
          for (const q of qualities) {
            const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(q.url)}&ref=${encodeURIComponent(refAnikototv)}`;
            sources.push({
              name: `AniKototv · ${q.quality} · ياباني مترجم`,
              url: q.url,
              quality: q.quality,
              qualityRank: q.rank,
              site: "anikototv",
              directUrl: proxied,
              directType: "hls",
              skipIntro,
              skipOutro,
            });
          }
        } else {
          const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(hls)}&ref=${encodeURIComponent(refAnikototv)}`;
          sources.push({
            name: `AniKototv · ياباني مترجم`,
            url: hls,
            quality: "1080p",
            qualityRank: 9,
            site: "anikototv",
            directUrl: proxied,
            directType: "hls",
            skipIntro,
            skipOutro,
          });
        }

        if (sources.length >= 8) break;
      } catch { continue; }
    }
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  ANINEKO (anineko.to) — صوت ياباني + ترجمة إنجليزية → عربية
//  Multi-quality HLS (360p / 720p / 1080p) عبر vibeplayer.site
// ════════════════════════════════════════════════════════════════════
const ANINEKO_BASE = "https://anineko.to";
const aninekoSlugCache = new Map<string, { slug: string | null; ts: number }>();
const ANINEKO_SLUG_TTL = 12 * 3_600_000;

async function searchAnineko(query: string): Promise<Array<{ slug: string; title: string }>> {
  const searchUrl = `${ANINEKO_BASE}/browser?keyword=${encodeURIComponent(query)}`;
  // anineko.to مُتاح مباشرةً من VPS IP — direct أسرع؛ Hopx كـ fallback
  let html = "";
  try {
    const _dr = await fetch(searchUrl, {
      headers: { "User-Agent": BROWSER_UA, Referer: `${ANINEKO_BASE}/`, Accept: "text/html,*/*;q=0.9", "Accept-Language": "ar,en;q=0.9" },
      signal: AbortSignal.timeout(12_000),
    });
    if (_dr.ok) html = await _dr.text();
  } catch { /* fall through */ }
  // orkestGet removed — anineko.to accessible directly from VPS IP (confirmed 2026-07)

  const results: Array<{ slug: string; title: string }> = [];
  for (const m of html.matchAll(/<a\b[^>]*class=["'][^"']*nv-anime-thumb[^"']*["'][^>]*>[\s\S]*?<\/a>/gi)) {
    const tag = m[0].match(/<a\b[^>]*>/i)?.[0] ?? "";
    const hrefM = tag.match(/href=["']([^"']+)["']/i);
    const slug = hrefM?.[1].match(/\/watch\/([^/?#]+)/)?.[1];
    if (!slug) continue;
    const titleM = m[0].match(/<(?:h3|[^>]+class=["'][^"']*nv-anime-title[^"']*["'][^>]*)>([\s\S]*?)<\/(?:h3|span|div)>/i);
    const title = titleM ? titleM[1].replace(/<[^>]+>/g, "").trim() : slug.replace(/-/g, " ");
    results.push({ slug, title });
  }
  return results;
}

async function findAninekoSlug(title: string, english: string | null, variants: string[] = []): Promise<string | null> {
  const ck = (title + "|" + (english || "")).toLowerCase();
  const cached = aninekoSlugCache.get(ck);
  if (cached && Date.now() - cached.ts < ANINEKO_SLUG_TTL) return cached.slug;

  // AniNeko often returns a localized/official English title for a Romaji query
  // (e.g. "Oni no Hanayome" -> "The Ogre's Bride"). Include all client title
  // variants before falling back to the primary title.
  const queries = [...new Set(
    [english, ...variants, title].filter((value): value is string =>
      typeof value === "string" && value.trim().length > 0
    )
  )];
  for (const q of queries) {
    const results = await searchAnineko(q);
    if (!results.length) continue;
    // مطابقة بالتشابه — نرفض أي نتيجة أقل من 0.35 لتفادي جلب أنمي خاطئ
    let bestSlug: string | null = null, bestSc = 0;
    for (const r of results) {
      const sc = Math.max(
        similarity(r.title.toLowerCase(), title.toLowerCase()),
        english ? similarity(r.title.toLowerCase(), english.toLowerCase()) : 0,
        asciiSimilarity(r.slug, title),
        english ? asciiSimilarity(r.slug, english) : 0,
      );
      if (sc > bestSc) { bestSc = sc; bestSlug = r.slug; }
    }
    // The AniNeko browser endpoint is already a relevance-ranked search. When
    // it returns exactly one card, accept that card even if the site uses a
    // translated title that cannot score against the Romaji title locally.
    const singleSearchResult = results.length === 1 && q.trim().length >= 4;
    if (singleSearchResult) {
      // A localized title can score zero against the Romaji query. The site
      // search has already narrowed this to one relevant card, so use its slug.
      const chosenSlug = bestSlug || results[0].slug;
      aninekoSlugCache.set(ck, { slug: chosenSlug, ts: Date.now() });
      return chosenSlug;
    }
    if (bestSlug && bestSc >= 0.35) {
      aninekoSlugCache.set(ck, { slug: bestSlug, ts: Date.now() });
      return bestSlug;
    }
  }
  aninekoSlugCache.set(ck, { slug: null, ts: Date.now() });
  return null;
}

async function extractAninekoHls(embedUrl: string, seriesSlug: string): Promise<string | null> {
  const results = await extractAninekoAllHls(embedUrl, seriesSlug);
  return results[0]?.url ?? null;
}

/** استخرج كل الجودات المتاحة (hls1..hls4) من صفحة embed نصية */
async function extractAninekoAllHls(
  embedUrl: string, seriesSlug: string,
): Promise<Array<{ quality: string; rank: number; url: string }>> {
  // direct fetch — anineko.to does not block VPS IP (Orkestr account closed 2026-07)
  let html = await fetch(embedUrl, {
    headers: { "User-Agent": BROWSER_UA, Referer: `${ANINEKO_BASE}/watch/${seriesSlug}`, Accept: "text/html,*/*;q=0.9" },
    signal: AbortSignal.timeout(12_000),
  }).then(r => r.ok ? r.text() : "").catch(() => "");
  const unpacked = unpackPacked(html) ?? "";
  const embedDomain = (() => { try { return new URL(embedUrl).origin; } catch { return ""; } })();

  const results: Array<{ quality: string; rank: number; url: string }> = [];
  const isDeadVibeVibeUrl = (value: string) =>
    /\.vibevibe\.workers\.dev(?:\/|$)/i.test(value);

  if (unpacked) {
    const hlsKeys: Array<{ key: string; quality: string; rank: number }> = [
      { key: "hls4", quality: "1080p", rank: 11 },
      { key: "hls3", quality: "720p",  rank: 10 },
      { key: "hls2", quality: "480p",  rank: 9  },
      { key: "hls1", quality: "360p",  rank: 8  },
    ];
    for (const { key, quality, rank } of hlsKeys) {
      const m = unpacked.match(new RegExp(`"${key}"\\s*:\\s*["']([^"']+)["']`));
      if (!m) continue;
      const url = m[1].startsWith("/") ? `${embedDomain}${m[1]}` : m[1];
      if (url.startsWith("http")) {
        const normalized = url.replace(/&amp;/g, "&");
        if (!isDeadVibeVibeUrl(normalized)) results.push({ quality, rank, url: normalized });
      }
    }
  }

  if (!results.length) {
    const toSearch = unpacked || html;
    const patterns = [
      /const\s+src\s*=\s*["'](https?:\/\/[^"']+\.m3u8[^"']*)["']/i,
      /file\s*:\s*["'](https?:\/\/[^"']+\.m3u8[^"']*)["']/i,
      /["'](https?:\/\/[^"']+\/master\.m3u8[^"']*)["']/i,
      /["'](https?:\/\/[^"']+\.m3u8[^"']*)["']/i,
    ];
    for (const pattern of patterns) {
      const m = toSearch.match(pattern);
      if (m) {
        const normalized = m[1].replace(/&amp;/g, "&");
        if (!isDeadVibeVibeUrl(normalized)) results.push({ quality: "1080p", rank: 9, url: normalized });
        if (results.length) break;
      }
    }
  }

  return results;
}

const ANINEKO_DISABLED = false; // يعمل مباشرة من VPS IP — لا يحتاج Orkestr

async function getAninekoSources(
  title: string, english: string | null, ep: number, variants: string[] = [],
  availabilityOnly = false,
): Promise<UnifiedSource[]> {
  if (ANINEKO_DISABLED) return [];
  try {
    const slug = await findAninekoSlug(title, english, variants);
    if (!slug) return [];

    // direct fetch — anineko.to accessible directly from VPS (Orkestr account closed 2026-07)
    let epHtml = "";
    try {
      const rfr = await fetch(`${ANINEKO_BASE}/watch/${slug}/ep-${ep}`, {
        headers: { "User-Agent": BROWSER_UA, Referer: `${ANINEKO_BASE}/watch/${slug}`, Accept: "text/html,*/*;q=0.9", "Accept-Language": "ar,en;q=0.9" },
        signal: AbortSignal.timeout(15_000),
      });
      if (rfr.ok) epHtml = await rfr.text();
    } catch { /* ignore */ }
    if (!epHtml) return [];

    // استهدف الـ panel الخاص بـ sub مباشرة (class lang-group + data-id="sub")
    // ملاحظة: data-id="dub" يظهر أولاً في tab buttons قبل الـ panels، لذا لا نقسم عليه
    const subPanelMatch = epHtml.match(
      /<div\b[^>]*class=["'][^"']*lang-group[^"']*["'][^>]*data-id=["']sub["'][^>]*>([\s\S]*?)(?=<div\b[^>]*class=["'][^"']*lang-group|$)/i
    );
    const subSection = subPanelMatch?.[1] || epHtml;

    // استخرج data-video من قسم sub — كل قيمة تحتوي على embed URL + subtitle في query params
    const serverEntries: Array<{ embedUrl: string; rawSubUrl: string | null }> = [];
    for (const m of subSection.matchAll(/data-video=["']([^"']+)["']/gi)) {
      const rawVal = m[1].replace(/&amp;/g, "&").replace(/&#34;/g, '"');
      let embedUrl = rawVal;
      let rawSubUrl: string | null = null;
      try {
        const parsed = new URL(rawVal);
        // subtitle مُمرَّر في query params: ?sub= أو ?caption_1=
        const subParam = parsed.searchParams.get("sub") || parsed.searchParams.get("caption_1");
        if (subParam && subParam.startsWith("http")) {
          rawSubUrl = subParam;
          // نظّف الـ embed URL من params الترجمة
          parsed.searchParams.delete("sub");
          parsed.searchParams.delete("caption_1");
          parsed.searchParams.delete("sub_1");
          embedUrl = parsed.toString();
        }
      } catch {}
      serverEntries.push({ embedUrl, rawSubUrl });
    }
    if (!serverEntries.length) return [];

    /* ViviBebe currently redirects its first media request to an ad host
       (p16-ad-sg.ibyteimg.com), which makes HLS.js show a permanent black
       frame. Prefer the real media hosts first; keep ViviBebe only as a
       last-resort fallback when the episode has no other AN server. */
    const stableEntries = serverEntries.filter(e => !/vivibebe\.site/i.test(e.embedUrl));
    const rankedEntries = stableEntries.length ? stableEntries : serverEntries;

    // Availability mode ends at the episode page. Do not resolve an embed,
    // request a manifest, or build a playable proxy URL here.
    if (availabilityOnly) {
      return rankedEntries.slice(0, 8).map((entry, index) => ({
        name: `AniNeko · ${entry.embedUrl.includes("bibi") ? "BibiEmb" : `Server ${index + 1}`} · 1080p`,
        url: "",
        quality: "1080p",
        qualityRank: 13,
        site: "anineko",
        serverCount: 1,
        verified: true,
      } as UnifiedSource));
    }

    const sources: UnifiedSource[] = [];

    for (const entry of rankedEntries.slice(0, 4)) {
      const { embedUrl, rawSubUrl } = entry;
      let m3u8Url: string | null = null;
      let referer = ANINEKO_BASE + "/";
      let multiQualities: Array<{ quality: string; rank: number; url: string }> = [];

      // vibeplayer.site / vivibebe.site: نفس البنية — /public/stream/{token}/master.m3u8
      const vibeMatch = embedUrl.match(/^https?:\/\/((?:vibeplayer|vivibebe)\.site)\/([a-zA-Z0-9]{8,})/i);
      if (vibeMatch) {
        const vibeDomain = vibeMatch[1];  // vibeplayer.site أو vivibebe.site
        const vibeToken  = vibeMatch[2];
        m3u8Url = `https://${vibeDomain}/public/stream/${vibeToken}/master.m3u8`;
        referer  = `https://${vibeDomain}/${vibeToken}`;
        multiQualities = await parseM3u8Qualities(m3u8Url, referer);
      } else {
        // خوادم أخرى (OtakuHG / OtakuVid / playmogo): packed JS → hls1-hls4
        try { referer = new URL(embedUrl).origin + "/"; } catch {}
        multiQualities = await extractAninekoAllHls(embedUrl, slug);
        m3u8Url = multiQualities[0]?.url ?? null;
      }

      if (!m3u8Url && !multiQualities.length) continue;

      // الترجمة: proxy-text لتجاوز CDN → translate-vtt للعربية
      let subtitleUrl: string | undefined;
      if (rawSubUrl) {
        const proxySubUrl = `/api/anime/proxy-text?url=${encodeURIComponent(rawSubUrl)}&ref=${encodeURIComponent(ANINEKO_BASE + "/")}`;
        subtitleUrl = `/api/anime/translate-vtt?url=${encodeURIComponent(proxySubUrl)}&from=en&to=ar`;
      }

      const hostLabel = embedUrl.includes("bibi")      ? "BibiEmb"
                      : embedUrl.includes("vivibebe") ? "ViviBebe"
                      : embedUrl.includes("otakuhg")  ? "OtakuHG"
                      : embedUrl.includes("otakuvid") ? "OtakuVid"
                      : embedUrl.includes("playmogo") ? "PlayMogo"
                      : "VibePlayer";
      const sourceHeaders = (() => {
        try {
          return { Referer: referer, Origin: new URL(referer).origin };
        } catch {
          return { Referer: referer };
        }
      })();

      if (multiQualities.length > 0) {
        for (const q of multiQualities) {
          const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(q.url)}&ref=${encodeURIComponent(referer)}`;
          sources.push({
            name: `AniNeko · ${hostLabel} · ${q.quality} · ياباني مترجم`,
            url: q.url,
            quality: q.quality,
            qualityRank: q.rank,
            site: "anineko",
            directUrl: proxied,
            directType: "hls",
            subtitleUrl,
            // Keep the source identity available to Android if seg-proxy has
            // to redirect a blocked CDN request back to the device.
            headers: sourceHeaders,
          });
        }
      } else if (m3u8Url) {
        const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(m3u8Url)}&ref=${encodeURIComponent(referer)}`;
        sources.push({
          name: `AniNeko · ${hostLabel} · ياباني مترجم`,
          url: m3u8Url,
          quality: "1080p",
          qualityRank: 9,
          site: "anineko",
          directUrl: proxied,
          directType: "hls",
          subtitleUrl,
          headers: sourceHeaders,
        });
      }

      if (sources.length >= 8) break;
    }
    return sources;
  } catch { return []; }
}



// ════════════════════════════════════════════════════════════════════
//  ANIPUB — صوت مدبلج/مترجم (دوب/سب)  +  ترجمات عربية
//  API: anipub.xyz (مفتوح بلا CF)  →  Player: megaplay.buzz/stream/getSourcesNew
//  CDN: nekostream.site M3U8 — يحتاج Referer: megaplay.buzz
//  السلسلة:
//    1. /api/search/:name  → Id
//    2. /v1/api/details/:id → link "src=https://www.anipub.xyz/video/:vid/:type"
//    3. megaplay.buzz/stream/s-2/:vid/:type → data-id
//    4. /stream/getSourcesNew?id=:dataId  (X-Requested-With: XMLHttpRequest)
//    5. sources.file = M3U8 url  |  tracks = [ara/eng VTT]
// ════════════════════════════════════════════════════════════════════
const ANIPUB_BASE = "https://anipub.xyz";

async function findAnipubAnimeId(title: string, english: string | null): Promise<number | null> {
  const queries = [title];
  if (english && english !== title) queries.push(english);

  for (const q of queries) {
    try {
      const r = await fetch(`${ANIPUB_BASE}/api/search/${encodeURIComponent(q)}`, {
        headers: { "User-Agent": BROWSER_UA, Accept: "application/json" },
        signal: AbortSignal.timeout(8_000),
      });
      if (!r.ok) continue;
      const results: Array<{ Name: string; Id: number; finder: string }> = await r.json();
      if (!results?.length) continue;
      const lq = q.toLowerCase();
      const match = results.find(x => x.Name.toLowerCase().includes(lq) || lq.includes(x.Name.toLowerCase().slice(0, 8)));
      const pick = match || results[0];
      if (pick?.Id) return pick.Id;
    } catch { /* ignore */ }
  }
  return null;
}

async function getAniPubSources(
  title: string, english: string | null, ep: number,
): Promise<UnifiedSource[]> {
  try {
    const animeId = await findAnipubAnimeId(title, english);
    if (!animeId) return [];

    const detR = await fetch(`${ANIPUB_BASE}/v1/api/details/${animeId}`, {
      headers: { "User-Agent": BROWSER_UA, Accept: "application/json" },
      signal: AbortSignal.timeout(8_000),
    });
    if (!detR.ok) return [];
    const det = await detR.json();
    const local = det?.local;
    if (!local) return [];

    // ep=1 → local.link  |  ep=2 → local.ep[0]  |  ep=3 → local.ep[1] ...
    const rawLink: string =
      ep === 1
        ? (local.link || "")
        : (local.ep?.[ep - 2]?.link || "");
    if (!rawLink) return [];

    const src = rawLink.replace(/^src=/, "");
    let megaUrl = "";
    let epType = "sub";

    // pattern 1: /video/:videoId/(sub|dub)
    const vidM = src.match(/anipub\.xyz\/video\/(\d+)\/(sub|dub)/i);
    // pattern 2: /play/:malId/:epNum/(sub|dub)
    const playM = src.match(/anipub\.xyz\/play\/(\d+)\/(\d+)\/(sub|dub)/i);
    // pattern 3: gogoanime.com.by embed → fetch page → extract megaplay iframe src
    const isGogo = /gogoanime\.com\.by/i.test(src);

    if (vidM) {
      epType = vidM[2];
      megaUrl = `${MEGAPLAY_BASE}/stream/s-2/${vidM[1]}/${epType}`;
    } else if (playM) {
      epType = playM[3];
      megaUrl = `${MEGAPLAY_BASE}/stream/mal/${playM[1]}/${playM[2]}/${epType}`;
    } else if (isGogo) {
      // gogoanime.com.by is a thin wrapper — its page contains an iframe pointing to megaplay
      const gogoR = await fetch(src, {
        headers: { "User-Agent": BROWSER_UA, Referer: `${ANIPUB_BASE}/`, Accept: "text/html,*/*" },
        signal: AbortSignal.timeout(10_000),
      });
      if (!gogoR.ok) return [];
      const gogoHtml = await gogoR.text();
      // Extract megaplay iframe src — e.g. megaplay.buzz/stream/s-2/22219/dub
      const iframeM = gogoHtml.match(/megaplay\.buzz\/stream\/s-2\/(\d+)\/(sub|dub)/i);
      if (!iframeM) return [];
      epType  = iframeM[2];
      megaUrl = `${MEGAPLAY_BASE}/stream/s-2/${iframeM[1]}/${epType}`;
    } else {
      return [];
    }

    // جلب صفحة megaplay لاستخراج data-id
    const pageR = await fetch(megaUrl, {
      headers: { "User-Agent": BROWSER_UA, Referer: `${ANIPUB_BASE}/`, Accept: "text/html,*/*" },
      signal: AbortSignal.timeout(10_000),
    });
    if (!pageR.ok) return [];
    const pageHtml = await pageR.text();
    const dataIdM = pageHtml.match(/data-id="(\d+)"/);
    if (!dataIdM) return [];
    const dataId = dataIdM[1];

    // getSourcesNew — يحتاج X-Requested-With: XMLHttpRequest
    const srcR = await fetch(
      `${MEGAPLAY_BASE}/stream/getSourcesNew?id=${dataId}&id=${dataId}`,
      {
        headers: {
          "User-Agent": BROWSER_UA,
          Referer: megaUrl,
          Accept: "application/json",
          "X-Requested-With": "XMLHttpRequest",
        },
        signal: AbortSignal.timeout(10_000),
      },
    );
    if (!srcR.ok) return [];
    const srcData = await srcR.json();

    const m3u8: string = srcData?.sources?.file || "";
    if (!m3u8.includes(".m3u8")) return [];

    // الترجمة — نُفضِّل العربي المباشر، وإلا نرجع الإنجليزي للمترجم تلقائياً عبر translate-vtt
    const tracks: Array<{ file: string; label: string }> = srcData?.tracks || [];
    const arTrack = tracks.find((t: any) =>
      (t.label || "").toLowerCase().includes("arabic") || (t.label || "").toLowerCase().includes("arab"),
    );
    const enTrack = tracks.find((t: any) =>
      (t.label || "").toLowerCase().includes("english") || (t.label || "").toLowerCase().includes("eng"),
    );
    // مدبلج: صوت عربي — لا حاجة لترجمة
    // مترجم: عربي مباشر إن وُجد، وإلا إنجليزي يُترجَم تلقائياً عبر translate-vtt
    const subtitleUrl: string | undefined =
      arTrack?.file ??
      (epType === "sub" && enTrack?.file ? enTrack.file : undefined);

    const referer = `${MEGAPLAY_BASE}/`;
    const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(m3u8)}&ref=${encodeURIComponent(referer)}`;
    const typeLabel = epType === "dub" ? "مدبلج" : "مترجم";

    return [{
      name: `AniPub · MegaPlay · ${typeLabel} · 1080p`,
      url: m3u8,
      quality: "1080p",
      qualityRank: 15,
      site: "anipub",
      directUrl: proxied,
      directType: "hls" as const,
      headers: { Referer: referer },
      ...(subtitleUrl ? { subtitleUrl } : {}),
    }];
  } catch {
    return [];
  }
}

// ════════════════════════════════════════════════════════════════════
//  ANIMEPAHE (via Miruro Kiwi) — صوت ياباني + ترجمة إنجليزية مدمجة
//  CDN: vault-*.owocdn.top / vault-*.uwucdn.top — AES-128 HLS — CORS open
//  Endpoint: mirurotvapi.vercel.app/api/watch/kiwi/{anilistId}/sub/animepahe-{ep}
// ════════════════════════════════════════════════════════════════════
const ANIMEPAHE_KIWI_BASE = "https://mirurotvapi.vercel.app";

async function getAnimePaheSources(
  _title: string, _english: string | null, ep: number, anilistId?: number,
): Promise<UnifiedSource[]> {
  if (!anilistId) return [];
  try {
    const r = await fetch(
      `${ANIMEPAHE_KIWI_BASE}/api/watch/kiwi/${anilistId}/sub/animepahe-${ep}`,
      { signal: AbortSignal.timeout(18000) },
    );
    if (!r.ok) return [];
    const data = await r.json() as {
      success: boolean;
      results?: {
        streams?: Array<{
          url: string; type: string; quality: string;
          isActive: boolean; referer?: string; fansub?: string;
        }>;
      };
    };
    if (!data.success || !data.results?.streams?.length) return [];

    const sources: UnifiedSource[] = [];
    const qualityRankMap: Record<string, number> = { "1080p": 18, "720p": 17, "480p": 16, "360p": 15 };

    for (const stream of data.results.streams) {
      if (stream.type !== "hls") continue;
      if (!stream.isActive) continue;
      const isOwoCdn = stream.url.includes("owocdn.top") || stream.url.includes("uwucdn.top");
      if (!isOwoCdn) continue;

      const referer  = stream.referer || "https://kwik.cx/";
      const proxied  = `/api/anime/hls-proxy?url=${encodeURIComponent(stream.url)}&ref=${encodeURIComponent(referer)}`;
      const qRank    = qualityRankMap[stream.quality] ?? 9;
      const fansub   = stream.fansub ? ` · ${stream.fansub}` : "";

      sources.push({
        name: `AnimePahe · ${stream.quality}${fansub} · ياباني مترجم`,
        url:         stream.url,
        quality:     stream.quality,
        qualityRank: qRank,
        site:        "animepahe",
        directUrl:   proxied,
        directType:  "hls",
      });
    }
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  ANIMEKAI — anikai.cc direct scraper (zangetsu approach, 2026-07)
//  Search : GET /browser?keyword=<kw>        (.aitem card grid via CF bypass)
//  Detail : GET /watch/<slug>                 (full episode list inline)
//  Episode: GET /watch/<slug>/ep-<N>          (server-items lang-groups)
//  Embeds : bibiemb.xyz / vibeplayer.site → `const src = "...m3u8"` (no decrypt)
//           megaup / 4spromax → enc-dec.app dec-mega (fallback)
// ════════════════════════════════════════════════════════════════════
const KAI_BASE     = "https://www3.anikai.cc";
const KAI_EMBED_UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:134.0) Gecko/20100101 Firefox/134.0";

// Python cf-proxy (curl_cffi) — يعمل دائماً على port 8000 بغض النظر عن CF_PROXY_PORT
const KAI_CFPY_BASE = "http://localhost:8000";

async function kaiGet(url: string, referer?: string, timeoutMs = 22000): Promise<string | null> {
  // anikai.cc — confirmed 2026-07: accessible without CF bypass via plain HTTP.
  // Priority: direct fetch → hopxProxy → Python cf-proxy
  const ref = referer || KAI_BASE + "/";

  // 0) Direct HTTP — fastest, works without any proxy (confirmed 2026-07)
  try {
    const r = await fetch(url, {
      headers: { "User-Agent": KAI_EMBED_UA, "Referer": ref, "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8" },
      signal: AbortSignal.timeout(Math.min(timeoutMs, 12000)),
    });
    if (r.ok) {
      const text = await r.text();
      if (text && !isCloudflareBlock(text) && text.length > 200) return text;
    }
  } catch { /* fall through to proxy methods */ }

  // 1) hopxProxyGet — properly extracts data.html from Hopx JSON response
  const hopx = await hopxProxyGet(url, ref, Math.min(timeoutMs, 20000)).catch(() => null);
  if (hopx && !isCloudflareBlock(hopx) && hopx.length > 200) return hopx;

  // 2) Fallback: Python cf-proxy at port 8000 (returns plain HTML — no JSON wrapper)
  try {
    const cfUrl = new URL(`${KAI_CFPY_BASE}/fetch`);
    cfUrl.searchParams.set("url", url);
    cfUrl.searchParams.set("ref", ref);
    cfUrl.searchParams.set("timeout", String(Math.floor(Math.min(timeoutMs, 15000) / 1000)));
    const r = await fetch(cfUrl.toString(), { signal: AbortSignal.timeout(Math.min(timeoutMs, 18000)) });
    if (r.ok) {
      const cfBlocked = r.headers.get("x-cf-blocked") === "1";
      if (!cfBlocked) {
        const text = await r.text();
        if (text && !isCloudflareBlock(text) && text.length > 200) return text;
      }
    }
  } catch { /* cf-proxy might be down */ }

  return null;
}

function kaiAttr(tag: string, attr: string): string {
  const m = tag.match(new RegExp(attr + '\\s*=\\s*"([^"]*)"', "i"));
  return m ? m[1] : "";
}

function kaiSlug(href: string): string {
  href = (href || "").split("#")[0].split("?")[0].replace(/^https?:\/\/[^/]+/i, "");
  const m = href.match(/\/watch\/([a-z0-9][a-z0-9-]*)/i);
  return m ? "watch/" + m[1] : "";
}

function kaiParseCards(html: string): Array<{ id: string; title: string; altTitles: string[] }> {
  const out: Array<{ id: string; title: string; altTitles: string[] }> = [];
  const seen = new Set<string>();
  const parts = html.split(/<div[^>]*class="[^"]*\baitem\b/i);
  for (let i = 1; i < parts.length; i++) {
    const block = '<div class="aitem' + parts[i].slice(0, 2600);
    const posterM = block.match(/<a[^>]+class="[^"]*\bposter\b[^"]*"[^>]*href="([^"]+)"/i)
                 || block.match(/href="([^"]+)"[^>]*class="[^"]*\bposter\b/i);
    let href = posterM ? posterM[1] : "";
    if (!href) { const am = block.match(/href="(\/watch\/[^"]+)"/i); href = am ? am[1] : ""; }
    const slug = kaiSlug(href);
    if (!slug || seen.has(slug)) continue;
    seen.add(slug);
    const titleTag = (block.match(/<a[^>]+class="[^"]*\btitle\b[^"]*"[^>]*>/i) || [])[0] || "";
    // CoorenLabs insight: cards expose data-en (English), data-jp (Japanese), data-ar (Arabic)
    let title = kaiAttr(titleTag, "data-en") || kaiAttr(titleTag, "title") || "";
    const altTitles: string[] = [];
    const jpTitle = kaiAttr(titleTag, "data-jp");
    const arTitle = kaiAttr(titleTag, "data-ar");
    if (jpTitle) altTitles.push(jpTitle);
    if (arTitle) altTitles.push(arTitle);
    if (!title) {
      const inner = block.match(/<a[^>]+class="[^"]*\btitle\b[^"]*"[^>]*>([\s\S]*?)<\/a>/i);
      title = inner ? inner[1].replace(/<[^>]+>/g, "").trim() : "Untitled";
    }
    out.push({ id: slug, title, altTitles });
  }
  return out;
}

function kaiParseEpisodes(html: string): Array<{ num: number }> {
  const eps: Array<{ num: number }> = [];
  const seen = new Set<number>();
  const re = /<a\b([^>]*\bhref="\/watch\/[^"]*\/ep-[0-9.]+"[^>]*)>/gi;
  let m: RegExpExecArray | null;
  while ((m = re.exec(html)) !== null) {
    const tag = "<a " + m[1] + ">";
    const numStr = kaiAttr(tag, "data-num");
    let num = parseFloat(numStr);
    if (isNaN(num)) {
      const hm = kaiAttr(tag, "href").match(/\/ep-([0-9.]+)/i);
      num = hm ? parseFloat(hm[1]) : NaN;
    }
    if (isNaN(num) || seen.has(num)) continue;
    seen.add(num);
    eps.push({ num });
  }
  eps.sort((a, b) => a.num - b.num);
  return eps;
}

interface KaiServer { lang: string; name: string; videoUrl: string; }

function kaiParseServers(html: string): KaiServer[] {
  const out: KaiServer[] = [];
  const groupRe = /<[a-z0-9]+[^>]*\bclass="[^"]*\bserver-items\b[^"]*"[^>]*\bdata-id="([^"]+)"[^>]*>/gi;
  const groups: Array<{ lang: string; start: number }> = [];
  let g: RegExpExecArray | null;
  while ((g = groupRe.exec(html)) !== null) {
    groups.push({ lang: g[1].toLowerCase(), start: g.index + g[0].length });
  }
  for (let i = 0; i < groups.length; i++) {
    const cur = groups[i];
    const end = i + 1 < groups.length ? groups[i + 1].start : html.length;
    const inner = html.slice(cur.start, end);
    const srvRe = /<(?:span|div|li|a)\b([^>]*\bdata-video="([^"]+)"[^>]*)>([\s\S]*?)<\/(?:span|div|li|a)>/gi;
    let s: RegExpExecArray | null;
    while ((s = srvRe.exec(inner)) !== null) {
      const attrs = s[1]; const videoUrl = s[2];
      if (!/\bserver(?:-video)?\b/.test(attrs)) continue;
      const name = s[3].replace(/<[^>]+>/g, "").trim() || "Server";
      out.push({ lang: cur.lang, name, videoUrl });
    }
  }
  return out;
}

function kaiHostRank(url: string): number {
  // Primary embed hosts for anikai.cc — plain `const src = "...m3u8"` pattern, no decrypt needed
  if (/vivibebe\.|bibiemb\.|vibeplayer\.|animeplayer\.|gogoplay\.|streamanim\.|otakuplayer\./i.test(url)) return 7;
  // Secondary reliable hosts with direct m3u8
  if (/kwik\.|kodik\.|playtaku\.|animefever\.|anplay\./i.test(url)) return 5;
  // megaup/4spromax — need enc-dec.app dec-mega
  if (/megaup|4spromax/i.test(url)) return 3;
  // otaku family
  if (/otakuhg|otakuvid/i.test(url)) return 2;
  return 1; // still try unknown hosts via plain embed
}

async function kaiResolvePlainEmbed(embedUrl: string): Promise<string | null> {
  try {
    const html = await fetch(embedUrl, {
      headers: { "User-Agent": KAI_EMBED_UA, "Referer": KAI_BASE + "/" },
      signal: AbortSignal.timeout(15000),
    }).then(r => r.ok ? r.text() : "").catch(() => "");
    return (
      html.match(/const\s+src\s*=\s*"([^"]+\.m3u8[^"]*)"/i) ||
      html.match(/(?:"file"|file)\s*:\s*"([^"]+\.m3u8[^"]*)"/i) ||
      html.match(/(https?:\/\/[^"'\s]+\.m3u8[^"'\s]*)/i)
    )?.[1] ?? null;
  } catch { return null; }
}

async function kaiResolveMegaup(embedUrl: string): Promise<string | null> {
  try {
    const html = await fetch(embedUrl, {
      headers: { "User-Agent": KAI_EMBED_UA, "Referer": KAI_BASE + "/" },
      signal: AbortSignal.timeout(12000),
    }).then(r => r.ok ? r.text() : "").catch(() => "");
    const mediaPath = html.match(/(?:file|src)\s*[=:]\s*["'](\/media\/[^"']+)["']/i)?.[1];
    if (!mediaPath) return null;
    const origin = new URL(embedUrl).origin;
    const mediaUrl = origin + mediaPath;
    const text = await cfProxyGet(mediaUrl, embedUrl, 10000).catch(() => null)
              || await hopxProxyGet(mediaUrl, embedUrl, 10000).catch(() => null);
    if (!text) return null;
    let encrypted: string | null = null;
    try { encrypted = JSON.parse(text)?.result ?? null; } catch {}
    if (!encrypted) return null;
    const decR = await fetch("https://enc-dec.app/api/dec-mega", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ text: encrypted, agent: KAI_EMBED_UA }),
      signal: AbortSignal.timeout(10000),
    }).catch(() => null);
    if (!decR?.ok) return null;
    const dec = await decR.json() as any;
    const result = dec?.result;
    return typeof result === "string" ? result : result?.url || result?.stream || null;
  } catch { return null; }
}

async function getAnimeKaiSources(
  title: string, english: string | null, ep: number, _anilistId?: number, availabilityOnly = false,
): Promise<UnifiedSource[]> {
  try {
    // 1. Search anikai.cc via CF bypass
    const q = english || title;
    const kw = encodeURIComponent(q).replace(/%20/g, "+");
    const searchHtml = await kaiGet(`${KAI_BASE}/browser?keyword=${kw}`);
    if (!searchHtml) return [];

    const cards = kaiParseCards(searchHtml);
    if (!cards.length) return [];

    // 2. Find best title match — check English title + Japanese/Arabic alt titles
    const scored = cards.map(c => {
      const scores = [
        similarity(q, c.title), asciiSimilarity(q, c.title),
        ...c.altTitles.map((t: string) => Math.max(similarity(q, t), asciiSimilarity(q, t))),
      ];
      return { ...c, score: Math.max(...scores) };
    }).sort((a, b) => b.score - a.score);
    const best = scored[0];
    if (!best || best.score < 0.35) return [];

    // 3. Get watch page → full episode list
    const watchUrl = `${KAI_BASE}/${best.id}`;
    const watchHtml = await kaiGet(watchUrl);
    if (!watchHtml) return [];

    const eps = kaiParseEpisodes(watchHtml);
    const epObj = eps.find(e => Math.round(e.num) === ep) || eps.find(e => Math.abs(e.num - ep) < 0.6);
    if (!epObj) return [];

    // 4. Fetch episode page → server-items groups
    const epPageUrl = `${KAI_BASE}/${best.id}/ep-${epObj.num}`;
    const epHtml = await kaiGet(epPageUrl, watchUrl);
    if (!epHtml) return [];

    const servers = kaiParseServers(epHtml);
    if (!servers.length) return [];

    // 5. Filter: sub + softsub فقط — بدون hsub (ترجمة مدمجة مشفوعة في الفيديو)
    //    dub: نقبله فقط إذا لم يوجد sub/softsub ولكن نضعه بأدنى أولوية
    const subPool   = servers.filter(s => s.lang === "sub" || s.lang === "softsub");
    const dubPool   = servers.filter(s => s.lang === "dub");
    // hsub كـ fallback أخير عند غياب sub/softsub/dub — أفضل من لا شيء
    const hsubPool  = servers.filter(s => s.lang === "hsub");
    let pool = subPool.length ? subPool : dubPool.length ? dubPool : hsubPool;
    if (!pool.length) return [];
    pool.sort((a, b) => kaiHostRank(b.videoUrl) - kaiHostRank(a.videoUrl));

    // Availability mode only confirms that the episode has a subtitle server.
    // No embed page or HLS manifest is fetched in this path.
    if (availabilityOnly) {
      const first = pool[0];
      return first ? [{
        name: `AnimeKai · ${first.lang === "dub" ? "مدبلج" : "ياباني · ترجمة ناعمة"} · ${first.name}`,
        url: "",
        quality: "1080p",
        qualityRank: 18,
        site: "animekai",
        serverCount: pool.length,
        verified: true,
      } as UnifiedSource] : [];
    }

    const sources: UnifiedSource[] = [];
    const seenHlsQualities = new Set<string>();
    for (const srv of pool.slice(0, 8)) {
      try {
        let m3u8: string | null = null;
        if (/megaup|4spromax/i.test(srv.videoUrl)) {
          // megaup-style: encrypted /media/ path via enc-dec.app dec-mega
          m3u8 = await kaiResolveMegaup(srv.videoUrl);
        } else {
          // default: plain embed (const src = "...m3u8...") — works for vivibebe/bibiemb/vibeplayer/etc.
          m3u8 = await kaiResolvePlainEmbed(srv.videoUrl);
        }
        if (!m3u8) continue;
        const isHls = /\.m3u8(\?|$)/i.test(m3u8);
        const proxyUrl = isHls
          ? `/api/anime/hls-proxy?url=${encodeURIComponent(m3u8)}&ref=${encodeURIComponent(KAI_BASE + "/")}`
          : `/api/anime/video-proxy?url=${encodeURIComponent(m3u8)}&ref=${encodeURIComponent(KAI_BASE + "/")}`;
        // sub/softsub = صوت ياباني + ترجمة ناعمة (خارجية) — النوع المطلوب
        const langLabel = srv.lang === "dub" ? "مدبلج" : "ياباني · ترجمة ناعمة";
        const variants = isHls
          ? await probeHlsVariants(m3u8, `${KAI_BASE}/`)
          : [];
        const manifestQuality = isHls && !variants.length
          ? await probeHlsQuality(m3u8, `${KAI_BASE}/`)
          : { label: "Auto", rank: 0 };
        const playableVariants = variants.length
          ? variants
          : [{ url: m3u8, label: manifestQuality.rank > 0 ? manifestQuality.label : "Auto", rank: manifestQuality.rank }];
        for (const variant of playableVariants) {
          // Prefer the first working/highest-ranked server for each real HLS
          // quality. This keeps the picker stable while still exposing every
          // quality declared by the master playlist.
          if (isHls && seenHlsQualities.has(variant.label)) continue;
          if (isHls) seenHlsQualities.add(variant.label);
          const variantProxyUrl = isHls
            ? `/api/anime/hls-proxy?url=${encodeURIComponent(variant.url)}&ref=${encodeURIComponent(KAI_BASE + "/")}`
            : proxyUrl;
          sources.push({
            name: `AnimeKai · ${langLabel} · ${srv.name} · ${variant.label}`,
            url: variant.url, rawUrl: variant.url, quality: variant.label, qualityRank: variant.rank,
            site: "animekai", directUrl: variantProxyUrl,
            directType: isHls ? "hls" : "mp4",
            headers: { Referer: `${KAI_BASE}/`, Origin: KAI_BASE },
          });
        }
      } catch { continue; }
    }
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  ANIMEWITCHER — RE 2026-07-28: Firestore-direct + fresh Algolia
//  اكتشافات RE:
//    • Algolia credentials جديدة من Firestore /Settings/search_service
//      App: D8LH9I7ZL7 | Key: b56c01ef52540ef334bcdbaa00ded9e4
//    • Firestore anime_list مفتوح بدون auth (PERMISSION_DENIED سابقاً للمسار الخاطئ)
//    • objectID في Algolia = document ID في Firestore anime_list
//    • بنية episodes: anime_list/{id}/episodes/{pad3(num)} مثلاً "001"
//    • servers collection: /episodes/{epId}/servers أو /servers2/all_servers
//    • PD (Pixeldrain): pixeldrain.com/api/file/{id} مباشر 200 OK ✅
//    • KF (KrakenFiles): API token → direct CDN URL ✅
//    • لا حاجة لـ HF Space إطلاقاً — كل شيء عبر Firestore مباشرة
// ════════════════════════════════════════════════════════════════════
const AW_FS_BASE   = "https://firestore.googleapis.com/v1/projects/animewitcher-1c66d/databases/(default)/documents";

// Algolia — credentials حديثة من Firestore /Settings/search_service (آخر تحديث 2026-07-16)
const AW_ALGOLIA_APP   = "D8LH9I7ZL7";
const AW_ALGOLIA_KEY   = "b56c01ef52540ef334bcdbaa00ded9e4";
const AW_ALGOLIA_INDEX = "all_anime";
const AW_ALGOLIA_URL   = `https://${AW_ALGOLIA_APP.toLowerCase()}-dsn.algolia.net/1/indexes/${AW_ALGOLIA_INDEX}/query`;

/** helper: استخراج قيمة Firestore field */
function _awFv(v: any): any {
  if (!v) return "";
  if ("stringValue"  in v) return v.stringValue;
  if ("integerValue" in v) return parseInt(v.integerValue, 10);
  if ("booleanValue" in v) return v.booleanValue;
  if ("doubleValue"  in v) return parseFloat(v.doubleValue);
  if ("arrayValue"   in v) return (v.arrayValue.values || []).map(_awFv);
  if ("mapValue"     in v) {
    const out: Record<string, any> = {};
    for (const [k, vv] of Object.entries(v.mapValue.fields || {})) out[k] = _awFv(vv);
    return out;
  }
  return "";
}
function _awDoc(doc: any): Record<string, any> {
  const out: Record<string, any> = {};
  for (const [k, v] of Object.entries(doc.fields || {})) out[k] = _awFv(v as any);
  return out;
}

/** بحث Algolia — credentials D8LH9I7ZL7 تعمل مباشرة من VPS */
async function awAlgoliaSearch(query: string): Promise<any[]> {
  try {
    const res = await fetch(AW_ALGOLIA_URL, {
      method: "POST",
      headers: {
        "X-Algolia-Application-Id": AW_ALGOLIA_APP,
        "X-Algolia-API-Key":        AW_ALGOLIA_KEY,
        "Content-Type":             "application/json",
      },
      body: JSON.stringify({ query, hitsPerPage: 6, attributesToRetrieve: ["objectID","name","type","details"] }),
      signal: AbortSignal.timeout(10_000),
    });
    if (!res.ok) { console.warn("[AW] Algolia", res.status); return []; }
    const data = await res.json() as any;
    return data?.hits ?? [];
  } catch (e) {
    console.warn("[AW] Algolia err:", e);
    return [];
  }
}

/** جلب الحلقات مباشرة من Firestore (تجاوز HF Space كلياً) */
async function awFetchEpisodes(animeId: string): Promise<Array<{ id: string; num: number }>> {
  const eps: Array<{ id: string; num: number }> = [];
  let token: string | null = null;
  do {
    const url = `${AW_FS_BASE}/anime_list/${encodeURIComponent(animeId)}/episodes?pageSize=300`
      + (token ? `&pageToken=${token}` : "");
    try {
      const r = await fetch(url, { headers: BASE_HDRS, signal: AbortSignal.timeout(12_000) });
      if (!r.ok) break;
      const data = await r.json() as any;
      for (const doc of (data.documents || [])) {
        const epId = doc.name.split("/").pop()!;
        const f    = _awDoc(doc);
        const name = String(f.name || f.nameFull || epId);
        const m    = name.match(/(\d+(?:\.\d+)?)/);
        eps.push({ id: epId, num: m ? parseFloat(m[1]) : 0 });
      }
      token = data.nextPageToken || null;
    } catch { break; }
  } while (token);
  eps.sort((a, b) => a.num - b.num);
  return eps;
}

/**
 * Fast path: يبني episode ID مباشرة بدون جلب قائمة الحلقات كلها.
 * نمط AnimeWitcher: pad3 أو pad4 أو رقم عادي (مثلاً ep1→"001", ep10→"010", ep100→"100")
 * يجرب المرشحين بالتوازي — أول رد ناجح يُرجعه.
 */
async function awDirectEpId(animeId: string, ep: number): Promise<string | null> {
  const n = Math.round(ep);
  const candidates = [
    String(n).padStart(3, "0"),   // "001", "010", "100", "1000"
    String(n).padStart(4, "0"),   // "0001" (بعض الأنمي يستخدم 4 أرقام)
    String(n),                    // "1" بدون padding
  ];
  // احذف المكرر (مثلاً ep=100 → "100" يظهر مرتين)
  const unique = [...new Set(candidates)];
  const base = `${AW_FS_BASE}/anime_list/${encodeURIComponent(animeId)}/episodes`;

  const results = await Promise.allSettled(
    unique.map(id =>
      fetch(`${base}/${encodeURIComponent(id)}`, {
        headers: BASE_HDRS,
        signal: AbortSignal.timeout(6_000),
      }).then(r => r.ok ? id : null).catch(() => null)
    )
  );

  for (const r of results) {
    if (r.status === "fulfilled" && r.value) return r.value;
  }
  return null;
}

/** جلب servers من Firestore — يجرب collection ثم document-fallback */
async function awFetchServers(animeId: string, epId: string): Promise<Array<{name:string;url:string;quality:string;visible:boolean}>> {
  const base = `${AW_FS_BASE}/anime_list/${encodeURIComponent(animeId)}/episodes/${encodeURIComponent(epId)}`;

  // 1. collection /servers
  try {
    const r = await fetch(`${base}/servers?pageSize=30`, { headers: BASE_HDRS, signal: AbortSignal.timeout(12_000) });
    if (r.ok) {
      const data = await r.json() as any;
      const docs = (data.documents || []) as any[];
      if (docs.length) {
        return docs.map(doc => {
          const f = _awDoc(doc);
          const url = String(f.link || f.url || f.imageUrl || f.server || "");
          return { name: String(f.serverName || f.name || ""), url, quality: String(f.quality || "720p"), visible: f.visible !== false };
        }).filter(s => s.url && s.visible);
      }
    }
  } catch {}

  // 2. document /servers2/all_servers
  try {
    const r = await fetch(`${base}/servers2/all_servers`, { headers: BASE_HDRS, signal: AbortSignal.timeout(12_000) });
    if (r.ok) {
      const data = await r.json() as any;
      const f = _awDoc(data);
      const servers = Array.isArray(f.servers) ? f.servers : [];
      return servers.map((s: any) => ({
        name: String(s.serverName || s.name || ""),
        url: String(s.link || s.url || s.imageUrl || ""),
        quality: String(s.quality || "720p"),
        visible: true,
      })).filter((s: any) => s.url);
    }
  } catch {}

  return [];
}

/** Resolve Pixeldrain ID مباشرة — بدون proxy (200 OK مؤكد من VPS) */
function awResolvePd(pageUrl: string): string | null {
  const m = pageUrl.match(/pixeldrain\.com\/(?:u|l)\/([A-Za-z0-9_-]+)/);
  if (!m) return null;
  return `https://pixeldrain.com/api/file/${m[1]}`;
}

/** Resolve KrakenFiles — HTML scraping (API blocked by CF from datacenter IPs) */
async function awResolveKf(pageUrl: string): Promise<string | null> {
  const m = pageUrl.match(/krakenfiles\.com\/view\/([A-Za-z0-9_-]+)/);
  if (!m) return null;
  const fileId = m[1];
  const KF_HDRS = {
    ...BASE_HDRS,
    "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
    "Accept-Language": "en-US,en;q=0.9",
    "Referer": "https://krakenfiles.com/",
    "Origin": "https://krakenfiles.com",
  };

  // 1. جلب صفحة الملف
  let html = "";
  try {
    const r = await fetch(`https://krakenfiles.com/view/${fileId}/file.html`, {
      headers: KF_HDRS, signal: AbortSignal.timeout(12_000),
    });
    if (r.ok) html = await r.text();
  } catch {}

  if (html && !html.includes("File not found")) {
    // 1a. CDN URL مباشر في الـ JS
    const cdnRe = /(https?:\/\/[^\s"'`<>\\]*krakencloud\.net\/[^\s"'`<>\\]+\.(?:mp4|mkv|webm|avi)[^\s"'`<>\\]*)/i;
    const cdnM  = html.match(cdnRe);
    if (cdnM?.[1]) return cdnM[1];

    // 1b. استخراج _token + hash من الـ form ثم POST
    const tokenVal = html.match(/name=["']_token["'][^>]*value=["']([^"']+)["']/i)?.[1]
                  || html.match(/name=["']token["'][^>]*value=["']([^"']+)["']/i)?.[1];
    const hashVal  = html.match(/name=["']hash["'][^>]*value=["']([^"']+)["']/i)?.[1];
    if (tokenVal) {
      try {
        const body = `_token=${encodeURIComponent(tokenVal)}`
                   + (hashVal ? `&hash=${encodeURIComponent(hashVal)}` : "");
        const fr = await fetch(`https://krakenfiles.com/download/${fileId}`, {
          method: "POST",
          headers: { ...KF_HDRS, "Content-Type": "application/x-www-form-urlencoded" },
          body,
          redirect: "manual",
          signal: AbortSignal.timeout(12_000),
        });
        const loc = fr.headers.get("location") || fr.headers.get("Location") || "";
        if (loc && (loc.includes("krakencloud") || loc.includes(".mp4"))) return loc;
        if (fr.ok) {
          const txt  = await fr.text();
          const jCDN = txt.match(/"url"\s*:\s*["']([^"']+krakencloud[^"']+)["']/i)?.[1];
          if (jCDN) return jCDN;
        }
      } catch {}
    }
  }

  // 2. fallback — token API (يعمل أحياناً بدون CF block)
  try {
    const r = await fetch(
      `https://krakenfiles.com/api/master/file/${fileId}/download/token?website=1`,
      {
        method: "POST",
        headers: { ...BASE_HDRS, "Content-Type": "application/json", "Referer": `https://krakenfiles.com/view/${fileId}/file.html`, "Origin": "https://krakenfiles.com" },
        signal: AbortSignal.timeout(8_000),
      },
    );
    if (r.ok) {
      const data = await r.json() as any;
      const token = data?.data?.token || data?.token;
      if (token) return `https://krakenfiles.com/api/master/file/${fileId}/download?token=${token}`;
    }
  } catch {}

  return null;
}

/** جلب episode doc كاملاً للحصول على bunny_video_id + bunny_library_id */
async function awFetchEpDoc(animeId: string, epId: string): Promise<Record<string, any>> {
  try {
    const r = await fetch(
      `${AW_FS_BASE}/anime_list/${encodeURIComponent(animeId)}/episodes/${encodeURIComponent(epId)}`,
      { headers: BASE_HDRS, signal: AbortSignal.timeout(8_000) },
    );
    if (!r.ok) return {};
    const doc = await r.json() as any;
    return _awDoc(doc);
  } catch { return {}; }
}

// ════════════════════════════════════════════════════════════════════
//  AnimeWitcher DB helpers — aw_links table (142k pre-loaded links)
// ════════════════════════════════════════════════════════════════════

interface AwLinkRow {
  id?: number;
  anime_id: string;
  anime_name: string;
  anilist_id: number | null;
  ep_number: number;
  ep_id: string;
  server: string;
  quality: string;
  link: string;
  imported_at: string;
  verified_at?: string | null;
}

/** DB-first lookup: يبحث في aw_links بـ anilistId + ep_number — أسرع بـ ~10x من Algolia */
async function awDbLookup(anilistId: number, ep: number): Promise<AwLinkRow[]> {
  try {
    return await sbSelect<AwLinkRow>("aw_links", {
      "anilist_id": `eq.${anilistId}`,
      "ep_number":  `eq.${ep}`,
    }, { limit: 100 });
  } catch { return []; }
}

/** DB lookup بالعنوان (fallback إذا لم يكن anilistId متاحاً) */
async function awDbLookupByTitle(animeName: string, ep: number): Promise<AwLinkRow[]> {
  try {
    return await sbSelect<AwLinkRow>("aw_links", {
      "anime_id":  `ilike.${animeName}`,
      "ep_number": `eq.${ep}`,
    }, { limit: 100 });
  } catch { return []; }
}

/** حفظ روابط جديدة في aw_links (تحديث DB تلقائي بعد كل Algolia-hit) */
async function awDbSaveLinks(
  animeId: string,
  animeName: string,
  anilistId: number | undefined,
  ep: number,
  epId: string,
  servers: Array<{ name: string; url: string; quality: string }>,
  contentType: "anime" | "dubbed" = "anime",
): Promise<void> {
  try {
    for (const srv of servers) {
      if (!srv.url) continue;
      const srvName = srv.name.toUpperCase();
      if (!["PD","KF","MF","MF2","ST","VT"].includes(srvName)) continue;
      const row = {
        anime_id:    animeId,
        anime_name:  animeName,
        anilist_id:  anilistId ?? null,
        ep_number:   ep,
        ep_id:       epId,
        server:      srvName,
        quality:     srv.quality || "720p",
        link:        srv.url,
        imported_at: new Date().toISOString(),
        content_type: contentType,
      };
      /*
       * The logical key includes quality: the same server can expose several
       * quality tiers for one episode. Update that exact row when it exists,
       * otherwise insert it.
       */
      const existing = await sbSelect<{ id?: number }>("aw_links", {
        anime_id: `eq.${animeId}`,
        ep_id: `eq.${epId}`,
        server: `eq.${srvName}`,
        quality: `eq.${row.quality}`,
      }, { limit: 1, select: "id" });
      if (existing[0]?.id != null) {
        await sbPatch("aw_links", { id: `eq.${existing[0].id}` }, row);
      } else {
        await sbUpsert("aw_links", row);
      }

      if (contentType === "dubbed") {
        const dalRow = {
          series_id: animeId,
          series_name: animeName,
          series_name_ar: "",
          ep_number: ep,
          ep_id: epId,
          server: srvName,
          quality: srv.quality || "720p",
          link: srv.url,
          imported_at: new Date().toISOString(),
        };
        const dalExisting = await sbSelect<{ id?: number }>("dubbed_anim_links", {
          series_id: `eq.${animeId}`,
          ep_number: `eq.${ep}`,
          server: `eq.${srvName}`,
        }, { limit: 1, select: "id" });
        if (dalExisting[0]?.id != null) {
          await sbPatch("dubbed_anim_links", { id: `eq.${dalExisting[0].id}` }, dalRow);
        } else {
          await sbUpsert("dubbed_anim_links", dalRow, "series_id,ep_number,server");
        }
      }
    }
  } catch (e: any) {
    console.warn("[AW-DB] save error:", e?.message);
  }
}

async function awResolveHlsVariants(
  mediaUrl: string,
  referer: string,
): Promise<Array<{ url: string; label: string; rank: number }>> {
  const variants = await probeHlsVariants(mediaUrl, referer);
  if (variants.length) return variants;
  const quality = await probeHlsQuality(mediaUrl, referer);
  return [{ url: mediaUrl, label: quality.rank > 0 ? quality.label : "Auto", rank: quality.rank }];
}

/** بناء UnifiedSources من صفوف aw_links (بدون Algolia/Firestore) */
async function awBuildSourcesFromDb(rows: AwLinkRow[]): Promise<UnifiedSource[]> {
  const sources: UnifiedSource[] = [];
  /* AW can advertise the same resolved media URL in several quality/server
     rows. Keep one entry per provider + quality instead of collapsing the
     remaining picker qualities. */
  const seenUrls = new Set<string>();

  for (const row of rows) {
    const srvName = String(row.server || "").toUpperCase();
    const qText = `${row.quality || ""} ${row.server || ""} ${row.ep_id || ""} ${row.link || ""}`;
    const q      = normalizeAwQuality(qText);
    const qRank  = q === "1080p" ? 22 : q === "720p" ? 21 : q === "480p" ? 10 : 5;
    const qLabel = q === "1080p" ? "FHD 1080p" : q === "720p" ? "HD 720p" : q;
    const seenKey = (url: string) => `${srvName}|${q}|${url}`;

    if (srvName === "PD") {
      const direct = awResolvePd(row.link);
      if (!direct || seenUrls.has(seenKey(direct))) continue;
      seenUrls.add(seenKey(direct));
      sources.push({
        name: `AnimeWitcher · ${qLabel} · PD`,
        url: row.link, quality: q, qualityRank: qRank + 2,
        site: "animewitcher",
        directUrl: `/api/anime/video-proxy?url=${encodeURIComponent(direct)}&ref=${encodeURIComponent("https://pixeldrain.com/")}`,
        directType: "mp4",
      });
    } else if (srvName === "KF") {
      try {
        const kfDirect = await awResolveKf(row.link);
        if (kfDirect && !seenUrls.has(seenKey(kfDirect))) {
          seenUrls.add(seenKey(kfDirect));
          sources.push({
            name: `AnimeWitcher · ${qLabel} · KF`,
            url: row.link, quality: q, qualityRank: qRank + 1,
            site: "animewitcher",
            directUrl: `/api/anime/video-proxy?url=${encodeURIComponent(kfDirect)}&ref=${encodeURIComponent("https://krakenfiles.com/")}`,
            directType: "mp4",
            headers: { Referer: "https://krakenfiles.com/", Origin: "https://krakenfiles.com/" },
          });
        }
      } catch {}
    } else if (srvName === "MF" || srvName === "MF2") {
      try {
        const mfDirect = await extractMediafireDirect(row.link);
        if (mfDirect && !seenUrls.has(seenKey(mfDirect))) {
          seenUrls.add(seenKey(mfDirect));
          sources.push({
            name: `AnimeWitcher · ${qLabel} · ${srvName}`,
            url: row.link, quality: q, qualityRank: qRank + (srvName === "MF2" ? 1 : 0),
            site: "animewitcher",
            directUrl: `/api/anime/video-proxy?url=${encodeURIComponent(mfDirect)}&ref=${encodeURIComponent("https://www.mediafire.com/")}`,
            directType: "mp4",
          });
        }
      } catch {}
    } else if (srvName === "ST") {
      try {
        const stHtml = await fetch(row.link, {
          headers: { ...BASE_HDRS, Referer: "https://streamtape.com/" },
          signal: AbortSignal.timeout(8_000),
        }).then(r => r.ok ? r.text() : "").catch(() => "");
        const stResult = parseStreamtape(stHtml);
        if (stResult && !seenUrls.has(seenKey(stResult.url))) {
          seenUrls.add(seenKey(stResult.url));
          sources.push({
            name: `AnimeWitcher · ${qLabel} · ST`,
            url: row.link, quality: q, qualityRank: qRank,
            site: "animewitcher",
            directUrl: `/api/anime/video-proxy?url=${encodeURIComponent(stResult.url)}&ref=${encodeURIComponent("https://streamtape.com/")}`,
            directType: "mp4",
          });
        }
      } catch {}
    } else if (srvName === "VT") {
      try {
        const vtResult = await extractVideoDeep(row.link, row.link);
        if (vtResult && !seenUrls.has(seenKey(vtResult.url))) {
          seenUrls.add(seenKey(vtResult.url));
          if (vtResult.type === "hls") {
            const hlsVariants = await awResolveHlsVariants(vtResult.url, row.link);
            for (const variant of hlsVariants) {
              if (seenUrls.has(seenKey(variant.url))) continue;
              seenUrls.add(seenKey(variant.url));
              const directUrl = `/api/anime/hls-proxy?url=${encodeURIComponent(variant.url)}&ref=${encodeURIComponent(row.link)}`;
              sources.push({
                name: `AnimeWitcher · ${variant.label} · VT`,
                url: row.link, quality: variant.label, qualityRank: variant.rank,
                site: "animewitcher", directUrl, directType: "hls",
              });
            }
          } else {
            const directUrl = `/api/anime/video-proxy?url=${encodeURIComponent(vtResult.url)}&ref=${encodeURIComponent(row.link)}`;
            sources.push({
              name: `AnimeWitcher · ${qLabel} · VT`,
              url: row.link, quality: q, qualityRank: qRank,
              site: "animewitcher", directUrl, directType: "mp4",
            });
          }
        }
      } catch {}
    }
  }
  return sources;
}

async function getAnimeWitcherSources(
  title: string, english: string | null, ep: number, _anilistId?: number, variants: string[] = [],
  availabilityOnly = false,
): Promise<UnifiedSource[]> {
  try {
    // ── DB-first path: aw_links (142k pre-loaded) — أسرع بـ ~10x من Algolia ─
    if (_anilistId) {
      const dbRows = await awDbLookup(_anilistId, ep);
      if (dbRows.length) {
        console.log(`[AW] DB-hit: ${dbRows.length} rows for anilistId=${_anilistId} ep${ep}`);
        if (availabilityOnly) {
          /* Build the real rows even during availability. For VT master HLS,
             awBuildSourcesFromDb expands the actual 1080/720 variants; the old
             DB label-only path collapsed every new episode to one 720 row. */
          const dbSources = await awBuildSourcesFromDb(dbRows);
          const dbQualities = new Set(dbSources.map(source => normalizeAwQuality(
            `${source.quality || ""} ${source.name || ""}`,
          )));
          if (dbSources.length && dbQualities.size >= 2) {
            return dbSources.map(source => ({
              ...source,
              url: source.directUrl || source.url,
              name: source.name || `AnimeWitcher · ${source.quality || "720p"}`,
              verified: true,
            }));
          }
          console.log(`[AW] DB availability incomplete (${dbQualities.size} quality tiers) — refreshing Firestore`);
        }
        const dbSources = await awBuildSourcesFromDb(dbRows);
        const dbQualities = new Set(dbSources.map(source => normalizeAwQuality(
          `${source.quality || ""} ${source.name || ""}`,
        )));
        if (dbSources.length && dbQualities.size >= 2) {
          console.log(`[AW] ✅ DB-path: ${dbSources.length} sources`);
          return dbSources;
        }
        console.log(`[AW] DB playback incomplete (${dbQualities.size} quality tiers) — refreshing Firestore`);
      }
      /* Latest-episode cards can carry an AniList id that was resolved from a
         title while the imported AW rows still have a null/older id. Recheck
         the exact title before falling back to the slower Algolia path so all
         stored qualities for this episode remain visible. */
      const titleRows = await awDbLookupByTitle(title, ep);
      if (titleRows.length) {
        const titleSources = await awBuildSourcesFromDb(titleRows);
        const titleQualities = new Set(titleSources.map(source => normalizeAwQuality(
          `${source.quality || ""} ${source.name || ""}`,
        )));
        if (titleSources.length && titleQualities.size >= 2) return titleSources;
      }
    }
    // title fallback (بدون anilistId)
    if (!_anilistId) {
      const titleRows = await awDbLookupByTitle(title, ep);
      if (titleRows.length) {
        const titleSources = await awBuildSourcesFromDb(titleRows);
        const titleQualities = new Set(titleSources.map(source => normalizeAwQuality(
          `${source.quality || ""} ${source.name || ""}`,
        )));
        if (titleSources.length && titleQualities.size >= 2) return titleSources;
      }
    }

    // ── Algolia → Firestore fallback (DB miss) ──────────────────────────────
    // 1. بحث Algolia بـ credentials جديدة (D8LH9I7ZL7) — تعمل مباشرة من VPS
    let animeId: string | null = null;

    const queries = titleQueries(title, english, variants);
    for (const q of queries) {
      const hits = await awAlgoliaSearch(q);
      if (!hits.length) continue;

      let bestHit: any = null, bestScore = 0, bestIdScore = 0;
      for (const h of hits) {
        const hName    = String(h.name || "");
        const hObjId   = String(h.objectID || "");
        const engTitle = h.details?.english_title || "";
        const s = Math.max(
          similarity(hName, title),
          english ? similarity(hName, english) : 0,
          asciiSimilarity(q, hName),
          engTitle ? similarity(engTitle, title) : 0,
          english && engTitle ? similarity(engTitle, english) : 0,
        );
        // objectID tiebreaker: يُفضَّل الـ ID الأقرب للعنوان (يمنع "One Piece Live Action" من سرقة "One Piece")
        const idScore = Math.max(
          similarity(hObjId, title),
          english ? similarity(hObjId, english) : 0,
        );
        // نختار إذا كانت النتيجة أعلى، أو مساوية لكن idScore أفضل
        if (s > bestScore || (s === bestScore && idScore > bestIdScore)) {
          bestScore = s; bestIdScore = idScore; bestHit = h;
        }
      }
      if (!bestHit || bestScore < 0.35) continue;

      // objectID من Algolia = document ID في Firestore anime_list
      animeId = String(bestHit.objectID || "");
      console.log(`[AW] match: "${bestHit.name}" score=${bestScore.toFixed(2)} → id="${animeId}"`);
      break;
    }
    if (!animeId) return [];

    // 2. جلب episode ID — fast path أولاً (بناء مباشر)، ثم full scan fallback
    let epId: string | null = await awDirectEpId(animeId, ep);

    if (epId) {
      console.log(`[AW] ep${ep} → direct id="${epId}"`);
    } else {
      // fallback: جلب قائمة كاملة (بطيء لأنمي طويل مثل One Piece)
      console.log(`[AW] direct miss for ep${ep} — falling back to full scan`);
      const eps = await awFetchEpisodes(animeId);
      if (!eps.length) { console.warn(`[AW] no episodes for "${animeId}"`); return []; }
      const epObj = eps.find(e => Math.round(e.num) === ep)
        || eps.find(e => Math.abs(e.num - ep) < 0.6);
      if (!epObj) return [];
      epId = epObj.id;
      console.log(`[AW] ep${ep} → fallback scan id="${epId}"`);
    }

    // 3. جلب servers + episode doc بالتوازي
    const [rawServers, epDoc] = await Promise.all([
      awFetchServers(animeId, epId),
      awFetchEpDoc(animeId, epId),
    ]);
    if (!rawServers.length && !epDoc.bunny_video_id) return [];

    // Read every AW server row during availability. Returning one hard-coded
    // 720p row here hid 1080p/480p for new episodes not yet in aw_links.
    if (availabilityOnly) {
      const seenQuality = new Set<string>();
      const rows = rawServers.map(srv => {
        const quality = normalizeAwQuality(
          `${srv.quality || ""} ${srv.name || ""} ${srv.url || ""}`,
        );
        return {
          name: `AnimeWitcher · ${quality} · الحلقة موجودة`,
          url: "",
          quality,
          qualityRank: quality === "1080p" ? 22 : quality === "720p" ? 21 : quality === "480p" ? 10 : 5,
          site: "animewitcher",
          verified: true,
        } as UnifiedSource;
      }).filter(row => {
        if (seenQuality.has(row.quality!)) return false;
        seenQuality.add(row.quality!);
        return true;
      });
      if (rows.length) return rows;
      return [{
        name: "AnimeWitcher · 1080p · الحلقة موجودة",
        url: "",
        quality: "1080p",
        qualityRank: 22,
        site: "animewitcher",
        verified: true,
      }];
    }

    const sources: UnifiedSource[] = [];
    const seenUrls = new Set<string>();

    for (const srv of rawServers) {
      const srvName = srv.name.toUpperCase();
      const q       = String(srv.quality || "720p").replace(/p$/i, "p");
      const qRank   = q === "1080p" ? 22 : q === "720p" ? 21 : q === "480p" ? 10 : 5;
      const qLabel  = q === "1080p" ? "FHD 1080p" : q === "720p" ? "HD 720p" : q;

      if (srvName === "PD") {
        // Pixeldrain — مباشر من VPS (لا يحجب datacenter IPs) ✅
        const direct = awResolvePd(srv.url);
        if (!direct || seenUrls.has(direct)) continue;
        seenUrls.add(direct);
        sources.push({
          name: `AnimeWitcher · ${qLabel} · PD`,
          url: srv.url, quality: q, qualityRank: qRank + 2,
          site: "animewitcher",
          directUrl: `/api/anime/video-proxy?url=${encodeURIComponent(direct)}&ref=${encodeURIComponent("https://pixeldrain.com/")}`,
          directType: "mp4",
        });

      } else if (srvName === "KF") {
        // KrakenFiles — resolve عبر token API
        try {
          const kfDirect = await awResolveKf(srv.url);
          if (kfDirect && !seenUrls.has(kfDirect)) {
            seenUrls.add(kfDirect);
            sources.push({
              name: `AnimeWitcher · ${qLabel} · KF`,
              url: srv.url, quality: q, qualityRank: qRank + 1,
              site: "animewitcher",
              directUrl: `/api/anime/video-proxy?url=${encodeURIComponent(kfDirect)}&ref=${encodeURIComponent("https://krakenfiles.com/")}`,
              directType: "mp4",
              headers: { Referer: "https://krakenfiles.com/", Origin: "https://krakenfiles.com/" },
            });
          }
        } catch {}

      } else if (srvName === "MF" || srvName === "MF2") {
        // MediaFire — HTML scraping (MF = /file/, MF2 = /file_premium/)
        try {
          const mfDirect = await extractMediafireDirect(srv.url);
          if (mfDirect && !seenUrls.has(mfDirect)) {
            seenUrls.add(mfDirect);
            sources.push({
              name: `AnimeWitcher · ${qLabel} · ${srvName}`,
              url: srv.url, quality: q, qualityRank: qRank + (srvName === "MF2" ? 1 : 0),
              site: "animewitcher",
              directUrl: `/api/anime/video-proxy?url=${encodeURIComponent(mfDirect)}&ref=${encodeURIComponent("https://www.mediafire.com/")}`,
              directType: "mp4",
            });
          }
        } catch {}

      } else if (srvName === "ST") {
        // Streamtape
        try {
          const stHtml = await fetch(srv.url, {
            headers: { ...BASE_HDRS, Referer: "https://streamtape.com/" },
            signal: AbortSignal.timeout(8_000),
          }).then(r => r.ok ? r.text() : "").catch(() => "");
          const stResult = parseStreamtape(stHtml);
          if (stResult && !seenUrls.has(stResult.url)) {
            seenUrls.add(stResult.url);
            sources.push({
              name: `AnimeWitcher · ${qLabel} · ST`,
              url: srv.url, quality: q, qualityRank: qRank,
              site: "animewitcher",
              directUrl: `/api/anime/video-proxy?url=${encodeURIComponent(stResult.url)}&ref=${encodeURIComponent("https://streamtape.com/")}`,
              directType: "mp4",
            });
          }
        } catch {}

      } else if (srvName === "VT") {
        try {
          const vtResult = await extractVideoDeep(srv.url, srv.url);
          if (vtResult && !seenUrls.has(vtResult.url)) {
            seenUrls.add(vtResult.url);
            if (vtResult.type === "hls") {
              const hlsVariants = await awResolveHlsVariants(vtResult.url, srv.url);
              for (const variant of hlsVariants) {
                const directUrl = `/api/anime/hls-proxy?url=${encodeURIComponent(variant.url)}&ref=${encodeURIComponent(srv.url)}`;
                sources.push({
                  name: `AnimeWitcher · ${variant.label} · VT`,
                  url: srv.url, quality: variant.label, qualityRank: variant.rank,
                  site: "animewitcher", directUrl, directType: "hls",
                });
              }
            } else {
              const directUrl = `/api/anime/video-proxy?url=${encodeURIComponent(vtResult.url)}&ref=${encodeURIComponent(srv.url)}`;
              sources.push({
                name: `AnimeWitcher · ${qLabel} · VT`,
                url: srv.url, quality: q, qualityRank: qRank,
                site: "animewitcher", directUrl, directType: "mp4",
              });
            }
          }
        } catch {}
      }
    }

    // BUNNY: محذوف 2026-07-28 — vz-*.b-cdn.net "Domain suspended or not configured"

    console.log(`[AW] ✅ ${sources.length} sources for "${animeId}" ep${ep}`);

    // ── حفظ نتائج Algolia في DB تلقائياً (يُغني عن Algolia في المرة القادمة) ──
    if (sources.length && rawServers.length) {
      const animeName = animeId; // animeId = string title in AW
      awDbSaveLinks(animeId, animeName, _anilistId, ep, epId!, rawServers).catch(() => {});
    }

    return sources;
  } catch (e) {
    console.warn("[AW] getAnimeWitcherSources err:", e);
    return [];
  }
}



// ════════════════════════════════════════════════════════════════════
//  ANIMEHUB (123animehub.cc) — ياباني مترجم · HLS عبر echovideo.ru
//  Flow: /ajax/film/search?keyword= → slug →
//        /ajax/episode/info?epr={slug}/1/{ep} → target embed URL →
//        echovideo origin/hs/getSources?id= → HLS m3u8
// ════════════════════════════════════════════════════════════════════
const ANIMEHUB_BASE = "https://123animehub.cc";
const ANIMEHUB_UA   = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36";

async function getAnimeHubSources(
  title: string, english: string | null, ep: number
): Promise<UnifiedSource[]> {
  try {
    // 1. Build candidate keywords (English preferred, romaji fallback)
    const keywords: string[] = [];
    for (const t of [english, title].filter(Boolean) as string[]) {
      const clean = t.toLowerCase().replace(/[^a-z0-9\s]/g, " ").replace(/\s+/g, " ").trim();
      if (clean) keywords.push(clean);
      // First 2–3 words shortcut (helps when full title has season suffix)
      const words = clean.split(/\s+/).filter((w: string) => w.length > 1);
      if (words.length >= 2) {
        const short = words.slice(0, 3).join(" ");
        if (short !== clean) keywords.push(short);
      }
    }

    // Simple title similarity helper (lower-case word overlap ratio)
    function ahSimilarity(a: string, b: string): number {
      const tok = (s: string) => s.toLowerCase().replace(/[^a-z0-9]/g, " ").split(/\s+/).filter(Boolean);
      const ta = new Set(tok(a)); const tb = new Set(tok(b));
      if (!ta.size || !tb.size) return 0;
      let shared = 0; ta.forEach(w => { if (tb.has(w)) shared++; });
      return shared / Math.max(ta.size, tb.size);
    }

    // 2. Search for slug candidates — scored by title similarity, best first
    interface AHCandidate { slug: string; displayTitle: string; score: number; }
    let allCandidates: AHCandidate[] = [];
    for (const keyword of keywords) {
      try {
        const r = await fetch(
          `${ANIMEHUB_BASE}/ajax/film/search?keyword=${encodeURIComponent(keyword)}&_=${Date.now()}`,
          {
            headers: {
              "X-Requested-With": "XMLHttpRequest",
              "Referer": ANIMEHUB_BASE + "/",
              "Accept": "application/json",
              "User-Agent": ANIMEHUB_UA,
            },
            signal: AbortSignal.timeout(8_000),
          }
        );
        if (!r.ok) continue;
        const d: any = await r.json();
        const html: string = d?.html || d?.content || "";
        // Extract slug + display title from each result item
        const itemRe = /href="\/anime\/([^"?#]+)"[^>]*>([^<]+)</g;
        let m: RegExpExecArray | null;
        while ((m = itemRe.exec(html)) !== null) {
          const slug  = m[1].replace(/\/$/, "");
          const dTitle = m[2].trim();
          if (allCandidates.some(c => c.slug === slug)) continue;
          const bestScore = Math.max(
            ahSimilarity(dTitle, english || title),
            ahSimilarity(dTitle, title),
          );
          allCandidates.push({ slug, displayTitle: dTitle, score: bestScore });
        }
        if (allCandidates.length > 0) break;
      } catch { /* try next keyword */ }
    }
    if (!allCandidates.length) return [];

    // Sort by similarity descending — exact/best match first
    allCandidates.sort((a, b) => b.score - a.score);
    // Reject if best match score is too low — prevents fetching a completely wrong anime
    if (allCandidates[0].score < 0.35) return [];
    const slugCandidates = allCandidates.map(c => c.slug);

    // 3. Try each slug — fetch episode info and extract HLS
    for (const slug of slugCandidates.slice(0, 6)) {
      try {
        // The epr param is {slug}/{season}/{episode}; season is always 1 on animehub
        const epr = `${slug}/1/${ep}`;
        const epR = await fetch(
          `${ANIMEHUB_BASE}/ajax/episode/info?epr=${encodeURIComponent(epr)}&ts=1&_=${Date.now()}`,
          {
            headers: {
              "Referer": `${ANIMEHUB_BASE}/anime/${slug}`,
              "X-Requested-With": "XMLHttpRequest",
              "Accept": "application/json, text/javascript, */*; q=0.01",
              "User-Agent": ANIMEHUB_UA,
            },
            signal: AbortSignal.timeout(10_000),
          }
        );
        if (!epR.ok) continue;
        const epData: any = await epR.json();
        const embedUrl: string = epData?.target || epData?.link || epData?.url || "";
        if (!embedUrl || !embedUrl.startsWith("http")) continue;

        // 4. Identify embed ID and origin from the embed URL
        const embedMatch = embedUrl.match(/\/embed-[^/]*\/([A-Za-z0-9+/=_%-]+)$/);
        if (!embedMatch) continue;
        const encodedId = embedMatch[1];
        const embedOrigin = new URL(embedUrl).origin;

        // 5. Fetch embed page to get session cookie
        const embedR = await fetch(embedUrl, {
          headers: { "User-Agent": ANIMEHUB_UA, "Referer": `${ANIMEHUB_BASE}/` },
          signal: AbortSignal.timeout(10_000),
        });
        if (!embedR.ok) continue;
        const rawCookie = embedR.headers.get("set-cookie") || "";
        const cookie    = rawCookie ? rawCookie.split(";")[0].trim() : "";

        // 6. Call getSources API
        const srcR = await fetch(`${embedOrigin}/hs/getSources?id=${encodedId}`, {
          headers: {
            "Referer": embedUrl,
            "Accept": "*/*",
            "User-Agent": ANIMEHUB_UA,
            "X-Requested-With": "XMLHttpRequest",
            ...(cookie ? { "Cookie": cookie } : {}),
          },
          signal: AbortSignal.timeout(10_000),
        });
        if (!srcR.ok) continue;
        const srcData: any = await srcR.json();
        if (!srcData) continue;

        // 7. Extract HLS URL from response
        let hlsUrl: string | null = null;
        if (typeof srcData.sources === "string" && srcData.sources.startsWith("http")) {
          hlsUrl = srcData.sources;
        } else if (Array.isArray(srcData.sources) && srcData.sources.length > 0) {
          const first = srcData.sources[0];
          hlsUrl = first?.file || first?.src || first?.url || null;
        }
        if (!hlsUrl || !hlsUrl.startsWith("http")) continue;

        const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(hlsUrl)}&ref=${encodeURIComponent(embedOrigin + "/")}`;
        return [{
          name:        "AnimeHub · ياباني مترجم",
          url:         proxied,
          quality:     "1080p",
          qualityRank: 9,
          site:        "animehub",
          directUrl:   proxied,
          directType:  "hls",
        }];
      } catch { continue; }
    }
    return [];
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  ANIMEGG (www.animegg.org) — ياباني مترجم · MP4 مباشر عبر video-proxy
//  Flow (Anivexa): /search/?q= → /series/{slug} → anm_det_pop links
//        → data-toggle="tab" embed tabs → /embed/{id} → videoSources
// ════════════════════════════════════════════════════════════════════
const ANIMEGG_BASE = "https://www.animegg.org";

async function getAnimeGGSources(
  title: string, english: string | null, ep: number
): Promise<UnifiedSource[]> {
  try {
    const q = (english || title).replace(/[^\w\s]/g, " ").trim();

    // 1. Search (trailing slash required!) → /series/{slug} links
    const searchHtml = await cfGet(
      `${ANIMEGG_BASE}/search/?q=${encodeURIComponent(q)}`,
      { "Referer": ANIMEGG_BASE },
    );
    if (!searchHtml) return [];

    // Parse series from <a class="...mse..." href="/series/{slug}">
    const slugCandidates: { slug: string; text: string }[] = [];
    for (const m of searchHtml.matchAll(/<a\b[^>]*class=["'][^"']*\bmse\b[^"']*["'][^>]*>[\s\S]*?<\/a>/gi)) {
      const tag = m[0].match(/<a\b[^>]*>/i)?.[0] ?? "";
      const href = tag.match(/href=["']([^"']+)["']/i)?.[1] ?? "";
      const slug = href.match(/^\/series\/([^/?#]+)/)?.[1];
      if (!slug) continue;
      const strong = m[0].match(/<strong[^>]*>([\s\S]*?)<\/strong>/i)?.[1];
      slugCandidates.push({ slug, text: strong ? strong.replace(/<[^>]+>/g, "").trim() : slug.replace(/-/g, " ") });
    }
    // Fallback: any /series/ href
    if (!slugCandidates.length) {
      for (const m of searchHtml.matchAll(/href="(\/series\/[^"?#]+)"/gi)) {
        const slug = m[1].replace("/series/", "");
        if (!slug.includes("/page/") && !slugCandidates.find(c => c.slug === slug))
          slugCandidates.push({ slug, text: slug.replace(/-/g, " ") });
      }
    }
    if (!slugCandidates.length) return [];

    // 2. Best match by title similarity
    const scored = slugCandidates.slice(0, 8).map(c => ({
      slug: c.slug, score: similarity(q, c.text)
    })).sort((a, b) => b.score - a.score);
    if (!scored[0] || scored[0].score < 0.1) return [];
    const seriesSlug = scored[0].slug;

    // 3. Build episode URL directly: /{seriesSlug}-episode-{N}
    // AnimeGG series pages only show the latest ~15 episodes (pagination),
    // so we construct the URL directly instead of searching the series page.
    let epPath: string | null = `/${seriesSlug}-episode-${ep}`;

    // Verify the direct URL is a real episode page (not soft-404)
    const testHtml = await cfGet(
      `${ANIMEGG_BASE}${epPath}`,
      { "Referer": `${ANIMEGG_BASE}/series/${seriesSlug}` },
    );
    const hasTabs = testHtml && (
      testHtml.includes('data-version="subbed"') ||
      testHtml.includes("data-version='subbed'") ||
      testHtml.includes('data-version=&quot;subbed&quot;')
    );
    if (!hasTabs) {
      // Fallback: load series page and scan episode list (works for recent eps)
      const seriesHtml = await cfGet(
        `${ANIMEGG_BASE}/series/${seriesSlug}`,
        { "Referer": `${ANIMEGG_BASE}/search/?q=${encodeURIComponent(q)}` },
      );
      if (!seriesHtml) return [];
      epPath = null;
      for (const m of seriesHtml.matchAll(/<a\b[^>]*class=["'][^"']*anm_det_pop[^"']*["'][^>]*>([\s\S]*?)<\/a>/gi)) {
        const tag = m[0].match(/<a\b[^>]*>/i)?.[0] ?? "";
        const href = (tag.match(/href=["']([^"']+)["']/i)?.[1] ?? "").split("#")[0];
        const strong = (m[0].match(/<strong[^>]*>([\s\S]*?)<\/strong>/i)?.[1] ?? "").replace(/<[^>]+>/g, "").trim();
        const numM = strong.match(/\b(\d+)\s*$/);
        if (numM && parseInt(numM[1]) === ep && href) {
          epPath = href.startsWith("/") ? href : "/" + href;
          break;
        }
      }
      if (!epPath) return [];
    }

    // 4. Episode page → server tabs (data-toggle="tab" data-id data-version)
    const epUrl  = `${ANIMEGG_BASE}${epPath}`;
    // Reuse testHtml if it was fetched for the direct URL (same page); otherwise fetch now
    const epHtml = (hasTabs && testHtml) ? testHtml
      : await cfGet(epUrl, { "Referer": `${ANIMEGG_BASE}/series/${seriesSlug}` });
    if (!epHtml) return [];

    const tabs: { embedId: string; server: string }[] = [];
    for (const m of epHtml.matchAll(/<a\b[^>]*data-toggle=["']tab["'][^>]*>/gi)) {
      const tag = m[0];
      const getA = (n: string) => tag.match(new RegExp(`\\b${n}=["']([^"']*)["']`, "i"))?.[1] ?? "";
      const embedId = getA("data-id");
      const version = (getA("data-version") || "").toLowerCase();
      const server  = getA("data-mirror") || "AnimeGG";
      // Only keep subbed versions — skip any dubbed/dub/english-dub content
      if (!embedId) continue;
      if (version && !version.includes("sub")) continue;
      if (!tabs.find(t => t.embedId === embedId)) tabs.push({ embedId, server });
    }
    // No fallback: if no subbed tabs found, this episode has no subtitled version
    if (!tabs.length) return [];

    // 5. Fetch embed pages → videoSources[{file, label, bk}] + tracks[{file, label, kind}]
    const sources: UnifiedSource[] = [];
    for (const tab of tabs.slice(0, 3)) {
      const embedUrl  = `${ANIMEGG_BASE}/embed/${tab.embedId}`;
      const embedHtml = await cfGet(embedUrl, { "Referer": epUrl });
      if (!embedHtml) continue;

      const vsMatch = /var\s+videoSources\s*=\s*(\[[\s\S]*?\]);/.exec(embedHtml);
      if (!vsMatch) continue;

      /* Extract subtitle tracks: var tracks = [...] */
      let embedSubUrl: string | undefined;
      const tracksMatch = /var\s+tracks\s*=\s*(\[[\s\S]*?\]);/.exec(embedHtml);
      if (tracksMatch) {
        try {
          const tracksJson = tracksMatch[1]
            .replace(/([{,]\s*)([a-zA-Z_]\w*)\s*:/g, '$1"$2":')
            .replace(/:\s*'([^']*)'/g, ': "$1"');
          const tracks: Array<{ file?: string; label?: string; kind?: string }> = JSON.parse(tracksJson);
          /* Prefer explicit captions/subtitles kind; fallback to any non-thumbnail track */
          const subTrack =
            tracks.find(t => (t.kind === "captions" || t.kind === "subtitles") && t.file?.startsWith("http")) ||
            tracks.find(t => t.kind !== "thumbnails" && t.kind !== "chapters" && t.file?.startsWith("http"));
          if (subTrack?.file) {
            const rawProxy = `/api/anime/proxy-text?url=${encodeURIComponent(subTrack.file)}&ref=${encodeURIComponent(embedUrl)}`;
            embedSubUrl = `/api/anime/translate-vtt?url=${encodeURIComponent(rawProxy)}&from=en&to=ar`;
          }
        } catch { /* bad JSON */ }
      }

      try {
        const json = vsMatch[1]
          .replace(/([{,]\s*)([a-zA-Z_]\w*)\s*:/g, '$1"$2":')
          .replace(/:\s*'([^']*)'/g, ': "$1"');
        const arr: { file?: string; label?: string; bk?: string }[] = JSON.parse(json);
        for (const item of arr) {
          if (!item.file) continue;
          let finalUrl = item.file.startsWith("http") ? item.file : `${ANIMEGG_BASE}${item.file}`;
          // bk = backup embed URL (base64 of URL-encoded href) — it decodes to an embed page
          // (e.g. mp4upload.com/embed-*.html), NOT a direct video URL, so we do NOT use it
          // as finalUrl. The primary /play/N/video.mp4 URL works via video-proxy.
          const proxied = `/api/anime/video-proxy?url=${encodeURIComponent(finalUrl)}&ref=${encodeURIComponent(embedUrl)}`;
          const label   = item.label || "360p";
          const rank    = label.includes("1080") ? 10 : label.includes("720") ? 9 : 7;
          sources.push({
            name: `AnimeGG · ${tab.server} · ${label} · ياباني مترجم`,
            url: finalUrl, quality: label, qualityRank: rank,
            site: "animegg", directUrl: proxied, directType: "mp4",
            subtitleUrl: embedSubUrl,
          });
        }
      } catch { /* bad JSON */ }
    }
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  ALLMANGA (via AllAnime API — api.allanime.day)
//  صوت ياباني + ترجمة إنجليزية | AES-CTR + hex decode + AES-CBC
// ════════════════════════════════════════════════════════════════════
const ALLANIME_API   = "https://api.allanime.day";
const ALLANIME_REF   = "https://youtu-chan.com";   // allmanga.to → 400; youtu-chan.com → 200 ✅
const ALLANIME_UA    = "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:150.0) Gecko/20100101 Firefox/150.0";
const ALLANIME_PASS  = "Xot36i3lK3:v1";
const ALLANIME_EP_H  = "d405d0edd690624b66baba3068e0edc3ac90f1597d898a1ec8db4e5c43c00fec";

const ALLANIME_HEX: Record<string, string> = {
  "79":"A","7a":"B","7b":"C","7c":"D","7d":"E","7e":"F","7f":"G","70":"H","71":"I","72":"J",
  "73":"K","74":"L","75":"M","76":"N","77":"O","68":"P","69":"Q","6a":"R","6b":"S","6c":"T",
  "6d":"U","6e":"V","6f":"W","60":"X","61":"Y","62":"Z","59":"a","5a":"b","5b":"c","5c":"d",
  "5d":"e","5e":"f","5f":"g","50":"h","51":"i","52":"j","53":"k","54":"l","55":"m","56":"n",
  "57":"o","48":"p","49":"q","4a":"r","4b":"s","4c":"t","4d":"u","4e":"v","4f":"w","40":"x",
  "41":"y","42":"z","08":"0","09":"1","0a":"2","0b":"3","0c":"4","0d":"5","0e":"6","0f":"7",
  "00":"8","01":"9","15":"-","16":".","67":"_","46":"~","02":":","17":"/","07":"?","1b":"#",
  "63":"[","65":"]","78":"@","19":"!","1c":"$","1e":"&","10":"(","11":")","12":"*","13":"+",
  "14":",","03":";","05":"=","1d":"%",
};

let _aaKey: CryptoKey | null = null;
let _aaKeyGcm: CryptoKey | null = null;
async function getAllAnimeKey(): Promise<CryptoKey> {
  if (_aaKey) return _aaKey;
  const h = await crypto.subtle.digest("SHA-256", new TextEncoder().encode(ALLANIME_PASS));
  _aaKey = await crypto.subtle.importKey("raw", h, { name: "AES-CTR" }, false, ["decrypt"]);
  return _aaKey;
}
async function getAllAnimeKeyGcm(): Promise<CryptoKey> {
  if (_aaKeyGcm) return _aaKeyGcm;
  const h = await crypto.subtle.digest("SHA-256", new TextEncoder().encode(ALLANIME_PASS));
  _aaKeyGcm = await crypto.subtle.importKey("raw", h, { name: "AES-GCM" }, false, ["decrypt"]);
  return _aaKeyGcm;
}
async function aaDecryptB64(b64: string): Promise<string> {
  const buf = Uint8Array.from(atob(b64), c => c.charCodeAt(0));
  // محاولة AES-GCM أولاً (anipy-cli): iv=12 بايت، ciphertext+tag=باقي البيانات
  try {
    const iv = buf.slice(0, 12);
    const cipherAndTag = buf.slice(12); // SubtleCrypto يتوقع tag مُلحقة بنهاية ciphertext
    const keyGcm = await getAllAnimeKeyGcm();
    const plain = await crypto.subtle.decrypt({ name: "AES-GCM", iv }, keyGcm, cipherAndTag);
    return new TextDecoder().decode(plain);
  } catch { /* fallback → AES-CTR */ }
  // Fallback: AES-CTR (legacy format)
  const ctr = new Uint8Array(16); ctr.set(buf.slice(1, 13)); ctr[15] = 2;
  const key = await getAllAnimeKey();
  const ctLen = buf.length - 13 - 16;
  const plain = await crypto.subtle.decrypt({ name: "AES-CTR", counter: ctr, length: 32 }, key, buf.slice(13, 13 + ctLen));
  return new TextDecoder().decode(plain);
}
function aaHexDecode(hex: string): string {
  let out = "";
  for (let i = 0; i < hex.length; i += 2) out += ALLANIME_HEX[hex.substring(i, i+2).toLowerCase()] ?? hex.substring(i, i+2);
  return out;
}
async function aaUnsDec(hex: string): Promise<string> {
  const hexToU8 = (h: string) => { const b = new Uint8Array(h.length/2); for (let i=0;i<b.length;i++) b[i]=parseInt(h.slice(i*2,i*2+2),16); return b; };
  const k = await crypto.subtle.importKey("raw", new TextEncoder().encode("kiemtienmua911ca"), { name: "AES-CBC" }, false, ["decrypt"]);
  const p = await crypto.subtle.decrypt({ name: "AES-CBC", iv: new TextEncoder().encode("1234567890oiuytr") }, k, hexToU8(hex));
  return new TextDecoder().decode(p);
}
async function aaPost(gql: string, vars: object): Promise<any> {
  const r = await fetch(`${ALLANIME_API}/api`, {
    method: "POST",
    headers: { "User-Agent": ALLANIME_UA, "Referer": ALLANIME_REF, "Origin": ALLANIME_REF, "Content-Type": "application/json" },
    body: JSON.stringify({ variables: vars, query: gql }),
    signal: AbortSignal.timeout(12000),
  });
  if (!r.ok) throw new Error(`AllAnime POST ${r.status}`);
  const j = await r.json() as any;
  if (j?.data?.tobeparsed) j.data = JSON.parse(await aaDecryptB64(j.data.tobeparsed));
  return j.data;
}
async function aaGet(url: string): Promise<any> {
  const r = await fetch(url, { headers: { "User-Agent": ALLANIME_UA, "Referer": ALLANIME_REF, "Origin": ALLANIME_REF }, signal: AbortSignal.timeout(12000) });
  if (!r.ok) throw new Error(`AllAnime GET ${r.status}`);
  const j = await r.json() as any;
  if (j?.data?.tobeparsed) j.data = JSON.parse(await aaDecryptB64(j.data.tobeparsed));
  return j.data;
}

async function getAllMangaSources(
  title: string, english: string | null, ep: number, anilistId?: number,
): Promise<UnifiedSource[]> {
  try {
    const q = english || title;
    // 1. Search
    const sd = await aaPost(
      `query($search:SearchInput $limit:Int $page:Int $translationType:VaildTranslationTypeEnumType $countryOrigin:VaildCountryOriginEnumType){shows(search:$search limit:$limit page:$page translationType:$translationType countryOrigin:$countryOrigin){edges{_id name englishName nativeName availableEpisodes aniListId __typename}}}`,
      { search: { allowAdult: false, allowUnknown: false, query: q }, limit: 40, page: 1, translationType: "sub", countryOrigin: "ALL" }
    );
    const results: any[] = sd?.shows?.edges ?? [];
    if (!results.length) return [];

    // 2. Best match — AniList ID أولاً، ثم مطابقة الاسم
    const normQ = q.toLowerCase().replace(/[^\p{L}\p{N}]/gu, "");
    let best = results[0];
    for (const r of results) {
      if (anilistId && String(r.aniListId) === String(anilistId)) { best = r; break; }
      const names = [r.name, r.englishName].filter(Boolean).map((s: string) => s.toLowerCase().replace(/[^\p{L}\p{N}]/gu, ""));
      if (names.includes(normQ)) { best = r; break; }
    }

    // 3. Episode sources — API schema updated 2026-07: sourceUrls is now a scalar Object
    //    (no subfield selection allowed); variables must be non-nullable (String!).
    //    Response wraps result in tobeparsed AES-GCM at top-level data field.
    const EP_GQL = `query($showId:String! $translationType:VaildTranslationTypeEnumType! $episodeString:String!){episode(showId:$showId translationType:$translationType episodeString:$episodeString){sourceUrls}}`;
    const epRaw = await aaPost(EP_GQL, {
      showId: best._id,
      translationType: "sub",
      episodeString: String(ep),
    }).catch(() => null);

    // 4. استخراج sourceUrls — aaPost يفكّ تشفير tobeparsed تلقائياً على مستوى data
    //    بعد الفكّ، epRaw = {episode:{sourceUrls:[...]}} أو {episode:{sourceUrls: Object/string}}
    let srcUrls: any[] = [];
    if (epRaw?.episode?.sourceUrls) {
      const sv = epRaw.episode.sourceUrls;
      if (Array.isArray(sv)) {
        srcUrls = sv;
      } else if (typeof sv === "string") {
        try { srcUrls = JSON.parse(sv); } catch { srcUrls = []; }
      } else if (sv && typeof sv === "object") {
        // sourceUrls قد تكون Object بمفاتيح رقمية ({0:{...}, 1:{...}}) — حوّلها لمصفوفة
        srcUrls = Object.values(sv);
      }
    }
    if (!srcUrls.length) return [];

    // 5. معالجة المصادر بالأولوية:
    //    player/Yt-mp4 → MP4 مباشر من fast4speed (الأفضل) ← أولاً
    //    mp4upload     → embed scrape                    ← ثانياً
    //    clock.json    → 500 من VPS — تُتجاهل
    //    Ss-Hls        → streamsb ميت — تُتجاهل
    const sources: UnifiedSource[] = [];
    const HDRS = { "User-Agent": ALLANIME_UA, "Referer": ALLANIME_REF + "/" };

    // مرور أول: Yt-mp4 / player (مصدر مباشر — الأسرع والأوثق)
    // AllAnime "player" type → fast4speed CDN (MP4/HLS مباشر).
    // بعض الحلقات ترجع رابط صفحة HTML بدل ملف وسائط → نُصفِّي بـ domain/extension.
    for (const src of srcUrls) {
      if (src.type !== "player") continue;
      const url: string = src.sourceUrl ?? "";
      if (!url || !url.startsWith("http")) continue;
      // نقبل fast4speed CDN أو أي رابط يحتوي امتداد وسائط مباشر
      const isFast4Speed = url.includes("fast4speed") || url.includes("tools.fast4speed");
      const isDirectExt  = /\.(mp4|m3u8|webm|mkv)(\?|$)/i.test(url);
      if (!isFast4Speed && !isDirectExt) continue; // تجاهل embed pages (player.allanime.day وغيرها)
      const isHls = url.includes(".m3u8");
      sources.push({
        name: "AllAnime · ياباني مترجم",
        url,
        quality: src.resolutionStr || "auto",
        qualityRank: 12,  // رُفع من 9 (يُؤهله للـ auto-play في بعض الحالات)
        site: "allmanga",
        // لف MP4 في video-proxy مع ALLANIME_REF الصحيح لتفادي CORS وضمان Referer سليم
        directUrl: isHls
          ? `/api/anime/hls-proxy?url=${encodeURIComponent(url)}&ref=${encodeURIComponent(ALLANIME_REF + "/")}`
          : `/api/anime/video-proxy?url=${encodeURIComponent(url)}&ref=${encodeURIComponent(ALLANIME_REF + "/")}`,
        directType: isHls ? "hls" : "mp4",
      });
      if (sources.length >= 1) break; // مصدر واحد مباشر يكفي
    }

    // مرور ثانٍ: mp4upload إن لم يُوجد player
    if (sources.length < 2) {
      for (const src of srcUrls) {
        let url: string = src.sourceUrl ?? "";
        if (!url) continue;
        // hex decode للروابط المشفّرة
        if (url.startsWith("--")) {
          url = aaHexDecode(url.slice(2));
          // clock.json → يُعيد 500 من VPS → تخطَّ
          if (url.includes("/clock")) continue;
        }
        // clock.json URLs مباشرة → تخطَّ
        if (url.includes("clock.json") || url.includes("/apivtwo/clock")) continue;
        // Ss-Hls (streamsb) ميت → تخطَّ
        if ((src.sourceName ?? "").includes("Ss-Hls") || url.includes("streamsb")) continue;

        if (url.includes("mp4upload.com")) {
          try {
            const m = url.match(/embed-([a-zA-Z0-9]+)\.html/);
            if (!m) continue;
            const er = await fetch(`https://www.mp4upload.com/embed-${m[1]}.html`, {
              headers: HDRS, signal: AbortSignal.timeout(8000),
            });
            if (!er.ok) continue;
            const html = await er.text();
            const mp = html.match(/player\.src\s*\(\s*\{[^}]*\bsrc\s*:\s*"([^"]+)"/) ||
                       html.match(/"file"\s*:\s*"(https?:[^"]+\.mp4[^"]*)"/);
            const mp4Url = mp?.[1]?.replace(/\\/g, "");
            if (!mp4Url) continue;
            sources.push({
              name: "AllAnime · MP4Upload · ياباني مترجم",
              url: mp4Url, quality: "1080p", qualityRank: 7, site: "allmanga",
              directUrl: `/api/anime/video-proxy?url=${encodeURIComponent(mp4Url)}&ref=${encodeURIComponent("https://www.mp4upload.com/")}`,
              directType: "mp4",
            });
          } catch { /* skip */ }
        }
        if (sources.length >= 2) break;
      }
    }

    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  REANIME (reanime.to via FlixCloud) — صوت ياباني + ترجمة
//  Flow: api/flix/{anilistId}/{ep} → embed HTML → WASM+PBKDF2+AES-CBC decrypt → HLS
// ════════════════════════════════════════════════════════════════════
const REANIME_BASE = "https://reanime.to";
const REANIME_FLIX = "https://flixcloud.cc";
const REANIME_UA   = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36";
const REANIME_H    = { "User-Agent": REANIME_UA, "Accept": "application/json, */*" };

const re_enc = new TextEncoder();
const re_dec = new TextDecoder();

async function re_sha256hex(s: string): Promise<string> {
  const buf = await crypto.subtle.digest("SHA-256", re_enc.encode(s));
  return Array.from(new Uint8Array(buf)).map(b => b.toString(16).padStart(2, "0")).join("");
}
function re_b64toU8(b64: string): Uint8Array {
  const bin = atob(b64); const out = new Uint8Array(bin.length);
  for (let i = 0; i < bin.length; i++) out[i] = bin.charCodeAt(i);
  return out;
}
async function re_deriveFields(seed: string) {
  let e = seed;
  for (let i = 0; i < 3; i++) e = await re_sha256hex(e + i);
  let l = e;
  for (let i = 0; i < 3; i++) l = await re_sha256hex(l + i);
  return {
    keyField: "kf_" + e.substring(8, 16),
    ivField:  "ivf_" + e.substring(16, 24),
    containerName: "cd_" + e.substring(24, 32),
    arrayName:     "ad_" + e.substring(32, 40),
    objectName:    "od_" + e.substring(40, 48),
    tokenField:    e.substring(48, 64) + "_" + e.substring(56, 64),
    keyFrag2Field: l.substring(0, 16) + "_" + l.substring(16, 24),
  };
}
function re_extractSsrObj(html: string): string {
  const m = html.match(/\{type:"data",data:(\{)/);
  if (!m) throw new Error("SSR data block not found");
  let depth = 0;
  const start = html.indexOf("{", m.index! + m[0].length - 1);
  for (let i = start; i < html.length; i++) {
    if (html[i] === "{") depth++;
    else if (html[i] === "}") { if (--depth === 0) return html.slice(start, i + 1); }
  }
  throw new Error("SSR brace matching failed");
}
function re_parseJsLiteral(src: string): any {
  let i = 0;
  const ws = () => { while (i < src.length && /\s/.test(src[i])) i++; };
  function parseValue(): any {
    ws();
    if (src[i] === "{") return parseObject();
    if (src[i] === "[") return parseArray();
    if (src[i] === '"') return parseDStr();
    if (src[i] === "'") return parseSStr();
    if (src.startsWith("true", i))  { i += 4; return true; }
    if (src.startsWith("false", i)) { i += 5; return false; }
    if (src.startsWith("null", i))  { i += 4; return null; }
    if (src.startsWith("undefined", i)) { i += 9; return null; }
    if (src.startsWith("!0", i)) { i += 2; return true; }
    if (src.startsWith("!1", i)) { i += 2; return false; }
    const m = src.slice(i).match(/^-?[\d.]+([eE][+-]?\d+)?/);
    if (m) { i += m[0].length; return parseFloat(m[0]); }
    throw new Error(`JS parse error at ${i}: ${src.slice(i, i+20)}`);
  }
  function parseDStr(): string {
    let r = ""; i++;
    while (i < src.length && src[i] !== '"') {
      if (src[i] === "\\") { i++; const e: Record<string,string> = {n:"\n",t:"\t",r:"\r",'"':'"',"\\":"\\"}; r += e[src[i]] ?? src[i]; i++; }
      else r += src[i++];
    } i++; return r;
  }
  function parseSStr(): string {
    let r = ""; i++;
    while (i < src.length && src[i] !== "'") {
      if (src[i] === "\\") { i++; r += src[i] === "'" ? "'" : ({n:"\n",t:"\t",r:"\r","\\":"\\"}[src[i]] ?? src[i]); i++; }
      else r += src[i++];
    } i++; return r;
  }
  function parseKey(): string {
    ws();
    if (src[i] === '"') return parseDStr();
    if (src[i] === "'") return parseSStr();
    const m = src.slice(i).match(/^[a-zA-Z_$][a-zA-Z0-9_$]*/);
    if (m) { i += m[0].length; return m[0]; }
    throw new Error(`Bad key at ${i}: ${src.slice(i, i+20)}`);
  }
  function parseObject(): any {
    const obj: any = {}; i++; ws();
    while (i < src.length && src[i] !== "}") {
      if (src[i] === ",") { i++; ws(); continue; }
      const k = parseKey(); ws(); i++; obj[k] = parseValue(); ws();
    } i++; return obj;
  }
  function parseArray(): any[] {
    const arr: any[] = []; i++; ws();
    while (i < src.length && src[i] !== "]") {
      if (src[i] === ",") { i++; ws(); continue; }
      arr.push(parseValue()); ws();
    } i++; return arr;
  }
  return parseValue();
}
function re_parseWasm(wasm: Uint8Array): { step: number; transform: (b: number) => number } {
  const b = wasm; let pos = 8;
  while (pos < b.length) {
    const secId = b[pos++]; let sz = 0, sh = 0, by: number;
    do { by = b[pos++]; sz |= (by & 127) << sh; sh += 7; } while (by & 128);
    if (secId === 10) {
      pos++; let sbs = 0, sh2 = 0, by2: number;
      do { by2 = b[pos++]; sbs |= (by2 & 127) << sh2; sh2 += 7; } while (by2 & 128);
      pos += sbs; break;
    } pos += sz;
  }
  let rbs = 0, sh3 = 0, by3: number;
  do { by3 = b[pos++]; rbs |= (by3 & 127) << sh3; sh3 += 7; } while (by3 & 128);
  const r = b.slice(pos, pos + rbs);
  function leb(arr: Uint8Array, ii: number): [number, number] {
    let v = 0, s = 0, bx: number;
    do { bx = arr[ii++]; v |= (bx & 127) << s; s += 7; } while (bx & 128);
    return [v, ii];
  }
  const XOR_END = [32, 2, 32, 5, 106, 45, 0, 0, 115, 33, 6];
  let txStart = -1;
  outer: for (let ii = 0; ii < r.length - XOR_END.length; ii++) {
    for (let j = 0; j < XOR_END.length; j++) if (r[ii+j] !== XOR_END[j]) continue outer;
    txStart = ii + XOR_END.length; break;
  }
  if (txStart < 0) throw new Error("WASM: transform start not found");
  let txEnd = -1, step = 36;
  for (let ii = txStart; ii < r.length - 4; ii++) {
    if (r[ii] === 32 && r[ii+1] === 5 && r[ii+2] === 65) {
      const [val, ni] = leb(r, ii + 3);
      if (r[ni] === 108) { txEnd = ii; step = val; break; }
    }
  }
  if (txEnd < 0) throw new Error("WASM: keystream not found");
  const code = r.slice(txStart, txEnd);
  function transform(inputByte: number): number {
    let local6 = inputByte & 255; const stk: number[] = []; let ii = 0;
    while (ii < code.length) {
      const op = code[ii++];
      if (op === 32) { const [idx, ni] = leb(code, ii); ii = ni; stk.push(idx === 6 ? local6 : 0); }
      else if (op === 33) { const [idx, ni] = leb(code, ii); ii = ni; const v = stk.pop()!; if (idx === 6) local6 = v & 255; }
      else if (op === 65) { const [v, ni] = leb(code, ii); ii = ni; stk.push(v); }
      else if (op === 106) { const bv = stk.pop()!, a = stk.pop()!; stk.push((a + bv) & 255); }
      else if (op === 107) { const bv = stk.pop()!, a = stk.pop()!; stk.push((a - bv + 256) & 255); }
      else if (op === 113) { const bv = stk.pop()!, a = stk.pop()!; stk.push(a & bv & 255); }
      else if (op === 114) { const bv = stk.pop()!, a = stk.pop()!; stk.push((a | bv) & 255); }
      else if (op === 115) { const bv = stk.pop()!, a = stk.pop()!; stk.push((a ^ bv) & 255); }
      else if (op === 116) { const bv = stk.pop()!, a = stk.pop()!; stk.push((a << (bv & 7)) & 255); }
      else if (op === 118) { const bv = stk.pop()!, a = stk.pop()!; stk.push(a >>> (bv & 7) & 255); }
    }
    return local6;
  }
  return { step, transform };
}
async function re_runDecrypt(
  wasm: Uint8Array,
  frag1: Uint8Array,
  kf2: Uint8Array,
  T: Uint8Array,
  seedInt: number,
): Promise<{ decryptedKey: Uint8Array; manifestKey: Uint8Array }> {
  // The WASM module exposes both the video decryption key and the
  // manifest XOR key. The latter is required by fetch.flixcloud.cc HLS.
  const instantiated = await WebAssembly.instantiate(wasm, {});
  const instance = "instance" in instantiated ? instantiated.instance : instantiated;
  const wasmExports: any = instance.exports;
  const length = frag1.length;
  const fragmentPtr = 1000;
  const keyFragmentPtr = fragmentPtr + length;
  const tokenPtr = keyFragmentPtr + length;
  const outputPtr = tokenPtr + length;
  const requiredBytes = outputPtr + length;
  while (wasmExports.memory.buffer.byteLength < requiredBytes) wasmExports.memory.grow(1);
  const memory = new Uint8Array(wasmExports.memory.buffer);
  memory.set(frag1, fragmentPtr);
  memory.set(kf2, keyFragmentPtr);
  memory.set(T, tokenPtr);
  wasmExports._s(seedInt);
  wasmExports._r(fragmentPtr, keyFragmentPtr, tokenPtr, outputPtr, length);
  const decryptedKey = memory.slice(outputPtr, outputPtr + length);
  const manifestKeyPtr = wasmExports._c();
  const manifestKey = memory.slice(manifestKeyPtr, manifestKeyPtr + 32);
  return { decryptedKey, manifestKey };
}
async function re_decryptEmbed(html: string): Promise<{ url: string; subtitles: any[]; introChapter: any; outroChapter: any; manifestKey: string }> {
  const raw  = re_extractSsrObj(html);
  const data = re_parseJsLiteral(raw);
  const seed: string = data.obfuscation_seed;
  if (!seed) throw new Error("obfuscation_seed missing");
  const fields = await re_deriveFields(seed);
  const ocd = data.obfuscated_crypto_data;
  if (!ocd) throw new Error("obfuscated_crypto_data missing");
  const container = ocd[fields.containerName];
  if (!container) throw new Error(`containerName "${fields.containerName}" missing`);
  const arr = container[fields.arrayName];
  if (!arr) throw new Error(`arrayName "${fields.arrayName}" missing`);
  const obj = arr[0][fields.objectName];
  if (!obj) throw new Error(`objectName "${fields.objectName}" missing`);
  const frag1 = re_b64toU8(obj[fields.keyField]);
  const iv    = re_b64toU8(obj[fields.ivField]);
  const kf2raw: string = data[fields.keyFrag2Field];
  if (!kf2raw) throw new Error(`kf2 field "${fields.keyFrag2Field}" missing`);
  const kf2   = re_b64toU8(kf2raw);
  const token: string = data[fields.tokenField];
  if (!token) throw new Error(`tokenField "${fields.tokenField}" missing`);
  const tokUrl = `${REANIME_FLIX}/api/m3u8/${token}`;
  let tokData: any = await cfProxyGet(tokUrl, `${REANIME_BASE}/`, 8000).then(t => {
    if (!t) return null;
    try { return JSON.parse(t); } catch { return null; }
  }).catch(() => null);
  if (!tokData) {
    tokData = await fetch(tokUrl, {
      headers: { ...REANIME_H, "Referer": `${REANIME_BASE}/` },
      signal: AbortSignal.timeout(8000),
    }).then(r => { if (!r.ok) throw new Error(`Token API ${r.status}`); return r.json(); });
  }
  const vidKey  = (await re_sha256hex(token + "vid")).substring(0, 10);
  const keyKey  = (await re_sha256hex(token + "key")).substring(0, 10);
  const v_bytes = re_b64toU8(tokData[vidKey]);
  const T_bytes = re_b64toU8(tokData[keyKey]);
  if (!v_bytes.length || !T_bytes.length) throw new Error("Token fields missing");
  const seedInt  = parseInt(seed.substring(0, 8), 16);
  const wPayload = re_b64toU8(data.w_payload ?? "");
  if (!wPayload.length) throw new Error("w_payload missing");
  const { decryptedKey: wasmOut, manifestKey } = await re_runDecrypt(wPayload, frag1, kf2, T_bytes, seedInt);
  const keyMat   = await crypto.subtle.importKey("raw", Buffer.from(wasmOut), { name: "PBKDF2" }, false, ["deriveBits"]);
  const derivedBuf = await crypto.subtle.deriveBits(
    { name: "PBKDF2", salt: re_enc.encode(seed), iterations: 1000, hash: "SHA-256" }, keyMat, 256
  );
  const derived  = new Uint8Array(derivedBuf);
  for (let i = 0; i < 32; i++) derived[i] ^= seed.charCodeAt(i % seed.length);
  const aesKeyBytes = new Uint8Array(await crypto.subtle.digest("SHA-256", Buffer.from(derived)));
  const aesKey = await crypto.subtle.importKey("raw", Buffer.from(aesKeyBytes), { name: "AES-CBC" }, false, ["decrypt"]);
  const plain  = await crypto.subtle.decrypt({ name: "AES-CBC", iv: Buffer.from(iv) }, aesKey, Buffer.from(v_bytes));
  const url    = re_dec.decode(plain).trim().replace(/\0+$/, "");
  if (!url.startsWith("http")) throw new Error(`Unexpected decrypted value: ${url.substring(0, 60)}`);
  return {
    url,
    subtitles: data.subtitles ?? [],
    introChapter: data.intro_chapter ?? null,
    outroChapter: data.outro_chapter ?? null,
    manifestKey: Buffer.from(manifestKey).toString("base64"),
  };
}

const reanimeSrcCache = new Map<string, { sources: UnifiedSource[]; ts: number }>();
const REANIME_TTL = 30 * 60_000;

// [2026-07-06] أُعيد تفعيله: reanime.to/api/flix لم يعد يحجب Replit datacenter IPs (فُحص مباشرة).
// FlixCloud embed page لا يزال محميّاً بـ CF challenge بسيط → يُستخدم cfProxyGet (curl_cffi impersonation) بدلاً من fetch العادي.
const REANIME_DISABLED = true; // re-enabled 2026-07-20: reanime.to/api/flix works — softsub only
async function getReanímeSources(
  title: string, english: string | null, ep: number, anilistId?: number,
): Promise<UnifiedSource[]> {
  if (REANIME_DISABLED) return [];
  if (!anilistId) return [];
  const ck = `reanime:${anilistId}:${ep}`;
  const cached = reanimeSrcCache.get(ck);
  if (cached && Date.now() - cached.ts < REANIME_TTL) return cached.sources;
  try {
    // رانيمي يستخدم AniList ID مباشرة عبر endpoint مخصص
    const flixRes = await fetch(`${REANIME_BASE}/api/flix/${anilistId}/${ep}`, {
      headers: { ...REANIME_H, "Referer": `${REANIME_BASE}/` },
      signal: AbortSignal.timeout(10000),
    });
    if (!flixRes.ok) return [];
    const flixData: any = await flixRes.json();
    // flixData: { servers: [{serverName, dataType, dataLink, ...}] }
    const servers: any[] = flixData?.servers ?? flixData?.episode_links ?? [];
    const subServers = servers.filter((server: any) => {
      const kind = String(server.dataType || server.type || "").toLowerCase();
      return kind.includes("sub") && !kind.includes("dub");
    });
    const fallbackServers = servers.filter((server: any) => !subServers.includes(server));
    // HD-1 currently returns a CDN 403 for the media fragments on the VPS;
    // try HD-2 first because it uses the working StrongHole path. Keep the
    // other servers as fallbacks for episodes where the provider reverses it.
    const candidates = [...subServers, ...fallbackServers].sort((a: any, b: any) => {
      const av = String(a.dataLink || a.link || "").includes("?v=2") ? 1 : 0;
      const bv = String(b.dataLink || b.link || "").includes("?v=2") ? 1 : 0;
      return bv - av;
    });
    const triedEmbeds = new Set<string>();
    const collectedSources: UnifiedSource[] = [];

    // FlixCloud can return a dead 500 link before a working HD link.
    // Try every distinct server and keep the first page that decrypts.
    for (const server of candidates) {
      const embedUrl: string = server.dataLink || server.link || "";
      if (!embedUrl.startsWith("http") || triedEmbeds.has(embedUrl)) continue;
      triedEmbeds.add(embedUrl);

      try {
        // جلب صفحة الـ embed وفك تشفيرها — FlixCloud محمي بـ CF challenge بسيط،
        // يُستخدم cfProxyGet (curl_cffi impersonation) بدلاً من fetch العادي لتجاوزه.
        let embedHtml = await cfProxyGet(embedUrl, `${REANIME_BASE}/`, 12000) || "";
        if (!embedHtml) {
          embedHtml = await fetch(embedUrl, {
            headers: { "User-Agent": REANIME_UA, "Referer": `${REANIME_BASE}/` },
            signal: AbortSignal.timeout(12000),
          }).then(r => r.ok ? r.text() : "").catch(() => "");
        }
        if (!embedHtml) continue;

        const decrypted = await re_decryptEmbed(embedHtml);
        const m3u8Url = String(decrypted?.url || "").trim();
        const manifestKey = String(decrypted?.manifestKey || "").trim();
        if (!/^https?:\/\//i.test(m3u8Url)) continue;
        const subtitles = Array.isArray(decrypted?.subtitles) ? decrypted.subtitles : [];
        const introChapter = decrypted?.introChapter;
        const outroChapter = decrypted?.outroChapter;

        // subtitle: أول ترجمة إنجليزية متاحة → ترجم للعربية
        const subTrack = subtitles.find((s: any) =>
          (s.label || s.lang || "").toLowerCase().includes("eng") ||
          (s.label || s.lang || "").toLowerCase().includes("english")
        ) ?? subtitles[0];
        let subtitleUrl: string | undefined;
        if (subTrack?.file || subTrack?.url) {
          const rawVtt: string = subTrack.file || subTrack.url;
          const proxyVtt = `/api/anime/proxy-text?url=${encodeURIComponent(rawVtt)}&ref=${encodeURIComponent(embedUrl)}`;
          subtitleUrl = `/api/anime/translate-vtt?url=${encodeURIComponent(proxyVtt)}&from=en&to=ar`;
        }

        // intro/outro من embed (intro_chapter له start/end بالثواني)
        let skipIntro: { start: number; end: number } | undefined;
        let skipOutro: { start: number; end: number } | undefined;
        if (introChapter?.start !== undefined && introChapter?.end !== undefined) {
          skipIntro = { start: Number(introChapter.start), end: Number(introChapter.end) };
        }
        if (outroChapter?.start !== undefined && outroChapter?.end !== undefined) {
          skipOutro = { start: Number(outroChapter.start), end: Number(outroChapter.end) };
        }

        // أرسل عبر hls-proxy مع مفتاح فك تشفير manifest الخاص بـ FlixCloud.
        // يجب تشفير المفتاح حتى لا يتحول + في base64 إلى مسافة داخل query string.
        const manifestKeyParam = manifestKey
          ? `&mk=${encodeURIComponent(encryptParam(manifestKey))}`
          : "";
        const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(m3u8Url)}&ref=${encodeURIComponent(embedUrl)}${manifestKeyParam}`;
        const candidateSources: UnifiedSource[] = [{
          name: `Reanime · FlixCloud ${embedUrl.includes("?v=2") ? "HD-2" : "HD-1"} · ياباني مترجم`,
          url: m3u8Url, quality: "1080p", qualityRank: embedUrl.includes("?v=2") ? 14 : 6,
          site: "reanime",
          directUrl: proxied,
          directType: "hls",
          subtitleUrl,
          skipIntro,
          skipOutro,
        }];
        collectedSources.push(...candidateSources);
        continue;
      } catch (candidateError: any) {
        console.warn(`[reanime] server candidate failed: ${candidateError?.message ?? candidateError}`);
      }
    }
    if (collectedSources.length) reanimeSrcCache.set(ck, { sources: collectedSources, ts: Date.now() });
    return collectedSources;
  } catch (e: any) { console.error("[reanime] error:", e?.message ?? e); return []; }
}

// ════════════════════════════════════════════════════════════════════
//  ANIME-DAY.COM scraper  (Arabic dubbed anime — مدبلج)
//  APK API: GET /app/anime.php    → catalog (12 entries, Arabic+English names)
//           GET /app/servers.php  → all episode/server entries (474 entries)
//  Video:   FileLions → vidhidepro.com (packed JS → HLS via parseVidhidePro)
//           embedwish.com        → streamwish-family (parseStreamwish)
// ════════════════════════════════════════════════════════════════════
const ANIMEDAY_BASE = "https://www.anime-day.com";
const ANIMEDAY_HDRS: Record<string, string> = {
  ...BASE_HDRS,
  "User-Agent": "com.anime.day/4.0 (Android)",
};

let animeDayAnimeListCache: { data: any[]; ts: number } | null = null;
let animeDayServersCache: { data: any[]; ts: number } | null = null;

async function fetchAnimeDayAnimeList(): Promise<any[]> {
  const now = Date.now();
  if (animeDayAnimeListCache && now - animeDayAnimeListCache.ts < 3_600_000)
    return animeDayAnimeListCache.data;
  try {
    const r = await fetch(`${ANIMEDAY_BASE}/app/anime.php`, {
      headers: ANIMEDAY_HDRS,
      signal: AbortSignal.timeout(8_000),
    });
    if (!r.ok) return [];
    const j = await r.json() as any;
    const data: any[] = j.data ?? [];
    animeDayAnimeListCache = { data, ts: now };
    return data;
  } catch { return []; }
}

async function fetchAnimeDayServers(): Promise<any[]> {
  const now = Date.now();
  if (animeDayServersCache && now - animeDayServersCache.ts < 3_600_000)
    return animeDayServersCache.data;
  try {
    const r = await fetch(`${ANIMEDAY_BASE}/app/servers.php`, {
      headers: ANIMEDAY_HDRS,
      signal: AbortSignal.timeout(10_000),
    });
    if (!r.ok) return [];
    const j = await r.json() as any;
    const data: any[] = j.data ?? (Array.isArray(j) ? j : []);
    animeDayServersCache = { data, ts: now };
    return data;
  } catch { return []; }
}

/**
 * يحوّل URL نسبي من servers.php إلى URL كامل باستخدام اسم السيرفر
 * للتمييز بين المزودين الذين يشتركون في نفس نمط الـ URL.
 */
function animeDayResolveUrl(server: any): string | null {
  const url: string   = server.url || "";
  const name: string  = (server.name || "").toLowerCase();
  const provider      = name.split(" ").pop() || "";

  if (!url) return null;
  if (url.startsWith("https://")) return url; // direct URL

  // ── /v/{code} → FileLions (vidhidefast.com — vidhidepro redirects here) ──
  if (url.startsWith("/v/")) return `https://vidhidefast.com${url}`;

  // ── /e/{code}[.html] → بحسب المزود ──────────────────────────────────────
  if (/^\/e\//.test(url)) {
    if (provider === "dood" || name.includes("doodstream"))
      return `https://dood.to${url}`;
    if (provider === "mixdrop")  return `https://mixdrop.ag${url}`;
    if (provider === "kerapoxy") return `https://kerapoxy.cc${url}`;
    if (provider === "filemoon") return `https://filemoon.sx${url}`;
    if (provider === "voe_sx" || provider === "voe") return `https://voe.sx${url}`;
    if (provider === "wish")     return `https://embedwish.com${url}`;
    // افتراضي: embedwish (wish-family)
    return `https://embedwish.com${url}`;
  }

  // ── /embed-{code}.html → بحسب المزود ────────────────────────────────────
  if (/^\/embed-[^/]+\.html$/.test(url)) {
    if (provider === "upstream")  return `https://upstream.to${url}`;
    if (provider === "uqload")    return `https://uqload.is${url}`;   // uqload.co → uqload.is
    if (provider === "mp4upload") return `https://www.mp4upload.com${url}`;
    // vadbam / viidshar / segavid → ميتة (000 timeout) → تجاهل
    if (provider === "vadbam" || provider === "viidshar" || provider === "segavid") return null;
    return `https://upstream.to${url}`; // افتراضي
  }

  // ── /ajax/ , /tv/ , /watch/ → JS-rendered أو ميتة ──────────────────────
  return null;
}

async function getAnimeDaySources(
  title: string, english: string | null, ep: number,
): Promise<UnifiedSource[]> {
  const sources: UnifiedSource[] = [];
  try {
    const [animeList, serverList] = await Promise.all([
      fetchAnimeDayAnimeList(),
      fetchAnimeDayServers(),
    ]);
    if (!animeList.length || !serverList.length) return sources;

    // ── المطابقة: ابحث في second_name (يحتوي كلمات عربية وإنجليزية) ──
    const searchQ = (english || title).toLowerCase().replace(/[^a-z0-9\s]/g, " ").trim();
    let bestAnime: any = null;
    let bestScore = 0;

    for (const anime of animeList) {
      // second_name يحتوي بدائل إنجليزية وعربية (مثال JJK: "Jujutsu Kaisen جوجوتسو كايسن")
      const sn = (anime.second_name || "").toLowerCase().replace(/[^a-z0-9\s\u0600-\u06ff]/g, " ");
      // الاسم الرئيسي بعد حذف "الموسم/Season N"
      const nm = (anime.name || "").toLowerCase().replace(/\s*(season|الموسم)\s+.*/i, "").replace(/[^a-z0-9\s\u0600-\u06ff]/g, " ").trim();
      // استخدم asciiSimilarity أيضاً لمطابقة "jujutsu kaisen" مع second_name الذي يحتوي "Jujutsu Kaisen"
      const sc = Math.max(similarity(searchQ, sn), similarity(searchQ, nm), asciiSimilarity(searchQ, sn));
      if (sc > bestScore) { bestScore = sc; bestAnime = anime; }
    }

    if (!bestAnime || bestScore < 0.38) return sources;

    // ── ابنِ prefix المطابقة حسب نوع الأنمي ───────────────────────────────
    const animeName: string = bestAnime.name || "";
    // العنوان عربي إذا بدأ بحرف عربي (لا مجرد احتواء "الموسم")
    const firstWord = animeName.split(/\s+/)[0] || "";
    const isArabic = /[\u0600-\u06FF]/.test(firstWord);

    let matchPrefix: string;
    let epStr: string;
    if (isArabic) {
      // اسم عربي مثل "جوجوتسو كايسن" — servers تطابق بـ "الحلقة N"
      // نستبعد كلمات الموسم/الترجمة (الموسم، الأول، مدبلج…) لأن servers لا تحتوي عليها
      const ANIMEDAY_STOP = new Set([
        "الموسم","مدبلج","مترجم","مترجمة",
        "الأول","الاول","الأولى","الأولي",
        "الثاني","الثانى","الثانية",
        "الثالث","الثالثة","الرابع","الرابعة",
        "الخامس","السادس","السابع","الثامن","التاسع","العاشر",
      ]);
      const arabicWords = animeName.split(/\s+/).filter((w: string) =>
        /[\u0600-\u06FF]/.test(w) && !ANIMEDAY_STOP.has(w),
      );
      matchPrefix = arabicWords.slice(0, 3).join(" ");
      epStr = `الحلقة ${ep}`;
    } else {
      // اسم إنجليزي مثل "Regular Show" — servers: "regular show season N eps M"
      matchPrefix = animeName.toLowerCase().replace(/\s+(season|الموسم)\s+.*/i, "").trim();
      // نُحدد الـ season من الاسم (رقم عادي أو كلمة عربية)
      const arOrdinal: Record<string, number> = {
        'الأول':1,'الاول':1,'الأولى':1,'الأولي':1,
        'الثاني':2,'الثانى':2,'الثانية':2,
        'الثالث':3,'الثالثة':3,'الرابع':4,'الرابعة':4,
        'الخامس':5,'السادس':6,'السابع':7,'الثامن':8,'التاسع':9,'العاشر':10,
      };
      let season = 1;
      const digitSeason = animeName.match(/(?:season)\s+(\d+)/i);
      if (digitSeason) {
        season = parseInt(digitSeason[1], 10);
      } else {
        const arabicSeason = animeName.match(/الموسم\s+(\S+)/);
        if (arabicSeason) season = arOrdinal[arabicSeason[1]] ?? 1;
      }
      epStr = `season ${season} eps ${ep}`;
    }
    if (!matchPrefix) return sources;

    // ── فلترة السيرفرات المطابقة ───────────────────────────────────────────
    const epServers = serverList.filter((s: any) => {
      const name: string = (s.name || "").toLowerCase();
      return name.includes(matchPrefix.toLowerCase()) && name.includes(epStr.toLowerCase());
    });
    if (!epServers.length) return sources;

    // ── بناء مصادر UnifiedSource لكل سيرفر ────────────────────────────────
    const seen = new Set<string>();
    for (const server of epServers) {
      const relUrl: string = server.url || "";
      if (!relUrl || seen.has(relUrl)) continue;
      seen.add(relUrl);

      const fullUrl = animeDayResolveUrl(server);
      if (!fullUrl) continue;

      const provName = (server.name || "").split(" ").pop() || "";
      const quality  = isArabic ? "مدبلج HD" : "HD";
      const qRank    = fullUrl.includes("vidhidefast") ? 9
                     : fullUrl.includes("filemoon")    ? 8
                     : fullUrl.includes("uqload")      ? 8
                     : fullUrl.includes("dood")         ? 7
                     : fullUrl.includes("mixdrop")      ? 7
                     : 6;

      sources.push({
        url      : fullUrl,
        directUrl: undefined,
        quality  : `${quality} · ${provName}`,
        qualityRank: qRank,
        site     : "animeday",
        label    : `أنمي داي · ${provName}`,
      });
    }
  } catch { /* silently fail */ }
  return sources;
}


// ════════════════════════════════════════════════════════════════════
//  SEEPANEL (panel.seepanel.top) — Arabic dubbed/subbed anime + movies
//  API key + UUID hardcoded in APK (com.seedrama.orgs v4.3)
//  Sources: hlswish (streamwish), vidhideplus, uqload, hgcloud, etc.
// ════════════════════════════════════════════════════════════════════
const SEEPANEL_BASE = "https://panel.seepanel.top/api";
const SEEPANEL_KEY  = "4F5A9C3D9A86FA54EACEDDD635185";
const SEEPANEL_UUID = "d506abfd-9fe2-4b71-b979-feff21bcad13";
const seepanelSearchCache = new Map<string, { data: any; ts: number }>();
const SEEPANEL_SEARCH_TTL = 3_600_000; // 1h

async function seepanelFetch<T>(path: string): Promise<T | null> {
  try {
    const r = await fetch(
      `${SEEPANEL_BASE}/${path}/${SEEPANEL_KEY}/${SEEPANEL_UUID}/`,
      {
        headers: { "User-Agent": "okhttp/4.12.0", Accept: "application/json" },
        signal: AbortSignal.timeout(10000),
      },
    );
    if (!r.ok) return null;
    const text = await r.text();
    if (text.startsWith("<!")) return null; // HTML 404 page
    return JSON.parse(text) as T;
  } catch { return null; }
}

interface SeepanelSource {
  id: number; type: string; quality: string;
  premium: string; external: boolean; url: string;
}
interface SeepanelEpisode {
  id: number; title: string; sources: SeepanelSource[];
}
interface SeepanelSeason {
  id: number; title: string; episodes: SeepanelEpisode[];
}
interface SeepanelPoster {
  id: number; title: string; type: "serie" | "movie"; year?: number;
}
interface SeepanelSearchResult {
  posters: SeepanelPoster[];
  channels: any[];
}
interface SeepanelMovie {
  id: number; title: string; type: string; sources: SeepanelSource[];
}

async function seepanelSearch(query: string): Promise<SeepanelPoster[]> {
  const cKey = `sp:search:${query.toLowerCase()}`;
  const cached = seepanelSearchCache.get(cKey);
  if (cached && Date.now() - cached.ts < SEEPANEL_SEARCH_TTL) return cached.data;
  const data = await seepanelFetch<SeepanelSearchResult>(
    `search/${encodeURIComponent(query)}`,
  );
  const posters = data?.posters ?? [];
  seepanelSearchCache.set(cKey, { data: posters, ts: Date.now() });
  return posters;
}

function seepanelQualityRank(q: string): number {
  const u = q.toUpperCase();
  if (u.includes("1080")) return 11;
  if (u.includes("720") || u.includes("متعدد")) return 10;
  if (u.includes("480")) return 9;
  return 8;
}

// hostLabel for the source name
function seepanelHostLabel(url: string): string {
  if (url.includes("hlswish"))      return "HLSwish";
  if (url.includes("vidhideplus"))  return "VidHidePlus";
  if (url.includes("vidspeed"))     return "VidSpeed";
  if (url.includes("uqload"))       return "UQLoad";
  if (url.includes("hgcloud"))      return "HGCloud";
  if (url.includes("bigwarp"))      return "BigWarp";
  if (url.includes("filemoon"))     return "Filemoon";
  if (url.includes("1vid"))         return "1Vid";
  if (url.includes("goveed"))       return "GovEed";
  if (url.includes("vdbtm"))        return "VidBTM";
  if (url.includes("forafile"))     return "ForaFile";
  if (url.includes("okprime"))      return "OKPrime";
  return new URL(url).hostname.replace(/^www\./, "").split(".")[0];
}

// Hosts that return empty / HTML pages / are blocked from server-side extraction
const SEEPANEL_DEAD_HOSTS = [
  "wecima.video",          // dead → MPAA redirect
  "dailymotion",           // iframe-only
  "faselhds.life",         // Arabic HTML page (162 bytes), not an embed
  "goveed1.space",         // empty response from Replit
  "vdbtm.shop",            // empty response from Replit
  "okprime.site",          // 40-byte redirect/empty
  "vk.com",                // VK social media video_ext
  "hgcloud.to",            // CF-protected, blocks server-side extraction
  "vidhideplus.com",       // CF-protected, blocks server-side extraction
  "mixdrop",               // embed-only, no server extraction
];

function seepanelBuildSources(
  rawSrcs: SeepanelSource[], siteName: string, labelPrefix: string,
): UnifiedSource[] {
  const out: UnifiedSource[] = [];
  const seen = new Set<string>();
  for (const src of rawSrcs) {
    const url = src.url || "";
    if (!url || !url.startsWith("http")) continue;
    if (seen.has(url)) continue;
    seen.add(url);
    if (SEEPANEL_DEAD_HOSTS.some(h => url.includes(h))) continue;
    try {
      out.push({
        name: `${labelPrefix} · ${seepanelHostLabel(url)} · ${src.quality}`,
        url,
        quality: src.quality,
        qualityRank: seepanelQualityRank(src.quality),
        site: siteName,
      });
    } catch { /* bad URL */ }
  }
  return out;
}

// Extract episode sources from a known SeePanal serie ID
async function seepanelGetEpSources(
  poster: SeepanelPoster, ep: number, labelPrefix: string,
): Promise<UnifiedSource[]> {
  if (poster.type === "movie") {
    const movie = await seepanelFetch<SeepanelMovie>(`movie/by/${poster.id}`);
    if (!movie?.sources?.length) return [];
    return seepanelBuildSources(movie.sources, "seepanel", labelPrefix);
  }

  const seasons = await seepanelFetch<SeepanelSeason[]>(
    `season/by/serie/${poster.id}`,
  );
  if (!seasons?.length) return [];

  const activeSeasons = seasons
    .filter(s => !s.title.includes("قريبا") && s.episodes.some(e => e.sources?.length))
    .sort((a, b) => a.id - b.id);

  // First pass: match by episode number embedded in title (e.g. "الحلقة : 800" or "الحلقة 800")
  const EP_NUM_RE = /الحلقة\s*:?\s*(\d+)/;
  for (const season of activeSeasons) {
    for (const episode of season.episodes) {
      if (!episode.sources?.length) continue;
      const m = EP_NUM_RE.exec(episode.title ?? "");
      if (m && parseInt(m[1], 10) === ep) {
        return seepanelBuildSources(
          episode.sources, "seepanel",
          `${labelPrefix} · ${season.title}`,
        );
      }
    }
  }

  // Second pass: fallback to global sequential index (works for series stored in order, e.g. DBZ)
  let globalIdx = 0;
  for (const season of activeSeasons) {
    for (const episode of season.episodes) {
      if (!episode.sources?.length) continue;
      globalIdx++;
      if (globalIdx === ep) {
        return seepanelBuildSources(
          episode.sources, "seepanel",
          `${labelPrefix} · ${season.title}`,
        );
      }
    }
  }
  return [];
}

async function getSeepanelSources(
  title: string, english: string | null, ep: number, isMovie = false,
): Promise<UnifiedSource[]> {
  try {
    const queries = [title, english].filter(Boolean) as string[];
    const seen = new Set<number>();
    // Map: posterId → score
    const candidates: Array<{ poster: SeepanelPoster; score: number }> = [];
    const spMin = isMovie ? 0.58 : 0.50;

    for (const q of queries) {
      const posters = await seepanelSearch(q);
      for (const p of posters) {
        if (seen.has(p.id)) continue;
        seen.add(p.id);
        const spTitle = p.title.replace(/\s*-\s*[\u0600-\u06ff].*$/u, "").trim();
        const spLow = spTitle.toLowerCase();
        const tLow  = title.toLowerCase();
        const eLow  = english?.toLowerCase() ?? "";
        const score = isMovie
          ? Math.max(
              strictMovieSimilarity(tLow, spLow),
              eLow ? strictMovieSimilarity(eLow, spLow) : 0,
              strictMovieSimilarity(spTitle, title),
              eLow ? strictMovieSimilarity(spTitle, english!) : 0,
            )
          : Math.max(
              similarity(tLow, spLow),
              eLow ? similarity(eLow, spLow) : 0,
              asciiSimilarity(spTitle, title),
              eLow ? asciiSimilarity(spTitle, english!) : 0,
              // Substring bonus: if the search title appears inside the SeePanal title
              // AND the title is long enough (≥5 chars) to avoid false matches.
              // Caps at 0.52 so it never beats a real similarity match.
              (tLow.length >= 5 && spLow.includes(tLow)) ? 0.52 :
              (eLow && eLow.length >= 5 && spLow.includes(eLow)) ? 0.52 : 0,
            );
        if (score >= spMin) candidates.push({ poster: p, score });
      }
    }

    if (!candidates.length) return [];

    // Sort: highest similarity first; ties → for movies prefer movie type, for series prefer serie
    candidates.sort((a, b) =>
      b.score !== a.score ? b.score - a.score :
      isMovie
        ? (a.poster.type === "movie" ? -1 : 1)
        : (a.poster.type === "serie" ? -1 : 1),
    );

    // Try each candidate — return the first that has the requested episode
    // For ep > 1, skip movie-type posters (they only have 1 episode)
    // For movies (isMovie=true), prefer movie-type posters
    const filtered = isMovie
      ? candidates.filter(c => c.poster.type === "movie").length > 0
        ? candidates.filter(c => c.poster.type === "movie")
        : candidates
      : ep > 1
        ? candidates.filter(c => c.poster.type !== "movie")
        : candidates;

    for (const { poster } of filtered.slice(0, 6)) {
      const srcs = await seepanelGetEpSources(
        poster, ep, `SeePanal · مدبلج`,
      );
      if (srcs.length > 0) return srcs;
    }
    return [];
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  ARABSEED (arabseed.ink / a.asd.ink) — Arabic dubbed/subbed anime (مدبلج/مترجم)
//  WordPress site — REST API on arabseed.ink, episode pages on a.asd.ink
//  Search:  GET arabseed.ink/wp-json/wp/v2/posts?search={title}+الحلقة+{ep}&per_page=10
//           → episode posts with "الحلقة N" in title (exact URL per ep on a.asd.ink)
//  Servers: POST a.asd.ink/get__quality__servers/ → server list HTML
//           POST a.asd.ink/get__watch__server/    → embed URL per server index
//  NOTE: arabseed.ink accessible directly from VPS (no CF proxy needed)
//        m.asd.ink was CF-blocked from Replit; arabseed.ink is the replacement
// ════════════════════════════════════════════════════════════════════
const ARABSEED_BASE   = "https://arabseed.ink";
const ARABSEED_EP_BASE = "https://a.asd.ink";
const ARABSEED_HDRS: Record<string, string> = {
  ...BASE_HDRS,
  "Referer": `${ARABSEED_BASE}/`,
  "Origin": ARABSEED_BASE,
};

type ArabseedPost = { id: number; link: string; title: { rendered: string } };

function arabseedDecodeTitle(raw: string): string {
  return raw.replace(/&#(\d+);/g, (_, n) => String.fromCharCode(+n))
            .replace(/&amp;/g, "&").replace(/&lt;/g, "<").replace(/&gt;/g, ">");
}

async function arabseedFetchPosts(params: string): Promise<ArabseedPost[]> {
  const url = `${ARABSEED_BASE}/wp-json/wp/v2/posts?${params}&_fields=id,link,title`;
  try {
    const r = await fetch(url, {
      headers: { "User-Agent": BROWSER_UA, Accept: "application/json" },
      signal: AbortSignal.timeout(10000),
    });
    if (!r.ok) return [];
    const data = await r.json() as ArabseedPost[];
    return Array.isArray(data) ? data : [];
  } catch { return []; }
}

/** Find the direct episode page URL via WP REST API.
 *  Three parallel search strategies to cover all episode ranges:
 *  1. Targeted: "{title} الحلقة {ep}" — best for mid-range eps
 *  2. ASC date order: oldest first — covers ep 1-100
 *  3. DESC date order: newest first — covers last 100 eps */
async function arabseedFindEpisodeUrl(q: string, ep: number): Promise<string | null> {
  const EP_RE = /الحلقة\s+(\d+)/;
  const qWords = q.toLowerCase().split(/\s+/).filter(w => w.length > 2);

  function matchEp(posts: ArabseedPost[]): string | null {
    for (const post of posts) {
      const title = arabseedDecodeTitle(post.title?.rendered || "");
      const epM   = EP_RE.exec(title);
      if (!epM || parseInt(epM[1], 10) !== ep) continue;
      const titleLow = title.toLowerCase();
      if (qWords.some(w => titleLow.includes(w))) return post.link;
    }
    return null;
  }

  const enc = encodeURIComponent(q);
  // Run all three searches in parallel
  const [targeted, asc, desc] = await Promise.all([
    arabseedFetchPosts(`search=${encodeURIComponent(q + " الحلقة " + ep)}&per_page=20`),
    arabseedFetchPosts(`search=${enc}&per_page=100&orderby=date&order=asc`),
    arabseedFetchPosts(`search=${enc}&per_page=100&orderby=date&order=desc`),
  ]);

  // Try targeted first (most precise), then asc (early eps), then desc (recent)
  return matchEp(targeted) ?? matchEp(asc) ?? matchEp(desc) ?? null;
}

/** Find a movie page URL on ArabSeed by title (no episode number required). */
async function arabseedFindMovieUrl(q: string): Promise<string | null> {
  const enc = encodeURIComponent(q);
  const qWords = q.toLowerCase().replace(/[^\x20-\x7E]/g, " ").split(/\s+/).filter(w => w.length >= 3);

  const posts = await arabseedFetchPosts(`search=${enc}&per_page=20`);
  for (const post of posts) {
    const pTitle = arabseedDecodeTitle(post.title?.rendered || "");
    // Skip posts that are episodes (contain "الحلقة")
    if (/الحلقة\s+\d+/.test(pTitle)) continue;
    const pLow = pTitle.toLowerCase().replace(/[^\x20-\x7E]/g, " ");
    const allMatch = qWords.length > 0 && qWords.every(w => pLow.includes(w));
    const sim = titleSimilarity(q, pTitle);
    if (allMatch || sim >= 0.42) return post.link;
  }
  return null;
}

async function getArabSeedSources(
  title: string, english: string | null, ep: number, isMovie = false,
): Promise<UnifiedSource[]> {
  try {
    // Try English title first (most reliable), then romaji
    const queries = [english, title].filter((q): q is string => !!q && q.trim().length > 0);
    let epUrl: string | null = null;
    for (const q of queries) {
      epUrl = isMovie
        ? await arabseedFindMovieUrl(q)
        : await arabseedFindEpisodeUrl(q, ep);
      if (epUrl) break;
    }
    if (!epUrl) return [];

    // Fetch episode page → extract psot_id and csrf_token
    // Episode pages are on a.asd.ink — fetch directly (no CF proxy needed from VPS)
    const epHtml = await fetch(epUrl, {
      headers: { ...ARABSEED_HDRS, "Referer": `${ARABSEED_BASE}/` },
      signal: AbortSignal.timeout(12000),
      redirect: "follow",
    }).then(r => r.ok ? r.text() : null).catch(() => null);
    if (!epHtml) return [];

    // psot_id: object__info = {'psot_id': '12345'} or psot_id: "12345"
    const psotMatch = epHtml.match(/psot_id['"]?\s*[:']\s*['"](\d+)['"]/i);
    if (!psotMatch) return [];
    const psotId = psotMatch[1];

    // csrf__token: main__obj = {'csrf__token': "87c547ce81"} — typically ~10 hex chars
    const csrfMatch = epHtml.match(/csrf[_]{1,2}token['"]?\s*[:']\s*["']([a-zA-Z0-9_/-]{4,80})["']/i);
    if (!csrfMatch) return [];
    const csrf = csrfMatch[1];

    // AJAX endpoints are on a.asd.ink (same domain as episode pages)
    const epBase = new URL(epUrl).origin; // https://a.asd.ink
    const ajaxHdrs: Record<string, string> = {
      ...ARABSEED_HDRS,
      "Content-Type": "application/x-www-form-urlencoded",
      "X-Requested-With": "XMLHttpRequest",
      "Referer": epUrl,
      "Origin": epBase,
    };

    // POST /get__quality__servers/ → {html: serverButtonsHtml, server: firstEmbedUrl}
    let serverIndices: number[] = [];
    let firstEmbedUrl = "";
    try {
      const qRes = await fetch(`${epBase}/get__quality__servers/`, {
        method: "POST",
        headers: ajaxHdrs,
        body: new URLSearchParams({ post_id: psotId, quality: "1080", csrf_token: csrf }).toString(),
        signal: AbortSignal.timeout(10000),
      });
      if (qRes.ok) {
        const qData = await qRes.json() as { html?: string; server?: string };
        firstEmbedUrl = qData.server || "";
        const btnHtml = qData.html || "";
        for (const m of btnHtml.matchAll(/data-server=["'](\d+)["']/gi)) {
          const idx = parseInt(m[1], 10);
          if (!serverIndices.includes(idx)) serverIndices.push(idx);
        }
      }
    } catch { /* use fallback indices */ }

    if (!serverIndices.length) serverIndices = [0, 1, 2, 3, 4];

    const sources: UnifiedSource[] = [];

    await Promise.allSettled(serverIndices.slice(0, 5).map(async (serverIdx) => {
      try {
        // POST /get__watch__server/ → {type, server: embedUrl}
        const sRes = await fetch(`${epBase}/get__watch__server/`, {
          method: "POST",
          headers: ajaxHdrs,
          body: new URLSearchParams({
            post_id: psotId, quality: "1080",
            server: String(serverIdx), csrf_token: csrf,
          }).toString(),
          signal: AbortSignal.timeout(9000),
        });
        if (!sRes.ok) return;
        const sData = await sRes.json() as { type?: string; server?: string };
        const embedUrl: string = sData.server || (serverIdx === 0 ? firstEmbedUrl : "");
        if (!embedUrl || !embedUrl.startsWith("http")) return;

        // Skip dead/blocked servers
        if (embedUrl.includes("luluvid")) return;

        const srvLabel = `عرب سيد · سيرفر ${serverIdx + 1} · 1080p FHD`;

        // m.reviewrate.net → extract <source src="..."> → direct MP4 via video-proxy
        if (embedUrl.includes("reviewrate.net")) {
          const rvHtml = await fetch(embedUrl, {
            headers: { ...ARABSEED_HDRS, "Referer": epUrl! },
            signal: AbortSignal.timeout(8000),
          }).then(r2 => r2.ok ? r2.text() : "").catch(() => "");
          const srcMatch = rvHtml.match(/<source\b[^>]*src=["'](https?:\/\/[^"']+)["']/i);
          if (srcMatch) {
            const mp4Url = srcMatch[1];
            const proxied = `/api/anime/video-proxy?url=${encodeURIComponent(mp4Url)}&ref=${encodeURIComponent(embedUrl)}`;
            sources.push({
              name: `عرب سيد · ReviewRate · 1080p FHD · مترجم عربي`,
              url: mp4Url, quality: "1080p", qualityRank: 12,
              site: "arabseed", directUrl: proxied, directType: "mp4",
            });
          }
          return;
        }

        // vidaraa / bysezejataos / vidmoly / other → push for extractAndCollect
        sources.push({
          name: `${srvLabel} · مترجم عربي`,
          url: embedUrl, quality: "1080p", qualityRank: 10,
          site: "arabseed",
        });
      } catch { /* skip failing server */ }
    }));

    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  TMDB-native sources for anime (Videasy / VidLink / LordFlix / Vyla / StarCima)
//  Each uses TMDB TV ID resolved from the English title via TMDB search.
//  These same sources were confirmed working with anime in animation tests.
// ════════════════════════════════════════════════════════════════════

// Simple in-memory cache for TMDB ID lookups (6h TTL)
const animeTmdbCache = new Map<string, { id: number | null; ts: number }>();
const ANIME_TMDB_TTL = 6 * 60 * 60 * 1000;
const TMDB_KEY_ANIME = "8265bd1679663a7ea12ac168da84d2e8";

async function fetchAnimeTmdbId(english: string | null, romaji: string, anilistId?: number): Promise<number | null> {
  const query = (english || romaji || "").trim();
  if (!query) return null;
  const cKey = anilistId ? `anilist:${anilistId}` : query.toLowerCase();
  const hit = animeTmdbCache.get(cKey);
  if (hit && Date.now() - hit.ts < ANIME_TMDB_TTL) return hit.id;

  // ── 1. animeapi.my.id — AniList ID → TMDB (أسرع وأدق من بحث TMDB) ──
  if (anilistId) {
    try {
      const r = await fetch(`https://animeapi.my.id/anilist/${anilistId}`, {
        headers: { "User-Agent": BROWSER_UA, "Accept": "application/json" },
        signal: AbortSignal.timeout(6_000),
      });
      if (r.ok) {
        const data = await r.json() as { themoviedb?: number; themoviedb_type?: string };
        if (data.themoviedb && (data.themoviedb_type === "tv" || data.themoviedb_type === "series")) {
          animeTmdbCache.set(cKey, { id: data.themoviedb, ts: Date.now() });
          // Cache also by title for reuse in other scrapers without anilistId
          if (query) animeTmdbCache.set(query.toLowerCase(), { id: data.themoviedb, ts: Date.now() });
          return data.themoviedb;
        }
      }
    } catch { /* fall through to TMDB search */ }
  }

  // ── 1.5. arm.haglund.dev — AniList → {TMDB, MAL, AniDB, ...} كل المعرفات دفعة واحدة ──
  if (anilistId) {
    try {
      const r = await fetch(`https://arm.haglund.dev/api/v2/ids?source=anilist&id=${anilistId}`, {
        headers: { "User-Agent": BROWSER_UA, "Accept": "application/json" },
        signal: AbortSignal.timeout(5_000),
      });
      if (r.ok) {
        const armData = await r.json() as { themoviedb?: number | null; myanimelist?: number | null };
        if (armData.themoviedb) {
          animeTmdbCache.set(cKey, { id: armData.themoviedb, ts: Date.now() });
          if (query) animeTmdbCache.set(query.toLowerCase(), { id: armData.themoviedb, ts: Date.now() });
          return armData.themoviedb;
        }
      }
    } catch { /* fall through */ }
  }

  // ── 2. TMDB search (fallback) ──
  const attempts = [english, romaji].filter((v): v is string => !!v && v.trim().length > 0);
  for (const q of attempts) {
    try {
      const r = await fetch(
        `https://api.themoviedb.org/3/search/tv?api_key=${TMDB_KEY_ANIME}&query=${encodeURIComponent(q)}&language=en`,
        { headers: { "User-Agent": BROWSER_UA }, signal: AbortSignal.timeout(8_000) },
      );
      if (!r.ok) continue;
      const data = await r.json() as { results?: Array<{ id: number; name: string; original_name?: string }> };
      if (!data.results?.length) continue;
      const qLow = q.toLowerCase();
      let bestId: number | null = null, bestSc = 0;
      for (const res of data.results.slice(0, 8)) {
        const resName = (res.name || res.original_name || "").toLowerCase();
        const sc = Math.max(
          similarity(resName, qLow),
          english ? similarity(resName, english.toLowerCase()) : 0,
          similarity(resName, romaji.toLowerCase()),
        );
        if (sc > bestSc) { bestSc = sc; bestId = res.id; }
      }
      if (bestId && bestSc >= 0.35) {
        animeTmdbCache.set(cKey, { id: bestId, ts: Date.now() });
        return bestId;
      }
    } catch { continue; }
  }
  animeTmdbCache.set(cKey, { id: null, ts: Date.now() });
  return null;
}

// ── In-process cache for kawaii sub lookups (5-min TTL) ──
// Prevents triple kawaii API calls per episode (once from getKawaiiAnimeSources + twice from getKawaiiSubForSource for Videasy+VidLink)
const _kawaiiSubCache = new Map<string, { val: string | undefined; ts: number }>();
const KAWAII_SUB_TTL = 5 * 60 * 1000;

// ── Helper: kawaii subtitle للمصادر الأخرى (عربي مباشر أو إنجليزي→عربي) ──
async function getKawaiiSubForSource(anilistId: number | undefined, ep: number): Promise<string | undefined> {
  if (!anilistId) return undefined;
  const cKey = `${anilistId}:${ep}`;
  const hit = _kawaiiSubCache.get(cKey);
  if (hit && Date.now() - hit.ts < KAWAII_SUB_TTL) return hit.val;
  try {
    let payload: any = null;
    for (const endpoint of [
      `${KAWAII_BASE}/api/miruro?anilistId=${anilistId}&ep=${ep}`,
      `${KAWAII_BASE}/api/miruro?anilist_id=${anilistId}&episode=${ep}`,
      `${KAWAII_BASE}/api/watch?anilistId=${anilistId}&ep=${ep}`,
    ]) {
      const r = await fetch(endpoint, {
        headers: { ...BASE_HDRS, Accept: "application/json", Referer: KAWAII_BASE + "/" },
        signal: AbortSignal.timeout(6000),
      });
      if (!r.ok) continue;
      const candidate = await r.json().catch(() => null);
      payload = candidate?.data && typeof candidate.data === "object"
        ? { ...candidate, ...candidate.data }
        : candidate;
      if (payload?.subtitles?.length) break;
    }
    // Kawaii has returned several equivalent envelopes over time:
    // subtitles, tracks, and nested data.{subtitles,tracks}. Normalize them
    // here so the web and mobile clients receive the same stable URL.
    const subsRaw = payload?.subtitles ?? payload?.tracks ?? payload?.captions ?? [];
    const subs = Array.isArray(subsRaw) ? subsRaw : [];
    const normalizedSubs = subs.map((s: any) => ({
      ...s,
      lang: s.lang ?? s.language ?? s.label ?? "",
      url: s.url ?? s.file ?? s.src ?? s.fileUrl ?? "",
    })).filter((s: any) => s.url);
    // الأولوية: عربي مباشر → إنجليزي مترجم
    const arSub = normalizedSubs.find(s => /arabic|arab|العربية|عربي/i.test(s.lang) || s.lang.toLowerCase() === "ar");
    let result: string | undefined;
    if (arSub?.url) {
      const proxied = `/api/anime/proxy-text?url=${encodeURIComponent(arSub.url)}&ref=${encodeURIComponent(KAWAII_BASE + "/")}`;
      result = proxied;
    } else {
      const enSub = normalizedSubs.find(s => /english|eng|الإنجليزية|انجليزي/i.test(s.lang) || s.lang.toLowerCase() === "en");
      if (enSub?.url) {
        const proxied = `/api/anime/proxy-text?url=${encodeURIComponent(enSub.url)}&ref=${encodeURIComponent(KAWAII_BASE + "/")}`;
        result = `/api/anime/translate-vtt?url=${encodeURIComponent(proxied)}&from=en&to=ar`;
      }
    }
    _kawaiiSubCache.set(cKey, { val: result, ts: Date.now() });
    return result;
  } catch { _kawaiiSubCache.set(cKey, { val: undefined, ts: Date.now() }); return undefined; }
}

// ════════════════════════════════════════════════════════════════════
//  Videasy / Vidking "STREAMCRYPTO" engine — reverse-engineered natively
//  [2026-07-12] api.videasy.to itself is dead (now redirects to unrelated
//  TMDB readme docs). The real backend moved to api.wingsdatabase.com —
//  discovered by inspecting vidking.net (an official Videasy sub-brand,
//  loads users.videasy.to/api/script.js) whose Vite bundle ships the full
//  plain-JS decrypt algorithm (not WASM). Reimplemented below — no
//  external decryptor service (enc-dec.app) needed at all.
//  Algorithm: fetch a short-lived seed from /seed?mediaId=, then a custom
//  PRNG-based XOR stream cipher (RC4 KSA when seed length is odd, else a
//  bespoke 61-slot LCG-like generator) keyed by the seed + tmdbId,
//  verified via a 4-byte "mvm1" magic prefix on the decrypted payload.
// ════════════════════════════════════════════════════════════════════
// [2026-07-15] domain moved again: api.wingsdatabase.com → api.speedracelight.com
// (discovered via vidking.net's live VideoPlayer-*.js chunk; same endpoint/query/decrypt shape)
const WINGS_BASE = "https://api.speedracelight.com";
const WINGS_SERVERS: Record<string, string> = {
  Hydrogen: "cdn/sources-with-title",
  Titanium: "tejo/sources-with-title",
  Oxygen:   "neon2/sources-with-title",
  Lithium:  "downloader2/sources-with-title",
  Helium:   "1movies/sources-with-title",
};
const WINGS_HDRS = {
  "User-Agent": BROWSER_UA,
  "Referer": "https://www.vidking.net/",
  "Origin": "https://www.vidking.net",
};
const WC_Hl = [1116352408,1899447441,3049323471,3921009573,961987163,1508970993,2453635748,2870763221,3624381080,310598401,607225278,1426881987,1925078388,2162078206,2614888103,3248222580];
const WC_f0 = 1732584193, WC_Js = 61, WC_Sf = 8, WC_ms = 2654435769, WC_Ys = [109,118,109,49]; // "mvm1"
const wcBf = (l: number) => (l * (l + 1) & 1) === 0;
const wcIf = (l: number) => (l * (l + 1) & 1) === 1;
function wcUi(l: number): number { l >>>= 0; l ^= l >>> 16; l = Math.imul(l, 2246822507) >>> 0; l ^= l >>> 13; l = Math.imul(l, 3266489909) >>> 0; l ^= l >>> 16; return l >>> 0; }
function wcPs(l: number, o: number): number { l >>>= 0; o &= 31; return o === 0 ? l >>> 0 : (l << o | l >>> 32 - o) >>> 0; }
function wcAf(l: string): number { let o = WC_f0 >>> 0; for (let e = 0; e < l.length; e++) o = wcPs((o ^ Math.imul(l.charCodeAt(e), WC_Hl[e & 15])) >>> 0, 5); return wcUi(o); }
function wcWf(l: string): number[] { const o = new Array(256); for (let i = 0; i < 256; i++) o[i] = i; let e = 0; for (let i = 0; i < 256; i++) { e = e + o[i] + l.charCodeAt(i % l.length) & 255; const r = o[i]; o[i] = o[e]; o[e] = r; } return o; }
function wcVf(l: string): number { let o = 2166136261; for (let e = 0; e < l.length; e++) o = Math.imul(o ^ l.charCodeAt(e), 16777619) >>> 0; return wcUi(o); }
function wcNf(l: number, o: number, e: number): number { return ((l ^ o) >>> 0 | (l & o & e) >>> 0) >>> 0; }
function wcRf(l: string, o: number): { S: number[]; acc: number } {
  if (wcIf(l.length)) return { S: wcWf(l), acc: wcAf(l) };
  const e = new Array(WC_Js);
  let i = wcUi(wcVf(l) ^ wcUi(o >>> 0 ^ WC_ms)) >>> 0;
  for (let r = 0; r < WC_Sf; r++) {
    if (wcBf(r)) {
      const n = i % WC_Js;
      i = wcPs(i + WC_ms >>> 0, 7 + (r & 7));
      e[n] = (i ^ wcUi(i)) >>> 0;
      i = wcUi(i + n >>> 0);
    } else {
      e[r] = WC_Hl[r & 15];
    }
  }
  return { S: e, acc: wcUi(i ^ 2779096485) >>> 0 };
}
function wcCf(l: { S: number[]; acc: number }, o: number): number {
  const e = l.S; let i = l.acc;
  const r = i % WC_Js;
  const n = 0 - +(r in e);
  const u = e[r] >>> 0;
  const d = Math.imul(WC_ms, o + 1) >>> 0;
  let g = wcNf(i, (u ^ d) >>> 0, n);
  g = (wcPs(g + i >>> 0, r & 31) ^ wcPs(i, Math.imul(r, 7) & 31)) >>> 0;
  i = wcUi(g + WC_ms >>> 0);
  e[r] = i >>> 0;
  l.acc = i;
  return i >>> 0;
}
function wcXf(l: string, o: number, e: number): Buffer {
  const i = wcRf(l, o);
  const r = Buffer.alloc(e);
  let n = 0;
  for (let u = 0; u < e;) {
    const d = wcCf(i, n++);
    r[u++] = d & 255;
    if (u < e) r[u++] = (d >>> 8) & 255;
    if (u < e) r[u++] = (d >>> 16) & 255;
    if (u < e) r[u++] = (d >>> 24) & 255;
  }
  return r;
}
function wcDf(l: string): Buffer {
  const o = l.replace(/-/g, "+").replace(/_/g, "/").padEnd(Math.ceil(l.length / 4) * 4, "=");
  return Buffer.from(o, "base64");
}
function wcDecrypt(cipherB64Url: string, seed: string, mediaIdNum: number): string {
  const ct = wcDf(cipherB64Url);
  const ks = wcXf(seed, mediaIdNum, ct.length);
  const out = Buffer.alloc(ct.length);
  for (let n = 0; n < ct.length; n++) out[n] = ct[n] ^ ks[n];
  for (let n = 0; n < WC_Ys.length; n++) if (out[n] !== WC_Ys[n]) throw new Error("bad seed or tampered payload");
  return out.subarray(WC_Ys.length).toString("utf8");
}
const _wingsSeedCache = new Map<string, { seed: string; expiresAt: number }>();
async function wingsFetchSeed(mediaId: string | number): Promise<string> {
  const key = `${WINGS_BASE}|${mediaId}`;
  const hit = _wingsSeedCache.get(key);
  if (hit && hit.expiresAt - 5000 > Date.now()) return hit.seed;
  const r = await fetch(`${WINGS_BASE}/seed?mediaId=${encodeURIComponent(String(mediaId))}`, { headers: WINGS_HDRS, signal: AbortSignal.timeout(8000) });
  if (!r.ok) throw new Error(`seed request failed: ${r.status}`);
  const d = await r.json() as { seed: string; ttlMs?: number };
  _wingsSeedCache.set(key, { seed: d.seed, expiresAt: Date.now() + (d.ttlMs ?? 30000) });
  return d.seed;
}

async function getVideasyAnimeSources(title: string, english: string | null, ep: number, anilistId?: number): Promise<UnifiedSource[]> {
  const tmdbId = await fetchAnimeTmdbId(english, title, anilistId);
  if (!tmdbId) return [];
  const sources: UnifiedSource[] = [];
  const kawaiiSub = await getKawaiiSubForSource(anilistId, ep);

  await Promise.allSettled(Object.entries(WINGS_SERVERS).map(async ([serverName, endpoint]) => {
    try {
      const seed = await wingsFetchSeed(tmdbId);
      const url = new URL(`${WINGS_BASE}/${endpoint}`);
      url.searchParams.set("title", english || title);
      url.searchParams.set("mediaType", "tv");
      url.searchParams.set("year", "");
      url.searchParams.set("episodeId", String(ep));
      url.searchParams.set("seasonId", "1");
      url.searchParams.set("tmdbId", String(tmdbId));
      url.searchParams.set("imdbId", "");
      url.searchParams.set("enc", "2");
      url.searchParams.set("seed", seed);
      const r = await fetch(url, { headers: { ...WINGS_HDRS, "Cache-Control": "no-cache" }, signal: AbortSignal.timeout(12_000) });
      if (!r.ok) return;
      const ciphertext = await r.text();
      if (!ciphertext || ciphertext.length < 10) return;
      const decrypted = wcDecrypt(ciphertext, seed, tmdbId);
      const data = JSON.parse(decrypted) as { sources?: Array<{ url?: string; type?: string; quality?: string }>; subtitles?: Array<{ lang?: string; language?: string; url?: string }> };
      if (!data.sources?.length) return;

      const araSub = (data.subtitles ?? []).find(s => /arabic|^ar$/i.test(s.lang || s.language || ""));
      const chosenSub = kawaiiSub || (araSub?.url ? `/api/anime/proxy-text?url=${encodeURIComponent(araSub.url)}` : undefined);

      for (const src of data.sources) {
        if (!src?.url) continue;
        const isHls = src.type === "hls" || src.url.includes(".m3u8");
        const isDash = src.type === "dash" || src.url.toLowerCase().includes(".mpd");
        if (isDash) continue; // no DASH support in our player pipeline
        const q = src.quality || "HD";
        const proxied = isHls
          ? `/api/anime/hls-proxy?url=${encodeURIComponent(src.url)}&ref=${encodeURIComponent("https://www.vidking.net/")}`
          : `/api/anime/video-proxy?url=${encodeURIComponent(src.url)}&ref=${encodeURIComponent("https://www.vidking.net/")}`;
        sources.push({
          name: `Videasy · ${serverName} · ${q}`, url: proxied, quality: q, qualityRank: 19,
          site: "videasy_anim", directUrl: proxied, directType: isHls ? "hls" : "mp4",
          ...(chosenSub ? { subtitleUrl: chosenSub } : {}),
        });
      }
    } catch { /* silent per server */ }
  }));
  return sources;
}

// ── MX Player sources (mxplayer.in — licensed anime/animation) ──────────────
// بدون ترجمة مدمجة: نعيد روابط HLS/DASH الخام فقط، بدون أي معالجة للترجمة.
// يتصل بـ mxplayer_service.py (Flask) على منفذ MXP_SERVICE_PORT (8002 افتراضياً).
const _mxpSrcCache = new Map<string, { sources: UnifiedSource[]; ts: number }>();
const MXP_TTL = 2 * 3_600_000; // 2 hours

async function getMXPlayerSources(title: string, english: string | null, ep: number): Promise<UnifiedSource[]> {
  return []; // [2026-07-09] DISABLED: MXPlayer service (port 8002) not running
  const q  = (english || title).trim();
  const ck = `mxp:${q.toLowerCase()}:${ep}`;
  const hit = _mxpSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < MXP_TTL) return hit.sources;

  try {
    const mxpPort = process.env.MXP_SERVICE_PORT || "8002";
    const url = `http://localhost:${mxpPort}/search?q=${encodeURIComponent(q)}&ep=${ep}`;
    const r = await fetch(url, { signal: AbortSignal.timeout(15_000) });
    if (!r.ok) { _mxpSrcCache.set(ck, { sources: [], ts: Date.now() }); return []; }
    const data = await r.json() as { sources?: Array<{ url: string; type?: string; label?: string; quality?: string }> };
    const raw = data.sources || [];
    const sources: UnifiedSource[] = raw.map((s: any) => {
      const isHls = s.type === "hls" || (s.url || "").includes(".m3u8");
      const proxied = isHls
        ? `/api/anime/hls-proxy?url=${encodeURIComponent(s.url)}&ref=${encodeURIComponent("https://www.mxplayer.in/")}`
        : s.url;
      return {
        name:        s.label || `MXPlayer · ${s.quality || "HD"}`,
        url:         proxied,
        quality:     s.quality || "HD",
        qualityRank: 8,
        site:        "mxplayer",
        directUrl:   proxied,
        directType:  isHls ? "hls" as const : undefined,
      };
    });
    _mxpSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch {
    _mxpSrcCache.set(ck, { sources: [], ts: Date.now() });
    return [];
  }
}

// ── VidLink via enc-dec.app (TMDB-native, auth-token IP-tied → hls-proxy) ──
// DISABLED 2026-07-08: enc-dec.app/api/enc-vidlink is suspended — service returns errors consistently
async function getVidLinkAnimeSources(title: string, english: string | null, ep: number, anilistId?: number): Promise<UnifiedSource[]> {
  // re-enabled 2026-07-17 — enc-dec.app restored
  const tmdbId = await fetchAnimeTmdbId(english, title, anilistId);
  if (!tmdbId) return [];
  try {
    const encR = await fetch(`https://enc-dec.app/api/enc-vidlink?text=${tmdbId}`,
      { headers: { "User-Agent": BROWSER_UA }, signal: AbortSignal.timeout(10_000) });
    if (!encR.ok) { console.error(`[vidlink_anim] enc-dec returned ${encR.status}`); return []; }
    const encData = await encR.json() as { status?: number; result?: string; data?: string };
    const encrypted = encData.result || encData.data || "";
    if (!encrypted) { console.error("[vidlink_anim] enc-dec no result", encData); return []; }
    const vlUrl = `https://vidlink.pro/api/b/tv/${encrypted}/1/${ep}`;
    const vlR = await fetch(vlUrl, {
      headers: { "User-Agent": BROWSER_UA, "Origin": "https://vidlink.pro", "Referer": "https://vidlink.pro/" },
      signal: AbortSignal.timeout(15_000),
    });
    if (!vlR.ok) { console.error(`[vidlink_anim] vidlink API ${vlR.status} for ${vlUrl}`); return []; }
    const vlText = await vlR.text();
    if (!vlText || !vlText.trim()) return [];
    let vlData: any;
    try { vlData = JSON.parse(vlText); } catch { return []; }
    let hlsUrl: string = vlData?.stream?.playlist || vlData?.stream?.url || vlData?.playlist || "";
    // VidLink may return stream.qualities (file/MP4 type) instead of stream.playlist (HLS)
    if (!hlsUrl && vlData?.stream?.qualities) {
      const quals = vlData.stream.qualities as Record<string, { type?: string; url?: string }>;
      // Skip H.265/HEVC URLs — browsers don't support them; prefer H.264
      for (const q of ["1080", "720", "480", "360"]) {
        const qUrl = quals[q]?.url || "";
        if (qUrl && !/h265|hevc|av1/i.test(qUrl)) { hlsUrl = qUrl; break; }
      }
      // Fallback: if all qualities are HEVC, take any URL (better than nothing)
      if (!hlsUrl) {
        for (const q of ["1080", "720", "480", "360"]) {
          if (quals[q]?.url) { hlsUrl = quals[q].url; break; }
        }
      }
    }
    if (!hlsUrl) return [];
    const captions: any[] = vlData?.stream?.captions || vlData?.captions || [];
    const araCap = captions.find((c: any) => c.language === "ara" || c.language === "ar");
    const VL_REF  = "https://vidlink.pro/";
    const isVlHls = hlsUrl.includes(".m3u8") || hlsUrl.includes("manifest");
    const proxied = isVlHls
      ? `/api/anime/hls-proxy?url=${encodeURIComponent(hlsUrl)}&ref=${encodeURIComponent(VL_REF)}`
      : `/api/anime/video-proxy?url=${encodeURIComponent(hlsUrl)}&ref=${encodeURIComponent(VL_REF)}`;
    // kawaii subtitle (EN→AR) يُفضَّل على caption VidLink — الجودة أفضل
    const kawaiiSub  = await getKawaiiSubForSource(anilistId, ep);
    const fallbackSub = araCap?.url ? `/api/anime/translate-vtt?url=${encodeURIComponent(araCap.url)}&from=ar&to=ar` : undefined;
    const chosenSub  = kawaiiSub || fallbackSub;
    const vlLabel = isVlHls ? "VidLink · HLS" : "VidLink · MP4";
    return [{ name: vlLabel, url: proxied, quality: "HD", qualityRank: 18, site: "vidlink_anim", directUrl: proxied, directType: isVlHls ? "hls" : "mp4", ...(chosenSub ? { subtitleUrl: chosenSub } : {}) }];
  } catch (err) { console.error("[vidlink_anim] error:", err); return []; }
}

// LordFlix (snowhouse.lordflix.club) — محذوف: يعيد JS browser-challenge (Cloudflare) بدل البيانات

// ── Vyla SSE (missourimonster-vyla.hf.space, TMDB TV with season=1) ──
async function getVylaAnimeSources(title: string, english: string | null, ep: number, anilistId?: number): Promise<UnifiedSource[]> {
  const tmdbId = await fetchAnimeTmdbId(english, title, anilistId);
  if (!tmdbId) return [];
  const VYLA_BASE = "https://missourimonster-vyla.hf.space";
  const sources: UnifiedSource[] = [];
  try {
    const sseUrl = `${VYLA_BASE}/api/tv?id=${tmdbId}&season=1&episode=${ep}`;
    const r = await fetch(sseUrl, {
      headers: { "User-Agent": BROWSER_UA, "Accept": "text/event-stream" },
      signal: AbortSignal.timeout(22_000),
    });
    if (!r.ok || !r.body) return [];
    const reader = r.body.getReader();
    const dec = new TextDecoder();
    let buf = "";
    let provIdx = 0;
    const seen = new Set<string>();
    outer: while (true) {
      const { done, value } = await reader.read();
      if (done) break;
      buf += dec.decode(value, { stream: true });
      const lines = buf.split("\n");
      buf = lines.pop() ?? "";
      for (const rawLine of lines) {
        const line = rawLine.trim();
        if (!line.startsWith("data:")) continue;
        try {
          const d = JSON.parse(line.slice(5).trim()) as any;
          if (d.type === "source") {
            const proxyUrl: string = d.source?.url || "";
            if (!proxyUrl) continue;
            // deduplicate by inner URL
            let innerUrl = proxyUrl;
            try { const pu = new URL(proxyUrl); const enc = pu.searchParams.get("url"); if (enc) innerUrl = enc; } catch {}
            if (!innerUrl || seen.has(innerUrl)) continue;
            seen.add(innerUrl);
            // Quick probe
            const ok = await fetch(proxyUrl, { method: "HEAD", headers: { "User-Agent": BROWSER_UA, "Origin": "https://www.netflix.com" }, signal: AbortSignal.timeout(5_000) }).then(r => r.ok).catch(() => false);
            if (!ok) continue;
            const provLabel = d.source?.provider ? `Vyla · ${d.source.provider}` : `Vyla · ${++provIdx}`;
            sources.push({ name: provLabel, url: proxyUrl, quality: "HD", qualityRank: 9, site: "vyla_anim", directUrl: proxyUrl });
          } else if (d.type === "done" || d.type === "end") { break outer; }
        } catch {}
      }
    }
    reader.cancel().catch(() => {});
  } catch {}
  return sources;
}

// ── StarCima vidzee (TMDB-native, direct HLS CDN) ──
const SC_HINDI_RE = /\b(hindi|bolly|bollywood|hin|urdu)\b/i;
async function getStarCimaAnimeSources(title: string, english: string | null, ep: number, anilistId?: number): Promise<UnifiedSource[]> {
  const tmdbId = await fetchAnimeTmdbId(english, title, anilistId);
  if (!tmdbId) return [];
  const SC_BASE = "https://starcima.com";
  const SC_VIDZEE = `${SC_BASE}/api/vidzee`;
  const SC_REF_HLS = "https://player.vidzee.wtf/";
  const watchRef = `${SC_BASE}/watch/${tmdbId}?type=tv`;
  const scHeaders = {
    "User-Agent": BROWSER_UA,
    "Referer": watchRef,
    "Origin": SC_BASE,
    "Accept": "application/json",
    "Accept-Language": "ar,en;q=0.9",
  };
  try {
    const r = await fetch(
      `${SC_VIDZEE}?tmdbId=${tmdbId}&type=tv&title=${encodeURIComponent(title)}&season=1&episode=${ep}`,
      { headers: scHeaders, signal: AbortSignal.timeout(18_000) },
    );
    if (!r.ok) return [];
    const data: any = await r.json();
    const servers: any[] = data.servers || [];
    if (!servers.length) return [];

    // الترتيب: isMain أولاً، ثم الباقي، ثم Najm (CDN أبطأ) — وفلترة الخوادم الهندية
    const srvSorted = [...servers]
      .filter((srv: any) => !!srv.url && !SC_HINDI_RE.test(srv.name || ""))
      .sort((a: any, b: any) => {
        const rank = (s: any) => s.isMain ? 0 : (s.name || "").startsWith("Najm") ? 2 : 1;
        return rank(a) - rank(b);
      });

    const PROBE_PORT = parseInt(String(process.env.PORT || 5000), 10);
    const prepared = srvSorted.map((srv: any) => {
      let rawUrl = String(srv.url);
      let referer = SC_REF_HLS;
      if (rawUrl.includes(`${SC_BASE}/cdn/?`)) {
        try { const pu = new URL(rawUrl); rawUrl = pu.searchParams.get("url") || rawUrl; referer = pu.searchParams.get("referer") || SC_REF_HLS; } catch {}
      }
      const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(rawUrl)}&ref=${encodeURIComponent(referer)}`;
      return { proxied, rawUrl, label: `StarCima · ${srv.name || "HD"}` };
    });

    // كل المصادر تمر عبر hls-proxy → CF Worker يُضيف Referer ويمنع رابط CDN المباشر
    return prepared.map(({ proxied, label }) => ({
      name: label,
      url: proxied,
      quality: "HD",
      qualityRank: 9,
      site: "starcima_anim",
      directUrl: proxied,
      directType: "hls" as const,
    }));
  } catch { return []; }
}

// ════════════════════════════════════════════════════════════════════
//  VidFast Pro (TMDB-native, AES-256-GCM, multi-server HLS)
//  Source: github.com/sharoon7171/vidfast-pro-stream-resolver
// ════════════════════════════════════════════════════════════════════
const VF_K1 = Buffer.from("6430779f4751854e855dcf55adedd397341ca1917f499326d39987a9de3f10b1", "hex");
const VF_K2 = Buffer.from("7c81780901000000", "hex");
const VF_K3 = Buffer.from("2339bbcb00000000", "hex");
const VF_ORIGIN       = "https://vidfast.pro";
const VF_PROBE_PREFIX = "/c1e375a038fedd84d8efd9f3a6b2aba044d1f28e/x";
const VF_STREAM_PFX   = "j2iuFyZz_-A";
const VF_UA_VF        = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36";
const VF_PROBE_B64    = "yRAVs22iAf78iGHUOkZQsthwfhH1kgU62bZJTiUFjKFlVxqZQpb5nQgHa88lcTxORJbT9ptkm1J8AEOgR0RLloWg4GDpW7Lsny332wNyuXRg+y1q5EoP1Y089BNFi5cXfokMadNBaaBodNW1tHwLVOKf6cTw1R6fXP2HdVMUs45jovc3xZqBZAv72JBpGU7LUQv5EcIn6+r36B3ULPz8d1qf/cpyaqZjgGfQoQjtySeeLaRPqeO97n+DDTHWiW0iaNPHQfyMiDWSMcv1fLK8x+cT1zbiPMDN5Pt/+O/7QYxQ35YN7/dmD9uq7mmKp+vZqfxNV7tDqqGT3HpaxdnLN+afklfMiX2kyWmMuCeaBDmGUnvm6gCZ/uTcCBs51xP16O5EGVAGoa5t8uY2W1vT2YkjJ53C0+/BP6bUEaLjIFnp4lyiKqWiBZ27BiQR3B46BRLsy5YOmVg9w49bg6+joS3JfELpc+4SFlfPKo1RVCxqoPhH7hkYL6BFwFUwvPuecRjQ8NoRch0xozGZZwWbCvUBFTkGPSS734lUJ9MoaXMyetIGcSdn06dulmwRsNgistOAThXnPn3QXE7dx9fUUTLsiphYB42SGV6wmXN3Cwgl5Fs4zt2WgjLJFFnssitKuDkRNg1C2m8MkKaGcvo2hQRPBVtl118bZPYBdxrFX4UXCkLjgHM+VrnmfFWJIpxyusEi5DudgG85wpL77T2r7V7G6Gufrl/7Nh0oRps9qug3/aD1v3aJvZWpYEBDFeWCRH5xqiyUQzkSkJX6jgcAfMRa1DvHjaQhqkVjx10e2KtFQYa3jcF0LNTUYj2bp7wxidSfR6LVqu06cFiBDvT7aoxBKi80ky27Zr5885gcRmRW/M1jpVO/vBaOz/cNqmZL9QKUlKSt9L6CdR7qLF29tYmf0WfFNkvzDNOPXNzpLihQyMqi1yNg11OJFdox5Zu3FgOhzN1fhXkasJV3YF0ZXdU+DEuOgFpnjk2dE1/ozIYAsD4UDqT9rwjNQFcpXEyneb2J0Lk/0zaSjUfsj8YnD2TA6moODOiPy2PvG5wqJeUH/qSOnYbzCDWB/C+048bP7aLOAVMDhvNlW613Qa76/47S1L38cu3NlUdMl7l4TGbcyrcbqLJZsWJWbGJhmC3PTIx/rkw78TiuwyC+r5PVLDjOb2iAOwqXT+Wa08X62Z0pxJx5PCPz7/o3chcY5NLxOXAZszI2MepSXuc8TlsF+j9wvqWPaBN/OVYBtDQKlWZG4TSueyGeRPTBARekYEPVHE3aDe8C5XRFq5NXrmrGlyq5Bts57rXbIvAq4okUhWD20eso3dP2bcCaTxPZyxOsQKuaCAv3t7v1DafeUxNa3cl41Y/GbvaIULBVsTAaAb82s/Tr9NoNqH96DcyHzNsCK7WxNIcG7DJqEDH5LAJx5dP6QZ+otvrHPD7jMD4Z9cx1wKEAjoCjHxO4qt5iyjzYUp85fDJ8/GOuMb6wan96PnFVcX7Mj41rCJDE2a86cGKjP+Wm9qRX/e5f054XE0y2bqtDIB14XTVq0wjABgRGaYp1ePFTs0Ue3Ehby0AdinGaxbalQQXPlhmArWIKFqT1kEmdeX7DyMB7ekQ/1wNKPjgEJuXsBHfX4shr+jvS8EZA2cqaTT9eiZ/Qlas+81x8D9oHECCrPLAoyxPdZJhvx5KP/zcmY1Npg+qN5AqtLAOkcQck1ETFTJ1FI5uY07alm45MSglEaMbZNAQSybMqjCCUk7auA8gL9zaf+ojS97nhzbJ+STTfeZv2m3iDzrKXks/HQK44EJ6JRw4ymCtfjTKwAlZ9gk65o9wZssKj1P28MotJJbrg6G3Ntzndg2OOPDysAyK+6gifGe1IU1bDNjaVRjpuyZI5D1T4GzsGarlyBP/H8vTSVNBZfqZ8Dcf6P1dLeEVAXUiXYb7WyCtVmmk6W12zDdqWFRbalZ+0ElLeilv8v68gFGCWNuBruHmMgqeYv8PD1qzDvQ9I3TJZmX4JFpFm5brF+u9HiF0UJp+dd+VlXBxcxaBcwUyFafj7dNBKEwjNqHVf6GCUHebbaBMa4YuL8XtcBmdY9JhtueCQCKC4ETKSenzZ4oqO8Q4VR+M6JRjj60ZaWHjxjnBi47mund22TZm6TNnPcGmeRlnJXCGirgLa3xYVIYOvbAZyoUL0fUDhCghFMxhHXXSJxtPUrG3NmvgHNDsAI+cF6cGT2mapb/Z9EyHVVmJIB7C4qNr1WjV8pgvf72QHi/dmciPtuIniswSXsILiaQ6mBgurIetIJYlNITFrn90LGgo/4IFKPhP+okfxszl3FxkxMDMg9y7TGM2Ncnfi2TnAeyXY9h5lDmLq0Rsv/M0QCa1qPWdj3NBo/oyLrk64Eu9Cvtm73z3MyNshGXCz+DwfdOpXA1onxQ/IoaJFLVJQpzAG/NS5Cfo3dMn3TbNGpOOEqGIRulnW02KroWdVYkH6q7L8ZnOlHBQi+2/41UTOWiWQtDnIkE54tfbRC86gBjbAN6ezqX9Q3YSyV8JqxCW1wlDWUif5Dxw0cXDTpeGc0/gT0Im9tx1h0qHCnpKTAPYDltYk8M3oDWGuoDUqeNLe6qhOS3sHx8vZM4QFXnkuJzKIyxhV9wTfD2/K7eMp9X5oZpDd9/LPZanp6+mUAMuRGpe6hoFedMkw535r9IcsJo8r0DkxA4BWM6O9mTEY++brqyXTbKfqzRr4rF6OIvLvro5WYBQT4hjI5KvPU2dBBqYSYVweCZx54zqlb+80rcEOYHPDJ+KHB63r63Xp46ekkyWIXb+SMY24peOcHrFlws47tuaBv14IrD1veqwR0cOLksEDBzbX93nGxaIyu9R3ViJZ2XeHJ9EPPZ3ZGNDN4gSmjWpOvaQjiVYXHGzPhPqChK6IEacZrGkE+/v36wcnMZOL9FJ5d9O/NWBSWSTUVs3s/tWdlWny3lBxerQ2PAErHOEc+hOvIMr2Qp20AKF25be2kItv7qnsPLAOH9mGfwyVI9KZHPj9tBoOlEETjKdL3FXXDzcFcThvFw1jm82e/G0nDTtCE539dtF7gyn5Oi15M+Z09akXhap09aKFRfeZsbrAhqHHOI7WkpLXcIDMufIcScL4JkDO6i58Bx4hZ2PzpPFJ0ThxIuPN6B5hJ/v2C0iI16RMFFfa6LQg0nx+sWk8+jHjTOY/pe+3VcRfjem9g3Y/RzCDOvsKR5Q+ZyTAmHzZu6lZvassz8qfGkOGdSO6spTFCczlDl62YoOR28XtwsapqLkAA5NmSKuNH0VUzsIK91ywofMtY2JM3Da6ALxUT0qLNbhK9P2qBKaJ1X65mphnfzR3qjyCznJ5rg0o0x3c5mtwkLBzjZFC2I4/fbYk739KNKk3GlfH6Z1lJ0jP/uEmlnuBnxZ/Zjdue4nvj3vzYdRXTxUvphKh6CKVLmqojLAFUJ1tR7g/FuVM4nV7qAl31w09ljJzzcJOsnFfTFDPzuqf5ylWc7vMu2mCXcXUgj7oIuejJVE7SzRhKFjxNHWBxAdNd99c/Gn1WWDmMKmLQ58hbo2AqrA+xtMTb6xp1DoRpBZZa+Q8Y3QHMUpcyJeVYp+pgTosAd0s/RRj0rBHSpRRtAPNkQnbybtsHMoxpp3XePX5HURUT8j4BLUCaH8cFFgXXvbrlb0WdwjRZ+LtqTXfyUm6o7lm9R/LLYBG9FOItUUFs6HcYAbCtP2Cr9unKZZ8G1LM4QTky0DJdeKUhlGNpoWe4AIzpxwbltg3EYtJuBXfGGj+PXPHpHTx1ju2eD6k0oYGvfqycuHhzIBBcL5fSq1pbD6fDJ2IkzNTGNXloHjpjic8sPQ+rJ7ZLlcnCBkQID/g0odYwZyCkLTnBWi2aytj6EFG7Y35200ODKOxJB6Dqy2yzPhRllRC/UQpHO7hPDkB0RPqqIIADAiLb3kciIA3j3YCxcTfD6WayQqBdaa71PYfOK1kLH/BQw/Qw4TIDhG8GlL25KzVEGxLVPtXbG0mGBoo+zsihbj5PzNxKawj0wMSIN27NuWjOF2QRuj1wT9z5L/XIbLXaail2MjBYal8RJeTLNBTiT5qTUPbQKyUcpFcn+SZwYkAe4pAg3hEcqfj2Kt95c2X244qYFInRtBMxQECEqv6f6uPDCZtC7kFcvjkc41Xd3kYfufANgK+KuMbRWfRXcqBWGcb4ALyJIMns6KSDOT8xrOV38gA7awgBdlFLj4Ob1gB8LpOx2yGVljC+JOXrDGsCsW12SBk6juFGf2CtnSLKbwr20d4dlS0bpLJ/POGBi6iVqkFn1pfneBbjP46jAIKJpn28bC042APoZRB3r7WQtgYKuFHGnwN7lv6DrSLgeAt3IvaQwxkAvF+ERiJv5Wn2L8gllS8GbXZz0XhvkdnqRxDY/pIyCuvZ8moKoN8NhLI72UWX+xDcx97CqBRbzIQdJa+aSvwWVd5PvH/kx7qmtw9b2TnIawM5Il0L7ZLDS05E84cXMdg830b6BcgY8wdXqzZkcuqp970U+gMPvBFnktQ1+CdCs91vtrkIPxO+iMR/EJ9Dol+pAGArXM0V5FRjudoCgZEbEOtyreGA4GvFwRo/b5hREHsl04c4apwPPEQ90Yy5zL6X55FJ2dzvscgD9lhM1LmMHuIFedjtvgnOfKI9MIi5j+40LJzeVRkcQMm8+AKYYkmDVZnyGJGDunlJAOTapEp40vpnl55ZB4llKwCaXazwMH1Ih/T9rKwtLbxXQX5fsi+fvfAAh3P2i2NhHo2iqWqT0PCMuvkgIyNYDC24WZAbvqXw0/KTzVLHhdIJpVxCmEsqL19Nq/qPpzztOFPystavbZN1a9eRvo4vCOvW3ZGziBAKGrzcJ26LgAyAO9wuxmyIi8vGk7HvGZCU7iR0OJs/xwYq0pnmK+qDhH+1RO+DO0xfT47KadsORgAL4FdAlfF0Dx13XGe8+r754LhxOqtGfCY+P7jz4boFNmchrI8O6o0kOjya4ibp4orssz1rJPJ5OVm1SpqFLKaEqSEmEOV5uVY6GsdloSNyBD2hgZ/4LOUZUR5Xjhfrm2oXuketlbO7ChL82VBEBir3OiPsaJPDNcx+GXLV7kDlPSWIZvYlBM/HsRfRDgfTw19R0QE6xTs2ysNxqedFrjq6OoZjiXedn3Qls1Lx2mL+5by07XkgnEmKtoD3dGQFCKglwpBkH/tvNxGY/TRJ2hejvfNnM5jVzabkqh9/ECrchI3JIH4hVi/3aTjf5o/xbRing8bh6ZxiKkowYrzloTVrbcsO6m+nTvuTvU63pLy5AmtpyNnTUmvqaP5hzOf8Xsx5B21A9STopsAzUFnOyeBTBO8j9ZZCV8fP7DzwcuiZ+MwWrahKTByWplkpeaoF1aGHTbtn9Oh9PygUGUSmTTN09MXU5hFm3/Wv8GW5QW2QpiOWMAFlebJyBquzE+2CEs8RBcymX+7Qiv6ybSATxgEKQJmwksQWj/XdPzWFbfsvkcvpYDLBofLDmT0MTx0PiGayltGBQgEP4ooF6cUD/DvNKqX2JAWj96zIJDq9CvSpGmuCFM5gnsqDo0fthSvgkbYDEA5ye8cswiUQLuCqP7YDsZztoENTM2IyEfbx66/wW4sdVkETRPpBHQ2Xrvh/j5DbhuQDJcnB5RDDwAEXt2jijw0J3ZiFQjpB/LX88bWV0uCYc2Bsl0G406VS12oZLZ3thdNjGS8sy3SYZx8pK4Wo2CX8m05f5AtqAkchRQTMIgtKY/Z0FrA5toBkJWKc3S6ukK25cKaZ+qNHgqXCgalk39ZFE1ZrRYQhQyl8tNyVIpKOJnQ/W8QfoIwlBKUW7LbRt++GCRkIpKKQNSOmbVhMMm2DdKSg+RR+qObPdmr/geOTIEaD7bc6PcLthMpjx15oe+pxwpOoBtqIVM6HhahG2aIkQfYqU7ofveiMP93F6zUguV6y2lQhCJaOKj3hp8NsldDGqem3sI1MVFd6BRCN1xW0I2w1zoe0DblZpV7YL7Jr0GfBhdp5GNoyT6HRqNF3kE61nKuEeX6uwBWRPfbl1XoIR31tUlj6KT1NSFZsW7GEPpGlWgg2ACOMtypkhT8DHbcGz3HAeXr7/GMaRh2UIRVWw3PjLpbf5hbCdvEaXPo6kyHP+w/ZaFef8p6a+37ToC3svmih2kih4lyfoQ22hLM3pvYkY12VFMtkHOBpTPFd4YEroyDmnp2WZw8TV0JYIaqC1z1K6Geb+aIJyq2koC7oGiZp+a19LbVTb30LiRcbWm1oam1B2HeAOXNVJhQHb/XqjbDv7WdjkALI5qO2Q8EoFlMFtC9eG4N1r1zqCMoBkkeeKeDXSaMrbpCSBYdKZsagpF1CJYSLI5eg0DQYGwU12Mx6OoSd+fbuGkoA5nVjA19o6J3g92g2XtYNuNN3ujr+4i2z7gIkJTqeYK9Egno0ZI3rBTTgxVfu7CK2fNiYvvWhQiXNrXQUxGkf3S53vqzNFRooF+i0037lMEDKLbt+1XppkkVz2xCky35TX1DMynl5bDIdj7mSdEakrftrvgCk+yE5rw/kpItv5V3Z6yk4Og9FV5wvAKHufji9CK2/W3HZsmTIi8i0NlXmJouZGzGNzvdqCYTj39+vv1/73UZP2jzM64UKhRgjU00cHdsKiSN1VOF3PVDmh9ujCeck21NY3TYkJH/9cNt6G5HV4+iTyc5q/mnsMmgf28YdjeHXivh5UpL4Zfki4yNBBeaBgc69bSwa/VEmOVLHy7ohLconkikBfDPpH9734GIp2h+wbxDkfsVXYrsFKwynemFpzE4hKBS9OcwQN4iMStpCvPhyHctWc0Q5Ugdp3T0ee8snMZrRLXjD2xM2aOy9QjFVD7jT6NUdIu0RYJTmdNgvrnzL4WPNfCT8w7CbHWfwQlVOpdxW00LnFQOjDXWSCje47BYPUOi1057I9sRnt6W14UD2RoHQj2bJhpAqsnDSG0lOO7p2EsZ63utMDMbJQLEPva5Qp8vUa0rYXVNHY60pImKaK+BDiNdS20QLd9Cl9Ux/HhNtrGIQshl1Q1ZfIdJHjKshgm7JpLK2kMj/M1m7ZvcVYStVjJ3x/tXO9/ngRizmtkq+cmpa+6mvMCwTnuMl+d5KAXIILm6jr5nyVBcdk9013izZyw+3aoUJv//4CR+Z7jfflTkJZNX0ol+NuXxX55WKq4z5JDCeQIC7jSW5fHKjjz/5WT8t0ckZONNFk+Q/OnP8pDQzAdtlesqE/dhgRccvR0+ao1Zg3TmJ49EUrob5WXaPsJGgtCoQYV31hWMM+G+pXM44IsuOVAI5rC2dfVi444LLZYoA+SzKvtkw3cJ8EzgyHwbu76Eys3ApI1dRZqNNYQ/6vBn/DyXJYBu+HpxGAvTdqThM2vSDdcuYY0CyzXjk3mMsqOIqV++7/f57Ch3oYqz/bMBsAc4AgmB/SmrUbkcSU7gkj7dfoJRFePb9xFSfUM7I3dGmtT6KHz8FDp67NpWxA==";

interface VFServerRow { name: string; data: string; description: string; image: string; }
let _vfProbeCache: VFServerRow[] | null = null;

function vfDeriveKey(header: Buffer): Buffer {
  const h1 = createHash("sha256").update(VF_K1).update(VF_K2).update(VF_K3).digest();
  return createHash("sha256").update(h1).update(header).digest();
}
function vfDecJson(b64: string): any {
  const raw    = Buffer.from(b64, "base64");
  const header = raw.subarray(0, 16);
  const iv     = raw.subarray(16, 28);
  const tag    = raw.subarray(raw.length - 16);
  const enc    = raw.subarray(28, raw.length - 16);
  const d = createDecipheriv("aes-256-gcm", vfDeriveKey(header), iv);
  d.setAuthTag(tag);
  const plain = Buffer.concat([d.update(enc), d.final()]);
  return JSON.parse(plain.subarray(8).toString("utf8"));
}
function vfGetProbe(): VFServerRow[] {
  if (_vfProbeCache) return _vfProbeCache;
  try {
    const json = vfDecJson(VF_PROBE_B64);
    const list: any[] = Array.isArray(json) ? json : (json.servers || []);
    _vfProbeCache = list.map((row: any, i: number) => ({
      name:        row.name        || row.server || `Server ${i + 1}`,
      data:        String(row.data ?? row.id ?? ""),
      description: row.description || "",
      image:       row.image       || "",
    })).filter((r: VFServerRow) => r.data);
  } catch { _vfProbeCache = []; }
  return _vfProbeCache!;
}
async function vfPostStream(data: string, page: string): Promise<string | null> {
  const path = `${VF_PROBE_PREFIX}/${VF_STREAM_PFX}/${data}`.replace(/\/+/g, "/").replace(/^\//, "");
  try {
    const res = await fetch(`${VF_ORIGIN}/${path}`, {
      method : "POST",
      headers: { "User-Agent": VF_UA_VF, "Origin": VF_ORIGIN, "Referer": `${VF_ORIGIN}${page}` },
      signal : AbortSignal.timeout(5_000),
    });
    const text = (await res.text()).trim();
    return (!res.ok || !text || text.startsWith("{")) ? null : text;
  } catch { return null; }
}
async function getVidFastAnimeSources(title: string, english: string | null, ep: number, anilistId?: number): Promise<UnifiedSource[]> {
  const tmdbId = await fetchAnimeTmdbId(english, title, anilistId);
  if (!tmdbId) return [];
  const page    = `/tv/${tmdbId}/1/${ep}`;
  const servers = vfGetProbe();
  if (!servers.length) return [];
  const results: UnifiedSource[] = [];
  const seenVF  = new Set<string>();
  await Promise.allSettled(
    servers.map(async (srv) => {
      const b64 = await vfPostStream(srv.data, page);
      if (!b64) return;
      let url: string;
      try { const j = vfDecJson(b64); url = j.url; if (!url) return; } catch { return; }
      if (seenVF.has(url)) return;
      seenVF.add(url);
      const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(url)}&ref=${encodeURIComponent(VF_ORIGIN + "/")}`;
      results.push({ name: `VidFast · ${srv.name}`, url: proxied, quality: "HD", qualityRank: 10, site: "vidfast", directUrl: proxied, directType: "hls" });
    }),
  );
  return results;
}

// ════════════════════════════════════════════════════════════════════
//  VidSrc.cc + SuperEmbed — TMDB-native embed providers already proven to
//  work for animation (see animation.ts "vidsrc_cc" / "superembed" blocks).
//  Anime titles usually also exist on TMDB as TV shows, so the exact same
//  extraction logic applies here — no new decryption needed, just reused.
//  Both require cfProxy (VPS-local curl_cffi service) since vidsrc.cc/
//  superembed.stream block plain datacenter-IP fetches.
// ════════════════════════════════════════════════════════════════════
async function getVidsrcCcAnimeSources(title: string, english: string | null, ep: number, anilistId?: number): Promise<UnifiedSource[]> {
  const tmdbId = await fetchAnimeTmdbId(english, title, anilistId);
  if (!tmdbId) return [];
  const sources: UnifiedSource[] = [];
  try {
    const embedUrl = `https://vidsrc.cc/v2/embed/tv/${tmdbId}/1/${ep}`;
    let html = "";
    try { html = await cfProxyGet(embedUrl); } catch { return []; }
    if (!html || html.length < 100) return [];

    const dataId = html.match(/data-id=["']([^"']+)["']/)?.[1]
                || html.match(/\/e\/([a-zA-Z0-9]{6,})/)?.[1];
    if (!dataId) return [];

    const srcUrl = `https://vidsrc.cc/v2/sources?id=${dataId}`;
    let srcData: { sources?: Array<{ url?: string; label?: string }> } = {};
    try {
      const srcHtml = await cfProxyGet(srcUrl);
      srcData = JSON.parse(srcHtml);
    } catch { return []; }

    for (const src of (srcData.sources || [])) {
      if (!src?.url) continue;
      const isHls = src.url.includes(".m3u8");
      const proxied = isHls
        ? `/api/anime/hls-proxy?url=${encodeURIComponent(src.url)}&ref=${encodeURIComponent("https://vidsrc.cc/")}`
        : `/api/anime/video-proxy?url=${encodeURIComponent(src.url)}&ref=${encodeURIComponent("https://vidsrc.cc/")}`;
      sources.push({
        name: `VidSrc · ${src.label || "HD"}`, url: src.url, quality: src.label || "HD", qualityRank: 12,
        site: "vidsrc_cc_anim",
        directUrl: proxied,
        directType: isHls ? "hls" : "mp4",
      });
    }
  } catch { /* silent */ }
  return sources;
}

async function getSuperEmbedAnimeSources(title: string, english: string | null, ep: number, anilistId?: number): Promise<UnifiedSource[]> {
  const tmdbId = await fetchAnimeTmdbId(english, title, anilistId);
  if (!tmdbId) return [];
  try {
    const embedUrl = `https://superembed.stream/embed/tv?tmdb=${tmdbId}&season=1&episode=${ep}`;
    let html = "";
    try {
      html = await cfProxyGet(embedUrl);
    } catch {
      const r = await fetch(embedUrl, {
        headers: { "User-Agent": BROWSER_UA, Referer: "https://superembed.stream/" },
        signal: AbortSignal.timeout(12_000),
      });
      if (!r.ok) return [];
      html = await r.text();
    }
    if (!html || html.length < 100) return [];

    const hlsMatch = html.match(/source\s*[:=]\s*["']([^"']+\.m3u8[^"']*)/i)
                  || html.match(/file\s*:\s*["']([^"']+\.m3u8[^"']*)/i)
                  || html.match(/playlist\s*[:=]\s*["']([^"']+\.m3u8[^"']*)/i)
                  || html.match(/["'](https?:\/\/[^"']+\.m3u8[^"']*)/);
    if (!hlsMatch?.[1]) return [];
    const hlsUrl = hlsMatch[1];
    const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(hlsUrl)}&ref=${encodeURIComponent("https://superembed.stream/")}`;
    return [{
      name: "SuperEmbed · HLS", url: hlsUrl, quality: "HD", qualityRank: 12,
      site: "superembed_anim",
      directUrl: proxied, directType: "hls",
    }];
  } catch { return []; }
}

// ════════════════════════════════════════════════════════════════════
//  DULO.TV — multi-provider aggregator (TMDB-native HLS, anime TV)
//  API key: WDNUNBUB3HR983Y9ISBADK4O82
//  Confirmed working providers: vidrock, purstream (tested 2026-07-03)
//  Session cookie expires every 8h → cached in module scope
// ════════════════════════════════════════════════════════════════════
const DULO_BASE    = "https://dulo.tv";
const DULO_API_KEY = "WDNUNBUB3HR983Y9ISBADK4O82";
const DULO_HDRS    = {
  "X-API-Key":     DULO_API_KEY,
  "Authorization": `Bearer ${DULO_API_KEY}`,
  "User-Agent":    BROWSER_UA,
  "Origin":        DULO_BASE,
  "Referer":       `${DULO_BASE}/`,
};

let _duloCookie     = "";
let _duloCookieAt   = 0;
const DULO_SESS_TTL = 7 * 3_600_000; // 7h (server TTL is 8h)

async function getDuloSession(): Promise<string> {
  if (_duloCookie && Date.now() - _duloCookieAt < DULO_SESS_TTL) return _duloCookie;
  try {
    // Dulo.tv محمية بـ Cloudflare — نجلب الـ session عبر Hopx (IP سكني) للحصول على cf_clearance
    const sessionUrl = `${DULO_BASE}/api/session`;
    const hopxR = await hopxProxyGet(sessionUrl, `${DULO_BASE}/`, 15_000);
    // hopxProxyGet يُرجع body فقط — نحتاج headers؛ نجرب plain fetch أيضاً
    const r = await fetch(sessionUrl, {
      headers: DULO_HDRS,
      signal:  AbortSignal.timeout(8_000),
    });
    const raw = r.headers.get("set-cookie") || "";
    const cookie = raw.split(";")[0].trim();
    if (cookie) { _duloCookie = cookie; _duloCookieAt = Date.now(); }
  } catch { /* use existing */ }
  return _duloCookie;
}

// Anime TV providers confirmed working from VPS (2026-07-03)
const DULO_ANIME_PROVIDERS = ["vidrock", "purstream"];

async function getDuloAnimeSources(title: string, english: string | null, ep: number, anilistId?: number): Promise<UnifiedSource[]> {
  const tmdbId = await fetchAnimeTmdbId(english, title, anilistId);
  if (!tmdbId) return [];

  const cookie  = await getDuloSession();
  const sources: UnifiedSource[] = [];

  const DULO_PROBE_PORT = parseInt(String(process.env.PORT || 5000), 10);
  await Promise.allSettled(DULO_ANIME_PROVIDERS.map(async (prov) => {
    try {
      const url = `${DULO_BASE}/api/sources/call?type=tv&provider=${prov}&tmdb=${tmdbId}&season=1&episode=${ep}`;
      // Cloudflare يحجب VPS على هذا endpoint — نمرّ عبر Hopx (IP سكني)
      const hopxResp = await hopxProxyGet(url, `${DULO_BASE}/`, 18_000);
      const r = hopxResp ?? await fetch(url, {
        headers: { ...DULO_HDRS, ...(cookie ? { Cookie: cookie } : {}) },
        signal:  AbortSignal.timeout(14_000),
      });
      if (!r.ok) return;
      const data = await r.json() as { sources?: Array<{ url: string; type?: string; title?: string }> };
      for (const src of (data.sources ?? [])) {
        if (!src.url) continue;
        const isHls = (src.type || "").toLowerCase() === "hls" || src.url.includes(".m3u8");
        if (!isHls) continue; // skip non-HLS (mp4 usually needs special auth headers)
        const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(src.url)}&ref=${encodeURIComponent(DULO_BASE + "/")}`;
        const label = `Dulo · ${prov}${src.title ? " · " + src.title : ""}`;
        // كل المصادر تمر عبر hls-proxy → CF Worker يُضيف Referer
        sources.push({
          name: label, url: proxied, quality: "HD", qualityRank: 11,
          site: "dulo_anim", directUrl: proxied, directType: "hls",
        });
      }
    } catch { /* silent per provider */ }
  }));

  return sources;
}

// ════════════════════════════════════════════════════════════════════
//  CineSrc (cinesrc.st, TMDB-native, 15 providers, multi-quality HLS)
//  يعمل كـ microservice على VPS (CINESRC_BASE=http://localhost:13004)
// ════════════════════════════════════════════════════════════════════
async function getCineSrcAnimeSources(title: string, english: string | null, ep: number, anilistId?: number): Promise<UnifiedSource[]> {
  const CINESRC_BASE = process.env.CINESRC_BASE;
  if (!CINESRC_BASE) return [];
  const tmdbId = await fetchAnimeTmdbId(english, title, anilistId);
  if (!tmdbId) return [];
  const CS_ORIGIN = "https://cinesrc.st";

  try {
    const catRes = await fetch(
      `${CINESRC_BASE}/api/catalog?id=${tmdbId}&type=tv&season=1&episode=${ep}`,
      { signal: AbortSignal.timeout(10_000) },
    );
    if (!catRes.ok) return [];
    const catalog: any = await catRes.json();
    const providers: Array<{ id: string; name: string }> = Array.isArray(catalog.providers) ? catalog.providers : [];
    if (!providers.length) return [];

    const sources: UnifiedSource[] = [];
    const seenCS = new Set<string>();
    await Promise.allSettled(
      providers.slice(0, 8).map(async (p) => {
        try {
          const r = await fetch(
            `${CINESRC_BASE}/api/stream/provider?id=${tmdbId}&type=tv&season=1&episode=${ep}&provider=${p.id}`,
            { signal: AbortSignal.timeout(30_000) },
          );
          if (!r.ok) return;
          const data: any = await r.json();
          if (!data.ok || !data.url || seenCS.has(data.url)) return;
          seenCS.add(data.url);
          const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(data.url)}&ref=${encodeURIComponent(CS_ORIGIN + "/")}`;
          sources.push({
            name: `CineSrc · ${p.name}`,
            url: proxied,
            quality: "HD",
            qualityRank: 12,
            site: "cinesrc_anim",
            directUrl: proxied,
            directType: "hls",
          });
        } catch { /* silent */ }
      }),
    );
    return sources;
  } catch { return []; }
}

// ════════════════════════════════════════════════════════════════════
//  MovieBox (h5-api.aoneroom.com) — Direct MP4, صوت خام, بدون ترجمة مدمجة
//  المصدر: https://github.com/Simatwa/moviebox-api
//  Auth: JWT عبر search-suggest (صالح 90 يوم) + cookies
//  Search → POST /wefeed-h5api-bff/subject/search
//  Download → GET /wefeed-h5api-bff/subject/download
// ════════════════════════════════════════════════════════════════════

const MBX_API    = "https://h5-api.aoneroom.com";
const MBX_REF    = "https://videodownloader.site/";
const MBX_UA     = "Mozilla/5.0 (X11; Linux x86_64; rv:137.0) Gecko/20100101 Firefox/137.0";
const MBX_SUGGEST  = `${MBX_API}/wefeed-h5api-bff/subject/search-suggest`;
const MBX_SEARCH   = `${MBX_API}/wefeed-h5api-bff/subject/search`;
const MBX_DOWNLOAD = `${MBX_API}/wefeed-h5api-bff/subject/download`;
const MBX_TOKEN_TTL = 7 * 24 * 3_600_000; // تجديد كل 7 أيام (صالح 90 يوماً)

// أنماط المدبلج — نستبعد النتائج التي تحتوي عليها (مع أو بدون أقواس)
const MBX_DUBBED_RE = /(?:\[\s*|\b)(?:hindi|arabic|tamil|telugu|spanish|french|portuguese|korean|turkish|urdu|norwegian|italian|german|dual[\s-]?audio|dubbed|dub)(?:\s*\]|\b)/i;

interface MbxAuth { token: string; cookies: string; fetchedAt: number; }
let _mbxAuth: MbxAuth | null = null;
let _mbxAuthPending: Promise<{ token: string; cookies: string } | null> | null = null;

async function getMbxAuth(): Promise<{ token: string; cookies: string } | null> {
  const now = Date.now();
  if (_mbxAuth && now - _mbxAuth.fetchedAt < MBX_TOKEN_TTL) {
    return { token: _mbxAuth.token, cookies: _mbxAuth.cookies };
  }
  // حارس: تجنّب إرسال طلبات auth متعددة في آنٍ واحد (race condition)
  if (_mbxAuthPending) return _mbxAuthPending;
  _mbxAuthPending = (async () => {
    try {
      const r = await fetch(MBX_SUGGEST, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
          "User-Agent": MBX_UA,
          "Referer": MBX_REF,
        },
        body: JSON.stringify({ keyword: "avatar", perPage: 0 }),
        signal: AbortSignal.timeout(12_000),
      });
      if (!r.ok) return null;
      const xUser = r.headers.get("x-user");
      if (!xUser) return null;
      const userInfo = JSON.parse(xUser);
      const setCookies = r.headers.getSetCookie?.() ?? [];
      const cookies = setCookies.map((c: string) => c.split(";")[0]).filter(Boolean).join("; ");
      _mbxAuth = { token: userInfo.token, cookies, fetchedAt: Date.now() };
      return { token: userInfo.token, cookies };
    } catch { return null; }
    finally { _mbxAuthPending = null; }
  })();
  return _mbxAuthPending;
}

async function getMovieBoxAnimeSources(
  title: string,
  english: string | null,
  ep: number,
  isMovie: boolean,
): Promise<UnifiedSource[]> {
  const auth = await getMbxAuth();
  if (!auth) return [];

  const { token, cookies } = auth;
  const hdrs: Record<string, string> = {
    "Accept": "application/json",
    "User-Agent": MBX_UA,
    "Referer": MBX_REF,
    "Authorization": `Bearer ${token}`,
    "Cookie": cookies,
  };

  // استخرج رقم الموسم من العنوان (Season 2 / الموسم الثاني ...)
  const seasonNum = extractSeasonNum(english || "") ?? extractSeasonNum(title) ?? 1;
  const query = english || title;

  try {
    // ── 1. بحث ──
    const sr = await fetch(MBX_SEARCH, {
      method: "POST",
      headers: { ...hdrs, "Content-Type": "application/json" },
      body: JSON.stringify({ keyword: query, page: 1, perPage: 12, subjectType: 0 }),
      signal: AbortSignal.timeout(10_000),
    });
    if (!sr.ok) return [];
    const sData: any = await sr.json();
    const items: any[] = sData?.data?.items || [];
    if (!items.length) return [];

    // بناء قائمة مرشحين مرتّبة: الأصلي (non-dubbed + نوع صحيح) أولاً، ثم fallback
    const qLow = query.toLowerCase();
    const expectedType = isMovie ? 1 : 2;

    function rankMbx(list: any[]): any[] {
      return [...list].sort((a: any, b: any) => {
        const aHit = (a.title || "").toLowerCase().includes(qLow) ? 1 : 0;
        const bHit = (b.title || "").toLowerCase().includes(qLow) ? 1 : 0;
        return bHit - aHit;
      });
    }
    const isDub = (it: any) => MBX_DUBBED_RE.test(it.title || "");
    const isTyped = (it: any) => it.subjectType === expectedType;

    const mp1 = rankMbx(items.filter((it: any) => !isDub(it) && isTyped(it)));
    const mp2 = rankMbx(items.filter((it: any) => !isDub(it) && !mp1.includes(it)));
    const mp3 = rankMbx(items.filter((it: any) => isDub(it)));
    const orderedCandidates = [...mp1, ...mp2, ...mp3];

    // ── 2. روابط التحميل — جرّب كل candidate حتى تجد streams فعلية ──
    const se = isMovie ? 0 : seasonNum;
    const epParam = isMovie ? 0 : ep;

    let downloads: any[] = [];
    for (const candidate of orderedCandidates.slice(0, 4)) {
      if (!candidate?.subjectId || !candidate?.detailPath) continue;
      try {
        const dr = await fetch(
          `${MBX_DOWNLOAD}?subjectId=${encodeURIComponent(candidate.subjectId)}&se=${se}&ep=${epParam}&detailPath=${encodeURIComponent(candidate.detailPath)}`,
          { headers: hdrs, signal: AbortSignal.timeout(10_000) },
        );
        if (!dr.ok) continue;
        const dData: any = await dr.json();
        const dls: any[] = (dData?.data?.downloads || []).filter((d: any) => d.url && Number(d.resolution) > 0);
        if (dls.length) { downloads = dls; break; }
      } catch { continue; }
    }
    if (!downloads.length) return [];

    // رتّب تنازلياً حسب الدقة
    downloads.sort((a: any, b: any) => (b.resolution || 0) - (a.resolution || 0));

    const sources: UnifiedSource[] = [];
    for (const dl of downloads.slice(0, 3)) {
      const res = Number(dl.resolution) || 0;
      if (!dl.url || res <= 0) continue;
      const qualityRank = res >= 1080 ? 14 : res >= 720 ? 13 : 11;
      const qualityLabel = res >= 1080 ? "FHD" : res >= 720 ? "HD" : "SD";
      sources.push({
        name: `MovieBox · ${res}p`,
        url: `/api/anime/video-proxy?url=${encodeURIComponent(String(dl.url))}&ref=${encodeURIComponent(MBX_REF)}`,
        quality: qualityLabel,
        qualityRank,
        site: "moviebox",
        directUrl: `/api/anime/video-proxy?url=${encodeURIComponent(String(dl.url))}&ref=${encodeURIComponent(MBX_REF)}`,
        directType: "mp4",
        // CF Worker يُضيف Referer تلقائياً — لا حاجة لحقل headers
        // ملاحظة: لا subtitleUrl — صوت خام بدون ترجمة مدمجة
      });
    }
    return sources;
  } catch { return []; }
}


//  FASELHD-DB — GitHub JSON catalog + Orkestr relay for pages
//  Repo: github.com/Ahmd3301/faselhd-db (auto-updated, 1864+ anime)
//  Base: www.fasel-hd.cam — CF-protected (403 from Replit direct)
//  Access: Orkestr EU relay (200 OK, HTML 107KB+)
//  Catalog: GitHub raw JSON (no auth, no CF, instant)
//  Video: download links from episode page → parseVideoUrl via Orkestr
// ════════════════════════════════════════════════════════════════════

const FASELHD_DB_RAW  = "https://raw.githubusercontent.com/Ahmd3301/faselhd-db/main/output";
const FASELHD_DB_BASE = "https://www.fasel-hd.cam";

// In-memory cache for GitHub JSON sections (30-min TTL)
const _faselhdDbCache = new Map<string, { ts: number; items: any[] }>();
const FASELHD_DB_TTL  = 30 * 60_000;
const _faselhdDbPending = new Map<string, Promise<any[]>>();

async function faselhdDbFetchSection(section: string): Promise<any[]> {
  const now    = Date.now();
  const cached = _faselhdDbCache.get(section);
  if (cached && now - cached.ts < FASELHD_DB_TTL) return cached.items;

  // Deduplicate concurrent fetches for the same section
  const pending = _faselhdDbPending.get(section);
  if (pending) return pending;

  const promise: Promise<any[]> = (async () => {
    try {
      const r = await fetch(`${FASELHD_DB_RAW}/${section}.json`, {
        headers: { "User-Agent": "NovaBot/1.0", Accept: "application/json" },
        signal:  AbortSignal.timeout(25_000),
      });
      if (!r.ok) return cached?.items ?? [];
      const data = await r.json() as { items: any[] };
      const items = data.items ?? [];
      _faselhdDbCache.set(section, { ts: Date.now(), items });
      console.log(`[FaselhdDB] cached ${items.length} items for section "${section}"`);
      return items;
    } catch (e: any) {
      console.warn(`[FaselhdDB] fetch ${section} failed:`, e?.message);
      return cached?.items ?? [];
    } finally {
      _faselhdDbPending.delete(section);
    }
  })();
  _faselhdDbPending.set(section, promise);
  return promise;
}

/**
 * Strip common Arabic prefixes and season suffixes from FaselHD item names
 * so they can be compared to AniList romaji/english titles.
 * "انمي Naruto: Shippuuden الموسم الثالث" → "Naruto: Shippuuden"
 */
function faselhdStripName(name: string): string {
  return name
    .replace(/^(?:انمي|أنمي|اونا|فيلم|أنمى)\s+/u, "")
    .replace(/\s+(?:الموسم|الجزء)\s+\S+.*$/u, "")
    .trim();
}

async function getFaselhdDbSources(
  title: string, english: string | null, ep: number, isMovie?: boolean,
): Promise<UnifiedSource[]> {
  const out: UnifiedSource[] = [];
  try {
    // 1. Determine which GitHub JSON sections to search
    const sections = isMovie ? ["anime-movies"] : ["anime"];

    // 2. Fetch (cached) GitHub JSON
    const allItems: any[] = [];
    for (const sec of sections) {
      const items = await faselhdDbFetchSection(sec);
      allItems.push(...items);
    }
    if (!allItems.length) return out;

    // 3. Title-match: romaji / english vs item name (after stripping Arabic prefix)
    const q1 = normalize(english || title || "");
    const q2 = normalize(title || "");
    const scored = allItems.map(item => {
      const clean  = faselhdStripName(item.name || "");
      const slug   = (item.slug || "").replace(/-/g, " ");
      const sc = Math.max(
        similarity(q1, normalize(clean)),
        similarity(q2, normalize(clean)),
        asciiSimilarity(slug, q1),
        asciiSimilarity(slug, q2),
      );
      return { ...item, _sc: sc };
    })
    .filter(x => x._sc > 0.42)
    .sort((a, b) => b._sc - a._sc);

    if (!scored.length) return out;
    const best = scored[0];
    console.log(`[FaselhdDB] best match: "${best.name}" (score ${best._sc.toFixed(2)}) → ${best.link}`);

    // 4. Fetch series/movie page — cfProxy → direct fetch → hopx (fasel-hd.cam محجوب من VPS أحياناً)
    let pageHtml = await cfProxyGet(best.link, `${FASELHD_DB_BASE}/`, 22_000);
    if (!pageHtml || pageHtml.length < 1000 || isCloudflareBlock(pageHtml)) {
      try {
        const dr = await fetch(best.link, {
          headers: { "User-Agent": UA, "Referer": FASELHD_DB_BASE + "/" },
          signal: AbortSignal.timeout(15_000),
        });
        if (dr.ok) { const t = await dr.text(); if (!isCloudflareBlock(t)) pageHtml = t; }
      } catch { /* silent */ }
    }
    if (!pageHtml || pageHtml.length < 1000 || isCloudflareBlock(pageHtml)) {
      pageHtml = await hopxProxyGet(best.link, `${FASELHD_DB_BASE}/`, 20_000).catch(() => null);
    }
    if (!pageHtml || pageHtml.length < 1000) return out;
    if (isCloudflareBlock(pageHtml)) return out;

    let epHtml: string | null;
    // يُستخدم كـ url1 في chain-fetch لتأسيس session cookies قبل جلب player URL
    let epPageUrl: string = best.link;

    if (isMovie) {
      // Movie: the series page IS the content page
      epHtml = pageHtml;
    } else {
      // 5a. Parse epAll div for episode links
      //     Pattern: href="https://www.fasel-hd.cam/anime-episodes/slug-الحلقة-ID">الحلقة N</a>
      const epLinks: Array<{ url: string; num: number }> = [];
      const epRe = /href="(https:\/\/www\.fasel-hd\.cam\/anime-episodes\/[^"]+)"[^>]*>\s*الحلقة\s*(\d+)/g;
      let m: RegExpExecArray | null;
      while ((m = epRe.exec(pageHtml)) !== null) {
        epLinks.push({ url: m[1], num: parseInt(m[2]) });
      }

      if (!epLinks.length) {
        console.warn(`[FaselhdDB] no episode links found on ${best.link}`);
        return out;
      }

      const target = epLinks.find(e => e.num === ep);
      if (!target) {
        console.warn(`[FaselhdDB] ep ${ep} not found (found: ${epLinks.map(e=>e.num).join(",")})`);
        return out;
      }

      // 5b. Fetch episode page — cfProxy أولاً، ثم direct fetch
      epPageUrl = target.url; // نحفظه لاستخدامه في chain-fetch لاحقاً
      epHtml = await cfProxyGet(target.url, best.link, 22_000);
      if (!epHtml || epHtml.length < 1000 || isCloudflareBlock(epHtml)) {
        try {
          const er = await fetch(target.url, {
            headers: { "User-Agent": UA, "Referer": best.link },
            signal: AbortSignal.timeout(15_000),
          });
          if (er.ok) { const t = await er.text(); if (!isCloudflareBlock(t)) epHtml = t; }
        } catch { /* silent */ }
      }
      if (!epHtml || epHtml.length < 1000 || isCloudflareBlock(epHtml)) {
        epHtml = await hopxProxyGet(target.url, best.link, 20_000).catch(() => null);
      }
      if (!epHtml || epHtml.length < 1000) return out;
    }

    // 6. Extract all download link hrefs from the episode page
    const dlLinks: string[] = [];
    const dlRe = /class="downloadLinks[^"]*"[\s\S]*?<a\s+href="([^"]{10,})"[^>]*>/g;
    let dlM: RegExpExecArray | null;
    while ((dlM = dlRe.exec(epHtml!)) !== null) {
      dlLinks.push(dlM[1]);
    }

    // 7. Also try video_player token URLs via Orkestr
    const playerTokens: string[] = [];
    const tokenRe = /video_player\?player_token=([^"'&\s]{20,})/g;
    let tkM: RegExpExecArray | null;
    while ((tkM = tokenRe.exec(epHtml!)) !== null) {
      playerTokens.push(`${FASELHD_DB_BASE}/video_player?player_token=${tkM[1]}`);
    }

    // 8. Try download links: fetch via CF proxy → parse for direct video
    const dlAttempts = dlLinks.slice(0, 4).map(async (dlUrl): Promise<UnifiedSource | null> => {
      try {
        const dlHtml = await cfProxyGet(dlUrl, best.link, 12_000);
        if (!dlHtml || dlHtml.length < 100) return null;
        const video = parseVideoUrl(dlHtml);
        if (!video || !video.url.startsWith("http")) return null;
        const faRef = encodeURIComponent(dlUrl);
        const directUrl = video.type === "hls"
          ? `/api/anime/hls-proxy?url=${encodeURIComponent(video.url)}&ref=${faRef}`
          : `/api/anime/video-proxy?url=${encodeURIComponent(video.url)}&ref=${faRef}`;
        return {
          name: `FaselHD · ${isMovie ? "فيلم" : `ح${ep}`} · HD`,
          url:  video.url,
          quality: "HD",
          qualityRank: 10,
          site: "faselhd_db",
          directUrl,
          directType: video.type,
        };
      } catch { return null; }
    });

    // 9. Try video_player token pages:
    //    الأولوية: hopxBrowserExtract (Playwright — ينفّذ JS ويعترض طلبات .m3u8)
    //    fallback:  cfProxyChainFetch + parseVideoUrl (إذا browser غير متاح)
    const playerAttempts = playerTokens.slice(0, 2).map(async (pUrl): Promise<UnifiedSource | null> => {
      try {
        // ① محاولة المتصفح الكامل (Playwright داخل Hopx sandbox)
        const browserVideo = await hopxBrowserExtract(pUrl, FASELHD_DB_BASE + "/", 22_000);
        if (browserVideo?.url.startsWith("http")) {
          const faRef = encodeURIComponent(pUrl);
          const directUrl = browserVideo.type === "hls"
            ? `/api/anime/hls-proxy?url=${encodeURIComponent(browserVideo.url)}&ref=${faRef}`
            : `/api/anime/video-proxy?url=${encodeURIComponent(browserVideo.url)}&ref=${faRef}`;
          console.log(`[FaselhdDB] browser-extract → ${browserVideo.url.slice(0, 80)}`);
          return {
            name: `FaselHD · ${isMovie ? "فيلم" : `ح${ep}`} · JW`,
            url:  browserVideo.url,
            quality: "HD",
            qualityRank: 9,
            site: "faselhd_db",
            directUrl,
            directType: browserVideo.type,
          };
        }

        // ② fallback: chain-fetch + parseVideoUrl (static HTML)
        let pHtml = await cfProxyChainFetch(epPageUrl, pUrl, best.link, 18_000);
        if (!pHtml || pHtml.length < 100 || (pHtml.includes("Token Expired") && pHtml.length < 50)) {
          pHtml = await cfProxyGet(pUrl, best.link, 15_000);
        }
        if (!pHtml || pHtml.length < 100) return null;
        if (pHtml.trim() === "Token Expired!" || pHtml.length < 20) return null;
        const video = parseVideoUrl(pHtml);
        if (!video || !video.url.startsWith("http")) return null;
        const faRef = encodeURIComponent(pUrl);
        const directUrl = video.type === "hls"
          ? `/api/anime/hls-proxy?url=${encodeURIComponent(video.url)}&ref=${faRef}`
          : `/api/anime/video-proxy?url=${encodeURIComponent(video.url)}&ref=${faRef}`;
        return {
          name: `FaselHD · ${isMovie ? "فيلم" : `ح${ep}`} · JW`,
          url:  video.url,
          quality: "HD",
          qualityRank: 9,
          site: "faselhd_db",
          directUrl,
          directType: video.type,
        };
      } catch { return null; }
    });

    const settled = await Promise.allSettled([...dlAttempts, ...playerAttempts]);
    for (const r of settled) {
      if (r.status === "fulfilled" && r.value) out.push(r.value);
    }

    // Fallback: إذا لم ينجح أي extraction، أضف player token URL + download link مباشرة
    if (out.length === 0) {
      // Player token iframes — embed في المتصفح
      for (const pUrl of playerTokens.slice(0, 2)) {
        out.push({
          name: `FaselHD · ${isMovie ? "فيلم" : `ح${ep}`} · Player`,
          url: pUrl,
          quality: "HD",
          qualityRank: 8,
          site: "faselhd_db",
          isEmbed: true, // صفحة iframe (video_player?player_token=) — ليست ملف فيديو مباشر
        });
      }
      // Download links — T7meel
      for (const dlUrl of dlLinks.slice(0, 1)) {
        out.push({
          name: `FaselHD · ${isMovie ? "فيلم" : `ح${ep}`} · تحميل`,
          url: dlUrl,
          quality: "HD",
          qualityRank: 6,
          site: "faselhd_db",
          isEmbed: true, // صفحة تحميل وسيطة — ليست ملف فيديو مباشر
        });
      }
    }

  } catch (e: any) {
    console.warn("[FaselhdDB]", e?.message);
  }
  return out;
}

// Pre-warm the anime section cache on startup (non-blocking)
setImmediate(() => {
  faselhdDbFetchSection("anime").catch(() => {});
});

// ════════════════════════════════════════════════════════════════════
//  ANIZONE (anizone.to) — صوت ياباني + ترجمة عربية/إنجليزية ناعمة
//  API REST مباشر — لا scraping HTML ثقيل
//  Search → GET /search?keyword=   Episodes → GET /api/anime/{id}/episodes
//  Stream  → GET /api/episode/{epId}/sources
// ════════════════════════════════════════════════════════════════════
const ANIZONE_BASE = "https://anizone.to";
const anizoneSlugCache = new Map<string, { id: string | null; ts: number }>();
const ANIZONE_SLUG_TTL = 12 * 3_600_000;

async function searchAniZone(
  query: string,
): Promise<Array<{ id: string; title: string }>> {
  const r = await fetch(
    `${ANIZONE_BASE}/search?keyword=${encodeURIComponent(query)}`,
    {
      headers: { "User-Agent": BROWSER_UA, Referer: ANIZONE_BASE + "/" },
      signal: AbortSignal.timeout(12000),
    },
  );
  if (!r.ok) return [];
  const html = await r.text();
  const results: Array<{ id: string; title: string }> = [];
  const seen = new Set<string>();
  // Match anime cards: href="/anime/<slug>"
  for (const m of html.matchAll(
    /href=["']\/anime\/([^"'/?#]+)["'][^>]*>[\s\S]{0,300}?<[^>]+class=["'][^"']*(?:title|name)[^"']*["'][^>]*>([\s\S]*?)<\//gi,
  )) {
    const id = m[1].trim();
    const title = m[2].replace(/<[^>]+>/g, "").trim();
    if (id && title && !seen.has(id)) {
      seen.add(id);
      results.push({ id, title });
    }
  }
  // Fallback: any href="/anime/<slug>" + nearby text
  if (!results.length) {
    for (const m of html.matchAll(/href=["']\/anime\/([^"'/?#]+)["']/gi)) {
      const id = m[1].trim();
      if (!seen.has(id)) { seen.add(id); results.push({ id, title: id.replace(/-/g, " ") }); }
    }
  }
  return results;
}

async function getAniZoneSources(
  title: string,
  english: string | null,
  ep: number,
): Promise<UnifiedSource[]> {
  return []; // anizone.to: /search endpoint → 404, /livewire/update → 404 (2026-07)
  try {
    const ck = `anizone:${(english || title).toLowerCase()}`;
    const cached = anizoneSlugCache.get(ck);
    let animeId: string | null = null;
    if (cached && Date.now() - cached.ts < ANIZONE_SLUG_TTL) {
      animeId = cached.id;
    } else {
      const queries = [...new Set([english, title].filter(Boolean) as string[])];
      for (const q of queries) {
        const results = await searchAniZone(q);
        if (!results.length) continue;
        let bestId: string | null = null;
        let bestSc = 0;
        for (const r of results) {
          const sc = Math.max(
            similarity(r.title.toLowerCase(), title.toLowerCase()),
            english ? similarity(r.title.toLowerCase(), english.toLowerCase()) : 0,
            asciiSimilarity(r.id, title),
            english ? asciiSimilarity(r.id, english) : 0,
          );
          if (sc > bestSc) { bestSc = sc; bestId = r.id; }
        }
        if (bestId && bestSc >= 0.3) { animeId = bestId; break; }
      }
      anizoneSlugCache.set(ck, { id: animeId, ts: Date.now() });
    }
    if (!animeId) return [];

    // جلب قائمة الحلقات
    const epR = await fetch(`${ANIZONE_BASE}/api/anime/${animeId}/episodes`, {
      headers: {
        "User-Agent": BROWSER_UA,
        Referer: `${ANIZONE_BASE}/anime/${animeId}`,
        Accept: "application/json",
      },
      signal: AbortSignal.timeout(10000),
    });
    if (!epR.ok) return [];
    const epData = (await epR.json()) as {
      episodes?: Array<{ number?: number; id?: string; slug?: string }>;
      data?: Array<{ number?: number; id?: string; slug?: string }>;
    };
    const epList = epData.episodes ?? epData.data ?? [];
    const epEntry = epList.find(
      e => Number(e.number) === ep || Number(e.slug) === ep,
    );
    if (!epEntry?.id) return [];

    // جلب مصادر الحلقة
    const srcR = await fetch(
      `${ANIZONE_BASE}/api/episode/${epEntry.id}/sources`,
      {
        headers: {
          "User-Agent": BROWSER_UA,
          Referer: `${ANIZONE_BASE}/anime/${animeId}`,
          Accept: "application/json",
        },
        signal: AbortSignal.timeout(10000),
      },
    );
    if (!srcR.ok) return [];
    const srcData = (await srcR.json()) as {
      sources?: Array<{ file: string; label?: string; type?: string }>;
      subtitles?: Array<{ file: string; label?: string; kind?: string }>;
    };
    if (!srcData.sources?.length) return [];

    // ترجمة: أولوية للعربية، ثم الإنجليزية مع translate-vtt
    const arSub = srcData.subtitles?.find(
      s => (s.label || "").toLowerCase().includes("arab") ||
           (s.label || "").toLowerCase() === "ar",
    );
    const enSub = srcData.subtitles?.find(
      s => (s.label || "").toLowerCase().includes("engl") ||
           (s.label || "").toLowerCase() === "en",
    );
    const rawSubFile = arSub?.file ?? enSub?.file;
    const subtitleUrl = rawSubFile
      ? arSub
        ? rawSubFile
        : `/api/anime/translate-vtt?url=${encodeURIComponent(rawSubFile)}&from=en&to=ar`
      : undefined;

    const sources: UnifiedSource[] = [];
    for (const src of srcData.sources) {
      if (!src.file?.startsWith("http")) continue;
      const isHls = src.type === "hls" || src.file.includes(".m3u8");
      const proxied = isHls
        ? `/api/anime/hls-proxy?url=${encodeURIComponent(src.file)}&ref=${encodeURIComponent(ANIZONE_BASE + "/")}`
        : `/api/anime/video-proxy?url=${encodeURIComponent(src.file)}&ref=${encodeURIComponent(ANIZONE_BASE + "/")}`;
      sources.push({
        name: `AniZone · ${src.label || "HD"} · ياباني مترجم`,
        url: src.file,
        quality: src.label || "1080p",
        qualityRank: 9,
        site: "anizone",
        directUrl: proxied,
        directType: isHls ? "hls" : "mp4",
        subtitleUrl,
        corsOk: false,
      } as UnifiedSource);
    }
    console.log(`[AniZone] "${english || title}" ep${ep} → ${sources.length} sources`);
    return sources;
  } catch (e: any) {
    console.warn("[AniZone]", e?.message);
    return [];
  }
}

// ════════════════════════════════════════════════════════════════════
//  2DHIVE (2dhive.com) — صوت ياباني خام، بدون ترجمة مدمجة
//  WordPress AJAX: action=z_ajax_search | action=get_player_links
//  Embeds → FileMoon / StreamWish → parseFilemoon / parseStreamwish
// ════════════════════════════════════════════════════════════════════
const DHIVE_BASE = "https://2dhive.com";
const dhiveSlugCache = new Map<string, { slug: string | null; ts: number }>();
const DHIVE_SLUG_TTL = 12 * 3_600_000;

async function search2Dhive(
  term: string,
): Promise<Array<{ slug: string; title: string }>> {
  const body = new URLSearchParams({ action: "z_ajax_search", term });
  const r = await fetch(`${DHIVE_BASE}/wp-admin/admin-ajax.php`, {
    method: "POST",
    headers: {
      "User-Agent": BROWSER_UA,
      Referer: DHIVE_BASE + "/",
      "X-Requested-With": "XMLHttpRequest",
      "Content-Type": "application/x-www-form-urlencoded",
    },
    body: body.toString(),
    signal: AbortSignal.timeout(10000),
  });
  if (!r.ok) return [];
  let data: any;
  try { data = await r.json(); } catch { return []; }
  if (!Array.isArray(data)) return [];
  return data
    .filter((d: any) => d.slug || d.url || d.link)
    .map((d: any) => ({
      slug:
        d.slug ||
        String(d.url || d.link || "")
          .split("/")
          .filter(Boolean)
          .pop() ||
        "",
      title: String(d.title || d.name || d.slug || ""),
    }))
    .filter(d => d.slug);
}

async function get2DhiveSources(
  title: string,
  english: string | null,
  ep: number,
): Promise<UnifiedSource[]> {
  return []; // 2dhive: wp-admin/admin-ajax.php → 404 (site restructured 2026-07)
  try {
    const ck = `2dhive:${(english || title).toLowerCase()}`;
    const cached = dhiveSlugCache.get(ck);
    let slug: string | null = null;
    if (cached && Date.now() - cached.ts < DHIVE_SLUG_TTL) {
      slug = cached.slug;
    } else {
      const queries = [...new Set([english, title].filter(Boolean) as string[])];
      for (const q of queries) {
        const results = await search2Dhive(q);
        if (!results.length) continue;
        let best: string | null = null;
        let bestSc = 0;
        for (const r of results) {
          const sc = Math.max(
            similarity(r.title.toLowerCase(), title.toLowerCase()),
            english ? similarity(r.title.toLowerCase(), english.toLowerCase()) : 0,
            asciiSimilarity(r.slug, title),
            english ? asciiSimilarity(r.slug, english) : 0,
          );
          if (sc > bestSc) { bestSc = sc; best = r.slug; }
        }
        if (best && bestSc >= 0.28) { slug = best; break; }
      }
      dhiveSlugCache.set(ck, { slug, ts: Date.now() });
    }
    if (!slug) return [];

    // محاولة تحديد رابط الحلقة بصيغ مختلفة
    const epPad = String(ep).padStart(2, "0");
    const variants = [
      `${slug}-episode-${epPad}`,
      `${slug}-episode-${ep}`,
      `${slug}-ep-${ep}`,
      `${slug}-${epPad}`,
    ];

    let postId: string | null = null;
    let epPageUrl = "";
    for (const v of variants) {
      const url = `${DHIVE_BASE}/episode/${v}/`;
      try {
        const r = await fetch(url, {
          headers: { "User-Agent": BROWSER_UA, Referer: DHIVE_BASE + "/" },
          signal: AbortSignal.timeout(8000),
          redirect: "follow",
        });
        if (!r.ok) continue;
        const html = await r.text();
        const idM =
          html.match(/['"](post_id|postID)['"]\s*[:=,]\s*['"]?(\d+)/i) ??
          html.match(/<article\b[^>]+id=["']post-(\d+)["']/i) ??
          html.match(/"post"\s*:\s*\{\s*"id"\s*:\s*(\d+)/i) ??
          html.match(/data-(?:postid|post-id|id)=["'](\d+)["']/i);
        if (idM) {
          postId = idM[idM.length - 1]; // آخر capture group هو الـ ID
          epPageUrl = r.url; // قد يكون redirect
          break;
        }
      } catch { /* جرّب الصيغة التالية */ }
    }
    if (!postId) return [];

    // طلب روابط التشغيل
    const lBody = new URLSearchParams({ action: "get_player_links", episode_id: postId });
    const lr = await fetch(`${DHIVE_BASE}/wp-admin/admin-ajax.php`, {
      method: "POST",
      headers: {
        "User-Agent": BROWSER_UA,
        Referer: epPageUrl || DHIVE_BASE + "/",
        "X-Requested-With": "XMLHttpRequest",
        "Content-Type": "application/x-www-form-urlencoded",
      },
      body: lBody.toString(),
      signal: AbortSignal.timeout(10000),
    });
    if (!lr.ok) return [];
    let ldata: any;
    try { ldata = await lr.json(); } catch { return []; }

    const embedUrls: string[] = [];
    if (ldata?.servers && typeof ldata.servers === "object") {
      for (const v of Object.values(ldata.servers)) {
        if (typeof v === "string" && v.startsWith("http")) embedUrls.push(v);
      }
    } else if (Array.isArray(ldata)) {
      for (const item of ldata) {
        if (typeof item === "string" && item.startsWith("http")) embedUrls.push(item);
        else if (item?.url && typeof item.url === "string") embedUrls.push(item.url);
        else if (item?.link && typeof item.link === "string") embedUrls.push(item.link);
      }
    } else if (typeof ldata === "object" && ldata !== null) {
      for (const v of Object.values(ldata)) {
        if (typeof v === "string" && v.startsWith("http")) embedUrls.push(v);
      }
    }

    if (!embedUrls.length) return [];

    // نُعيد المواقع كـ embed للاستخراج عبر extractAndCollect
    const sources: UnifiedSource[] = embedUrls.slice(0, 4).map((u, i) => ({
      name: `2Dhive · سيرفر ${i + 1} · ياباني خام`,
      url: u,
      quality: "HD",
      qualityRank: 8,
      site: "2dhive",
      corsOk: false,
    }));
    console.log(`[2Dhive] "${english || title}" ep${ep} → ${sources.length} servers`);
    return sources;
  } catch (e: any) {
    console.warn("[2Dhive]", e?.message);
    return [];
  }
}

// ════════════════════════════════════════════════════════════════════
//  ANI.PM — أفضل مصدر ياباني جديد (37 مصدر/حلقة، HLS + MP4 + VTT)
//  يعمل مباشرةً من VPS وReplit بدون proxy
//  API: GET https://ani.pm/api/anime/src/servers?title=...&ep=...&anilistId=...
//  HLS: /api/anime/src/hls?t=TOKEN  |  VTT: /api/anime/src/vtt?t=TOKEN
// ════════════════════════════════════════════════════════════════════
const ANI_PM_BASE = "https://ani.pm";
const aniPmCache = new Map<string, { sources: UnifiedSource[]; ts: number }>();
const ANI_PM_TTL = 6 * 3_600_000;

async function getAniPmSources(
  title: string, english: string | null, ep: number, anilistId?: number,
): Promise<UnifiedSource[]> {
  const ck = `anipm:${(english || title).toLowerCase()}:${ep}:${anilistId ?? ""}`;
  const hit = aniPmCache.get(ck);
  if (hit && Date.now() - hit.ts < ANI_PM_TTL) return hit.sources;

  const out: UnifiedSource[] = [];
  try {
    const params = new URLSearchParams({ title: english || title, ep: String(ep) });
    if (anilistId) params.set("anilistId", String(anilistId));

    const r = await fetch(`${ANI_PM_BASE}/api/anime/src/servers?${params}`, {
      headers: {
        "User-Agent": BROWSER_UA,
        "Referer": ANI_PM_BASE + "/",
        "Accept": "application/json",
      },
      signal: AbortSignal.timeout(14_000),
    });
    if (!r || !r.ok) return out;
    const raw = await r.json();
    if (!raw || typeof raw !== "object") return out;

    // تنسيق جديد (2026-07): { sub: [...], dub: [...] }
    // تنسيق قديم: { sources: [...] }
    type AniPmEntry = {
      url?: string; provider?: string; name?: string; kind?: string;
      priority?: number; subtitle?: string; resolvable?: boolean; slow?: boolean;
    };
    const rawAny = raw as Record<string, unknown>;
    let subList: AniPmEntry[] = [];
    let dubList: AniPmEntry[] = [];

    if (Array.isArray(rawAny.sub)) {
      // تنسيق جديد
      subList = rawAny.sub as AniPmEntry[];
      dubList = Array.isArray(rawAny.dub) ? rawAny.dub as AniPmEntry[] : [];
    } else if (Array.isArray((rawAny as any).sources)) {
      // تنسيق قديم للتوافقية
      subList = (rawAny as any).sources as AniPmEntry[];
    }

    // ── فلترة صارمة: نستبعد أي مصدر "embed" (يحتاج iframe/صفحة خارجية —
    // هذا هو مصدر مشكلة "ifrom" التي اشتكى منها المستخدم) ونُبقي فقط
    // hls/file (روابط فيديو مباشرة نقدر نبثّها/نبروكسيها بأنفسنا).
    // كمان نحدد سقف 5 سيرفرات كحد أقصى إجمالاً (sub+dub) — أفضلها فقط
    // حسب priority اللي يرجعه ani.pm نفسه.
    const MAX_ANIPM_SOURCES = 5;

    // نستخدم فقط dubList (مدبلج) ونتجاهل subList (ياباني + ترجمة إنجليزية مدمجة)
    // لأن المنصة عربية ومصادر "sub" تعرض نصاً إنجليزياً على الشاشة.
    type Candidate = { src: AniPmEntry; isDub: boolean };
    const candidates: Candidate[] = [];
    for (const src of dubList) {
      if (!src.url) continue;
      if (src.kind === "embed") continue;
      candidates.push({ src, isDub: true });
    }

    // الأعلى priority أولاً (ani.pm يرتّب المصادر المباشرة بـ priority 100+)
    candidates.sort((a, b) => (b.src.priority ?? 0) - (a.src.priority ?? 0));

    for (const { src, isDub } of candidates.slice(0, MAX_ANIPM_SOURCES)) {
      const absUrl = src.url!.startsWith("http") ? src.url! : `${ANI_PM_BASE}${src.url}`;
      const isHls = absUrl.includes(".m3u8") || src.kind === "hls" || src.url!.includes("/hls");
      const providerName = src.provider || src.name || (isDub ? "Dub" : "Sub");
      const label = `AniPm · ${providerName}${isDub ? " [مدبلج]" : ""}`;

      const directUrl = isHls
        ? `/api/anime/hls-proxy?url=${encodeURIComponent(absUrl)}&ref=${encodeURIComponent(ANI_PM_BASE + "/")}`
        : absUrl;

      out.push({
        name: label,
        url:  absUrl,
        quality:     "HD",
        qualityRank: 11,
        site:        "anipm",
        directUrl,
        directType:  isHls ? "hls" : "mp4",
        corsOk:      false,
      });
    }

    console.log(`[AniPm] "${english || title}" ep${ep} → ${out.length}/${MAX_ANIPM_SOURCES} direct sources (candidates sub:${subList.length} dub:${dubList.length}, embed-filtered)`);
    aniPmCache.set(ck, { sources: out, ts: Date.now() });
  } catch (e: any) {
    console.warn("[AniPm]", e?.message);
  }
  return out;
}

// ════════════════════════════════════════════════════════════════════
//  NEKOWATCH (nekowatch.xyz) — ANIME ONLY (AniList ID)
//  API: /api/anime/watch/anineko/{anilistId}/sub/anineko-{ep}
//  Returns HLS streams from vivibebe.site CDN
//  Filter: isActive=true AND type=hls
//  Referer: https://nekowatch.xyz
// ════════════════════════════════════════════════════════════════════
const NEKOWATCH_BASE = "https://nekowatch.xyz";
const _nekoCacheMap = new Map<string, { sources: UnifiedSource[]; ts: number }>();
const NEKO_TTL = 4 * 3_600_000;

async function getNekowatchSources(
  _title: string, _english: string | null, ep: number, anilistId?: number,
): Promise<UnifiedSource[]> {
  if (!anilistId) return [];
  const ck = `nekowatch:${anilistId}:${ep}`;
  const hit = _nekoCacheMap.get(ck);
  if (hit && Date.now() - hit.ts < NEKO_TTL) return hit.sources;

  const out: UnifiedSource[] = [];
  try {
    const url = `${NEKOWATCH_BASE}/api/anime/watch/anineko/${anilistId}/sub/anineko-${ep}`;
    const r = await fetch(url, {
      headers: {
        "User-Agent": BROWSER_UA,
        "Referer":    NEKOWATCH_BASE + "/",
        "Accept":     "application/json",
      },
      signal: AbortSignal.timeout(14_000),
    });
    if (!r.ok) { console.warn(`[Nekowatch] HTTP ${r.status}`); return out; }
    const data: any = await r.json();
    const streams: any[] = Array.isArray(data?.streams) ? data.streams : [];
    const active = streams.filter((s: any) => s.isActive && s.type === "hls" && typeof s.url === "string" && s.url.startsWith("http"));
    for (const stream of active.slice(0, 3)) {
      out.push({
        name:        "Nekowatch · ياباني مترجم",
        url:         stream.url,
        quality:     "HD",
        qualityRank: 10,
        site:        "nekowatch",
        directUrl:   `/api/anime/hls-proxy?url=${encodeURIComponent(stream.url)}&ref=${encodeURIComponent(NEKOWATCH_BASE + "/")}`,
        directType:  "hls",
        corsOk:      false,
      });
    }
    console.log(`[Nekowatch] anilist:${anilistId} ep${ep} → ${out.length} active HLS streams`);
    if (out.length) _nekoCacheMap.set(ck, { sources: out, ts: Date.now() });
  } catch (e: any) {
    console.warn("[Nekowatch]", e?.message);
  }
  return out;
}

// ════════════════════════════════════════════════════════════════════
//  XYRA (api.xyra.stream) — ANIME + ANIMATION (TMDB ID, freekey)
//  Endpoint: /v1/streamhub/streams?api_key=freekey&tmdb_id=&type=series&season=1&episode=
//  Returns pre-sorted streams (4K first), some with headers field
//  skipProxy=true — streams are direct CDN (MP4 / HLS)
// ════════════════════════════════════════════════════════════════════
const XYRA_API = "https://api.xyra.stream/v1/streamhub/streams";

async function getXyraAnimeSources(
  title: string, english: string | null, ep: number, anilistId?: number,
): Promise<UnifiedSource[]> {
  const tmdbId = await fetchAnimeTmdbId(english, title, anilistId);
  if (!tmdbId) return [];
  const out: UnifiedSource[] = [];
  try {
    const url = `${XYRA_API}?api_key=freekey&tmdb_id=${tmdbId}&type=series&season=1&episode=${ep}`;
    const r = await fetch(url, {
      headers: { "User-Agent": BROWSER_UA, "Accept": "application/json" },
      signal: AbortSignal.timeout(14_000),
    });
    if (!r.ok) { console.warn(`[Xyra] HTTP ${r.status}`); return out; }
    const data: any = await r.json();
    const streams: any[] = Array.isArray(data?.streams) ? data.streams : [];
    for (const s of streams.slice(0, 5)) {
      if (typeof s.url !== "string") continue;
      // Strict https?:// validation — reject anything else
      let validUrl: URL;
      try { validUrl = new URL(s.url); } catch { continue; }
      if (validUrl.protocol !== "https:" && validUrl.protocol !== "http:") continue;
      const isHls  = s.url.includes(".m3u8");
      const hdrs   = s.headers && typeof s.headers === "object" ? s.headers as Record<string, string> : {};
      // Default referer fallback — mirrors animation.ts behaviour
      const referer = hdrs["Referer"] || hdrs["referer"] || "https://xyra.stream/";
      const label  = `Xyra · ${s.name || s.provider || "HD"} · ${s.quality || "HD"}`;
      const directUrl = isHls
        ? `/api/anime/hls-proxy?url=${encodeURIComponent(s.url)}&ref=${encodeURIComponent(referer)}`
        : `/api/anime/video-proxy?url=${encodeURIComponent(s.url)}&ref=${encodeURIComponent(referer)}`;
      out.push({
        name:        label,
        url:         s.url,
        quality:     String(s.quality || "HD"),
        qualityRank: 12,
        site:        "xyra_anim",
        directUrl,
        directType:  isHls ? "hls" : "mp4",
        headers:     { Referer: referer },
        corsOk:      false,
      });
    }
    console.log(`[Xyra] tmdb:${tmdbId} ep${ep} → ${out.length} streams`);
  } catch (e: any) {
    console.warn("[Xyra]", e?.message);
  }
  return out;
}


// ════════════════════════════════════════════════════════════════════
//  XPASS (play.xpass.top) — ANIME + ANIMATION (TMDB ID)
//  TV:    /e/tv/{tmdbId}/{season}/{episode} → backups[] → playlist.json → HLS
//  Movie: /e/movie/{tmdbId} → backups[] → playlist.json → HLS
//  CDN:   tik.1x2.space / vip.1x2.space / ps1.1x2.space (MEG)
//  Skip:  VXR (returns /video/error)
// ════════════════════════════════════════════════════════════════════
const XPASS_BASE = "https://play.xpass.top";
const _xpassCache = new Map<string, { sources: UnifiedSource[]; ts: number }>();
const XPASS_TTL = 8 * 60_000; // 8 دقائق — الـ signed token على ps1/vip.1x2.space ينتهي بسرعة

async function getXpassAnimeSources(
  title: string, english: string | null, ep: number, anilistId?: number, isMovie = false,
): Promise<UnifiedSource[]> {
  const tmdbId = await fetchAnimeTmdbId(english, title, anilistId);
  if (!tmdbId) return [];
  const ck = `xpass:${tmdbId}:${ep}:${isMovie}`;
  const hit = _xpassCache.get(ck);
  if (hit && Date.now() - hit.ts < XPASS_TTL) return hit.sources;

  const out: UnifiedSource[] = [];
  try {
    // MEG CDN: direct predictable URL, no embed page needed (bypasses bot detection)
    const XBASE = XPASS_BASE;
    const XREF  = `${XBASE}/`;
    // جلب VIP token من /data endpoint (مع MEG كاحتياطي بدون token)
    let vipPath: string | null = null;
    try {
      const dataPath = isMovie ? `/data/movie/${tmdbId}` : `/data/tv/${tmdbId}/1/${ep}`;
      const dataR = await fetch(`${XBASE}${dataPath}`, {
        headers: { "User-Agent": BROWSER_UA, "Referer": XREF },
        signal: AbortSignal.timeout(6_000),
      });
      if (dataR.ok) {
        const dataArr: any[] = await dataR.json();
        const vipEntry = dataArr.find((e: any) => e.name?.includes("VIP"));
        if (vipEntry?.url) vipPath = vipEntry.url;
      }
    } catch { /* fallthrough to MEG only */ }

    const megUrls: string[] = isMovie
      ? [
          ...(vipPath ? [`${XBASE}${vipPath}`] : []),
          `${XBASE}/meg/movie/${tmdbId}/1/playlist.json`,
          `${XBASE}/meg/movie/${tmdbId}/2/playlist.json`,
        ]
      : [
          ...(vipPath ? [`${XBASE}${vipPath}`] : []),
          `${XBASE}/meg/tv/${tmdbId}/1/${ep}/1/playlist.json`,
          `${XBASE}/meg/tv/${tmdbId}/1/${ep}/2/playlist.json`,
        ];

    // Helper: جلب playlist.json — direct أولاً ثم Hopx fallback
    async function fetchXpassPlaylist(pUrl: string): Promise<any[] | null> {
      // محاولة مباشرة
      try {
        const pr = await fetch(pUrl, {
          headers: { "User-Agent": BROWSER_UA, "Referer": XREF },
          signal: AbortSignal.timeout(8_000),
        });
        if (pr.ok) {
          const pj: any = await pr.json();
          const srcs: any[] = pj?.playlist?.[0]?.sources ?? [];
          if (srcs.length) return srcs;
        }
      } catch { /* fallthrough */ }
      // fallback: Hopx proxy (IP سكني يتجاوز حجب CDN)
      const html = await hopxProxyGet(pUrl, XREF, 12_000);
      if (!html) return null;
      try {
        const pj: any = JSON.parse(html);
        return pj?.playlist?.[0]?.sources ?? null;
      } catch { return null; }
    }

    const results = await Promise.allSettled(megUrls.map(fetchXpassPlaylist));

    for (const res of results) {
      if (res.status !== "fulfilled" || !res.value) continue;
      const srcs = res.value;
      for (const s of srcs) {
        if (typeof s?.file !== "string" || !s.file.startsWith("http")) continue;
        const isHls = s.file.includes(".m3u8") || s.type === "hls";
        const proxyUrl = isHls ? `/api/anime/hls-proxy?url=${encodeURIComponent(s.file)}&ref=${encodeURIComponent(XREF)}` : undefined;
        out.push({
          name:        "XPass · FHD",
          url:         s.file,
          quality:     "FHD",
          qualityRank: 12,
          site:        "xpass_anim",
          directUrl:   s.file,
          directType:  isHls ? "hls" : "mp4",
          ...(proxyUrl ? { proxyUrl } : {}),
          headers:     { Referer: XREF },
          // corsOk: mobile plays directUrl with residential IP (ps1/vip.1x2.space blocks VPS datacenter IPs)
          corsOk:      true,
        });
        if (out.length >= 3) break;
      }
      if (out.length >= 3) break;
    }
    console.log(`[Xpass] tmdb:${tmdbId} ep${ep} → ${out.length} sources`);
    if (out.length) _xpassCache.set(ck, { sources: out, ts: Date.now() });
  } catch (e: any) {
    console.warn("[Xpass]", e?.message);
  }
  return out;
}

// ════════════════════════════════════════════════════════════════════
//  VaPlayer (streamdata.vaplayer.ru) — TMDB-native, direct HLS
//  TV:    /api.php?tmdb={id}&type=tv&season=1&episode={e}
//  Movie: /api.php?tmdb={id}&type=movie
//  Returns: { status_code: "200", data: { stream_urls: ["https://...master.m3u8"] } }
//  CDN:   scalableimpactgroup.site / futurefocuse... (variable per request)
// ════════════════════════════════════════════════════════════════════
const VAPLAYER_BASE = "https://streamdata.vaplayer.ru";
const _vaplayerCache = new Map<string, { sources: UnifiedSource[]; ts: number }>();
const VAPLAYER_TTL = 4 * 3_600_000;

async function getVaplayerAnimeSources(
  title: string, english: string | null, ep: number, anilistId?: number, isMovie = false,
): Promise<UnifiedSource[]> {
  const tmdbId = await fetchAnimeTmdbId(english, title, anilistId);
  if (!tmdbId) return [];
  const ck = `vaplayer:${tmdbId}:${ep}:${isMovie}`;
  const hit = _vaplayerCache.get(ck);
  if (hit && Date.now() - hit.ts < VAPLAYER_TTL) return hit.sources;

  const out: UnifiedSource[] = [];
  try {
    const params = new URLSearchParams({ tmdb: String(tmdbId), type: isMovie ? "movie" : "tv" });
    if (!isMovie) { params.set("season", "1"); params.set("episode", String(ep)); }
    const apiUrl = `${VAPLAYER_BASE}/api.php?${params}`;
    const r = await fetch(apiUrl, {
      headers: { "User-Agent": BROWSER_UA, "Referer": "https://nextgencloudfabric.com/" },
      signal: AbortSignal.timeout(14_000),
    });
    if (!r.ok) { console.warn(`[VaPlayer] API ${r.status}`); return []; }
    const data: any = await r.json();
    if (data?.status_code !== "200") { console.warn("[VaPlayer] status", data?.status_code); return []; }
    const urls: string[] = data?.data?.stream_urls ?? [];
    for (const fileUrl of urls.slice(0, 3)) {
      if (!fileUrl || !fileUrl.startsWith("http")) continue;
      const isHls = fileUrl.includes(".m3u8");
      out.push({
        name:        "VaPlayer",
        url:         fileUrl,
        quality:     "FHD",
        qualityRank: 12,
        site:        "vaplayer_anim",
        directUrl:   fileUrl,
        directType:  isHls ? "hls" : "mp4",
        corsOk:      true,
      });
      if (out.length >= 2) break;
    }
    console.log(`[VaPlayer] tmdb:${tmdbId} ep${ep} → ${out.length} sources`);
    if (out.length) _vaplayerCache.set(ck, { sources: out, ts: Date.now() });
  } catch (e: any) {
    console.warn("[VaPlayer]", e?.message);
  }
  return out;
}

// ════════════════════════════════════════════════════════════════════
//  AnimeSlayer — cracked auth (Client-Id/Client-Secret from APK RE)
//  API: https://anslayer.com/anime/public/{path}?json={params}
// ════════════════════════════════════════════════════════════════════
const ANSLAYER_BASE   = "https://anslayer.com/anime/public";
const ANSLAYER_CID    = "android-app2";
const ANSLAYER_CSEC   = "7befba6263cc14c90d2f1d6da2c5cf9b251bfbbd";
const _anslayerCacheMap = new Map<string, { sources: UnifiedSource[]; ts: number }>();
const _anslayerInFlight = new Map<string, Promise<UnifiedSource[]>>();
const ANSLAYER_TTL    = 4 * 3_600_000;

async function anslayerGet(path: string, params: Record<string, any>): Promise<any | null> {
  try {
    const json = encodeURIComponent(JSON.stringify(params));
    const url = `${ANSLAYER_BASE}/${path}?json=${json}`;
    const r = await fetch(url, {
      headers: {
        "Client-Id":     ANSLAYER_CID,
        "Client-Secret": ANSLAYER_CSEC,
        "User-Agent":    "okhttp/4.9.3",
        "Accept":        "application/json",
      },
      signal: AbortSignal.timeout(7_000),
    });
    if (!r.ok) return null;
    return await r.json();
  } catch { return null; }
}

async function getAnimeSlayerSourcesUncached(
  title: string, english: string | null, ep: number, directAnimeId?: number, titleAr?: string | null,
): Promise<UnifiedSource[]> {
  const ck = directAnimeId
    ? `anslayer:id:${directAnimeId}:${ep}`
    : `anslayer:${normalize(english || title).replace(/\s+/g, "-")}:${ep}`;
  const hit = _anslayerCacheMap.get(ck);
  if (hit && Date.now() - hit.ts < ANSLAYER_TTL) return hit.sources;

  const out: UnifiedSource[] = [];
  try {
    // ── 1) معرّف مباشر (من كتالوج anslayer نفسه — يُستخدم لقسم "أحدث الحلقات" على
    //      الواجهة الرئيسية) أو بحث + أفضل تطابق بالاسم ──
    let best: { score: number; id: number; name: string } | null = directAnimeId
      ? { score: 1, id: directAnimeId, name: title || english || "" }
      : null;
    if (!best) {
      // نُقدِّم الاسم العربي أولاً إن توفَّر — AS يخزِّن أسماء عربية فيطابق مباشرةً
      const queries = [...new Set([titleAr, english, title].filter(Boolean) as string[])];
      const searchResults = await Promise.allSettled(
        queries.slice(0, 6).map(q =>
          anslayerGet("animes/get-published-animes", { list_type: "filter", anime_name: q, page: 1 }),
        ),
      );
      for (let queryIndex = 0; queryIndex < searchResults.length; queryIndex++) {
        const q = queries[queryIndex];
        const result = searchResults[queryIndex];
        const data = result.status === "fulfilled" ? result.value : null;
        const list: any[] = data?.response?.data || [];
        // AnimeSlayer يعرض أسماء عربية — similarity() بين لاتيني وعربي = 0 دائماً.
        // الحل: نستخدم asciiSimilarity على الـ slug الضمني + نقبل أول نتيجة إذا كانت ≤8
        // (API البحث هو المرشِّح الحقيقي، لذا نثق بنتائجه المحددة).
        let firstCandidate: { score: number; id: number; name: string } | null = null;
        for (const item of list) {
          const nameStr = String(item.anime_name || "");
          const nameEn  = String(item.anime_name_en || item.anime_name_english || "");
          const s = Math.max(
            similarity(q, nameStr),
            nameEn ? similarity(q, nameEn) : 0,
            asciiSimilarity(q, nameStr),
            asciiSimilarity(q, nameEn),
          );
          if (s > 0.30 && (!best || s > best.score)) {
            best = { score: s, id: parseInt(item.anime_id, 10), name: item.anime_name };
          }
          if (!firstCandidate) {
            firstCandidate = { score: s, id: parseInt(item.anime_id, 10), name: item.anime_name };
          }
        }
        // إذا فشل شرط التشابه (أسماء عربية مقابل عنوان لاتيني) — نأخذ أول نتيجة
        // بشرط أن البحث أعاد نتائج محددة (≤8) دلالةً على دقة البحث
        if (!best && firstCandidate && list.length <= 8) {
          best = firstCandidate;
        }
      }
    }
    if (!best) return out;

    // ── 2) قائمة الحلقات ──
    const epData = await anslayerGet("episodes/get-episodes", { anime_id: best.id });
    const episodes: any[] = epData?.response?.data || [];
    const epItem = episodes.find((e: any) => parseInt(e.episode_number, 10) === ep);
    if (!epItem) return out;

    const urls: any[] = Array.isArray(epItem.episode_urls) ? epItem.episode_urls : [];
    const muiltUrl = urls.find((u: any) => u.episode_server_name === "muilt")?.episode_url;
    if (!muiltUrl) return out;

    // ── 3) روابط المشغلات الخارجية ──
    const r = await fetchSourceWithRetry(muiltUrl, {
      headers: { "User-Agent": "okhttp/4.9.3" },
    }, 7_000, 2);
    if (!r || !r.ok) return out;
    const embedLinks: string[] = await r.json().catch(() => []);
    if (!Array.isArray(embedLinks)) return out;

    // معالجة الروابط بالتوازي بدلاً من التسلسل — كل رابط له 10s budget
    const linkResults = await Promise.allSettled(
      embedLinks.slice(0, 6).map(async (link): Promise<UnifiedSource | null> => {
        if (typeof link !== "string" || !link.startsWith("http")) return null;
        if (link.includes("drive.google.com")) return null;
        try {
          if (link.includes("mediafire.com")) {
            const direct = await Promise.race([
              extractMediafireDirect(link),
              new Promise<null>(r => setTimeout(() => r(null), 9_000)),
            ]);
            if (!direct) return null;
            // MediaFire is blocked by the global dead-host filter because its
            // page URLs are not playable.  This is different for AnimeSlayer:
            // extractMediafireDirect() returns the actual CDN file URL.  Keep
            // the page blocked globally, but expose the extracted file through
            // our proxy so web and mobile both retain the required Referer.
            const mediaRef = "https://www.mediafire.com/";
            const lowerDirect = direct.toLowerCase();
            const quality = /(?:2160|1440|1080)(?:p)?(?:[._-]|$)/i.test(lowerDirect) || /(?:uhd|fhd)(?:[._-]|$)/i.test(lowerDirect)
              ? "FHD"
              : /(?:720|hd)(?:p)?(?:[._-]|$)/i.test(lowerDirect)
                ? "HD"
                : /(?:480|sd)(?:p)?(?:[._-]|$)/i.test(lowerDirect)
                  ? "SD"
                  : "HD";
            const qualityRank = quality === "FHD" ? 12 : quality === "HD" ? 10 : 7;
            const proxied = `/api/anime/video-proxy?url=${encodeURIComponent(direct)}&ref=${encodeURIComponent(mediaRef)}`;
            return {
              name: `AnimeSlayer · MediaFire · ${quality}`, url: link, quality, qualityRank,
              site: "anslayer", directUrl: proxied, directType: "mp4",
              headers: { Referer: mediaRef, Origin: "https://www.mediafire.com" },
            };
          }
          if (link.includes("ok.ru")) {
            const oid = link.match(/ok\.ru\/video\/(\d+)/)?.[1] || link.match(/ok\.ru\/videoembed\/(\d+)/)?.[1];
            if (!oid) return null;
            const vids = await Promise.race([
              extractOkRuVideo(oid),
              new Promise<[]>(r => setTimeout(() => r([]), 9_000)),
            ]);
            const hlsMaster = vids.find(v => v.type === "hls" && v.name === "auto");
            const bestMp4   = vids.filter(v => v.type !== "hls")
              .sort((a, b) => (parseInt(b.name) || 0) - (parseInt(a.name) || 0))[0];
            if (hlsMaster) return {
              name: "AnimeSlayer · OK.ru", url: link, quality: "FHD", qualityRank: 11,
              site: "anslayer",
              directUrl: `/api/anime/hls-proxy?url=${encodeURIComponent(hlsMaster.url)}&ref=${encodeURIComponent("https://ok.ru/")}`,
              directType: "hls",
            };
            if (bestMp4) {
              const h = parseInt(bestMp4.name || "0", 10);
              const okQ = h >= 1080 ? "FHD" : h >= 720 ? "HD" : h >= 480 ? "SD" : bestMp4.name || "HD";
              return {
                name: "AnimeSlayer · OK.ru", url: link, quality: okQ, qualityRank: 10,
                site: "anslayer",
                directUrl: `/api/anime/video-proxy?url=${encodeURIComponent(bestMp4.url)}&ref=${encodeURIComponent("https://ok.ru/")}`,
                directType: "mp4",
              };
            }
            return null;
          }
          // mixdrop / streamtape / filemoon / streamwish-family → extractVideoDeep
          const extracted = await Promise.race([
            extractVideoDeep(link, link),
            new Promise<null>(r => setTimeout(() => r(null), 9_000)),
          ]);
          if (!extracted?.url) return null;
          const host = link.includes("mixdrop") ? "MixDrop"
            : link.includes("streamtape") ? "Streamtape"
            : link.includes("filemoon")    ? "FileMoon"
            : "External";
          return {
            name: `AnimeSlayer · ${host}`, url: link, quality: "FHD", qualityRank: 10,
            site: "anslayer",
            directUrl: extracted.type === "hls"
              ? `/api/anime/hls-proxy?url=${encodeURIComponent(extracted.url)}&ref=${encodeURIComponent(link)}`
              : `/api/anime/video-proxy?url=${encodeURIComponent(extracted.url)}&ref=${encodeURIComponent(link)}`,
            directType: extracted.type,
          };
        } catch { return null; }
      })
    );
    for (const r of linkResults) {
      if (r.status === "fulfilled" && r.value) out.push(r.value);
    }

    console.log(`[AnimeSlayer] "${best.name}" ep${ep} → ${out.length} sources`);
    if (out.length) _anslayerCacheMap.set(ck, { sources: out, ts: Date.now() });
  } catch (e: any) {
    console.warn("[AnimeSlayer]", e?.message);
  }
  return out;
}

/**
 * Deduplicate concurrent SA requests. The source picker can ask for the same
 * episode from the stream endpoint and the on-demand endpoint at nearly the
 * same time; only one upstream search/extraction should run.
 */
async function getAnimeSlayerSources(
  title: string, english: string | null, ep: number, directAnimeId?: number, titleAr?: string | null,
): Promise<UnifiedSource[]> {
  const key = directAnimeId
    ? `anslayer:id:${directAnimeId}:${ep}`
    : `anslayer:${normalize(english || title).replace(/\s+/g, "-")}:${ep}`;
  const active = _anslayerInFlight.get(key);
  if (active) return active;
  const promise = getAnimeSlayerSourcesUncached(title, english, ep, directAnimeId, titleAr);
  _anslayerInFlight.set(key, promise);
  try {
    return await promise;
  } finally {
    if (_anslayerInFlight.get(key) === promise) _anslayerInFlight.delete(key);
  }
}

// notorrent (NO / addon-osvh.onrender.com): أُزيل كلياً بطلب المستخدم 2026-07-09

const SANIME_API  = "https://app.sanime.net/function/h10.php?page=";
// SAnime's current catalog serves MP4 files from /Video. The /Video2 path
// returns 404 even though the info endpoint confirms that the episode exists.
const SANIME_CDN  = "https://server.sanime.net/Video";
const SANIME_UA   = "IBRAHIMSEVEN";
const _sanimeCacheMap = new Map<string, { sources: UnifiedSource[]; ts: number }>();
const _sanimeInFlight = new Map<string, Promise<UnifiedSource[]>>();
const SANIME_TTL  = 4 * 3_600_000;

// يستخرج رقم الموسم من العنوان (Season 4 / 4th Season / S4) — الافتراضي 1
function sanimeSeasonNum(s: string | null | undefined): number {
  if (!s) return 1;
  let m = s.match(/season\s*(\d+)/i);
  if (m) return parseInt(m[1], 10);
  m = s.match(/(\d+)(?:st|nd|rd|th)\s*season/i);
  if (m) return parseInt(m[1], 10);
  m = s.match(/\bs(\d+)\b/i);
  if (m) return parseInt(m[1], 10);
  return 1;
}

async function getSAnimeSourcesUncached(
  title: string, english: string | null, ep: number, variants: string[] = [], availabilityOnly = false,
): Promise<UnifiedSource[]> {
  const ck = `sanime:${normalize(english || title).replace(/\s+/g, "-")}:${ep}`;
  const hit = _sanimeCacheMap.get(ck);
  if (hit && Date.now() - hit.ts < SANIME_TTL) return hit.sources;

  const out: UnifiedSource[] = [];
  try {
    /* 1. البحث — SAnime يخزّن أسماء عربية ومترجمة، نجرب الإنجليزي أولاً ثم الروماجي.
       ندمج النتائج لتحسين فرص المطابقة (بعض العناوين موجودة بكلا الاسمين). */
    const queries = titleQueries(title, english, variants);
    const allResults: any[] = [];
    const seenIds = new Set<string>();
    const searchResults = await Promise.allSettled(
      queries.slice(0, 6).map(q =>
        fetchSourceWithRetry(`${SANIME_API}search&name=${encodeURIComponent(q)}`, {
          headers: { "User-Agent": SANIME_UA, "Accept": "application/json" },
        }, 6_000, 1),
      ),
    );
    for (const result of searchResults) {
      if (result.status !== "fulfilled" || !result.value) continue;
      const batch: any[] = await result.value.json().catch(() => []);
      if (!Array.isArray(batch)) continue;
      for (const r of batch) {
        const rid = String(r.id ?? "");
        if (rid && !seenIds.has(rid)) { seenIds.add(rid); allResults.push(r); }
      }
    }
    if (allResults.length === 0) return out;

    // 2. similarity match — مع ترجيح رقم الموسم (SAnime يفصل كل موسم كمُدخل مستقل)
    const targetSeason = sanimeSeasonNum(english) !== 1 ? sanimeSeasonNum(english) : sanimeSeasonNum(title);
    let bestId: string | null = null;
    let bestScore = 0;
    for (const r of allResults) {
      const label = String(r.name ?? r.title ?? "");
      let score = Math.max(
        similarity(label, title),
        english ? similarity(label, english) : 0,
        slugSimilarity(label, title),
        english ? slugSimilarity(label, english) : 0,
        ...variants.map(variant => similarity(label, variant)),
        ...variants.map(variant => asciiSimilarity(label, variant)),
        ...variants.map(variant => slugSimilarity(label, variant)),
      );
      // ترجيح رقم الموسم — لكن نُطبِّق العقوبة فقط إذا كانت الدرجة الأساسية ضعيفة
      // (إذا كان التطابق قوياً بالفعل لا نعاقبه بسبب خطأ في كشف الموسم)
      const labelSeason = sanimeSeasonNum(label);
      if (score > 0.50) {
        score += labelSeason === targetSeason ? 0.10 : -0.05; // عقوبة خفيفة عند تطابق قوي
      } else {
        score += labelSeason === targetSeason ? 0.15 : -0.20; // عقوبة معتدلة عند تطابق ضعيف
      }
      if (score > bestScore) { bestScore = score; bestId = String(r.id); }
    }
    // threshold مخفَّض من 0.42 → 0.30 لأن عناوين SAnime العربية لا تطابق تماماً الروماجي
    if (!bestId || bestScore < 0.30) {
      console.log(`[SAnime] no match for "${english || title}" (best=${bestScore.toFixed(2)}, targetSeason=${targetSeason})`);
      return out;
    }

    // 3. info + episodes
    const infoRes = await fetchSourceWithRetry(`${SANIME_API}info&id=${bestId}`, {
      headers: { "User-Agent": SANIME_UA, "Accept": "application/json" },
    }, 12_000);
    if (!infoRes) { console.warn("[SAnime] info request failed"); return out; }
    const info: any = await infoRes.json().catch(() => null);
    if (!info?.ep) return out;

    // 4. إيجاد الحلقة (ep هو 2D array)
    const allEps: any[] = (Array.isArray(info.ep) ? info.ep : []).flat();
    const epObj = allEps.find((e: any) =>
      Number(e.epName) === ep || String(e.epName) === String(ep),
    );
    if (!epObj) {
      console.log(`[SAnime] ep${ep} not found in ${allEps.length} eps for id=${bestId}`);
      return out;
    }

    if (availabilityOnly) {
      return [
        { name: "SAnime · FHD", url: "", quality: "FHD", qualityRank: 14, site: "sanime", verified: true } as UnifiedSource,
        { name: "SAnime · HD", url: "", quality: "HD", qualityRank: 9, site: "sanime", verified: true } as UnifiedSource,
      ];
    }

    // 5. Direct CDN URLs.
    //
    // The info endpoint already confirmed that this episode exists. Waiting for
    // two ranged CDN probes here used to add up to 4.5s before the source could
    // reach the picker, and HEAD/Range is intermittently filtered by SAnime's
    // CDN even when normal playback works. Return both quality candidates
    // immediately; the VPS video proxy still preserves Range and the player can
    // fall back to SD if the old HD file is unavailable.
    const SANIME_REF = "https://app.sanime.net/";
    /* SAnime has used both CDN path families over time. Keep the known-live
       Video path first, then expose Video2 as a legacy fallback;
       some older IDs exist on only one family. The player/proxy will skip a
       404 candidate and retain the working quality without an extra probe. */
    const cdnCandidates = [
      { base: SANIME_CDN, tag: "" },
      { base: "https://server.sanime.net/Video2", tag: " · fallback" },
    ];
    for (const { base, tag } of cdnCandidates) {
      const directHD = `${base}/${bestId}/${ep}.mp4`;
      const directSD = `${base}/${bestId}/${ep}SD.mp4`;
      const sanimeProxyParams = `&ua=${encodeURIComponent(SANIME_UA)}`;
      const proxiedHD = `/api/anime/video-proxy?url=${encodeURIComponent(directHD)}&ref=${encodeURIComponent(SANIME_REF)}${sanimeProxyParams}`;
      const proxiedSD = `/api/anime/video-proxy?url=${encodeURIComponent(directSD)}&ref=${encodeURIComponent(SANIME_REF)}${sanimeProxyParams}`;
      out.push({
        name: `SAnime · FHD${tag}`, url: directHD, quality: "FHD", qualityRank: 14,
        site: "sanime", directUrl: proxiedHD, directType: "mp4",
        headers: { Referer: SANIME_REF }, corsOk: false,
      });
      out.push({
        name: `SAnime · HD${tag}`, url: directSD, quality: "HD", qualityRank: 9,
        site: "sanime", directUrl: proxiedSD, directType: "mp4",
        headers: { Referer: SANIME_REF }, corsOk: false,
      });
    }

    console.log(`[SAnime] id=${bestId} ep${ep} → ${out.length} sources (match=${bestScore.toFixed(2)})`);
    if (out.length) _sanimeCacheMap.set(ck, { sources: out, ts: Date.now() });
  } catch (e: any) {
    console.warn("[SAnime]", e?.message);
  }
  return out;
}

/** Share one upstream SA lookup between stream, picker and download requests. */
async function getSAnimeSources(
  title: string, english: string | null, ep: number, variants: string[] = [], availabilityOnly = false,
): Promise<UnifiedSource[]> {
  const key = `sanime:${normalize(english || title).replace(/\s+/g, "-")}:${ep}:${availabilityOnly ? "availability" : "playback"}`;
  const active = _sanimeInFlight.get(key);
  if (active) return active;
  const promise = getSAnimeSourcesUncached(title, english, ep, variants, availabilityOnly);
  _sanimeInFlight.set(key, promise);
  try {
    return await promise;
  } finally {
    if (_sanimeInFlight.get(key) === promise) _sanimeInFlight.delete(key);
  }
}

// ════════════════════════════════════════════════════════════════════
//  APPS-ANIME.COM scraper  (Arabic anime — مدبلج عربي)
//
//  Infrastructure:
//    apps-anime.com         ← SSR Node.js (Cloudflare)
//    apps-player.com/...API/ ← PHP API (authenticated — skip)
//    AgentsAndCookies/getData.php ← OPEN — returns OK.ru cookies
//
//  Flow:
//    1. GET apps-anime.com/search?q={title} → /anime/{slug}-{id}
//    2. GET /anime/{slug}-{id} → episode link list
//    3. GET /episode/{slug}-{id}-{ep} → ok.ru/video/{id} IDs
//    4. extractOkRuVideo(id) → direct MP4 URLs (with cookies)
// ════════════════════════════════════════════════════════════════════

const APPS_ANIME_BASE = "https://apps-anime.com";
const APPS_ANIME_API_BASE = "https://apps-player.com/Anime_Cartoon_Full/API/";

// OK.ru credentials cache (7h TTL — endpoint is open, no auth needed)
interface OkRuCreds { cookie: string; agent: string; ts: number }
let _okRuCredsCache: OkRuCreds | null = null;
const OKRU_CREDS_TTL = 7 * 60 * 60_000;

async function getOkRuCreds(): Promise<{ cookie: string; agent: string } | null> {
  const now = Date.now();
  if (_okRuCredsCache && now - _okRuCredsCache.ts < OKRU_CREDS_TTL) {
    return { cookie: _okRuCredsCache.cookie, agent: _okRuCredsCache.agent };
  }
  try {
    const r = await fetch(`${APPS_ANIME_API_BASE}AgentsAndCookies/getData.php`, {
      headers: { "User-Agent": BROWSER_UA, Accept: "application/json, */*" },
      signal: AbortSignal.timeout(8000),
    });
    if (!r.ok) return null;
    const data = await r.json() as { oKru_Agent?: string; okRu_Cookie?: string };
    if (!data.okRu_Cookie) return null;
    _okRuCredsCache = {
      cookie: data.okRu_Cookie,
      agent:  data.oKru_Agent || BROWSER_UA,
      ts: now,
    };
    console.log("[AppsAnime] OK.ru cookies refreshed ✓");
    return { cookie: _okRuCredsCache.cookie, agent: _okRuCredsCache.agent };
  } catch (e: any) {
    console.warn("[AppsAnime] getOkRuCreds failed:", e?.message);
    return null;
  }
}

// Rank a CDN host the way ok.ru-direct-resolver does: okcdn.ru first, then
// generic hosts, then vkuser.net mirrors last (historically least reliable).
function okRuHostRank(host: string): number {
  if (host.includes("okcdn.ru")) return 0;
  if (host.includes("vkuser.net")) return 2;
  return 1;
}

// Try opening an HLS master playlist across every known mirror host in
// parallel and keep whichever responds first with a valid #EXTM3U body.
// This is the ok.ru-direct-resolver technique: a single primary host can be
// geo/IP-blocked while a mirror still works, so racing them beats picking one.
async function okRuOpenHlsMaster(
  masterUrl: string,
  mirrorHosts: string[],
  hdrs: Record<string, string>,
): Promise<{ url: string; body: string } | null> {
  let primaryHost = "";
  try { primaryHost = new URL(masterUrl).host; } catch { return null; }

  const hosts = Array.from(new Set([primaryHost, ...mirrorHosts]))
    .sort((a, b) => okRuHostRank(a) - okRuHostRank(b));

  const attempts = hosts.map(async (host) => {
    let candidate = masterUrl;
    try {
      const u = new URL(masterUrl);
      u.host = host;
      candidate = u.toString();
    } catch { /* keep original */ }
    const r = await fetch(candidate, {
      headers: hdrs,
      signal: AbortSignal.timeout(4000),
      redirect: "follow",
    });
    if (!r.ok) throw new Error(`${host} -> ${r.status}`);
    const body = await r.text();
    if (!body.startsWith("#EXTM3U")) throw new Error(`${host} -> not m3u8`);
    return { url: candidate, body };
  });

  try {
    return await Promise.any(attempts);
  } catch {
    return null;
  }
}

// Parse #EXT-X-STREAM-INF lines into per-quality variant entries.
function okRuQualitiesFromMaster(masterUrl: string, body: string): Array<{ name: string; url: string }> {
  const lines = body.split(/\r?\n/);
  const out: Array<{ name: string; url: string }> = [];
  for (let i = 0; i < lines.length; i++) {
    const line = lines[i];
    if (!line.startsWith("#EXT-X-STREAM-INF")) continue;
    const next = lines[i + 1]?.trim();
    if (!next || next.startsWith("#")) continue;
    const res = line.match(/RESOLUTION=\d+x(\d+)/)?.[1];
    const variantUrl = /^https?:\/\//.test(next) ? next : new URL(next, masterUrl).toString();
    out.push({ name: res ? `${res}p` : "auto", url: variantUrl });
  }
  return out;
}

// Extract OK.ru video direct URLs using cookies from the open endpoint.
// Returns MP4 entries (as before) plus, when available, an HLS master
// playlist entry (type "hls") found by racing mirror CDN hosts — mirrors the
// approach from https://github.com/sharoon7171/ok.ru-direct-resolver.
async function extractOkRuVideo(
  videoId: string,
): Promise<Array<{ name: string; url: string; type?: "mp4" | "hls" }>> {
  const creds = await getOkRuCreds();
  const embedUrl = `https://ok.ru/videoembed/${videoId}`;
  const hdrs: Record<string, string> = {
    "User-Agent":      creds?.agent || BROWSER_UA,
    Referer:           "https://ok.ru/",
    Origin:            "https://ok.ru",
    Accept:            "text/html,application/xhtml+xml,*/*;q=0.9",
    "Accept-Language": "ar,en;q=0.9",
  };
  if (creds?.cookie) hdrs["Cookie"] = creds.cookie;

  try {
    const r = await fetch(embedUrl, {
      headers: hdrs,
      signal: AbortSignal.timeout(12000),
      redirect: "follow",
    });
    if (!r.ok) return [];
    const html = await r.text();

    // data-options attribute contains JSON with flashvars.metadata.videos
    const m = html.match(/data-options=["']([^"']{20,})["']/);
    if (!m) return [];
    const raw = m[1]
      .replace(/&quot;/g, '"')
      .replace(/&#34;/g, '"')
      .replace(/&amp;/g, "&");
    let options: { flashvars?: { metadata?: string } };
    try { options = JSON.parse(raw); } catch { return []; }

    let metadata: {
      videos?: Array<{ name: string; url: string }>;
      hlsManifestUrl?: string;
      ondemandHls?: string;
      failoverHosts?: string[];
    } = {};
    try {
      metadata = JSON.parse(options.flashvars?.metadata || "{}");
    } catch { return []; }

    const mp4s = (metadata.videos || []).filter(v => v.url?.startsWith("http"));
    const results: Array<{ name: string; url: string; type?: "mp4" | "hls" }> =
      mp4s.map(v => ({ ...v, type: "mp4" as const }));

    const masterUrl = metadata.hlsManifestUrl || metadata.ondemandHls;
    if (masterUrl) {
      const mirrorHosts: string[] = [];
      for (const v of metadata.videos || []) {
        try { mirrorHosts.push(new URL(v.url).host); } catch { /* skip */ }
      }
      for (const h of metadata.failoverHosts || []) mirrorHosts.push(h);

      const master = await okRuOpenHlsMaster(masterUrl, mirrorHosts, hdrs);
      if (master) {
        // Master playlist itself (adaptive — let the HLS player pick quality)
        results.push({ name: "auto", url: master.url, type: "hls" });
        // Individual quality variants, in case a caller wants one directly
        for (const q of okRuQualitiesFromMaster(master.url, master.body)) {
          results.push({ ...q, type: "hls" });
        }
      }
    }

    return results;
  } catch { return []; }
}

const appsAnimeSrcCache = new Map<string, { sources: UnifiedSource[]; ts: number }>();

async function getAppsAnimeSources(
  title: string,
  english: string | null,
  ep: number,
): Promise<UnifiedSource[]> {
  const ck = `appsanim:${(title + "|" + (english || "")).toLowerCase()}:${ep}`;
  const hit = appsAnimeSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;

  // Helper: fetch with cfProxy fallback then plain fetch (always checks for CF block)
  async function fetchHtml(url: string, ref: string, ms = 14000): Promise<string | null> {
    let h = await cfProxyGet(url, ref, ms);
    if (h && h.length > 200 && !isCloudflareBlock(h)) return h;
    try {
      const r = await fetch(url, {
        headers: { ...BASE_HDRS, Referer: ref },
        signal: AbortSignal.timeout(Math.min(ms, 12000)),
        redirect: "follow",
      });
      if (r.ok) {
        const t = await r.text();
        if (t.length > 200 && !isCloudflareBlock(t)) return t;
      }
    } catch { /* fall through */ }
    return null;
  }

  try {
    // 1. Search — prefer English title for better match; Arabic title as fallback
    const queries = [english, title].filter(Boolean) as string[];
    let animeUrl: string | null = null;

    for (const q of queries) {
      const searchUrl = `${APPS_ANIME_BASE}/search?q=${encodeURIComponent(q)}`;
      const searchHtml = await fetchHtml(searchUrl, `${APPS_ANIME_BASE}/`);
      if (!searchHtml) continue;

      // Collect all /anime/{slug} links then pick best similarity match
      const candidates: Array<{ url: string; slug: string }> = [];
      for (const m of searchHtml.matchAll(/href=["'](\/anime\/[^"'?#]+)["']/g)) {
        const path = m[1];
        if (path.includes("/page/") || path.includes("/category/")) continue;
        candidates.push({ url: `${APPS_ANIME_BASE}${path}`, slug: path });
      }

      // Score each candidate against title/english using existing similarity()
      const queries2 = [english, title].filter(Boolean) as string[];
      let bestScore = 0;
      for (const c of candidates) {
        // Slug often contains romanized title; strip the 8-char ID suffix
        const slugText = decodeURIComponent(c.slug.replace(/^\/anime\//, "").replace(/-[A-Za-z0-9]{8}$/, "")).replace(/-/g, " ");
        const score = Math.max(...queries2.map(q2 => similarity(slugText, q2)));
        if (score > bestScore) { bestScore = score; animeUrl = c.url; }
      }
      // Require at least a weak match (0.3) to avoid totally wrong series
      if (bestScore < 0.3) animeUrl = null;
      if (animeUrl) break;
    }
    if (!animeUrl) return [];

    // 2. Fetch anime page → episode list
    const animeHtml = await fetchHtml(animeUrl, `${APPS_ANIME_BASE}/search?q=`);
    if (!animeHtml) return [];

    const epLinks: string[] = [];
    for (const m of animeHtml.matchAll(/href=["'](\/episode\/[^"'?#]+)["']/g)) {
      const u = `${APPS_ANIME_BASE}${m[1]}`;
      if (!epLinks.includes(u)) epLinks.push(u);
    }
    if (!epLinks.length) return [];

    // Extract episode number from slug deterministically — no unsafe index fallback
    function extractEpNum(u: string): number | null {
      const seg = decodeURIComponent(u.split("/").pop() || "");
      // Pattern: ends with -{N} where N is the episode number
      const m2 = seg.match(/-(\d+)$/);
      return m2 ? parseInt(m2[1], 10) : null;
    }

    const targetEpUrl = epLinks.find(u => extractEpNum(u) === ep) ?? null;
    if (!targetEpUrl) {
      console.warn(`[AppsAnime] ep ${ep} not found in list (found: ${epLinks.map(u => extractEpNum(u)).join(",")})`);
      return [];
    }

    // 3. Fetch episode page → OK.ru video IDs
    const epHtml = await fetchHtml(targetEpUrl, animeUrl);
    if (!epHtml) return [];

    const okIds: string[] = [];
    for (const m of epHtml.matchAll(/ok\.ru\/(?:video|videoembed)\/(\d+)/g)) {
      if (!okIds.includes(m[1])) okIds.push(m[1]);
    }
    if (!okIds.length) return [];

    // 4. Extract direct video URLs for each ID (max 3 concurrent)
    const sources: UnifiedSource[] = [];
    await Promise.allSettled(okIds.slice(0, 3).map(async (id) => {
      const videos = await extractOkRuVideo(id);
      for (const v of videos) {
        if (v.type === "hls") continue; // this caller only builds mp4 video-proxy URLs
        const embedUrl = `https://ok.ru/videoembed/${id}`;
        const name = v.name || "";
        const qual =
          name.includes("1080") ? "FHD" :
          name.includes("720")  ? "HD"  :
          name.includes("480")  ? "SD"  : "SD";
        const rank =
          name.includes("1080") ? 22 :
          name.includes("720")  ? 16 :
          name.includes("480")  ? 8  : 5;
        sources.push({
          name:        `أبس أنمي · ${name || "OK.ru"}`,
          url:         embedUrl,
          quality:     qual,
          qualityRank: rank,
          site:        "appsanime",
          directUrl:   `/api/anime/video-proxy?url=${encodeURIComponent(v.url)}&ref=${encodeURIComponent(embedUrl)}`,
          directType:  "mp4",
        });
      }
    }));

    console.log(`[AppsAnime] "${english || title}" ep${ep} → ${sources.length} sources`);
    if (sources.length) appsAnimeSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch (e: any) {
    console.warn("[AppsAnime]", e?.message);
    return [];
  }
}

// ── Availability-only quality classifier ─────────────────────────────
// Never expose a playable URL during the picker availability pass.
// Prefer explicit quality labels over provider-specific numeric ranks:
// several providers use rank 11 for both FHD and HD.
function sourceCheckQuality(s: any): { quality: "1080p" | "720p" | "480p" | "360p"; qualityRank: number } {
  // Availability mode only classifies the source. It never probes playback.
  // Prefer explicit labels because provider numeric ranks are not universal.
  const explicit = String(s?.quality || "").toLowerCase();
  const rank = Number(s?.qualityRank) || 0;
  const classify = (value: string) => {
    if (/(?:2160|1440|1080)\s*p?|\bfhd\b|full[ ._-]*hd/.test(value)) return { quality: "1080p" as const, qualityRank: rank || 13 };
    if (/(?:720)\s*p?|(?<!f)\bhd\b/.test(value)) return { quality: "720p" as const, qualityRank: rank || 9 };
    if (/(?:480)\s*p?/.test(value)) return { quality: "480p" as const, qualityRank: rank || 7 };
    if (/(?:360)\s*p?|\bsd\b/.test(value)) return { quality: "360p" as const, qualityRank: rank || 5 };
    return null;
  };
  return classify(explicit)
    || classify(`${s?.name || ""} ${s?.label || ""} ${s?.url || ""}`.toLowerCase())
    || (rank >= 13
      ? { quality: "1080p", qualityRank: rank }
      : rank >= 9
        ? { quality: "720p", qualityRank: rank }
        : rank >= 7
          ? { quality: "480p", qualityRank: rank }
          : { quality: "360p", qualityRank: rank || 5 });
}

// ════════════════════════════════════════════════════════════════════
//  sources-stream  SSE endpoint — runs all scrapers in parallel
//  Streams sources as found (keeps proxy alive), sends [DONE] at end
//  Frontend waits for [DONE] before rendering all sources at once
// ════════════════════════════════════════════════════════════════════
router.get("/anime/sources-stream", async (req, res) => {
  const title     = ((req.query.title   as string) || "").trim();
  const english   = ((req.query.english as string) || "").trim() || null;
  const ep        = parseInt((req.query.ep    as string) || "1");
  let anilistId = parseInt((req.query.anime as string) || (req.query.anilistId as string) || "0") || undefined;
  const anslayerId = parseInt((req.query.anslayerId as string) || "0") || undefined;
  const format    = ((req.query.format  as string) || "").trim().toUpperCase();
  const isMovie   = format === "MOVIE" || format === "MOVIE_SHORT";
  const checkOnly = String(req.query.mode || "").toLowerCase() === "check";

  // Multi-criteria matching context (enriched from client)
  const reqYear     = parseInt((req.query.year     as string) || "0") || null;
  const reqNative   = ((req.query.native   as string) || "").trim() || null;
  const reqTotalEps = parseInt((req.query.episodes as string) || "0") || null;
  const titleAr     = ((req.query.titleAr  as string) || "").trim() || null;
  let titleVariants: string[] = [];
  try {
    const rawTitles = req.query.titles as string;
    const parsed = rawTitles ? JSON.parse(rawTitles) : [];
    if (Array.isArray(parsed)) {
      titleVariants = parsed.filter((value): value is string =>
        typeof value === "string" && value.trim().length > 0
      ).map(value => value.trim()).slice(0, 20);
    }
  } catch { /* malformed optional title list — keep the primary fields */ }
  const seasonNum   = extractSeasonNum(title) ?? extractSeasonNum(english || "") ?? null;

  const matchCtx: MatchCtx = {
    romaji: title, english, native: reqNative,
    year: reqYear, totalEps: reqTotalEps,
    seasonNum, isMovie, scraper: "",
  };

  res.setHeader("Content-Type", "text/event-stream");
  res.setHeader("Cache-Control", "no-cache");
  res.setHeader("Connection", "keep-alive");
  res.setHeader("X-Accel-Buffering", "no");
  res.flushHeaders?.();

  // globalSeen: cross-scraper dedup used ONLY in sendSrc (not shared with extractAndCollect)
  const globalSeen = new Set<string>();
  // Availability rows are streamed as verified sources arrive. Keep the
  // aggregate count so the picker can show the real number of mirrors per
  // provider/quality instead of a guessed server card.
  const checkRows = new Map<string, { count: number; site: string; quality: string; qualityRank: number; name: string; label?: string }>();
  // Avoid inflating serverCount when a provider repeats the same mirror URL.
  const checkSeen = new Set<string>();
  let closed = false;
  req.on("close", () => { closed = true; });

  // The availability pass does not need AniList resolution. Skipping it here
  // removes an unrelated network dependency from the first source results.
  // The full playback path keeps the existing resolution behavior.
  // Kawaii and MegaPlay are AniList-ID based. Resolve the ID for the
  // availability pass too; skipping it made KW/MP disappear until a later
  // refresh happened to reuse a warmed cache.
  if (!closed && title) {
    // Some home/latest links carry a catalog id rather than an AniList id.
    // Resolve by title even when a numeric id was supplied so MP/KW do not
    // silently disappear because they received the wrong catalog namespace.
    const resolvedByTitle = await Promise.race([
      resolveAniListIdForSource(title, english, titleVariants, titleAr),
      new Promise<number | undefined>(resolve => setTimeout(() => resolve(undefined), 3500)),
    ]);
    if (resolvedByTitle) anilistId = resolvedByTitle;
  }

  // Keepalive: send SSE comment every 5 s to prevent proxy timeout
  const keepalive = setInterval(() => {
    if (!closed) res.write(": keepalive\n\n");
  }, 5000);

  function sendCheckSrc(s: UnifiedSource) {
    if (closed) return;
    const site = String((s as any).site || "").trim();
    if (!site) return;
    const q = sourceCheckQuality(s);
    const mirrorKey = `${site}|${s.directUrl || s.url || s.name || s.label || ""}|${q.quality}`;
    if (checkSeen.has(mirrorKey)) return;
    checkSeen.add(mirrorKey);
    // One row per provider/quality, updated as every verified mirror arrives.
    // The playable URL remains server-side in check mode.
    const key = `${site}|${q.quality}`;
    const previous = checkRows.get(key);
    const row = {
      site,
      name: (s as any).name || (s as any).label || site,
      label: (s as any).label,
      quality: q.quality,
      qualityRank: Math.max(q.qualityRank, previous?.qualityRank || 0),
      available: true,
      verified: true,
      serverCount: (previous?.count || 0) + 1,
      checkOnly: true,
    };
    checkRows.set(key, { ...row, count: row.serverCount });
    res.write(`data: ${JSON.stringify(row)}\n\n`);
  }

  // Availability mode may inspect an HLS master manifest only. It never
  // requests a segment, tests playback, measures speed, or downloads video.
  const availabilityJobs = new Set<Promise<void>>();
  const AVAILABILITY_MANIFEST_TIMEOUT_MS = 2500;

  function getAvailabilityManifestTarget(s: UnifiedSource): { url: string; referer: string } | null {
    const raw = String(s.directUrl || s.url || "");
    if (!raw) return null;
    let target = raw;
    if (raw.startsWith("/api/")) {
      try {
        const parsed = new URL(`http://availability.local${raw}`);
        target = parsed.searchParams.get("url") || "";
        if (isEncrypted(target)) target = decryptParam(target);
      } catch { return null; }
    }
    if (!/^https?:\/\//i.test(target) || !/\.m3u8(?:[?#]|$)/i.test(target)) return null;
    return { url: target, referer: s.headers?.Referer || s.url || "" };
  }

  async function readAvailabilityManifest(target: { url: string; referer: string }): Promise<Array<{ quality: string; rank: number }>> {
    try {
      const response = await fetch(target.url, {
        headers: { ...BASE_HDRS, ...(target.referer ? { Referer: target.referer } : {}) },
        redirect: "follow",
        signal: AbortSignal.timeout(AVAILABILITY_MANIFEST_TIMEOUT_MS),
      });
      if (!response.ok) return [];
      const body = await response.text();
      if (!body.includes("#EXTM3U") || !body.includes("#EXT-X-STREAM-INF")) return [];
      const seen = new Set<string>();
      const out: Array<{ quality: string; rank: number }> = [];
      const lines = body.split(/\r?\n/).map(line => line.trim());
      for (const line of lines) {
        if (!line.startsWith("#EXT-X-STREAM-INF")) continue;
        const resolution = line.match(/RESOLUTION=\d+x(\d+)/i);
        const bandwidth = line.match(/BANDWIDTH=(\d+)/i);
        const height = resolution ? Number(resolution[1]) : 0;
        const bw = bandwidth ? Number(bandwidth[1]) : 0;
        const quality = height >= 1080 || bw >= 2_000_000 ? "1080p"
          : height >= 720 || bw >= 1_000_000 ? "720p"
          : height >= 480 || bw >= 500_000 ? "480p" : "360p";
        if (!seen.has(quality)) {
          seen.add(quality);
          out.push({ quality, rank: quality === "1080p" ? 13 : quality === "720p" ? 9 : quality === "480p" ? 7 : 5 });
        }
      }
      return out;
    } catch { return []; }
  }

  async function emitAvailability(srcs: UnifiedSource[]): Promise<void> {
    // Metadata-only: do not request an m3u8, segment, MP4, or proxy URL during
    // the picker scan. The source adapter's episode response and quality label
    // are enough to render the row; playback starts only after a tap.
    await Promise.allSettled(srcs.map(async source => {
      /* AnimeWitcher may return one master HLS URL whose database label is
         only "HD". Inspecting its variant playlist is still availability-only
         (no segments are requested), and prevents the latest-episodes picker
         from collapsing 1080/720/480 into one AW row. */
      if (String((source as any).site || "") === "animewitcher") {
        const target = getAvailabilityManifestTarget(source);
        if (target) {
          const variants = await readAvailabilityManifest(target);
          if (variants.length) {
            for (const variant of variants) {
              sendCheckSrc({
                ...source,
                quality: variant.quality,
                qualityRank: variant.rank,
                label: `AnimeWitcher · ${variant.quality}`,
              });
            }
            return;
          }
        }
      }
      sendCheckSrc(source);
    }));
  }

  function scheduleAvailability(srcs: UnifiedSource[]): void {
    const job = emitAvailability(srcs);
    availabilityJobs.add(job);
    void job.finally(() => availabilityJobs.delete(job));
  }

  function sendSrc(s: UnifiedSource) {
    if (closed) return;
    if (checkOnly) { sendCheckSrc(s); return; }
    if (!s.directUrl && !s.isEmbed) return;
    // iframe policy: only mega.nz and vidmoly allowed as sandboxed embed
    if (s.isEmbed) {
      const eu = (s.directUrl || s.url).toLowerCase();
      if (!eu.includes("mega.nz") && !eu.includes("mega.co.nz") && !VIDMOLY_HOSTS.some(h => eu.includes(h)) && !HIDDEN_RESOLVE_EMBED_HOSTS.some(h => eu.includes(h)) && !HIDDEN_RESOLVE_EMBED_SITES.includes(s.site || "")) return;
    }
    const checkUrl = s.directUrl || s.url;
    const isOwnProxy = checkUrl.startsWith("/api/");
    if (!s.isEmbed && !isOwnProxy && DEAD_FILE_HOSTS.some(h => checkUrl.toLowerCase().includes(h))) return;
    const key = checkUrl.includes("workers.dev")
      ? "cdn:" + checkUrl.replace(/^https?:\/\/[^/]+/, "")
      : checkUrl;
    if (globalSeen.has(key)) return;
    globalSeen.add(key);

    /* استخراج Referer/Origin من رابط الـ proxy (ref= param) وتضمينهم في الاستجابة.
       هذا يتيح للعميل (ExoPlayer/AVPlayer) إرسال الـ headers الصحيحة مباشرةً للـ CDN
       حتى لو لم يكن هناك proxy يمر عبر الخادم. */
    let derivedHeaders = s.headers;
    if (!derivedHeaders && s.directUrl) {
      try {
        const proxyUrl = s.directUrl.startsWith("/") ? `http://x.com${s.directUrl}` : s.directUrl;
        const pu = new URL(proxyUrl);
        const ref = pu.searchParams.get("ref");
        if (ref) {
          let origin = "";
          try { origin = new URL(ref).origin; } catch {}
          derivedHeaders = origin ? { Referer: ref, Origin: origin } : { Referer: ref };
        }
      } catch { /* ignore */ }
    }

    // corsOk=true (e.g. kawaii CDN): نُرسل directUrl خاماً بدون تشفير حتى يتعرّف عليه RiftPlayer
    // ويُطبّق referrerPolicy="no-referrer" الصحيح — التشفير يُعيق الكشف ويُفشل التشغيل صامتاً
    const toSend: UnifiedSource = {
      ...s,
      directUrl: s.directUrl
        ? (s.corsOk ? s.directUrl : encryptProxyUrl(s.directUrl))
        : s.directUrl,
      ...(derivedHeaders ? { headers: derivedHeaders } : {}),
    };
    res.write(`data: ${JSON.stringify(toSend)}\n\n`);
  }

  // ── Hard deadline: أغلق الاتصال بعد 28 ثانية مهما كان ──
  const forceClose = setTimeout(() => {
    if (!closed) { closed = true; res.write("data: [DONE]\n\n"); res.end(); }
  }, checkOnly ? 35_000 : 45_000);

  try {
    const SCRAPER_MS = checkOnly ? 11000 : 14000;
    const EXTRACT_MS = checkOnly ? 5000 : 12000;
    const race = <T>(p: Promise<T>, ms: number, fallback: T) =>
      Promise.race([p, new Promise<T>(r => setTimeout(() => r(fallback), ms))]);

    // ── مساعد: probe سريع للمصادر عبر proxy الداخلي ──
    const PORT_NUM = parseInt(String(process.env.PORT || 5000), 10);
    async function probeOwnProxy(s: UnifiedSource): Promise<boolean> {
      const cu = s.directUrl || s.url;
      if (!cu.startsWith("/api/")) return true; // روابط خارجية: نثق بها
      // hls-proxy/seg-proxy: لا نختبرها (مانيفيست HLS معقد) — نثق بها
      if (cu.includes("/hls-proxy") || cu.includes("/seg-proxy")) return true;
      // video-proxy: اختبر رابط الهدف الفعلي — HEAD أولاً ثم GET-Range كـ fallback
      // بعض CDNs ترفض HEAD بـ 403/405 لكن تعمل مع GET — لا نحذف المصدر عند فشل HEAD
      if (cu.includes("/video-proxy")) {
        try {
          const params = new URL("http://x" + cu).searchParams;
          let targetUrl = params.get("url") || "";
          const ref = params.get("ref") || "";
          if (!targetUrl) return false;
          if (isEncrypted(targetUrl)) targetUrl = decryptParam(targetUrl);
          if (!targetUrl.startsWith("http")) return false;
          const commonHdrs = {
            Referer: ref && isEncrypted(ref) ? decryptParam(ref) : (ref || ""),
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36",
          };
          const headRes = await fetch(targetUrl, {
            method: "HEAD", headers: commonHdrs, redirect: "follow",
            signal: AbortSignal.timeout(4_000),
          });
          if (headRes.ok) return true;
          // HEAD أعاد 403/405/501 — قد يكون CDN لا يدعم HEAD (false negative)
          // جرّب GET-Range للتأكد
          if (headRes.status === 403 || headRes.status === 405 || headRes.status === 501) {
            const getRes = await fetch(targetUrl, {
              method: "GET", headers: { ...commonHdrs, Range: "bytes=0-0" }, redirect: "follow",
              signal: AbortSignal.timeout(5_000),
            });
            // 200/206 = حي؛ 416 = CDN يعمل لكن رفض range (يعني الرابط حي)
            return getRes.status === 200 || getRes.status === 206 || getRes.status === 416;
          }
          return false;
        } catch { return false; }
      }
      const localUrl = `http://127.0.0.1:${PORT_NUM}${cu}`;
      try {
        const pr = await fetch(localUrl, { signal: AbortSignal.timeout(3_000) });
        return pr.ok;
      } catch { return false; }
    }

    async function probeHttpResource(url: string, referer?: string): Promise<boolean> {
      if (!/^https?:\/\//i.test(url)) return false;
      const headers: Record<string, string> = {
        "User-Agent": BROWSER_UA,
        Accept: "*/*",
        ...(referer ? { Referer: referer } : {}),
      };
      try {
        const head = await fetch(url, { method: "HEAD", headers, redirect: "follow", signal: AbortSignal.timeout(4_000) });
        if (head.ok) return true;
        if (![403, 405, 416, 429, 501].includes(head.status)) return false;
      } catch {}
      try {
        const ranged = await fetch(url, { method: "GET", headers: { ...headers, Range: "bytes=0-1" }, redirect: "follow", signal: AbortSignal.timeout(5_000) });
        return ranged.status === 200 || ranged.status === 206 || ranged.status === 416;
      } catch { return false; }
    }

    async function probeVerifiedSource(s: UnifiedSource): Promise<boolean> {
      const raw = s.directUrl || s.url;
      if (!raw) return false;
      const referer = s.headers?.Referer || s.url || "https://anime-nova.local/";
      try {
        if (raw.startsWith("/api/")) {
          if (raw.includes("/hls-proxy")) {
            const params = new URL("http://x" + raw).searchParams;
            let target = params.get("url") || "";
            if (isEncrypted(target)) target = decryptParam(target);
            const ref = params.get("ref") || referer;
            if (!target.startsWith("http")) return false;
            return await Promise.race([
              probeHlsManifest(target, isEncrypted(ref) ? decryptParam(ref) : ref),
              new Promise<boolean>(resolve => setTimeout(() => resolve(false), 7_000)),
            ]);
          }
          return await probeOwnProxy(s);
        }
        if (/(?:\.m3u8(?:[?#]|$)|\/hls(?:\/|$)|\/playlist(?:\/|$))/i.test(raw)) {
          return await Promise.race([
            probeHlsManifest(raw, referer),
            new Promise<boolean>(resolve => setTimeout(() => resolve(false), 7_000)),
          ]);
        }
        return await probeHttpResource(raw, referer);
      } catch { return false; }
    }

    async function verifyPlayableSources(srcs: UnifiedSource[]): Promise<UnifiedSource[]> {
      const candidates = srcs.slice(0, 8);
      const results = await Promise.allSettled(
        candidates.map(async s => ({
          s,
          ok: await Promise.race([
            probeVerifiedSource(s),
            new Promise<boolean>(resolve => setTimeout(() => resolve(false), 3800)),
          ]),
        }))
      );
      return results
        .filter((r): r is PromiseFulfilledResult<{ s: UnifiedSource; ok: boolean }> => r.status === "fulfilled")
        .filter(r => r.value.ok)
        .map(r => r.value.s);
    }

    async function probeAndFilter(srcs: UnifiedSource[]): Promise<UnifiedSource[]> {
      return verifyPlayableSources(srcs);
    }

    // مواقع ذات CDN token قصير الأجل — بياناتها Stale = منتهية الصلاحية حتماً
    // لا يجب تقديمها للمستخدم (يرى المصدر لكن البث يفشل بـ 403)
    const SHORT_TTL_NO_STALE = new Set([
      "animewitcher", "animeify",       // Streamtape/MediaFire ~45min
      "moviebox", "moviebox_anim",      // &t= signed URLs ~10min
      "vidlink_encdec", "vidlink_anim", // stormvv URLs ~45min
      "xpass_anim",                     // XPass token ~8min
      "anineko", "anikoto",             // vibeplayer.site tokens expire in ~1-2h
      "kawaii",                         // cdn.momentoai.dev signed URLs (md5+expires) — نتجنب الـ cache القديم الذي يحتوي proxy URLs لا تعمل
        "anivexa_re",                     // RE/FlixCloud rows may lack the manifest key

]);

    // ── مساعد: كاشط بـ cache + extractAndCollect ──
    async function scrapeCached(
      site: string,
      scrape: () => Promise<UnifiedSource[]>,
      useExtract = true,
      timeoutMs = SCRAPER_MS,
    ) {
      if (!title || closed) return;
      // Availability is a bounded verification pass. Do not let a provider's normal
      // playback timeout delay every other provider in the picker.
      // A short check deadline made late providers vanish on first visit.
      const effectiveTimeoutMs = checkOnly ? Math.min(timeoutMs, 11000) : timeoutMs;
      // Provider URL formats changed for AniNeko and SAnime. Version their
      // cache keys so rows containing dead VibeVibe or /Video2 URLs cannot
      // survive a deploy and get advertised again to web/mobile clients.
      const cacheSite = site === "anineko" ? "anineko-v2"
        : site === "sanime" ? "sanime-v2"
        : site;
      const cKey = makeSourceCacheKey(
        cacheSite,
        title,
        ep,
        anilistId || anslayerId || `${reqYear || ""}:${reqTotalEps || ""}`,
      );
      const hit  = await getFromSourceCache(cKey);
      // Reanime URLs are paired with a per-embed manifest key and cannot use
      // source-cache rows created before that key was propagated to hls-proxy.
      // Kawaii signed URLs and episode availability rotate quickly. Never serve
      // a previous L2/L1 row while a newly aired episode is being requested.
      const forceFresh = checkOnly || site === "kawaii" || site === "reanime";

      if (hit && !forceFresh) {
        const isStaleOrNearExpiry = hit.stale || shouldRefreshCache(hit.expiresAt);

        // مواقع ذات CDN token قصير: لا تُقدَّم بيانات قديمة — كشط مباشر
        if (isStaleOrNearExpiry && SHORT_TTL_NO_STALE.has(site) && !checkOnly) {
          // سقوط مباشر للكشط الحي (لا نُرجع شيئاً من الكاش القديم)
        } else {
          // Availability must be fast and must not hide a provider because a CDN
          // rejected a probe. The click-time fetch/playback path remains the final
          // verifier, while this pass only discovers active provider rows.
          if (checkOnly) {
            // Await only the tiny metadata write so this provider's rows are
            // guaranteed to reach SSE before the provider promise resolves.
            // This is still fully parallel across providers and never probes
            // a CDN, manifest, MP4, or segment.
            await emitAvailability(hit.sources);
            return;
          }
          hit.sources.forEach(sendSrc);

          // تجديد خلفي إذا اقترب الانتهاء أو انتهى فعلاً (stale-while-revalidate)
          if (isStaleOrNearExpiry) {
            setImmediate(async () => {
              try {
                const srcs = await race(scrape(), effectiveTimeoutMs, []);
                if (!srcs.length) return;
                if (useExtract) {
                  const buf: UnifiedSource[] = [];
                  await extractAndCollect(srcs, buf, new Set<string>(), EXTRACT_MS);
                  if (buf.length) {
                    await setSourceCache(cKey, site, buf);
                    if (!closed) buf.forEach(s => sendSrc(s));
                  }
                } else {
                  const alive = await probeAndFilter(srcs);
                  if (alive.length) {
                    await setSourceCache(cKey, site, alive);
                    if (!closed) alive.forEach(s => sendSrc(s));
                  }
                }
              } catch {}
            });
          }
          return; // لا حاجة للانتظار
        }
      }

      // ❌ لا يوجد cache → اكشط
      const srcs = await race(scrape(), effectiveTimeoutMs, []);
      if (!srcs.length) return;

      // In check mode, verify a small bounded sample before advertising a row.
      // Clicking a row still performs the complete fetch-source/playback check.
      if (checkOnly) {
        // Advertise metadata immediately. Awaiting this only guarantees the
        // SSE rows are written before this provider resolves; all providers
        // remain concurrent in the Promise.allSettled wave above.
        await emitAvailability(srcs);
        return;
      }

      if (useExtract) {
        const buf: UnifiedSource[] = [];
        await extractAndCollect(srcs, buf, new Set<string>(), EXTRACT_MS);
        if (!closed) buf.forEach(s => sendSrc(s));
        if (buf.length) await setSourceCache(cKey, site, buf);
      } else {
        // إرسال فوري بدون انتظار الـ probe — يظهر في الواجهة فوراً
        if (!closed) srcs.forEach(s => sendSrc(s));
        // Probe في الخلفية لبناء cache دقيق فقط
        probeAndFilter(srcs).then(async alive => {
          if (alive.length) await setSourceCache(cKey, site, alive);
        }).catch(() => {});
      }
    }

    // Bounded provider queue: every visible source is queried, but only a
    // few upstream requests run at once so one visitor cannot exhaust RAM.
    async function runSourceQueue(
      jobs: Array<() => Promise<unknown>>,
      concurrency = 4,
    ): Promise<void> {
      let cursor = 0;
      async function worker(): Promise<void> {
        while (!closed) {
          const index = cursor++;
          if (index >= jobs.length) return;
          try {
            await jobs[index]();
          } catch (error: any) {
            console.warn("[source-queue] provider failed:", error?.message || error);
          }
        }
      }
      const workers = Math.min(concurrency, jobs.length);
      await Promise.all(Array.from({ length: workers }, () => worker()));
    }

    // Availability scan: ask every provider shown in the picker through a
    // bounded queue. scrapeCached() fetches the provider page/API to
    // learn whether the requested episode exists, but check mode never runs
    // extractAndCollect, CDN probing, manifest reads, or video downloads.
    if (checkOnly) {
      await Promise.race([runSourceQueue([
        () => scrapeCached("kawaii",        () => getKawaiiAnimeSources(title, english, ep, anilistId, true), false, 3200),
        () => scrapeCached("megaplay",      () => getMegaPlayAnimeSources(title, english, ep, anilistId, true), false, 5000),
        () => scrapeCached("animekai",      () => getAnimeKaiSources(title, english, ep, anilistId, true), false, 5000),
        () => scrapeCached("anineko",       () => getAninekoSources(title, english, ep, titleVariants, true), false, 5000),
        () => (async () => {
          const checked = await checkConsumetEpisode("consumet_gogo", title, english, ep, titleVariants, anilistId);
          if (checked.available) {
            sendCheckSrc({
              name: "GogoAnime · الحلقة موجودة",
              url: "",
              quality: checked.quality || "720p",
              qualityRank: checked.qualityRank || 13,
              site: "consumet_gogo",
              serverCount: checked.serverCount || 1,
              verified: true,
            } as UnifiedSource);
          }
        })(),
        () => scrapeCached("animewitcher",  () => getAnimeWitcherSources(title, english, ep, anilistId, titleVariants, true), false, 11000),
        () => scrapeCached("anslayer",      () => getAnimeSlayerSources(title, english, ep, anslayerId, titleAr), false, 3200),
        () => scrapeCached("animeify",      () => getAnimeifySources(title, english, ep, titleVariants, true), false, 4000),
        () => scrapeCached("sanime",        () => getSAnimeSources(title, english, ep, titleVariants, true), false, 4000),
        () => scrapeCached("anifox",        () => getAnifoxSources(title, english, ep, titleVariants, anilistId, true), false, 4000),
      ], 4), new Promise<void>(resolve => setTimeout(resolve, 32_000))]);
      if (availabilityJobs.size) await Promise.allSettled([...availabilityJobs]);
      clearInterval(keepalive);
      clearTimeout(forceClose);
      if (!closed) { closed = true; res.write("data: [DONE]\n\n"); res.end(); }
      return;
    }

    // جميع الكاشطات تعمل بالتوازي
    await Promise.allSettled([
      // ── مصادر عربية مدبلجة / مترجمة ──────────────────────────────
      // shahiid/animelek: معطّلة بطلب المستخدم 2026-07-14 (قسم الأنمي فقط)
      // scrapeCached("shahiid",      () => getShahiidSources(title, english, ep, isMovie, matchCtx)),
      // scrapeCached("animelek",     () => getAnimelekSources(title, english, ep, isMovie, matchCtx)),
      scrapeCached("animedar",     () => getAnimadarSources(title, english, ep, isMovie, matchCtx)),
      // okanime: معطّل بطلب المستخدم
      // scrapeCached("okanime",      () => getOkAnimeSources(title, english, ep, isMovie, matchCtx), true, 22_000),
      // mitanime: محذوف بطلب المستخدم 2026-07-27
      scrapeCached("animeify",     () => getAnimeifySources(title, english, ep, titleVariants),  false, 18000),
      scrapeCached("animeday",     () => getAnimeDaySources(title, english, ep),    true, 18000),
      // scrapeCached("seepanel",  () => getSeepanelSources(title, english, ep, isMovie)), // DEAD: panel.seepanel.top/api returns 404 (2026-06)
      scrapeCached("arabseed",     () => getArabSeedSources(title, english, ep, isMovie)),
      scrapeCached("mycima",       () => getMyCimaSources(title, english, ep, isMovie)),
      // egybest: مُستبعد بطلب المستخدم 2026-07-13 — منطق الاستخراج نفسه مؤكَّد يعمل
      // (بحث WP-JSON + data-embed-url) لكن جودة/أولوية النتائج غير مرضية حالياً؛
      // محفوظ بالذاكرة (egybest-exclusion-2026-07-13.md) لإعادة النظر لاحقاً.
      // scrapeCached("egybest",   () => getEgyBestSources(title, english, ep, isMovie)),
      // moviz_time: معطّل بطلب المستخدم 2026-07-14 (قسم الأنمي فقط)
      // scrapeCached("moviz_time",   () => getMovizTimeSources(title, english, ep, isMovie), false, 20000),
      scrapeCached("topcinemaa",   () => getTopCimaaSources(title, english, ep, isMovie)),
      // ── ياباني مترجم (AniList ID) ─────────────────────────────────
      scrapeCached("kawaii",       () => getKawaiiAnimeSources(title, english, ep, anilistId), false, 14000),
      scrapeCached("megaplay",     () => getMegaPlayAnimeSources(title, english, ep, anilistId), false, 18000),
      // AK and AN are visible in both clients; include them in the first availability pass too.
      // Previously they existed only in fetch-source, so the picker reported them as missing.
      scrapeCached("animekai",     () => getAnimeKaiSources(title, english, ep, anilistId),      false, 26000),
      scrapeCached("anineko",      () => getAninekoSources(title, english, ep, titleVariants),    false, 30000),
      // FX and GO were fetchable only after a tap, so the availability pass
      // incorrectly marked them missing. Discover them in the same parallel pass.
      scrapeCached("anifox",       () => getAnifoxSources(title, english, ep, titleVariants, anilistId), false, 12000),
      scrapeCached("consumet_gogo",() => getConsumetSources("consumet_gogo", title, english, ep, titleVariants, anilistId), false, 12000),
      scrapeCached("anikototv",    () => getAnikototvSources(title, english, ep),               false, 22000),
      // anikuro: محذوف
      // anivault: محذوف — ترجمة إنجليزية مدمجة في الـ stream
      // hianime: معطّل بطلب المستخدم 2026-07-30 — تفوّت حلقات
      // animex: محذوف
      // animepahe: mirurotvapi + owocdn AES-128 HLS — 18ث timeout — ثقيل
      scrapeCached("anipm",        () => getAniPmSources(title, english, ep, anilistId),        false, 20000),
      scrapeCached("anizone",      () => getAniZoneSources(title, english, ep),                 false, 18000),
      // 2dhive (2D): removed with the failed provider set shown in the client.
      scrapeCached("animewitcher", () => getAnimeWitcherSources(title, english, ep, anilistId, titleVariants), false, 38000),
      // ── مدبلج عربي/كرتون (WordPress REST) ───────────────────────────
      scrapeCached("stardima",     () => getStardimaSources(title, english, ep, isMovie),      false, 20000),
      // ── ياباني مترجم (بدون ID) ────────────────────────────────────
      // ── StarCima — محذوف من قسم الأنمي (يرسل صوتاً هندياً بسبب TMDB ID خاطئ) ──
      // scrapeCached("starcima_anim", () => getStarCimaAnimeSources(title, english, ep), false),
      // ── مصادر إنجليزية + ترجمة عربية (تظهر في قسم منفصل بالأسفل) ─────────────────
      // videasy_anim: نُقل بالكامل إلى قسم الأنيميشن بطلب المستخدم 2026-07-15
      // (استخدم getVideasyAnimationSources في animation.ts بدلاً منه)
      // vidlink_anim: معطّل — enc-dec.app/api/enc-vidlink معلَّق منذ 2026-07-08
      // mxplayer: معطّل — خدمة mxplayer_service.py (المنفذ 8002) غير مُشغَّلة
      // lordflix_anim: محذوف (Cloudflare browser-challenge)
      // scrapeCached("vyla_anim", () => getVylaAnimeSources(title, english, ep, anilistId), false), // DEAD: missourimonster-vyla.hf.space returns 404 (2026-06)
      scrapeCached("vidfast",       () => getVidFastAnimeSources(title, english, ep, anilistId),  false, 22000),
      // vidsrc_cc_anim / superembed_anim: TMDB-native embeds already proven for animation,
      // reused here for anime (2026-07-12) — see getVidsrcCcAnimeSources/getSuperEmbedAnimeSources
      scrapeCached("vidsrc_cc_anim", () => getVidsrcCcAnimeSources(title, english, ep, anilistId),  false, 20000),
      scrapeCached("superembed_anim", () => getSuperEmbedAnimeSources(title, english, ep, anilistId), false, 20000),
      scrapeCached("dulo_anim",    () => getDuloAnimeSources(title, english, ep, anilistId),      false, 18000),
      scrapeCached("cinesrc_anim", () => getCineSrcAnimeSources(title, english, ep, anilistId),   false, 35000),
      // ── FaselHD-DB — GitHub JSON catalog + Orkestr relay (fasel-hd.cam) ─────
      // faselhd_db: معطّلة بطلب المستخدم 2026-07-14 (قسم الأنمي فقط)
      // scrapeCached("faselhd_db", () => getFaselhdDbSources(title, english, ep, isMovie), false, 28000),
      // witanime: معطّل بطلب المستخدم
      // scrapeCached("witanime",  () => getWitanimeSources(title, english, ep),   false, 50000),
      // anime3rb: حُذف 2026-07-28 — hound browser dependency
      // scrapeCached("anime3rb", () => getAnime3rbSources(title, english, ep), false, 38000),
      // akoam: حُذف 2026-07-28 — كان يستخدم hopxBrowserExtract (browser) على كل طلب
      // ── MovieBox — MP4 مباشر، صوت خام، بدون ترجمة مدمجة ─────────────────────
      scrapeCached("moviebox",  () => getMovieBoxAnimeSources(title, english, ep, isMovie), false, 18000),
      // ── أبس أنمي — معطّل مؤقتاً (OK.ru يحجب datacenter IPs) ────────────────────
      // scrapeCached("appsanime", () => getAppsAnimeSources(title, english, ep), false, 20000),
      // ── معطّلة / محذوفة ────────────────────────────────────────────
      // toonstream:   للأنيميشن فقط، غير مناسب للأنمي
      // witanime:     مُعاد تفعيله 2026-07 — CycleTLS + cfProxy chain
      // anime3rb:     مُعاد تفعيله 2026-07 — CycleTLS + cfProxy chain
      // animetime CDN (vidhls.com) يعمل لبعض الأنمي (200) — مُعاد تفعيله 2026-07-01
      // animehub:     ترجمة إنجليزية مدمجة في الفيديو
      // animegg:      معطّل بطلب المستخدم
      // allmanga: معطّل 2026-07-17 — AA_CRYPTO_MISSING على endpoint الحلقات (AllAnime أضافت anti-scraping)
      // scrapeCached("allmanga", () => getAllMangaSources(title, english, ep, anilistId), false, 18000),
      // reanime: re-enabled after live VPS verification
      // Reanime/RE disabled globally: do not scrape or expose it.
      // animepahe:    mirurotvapi + owocdn AES-128 HLS — 18ث timeout — ثقيل جداً في التشغيل
      // ── مصادر جديدة يوليو 2026 ────────────────────────────────────────────
      scrapeCached("nekowatch",  () => getNekowatchSources(title, english, ep, anilistId),  false, 18000),
      // xpass_anim: محذوف — CDN يحجب VPS/CF IPs (2026-07-15)
      // vaplayer_anim: محذوف من الأنمي — يُبقى فقط في الأنيميشن (2026-07-15)
      // xyra_anim: معطّل مؤقتاً — api.xyra.stream يرجع 502 (Cloudflare) لكل الطلبات منذ 2026-07-09
      // scrapeCached("xyra_anim",  () => getXyraAnimeSources(title, english, ep, anilistId),  false, 18000),
      scrapeCached("sanime",     () => getSAnimeSources(title, english, ep, titleVariants), false, 20000),
      scrapeCached("anslayer",   () => getAnimeSlayerSources(title, english, ep, anslayerId, titleAr), false, 45000),
      // animetime / notorrent: أُزيلت كلياً بطلب المستخدم (2026-07-09)
    ]);

  } catch (e: any) {
    console.error("sources-stream error:", e?.message ?? e);
  }

  if (checkOnly && availabilityJobs.size) {
    await Promise.allSettled([...availabilityJobs]);
  }
  clearInterval(keepalive);
  clearTimeout(forceClose);
  if (!closed) { closed = true; res.write("data: [DONE]\n\n"); res.end(); }
});


// ════════════════════════════════════════════════════════════════════
//  fetch-source  GET /api/anime/fetch-source?site=&title=&english=&ep=
//  Runs ONE scraper on-demand and returns its sources as JSON.
//  Used by the two-phase picker: all scrapers shown immediately,
//  video URL fetched only when user taps a specific source row.
// ════════════════════════════════════════════════════════════════════
router.get("/anime/fetch-source", async (req, res) => {
  const requestedSite = ((req.query.site as string) || "").trim().toLowerCase();
  const DISABLED_SOURCE_SITES = new Set<string>();
  if (DISABLED_SOURCE_SITES.has(requestedSite)) {
    res.json({ sources: [], disabled: true });
    return;
  }
  // Keep old mobile builds working while routing every Reanime request
  // through the Anivexa adapter, which preserves the per-embed manifest key.
  const site = requestedSite === "consumet_reanime" ? "reanime" : requestedSite;
  const title     = ((req.query.title   as string) || "").trim();
  const english   = ((req.query.english as string) || "").trim() || null;
  const ep        = parseInt((req.query.ep    as string) || "1");
  let anilistId = parseInt((req.query.anime as string) || (req.query.anilistId as string) || "0") || undefined;
  const format    = ((req.query.format  as string) || "").trim().toUpperCase();
  const isMovieParam = (req.query.isMovie as string) === "true";
  const isMovie   = format === "MOVIE" || format === "MOVIE_SHORT" || isMovieParam;
  const anslayerId = parseInt((req.query.anslayerId as string) || "0") || undefined;
  const titleAr    = ((req.query.titleAr as string) || "").trim() || null;
  let titleVariants: string[] = [];
  try {
    const rawTitles = req.query.titles as string;
    const parsed = rawTitles ? JSON.parse(rawTitles) : [];
    if (Array.isArray(parsed)) {
      titleVariants = parsed.filter((value): value is string =>
        typeof value === "string" && value.trim().length > 0
      ).map(value => value.trim()).slice(0, 20);
    }
  } catch { /* malformed optional title list — keep the primary fields */ }

  /* The picker requests one tier at a time. Keep provider/cache data intact,
     but serialize only the requested tier back to the client. */
  const requestedQuality = (() => {
    const q = String(req.query.quality || '').trim().toLowerCase();
    if (q === '1080p' || q === 'fhd' || q === '1080') return '1080p' as const;
    if (q === '720p' || q === 'hd' || q === '720') return '720p' as const;
    if (q === '480p' || q === '480') return '480p' as const;
    if (q === '360p' || q === 'sd' || q === '360') return '360p' as const;
    return null;
  })();
  const filterRequestedQuality = <T extends { quality?: string; qualityRank?: number; name?: string; label?: string; url?: string; directUrl?: string }>(rows: T[]): T[] => {
    if (!requestedQuality) return rows;
    return rows.filter((s) => {
      const detected = sourceCheckQuality(s).quality;
      // The picker has no separate 480p row; 480p is the SD/360p tier in
      // both clients. Keep it available when the user selects that tier.
      return detected === requestedQuality
        || (requestedQuality === "360p" && detected === "480p");
    });
  };
  const stripAnimeSlayerSubtitles = <T extends { subtitleUrl?: string }>(rows: T[]): T[] =>
    site === "anslayer" ? rows.map(({ subtitleUrl: _subtitleUrl, ...source }) => source as T) : rows;

  if (!site || !title) {
    res.status(400).json({ error: "site and title required", sources: [] });
    return;
  }

  // روابط “أحدث الحلقات” تحمل AnimeSlayer ID في anime=، لذلك تكون AniList ID مفقودة.
  // حلّها قبل تشغيل أي مصدر يعتمد على AniList (KW وAnimeWitcher وغيرها).
  if (site !== "anslayer" && (site === "megaplay" || site === "kawaii" || !anilistId)) {
    const resolvedByTitle = await Promise.race([
      resolveAniListIdForSource(title, english, titleVariants, titleAr),
      new Promise<number | undefined>(resolve => setTimeout(() => resolve(undefined), 3500)),
    ]);
    if (resolvedByTitle) anilistId = resolvedByTitle;
  }

  // ── تقييد مؤقت (بطلب المستخدم 2026-07-13): تعطيل كل مصادر قسم الأنمي ما عدا
  //    كواي(kawaii) / أنمي سلاير(anslayer) / AniKoto(anikoto) /
  //    HiAnime(hianime) / AnimeWitcher(animewitcher) / أنمي فاي(animeify) —
  //    السكرابر لا يمر بأي موقع آخر إطلاقاً، نفس نظام قسم الأنيميشن (ANIM_SOURCE_ALLOWLIST).
  //    لإعادة التفعيل: احذف/عدّل ANIME_SOURCE_ALLOWLIST بالأسفل. ─────────────────
  const ANIME_SOURCE_ALLOWLIST: Set<string> | null = new Set([
    "kawaii",
    "megaplay",        // ⚡ الأسرع — DB-cached (50ms) ✅
    "anineko",       // 🎌 HLS متعدد الجودات — full VPS manifest + segment proxy
    "animewitcher",  // 🗄️ DB-first aw_links (142k) → Algolia fallback ✅
    "anifox",        // 📦 12 مصدر — Archive/MediaFire/MP4Upload/Uqload ✅
    "sanime",        // 🎌 MP4 مباشر عربي مدبلج ✅
    "anslayer",      // ⚡ بحث متوازٍ + dedupe للطلبات + cache
    "animeify",      // 🎬 أنمي فاي — MEGA/Streamtape/MediaFire ✅ (مُعاد تفعيله)
    "animekai",      // 🎌 AnimeKai direct scraper — HLS/MP4
    ...ANIVEXA_SOURCES.map(source => source.site),
    ...CONSUMET_SOURCES.map(source => source.site),
    // "anipub":     معطّل
    // ── مُعطَّلة سابقاً ─────────────────────────────────────────────────────
    // "akoam": حُذف 2026-07-28 — كان يستخدم hopxBrowserExtract على كل طلب
    // "allmanga": معطّل 2026-07-17 — AA_CRYPTO_MISSING
  ]);
  // الطلبات الداخلية (x-internal:1) تتجاوز القائمة لتسمح لـ animation.ts باستدعاء moviz_time وغيره
  const DISABLED_ANIME_SOURCES = new Set([
    "anikoto", "shirayuki_anikoto", "shirayuki_animix",
    "anivexa_anikoto", "anivexa_anidbapp",
    "consumet_world", "consumet_miruro", "consumet_saturn",
    "consumet_reanime", "consumet_anikoto", "anime4up2",
    // Retired provider ids and legacy short tags. Keep these blocked so stale
    // clients/cache rows cannot resurrect the failed servers.
    "mkissa", "mk", "ra", "animegg", "gg", "anibd", "db",
    "2dhive", "2d", "senshi", "se", "kickassanime", "ka",
    "anivexa_mkissa", "anivexa_animegg", "anivexa_anibd",
    "anivexa_2dhive", "anivexa_senshi", "anivexa_kickassanime",
  ]);
  const isInternalCall = req.headers["x-internal"] === "1";
  // Reject retired provider ids before any provider adapter or cache lookup.
  // This keeps old clients and stale cache rows from reintroducing them.
  if (DISABLED_ANIME_SOURCES.has(site)) {
    res.json({ sources: [] });
    return;
  }
  if (isAnivexaSite(site)) {
    const sources = stripAnimeSlayerSubtitles(filterRequestedQuality(await getAnivexaSources(site, anilistId, ep, title, english, titleVariants)));
    const isMobileClient = (req.headers["x-nova-client"] || "").toString().includes("mobile");
    const encSources = sources.map(source => {
      const wrapped = isMobileClient ? wrapForMobile(source) : source;
      return {
        ...wrapped,
        directUrl: wrapped.directUrl
          ? (wrapped.corsOk ? wrapped.directUrl : encryptProxyUrl(wrapped.directUrl))
          : wrapped.directUrl,
      };
    });
    res.json({ sources: encSources });
    return;
  }
  if (isConsumetSite(site)) {
    const sources = stripAnimeSlayerSubtitles(filterRequestedQuality(await getConsumetSources(site, title, english, ep, titleVariants, anilistId)));
    const isMobileClient = (req.headers["x-nova-client"] || "").toString().includes("mobile");
    const encSources = sources.map(source => {
      const wrapped = isMobileClient ? wrapForMobile(source) : source;
      return {
        ...wrapped,
        directUrl: wrapped.directUrl
          ? (wrapped.corsOk ? wrapped.directUrl : encryptProxyUrl(wrapped.directUrl))
          : wrapped.directUrl,
      };
    });
    res.json({ sources: encSources });
    return;
  }
  if (ANIME_SOURCE_ALLOWLIST && !ANIME_SOURCE_ALLOWLIST.has(site) && !isInternalCall) {
    res.json({ sources: [] });
    return;
  }

  // ── فحص الكاش أولاً ─────────────────────────────────────────────
  // مواقع ذات tokens/URLs قصيرة الأجل — لا نقدّم بياناتها إذا كانت قديمة
  const SHORT_TTL_FETCH_SITES = new Set([
    "anikoto", "anikototv", // vibeplayer.site tokens ~1-2h
    "animekai",             // embed/CDN links are signed and short-lived
    "animewitcher", "animeify",                    // Streamtape/MediaFire ~45min
    "kawaii", "anifox",                             // signed CDN/download URLs
    "moviebox", "moviebox_anim",                   // &t= signed URLs ~10min
    "vidlink_encdec", "vidlink_anim",              // stormvv URLs ~45min
    "xpass_anim",                                  // XPass token ~8min
      "anivexa_re",                                  // RE/FlixCloud signed manifests

]);
  const SHORT_TTL_MAX_AGE_MS = 90 * 60_000; // 90 دقيقة — قبل انتهاء tokens
  // Shirayuki returns short-lived CDN URLs; never serve its cached rows.
  const FORCE_LIVE_FETCH_SITES = new Set([
    "shirayuki_anikoto",
    "shirayuki_animix",
    "anineko", // discard stale ViviBebe rows and prefer live AN media hosts
    // Kawaii links are episode-specific signed URLs and the catalog changes
    // while an episode is still being added. Always ask Kawaii for a fresh URL.
    "kawaii",
    "megaplay", // MegaPlay HLS tokens rotate; never serve a stale cached URL
    "reanime", // FlixCloud HLS URLs are signed and must be fetched live
      "anivexa_re",

]);
  const cKey = makeSourceCacheKey(site, title, ep, anilistId || anslayerId);
  let cached = await getFromSourceCache(cKey);
  if (cached && site === "anifox") {
    const liveSources = await filterAnifoxCachedSources(cached.sources);
    if (!liveSources.length) {
      cached = null;
    } else if (liveSources.length !== cached.sources.length) {
      cached = { ...cached, sources: liveSources };
      setSourceCache(cKey, site, liveSources).catch(() => {});
    }
  }
  // للمواقع قصيرة الـ TTL: إذا بقي للكاش أقل من 90 دقيقة أو انتهى → اكشط مباشرةً
  const skipCacheForShortTtl = cached !== null && SHORT_TTL_FETCH_SITES.has(site) &&
    (cached.stale === true || (cached.expiresAt - Date.now()) < SHORT_TTL_MAX_AGE_MS);
  if (cached && !FORCE_LIVE_FETCH_SITES.has(site) &&
      !shouldRefreshCache(cached.expiresAt) && !skipCacheForShortTtl) {
     const enc = stripAnimeSlayerSubtitles(filterRequestedQuality(cached.sources)).map((s: UnifiedSource) => {
      // Cached Kawaii URLs can outlive a provider rotation. When the cached
      // raw URL points to Mewstream, rebuild the proxy URL and force the
      // provider's required Megaplay Referer instead of reusing a stale
      // Kawaii-page Referer from the old cache entry.
      const cacheSource = (() => {
        if (site !== "kawaii") return s;
        const raw = String((s as UnifiedSource & { rawUrl?: string }).rawUrl || "");
        let host = "";
        try { host = new URL(raw).hostname.toLowerCase(); } catch {}
        if (!host.endsWith("mewstream.buzz")) return s;
        const ref = "https://megaplay.buzz/";
        const isHls = s.directType === "hls" || /\.m3u8/i.test(raw) || String(s.directUrl || "").includes("/hls-proxy");
        const proxyPath = isHls
          ? `/api/anime/hls-proxy?url=${encodeURIComponent(raw)}&ref=${encodeURIComponent(ref)}`
          : `/api/anime/video-proxy?url=${encodeURIComponent(raw)}&ref=${encodeURIComponent(ref)}`;
        return {
          ...s,
          url: proxyPath,
          directUrl: proxyPath,
          headers: { ...(s.headers || {}), Referer: ref, Origin: "https://megaplay.buzz" },
        };
      })();
      /* استخراج headers (Referer/Origin) من رابط الـ proxy قبل التشفير.
         يحتاجها ExoPlayer/AVPlayer لإرسال Referer مع طلبات الـ segments مباشرةً للـ CDN.
         إذا كان ref مشفَّراً (hex AES) فهو رابط proxy داخلي — لا نُرسله كـ Referer. */
      let derivedHeaders = cacheSource.headers;
      if (!derivedHeaders && cacheSource.directUrl) {
        try {
          const pu = new URL(cacheSource.directUrl.startsWith("/") ? `http://x.com${cacheSource.directUrl}` : cacheSource.directUrl);
          const ref = pu.searchParams.get("ref");
          if (ref && !isEncrypted(ref)) {
            let origin = "";
            try { origin = new URL(ref).origin; } catch {}
            derivedHeaders = origin ? { Referer: ref, Origin: origin } : { Referer: ref };
          }
        } catch { /* ignore */ }
      }
      const mobileClient = (req.headers["x-nova-client"] || "").toString().includes("mobile");
      const finalS = mobileClient ? wrapForMobile(cacheSource) : cacheSource;
      // corsOk=true: لا تشفير على directUrl — RiftPlayer يحتاج URL الخام لكشف CDN وإخفاء الـ Referer
      const encDirectUrl = finalS.directUrl
        ? (finalS.corsOk ? finalS.directUrl : encryptProxyUrl(finalS.directUrl))
        : finalS.directUrl;
      return {
        ...finalS,
        ...(derivedHeaders ? { headers: derivedHeaders } : {}),
        directUrl: encDirectUrl,
      };
    });
    res.json({ sources: enc, fromCache: true });
    return;
  }

  const SCRAPER_MS = 12000;  // لا تقطع المصادر العربية البطيئة أثناء البحث
  const EXTRACT_MS = 9000;   // هامش كافٍ لاستخراج روابط AF/المصادر المماثلة
  const race = <T>(p: Promise<T>, ms: number, fallback: T) =>
    Promise.race([p, new Promise<T>(r => setTimeout(() => r(fallback), ms))]);

  const seen    = new Set<string>();
  const sources: UnifiedSource[] = [];

  function collectSrc(s: UnifiedSource) {
    if (!s.directUrl && !s.isEmbed) return;
    if (s.isEmbed) {
      const eu = (s.directUrl || s.url).toLowerCase();
      if (!eu.includes("mega.nz") && !eu.includes("mega.co.nz") && !VIDMOLY_HOSTS.some(h => eu.includes(h)) && !HIDDEN_RESOLVE_EMBED_HOSTS.some(h => eu.includes(h)) && !HIDDEN_RESOLVE_EMBED_SITES.includes(s.site || "")) return;
    }
    const checkUrl = s.directUrl || s.url;
    const isOwnProxy = checkUrl.startsWith("/api/");
    if (!s.isEmbed && !isOwnProxy && DEAD_FILE_HOSTS.some(h => checkUrl.toLowerCase().includes(h))) return;
    const key = checkUrl.includes("workers.dev")
      ? "cdn:" + checkUrl.replace(/^https?:\/\/[^/]+/, "")
      : checkUrl;
    if (seen.has(key)) return;
    seen.add(key);
    sources.push(s);
  }

  async function runExtract(rawSrcs: UnifiedSource[]) {
    if (!rawSrcs.length) return;
    const buf: UnifiedSource[] = [];
    await extractAndCollect(rawSrcs, buf, new Set<string>(), EXTRACT_MS);
    buf.forEach(collectSrc);
  }

  // scrapers that use probe-only (no deep extraction)
  const probeOnly = new Set(["animeify","kawaii","anikoto","anikototv","animewitcher","anizone","stardima"]);

  try {
    switch (site) {
      // shahiid/animelek: معطّلة بطلب المستخدم 2026-07-14 (قسم الأنمي فقط)
      // case "shahiid":      await runExtract(await race(getShahiidSources(title, english, ep, isMovie),    SCRAPER_MS, [])); break;
      // case "animelek":     await runExtract(await race(getAnimelekSources(title, english, ep, isMovie),   SCRAPER_MS, [])); break;
      case "animedar":     await runExtract(await race(getAnimadarSources(title, english, ep, isMovie),   SCRAPER_MS, [])); break;
      // case "okanime": معطّل بطلب المستخدم
      // case "mitanime": محذوف بطلب المستخدم 2026-07-27
      case "animeify":    (await race(getAnimeifySources(title, english, ep, titleVariants),  18000, [])).forEach(collectSrc); break;
      case "animeday":     await runExtract(await race(getAnimeDaySources(title, english, ep),   SCRAPER_MS, [])); break;
      // case "seepanel": DEAD
      case "arabseed":     await runExtract(await race(getArabSeedSources(title, english, ep),   SCRAPER_MS, [])); break;
      case "mycima":       await runExtract(await race(getMyCimaSources(title, english, ep, isMovie), 30000, [])); break;
      case "egybest":      await runExtract(await race(getEgyBestSources(title, english, ep, isMovie), 30000, [])); break;
      // moviz_time: معطّل بطلب المستخدم 2026-07-14 (قسم الأنمي فقط)
      // case "moviz_time":  (await race(getMovizTimeSources(title, english, ep, isMovie), 20000, [])).forEach(collectSrc); break;
      case "topcinemaa":   await runExtract(await race(getTopCimaaSources(title, english, ep, isMovie), SCRAPER_MS, [])); break;
      case "kawaii":      (await race(getKawaiiAnimeSources(title, english, ep, anilistId), 24_000, [])).forEach(collectSrc); break;
      case "megaplay":    (await race(getMegaPlayAnimeSources(title, english, ep, anilistId), 24_000, [])).forEach(collectSrc); break;
      case "anineko":     (await race(getAninekoSources(title, english, ep, titleVariants), 40_000, [])).forEach(collectSrc); break;
      case "anikototv":   (await race(getAnikototvSources(title, english, ep),              25000, [])).forEach(collectSrc); break;
      case "animekai":    (await race(getAnimeKaiSources(title, english, ep, anilistId),  30000, [])).forEach(collectSrc); break;
      // anikuro: محذوف
      // anivault: محذوف
      // case "hianime": معطّل بطلب المستخدم 2026-07-30
      case "animewitcher":(await race(getAnimeWitcherSources(title, english, ep, anilistId, titleVariants),38000, [])).forEach(collectSrc); break;
      case "stardima":    (await race(getStardimaSources(title, english, ep, isMovie),       20000, [])).forEach(collectSrc); break;
      case "anipm":         (await race(getAniPmSources(title, english, ep, anilistId),       20_000,     [])).forEach(collectSrc); break;
      case "anizone":       (await race(getAniZoneSources(title, english, ep),               18_000,     [])).forEach(collectSrc); break;
      case "2dhive":        await runExtract(await race(get2DhiveSources(title, english, ep), 20_000, [])); break;
      // ── TMDB-native (StarCima محذوف من الأنمي — مصادر إنجليزية) ─────────────────────
      // case "starcima_anim": محذوف — يرسل صوتاً هندياً في قسم الأنمي
      // videasy_anim: نُقل بالكامل إلى قسم الأنيميشن بطلب المستخدم 2026-07-15
      // vidlink_anim / mxplayer / ristoanime: معطّلة — أُزيلت من دورة السكرابر (لا تعمل)
      // lordflix_anim: محذوف
      // case "vyla_anim": DEAD
      case "vidfast":       (await race(getVidFastAnimeSources(title, english, ep, anilistId), 20_000, [])).forEach(collectSrc); break;
      case "dulo_anim":    (await race(getDuloAnimeSources(title, english, ep, anilistId),     18_000, [])).forEach(collectSrc); break;
      case "cinesrc_anim": (await race(getCineSrcAnimeSources(title, english, ep, anilistId), 35_000, [])).forEach(collectSrc); break;
      // faselhd_db: معطّلة بطلب المستخدم 2026-07-14 (قسم الأنمي فقط)
      // case "faselhd_db":   await runExtract(await race(getFaselhdDbSources(title, english, ep, isMovie), 28_000, [])); break;
      // case "witanime": معطّل بطلب المستخدم
      // case "akoam": حُذف 2026-07-28 — browser (hopxBrowserExtract) على كل طلب
      case "moviebox":     (await race(getMovieBoxAnimeSources(title, english, ep, isMovie), 18_000, [])).forEach(collectSrc); break;
      case "anipub":     (await race(getAniPubSources(title, english, ep),  20_000, [])).forEach(collectSrc); break;
      // case "appsanime": disabled — OK.ru blocks datacenter IPs server-side
      case "nekowatch":    (await race(getNekowatchSources(title, english, ep, anilistId), 18_000, [])).forEach(collectSrc); break;
      // case "xpass_anim": محذوف 2026-07-15
      // case "vaplayer_anim": محذوف من الأنمي 2026-07-15
      // xyra_anim: معطّل مؤقتاً — api.xyra.stream يرجع 502 دائماً (عطل من طرفهم)
      // case "xyra_anim":    (await race(getXyraAnimeSources(title, english, ep, anilistId), 18_000, [])).forEach(collectSrc); break;
      case "sanime":       (await race(getSAnimeSources(title, english, ep, titleVariants),               20_000, [])).forEach(collectSrc); break;
      case "anifox":       (await race(getAnifoxSources(title, english, ep, titleVariants, anilistId),    30_000, [])).forEach(collectSrc); break;
      case "anslayer":     (await race(getAnimeSlayerSources(title, english, ep, anslayerId, titleAr), 45_000, [])).forEach(collectSrc); break;
      case "ristoanime":   (await race(getRistoAnimeSources(title, english, ep),          22_000, [])).forEach(collectSrc); break;
      // case "allmanga": معطّل 2026-07-17
      // case "nflixmovies_anim": حُذف 2026-07-30 — 0 مصادر (ميت)
      // case "vidbolt_anim": معطّل 2026-07-30 — كود محفوظ، 10 مصادر HLS عند الحاجة
      default: break;
    }

    
// ── VidBolt (vidbolt.xyz) — multi-extractor HLS بدون browser ───────────────
async function getVidboltAnimeSources(
  english: string | null, title: string, ep: number, isMovie: boolean, anilistId?: number
): Promise<UnifiedSource[]> {
  const tmdbId = await fetchAnimeTmdbId(english, title, anilistId);
  if (!tmdbId) return [];
  const id = `tmdb${tmdbId}`;
  const params = new URLSearchParams({ tmdbId: String(tmdbId), season: "1", episode: String(ep), title: english || title });
  const out: UnifiedSource[] = [];
  for (const ext of ["Vaplayer", "VidNest", "StreamVault"]) {
    try {
      const path = `/scrape/${ext}/tv/${id}?${params}`;
      const b64 = Buffer.from(path).toString("base64");
      const r = await fetch(`https://vidbolt.xyz/api/proxy-vidcdn?b64path=${b64}`, {
        headers: { "Origin": "https://vidbolt.xyz", "Referer": "https://vidbolt.xyz/" },
        signal: AbortSignal.timeout(15_000),
      });
      if (!r.ok) continue;
      const data = await r.json() as { sources?: Array<{ url: string; name?: string }> };
      for (const s of (data.sources || [])) {
        if (!s.url) continue;
        const rawUrl = s.url.startsWith("/proxy/") ? `https://wormhole.filmu.in${s.url}` : s.url;
        out.push({ url: rawUrl, directUrl: rawUrl, label: `VidBolt · ${ext} · ${s.name || "HD"}` });
      }
    } catch { /* skip */ }
  }
  return out;
}

    // Kawaii/MegaPlay URLs are signed and normally fetched live, but a
    // transient provider timeout must not blank the server page when a
    // previously saved episode URL is still available. Use the cache only
    // as a last-resort response; the next successful live fetch refreshes it.
    if (
      sources.length === 0 &&
      cached &&
      (site === "kawaii" || site === "megaplay") &&
      Array.isArray(cached.sources)
    ) {
      cached.sources.forEach(collectSrc);
    }

    // ── حفظ في الكاش بعد الكشط ──────────────────────────────────
    if (sources.length) {
      setSourceCache(cKey, site, sources).catch(() => {});
    }

    const isMobileClient = (req.headers["x-nova-client"] || "").toString().includes("mobile");
    const encSources = stripAnimeSlayerSubtitles(filterRequestedQuality(sources)).map(s => {
      /* استخراج headers (Referer/Origin) قبل تشفير directUrl —
         يحتاجها ExoPlayer/AVPlayer للـ CDN segments مباشرةً.
         إذا كان ref مشفَّراً (hex AES) فهو رابط proxy داخلي — لا نُرسله كـ Referer. */
      let derivedHeaders = s.headers;
      if (!derivedHeaders && s.directUrl) {
        try {
          const pu = new URL(s.directUrl.startsWith("/") ? `http://x.com${s.directUrl}` : s.directUrl);
          const ref = pu.searchParams.get("ref");
          if (ref && !isEncrypted(ref)) {
            let origin = "";
            try { origin = new URL(ref).origin; } catch {}
            derivedHeaders = origin ? { Referer: ref, Origin: origin } : { Referer: ref };
          }
        } catch { /* ignore */ }
      }
      /* تغليف روابط CDN المباشرة للموبايل — يضمن المرور عبر VPS */
      const wrapped = isMobileClient ? wrapForMobile({ ...s, headers: derivedHeaders || s.headers }) : s;
      // corsOk=true: لا تشفير على directUrl — RiftPlayer يحتاج URL الخام لكشف kawaii CDN
      const encDirectUrl = wrapped.directUrl
        ? (wrapped.corsOk ? wrapped.directUrl : encryptProxyUrl(wrapped.directUrl))
        : wrapped.directUrl;
      return {
        ...wrapped,
        ...(derivedHeaders ? { headers: derivedHeaders } : {}),
        directUrl: encDirectUrl,
      };
    });
    res.json({ sources: encSources });
  } catch (e: any) {
    res.status(500).json({ error: e?.message ?? String(e), sources: [] });
  }
});


// ════════════════════════════════════════════════════════════════════
//  Check Arabic availability  GET /api/anime/check-arabic?t[]=title1&t[]=title2
// ════════════════════════════════════════════════════════════════════
const _arabicCheckCache = new Map<string, { time: number; ok: boolean }>();
const ARABIC_CACHE_TTL = 12 * 3600 * 1000; // 12h

router.get("/anime/check-arabic", async (req, res) => {
  // فحص حقيقي لتوفر الأنمي في المصادر العربية.
  // animelek.top معطّل/محجوب (timeout كامل من VPS والـ Replit) لذا استبدلناه
  // بـ FaselHD-DB (كتالوج GitHub JSON مباشر + مصدر موثوق مُختبر عملياً).
  // Handle both t=x&t=y and t[]=x&t[]=y patterns
  const q = req.query as Record<string, unknown>;
  const raw = q["t"] ?? q["t[]"];
  const titles: string[] = Array.isArray(raw)
    ? (raw as string[])
    : typeof raw === "string" && raw
    ? [raw]
    : [];

  if (!titles.length) { res.json({ available: [] }); return; }

  const cacheKey = "arabic-check-" + titles.join("|");
  const cached = _arabicCheckCache.get(cacheKey);
  if (cached && Date.now() - cached.time < ARABIC_CACHE_TTL) {
    res.json({ available: cached.ok ? titles : [] });
    return;
  }

  try {
    const [animeItems, movieItems] = await Promise.all([
      faselhdDbFetchSection("anime"),
      faselhdDbFetchSection("anime-movies"),
    ]);
    const allItems = [...animeItems, ...movieItems];

    const available: string[] = [];
    if (allItems.length) {
      for (const title of titles) {
        const q1 = normalize(title || "");
        const best = allItems.reduce((max, item) => {
          const clean = faselhdStripName(item.name || "");
          const slug  = (item.slug || "").replace(/-/g, " ");
          const sc = Math.max(
            similarity(q1, normalize(clean)),
            asciiSimilarity(slug, q1),
          );
          return sc > max ? sc : max;
        }, 0);
        if (best > 0.42) available.push(title);
      }
    }

    _arabicCheckCache.set(cacheKey, { time: Date.now(), ok: available.length > 0 });
    res.json({ available });
  } catch {
    res.json({ available: [] });
  }
});

// ════════════════════════════════════════════════════════════════════
//  AnimeSlayer latest episodes  GET /api/anime/anslayer-latest
//  يُستخدم في قسم "أحدث الحلقات" على الواجهة الرئيسية — كتالوج anslayer
//  الخاص به مباشرةً (anime_id + latest_episode_name + cover). نُرجع
//  معرّف AnimeSlayer وAniList منفصلين: الرابط العام وباقي المصادر يحتاجان
//  AniList، بينما مصدر AS نفسه يحتاج معرّف AnimeSlayer.
// ════════════════════════════════════════════════════════════════════
let _anslayerLatestCache: any[] | null = null;
let _anslayerLatestTs = 0;
const ANSLAYER_LATEST_TTL = 15 * 60_000; // 15 دقيقة — قائمة "آخر تحديث" تتغيّر بسرعة

router.get("/anime/anslayer-latest", async (req, res) => {
  try {
    if (_anslayerLatestCache && Date.now() - _anslayerLatestTs < ANSLAYER_LATEST_TTL) {
      res.json({ items: _anslayerLatestCache });
      return;
    }
    const data = await anslayerGet("animes/get-published-animes", { list_type: "latest_updated_episode_new", page: 1 });
    const list: any[] = data?.response?.data || [];
    const rawItems = list.map((item: any) => {
      const epMatch = String(item.latest_episode_name || "").match(/(\d+)/);
      /* Some AnimeSlayer catalog responses already include the AniList id,
         but older code discarded it and always searched by the display title.
         That is especially harmful here: KW is AniList-ID based, while
         anslayerId is a different numeric namespace. Preserve every known
         spelling used by the upstream catalog before falling back to search. */
      const upstreamAniListId = [
        item.anilist_id,
        item.anilistId,
        item.anilistID,
        item.anime_anilist_id,
        item.anime?.anilist_id,
        item.anime?.anilistId,
      ]
        .map((value: unknown) => Number(value))
        .find((value: number) => Number.isInteger(value) && value > 0);
      return {
        anslayerId: parseInt(item.anime_id, 10),
        anilistId: upstreamAniListId,
        name: item.anime_name || "",
        episode: epMatch ? parseInt(epMatch[1], 10) : null,
        cover: item.anime_cover_image_url || "",
        year: item.anime_release_year || "",
      };
    }).filter((it: any) => it.anslayerId && it.episode);

    // Resolve in parallel so the latest list can use the same AniList-based
    // detail, subtitle, and Japanese-source paths as the normal catalog.
    const items = (await Promise.all(rawItems.map(async (item: any) => {
      const animeId = item.anilistId || await resolveAniListIdForSource(item.name, null, [], null);
      const meta = animeId ? getCachedAniListSourceMeta(animeId) : undefined;
      return {
        ...item,
        // Keep the card visible even while AniList is unavailable. The
        // AnimeSlayer catalog id is still enough for the direct AS source.
        // Never put the AnimeSlayer id in the AniList field. The two
        // namespaces are unrelated; using the former as the latter makes
        // KW/MP look up the wrong anime and disappear from the picker.
        animeId: animeId || null,
        /* Keep an explicit field for clients so a future normalization change
           cannot accidentally replace the AniList id with anslayerId. */
        anilistId: animeId || null,
        titleVariants: meta?.titles || [item.name].filter(Boolean),
        romaji: meta?.romaji || item.name,
        english: meta?.english || "",
        native: meta?.native || "",
      };
    }))).filter((it: any) => (it.animeId || it.anslayerId) && it.episode);

    // ── إرسال الحلقات الجديدة لتيليجرام (فقط عند التحديث الفعلي) ──────────
    if (items.length > 0) {
      const prevKeys = new Set(
        (_anslayerLatestCache || []).map((it: any) => `${it.anslayerId || it.animeId}:${it.episode}`)
      );
      const newItems = items.filter(
        (it: any) => !prevKeys.has(`${it.anslayerId || it.animeId}:${it.episode}`)
      );
      for (const it of newItems) {
        try {
          await notifyNewEpisode(
            it.anslayerId,
            it.name,
            it.episode,
            it.cover || undefined,
          );
        } catch (tgErr: any) {
          console.warn(`[anslayer-latest] telegram notify failed: ${(tgErr as any)?.message}`);
        }
      }
    }
    _anslayerLatestCache = items;
    _anslayerLatestTs = Date.now();
    res.json({ items });
  } catch (e: any) {
    res.json({ items: _anslayerLatestCache || [], error: e?.message });
  }
});

// ════════════════════════════════════════════════════════════════════
//  AW Latest  GET /api/anime/aw-latest
//  أحدث الحلقات من aw_links (قاعدة AnimeWitcher) — 30 أنمي مرتبة بآخر import
// ════════════════════════════════════════════════════════════════════
let _awLatestCache: any[] | null = null;
let _awLatestTs = 0;
const AW_LATEST_TTL = 5 * 60_000; // 5 دقائق

router.get("/anime/aw-latest", async (req, res) => {
  try {
    if (_awLatestCache && Date.now() - _awLatestTs < AW_LATEST_TTL) {
      res.json({ items: _awLatestCache });
      return;
    }
    // اقرأ نافذة أكبر من aw_links لأن AnimeWitcher يخزن عدة صفوف للحلقة
    // (سيرفر/جودة). ثم اختر أحدث حلقة فعلية لكل أنمي، لا أول صف مستورد فقط.
    const rows = await sbSelect<AwLinkRow>("aw_links", {
      "order": "imported_at.desc",
    }, { limit: 2000, select: "anime_id,anime_name,anilist_id,ep_number,imported_at" });

    const latestByAnime = new Map<string, AwLinkRow>();
    for (const row of rows) {
      const previous = latestByAnime.get(row.anime_id);
      const rowEp = Number(row.ep_number) || 0;
      const previousEp = Number(previous?.ep_number) || 0;
      const rowTime = new Date(row.imported_at).getTime();
      const previousTime = previous ? new Date(previous.imported_at).getTime() : 0;
      if (!previous || rowEp > previousEp || (rowEp === previousEp && rowTime > previousTime)) {
        latestByAnime.set(row.anime_id, row);
      }
    }

    const candidates = Array.from(latestByAnime.values())
      .sort((a, b) => new Date(b.imported_at).getTime() - new Date(a.imported_at).getTime())
      .slice(0, 40);
    const items = (await Promise.all(candidates.map(async r => {
      let anilistId = r.anilist_id || undefined;
      if (!anilistId) anilistId = await resolveAniListIdForSource(r.anime_name || r.anime_id, null, [], null);
      return {
        animeId: anilistId || null,
        name: r.anime_name || r.anime_id,
        episode: Number(r.ep_number) || null,
        cover: anilistId ? `https://img.anili.st/media/${anilistId}` : "",
        source: "animewitcher",
      };
    }))).filter(item => item.animeId && item.episode).slice(0, 30);

    _awLatestCache = items;
    _awLatestTs    = Date.now();
    res.json({ items });
  } catch (e: any) {
    res.json({ items: _awLatestCache || [], error: e?.message });
  }
});

// ════════════════════════════════════════════════════════════════════
//  Arabic Dub Check  GET /api/anime/arabic-dub-check?malId=
//  Source: MyDubList (Joelis57) — 321 confirmed Arabic-dubbed anime
//  Returns { isDubbed: boolean, confidence: string|null }
// ════════════════════════════════════════════════════════════════════
const MYDUBLIST_URL =
  "https://raw.githubusercontent.com/Joelis57/MyDubList/main/dubs/dubbed_arabic.json";
let _mydubCache: Record<string, string> | null = null;
let _mydubCacheTs = 0;
const MYDUB_TTL = 24 * 3_600_000;

async function fetchMyDubList(): Promise<Record<string, string>> {
  if (_mydubCache && Date.now() - _mydubCacheTs < MYDUB_TTL) return _mydubCache;
  try {
    const r = await fetch(MYDUBLIST_URL, {
      headers: { "User-Agent": "NovaApp/1.0" },
      signal: AbortSignal.timeout(8000),
    });
    if (!r.ok) return _mydubCache ?? {};
    const data = await r.json() as any;
    // شكل البيانات: { "mal_id": "confidence", ... }
    // أو مصفوفة: [{ mal_id, confidence }, ...]
    const out: Record<string, string> = {};
    if (Array.isArray(data)) {
      for (const entry of data) {
        const id = String(entry.mal_id ?? entry.malId ?? "");
        const conf = String(entry.confidence ?? entry.level ?? "");
        if (id) out[id] = conf;
      }
    } else if (typeof data === "object") {
      for (const [k, v] of Object.entries(data)) {
        out[k] = String(v);
      }
    }
    _mydubCache = out;
    _mydubCacheTs = Date.now();
    return out;
  } catch { return _mydubCache ?? {}; }
}

router.get("/anime/arabic-dub-check", async (req, res) => {
  const malId = String(req.query.malId || req.query.mal_id || "").trim();
  if (!malId) { res.json({ isDubbed: false, confidence: null }); return; }
  try {
    const list = await fetchMyDubList();
    const conf = list[malId] ?? null;
    res.json({ isDubbed: conf !== null, confidence: conf });
  } catch {
    res.json({ isDubbed: false, confidence: null });
  }
});

// ════════════════════════════════════════════════════════════════════
//  Trailer  GET /api/anime/trailer?tmdbId=&lang=ar
//  Source: trailerdb (mhadifilms) — 330k+ trailers mapped to TMDB
//  Returns { youtubeId: string|null, url: string|null }
// ════════════════════════════════════════════════════════════════════
const trailerCache = new Map<string, { ts: number; youtubeId: string | null }>();
const TRAILER_TTL = 48 * 3_600_000;

router.get("/anime/trailer", async (req, res) => {
  const tmdbId = String(req.query.tmdbId || req.query.tmdb_id || "").trim();
  const lang   = String(req.query.lang || "ar").trim();
  if (!tmdbId) { res.json({ youtubeId: null, url: null }); return; }

  const ck = `${tmdbId}:${lang}`;
  const hit = trailerCache.get(ck);
  if (hit && Date.now() - hit.ts < TRAILER_TTL) {
    const id = hit.youtubeId;
    res.json({ youtubeId: id, url: id ? `https://www.youtube.com/watch?v=${id}` : null });
    return;
  }

  try {
    const sql = `SELECT youtube_id FROM trailers WHERE tmdb_id=${encodeURIComponent(tmdbId)} AND language='${encodeURIComponent(lang)}' LIMIT 1`;
    const r = await fetch(
      `https://trailerdb.workers.dev/query?sql=${encodeURIComponent(sql)}`,
      { headers: { "User-Agent": "NovaApp/1.0" }, signal: AbortSignal.timeout(8000) },
    );
    let youtubeId: string | null = null;
    if (r.ok) {
      const data = await r.json() as any;
      youtubeId = data?.results?.[0]?.youtube_id ?? data?.[0]?.youtube_id ?? null;
    }
    // Fallback: English trailer if no Arabic
    if (!youtubeId && lang !== "en") {
      const sqlEn = `SELECT youtube_id FROM trailers WHERE tmdb_id=${encodeURIComponent(tmdbId)} AND language='en' LIMIT 1`;
      const r2 = await fetch(
        `https://trailerdb.workers.dev/query?sql=${encodeURIComponent(sqlEn)}`,
        { headers: { "User-Agent": "NovaApp/1.0" }, signal: AbortSignal.timeout(6000) },
      );
      if (r2.ok) {
        const d2 = await r2.json() as any;
        youtubeId = d2?.results?.[0]?.youtube_id ?? d2?.[0]?.youtube_id ?? null;
      }
    }
    trailerCache.set(ck, { ts: Date.now(), youtubeId });
    res.json({ youtubeId, url: youtubeId ? `https://www.youtube.com/watch?v=${youtubeId}` : null });
  } catch {
    res.json({ youtubeId: null, url: null });
  }
});

// ════════════════════════════════════════════════════════════════════
//  ID Map  GET /api/anime/id-map?anilistId=
//  Source: anime-mapper (subhajeetch-fl) — 30k+ anime, all ID mappings
//  Returns { malId, anilistId, tmdbId, tvdbId, anidbId, kitsuId, ... }
// ════════════════════════════════════════════════════════════════════
const idMapCache = new Map<string, { ts: number; data: any }>();
const IDMAP_TTL  = 72 * 3_600_000;

router.get("/anime/id-map", async (req, res) => {
  const anilistId = String(req.query.anilistId || req.query.anilist_id || "").trim();
  if (!anilistId) { res.json({}); return; }

  const hit = idMapCache.get(anilistId);
  if (hit && Date.now() - hit.ts < IDMAP_TTL) { res.json(hit.data); return; }

  try {
    const r = await fetch(
      `https://cdn.jsdelivr.net/gh/subhajeetch-fl/anime-mapper@main/data/anime/000/${anilistId}.json`,
      { headers: { "User-Agent": "NovaApp/1.0" }, signal: AbortSignal.timeout(8000) },
    );
    if (!r.ok) { res.json({}); return; }
    const data = await r.json() as any;
    const normalized = {
      anilistId:  data.anilist_id   ?? data.anilistId   ?? Number(anilistId),
      malId:      data.mal_id       ?? data.malId       ?? null,
      tmdbId:     data.tmdb_id      ?? data.tmdbId      ?? null,
      tvdbId:     data.tvdb_id      ?? data.tvdbId      ?? null,
      anidbId:    data.anidb_id     ?? data.anidbId     ?? null,
      kitsuId:    data.kitsu_id     ?? data.kitsuId     ?? null,
      traktId:    data.trakt_id     ?? data.traktId     ?? null,
      episodes:   data.episodes     ?? null,
    };
    idMapCache.set(anilistId, { ts: Date.now(), data: normalized });
    res.json(normalized);
  } catch {
    res.json({});
  }
});

// ════════════════════════════════════════════════════════════════════
//  Probe  GET /api/anime/probe?url=
// ════════════════════════════════════════════════════════════════════
router.get("/anime/probe", async (req, res) => {
  const rawUrl = ((req.query.url as string) || "").trim();
  if (!rawUrl) { res.status(400).json({ ok: false }); return; }
  let url: string;
  try { url = decodeURIComponent(rawUrl); } catch { url = rawUrl; }
  try {
    const r = await fetch(url, {
      method: "HEAD",
      headers: { "User-Agent": BROWSER_UA, Accept: "*/*" },
      signal: AbortSignal.timeout(8000),
      redirect: "follow",
    });
    res.json({ ok: r.ok || r.status === 206, status: r.status, contentType: r.headers.get("content-type") });
  } catch (e: any) {
    res.json({ ok: false, error: e?.message });
  }
});


// ════════════════════════════════════════════════════════════════════
//  Extract Video  GET /api/anime/extract-video?url=
// ════════════════════════════════════════════════════════════════════
router.get("/anime/extract-video", async (req, res) => {
  const rawUrl = ((req.query.url as string) || "").trim();
  if (!rawUrl) { res.status(400).json({ error: "url required" }); return; }
  let url: string;
  try { url = decodeURIComponent(rawUrl); } catch { url = rawUrl; }
  try {
    const result = await extractVideoDeep(url, url);
    if (result) {
      res.json({ directUrl: result.url, type: result.type });
    } else {
      res.status(404).json({ error: "no video found" });
    }
  } catch (e: any) {
    res.status(500).json({ error: e?.message ?? String(e) });
  }
});


// ════════════════════════════════════════════════════════════════════
//  Subtitles  GET /api/anime/subtitles?title=&ep=&season=
//  Returns { lang: string|null, content: string|null }
//  Uses SUBDL_API_KEY env var (free key from subdl.com)
//  Falls back gracefully to null when no key or no subtitles found
// ════════════════════════════════════════════════════════════════════
const subCache = new Map<string, { lang: string | null; content: string | null; ts: number }>();
const SUB_TTL  = 24 * 3_600_000;

router.get("/anime/subtitles", async (req, res) => {
  const title  = ((req.query.title  as string) || "").trim();
  const ep     = parseInt((req.query.ep     as string) || "1");
  const season = parseInt((req.query.season as string) || "1");
  if (!title) { res.json({ lang: null, content: null }); return; }

  const ck = `sub:${title.toLowerCase()}:${season}:${ep}`;
  const cached = subCache.get(ck);
  if (cached && Date.now() - cached.ts < SUB_TTL) {
    res.json({ lang: cached.lang, content: cached.content }); return;
  }

  const apiKey = (process.env.SUBDL_API_KEY || "").trim();
  if (apiKey) {
    try {
      const searchUrl = `https://api.subdl.com/api/v1/subtitles?api_key=${apiKey}&film_name=${encodeURIComponent(title)}&season_number=${season}&episode_number=${ep}&languages=AR&subs_per_page=5`;
      const r = await fetch(searchUrl, {
        headers: { "User-Agent": BROWSER_UA },
        signal: AbortSignal.timeout(10000),
      });
      if (r.ok) {
        const data = await r.json() as any;
        const subs: any[] = (data.subtitles || []).filter((s: any) => s.url);
        if (subs.length) {
          const dlPath = subs[0].url as string;
          const dlUrl = dlPath.startsWith("http") ? dlPath : `https://dl.subdl.com${dlPath}`;
          const sr = await fetch(dlUrl, {
            headers: { "User-Agent": BROWSER_UA },
            signal: AbortSignal.timeout(15000),
          });
          if (sr.ok) {
            const ct = sr.headers.get("content-type") || "";
            if (!ct.includes("zip") && !dlUrl.endsWith(".zip")) {
              const content = await sr.text();
              if (content.includes("-->")) {
                subCache.set(ck, { lang: "ara", content, ts: Date.now() });
                res.json({ lang: "ara", content }); return;
              }
            }
          }
        }
      }
    } catch {}
  }

  subCache.set(ck, { lang: null, content: null, ts: Date.now() });
  res.json({ lang: null, content: null });
});


// ════════════════════════════════════════════════════════════════════
//  anime/subtitle-tracks  GET /api/anime/subtitle-tracks
//  Returns an array of subtitle tracks for an anime episode.
//  Sources: wyzie.ru (IMDB ID via AniList→Jikan) + SubDL (title search)
//  Auto-adds "عربي مُترجم" track when English found but no Arabic.
// ════════════════════════════════════════════════════════════════════
const animeTracksCache = new Map<string, { tracks: any[]; ts: number }>();
const ANIME_TRACKS_TTL = 28 * 60 * 1000; // 28 min

router.get("/anime/subtitle-tracks", async (req, res) => {
  const anilistId = String(req.query.anilistId || "").trim();
  const ep        = Math.max(1, parseInt(String(req.query.ep     || "1"), 10) || 1);
  const season    = Math.max(1, parseInt(String(req.query.season || "1"), 10) || 1);
  const title     = String(req.query.title   || "").trim();
  const english   = String(req.query.english || title).trim();
  const malIdQ    = String(req.query.malId   || "").trim();

  if (!anilistId && !title) { res.json({ tracks: [] }); return; }

  const ck = `anitrack:${anilistId}:${season}:${ep}`;
  const hit = animeTracksCache.get(ck);
  if (hit && Date.now() - hit.ts < ANIME_TRACKS_TTL) { res.json({ tracks: hit.tracks }); return; }

  type Track = { id: string; lang: string; label: string; url: string };

  // ── Step 1: Resolve IMDB ID via AniList + Jikan ──────────────────
  let imdbId = "";
  let malId  = malIdQ;

  if (anilistId && !malId) {
    try {
      const alR = await fetch("https://graphql.anilist.co", {
        method: "POST",
        headers: { "Content-Type": "application/json", Accept: "application/json" },
        body: JSON.stringify({
          query: `query($id:Int){Media(id:$id,type:ANIME){idMal externalLinks{site url}}}`,
          variables: { id: parseInt(anilistId) },
        }),
        signal: AbortSignal.timeout(7_000),
      });
      if (alR.ok) {
        const alData = await alR.json() as any;
        const media  = alData?.data?.Media;
        malId = String(media?.idMal || "");
        const imdbLink = (media?.externalLinks || []).find(
          (l: any) => l.site === "Internet Movie Database" || (l.url || "").includes("imdb.com"),
        );
        if (imdbLink?.url) {
          const m = imdbLink.url.match(/tt(\d+)/);
          if (m) imdbId = `tt${m[1]}`;
        }
      }
    } catch { /* ignore */ }
  }

  if (!imdbId && malId) {
    try {
      const jikanR = await fetch(
        `https://api.jikan.moe/v4/anime/${malId}/external`,
        { headers: { "User-Agent": BROWSER_UA }, signal: AbortSignal.timeout(7_000) },
      );
      if (jikanR.ok) {
        const jData = await jikanR.json() as any;
        const imdbEntry = (jData.data || []).find(
          (e: any) => e.name === "Internet Movie Database" || (e.url || "").includes("imdb.com"),
        );
        if (imdbEntry?.url) {
          const m = imdbEntry.url.match(/tt(\d+)/);
          if (m) imdbId = `tt${m[1]}`;
        }
      }
    } catch { /* ignore */ }
  }

  // ── Step 2: wyzie.ru (Arabic + English) by IMDB ID ───────────────
  const wyzieItems: Track[] = [];
  if (imdbId) {
    await Promise.allSettled(["ar", "en"].map(async lang => {
      try {
        const q = `https://sub.wyzie.ru/search?id=${imdbId}&language=${lang}&season=${season}&episode=${ep}`;
        const r = await fetch(q, {
          headers: { "User-Agent": BROWSER_UA, Accept: "application/json" },
          signal: AbortSignal.timeout(8_000),
        });
        if (!r.ok) return;
        const data  = await r.json() as any;
        const items: any[] = Array.isArray(data) ? data : (data?.data ?? []);
        items.slice(0, 3).forEach((item: any, i: number) => {
          if (!item.url) return;
          const sfx = i > 0 ? ` ${i + 1}` : "";
          wyzieItems.push({
            id: `${lang}-wyzie-${i}`,
            lang,
            label: lang === "ar" ? `عربي · Wyzie${sfx}` : `إنجليزي · Wyzie${sfx}`,
            url: item.url,
          });
        });
      } catch { /* ignore */ }
    }));
  }

  // ── Step 3: SubDL (Arabic + English) by title ────────────────────
  const subdlItems: Track[] = [];
  const sdKey        = (process.env.SUBDL_API_KEY || "").trim();
  const searchTitle  = english || title;
  if (sdKey && searchTitle) {
    await Promise.allSettled(["AR", "EN"].map(async lang => {
      try {
        const sdUrl = `https://api.subdl.com/api/v1/subtitles?api_key=${sdKey}&film_name=${encodeURIComponent(searchTitle)}&season_number=${season}&episode_number=${ep}&languages=${lang}&subs_per_page=3`;
        const sdR = await fetch(sdUrl, {
          headers: { "User-Agent": BROWSER_UA },
          signal: AbortSignal.timeout(10_000),
        });
        if (!sdR.ok) return;
        const sdData = await sdR.json() as any;
        const subs: any[] = (sdData.subtitles || []).filter((s: any) => s.url);
        subs.slice(0, 2).forEach((sub: any, i: number) => {
          const dlPath = sub.url as string;
          const dlUrl  = dlPath.startsWith("http") ? dlPath : `https://dl.subdl.com${dlPath}`;
          const lc     = lang === "AR" ? "ar" : "en";
          const sfx    = i > 0 ? ` ${i + 1}` : "";
          subdlItems.push({
            id: `${lc}-subdl-${i}`,
            lang: lc,
            label: lc === "ar" ? `عربي · SubDL${sfx}` : `إنجليزي · SubDL${sfx}`,
            url: dlUrl,
          });
        });
      } catch { /* ignore */ }
    }));
  }

  // ── Step 3.5: AniKoto (megaplay.buzz) — English VTT via AniList ID ──────────
  const anikotoItems: Track[] = [];
  if (anilistId) {
    try {
      const megaBase = "https://megaplay.buzz";
      const megaRef = "https://hianimes.re/";
      const embedUrl = `${megaBase}/stream/ani/${anilistId}/${ep}/sub`;
      const html = await fetch(embedUrl, {
        headers: { "User-Agent": BROWSER_UA, "Referer": megaRef, "Accept-Language": "en-US,en;q=0.9" },
        signal: AbortSignal.timeout(10_000),
      }).then(r => r.ok ? r.text() : "").catch(() => "");
      const fileId = html.match(/data-id="([^"]+)"/)?.[1];
      if (fileId) {
        const origin = new URL(embedUrl).origin;
        const sourcesData = await fetch(`${origin}/stream/getSources?id=${fileId}`, {
          headers: { "User-Agent": BROWSER_UA, "Referer": `${origin}/`, "X-Requested-With": "XMLHttpRequest", "Accept": "application/json" },
          signal: AbortSignal.timeout(8_000),
        }).then(r => r.ok ? r.json() : null).catch(() => null) as {
          tracks?: Array<{ file: string; label?: string; kind?: string }>;
        } | null;
        if (sourcesData?.tracks) {
          for (const t of sourcesData.tracks) {
            if (!t.file || t.kind === "thumbnails") continue;
            const isAr = /(arabic|arab|\bar\b)/i.test(t.label || "");
            const isEn = /(english|eng)/i.test(t.label || "");
            const lang = isAr ? "ar" : isEn ? "en" : null;
            if (!lang) continue;
            const proxyUrl = `/api/anime/proxy-text?url=${encodeURIComponent(t.file)}&ref=${encodeURIComponent(origin + "/")}`;
            anikotoItems.push({
              id: `${lang}-anikoto`,
              lang,
              label: isAr ? "عربي · AniKoto" : "إنجليزي · AniKoto",
              url: proxyUrl,
            });
          }
        }
      }
    } catch { /* silent */ }
  }

  // ── Step 3.6: Jimaku (jimaku.cc) — Japanese anime subtitles, requires JIMAKU_API_KEY ──
  const jimakuItems: Track[] = [];
  const jimakuKey = (process.env.JIMAKU_API_KEY || "").trim();
  if (jimakuKey && anilistId) {
    try {
      const searchUrl = `https://jimaku.cc/api/entries/search?anilist_id=${encodeURIComponent(anilistId)}`;
      const searchR = await fetch(searchUrl, {
        headers: {
          "User-Agent": BROWSER_UA,
          "Authorization": `Bearer ${jimakuKey}`,
          "Accept": "application/json",
        },
        signal: AbortSignal.timeout(8_000),
      });
      if (searchR.ok) {
        const entries: any[] = await searchR.json();
        const entry = Array.isArray(entries) ? entries[0] : null;
        if (entry?.id) {
          const filesUrl = `https://jimaku.cc/api/entries/${entry.id}/files?episode=${ep}`;
          const filesR = await fetch(filesUrl, {
            headers: {
              "User-Agent": BROWSER_UA,
              "Authorization": `Bearer ${jimakuKey}`,
              "Accept": "application/json",
            },
            signal: AbortSignal.timeout(8_000),
          });
          if (filesR.ok) {
            const files: any[] = await filesR.json();
            const subFiles = Array.isArray(files) ? files.filter((f: any) =>
              f.url && /\.(srt|ass|vtt|ssa)$/i.test(f.name || ""),
            ) : [];
            subFiles.slice(0, 2).forEach((f: any, i: number) => {
              const sfx = i > 0 ? ` ${i + 1}` : "";
              // Detect Arabic subs by filename hint
              const isAr = /(arabic|ar[_.\-]|عربي)/i.test(f.name || "");
              const langCode = isAr ? "ar" : "en";
              const proxyUrl = `/api/anime/proxy-text?url=${encodeURIComponent(f.url)}`;
              jimakuItems.push({
                id: `${langCode}-jimaku-${i}`,
                lang: langCode,
                label: isAr ? `عربي · Jimaku${sfx}` : `إنجليزي · Jimaku${sfx}`,
                url: proxyUrl,
              });
            });
          }
        }
      }
    } catch { /* silent — API key may be invalid or network error */ }
  }

  // ── Step 3.8: Kitsunekko Mirror (GitHub) — ترجمة يابانية → عربي تلقائي ──
  // يبحث في أرشيف kitsunekko-mirror عن ملف SRT مطابق للأنمي والحلقة
  const kitsunekkoItems: Track[] = [];
  const kQuery = (english || title).replace(/[^\w\s]/g, " ").trim();
  if (kQuery) {
    try {
      const ghUrl = `https://api.github.com/search/code?q=${encodeURIComponent(kQuery)}+repo:Ajatt-Tools/kitsunekko-mirror+in:path&per_page=15`;
      const ghR = await fetch(ghUrl, {
        headers: { "User-Agent": BROWSER_UA, "Accept": "application/vnd.github+json" },
        signal: AbortSignal.timeout(8_000),
      });
      if (ghR.ok) {
        const ghData = await ghR.json() as any;
        const items: any[] = ghData.items || [];
        const epPad = String(ep).padStart(2, "0");
        const epPatterns = [
          new RegExp(`[-_\\s]0*${ep}[\\s._\\[\\(]`),
          new RegExp(`E${epPad}`),
          new RegExp(`episode[_\\s-]?0*${ep}\\b`, "i"),
        ];
        const picked = items.find((item: any) => {
          const name: string = item.name || "";
          if (!/\.(srt|ass|vtt)$/i.test(name)) return false;
          if (/\[ch[st]\]|[\u4e00-\u9fff]/.test(name)) return false;
          return epPatterns.some(p => p.test(name));
        });
        if (picked) {
          const rawUrl = `https://raw.githubusercontent.com/Ajatt-Tools/kitsunekko-mirror/main/${picked.path}`;
          kitsunekkoItems.push({
            id: "ar-kitsunekko",
            lang: "ar-auto",
            label: "عربي مُترجم · Kitsunekko",
            url: `/api/anime/translate-vtt?url=${encodeURIComponent(rawUrl)}&from=ja&to=ar`,
          });
        }
      }
    } catch { /* silent — GitHub rate limit or network */ }
  }

  // ── Step 4: Merge + auto-translate fallback ──────────────────────
  const all: Track[] = [...wyzieItems, ...subdlItems, ...anikotoItems, ...jimakuItems, ...kitsunekkoItems];
  const hasAr  = all.some(t => t.lang === "ar");
  const firstEn = all.find(t => t.lang === "en");

  // Add auto-translate track when no Arabic but English is available
  if (!hasAr && firstEn) {
    all.unshift({
      id: "ar-auto",
      lang: "ar-auto",
      label: "عربي مُترجم",
      url: `/api/anime/translate-vtt?url=${encodeURIComponent(firstEn.url)}&from=en&to=ar`,
    });
  }

  // Sort Arabic first, then auto-translate, then English
  all.sort((a, b) => {
    const rank = (t: Track) => t.lang === "ar" ? 0 : t.lang === "ar-auto" ? 1 : 2;
    return rank(a) - rank(b);
  });

  // Deduplicate by URL
  const seen   = new Set<string>();
  const tracks = all.filter(t => { if (seen.has(t.url)) return false; seen.add(t.url); return true; });

  animeTracksCache.set(ck, { tracks, ts: Date.now() });
  res.setHeader("Cache-Control", "no-store");
  res.json({ tracks });
});


const AR_TITLE_ALIASES: Record<string, string> = {
  "one piece": "ون بيس", "naruto": "ناروتو", "naruto: shippuden": "ناروتو شيبودن",
  "bleach": "بليتش", "dragon ball": "دراغون بول", "dragon ball z": "دراغون بول زد",
  "attack on titan": "هجوم العمالقة", "demon slayer": "قاتل الشياطين",
  "jujutsu kaisen": "جوجوتسو كايسن", "my hero academia": "أكاديمية بطلي",
  "hunter x hunter": "القناص", "fullmetal alchemist: brotherhood": "فل ميتال ألكيميست: براذرهود",
  "death note": "مذكرة الموت", "sword art online": "سورد آرت أونلاين",
  "solo leveling": "سولو ليفلينج", "one punch man": "الرجل ذو اللكمة الواحدة",
};

const AR_SEARCH_ALIASES: Record<string, string> = {
  "ناروتو": "Naruto", "ناروتو شيبودن": "Naruto: Shippuden", "ون بيس": "One Piece",
  "بليتش": "Bleach", "دراغون بول": "Dragon Ball", "هجوم العمالقة": "Attack on Titan",
  "قاتل الشياطين": "Demon Slayer", "ديمون سلاير": "Demon Slayer", "جوجوتسو كايسن": "Jujutsu Kaisen",
  "القناص": "Hunter x Hunter", "هانتر": "Hunter x Hunter", "هنتر": "Hunter x Hunter",
  "أكاديمية بطلي": "My Hero Academia", "فيري تيل": "Fairy Tail", "مذكرة الموت": "Death Note",
  "سورد آرت أونلاين": "Sword Art Online", "سولو ليفلينج": "Solo Leveling", "الرجل ذو اللكمة الواحدة": "One Punch Man",
};

function polishArabicTranslation(value: string, kind: string): string {
  let out = String(value || "")
    .replace(/&amp;/gi, "&").replace(/&quot;/gi, '"').replace(/&#039;/gi, "'")
    .replace(/\s+/g, " ").replace(/\s+([،؛.!؟])/g, "$1").trim();
  // EpisodeList batches titles with this separator. Polish each item separately
  // so an alias/prefix fix cannot corrupt the neighbouring title.
  if (kind === "title" && /\n\s*§§§\s*\n/.test(out)) {
    return out.split(/\n\s*§§§\s*\n/).map(part => polishArabicTranslation(part, kind)).join("\n§§§\n");
  }
  if (kind === "title") {
    const alias = AR_TITLE_ALIASES[out.toLowerCase()];
    if (alias) return alias;
    out = out
      .replace(/^(?:episode|ep\.?|الحلقة)\s*\d*\s*[-:–.)]\s*/i, "")
      .replace(/^الحلقة\s+\d+\s*[-:–]\s*/, "")
      .trim();
  }
  // Editorial fixes for recurring literal machine-translation phrasing.
  return out.replace(/تتبع القصة/gi, "تدور أحداث القصة حول")
    .replace(/في هذا الأنمي،/gi, "تدور الأحداث في هذا الأنمي حول")
    .replace(/طالب في المدرسة الثانوية/gi, "طالب في المرحلة الثانوية")
    .replace(/يتمحور حول/gi, "تدور أحداثه حول")
    .replace(/الشخصية الرئيسية هي/gi, "تتمحور القصة حول");
}

router.get("/anime/translate", async (req, res) => {
  const text = ((req.query.text as string) || "").trim();
  const from = ((req.query.from as string) || "en").trim().toLowerCase();
  const to   = ((req.query.to   as string) || "ar").trim().toLowerCase();
  const kind = ((req.query.kind as string) || "subtitle").trim().toLowerCase();
  if (!text) { res.json({ translated: "" }); return; }

  const normalizedArabic = text.normalize("NFKC")
    .replace(/[ًٌٍَُِّْـ]/g, "").replace(/[أإآ]/g, "ا").replace(/ة/g, "ه").trim();
  if (from === "ar" && to === "en") {
    const alias = AR_SEARCH_ALIASES[text] || AR_SEARCH_ALIASES[normalizedArabic];
    if (alias) { res.setHeader("Cache-Control", "public, max-age=86400"); return res.json({ translated: alias, cached: true }); }
  }
  const directAlias = to === "ar" && kind === "title" ? AR_TITLE_ALIASES[text.toLowerCase()] : undefined;
  if (directAlias) { res.setHeader("Cache-Control", "public, max-age=86400"); return res.json({ translated: directAlias, cached: true }); }

  // v4 invalidates entries saved before the optional self-hosted Argos
  // provider was introduced.
  const cacheKey = `v4:${kind}:${from}:${to}:${text.substring(0, 600)}`;
  if (translateCache.has(cacheKey)) return res.json({ translated: translateCache.get(cacheKey), cached: true });
  const cached = await pgTranslateGet(cacheKey);
  if (cached !== null) {
    translateCache.set(cacheKey, cached);
    return res.json({ translated: cached, cached: true });
  }

  const parts = kind === "title" ? text.split(/\n\s*§§§\s*\n/) : [text];
  let translatedParts: string[] = [];
  try { translatedParts = await translateBatchFree(parts, from, to); }
  catch { translatedParts = parts.slice(); }

  await Promise.allSettled(translatedParts.map(async (value, i) => {
    if (from === to || !value || value !== parts[i]) return;
    try {
      // This endpoint remains available from VPS egress IPs that are
      // rate-limited by translate.googleapis.com.
      const chromeUrl = `https://clients5.google.com/translate_a/t?client=dict-chrome-ex&sl=${encodeURIComponent(from)}&tl=${encodeURIComponent(to)}&q=${encodeURIComponent(parts[i].slice(0, 500))}`;
      const chrome = await fetch(chromeUrl, {
        signal: AbortSignal.timeout(8_000),
        headers: { "User-Agent": BROWSER_UA, Accept: "application/json" },
      });
      const chromeValue = String(chrome.ok ? ((await chrome.json() as any)?.[0] || "") : "").trim();
      if (chromeValue && (!to.startsWith("ar") || /[\u0600-\u06ff]/.test(chromeValue))) {
        translatedParts[i] = chromeValue;
        return;
      }
    } catch {}
    try {
      const mm = `https://api.mymemory.translated.net/get?q=${encodeURIComponent(parts[i].slice(0, 500))}&langpair=${from}|${to}`;
      const mr = await fetch(mm, { signal: AbortSignal.timeout(5_000), headers: { "User-Agent": BROWSER_UA } });
      if (mr.ok) {
        const mt = String((await mr.json() as any)?.responseData?.translatedText || "").trim();
        if (mt && !/MYMEMORY WARNING|AVAILABLE FREE TRANSLATIONS/i.test(mt) &&
            (!to.startsWith("ar") || /[\u0600-\u06ff]/.test(mt))) translatedParts[i] = mt;
      }
    } catch {}
  }));

  const translated = polishArabicTranslation(
    translatedParts.map((value, i) => polishArabicTranslation(value || parts[i], kind)).join("\n§§§\n"),
    kind,
  );
  translateCache.set(cacheKey, translated);
  await pgTranslateSave(cacheKey, translated, from, to);
  res.setHeader("Cache-Control", "public, max-age=86400");
  res.json({ translated });
});


// ════════════════════════════════════════════════════════════════════
// ════════════════════════════════════════════════════════════════════
//  proxy-text  GET /api/anime/proxy-text?url=&ref=
//  Fetch a subtitle/text file server-side so browser CORS and provider
//  Referer restrictions do not prevent VTT loading.
// ════════════════════════════════════════════════════════════════════
router.get("/anime/proxy-text", async (req, res) => {
  const rawUrl = String(req.query.url || "").trim();
  const ref = String(req.query.ref || "").trim();
  let url = rawUrl;
  try { url = decodeURIComponent(rawUrl); } catch { /* Express already decoded it */ }
  if (!/^https?:\/\//i.test(url)) {
    res.status(400).json({ error: "bad url" });
    return;
  }
  try {
    const extraHdrs: Record<string, string> = {
      Accept: "text/vtt,text/plain,application/x-subrip,*/*",
    };
    if (ref) {
      extraHdrs.Referer = ref;
      try { extraHdrs.Origin = new URL(ref).origin; } catch { /* optional */ }
    }
    const text = await cfGet(url, extraHdrs);
    if (!text) {
      res.status(502).json({ error: "subtitle upstream failed" });
      return;
    }
    res.setHeader("Content-Type", "text/vtt; charset=utf-8");
    res.setHeader("Cache-Control", "public, max-age=3600");
    res.send(text);
  } catch (e: any) {
    res.status(502).json({ error: e?.message || "subtitle proxy failed" });
  }
});

//  scan-gif  GET /api/anime/scan-gif?i=0
//  Android WebView لا يستطيع دائماً جلب GIFDB/Giphy مباشرة بسبب redirect أو
//  سياسات CDN. هذه قائمة ثابتة (وليست proxy مفتوحاً) لتمرير صورة الفحص من VPS.
const SERVER_SCAN_GIF_URLS = [
  "https://gifdb.com/images/branded/high/satoru-gojo-vs-ryomen-sukuna-gif-tt4cnmnevgpxt99u.gif",
  "https://media.giphy.com/media/unGpfM6wCE_2IKotc/giphy.gif",
] as const;
const MAX_SCAN_GIF_BYTES = 8 * 1024 * 1024;
const scanGifCache = new Map<number, { body: Buffer; contentType: string; expiresAt: number }>();
router.get("/anime/scan-gif", async (req, res) => {
  const index = Math.max(0, Math.min(SERVER_SCAN_GIF_URLS.length - 1, Number(req.query.i) || 0));
  try {
    const cached = scanGifCache.get(index);
    if (cached && cached.expiresAt > Date.now()) {
      res.setHeader("Content-Type", cached.contentType);
      res.setHeader("Cache-Control", "public, max-age=86400, stale-while-revalidate=604800");
      res.setHeader("X-Nova-Gif-Cache", "hit");
      res.send(cached.body);
      return;
    }
    const upstream = await fetch(SERVER_SCAN_GIF_URLS[index], {
      headers: { Accept: "image/gif,image/*;q=0.9,*/*;q=0.1", "User-Agent": BROWSER_UA },
      redirect: "follow",
      signal: AbortSignal.timeout(8_000),
    });
    if (!upstream.ok) {
      res.status(502).json({ error: "gif upstream failed" });
      return;
    }
    const declaredLength = Number(upstream.headers.get("content-length") || 0);
    if (declaredLength > MAX_SCAN_GIF_BYTES) {
      res.status(413).json({ error: "gif upstream is too large" });
      return;
    }
    const contentType = upstream.headers.get("content-type") || "image/gif";
    const body = Buffer.from(await upstream.arrayBuffer());
    if (body.byteLength > MAX_SCAN_GIF_BYTES) {
      res.status(413).json({ error: "gif upstream is too large" });
      return;
    }
    scanGifCache.set(index, { body, contentType: contentType.includes("image/") ? contentType : "image/gif", expiresAt: Date.now() + 24 * 60 * 60 * 1000 });
    res.setHeader("Content-Type", contentType.includes("image/") ? contentType : "image/gif");
    res.setHeader("Cache-Control", "public, max-age=86400, stale-while-revalidate=604800");
    res.setHeader("X-Nova-Gif-Cache", "miss");
    res.send(body);
  } catch (error: any) {
    res.status(502).json({ error: error?.message || "gif proxy failed" });
  }
});

//  translate-vtt  GET /api/anime/translate-vtt?url=&from=en&to=ar
//  Fetches a VTT/SRT subtitle file and returns translated cue array
// ════════════════════════════════════════════════════════════════════

/**
 * Shift a VTT timestamp string by subtracting `offsetSec` seconds.
 * Handles both HH:MM:SS.mmm and MM:SS.mmm formats.
 * Used to correct X-TIMESTAMP-MAP offsets in HLS-native VTT files.
 */
function shiftVttTimestamp(timeStr: string, offsetSec: number): string {
  const toSec = (s: string): number => {
    const m3 = s.match(/^(\d+):(\d{2}):(\d{2})[,.](\d{1,3})/);
    if (m3) return parseInt(m3[1])*3600 + parseInt(m3[2])*60 + parseInt(m3[3]) + parseInt(m3[4].padEnd(3,"0"))/1000;
    const m2 = s.match(/^(\d+):(\d{2})[,.](\d{1,3})/);
    if (m2) return parseInt(m2[1])*60 + parseInt(m2[2]) + parseInt(m2[3].padEnd(3,"0"))/1000;
    return 0;
  };
  const clamped = Math.max(0, toSec(timeStr) - offsetSec);
  const h  = Math.floor(clamped / 3600);
  const m  = Math.floor((clamped % 3600) / 60);
  const s  = clamped % 60;
  const ms = Math.round((s % 1) * 1000);
  const ss = Math.floor(s);
  return `${String(h).padStart(2,"0")}:${String(m).padStart(2,"0")}:${String(ss).padStart(2,"0")}.${String(ms).padStart(3,"0")}`;
}

/** Parse a VTT or SRT file into timing + plain-text pairs.
 *  Handles X-TIMESTAMP-MAP header (HLS-native VTT, e.g. Videasy cc.boopigcdn.com):
 *    X-TIMESTAMP-MAP=MPEGTS:900000,LOCAL:00:00:00.000
 *  → offset = 900000/90000 = 10 s → subtract from every cue to fix late-subtitle bug. */
function parseVttCues(text: string): Array<{ timing: string; rawText: string }> {
  const normalized = text.replace(/\r\n/g, "\n").replace(/\r/g, "\n");

  // ── X-TIMESTAMP-MAP: subtract MPEG-TS base offset so VOD cues start at media-time 0 ──
  let tsOffset = 0;
  const tsMapM = normalized.match(/X-TIMESTAMP-MAP=MPEGTS:(\d+),LOCAL:([\d:.]+)/i);
  if (tsMapM) {
    const mpegts = parseInt(tsMapM[1], 10) / 90000; // 90 kHz clock → seconds
    const lStr = tsMapM[2].trim();
    const lm3 = lStr.match(/^(\d+):(\d{2}):(\d{2})[,.](\d{1,3})/);
    const lm2 = lStr.match(/^(\d+):(\d{2})[,.](\d{1,3})/);
    const local = lm3
      ? parseInt(lm3[1])*3600 + parseInt(lm3[2])*60 + parseInt(lm3[3]) + parseInt(lm3[4].padEnd(3,"0"))/1000
      : lm2 ? parseInt(lm2[1])*60 + parseInt(lm2[2]) + parseInt(lm2[3].padEnd(3,"0"))/1000 : 0;
    tsOffset = Math.max(0, mpegts - local); // e.g. 900000/90000 - 0 = 10.0 s
  }

  const blocks = normalized.split(/\n{2,}/);
  const cues: Array<{ timing: string; rawText: string }> = [];
  for (const block of blocks) {
    const trimmed = block.trim();
    if (!trimmed || /^WEBVTT|^NOTE|^STYLE/.test(trimmed)) continue;
    const lines = trimmed.split("\n");
    const timingIdx = lines.findIndex(l => l.includes("-->"));
    if (timingIdx === -1) continue;
    // Keep only the timestamp part (drop VTT cue settings like "align:start")
    const timingFull = lines[timingIdx];
    const rawParts = timingFull.split("-->").map(s => s.trim().split(/\s/)[0]);
    // Apply X-TIMESTAMP-MAP correction to each timestamp
    const timing = tsOffset > 0
      ? rawParts.map(p => shiftVttTimestamp(p, tsOffset)).join(" --> ")
      : rawParts.join(" --> ");
    const rawText = lines
      .slice(timingIdx + 1)
      .join(" ")
      .replace(/<[^>]+>/g, "")    // strip HTML/VTT tags
      .replace(/\{[^}]+\}/g, "")  // strip ASS/SSA tags
      .trim();
    if (!rawText) continue;
    cues.push({ timing, rawText });
  }
  return cues;
}

/** Stable single-text fallback used for descriptions and episode titles.
 * LibreTranslate now requires a key on the public endpoint and MyMemory has
 * a very small daily quota, so Google\'s public translation endpoint is the
 * first fallback. It does not require credentials and preserves proper names
 * much better when titles are translated one at a time. */
async function translateGoogleSingle(text: string, from: string, to: string): Promise<string | null> {
  const value = text.trim();
  if (!value || from === to) return value;
  try {
    const endpoint = `https://translate.googleapis.com/translate_a/single?client=gtx&sl=${encodeURIComponent(from)}&tl=${encodeURIComponent(to)}&dt=t&q=${encodeURIComponent(value.slice(0, 5000))}`;
    const response = await fetch(endpoint, {
      headers: { Accept: "application/json", "User-Agent": BROWSER_UA },
      signal: AbortSignal.timeout(10_000),
    });
    if (!response.ok) return null;
    const data = await response.json() as any;
    const translated = Array.isArray(data?.[0])
      ? data[0].map((part: any) => Array.isArray(part) ? String(part[0] || "") : "").join("").trim()
      : "";
    return translated || null;
  } catch {
    return null;
  }
}

/** Google Translate npm client. It uses the same public Google service as the
 * direct endpoint, but has a separate request implementation for resilience. */
async function translateNodeGoogleSingle(text: string, from: string, to: string): Promise<string | null> {
  const value = text.trim();
  if (!value || from === to) return from === to ? value : null;
  try {
    const result = await Promise.race([
      nodeGoogleTranslate(value.slice(0, 5000), { from, to }),
      new Promise<never>((_, reject) => setTimeout(() => reject(new Error("google translator timeout")), 10_000)),
    ]);
    const translated = String((result as any)?.text || "").trim();
    if (!translated || translated === value) return null;
    if (to.startsWith("ar") && !/[\u0600-\u06ff]/.test(translated)) return null;
    return translated;
  } catch {
    return null;
  }
}

/** Python googletrans fallback. It is intentionally one-shot and only runs
 * after the Node client fails, so it cannot become a resident RAM-heavy
 * translation service. */
async function translatePythonGoogleSingle(text: string, from: string, to: string): Promise<string | null> {
  const value = text.trim();
  if (!value || from === to) return from === to ? value : null;
  return new Promise((resolve) => {
    execFile(
      "python3",
      [pathJoin(process.cwd(), "scripts", "googletrans_fallback.py"), JSON.stringify({ text: value, from, to })],
      { timeout: 12_000, maxBuffer: 16 * 1024 },
      (error, stdout) => {
        if (error) return resolve(null);
        const translated = String(stdout || "").trim();
        resolve(
          translated &&
          translated !== value &&
          (!to.startsWith("ar") || /[\u0600-\u06ff]/.test(translated))
            ? translated
            : null,
        );
      },
    );
  });
}

/** Protect tokens that must never be translated or mutated (URLs, handles,
 * episode numbers, and technical placeholders), then restore them after the
 * provider returns. This keeps proper names and place names stable when they
 * are supplied as glossary tokens by the source subtitle. */
function protectTranslationTokens(value: string): { text: string; restore: (translated: string) => string } {
  const protectedTokens: string[] = [];
  const protectedText = value.replace(
    /https?:\/\/\S+|(?:^|\s)([@#][\w.-]+)|\b(?:S\d{1,2}E\d{1,3}|EP?\s*\.?\s*\d{1,4})\b/gi,
    (match) => {
      const leading = /^\s/.test(match) ? match.slice(0, 1) : "";
      const token = match.slice(leading.length);
      const marker = `__NOVA_TOKEN_${protectedTokens.length}__`;
      protectedTokens.push(token);
      return `${leading}${marker}`;
    },
  );
  return {
    text: protectedText,
    restore: (translated) =>
      translated.replace(/__NOVA_TOKEN_(\d+)__/g, (_, index) => protectedTokens[Number(index)] ?? ""),
  };
}

async function translateWithProviders(text: string, from: string, to: string): Promise<string | null> {
  const protectedInput = protectTranslationTokens(text);
  const providers = [
    () => translateNodeGoogleSingle(protectedInput.text, from, to),
    () => translatePythonGoogleSingle(protectedInput.text, from, to),
    () => translateGoogleSingle(protectedInput.text, from, to),
  ];
  for (const provider of providers) {
    const result = await provider();
    if (result) return protectedInput.restore(result);
  }
  return null;
}

/** Translate text with resilient free fallbacks.
 * Node google translator and Python googletrans are deliberately separate
 * clients; this gives the VPS a second Google implementation without
 * keeping a resident translation daemon. */
async function translateBatchFree(texts: string[], from: string, to: string): Promise<string[]> {
  const results = [...texts];
  const CHUNK = 10;
  const PARALLEL = 6;
  const SEP = " ||| ";
  const endpoint = process.env.LIBRETRANSLATE_URL || "https://libretranslate.com/translate";
  const apiKey = process.env.LIBRETRANSLATE_API_KEY || "";
  const chunks: string[][] = [];
  for (let i = 0; i < texts.length; i += CHUNK) chunks.push(texts.slice(i, i + CHUNK));

  for (let i = 0; i < chunks.length; i += PARALLEL) {
    const batch = chunks.slice(i, i + PARALLEL);
    await Promise.allSettled(batch.map(async (chunk, batchIdx) => {
      const offset = (i + batchIdx) * CHUNK;
      // Argos results are already final for these items; only send the
      // remaining cues through the remote fallback providers.
      const pending = chunk
        .map((text, j) => ({ text, index: j }))
        .filter(item => results[offset + item.index] === item.text);
      if (!pending.length) return;
      try {
        const cleaned = pending.map(item => item.text.replace(/\|\|\|/g, "").trim());
        const body: Record<string, unknown> = {
          q: cleaned.join(SEP), source: from, target: to, format: "text",
        };
        if (apiKey) body.api_key = apiKey;
        const r = await fetch(endpoint, {
          method: "POST",
          headers: { "Content-Type": "application/json", Accept: "application/json" },
          body: JSON.stringify(body),
          signal: AbortSignal.timeout(8000),
        });
        if (!r.ok) throw new Error(`LibreTranslate ${r.status}`);
        const data = await r.json() as any;
        const translated = String(data?.translatedText || "");
        const parts = translated.split(/\s*\|\|\|\s*/);
        if (!translated || parts.length !== pending.length) throw new Error("translation mismatch");
        pending.forEach((item, j) => {
          const candidate = parts[j]?.trim();
          if (candidate && (!to.startsWith("ar") || /[\u0600-\u06ff]/.test(candidate))) {
            results[offset + item.index] = candidate;
          }
        });
      } catch {
        await Promise.allSettled(pending.map(async (item) => {
          const google = await translateWithProviders(item.text, from, to);
          if (google) {
            results[offset + item.index] = google;
            return;
          }
          try {
            const mm = `https://api.mymemory.translated.net/get?q=${encodeURIComponent(item.text.slice(0, 500))}&langpair=${from}|${to}`;
            const r = await fetch(mm, { signal: AbortSignal.timeout(7000) });
            const data = r.ok ? await r.json() as any : null;
            const candidate = String(data?.responseData?.translatedText || "").trim();
            results[offset + item.index] = candidate && !/^MYMEMORY WARNING/i.test(candidate) &&
              (!to.startsWith("ar") || /[\u0600-\u06ff]/.test(candidate)) ? candidate : item.text;
          } catch { results[offset + item.index] = item.text; }
        }));
      }
    }));
  }
  return results;
}

router.get("/anime/translate-vtt", async (req, res) => {
  const rawUrl = ((req.query.url  as string) || "").trim();
  const from   = ((req.query.from as string) || "en").trim();
  const to     = ((req.query.to   as string) || "ar").trim();
  if (!rawUrl) { res.status(400).json({ error: "url required" }); return; }

  // دعم URLs نسبية مثل /api/anime/proxy-text?... (تُحوَّل لـ localhost)
  const PORT = process.env.PORT || 5000;
  const url = rawUrl.startsWith("/") ? `http://localhost:${PORT}${rawUrl}` : rawUrl;

  const cacheKey = `${from}→${to}:${rawUrl}`;

  // L1 + L2 (Supabase): إذا وُجدت ترجمة مُخزَّنة → أرجعها فوراً
  const cached = await getSubtitleCache(cacheKey);
  if (cached) {
    res.json({ cues: cached, cached: true }); return;
  }

  try {
    const r = await fetch(url, {
      headers: {
        ...BASE_HDRS,
        Accept: "text/vtt,text/plain,*/*",
        Referer: (() => { try { return new URL(url).origin + "/"; } catch { return url; } })(),
        Origin:  (() => { try { return new URL(url).origin; } catch { return ""; } })(),
      },
      signal: AbortSignal.timeout(12000),
    });
    if (!r.ok) { res.status(502).json({ error: `Subtitle fetch failed: ${r.status}` }); return; }
    const vttText = await r.text();
    const cues = parseVttCues(vttText);
    if (!cues.length) { res.json({ cues: [] }); return; }

    // إذا كانت اللغة المصدر = الهدف → لا داعي للترجمة
    if (from === to) {
      const result = cues.map(c => ({ timing: c.timing, text: c.rawText }));
      void setSubtitleCache(cacheKey, result); // حفظ في L1 + Supabase
      res.json({ cues: result }); return;
    }

    const translatedTexts = await translateBatchFree(cues.map(c => c.rawText), from, to);

    const result = cues.map((c, i) => ({
      timing: c.timing,
      text: translatedTexts[i] ?? c.rawText,
    }));

    // حفظ في L1 + L2 Supabase (fire-and-forget لا يؤخر الاستجابة)
    void setSubtitleCache(cacheKey, result);

    res.json({ cues: result });
  } catch (e: any) {
    res.status(500).json({ error: e?.message || "Translation failed" });
  }
});


// ════════════════════════════════════════════════════════════════════
//  translate-vtt-stream  GET /api/anime/translate-vtt-stream?url=&from=en&to=ar
//  SSE streaming version — sends translated cues chunk by chunk.
//  First batch arrives in ~3 s; background continues until all done.
//  Cache hit → instant single-chunk response.
// ════════════════════════════════════════════════════════════════════
router.get("/anime/translate-vtt-stream", async (req, res) => {
  const rawUrl = ((req.query.url  as string) || "").trim();
  const from   = ((req.query.from as string) || "en").trim();
  const to     = ((req.query.to   as string) || "ar").trim();
  if (!rawUrl) { res.status(400).end(); return; }

  const PORT = process.env.PORT || 5000;
  const url  = rawUrl.startsWith("/") ? `http://localhost:${PORT}${rawUrl}` : rawUrl;
  const cacheKey = `${from}→${to}:${rawUrl}`;

  res.setHeader("Content-Type",  "text/event-stream");
  res.setHeader("Cache-Control", "no-cache");
  res.setHeader("Connection",    "keep-alive");
  res.setHeader("Access-Control-Allow-Origin", "*");
  res.flushHeaders();

  const send = (data: object) => { if (!res.writableEnded) res.write(`data: ${JSON.stringify(data)}\n\n`); };
  const ka   = setInterval(() => { if (!res.writableEnded) res.write(": keepalive\n\n"); }, 5000);

  const finish = (totalCues: number) => {
    clearInterval(ka);
    send({ type: "done", totalCues });
    if (!res.writableEnded) res.end();
  };
  req.on("close", () => clearInterval(ka));

  try {
    // ── Cache hit: instant full response ──
    const cached = await getSubtitleCache(cacheKey);
    if (cached) {
      send({ type: "chunk", cues: cached, index: 0, total: 1, cached: true });
      finish(cached.length);
      return;
    }

    // ── Fetch source VTT/SRT ──
    const r = await fetch(url, {
      headers: {
        ...BASE_HDRS,
        Accept: "text/vtt,text/plain,*/*",
        Referer: (() => { try { return new URL(url).origin + "/"; } catch { return url; } })(),
        Origin:  (() => { try { return new URL(url).origin;       } catch { return "";  } })(),
      },
      signal: AbortSignal.timeout(12000),
    });
    if (!r.ok) { send({ type: "error", message: `Fetch failed: ${r.status}` }); finish(0); return; }
    const vttText = await r.text();
    const cues    = parseVttCues(vttText);
    if (!cues.length) { finish(0); return; }

    // ── No translation needed ──
    if (from === to) {
      const result = cues.map(c => ({ timing: c.timing, text: c.rawText }));
      void setSubtitleCache(cacheKey, result);
      send({ type: "chunk", cues: result, index: 0, total: 1 });
      finish(result.length);
      return;
    }

    const CHUNK    = 25;
    const PARALLEL = 10;
    // Split all cues into chunks of CHUNK
    const allChunks: Array<{ timing: string; rawText: string }[]> = [];
    for (let i = 0; i < cues.length; i += CHUNK) allChunks.push(cues.slice(i, i + CHUNK));
    const totalChunks = allChunks.length;

    // Full accumulator for cache save at the end
    const fullResult: { timing: string; text: string }[] = new Array(cues.length).fill(null as any);
    let sentIndex = 0;

    // Translate a single chunk and stream it immediately when done
    const translateChunk = async (chunk: { timing: string; rawText: string }[], chunkIdx: number) => {
      if (res.writableEnded) return;
      const cueStart = chunkIdx * CHUNK;
      const cleaned  = chunk.map(t => t.rawText.replace(/\|\|\|/g, "").trim());
      let translated: string[] = cleaned; // fallback = original

      try {
        translated = await translateBatchFree(cleaned, from, to);
      } catch {
        // The shared helper already falls back per cue; keep the raw cue if
        // both open translation services are unavailable.
      }

      const chunkCues = chunk.map((c, j) => {
        const row = { timing: c.timing, text: translated[j] ?? c.rawText };
        fullResult[cueStart + j] = row;
        return row;
      });

      // Stream this chunk immediately as soon as it's ready
      if (chunkCues.length > 0 && !res.writableEnded) {
        send({ type: "chunk", cues: chunkCues, index: sentIndex++, total: totalChunks });
      }
    };

    // Run PARALLEL chunks at a time, streaming each chunk the moment it finishes
    for (let roundStart = 0; roundStart < allChunks.length && !res.writableEnded; roundStart += PARALLEL) {
      const group = allChunks.slice(roundStart, roundStart + PARALLEL);
      await Promise.allSettled(
        group.map((chunk, pi) => translateChunk(chunk, roundStart + pi))
      );
    }

    // Save complete translation to L1+L2 cache (fire-and-forget)
    const finalCues = fullResult.filter(Boolean);
    if (finalCues.length > 0) void setSubtitleCache(cacheKey, finalCues);
    finish(finalCues.length);

  } catch (e: any) {
    send({ type: "error", message: e?.message || "Translation failed" });
    clearInterval(ka);
    if (!res.writableEnded) res.end();
  }
});


// ════════════════════════════════════════════════════════════════════
//  Test Embed  GET /api/anime/test-embed?url=ENCODED_URL
// ════════════════════════════════════════════════════════════════════
router.get("/anime/test-embed", async (req, res) => {
  const rawUrl = ((req.query.url as string) || "").trim();
  if (!rawUrl) { res.status(400).json({ working: false, reason: "no url" }); return; }
  let targetUrl: string;
  try { targetUrl = decodeURIComponent(rawUrl); } catch { targetUrl = rawUrl; }
  try { new URL(targetUrl); } catch { res.status(400).json({ working: false, reason: "invalid url" }); return; }
  try {
    const r = await fetch(targetUrl, {
      method: "GET",
      headers: { "User-Agent": BROWSER_UA, Accept: "text/html,*/*", Referer: targetUrl },
      signal: AbortSignal.timeout(8000), redirect: "follow",
    });
    if (!r.ok) { res.json({ working: false, reason: `HTTP ${r.status}` }); return; }
    const text = await r.text();
    if (isCloudflareBlock(text)) { res.json({ working: false, reason: "cloudflare" }); return; }
    const hasVideo = /<video/i.test(text) || /\.m3u8/i.test(text) || /jwplayer|plyr|playerjs|flowplayer|vidplayer/i.test(text)
      || /source.*mp4|file.*mp4|url.*mp4/i.test(text) || /videoUrl|video_url|fileUrl|streamUrl/i.test(text);
    const has404 = /404|not found|page not found/i.test(text.slice(0, 2000));
    if (has404 && !hasVideo) { res.json({ working: false, reason: "404" }); return; }
    res.json({ working: hasVideo, reason: hasVideo ? "ok" : "no-video" });
  } catch (e: any) { res.json({ working: false, reason: e.message }); }
});


// ════════════════════════════════════════════════════════════════════
//  Embed Proxy  GET /api/anime/proxy-embed?url=ENCODED_URL
// ════════════════════════════════════════════════════════════════════
router.get("/anime/proxy-embed", async (req, res) => {
  const rawUrl = ((req.query.url as string) || "").trim();
  if (!rawUrl) { res.status(400).send("url required"); return; }
  let targetUrl: string;
  try { targetUrl = decodeURIComponent(rawUrl); } catch { targetUrl = rawUrl; }
  let parsed: URL;
  try { parsed = new URL(targetUrl); } catch { res.status(400).send("invalid url"); return; }
  if (!["http:", "https:"].includes(parsed.protocol)) { res.status(400).send("bad protocol"); return; }

  try {
    const resp = await fetch(targetUrl, {
      headers: {
        "User-Agent": BROWSER_UA,
        "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
        "Accept-Language": "ar,en-US;q=0.9,en;q=0.8",
        "Referer": parsed.origin + "/",
        "Origin": parsed.origin,
      },
      signal: AbortSignal.timeout(12_000),
      redirect: "follow",
    } as any);

    let html = await resp.text();

    if (isCloudflareBlock(html)) {
      const safeUrl = targetUrl.replace(/['"<>]/g, "");
      res.send(`<html><body style="background:#000;color:#fff;font-family:sans-serif;display:flex;align-items:center;justify-content:center;height:100vh;margin:0;flex-direction:column;gap:12px">
        <div style="font-size:32px">&#x1F6E1;&#xFE0F;</div>
        <p style="margin:0;font-size:14px;opacity:0.6">محمي بـ Cloudflare</p>
        <p style="margin:0;font-size:11px;opacity:0.3">${safeUrl}</p>
        <script>window.parent.postMessage({type:'nova-cf-block',url:${JSON.stringify(targetUrl)}},'*');</script>
      </body></html>`);
      return;
    }

    const AD_SCRIPTS = [
      "googlesyndication","doubleclick","adsbygoogle","adsystem","popads",
      "popcash","trafficstars","propellerads","adcash","adbanner","adserver",
      "exoclick","hilltopads","juicyads","clickadu","adsterra","mgid",
      "taboola","outbrain","revcontent","fuckingfast","adcdn","popunder",
    ];
    html = html.replace(
      new RegExp(`<script[^>]+src=["'][^"']*(?:${AD_SCRIPTS.join("|")})[^"']*["'][^>]*>.*?<\\/script>`, "gis"),
      ""
    );
    html = html.replace(/<iframe[^>]+src=["'][^"']*(?:doubleclick|googlesyndication|adsbygoogle)[^"']*["'][^>]*>.*?<\/iframe>/gis, "");

    const INJECT = `
<base href="${parsed.origin}/">
<style>
html, body { margin:0 !important; padding:0 !important; overflow:hidden !important; background:#000 !important; width:100vw !important; height:100vh !important; }
header, footer, nav, aside, .header, .footer, .nav, .navbar,
.top-bar, .bottom-bar, .site-header, .site-footer,
.breadcrumb, .pagination, .comments, .related-posts,
.sidebar, .widget, .ad-zone, .ads-container,
.cookie-notice, .cookie-bar, .gdpr-notice,
.social-share, .share-buttons, .download-section,
.subscription-box, .login-box, .register-box,
.logo, .site-logo, .branding,
[id*="header"], [id*="footer"], [id*="sidebar"], [id*="navbar"],
[id*="nav-"], [id*="-nav"], [id*="menu"], [id*="breadcrumb"],
[id*="comments"], [id*="related"], [id*="share"], [id*="social"],
[class*="header"]:not([class*="player"]):not([class*="video"]),
[class*="footer"]:not([class*="player"]):not([class*="video"]),
[class*="navbar"]:not([class*="player"]):not([class*="video"]),
[class*="sidebar"]:not([class*="player"]):not([class*="video"]),
[class*="breadcrumb"], [class*="related"]:not([class*="player"]),
[class*="comments"], [class*="social"]:not([class*="player"]),
[class*="share"]:not([class*="player"]), [class*="download-btn"],
[class*="cookie"], [class*="gdpr"], [class*="subscribe"],
[class*="logo"]:not([class*="player"]), [class*="branding"] { display: none !important; }
[id*="ad_"], [id*="_ad"], [id*="banner"], [id*="popup"],
[id*="interstitial"], [id*="overlay"],
[class*="ad-"], [class*="-ad_"], [class*="ads-"], [class*="-ads"],
[class*="banner-ad"], [class*="popup-ad"], [class*="advert"],
[class*="advertisement"], [class*="vpn-banner"],
[class*="click-under"], [class*="popunder"], [class*="clickad"],
.adsbygoogle, ins.adsbygoogle, [id="aswift_iframe_anchor"] { display: none !important; }
body > div[style*="position:fixed"]:not([id*="player"]):not([class*="player"]),
body > div[style*="position: fixed"]:not([id*="player"]):not([class*="player"]) { display: none !important; }
#player, #vplayer, #video, #videoPlayer, #player-container,
#jwplayer, #player_container, #video-container,
.player, .video-player, .player-container, .video-container,
.jwplayer, .jw-wrapper, .plyr, .plyr__container,
.mejs-container, .flowplayer, .fp-player,
[id^="jwplayer"], [id*="player"], [id*="vplayer"],
[class*="player"]:not([class*="noplayer"]):not([class*="ad-player"]),
[class*="video-wrap"], [class*="videowrap"],
[class*="embed-responsive"], [class*="embed_responsive"],
[class*="video-holder"], [class*="video_holder"] {
  position: fixed !important; top: 0 !important; left: 0 !important;
  width: 100vw !important; height: 100vh !important;
  max-width: none !important; max-height: none !important;
  margin: 0 !important; padding: 0 !important;
  border: none !important; border-radius: 0 !important;
  background: #000 !important; z-index: 1 !important; transform: none !important;
}
video { width: 100% !important; height: 100% !important; object-fit: contain !important; background: #000 !important; display: block !important; max-width: none !important; max-height: none !important; }
.jw-overlays [class*="ad"], .jw-ad, .jw-flag-ads,
.jw-nextup-container, .jw-logo,
.plyr__ads, [class*="ima-ad"] { display: none !important; }
</style>
<script>
(function(){
  window.open = function(){ return { focus:function(){}, closed:false, document:{write:function(){}}, location:{} }; };
  window.alert = function(){};
  window.confirm = function(){ return false; };
  window.prompt = function(){ return null; };
  try {
    Object.defineProperty(window, 'top',    { get: function(){ return window.self; }, configurable: true });
    Object.defineProperty(window, 'parent', { get: function(){ return window.self; }, configurable: true });
  } catch(e){}
  document.addEventListener('click', function(e){
    var t = e.target, tries = 0;
    while(t && tries++ < 8){
      if(t.tagName === 'A'){
        var href = (t.getAttribute('href') || '').trim();
        if(href && href !== '#' && !href.startsWith('javascript') &&
          (href.startsWith('http') || href.startsWith('//'))){
          var myHost = '${parsed.hostname}';
          if(href.indexOf(myHost) === -1){ e.preventDefault(); e.stopPropagation(); return; }
        }
        break;
      }
      t = t.parentElement;
    }
  }, true);
  function closePopups(){
    var adSels = [
      '[id*="ad_"]','[id*="_ad"]','[id*="banner"]','[class*="ad-banner"]',
      '[class*="popup"]','[class*="popunder"]','[class*="clickunder"]',
      '[class*="overlay"]:not([id*="player"]):not([class*="player"])',
      '[id*="overlay"]:not([id*="player"])',
      '.adsbygoogle','[id*="interstitial"]','[class*="vpn"]',
      '[class*="subscribe"]','[class*="age"]','[id*="age"]',
      '[class*="gdpr"]','[class*="cookie"]',
    ];
    adSels.forEach(function(sel){
      try {
        document.querySelectorAll(sel).forEach(function(el){
          var txt = el.textContent || '';
          if(txt.indexOf('18') !== -1 || txt.indexOf('vpn') !== -1 ||
             txt.indexOf('VPN') !== -1 || txt.indexOf('ad') !== -1 ||
             el.getAttribute('class')?.includes('ad') ||
             (el.style.zIndex && parseInt(el.style.zIndex) > 999 && el.tagName === 'DIV')){
            el.style.setProperty('display','none','important');
          }
        });
      } catch(e){}
    });
  }
  if(document.readyState === 'loading'){
    document.addEventListener('DOMContentLoaded', closePopups);
  } else { closePopups(); }
  setTimeout(closePopups, 300); setTimeout(closePopups, 800);
  setTimeout(closePopups, 2000); setInterval(closePopups, 3000);
  document.addEventListener('DOMContentLoaded', function(){
    var text = document.body && document.body.innerText || '';
    if(text.indexOf('Just a moment') !== -1 || text.indexOf('cf_chl_') !== -1){
      window.parent.postMessage({type:'nova-cf-block'},'*');
    }
  });
})();
</script>`;

    if (html.includes("<head>")) {
      html = html.replace("<head>", "<head>" + INJECT);
    } else if (/<html[^>]*>/i.test(html)) {
      html = html.replace(/<html([^>]*)>/i, "<html$1><head>" + INJECT + "</head>");
    } else {
      html = INJECT + html;
    }

    html = html.replace(/(src|href|action)=["']\/(?!\/)/g, `$1="${parsed.origin}/`);

    res.setHeader("Content-Type", "text/html; charset=utf-8");
    res.setHeader("X-Frame-Options", "SAMEORIGIN");
    res.setHeader("Cache-Control", "no-cache");
    res.send(html);
  } catch (e: any) {
    res.status(502).send(`<!-- proxy failed: ${e.message} -->`);
  }
});


// ════════════════════════════════════════════════════════════════════
//  HLS / Segment Proxy — bypasses CORS on CDN video streams
// ════════════════════════════════════════════════════════════════════
const HLS_PROXY_HDRS = (ref: string, origin?: string) => ({
  "User-Agent": BROWSER_UA,
  ...(ref ? { Referer: ref } : {}),
  ...(origin && !ref.includes("kwik.cx") ? { Origin: origin } : {}),
  Accept: "*/*",
  "Accept-Language": "ar,en;q=0.9",
  "Connection": "keep-alive",
});

// جميع الطلبات (ويب + موبايل) تمر عبر VPS مباشرة

// ── تحويل URL نسبي → مطلق ────────────────────────────────────────────────────
function toAbsoluteUrl(raw: string, base: string): string {
  try { return new URL(raw).href; } catch {}
  try { return new URL(raw, base).href; } catch {}
  const dir = base.split("?")[0].replace(/[^/]+$/, "");
  return raw.startsWith("/") ? (new URL(base).origin + raw) : dir + raw;
}

function safeHost(raw: string): string {
  try { return new URL(raw).hostname; } catch { return "invalid"; }
}

// ── Hopx proxy port (يحل CF Worker — كل الفيديو عبر VPS) ───────────────────────
// ── Hopx / MediaFlow / CF Worker — معطّلة جميعها، كل شيء عبر VPS مباشرة ─────────
const _mfOk    = false; // معطّل
const _hopxOk  = false; // معطّل

// ── CF Worker / Hopx — معطّلان، stub دائماً null ────────────────────────────────
// eslint-disable-next-line @typescript-eslint/no-unused-vars
async function fetchSegViaCfWorker(_url: string, _ref: string, _t?: number): Promise<Response | null> { return null; }
// eslint-disable-next-line @typescript-eslint/no-unused-vars
async function fetchViaHopx(_url: string, _ref: string, _t?: number): Promise<Response | null> { return null; }

// ── عنوان VPS الإنتاجي (للروابط المطلقة في M3U8) ────────────────────────────
// ExoPlayer يحتاج روابط مطلقة حين تكون manifest URL معقدة (proxy URL مع query params)
const NOVA_PUBLIC_URL = (process.env.NOVA_PUBLIC_URL || "https://animenovaa.duckdns.org").replace(/\/$/, "");

// ── بناء رابط seg-proxy مطلق ─────────────────────────────────────────────────
function toVpsSegProxy(absUrl: string, ref: string): string {
  return `${NOVA_PUBLIC_URL}/api/anime/seg-proxy?url=${encryptParam(absUrl)}&ref=${encryptParam(ref || absUrl)}`;
}

function toVpsHlsProxy(absUrl: string, ref: string, manifestKey = ""): string {
  const params = new URLSearchParams({
    url: encryptParam(absUrl),
    ref: encryptParam(ref || absUrl),
  });
  if (manifestKey) params.set("mk", encryptParam(manifestKey));
  return `${NOVA_PUBLIC_URL}/api/anime/hls-proxy?${params.toString()}`;
}

// FlixCloud manifests are fetched by the VPS because their signed master and
// variant playlists need the per-embed manifest key. Their media files then
// redirect to StrongHole, which blocks the VPS IP with Cloudflare 403. Keep
// those media URLs client-side so the viewer's IP follows the redirect.
function isClientRoutedFlixMedia(absUrl: string): boolean {
  try {
    const host = new URL(absUrl).hostname.toLowerCase();
    return host === "flixcloud.cc" || host.endsWith(".flixcloud.cc")
      || host === "stronghole.site" || host.endsWith(".stronghole.site")
      || host === "rundowncdn.top" || host.endsWith(".rundowncdn.top");
  } catch {
    return false;
  }
}

function toVpsSegmentOrClient(absUrl: string, ref: string): string {
  // Always start same-origin through the VPS. The segment route tries the
  // curl_cffi stream proxy and only then falls back to a client redirect.
  // Sending StrongHole directly from the manifest loses the FlixCloud Referer
  // and makes the source appear available while playback stays black.
  return toVpsSegProxy(absUrl, ref);
}

// ── إعادة كتابة M3U8 بروابط مطلقة عبر VPS seg-proxy ─────────────────────────
// يستخدم السياق (EXT-X-STREAM-INF) لتحديد هل السطر playlist أم segment
// جميع الروابط مطلقة (https://...) لضمان صحة تفسير ExoPlayer
function rewriteM3u8ForVPS(
  manifest: string,
  baseUrl: string,
  ref: string,
  manifestKey = "",
): string {
  const lines = manifest.split("\n");
  const out: string[] = [];
  let nextIsPlaylist = false;

  for (const line of lines) {
    const t = line.trim();
    if (!t) { out.push(line); nextIsPlaylist = false; continue; }

    // السطر التالي variant playlist (جودات متعددة)
    if (t.startsWith("#EXT-X-STREAM-INF") || t.startsWith("#EXT-X-I-FRAME-STREAM-INF")) {
      nextIsPlaylist = true; out.push(line); continue;
    }

    // Tags التي تحتوي URI
    if ((t.startsWith("#EXT-X-KEY") || t.startsWith("#EXT-X-MEDIA") || t.startsWith("#EXT-X-MAP")) && t.includes('URI="')) {
      const rewritten = t.replace(/URI="([^"]+)"/g, (_, uri) => {
        const abs = toAbsoluteUrl(uri, baseUrl);
        // EXT-X-MEDIA قد تشير لـ playlist (صوت/ترجمة بديلة)
        if (t.startsWith("#EXT-X-MEDIA") && /\.m3u8/i.test(uri)) {
          return `URI="${toVpsHlsProxy(abs, ref, manifestKey)}"`;
        }
        return `URI="${toVpsSegmentOrClient(abs, ref)}"`;
      });
      out.push(rewritten); continue;
    }

    if (t.startsWith("#")) { out.push(line); continue; }

    // سطر URL: variant playlist أو segment
    const abs = toAbsoluteUrl(t, baseUrl);
    if (nextIsPlaylist || /\.m3u8(\?|#|$)/i.test(t)) {
      out.push(toVpsHlsProxy(abs, ref, manifestKey));
    } else {
      out.push(toVpsSegmentOrClient(abs, ref));
    }
    nextIsPlaylist = false;
  }

  return out.join("\n");
}

/** ردود الـCDN الخاطئة لا يجب أن تصل إلى ExoPlayer كأنها media.
 * بعض مزوّدي AN يعيدون HTML/JSON مع status=200 أو يضعون fMP4 داخل
 * Content-Type عام. نقرأ segment الصغير مرة واحدة ونصنّفه من magic bytes. */
function mediaMagic(raw: Buffer): "ts" | "mp4" | "unknown" {
  if (raw.length >= 1 && raw[0] === 0x47) {
    // MPEG-TS packets are 188 bytes apart. A single sync byte is enough
    // for short segments; the second check avoids classifying HTML by chance.
    if (raw.length < 188 || raw[188] === 0x47) return "ts";
  }
  const scanLimit = Math.min(raw.length - 4, 4096);
  for (let i = 0; i <= scanLimit; i++) {
    if (raw.subarray(i, i + 4).toString("ascii") === "ftyp") return "mp4";
  }
  return "unknown";
}

function isHtmlOrJsonBody(raw: Buffer): boolean {
  const prefix = raw.subarray(0, 512).toString("utf8").replace(/^\uFEFF/, "").trimStart().toLowerCase();
  return prefix.startsWith("<!doctype") || prefix.startsWith("<html") ||
    prefix.startsWith("<head") || prefix.startsWith("{") || prefix.startsWith("[");
}

function isValidMp4File(filePath: string): boolean {
  try {
    const head = readFileSync(filePath).subarray(0, 4096);
    return mediaMagic(head) === "mp4";
  } catch {
    return false;
  }
}

// ── VPS-side HLS manifest proxy ─────────────────────────────────────────────
// طبقات الجلب (بالتوازي حيث أمكن):
//  1. VPS direct + Hopx معاً بالتوازي — أيهما يرجع M3U8 أولاً يُستخدم
//  2. CF Worker fallback — نفس آلية segments، يتجاوز حجب CDN لـ datacenter IPs
// الروابط في الـ manifest مطلقة (https://...) — ExoPlayer لا يُخطئ تفسيرها
async function serveHlsVPS(
  url: string, ref: string,
  manifestKey: string,
  res: import("express").Response,
): Promise<void> {
  mediaMetrics.activeManifests++;
  mediaMetrics.manifestRequests++;
  const hdrs: Record<string, string> = { ...BASE_HDRS, Accept: "*/*" };
  if (ref) { hdrs.Referer = ref; try { hdrs.Origin = new URL(ref).origin; } catch {} }
  const key = hlsCacheKey(url, ref, manifestKey);

  // مساعد: إرسال manifest مُعاد كتابته للعميل
  function sendManifest(body: string): void {
    if (res.headersSent) return;
    const rewritten = rewriteM3u8ForVPS(body, url, ref, manifestKey);
    res.setHeader("Content-Type", "application/vnd.apple.mpegurl");
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Cache-Control", "public, max-age=2, stale-while-revalidate=2");
    res.send(rewritten);
  }

  function isValidManifest(body: string): boolean {
    return body.includes("#EXTM3U") || body.includes("#EXT-X-");
  }

  const cached = HLS_MANIFEST_CACHE.get(key);
  if (cached) {
    if (cached.expiresAt > Date.now()) {
      sendManifest(cached.body);
      mediaMetrics.activeManifests--;
      return;
    }
    HLS_MANIFEST_CACHE.delete(key);
  }

  // Coalesce a burst of players starting the same episode. Only one upstream
  // request is made; every waiting player receives the same small manifest.
  let fetchPromise = HLS_MANIFEST_INFLIGHT.get(key);
  if (!fetchPromise) {
    // ── 1. VPS direct ─────────────────────────────────────────────────────────
    const fetchDirect = async (): Promise<string | null> => {
      for (let attempt = 0; attempt < 2; attempt++) {
        try {
          const r = await fetch(url, { headers: hdrs, signal: AbortSignal.timeout(8000) });
          if (r.ok) {
            const body = decodeEncryptedHlsPlaylist(await r.text(), manifestKey);
            if (isValidManifest(body)) return body;
            console.warn(`[hls-proxy] invalid manifest host=${safeHost(url)} status=${r.status} bytes=${body.length}`);
          } else {
            console.warn(`[hls-proxy] upstream rejected host=${safeHost(url)} status=${r.status} attempt=${attempt + 1}`);
          }
          if (r.status !== 403 && r.status !== 429 && r.status !== 503) break;
          if (attempt < 1) await new Promise(r2 => setTimeout(r2, 300));
        } catch (error) {
          const message = error instanceof Error ? error.message : String(error);
          console.warn(`[hls-proxy] upstream fetch failed host=${safeHost(url)} attempt=${attempt + 1}: ${message}`);
          if (attempt < 1) await new Promise(r2 => setTimeout(r2, 300));
          else break;
        }
      }
      return null;
    };

    // ── 2. Hopx parallel ─────────────────────────────────────────────────────
    const fetchHopx = async (): Promise<string | null> => {
      if (!_hopxOk) return null;
      try {
        const r = await fetchViaHopx(url, ref, 12000);
        if (!r) return null;
        const body = decodeEncryptedHlsPlaylist(await r.text(), manifestKey);
        return isValidManifest(body) ? body : null;
      } catch { return null; }
    };

    // VPS مباشر فقط — Hopx / MediaFlow / CF Worker جميعها معطّلة
    fetchPromise = fetchDirect().then((body) => {
      if (body) putHlsManifestCache(key, body, url);
      return body;
    }).finally(() => {
      HLS_MANIFEST_INFLIGHT.delete(key);
    });
    HLS_MANIFEST_INFLIGHT.set(key, fetchPromise);
  }

  try {
    const body = await fetchPromise;
    if (body) sendManifest(body);
    else if (!res.headersSent) {
      mediaMetrics.upstreamErrors++;
      res.status(502).send("upstream error");
    }
  } finally {
    mediaMetrics.activeManifests--;
  }
}

// ── VPS-side segment/video proxy (يُستخدم عند سقوط CF Worker) ─────────────────
async function serveMediaVPS(
  url: string, ref: string,
  req: import("express").Request,
  res: import("express").Response,
): Promise<void> {
  mediaMetrics.activeMedia++;
  mediaMetrics.mediaRequests++;
  sampleMediaCpu();
  // Keep media responses byte-for-byte and let the client control buffering.
  // Compression adds latency and can interfere with Range-based resume.
  const hdrs: Record<string, string> = {
    ...BASE_HDRS,
    Accept: "*/*",
    "Accept-Encoding": "identity",
  };
  // SAnime's CDN uses this UA as a lightweight access key.  It is accepted
  // only through the explicit proxy query parameter and never from a client
  // supplied arbitrary header.
  if (String(req.query.ua || "") === "IBRAHIMSEVEN") {
    hdrs["User-Agent"] = "IBRAHIMSEVEN";
  }
  // بعض CDNs مثل stormvv.vodvidl.site تُضمِّن headers مطلوبة في ?headers={...}
  // نستخرجها ونُضيفها للطلب، ونحذفها من URL الفعلي قبل الإرسال
  try {
    const pu = new URL(url);
    const embeddedHeaders = pu.searchParams.get("headers");
    if (embeddedHeaders) {
      const parsed = JSON.parse(embeddedHeaders) as Record<string, string>;
      for (const [k, v] of Object.entries(parsed)) {
        if (k && v && typeof v === "string") hdrs[k] = v;
      }
      pu.searchParams.delete("headers");
      url = pu.toString();
    }
  } catch { /* URL parse failed — continue with original */ }
  if (ref) { hdrs.Referer = ref; try { hdrs.Origin = new URL(ref).origin; } catch {} }
  const range = req.headers.range;
  if (range) hdrs.Range = range;
  if (req.headers["if-range"]) hdrs["If-Range"] = String(req.headers["if-range"]);
  if (req.headers["if-none-match"]) hdrs["If-None-Match"] = String(req.headers["if-none-match"]);
  if (req.headers["if-modified-since"]) hdrs["If-Modified-Since"] = String(req.headers["if-modified-since"]);
  const upstreamAbort = new AbortController();
  /* The timeout is only for establishing the upstream response. Applying
     AbortSignal.timeout() directly to fetch also aborts a healthy MP4 body
     after 20s, which looks like a playback freeze until the next seek. */
  const connectTimeout = setTimeout(() => upstreamAbort.abort(), 20000);
  const abortUpstream = () => upstreamAbort.abort();
  res.once("close", abortUpstream);
  try {
    const cfStreamResponse = isClientRoutedFlixMedia(url)
      ? await cfProxyStreamFetch(url, ref, req.headers.range ? String(req.headers.range) : undefined)
      : null;
    const r = cfStreamResponse ?? await fetch(url, { headers: hdrs, signal: upstreamAbort.signal });
    clearTimeout(connectTimeout);
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Access-Control-Expose-Headers", "Content-Length,Content-Range,Content-Type");
    let ct = r.headers.get("content-type") || "video/MP2T";
    // بعض CDNs (مثل Akwam) ترجع Content-Type عام (octet-stream/binary) لملفات MP4،
    // ما يمنع بعض المشغّلات (متصفح/ExoPlayer) من التعرّف على نوع الفيديو
    if ((ct === "application/octet-stream" || ct === "binary/octet-stream") &&
        (/\.mp4(\?|$)/i.test(url) || /pyramid\.surf|buzzheavier|buzzheav\.com/i.test(url))) {
      ct = "video/mp4";
    }
    res.setHeader("Content-Type", ct);
    const acceptRanges = r.headers.get("accept-ranges");
    if (acceptRanges) res.setHeader("Accept-Ranges", acceptRanges);
    const cl = r.headers.get("content-length");
    if (cl) res.setHeader("Content-Length", cl);
    if (r.status === 206) {
      const cr = r.headers.get("content-range");
      if (cr) res.setHeader("Content-Range", cr);
      res.status(206);
    } else {
      res.status(r.ok ? 200 : r.status);
      if (!r.ok) mediaMetrics.upstreamErrors++;
    }
    // Stream directly — لا نبفّر في الذاكرة (مهم للـ MP4 الكبيرة)
    if (r.body) {
      const { Readable } = await import("stream");
      (Readable.fromWeb as Function)(r.body).pipe(res);
    } else {
      res.end();
    }
  } catch {
    mediaMetrics.upstreamErrors++;
    if (!res.headersSent) res.status(502).send("media fetch failed");
  } finally {
    clearTimeout(connectTimeout);
    res.removeListener("close", abortUpstream);
    mediaMetrics.activeMedia--;
    sampleMediaCpu();
  }
}

// ── hls-proxy: VPS يجلب M3U8 ويُعيد كتابة الـ segments عبر seg-proxy ──────────
router.get("/anime/hls-proxy", async (req, res) => {
  const rawUrl = (req.query.url as string || "").trim();
  let ref      = (req.query.ref as string || "").trim();
  let manifestKey = (req.query.mk as string || "").trim();
  if (!rawUrl) { res.status(400).send("url required"); return; }
  let url: string;
  try { url = decodeURIComponent(rawUrl); } catch { url = rawUrl; }
  if (isEncrypted(url)) url = decryptParam(url);
  if (ref && isEncrypted(ref)) ref = decryptParam(ref);
  if (manifestKey && isEncrypted(manifestKey)) manifestKey = decryptParam(manifestKey);
  if (!isSafeExternalUrl(url)) { res.status(400).send("invalid external url"); return; }

  res.setHeader("Access-Control-Allow-Origin", "*");
  res.setHeader("Access-Control-Allow-Headers", "Range, Content-Type");
  res.setHeader("Access-Control-Expose-Headers", "Accept-Ranges, Content-Length, Content-Range, Content-Type");

  await serveHlsVPS(url, ref, manifestKey, res);
});

// ── video-proxy: VPS يبث الفيديو مع Referer الصحيح ─────────────────────────
router.get("/anime/video-proxy", async (req, res) => {
  const rawUrl = (req.query.url as string || "").trim();
  let ref      = (req.query.ref as string || "").trim();
  if (!rawUrl) { res.status(400).send("url required"); return; }
  let url: string;
  try { url = decodeURIComponent(rawUrl); } catch { url = rawUrl; }
  if (isEncrypted(url)) url = decryptParam(url);
  if (ref && isEncrypted(ref)) ref = decryptParam(ref);
  if (!isSafeExternalUrl(url)) { res.status(400).send("invalid external url"); return; }

  res.setHeader("Access-Control-Allow-Origin", "*");
  res.setHeader("Access-Control-Allow-Headers", "Range, Content-Type");
  res.setHeader("Access-Control-Expose-Headers", "Accept-Ranges, Content-Length, Content-Range, Content-Type");

  await serveMediaVPS(url, ref, req, res);
});

// Lightweight JSON endpoint for the VPS operator. It reports process-level
// pressure and active proxy work without inspecting or storing media bytes.
router.get("/anime/hls-proxy/metrics", (_req, res) => {
  sampleMediaCpu();
  const memory = process.memoryUsage();
  res.setHeader("Cache-Control", "no-store");
  res.json({
    uptimeSec: Math.round(process.uptime()),
    activeMedia: mediaMetrics.activeMedia,
    activeManifests: mediaMetrics.activeManifests,
    mediaRequests: mediaMetrics.mediaRequests,
    manifestRequests: mediaMetrics.manifestRequests,
    upstreamErrors: mediaMetrics.upstreamErrors,
    manifestCacheEntries: HLS_MANIFEST_CACHE.size,
    manifestInflight: HLS_MANIFEST_INFLIGHT.size,
    cpuPercent: Number(mediaMetrics.cpuPercent.toFixed(1)),
    rssBytes: memory.rss,
    heapUsedBytes: memory.heapUsed,
    externalBytes: memory.external,
  });
});

// ── download-mp4: تحويل HLS إلى MP4 للتنزيل دون اتصال ───────────────────────
// هذا المسار مخصص للمصادر التي تحتاج ملفاً حقيقياً قابلاً للتشغيل دون اتصال.
// الترجمة لا تُحرق داخل الفيديو: تطبيق الموبايل ينزل VTT كملف جانبي محلي
// ويشغله مع الفيديو دون إنترنت.
function localApiUrl(raw: string, allowedPaths: string[], req: Request): string | null {
  if (!raw) return null;
  try {
    const parsed = new URL(raw, `http://${req.headers.host || "localhost"}`);
    if (!allowedPaths.some(path => parsed.pathname === path)) return null;
    const appDomain = process.env.APP_DOMAIN || "";
    const publicHost = (() => {
      try { return new URL(NOVA_PUBLIC_URL).hostname; } catch { return ""; }
    })();
    const requestHost = (req.hostname || "").split(":")[0];
    const allowedHosts = new Set(["localhost", "127.0.0.1", "::1", appDomain, publicHost, requestHost].filter(Boolean));
    if (!allowedHosts.has(parsed.hostname)) return null;
    const port = process.env.PORT || "5000";
    return `http://127.0.0.1:${port}${parsed.pathname}${parsed.search}`;
  } catch {
    return null;
  }
}

function trustedKawaiiMediaUrl(raw: string): string | null {
  if (!raw) return null;
  try {
    const parsed = new URL(raw);
    return isTrustedKawaiiCdnUrl(parsed.toString()) ? parsed.toString() : null;
  } catch {
    return null;
  }
}

function kawaiiMediaIsHls(url: string): boolean {
  return /\.m3u8(?:[?#]|$)/i.test(url)
    || /\/(?:hls|playlist)(?:\/|$)/i.test(url)
    || /\/api\/anime\/hls-proxy(?:[/?#]|$)/i.test(url);
}

function kawaiiReferrer(url: string): string {
  try {
    const host = new URL(url).hostname.toLowerCase();
    return host.endsWith(".mewstream.buzz")
      ? "https://megaplay.buzz/"
      : KAWAII_BASE + "/";
  } catch {
    return KAWAII_BASE + "/";
  }
}

function proxyTargetFromLocalUrl(sourceUrl: string): { url: string; ref: string; isHls: boolean } | null {
  try {
    const parsed = new URL(sourceUrl);
    const rawTarget = parsed.searchParams.get("url") || "";
    const rawRef = parsed.searchParams.get("ref") || "";
    const url = isEncrypted(rawTarget) ? decryptParam(rawTarget) : rawTarget;
    const ref = isEncrypted(rawRef) ? decryptParam(rawRef) : rawRef;
    if (!isTrustedKawaiiMediaUrl(url)) return null;
    return {
      url,
      ref,
      isHls: parsed.pathname === "/api/anime/hls-proxy",
    };
  } catch {
    return null;
  }
}

async function streamKawaiiMp4(
  sourceUrl: string,
  req: Request,
  res: Response,
): Promise<boolean> {
  const target = proxyTargetFromLocalUrl(sourceUrl);
  res.setHeader("Content-Disposition", `attachment; filename="nova-episode.mp4"`);
  if (target && !target.isHls) {
    await serveMediaVPS(target.url, target.ref, req, res);
    return res.headersSent;
  }

  // Some valid Kawaii URLs are rejected by the rotating CDN allow-list even
  // though the local video proxy can fetch them. Reuse that already-verified
  // route instead of falling back to a slow ffmpeg conversion of an MP4.
  try {
    const parsed = new URL(sourceUrl);
    if (parsed.pathname !== "/api/anime/video-proxy") return false;
    const controller = new AbortController();
    const abort = () => controller.abort();
    req.once("close", abort);
    try {
      const headers: Record<string, string> = {};
      if (req.headers.range) headers.Range = String(req.headers.range);
      if (req.headers["if-range"]) headers["If-Range"] = String(req.headers["if-range"]);
      const upstream = await fetch(sourceUrl, { headers, signal: controller.signal });
      for (const name of ["content-type", "content-length", "content-range", "accept-ranges"]) {
        const value = upstream.headers.get(name);
        if (value) res.setHeader(name, value);
      }
      res.status(upstream.status);
      if (upstream.body) {
        const { Readable } = await import("stream");
        (Readable.fromWeb as Function)(upstream.body).pipe(res);
      } else {
        res.end();
      }
      return true;
    } finally {
      req.removeListener("close", abort);
    }
  } catch {
    if (!res.headersSent) return false;
    return true;
  }
}

/* A local video-proxy URL is already a resumable MP4 stream. Keep this path
   provider-agnostic: AK/AN/MP also need their proxy response headers and
   Range requests preserved, but the old helper only handled Kawaii's raw CDN
   allow-list. */
async function streamLocalVideoProxy(
  sourceUrl: string,
  req: Request,
  res: Response,
): Promise<boolean> {
  const controller = new AbortController();
  const abort = () => controller.abort();
  req.once("close", abort);
  try {
    const headers: Record<string, string> = {
      Accept: "video/mp4,video/*;q=0.9,*/*;q=0.1",
    };
    if (req.headers.range) headers.Range = String(req.headers.range);
    if (req.headers["if-range"]) headers["If-Range"] = String(req.headers["if-range"]);
    const upstream = await fetch(sourceUrl, { headers, signal: controller.signal });
    for (const name of ["content-type", "content-length", "content-range", "accept-ranges", "etag"]) {
      const value = upstream.headers.get(name);
      if (value) res.setHeader(name, value);
    }
    res.setHeader("Content-Disposition", `attachment; filename="nova-episode.mp4"`);
    res.status(upstream.status);
    if (upstream.body) {
      const { Readable } = await import("stream");
      (Readable.fromWeb as Function)(upstream.body).pipe(res);
    } else {
      res.end();
    }
    return true;
  } catch {
    return false;
  } finally {
    req.removeListener("close", abort);
  }
}

function cuesToVtt(body: string): string {
  try {
    const payload = JSON.parse(body) as { cues?: Array<{ timing?: string; text?: string }> };
    if (Array.isArray(payload.cues)) {
      return [
        "WEBVTT",
        "",
        ...payload.cues.flatMap((cue, index) => [
          String(index + 1),
          cue.timing || "00:00:00.000 --> 00:00:01.000",
          cue.text || "",
          "",
        ]),
      ].join("\n");
    }
  } catch {
    // Direct VTT/SRT responses are handled unchanged below.
  }
  return body;
}

router.get("/anime/download-mp4", async (req, res) => {
  const site = String(req.query.site || "").trim().toLowerCase();
  /* Download and playback providers are intentionally separate. Keep this
     allowlist server-side as the final guard: clients and old cached picker
     rows must not be able to turn a playback-only source into a download. */
  const DOWNLOAD_SOURCE_SITES = new Set([
    "animewitcher", // AW
    "sanime",       // SA
    "anslayer",     // AS
    "animeify",     // AF — direct MediaFire/FileMoon sources are downloadable
    "anifox",       // FX
  ]);
  if (!site || !DOWNLOAD_SOURCE_SITES.has(site)) {
    res.status(403).send("downloads are available only from AW, SA, AS, AF and FX");
    return;
  }

  const requestedUrl = String(req.query.url || "");
  let sourceUrl = localApiUrl(
    requestedUrl,
    ["/api/anime/hls-proxy", "/api/anime/video-proxy"],
    req,
  );
  const rawKawaiiUrl = site === "kawaii" && !sourceUrl
    ? trustedKawaiiMediaUrl(requestedUrl)
    : null;
  if (!sourceUrl && !rawKawaiiUrl) {
    res.status(400).send("invalid proxied media url");
    return;
  }

  /* A raw signed KW URL is valid input for this endpoint. HLS must go through
     the local proxy so ffmpeg receives the provider Referer on the manifest
     and every segment; MP4 can be streamed directly when no sidecar is being
     requested. */
  if (!sourceUrl && rawKawaiiUrl) {
    const ref = kawaiiReferrer(rawKawaiiUrl);
    const path = kawaiiMediaIsHls(rawKawaiiUrl)
      ? "/api/anime/hls-proxy"
      : "/api/anime/video-proxy";
    const port = process.env.PORT || "5000";
    sourceUrl = `http://127.0.0.1:${port}${path}?url=${encodeURIComponent(rawKawaiiUrl)}&ref=${encodeURIComponent(ref)}`;
  }

  const tempRoot = `/tmp/nova-download-${process.pid}-${Date.now()}-${Math.random().toString(36).slice(2, 8)}`;
  const outputPath = `${tempRoot}/episode.mp4`;
  mkdirSync(tempRoot, { recursive: true, mode: 0o700 });

  const cleanup = () => {
    try { rmSync(tempRoot, { recursive: true, force: true }); } catch {}
  };
  res.on("close", cleanup);

  try {
    // A local video-proxy URL already represents a signed MP4 stream. Stream
    // it through the same VPS proxy used by the player instead of invoking
    // ffmpeg. The old condition handled only Kawaii, so AN/AK/MP MP4 sources
    // were incorrectly converted as if they were HLS and DownloadResumable
    // stayed at 0% until the full conversion finished.
    //
    // This is also critical for retries: a Range request must not trigger a
    // second full conversion before the first byte is sent. HLS URLs still
    // fall through to ffmpeg below.
    if (sourceUrl && !kawaiiMediaIsHls(sourceUrl)) {
      try {
        const sourcePath = new URL(sourceUrl).pathname;
        if (sourcePath === "/api/anime/video-proxy" && await streamLocalVideoProxy(sourceUrl, req, res)) {
          return;
        }
      } catch {
        // Fall through to the conversion path when the local URL is invalid.
      }
    }

    // Raw Kawaii MP4 URLs are also signed media files. Keep this direct path
    // for legacy/cache rows that did not pass through localApiUrl().
    if (site === "kawaii" && rawKawaiiUrl && !kawaiiMediaIsHls(rawKawaiiUrl)
        ) {
        res.setHeader("Content-Disposition", `attachment; filename="nova-episode.mp4"`);
        // Mewstream rejects the Kawaii page Referer and only accepts
        // Megaplay. Keep this identical to the playback proxy's routing.
        await serveMediaVPS(rawKawaiiUrl, kawaiiReferrer(rawKawaiiUrl), req, res);
        return;
    }

    if (!sourceUrl) {
      res.status(400).send("invalid media url");
      return;
    }

    const args = [
      "-hide_banner", "-loglevel", "error", "-y",
      /* HLS manifests coming from the VPS proxy can contain absolute segment
         URLs and may take a while to answer on a cold CDN connection. These
         limits apply to the ffmpeg input only; the HTTP response remains
         resumable through the Range handling below. */
      "-rw_timeout", "120000000",
      "-protocol_whitelist", "file,http,https,tcp,tls,crypto",
      "-allowed_extensions", "ALL",
      "-i", sourceUrl,
      "-map", "0:v:0",
      "-map", "0:a:0?",
    ];
    args.push(
      "-c:v", "libx264",
      "-preset", "veryfast",
      "-crf", "23",
      "-pix_fmt", "yuv420p",
      "-c:a", "aac",
      "-b:a", "128k",
      "-movflags", "+faststart",
      outputPath,
    );

    await new Promise<void>((resolve, reject) => {
      const child = spawn("/usr/bin/ffmpeg", args, { stdio: ["ignore", "ignore", "pipe"] });
      let stderr = "";
      child.stderr.on("data", (chunk: Buffer) => {
        stderr = (stderr + chunk.toString()).slice(-4000);
      });
      child.once("error", reject);
      child.once("close", code => {
        if (code === 0) resolve();
        else reject(new Error(`ffmpeg exited ${code}: ${stderr}`));
      });
      req.once("close", () => {
        if (!res.headersSent) child.kill("SIGTERM");
      });
    });

    const size = statSync(outputPath).size;
    if (size <= 0) throw new Error("empty converted video");
    /* DownloadResumable sends a byte Range when it retries an interrupted
       transfer. The conversion is repeated server-side, then only the
       requested slice is returned so the native downloader can append it
       safely instead of starting with a second full MP4. */
    const range = String(req.headers.range || "").trim();
    let streamStart = 0;
    let streamEnd = size - 1;
    let statusCode = 200;
    if (range) {
      const match = /^bytes=(\d*)-(\d*)$/i.exec(range);
      if (!match || (!match[1] && !match[2])) {
        res.status(416).setHeader("Content-Range", `bytes */${size}`).end();
        return;
      }
      if (match[1]) {
        streamStart = Number(match[1]);
        streamEnd = match[2] ? Math.min(Number(match[2]), size - 1) : size - 1;
      } else {
        const suffixLength = Number(match[2]);
        streamStart = Math.max(0, size - suffixLength);
        streamEnd = size - 1;
      }
      if (!Number.isSafeInteger(streamStart) || !Number.isSafeInteger(streamEnd)
          || streamStart < 0 || streamStart >= size || streamStart > streamEnd) {
        res.status(416).setHeader("Content-Range", `bytes */${size}`).end();
        return;
      }
      statusCode = 206;
    }
    res.status(statusCode);
    res.setHeader("Content-Type", "video/mp4");
    res.setHeader("Accept-Ranges", "bytes");
    res.setHeader("Content-Length", String(streamEnd - streamStart + 1));
    if (statusCode === 206) {
      res.setHeader("Content-Range", `bytes ${streamStart}-${streamEnd}/${size}`);
    }
    res.setHeader("Content-Disposition", `attachment; filename="nova-episode.mp4"`);
    createReadStream(outputPath, { start: streamStart, end: streamEnd }).pipe(res);
  } catch (error: any) {
    if (!res.headersSent) res.status(502).send(`video conversion failed: ${error?.message || "unknown error"}`);
  }
});

// ── seg-proxy: VPS يجلب الـ segment مع Referer الصحيح ───────────────────────
// بعض CDNs (anineko, cdn.1shows.app وغيرها) تحزم الـ TS segments داخل PNG
// نكشف PNG-wrapping تلقائياً من أول 4 بايت ونجد أول MPEG-TS sync byte (0x47)
// لا نعتمد على قائمة CDNs ثابتة — أي CDN يُرجع image/* أو application/octet-stream
// وأول 4 بايته هي PNG magic سيُعالَج تلقائياً.

/** يكشف PNG-wrapped MPEG-TS ويُرجع المخزن المؤقت بعد إزالة غلاف PNG */
function stripPngWrapper(raw: ArrayBuffer): Buffer | null {
  const buf = Buffer.from(raw);
  // PNG magic: 89 50 4E 47 0D 0A 1A 0A
  if (buf.length < 8 || buf.readUInt32BE(0) !== 0x89504E47) return null;
  return findTsPayload(buf);
}

/** Some Reanime fragments are disguised as WebP (RIFF/WEBP) rather than PNG.
 * The actual MPEG-TS starts later in the image body; locate it by the
 * 188-byte packet cadence and return a clean media buffer. */
function findTsPayload(buf: Buffer): Buffer | null {
  const max = Math.min(buf.length - 376, 1024 * 1024);
  for (let i = 0; i <= max; i++) {
    if (buf[i] === 0x47 && buf[i + 188] === 0x47 && buf[i + 376] === 0x47) {
      return buf.slice(i);
    }
  }
  return null;
}

function stripImageMediaWrapper(raw: ArrayBuffer): Buffer | null {
  const buf = Buffer.from(raw);
  if (buf.length < 377) return null;
  return findTsPayload(buf);
}

router.get("/anime/seg-proxy", async (req, res) => {
  const rawUrl = (req.query.url as string || "").trim();
  if (!rawUrl) { res.status(400).send("url required"); return; }
  let url: string;
  try { url = decodeURIComponent(rawUrl); } catch { url = rawUrl; }
  if (isEncrypted(url)) url = decryptParam(url);
  if (!isSafeExternalUrl(url)) { res.status(400).send("invalid external url"); return; }

  let ref = (req.query.ref as string || "").trim();
  try { if (ref) ref = decodeURIComponent(ref); } catch {}
  if (ref && isEncrypted(ref)) ref = decryptParam(ref);

  res.setHeader("Access-Control-Allow-Origin", "*");
  res.setHeader("Access-Control-Allow-Headers", "Range, Content-Type");
  res.setHeader("Access-Control-Expose-Headers", "Accept-Ranges, Content-Length, Content-Range, Content-Type");

  const hdrs: Record<string, string> = { ...BASE_HDRS, Accept: "*/*" };
  if (ref) { hdrs.Referer = ref; try { hdrs.Origin = new URL(ref).origin; } catch {} }
  if (req.headers.range) hdrs.Range = req.headers.range;
  if (req.headers["if-range"]) hdrs["If-Range"] = String(req.headers["if-range"]);

  /** مساعد داخلي: يخدم segment من response جاهز (مع دعم PNG wrapper + تصحيح Content-Type) */
  async function serveSegResponse(r: Response): Promise<boolean> {
    const ct = (r.headers.get("content-type") || "").toLowerCase();
    const mightBePng =
      ct.startsWith("image/") ||
      ct === "application/octet-stream" ||
      ct === "binary/octet-stream";

    if (mightBePng) {
      const raw = await r.arrayBuffer();
      const stripped = stripPngWrapper(raw) || (ct.startsWith("image/") ? stripImageMediaWrapper(raw) : null);
      if (stripped) {
        res.setHeader("Content-Type", "video/MP2T");
        res.setHeader("Content-Length", String(stripped.length));
        res.setHeader("Accept-Ranges", "bytes");
        res.setHeader("Cache-Control", "public, max-age=60");
        res.status(200).end(stripped);
        return true;
      }
      // Reanime CDNs can return an image placeholder with HTTP 200 when
      // fetched from the VPS IP. Never pass it to hls.js as a segment;
      // that creates the endless spinner/retry loop.
      if (ct.startsWith("image/")) return false;
      const cl = r.headers.get("content-length");
      if (cl) res.setHeader("Content-Length", cl);
      res.setHeader("Accept-Ranges", r.headers.get("accept-ranges") || "bytes");
      res.setHeader("Cache-Control", "public, max-age=60");
      // AniNeko's newer CDNs sometimes return a real MPEG-TS/fMP4 segment
      // with a generic image/octet-stream content type. ExoPlayer trusts this
      // header and then rejects the otherwise valid segment. Classify the
      // bytes before passing the response through.
      const magic = mediaMagic(Buffer.from(raw));
      const correctedCt = magic === "ts"
        ? "video/MP2T"
        : magic === "mp4"
          ? "video/mp4"
          : (ct === "application/octet-stream" || ct === "binary/octet-stream") && /\.mp4(\?|$)/i.test(url)
            ? "video/mp4"
            : ct;
      res.setHeader("Content-Type", correctedCt);
      res.status(200).end(Buffer.from(raw));
      return true;
    }

    // ── كشف Content-Type خاطئ من CDN (text/html مع بيانات TS حقيقية) ──────────
    // بعض CDNs (مثل startupmomentumengine.site) تُرجع video/TS بـ text/html
    // ExoPlayer يرفض text/html → شاشة سوداء حتى لو البيانات صحيحة
    if (ct.startsWith("text/html")) {
      const raw = await r.arrayBuffer();
      const buf  = Buffer.from(raw);
      // MPEG TS sync byte = 0x47, packet size = 188 bytes
      if (buf.length > 1000 && mediaMagic(buf) === "ts") {
        // بيانات TS حقيقية بـ Content-Type خاطئ → صحّح وأرسل
        res.setHeader("Content-Type", "video/MP2T");
        res.setHeader("Content-Length", String(buf.length));
        res.setHeader("Accept-Ranges", "bytes");
        res.setHeader("Cache-Control", "public, max-age=60");
        res.status(200).end(buf);
        return true;
      }
      // محتوى HTML فعلي (صفحة خطأ/حجب CDN) → أرجع false للـ fallback
      return false;
    }

    // Content-Type طبيعي — بثّ نفس response الذي جُلب للتو.
    // إعادة استدعاء serveMediaVPS هنا كانت تجلب كل segment مرتين، ما يسبب
    // تأخيراً/توقفاً متقطعاً عندما يقترب المشغل من نهاية الـ buffer.
    res.setHeader("Content-Type", r.headers.get("content-type") || "video/MP2T");
    const cl = r.headers.get("content-length");
    if (cl) res.setHeader("Content-Length", cl);
    res.setHeader("Accept-Ranges", r.headers.get("accept-ranges") || "bytes");
    res.setHeader("Cache-Control", "public, max-age=60");
    if (r.status === 206) {
      const cr = r.headers.get("content-range");
      if (cr) res.setHeader("Content-Range", cr);
      res.status(206);
    } else {
      res.status(200);
    }
    if (r.body) {
      const { Readable } = await import("stream");
      (Readable.fromWeb as Function)(r.body).pipe(res);
    } else {
      res.end();
    }
    return true;
  }

  // 307 Redirect → ExoPlayer/browser يجلب السيغمنت بـ IP الجهاز مباشرة (لا VPS IP)
  // بدلاً من 502 عند حجب CDN للـ VPS، نُعيد توجيه الطلب للـ CDN مباشرة.
  // ExoPlayer على Android والمتصفح يتبعان الـ redirect بـ IP الجهاز → CDN يسمح.
  async function segFallback(): Promise<void> {
    if (res.headersSent) return;
    // Keep Range/Referer semantics on fallback instead of redirecting a
    // byte-range request into a different request shape.
    res.setHeader("Cache-Control", "no-store");
    res.redirect(307, url);
  }

  const upstreamAbort = new AbortController();
  const connectTimeout = setTimeout(() => upstreamAbort.abort(), 12_000);
  const abortUpstream = () => upstreamAbort.abort();
  res.once("close", abortUpstream);
  try {
    // This timeout only covers connection/headers. Do not abort the body
    // after 20s: signed CDNs can deliver a healthy segment slowly.
    // Reanime/FlixCloud fragments need the same curl_cffi fingerprint and
    // cookies as the manifest. A plain VPS fetch returns a misleading 200
    // image placeholder, so use the dedicated binary proxy first.
    const flixResponse = isClientRoutedFlixMedia(url)
      ? await cfProxyStreamFetch(url, ref, req.headers.range ? String(req.headers.range) : undefined)
      : null;
    if (flixResponse?.ok) {
      const servedViaCf = await serveSegResponse(flixResponse);
      if (servedViaCf) return;
    }

    const r = await fetch(url, { headers: hdrs, signal: upstreamAbort.signal });
    clearTimeout(connectTimeout);

    if (!r.ok) {
      // 403/429/5xx → fallback chain (CDN blocks VPS or upstream error)
      if (r.status === 403 || r.status === 429 || r.status >= 500) { await segFallback(); return; }
      if (!res.headersSent) res.status(r.status).send("upstream error");
      return;
    }

    // serveSegResponse يُرجع false عند HTML فعلي (صفحة خطأ) → fallback
    const served = await serveSegResponse(r);
    if (!served) await segFallback();
  } catch {
    // network error / timeout → try fallback chain instead of immediate 502
    await segFallback();
  } finally {
    clearTimeout(connectTimeout);
    res.removeListener("close", abortUpstream);
  }
});

// ══════════════════════════════════════════════════════════════════
//  ANIMEWITCHER CATALOG — قائمة أنمي ويتشر المتاحة (مع AniList IDs)
// ══════════════════════════════════════════════════════════════════
const AW_CATALOG_CACHE: { ts: number; items: any[] } = { ts: 0, items: [] };
const AW_CATALOG_TTL  = 60 * 60_000; // 1 ساعة
let   awCatalogBuilding = false;

// يبني كتالوج AW من AllAnime GraphQL (dub mode) — HF Space Algolia متوقف 2026-07
async function buildAWCatalog(): Promise<void> {
  if (awCatalogBuilding) return;
  awCatalogBuilding = true;
  try {
    const seen = new Map<string, any>();
    const POPULAR_GQL = `query($type:VaildPopularTypeEnumType!,$size:Int!,$dateRange:Int,$page:Int,$allowAdult:Boolean,$allowUnknown:Boolean){queryPopular(type:$type,size:$size,dateRange:$dateRange,page:$page,allowAdult:$allowAdult,allowUnknown:$allowUnknown){recommendations{anyCard{_id name englishName thumbnail availableEpisodes}}}}`;
    // جلب 3 صفحات من popular dubs (كل صفحة 26 أنمي)
    for (let page = 1; page <= 3; page++) {
      try {
        const data = await aaPost(POPULAR_GQL, {
          type: "anime", size: 26, dateRange: 365, page, allowAdult: false, allowUnknown: false,
        }).catch(() => null);
        const recs: any[] = data?.queryPopular?.recommendations ?? [];
        for (const r of recs) {
          const c = r?.anyCard; if (!c?._id) continue;
          if (!seen.has(c._id)) {
            seen.set(c._id, { id: c._id, name: c.name, englishName: c.englishName || "", poster: c.thumbnail || "" });
          }
        }
      } catch { /* skip */ }
      await new Promise(res => setTimeout(res, 200));
    }
    if (seen.size > 0) {
      AW_CATALOG_CACHE.items = Array.from(seen.values());
      AW_CATALOG_CACHE.ts    = Date.now();
    }
  } finally { awCatalogBuilding = false; }
}

async function fetchAWCatalog(): Promise<any[]> {
  if (Date.now() - AW_CATALOG_CACHE.ts < AW_CATALOG_TTL && AW_CATALOG_CACHE.items.length) {
    return AW_CATALOG_CACHE.items;
  }
  // ابدأ البناء في الخلفية وأرجع ما هو متاح الآن
  buildAWCatalog().catch(() => {});
  return AW_CATALOG_CACHE.items;
}

/* ─── Multi-source subtitle search ──────────────────────────────────────────
 * Sources tried in priority order:
 *   1. jimaku.cc  — Japanese fan subtitles keyed by AniList ID (public API, no auth)
 *   2. animetosho — Subtitle search by AniList ID (public API)
 * Returns array of tracks with proxy-text URLs (CORS-safe).
 */
router.get("/anime/subtitles", async (req, res) => {
  const anilistId = parseInt(String(req.query.anilistId || "0"), 10);
  const ep        = parseInt(String(req.query.ep || "1"), 10);

  interface SubTrack { url: string; label: string; lang: string; source: string; }
  const tracks: SubTrack[] = [];

  // ── 1. jimaku.cc ────────────────────────────────────────────────────────
  if (anilistId) {
    try {
      const entriesRes = await fetch(
        `https://jimaku.cc/api/entries?anilist_id=${anilistId}`,
        { headers: { "User-Agent": "NovaApp/1.0", "Accept": "application/json" },
          signal: AbortSignal.timeout(6000) }
      );
      if (entriesRes.ok) {
        const entries: any[] = (await entriesRes.json().catch(() => []));
        for (const entry of entries.slice(0, 4)) {
          try {
            const filesRes = await fetch(
              `https://jimaku.cc/api/entries/${entry.id}/files?episode=${ep}`,
              { headers: { "User-Agent": "NovaApp/1.0", "Accept": "application/json" },
                signal: AbortSignal.timeout(4000) }
            );
            if (filesRes.ok) {
              const files: any[] = (await filesRes.json().catch(() => []));
              for (const file of files.slice(0, 6)) {
                const name = String(file.name || "");
                const url  = String(file.url || "");
                if (!url) continue;
                const ext  = name.split(".").pop()?.toLowerCase() || "";
                if (!["vtt","srt","ass","ssa"].includes(ext)) continue;
                tracks.push({
                  url    : `/api/anime/proxy-text?url=${encodeURIComponent(url)}`,
                  label  : `${ext.toUpperCase()} • ${entry.english_name || entry.japanese_name || "jimaku"} (Jimaku)`,
                  lang   : "ja",
                  source : "jimaku",
                });
              }
            }
          } catch {}
          if (tracks.length >= 4) break;
        }
      }
    } catch {}
  }

  // ── 2. Animetosho — subtitle search by AniList ID ───────────────────────
  if (anilistId && tracks.length === 0) {
    try {
      const atRes = await fetch(
        `https://animetosho.org/api?lang=2&anilist_id=${anilistId}&only_subtitles=1&page=1&per_page=5&format=json`,
        { headers: { "User-Agent": "NovaApp/1.0", "Accept": "application/json" },
          signal: AbortSignal.timeout(5000) }
      );
      if (atRes.ok) {
        const atData: any = (await atRes.json().catch(() => ({})));
        const items: any[] = Array.isArray(atData) ? atData : (atData?.entries || []);
        for (const item of items.slice(0, 3)) {
          for (const file of (item.files || []).slice(0, 3)) {
            const name = String(file.name || "");
            const url  = String(file.direct_url || file.url || "");
            if (!url) continue;
            const ext  = name.split(".").pop()?.toLowerCase() || "";
            if (!["vtt","srt","ass"].includes(ext)) continue;
            tracks.push({
              url    : `/api/anime/proxy-text?url=${encodeURIComponent(url)}`,
              label  : `${ext.toUpperCase()} • ${name.slice(0, 35)} (Animetosho)`,
              lang   : "en",
              source : "animetosho",
            });
            if (tracks.length >= 4) break;
          }
          if (tracks.length >= 4) break;
        }
      }
    } catch {}
  }

  res.json({ anilistId, ep, tracks });
});

// ════════════════════════════════════════════════════════════════════
//  whisper-transcribe  POST /api/anime/whisper-transcribe
//  Transcribes audio from a video URL via the local Whisper service
//  then translates non-Arabic cues to Arabic (reuses translateBatchFree).
// ════════════════════════════════════════════════════════════════════

const _whisperSubCache = new Map<string, { cues: any[]; lang: string; lang_ar: string; ts: number }>();
const WHISPER_CACHE_TTL = 7 * 24 * 60 * 60_000; // 7 days
const WHISPER_SVC_URL   = `http://localhost:${process.env.WHISPER_PORT || 9000}`;

router.post("/anime/whisper-transcribe", async (req, res) => {
  const { url, duration = 120 } = req.body as { url?: string; duration?: number };
  if (!url) { res.status(400).json({ error: "url required" }); return; }

  const cacheKey = `w:${url.slice(0, 200)}:${duration}`;
  const hit = _whisperSubCache.get(cacheKey);
  if (hit && Date.now() - hit.ts < WHISPER_CACHE_TTL) {
    res.json({ language: hit.lang, language_ar: hit.lang_ar, cues: hit.cues, cached: true });
    return;
  }

  try {
    const svcRes = await fetch(`${WHISPER_SVC_URL}/transcribe`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ url, duration }),
      signal: AbortSignal.timeout(200_000),
    });
    if (!svcRes.ok) {
      const err = await svcRes.json().catch(() => ({}));
      res.status(svcRes.status).json({ error: (err as any).error || "Whisper service error" });
      return;
    }
    const data = await svcRes.json() as {
      language: string; language_ar?: string;
      language_probability?: number; cues: Array<{ start: number; end: number; text: string }>;
    };

    let { language, language_ar, cues = [] } = data;

    /* Translate non-Arabic cues to Arabic using the existing translateBatchFree helper */
    if (language && language !== "ar" && cues.length > 0) {
      const texts      = cues.map(c => c.text);
      const translated = await translateBatchFree(texts, language, "ar");
      cues = cues.map((c, i) => ({ ...c, text: translated[i] || c.text }));
    }

    _whisperSubCache.set(cacheKey, {
      cues, lang: language, lang_ar: language_ar || language, ts: Date.now()
    });
    res.json({ language, language_ar: language_ar || language, cues });
  } catch (e: any) {
    const isDown = e?.cause?.code === "ECONNREFUSED" || e?.message?.includes("fetch failed");
    res.status(isDown ? 503 : 502).json({
      error: isDown
        ? "خدمة الترجمة الصوتية غير متاحة — تأكد من تشغيل Whisper Service"
        : e.message || "Whisper error",
    });
  }
});

router.get("/anime/whisper-detect", async (req, res) => {
  const url = String(req.query.url || "");
  if (!url) { res.status(400).json({ error: "url required" }); return; }
  try {
    const r = await fetch(`${WHISPER_SVC_URL}/detect`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ url }),
      signal: AbortSignal.timeout(70_000),
    });
    res.json(await r.json());
  } catch (e: any) {
    res.status(502).json({ error: e.message });
  }
});

router.get("/anime/animewitcher-catalog", async (req, res) => {
  try {
    const typeFilter = String(req.query.type || "all");
    const q          = String(req.query.q || "").toLowerCase().trim();
    const page       = Math.max(1, parseInt(String(req.query.page || "1"), 10));
    const limit      = 60;

    let items = await fetchAWCatalog();

    if (typeFilter !== "all") {
      items = items.filter(x => x.type === typeFilter);
    }
    if (q) {
      items = items.filter(x => x.name.toLowerCase().includes(q));
    }

    const total  = items.length;
    const start  = (page - 1) * limit;
    const paged  = items.slice(start, start + limit);

    res.json({ total, page, limit, has_more: start + limit < total, items: paged });
  } catch (e: any) {
    res.status(500).json({ error: e?.message });
  }
});

// ════════════════════════════════════════════════════════════════════════════
// Metadata Cache + Multi-Source Proxy (AniList → Jikan fallback + PostgreSQL cache)
// ════════════════════════════════════════════════════════════════════════════

/** حسب نوع الاستعلام نحدد مدة الـ cache (الحد الأقصى للصلاحية) */
function metaTtl(body: any): number {
  const q    = JSON.stringify(body?.query ?? "");
  const rawQ: string = body?.query ?? "";
  if (q.includes("airingSchedules"))  return 1800;      // 30 دقيقة — الجداول الزمنية
  if (body?.variables?.search)         return 3600;      // 1 ساعة — بحث (نتائج تتغير)
  if (body?.variables?.id)             return 7776000;   // 90 يوم — metadata ثابتة (بوسترات، وصف، تقييم)
  if (q.includes("TRENDING_DESC"))     return 86400;     // 24 ساعة — trending
  if (q.includes("POPULARITY_DESC"))   return 2592000;   // 30 يوم — الأكثر شعبية
  if (q.includes("SCORE_DESC"))        return 2592000;   // 30 يوم — الأعلى تقييماً
  if (rawQ.includes("format: MOVIE") || rawQ.includes("format:MOVIE")) return 2592000; // 30 يوم — أفلام
  if (rawQ.match(/season:\s*[A-Z]/) || body?.variables?.season) return 2592000; // 30 يوم — موسمي
  return 2592000; // 30 يوم افتراضي
}

/** عتبة إعادة التحديث الخلفي (30 يوم) — يُخدَّم الكاش فوراً لكن يُحدَّث في الخلفية */
const META_REFRESH_AGE = 2592000; // 30 يوم بالثواني

function metaHash(body: any): string {
  return createHash("sha256").update(JSON.stringify(body)).digest("hex").slice(0, 40);
}

/** نتيجة الكاش مع عمرها — stale=true يعني تجاوزت 30 يوم ويجب تحديثها خلفياً */
interface MetaCacheResult { data: any; stale: boolean; source?: string; }

async function metaCacheGet(key: string): Promise<MetaCacheResult | null> {
  try {
    const rows = await sbSelect<{ data: any; created_at: string; ttl_seconds: number; source?: string }>(
      "anime_meta_cache",
      { cache_key: `eq.${key}` },
      { limit: 1, select: "data,created_at,ttl_seconds,source" }
    );
    if (!rows.length) return null;
    const { data, created_at, ttl_seconds, source } = rows[0];
    const ageSeconds = (Date.now() - new Date(created_at).getTime()) / 1000;
    if (ageSeconds > ttl_seconds) return null;              // منتهي الصلاحية تماماً
    const stale = ageSeconds > META_REFRESH_AGE;            // تجاوز 30 يوم → يحتاج تحديث خلفي
    return { data, stale, source };
  } catch { return null; }
}

async function metaCacheSet(key: string, data: any, ttl: number, source: string): Promise<void> {
  try {
    await sbUpsert(
      "anime_meta_cache",
      { cache_key: key, data, ttl_seconds: ttl, source, created_at: new Date().toISOString() },
      "cache_key"
    );
  } catch {}
}

// ── Poster Cache — كاش البوستر والقصة بـ anilist_id مباشرة ───────────────────

/** يجلب بوستر + قصة من كاش anime_poster_cache */
async function posterCacheGet(anilistId: number): Promise<{ coverUrl: string | null; synopsis: string | null } | null> {
  try {
    const rows = await sbSelect<{ cover_url: string; synopsis: string }>(
      "anime_poster_cache",
      { anilist_id: `eq.${anilistId}` },
      { limit: 1, select: "cover_url,synopsis" }
    );
    if (!rows.length) return null;
    return { coverUrl: rows[0].cover_url || null, synopsis: rows[0].synopsis || null };
  } catch { return null; }
}

/** يحفظ/يحدّث بوستر + قصة في anime_poster_cache */
async function posterCacheSet(anilistId: number, coverUrl: string | null, synopsis: string | null): Promise<void> {
  if (!anilistId) return;
  try {
    await sbUpsert(
      "anime_poster_cache",
      { anilist_id: anilistId, cover_url: coverUrl || null, synopsis: synopsis || null, updated_at: new Date().toISOString() },
      "anilist_id"
    );
  } catch {}
}

/** يستخرج بيانات البوستر من رد AniList GraphQL ويخزّنها */
function extractAndCachePoster(anilistResponse: any): void {
  try {
    const media = anilistResponse?.data?.Media;
    if (!media?.id) return;
    const coverUrl =
      media.coverImage?.extraLarge ||
      media.coverImage?.large ||
      (media.id ? `https://img.anili.st/media/${media.id}` : null);
    const synopsis = media.description || null;
    posterCacheSet(media.id, coverUrl, synopsis).catch(() => {});
  } catch {}
}

/**
 * فلتر الأنمي الصيني (Donghua) — العناوين اليابانية الحقيقية دائماً تحتوي
 * على حروف hiragana أو katakana. إذا كان العنوان الياباني موجوداً لكن
 * يحتوي فقط على كانجي وحروف لاتينية (بدون كانا) فغالباً هو دونغوا صيني.
 */
function isLikelyJapaneseAnime(a: any): boolean {
  const jpTitle = a.title_japanese ?? "";
  if (!jpTitle) return true; // لا معلومات → نبقيه
  // الحروف اليابانية: hiragana (3040-309F) أو katakana (30A0-30FF) أو katakana ممتد (31F0-31FF)
  if (/[\u3040-\u30FF\u31F0-\u31FF]/.test(jpTitle)) return true;
  // يحتوي فقط على كانجي/لاتيني — غالباً دونغوا صيني → نُزيله
  return false;
}

/** تحويل بيانات Jikan إلى تنسيق AniList */
function jikanToAniList(a: any): any {
  const year = a.year || a.aired?.from?.slice?.(0, 4) || null;
  return {
    id: a.mal_id,
    idMal: a.mal_id,
    idSource: "mal",
    title: { romaji: a.title, english: a.title_english, native: a.title_japanese },
    coverImage: {
      large: a.images?.jpg?.large_image_url || a.images?.jpg?.image_url || null,
      extraLarge: a.images?.jpg?.large_image_url || null,
      color: null,
    },
    bannerImage: null,
    description: a.synopsis || null,
    episodes: a.episodes || null,
    startDate: { year: year ? Number(year) : null },
    status: a.airing ? "RELEASING" : a.status === "Finished Airing" ? "FINISHED" : "NOT_YET_RELEASED",
    averageScore: a.score ? Math.round(a.score * 10) : null,
    popularity: a.popularity || null,
    genres: (a.genres || []).map((g: any) => g.name),
    season: a.season ? String(a.season).toUpperCase() : null,
    seasonYear: a.year || null,
    format: a.type === "TV" ? "TV" : a.type === "Movie" ? "MOVIE" : a.type === "OVA" ? "OVA" : (a.type || "TV"),
    countryOfOrigin: "JP",
    isAdult: Boolean(a.rating?.startsWith("Rx")),
    nextAiringEpisode: null,
    bannerImageInitialized: false,
  };
}

const JIKAN_DAYS = ["sunday", "monday", "tuesday", "wednesday", "thursday", "friday", "saturday"];

/** يحوّل عنصر جدول Jikan إلى عنصر airingSchedule متوافق مع AniList، مع حساب أقرب موعد بث ضمن الأسبوع */
function jikanScheduleToAniList(a: any, dayIdx: number, weekStart: number, weekEnd: number): any | null {
  const bday = a.broadcast?.day ? JIKAN_DAYS.indexOf(String(a.broadcast.day).toLowerCase()) : dayIdx;
  const resolvedDay = bday >= 0 ? bday : dayIdx;
  const [bh, bm] = (a.broadcast?.time || "00:00").split(":").map((x: string) => parseInt(x) || 0);

  // نبني أقرب تاريخ ضمن نافذة [weekStart, weekEnd) يقع في نفس يوم الأسبوع، بتوقيت JST (UTC+9)
  const startDate = new Date(weekStart * 1000);
  for (let i = 0; i < 8; i++) {
    const cand = new Date(startDate.getTime() + i * 86400000);
    if (cand.getUTCDay() === resolvedDay) {
      const airingAt = Math.floor(
        Date.UTC(cand.getUTCFullYear(), cand.getUTCMonth(), cand.getUTCDate(), bh - 9, bm) / 1000
      );
      if (airingAt >= weekStart && airingAt < weekEnd) {
        const episode = a.episodes ? Math.max(1, Math.min(a.episodes, Math.ceil((Date.now() / 1000 - airingAt) / (7 * 86400)) + 1)) : 1;
        return { airingAt, episode, media: jikanToAniList(a) };
      }
    }
  }
  return null;
}

const _scheduleDayCache = new Map<string, { ts: number; data: any[] }>();

/** Jikan schedules fallback — لجدول البث الأسبوعي عندما يكون AniList معطّلاً */
async function jikanScheduleFallback(vars: any): Promise<any | null> {
  const weekStart = vars?.weekStart ?? Math.floor(Date.now() / 1000);
  const weekEnd    = vars?.weekEnd ?? (weekStart + 7 * 86400);

  // كاش داخلي بالذاكرة لكل يوم على حدة — MyAnimeList غالباً متقطّع (504)،
  // فنفصل نجاح/فشل كل يوم عن الآخر بدل تلويث الأسبوع كامل بفشل يوم واحد.
  const now = Date.now();
  const FRESH_TTL = 3 * 60 * 60_000;  // 3 ساعات — نُعيد الجلب لتحديث البيانات
  const STALE_TTL = 24 * 60 * 60_000; // 24 ساعة — نُستخدم كـ fallback عند تعطّل Jikan بالكامل

  const fetchDay = async (day: string): Promise<any[]> => {
    const cached = _scheduleDayCache.get(day);
    if (cached && now - cached.ts < FRESH_TTL) return cached.data;

    for (let attempt = 0; attempt < 3; attempt++) {
      try {
        const r = await fetch(`https://api.jikan.moe/v4/schedules?filter=${day}&sfw=true&limit=25`, {
          headers: { "Accept": "application/json", "User-Agent": "AnimeNova/1.0" },
          signal: AbortSignal.timeout(9000),
        });
        if (r.ok) {
          const d = await r.json();
          const data = d.data || [];
          if (data.length) _scheduleDayCache.set(day, { ts: now, data });
          return data;
        }
      } catch {}
      if (attempt < 2) await new Promise(r => setTimeout(r, 500 * (attempt + 1)));
    }
    // فشلت كل المحاولات — استخدم آخر نسخة ناجحة محفوظة حتى لو قديمة نسبياً
    if (cached && now - cached.ts < STALE_TTL) return cached.data;
    return [];
  };

  try {
    const results = await Promise.allSettled(JIKAN_DAYS.map(fetchDay));
    const airingSchedules: any[] = [];
    results.forEach((res, dayIdx) => {
      if (res.status !== "fulfilled") return;
      for (const a of res.value.filter(isLikelyJapaneseAnime)) {
        const sched = jikanScheduleToAniList(a, dayIdx, weekStart, weekEnd);
        if (sched) airingSchedules.push(sched);
      }
    });
    if (!airingSchedules.length) return null; // كل المصادر فشلت — دع الاستدعاء التالي يُكمل
    airingSchedules.sort((x, y) => x.airingAt - y.airingAt);
    return {
      data: {
        Page: {
          pageInfo: { hasNextPage: false },
          airingSchedules,
        },
      },
    };
  } catch { return null; }
}

/** Jikan v4 fallback — يُرجع بنية AniList متوافقة */
async function jikanFallback(body: any): Promise<any | null> {
  try {
    const q    = JSON.stringify(body?.query ?? "");
    const vars = body?.variables ?? {};

    // ── Media(id) — تفاصيل أنمي واحد ──────────────────────────────────────
    if (vars.id && (q.includes("Media(") || q.includes("Media "))) {
      // استراتيجية 1: AniList ID → ARM lookup → MAL ID → Jikan
      try {
        const armR = await fetch(
          `https://arm.haglund.dev/api/v2/ids?source=anilist&id=${vars.id}`,
          { headers: { "Accept": "application/json" }, signal: AbortSignal.timeout(5000) }
        );
        if (armR.ok) {
          const armD = await armR.json();
          const malId = armD?.myanimelist;
          if (malId) {
            const jR = await fetch(`https://api.jikan.moe/v4/anime/${malId}`, {
              headers: { "Accept": "application/json", "User-Agent": "AnimeNova/1.0" },
              signal: AbortSignal.timeout(8000),
            });
            if (jR.ok) {
              const jD = await jR.json();
              if (jD.data) return { data: { Media: jikanToAniList(jD.data) } };
            }
          }
        }
      } catch {}
      // استراتيجية 2: معاملة الـ ID مباشرة كـ MAL ID (حالة fallback-origin IDs)
      // يحدث عندما تأتي القوائم من Jikan فتصبح IDs هي MAL IDs
      try {
        const jR2 = await fetch(`https://api.jikan.moe/v4/anime/${vars.id}`, {
          headers: { "Accept": "application/json", "User-Agent": "AnimeNova/1.0" },
          signal: AbortSignal.timeout(8000),
        });
        if (jR2.ok) {
          const jD2 = await jR2.json();
          if (jD2.data) return { data: { Media: jikanToAniList(jD2.data) } };
        }
      } catch {}
      return null;
    }

    if (q.includes("airingSchedules")) return await jikanScheduleFallback(vars);

    // ── استخراج params المدمجة في query string (بدون variables) ──
    const rawQ: string = body?.query ?? "";
    const seasonInlineM = rawQ.match(/season:\s*([A-Z]+)/);
    const yearInlineM   = rawQ.match(/seasonYear:\s*(\d{4})/);
    const inlineSeason  = seasonInlineM?.[1]?.toLowerCase(); // "spring","fall","summer","winter"
    const inlineYear    = yearInlineM ? parseInt(yearInlineM[1]) : null;
    // يدعم كلاً من: genre_in: ["Isekai"] و genre: "Isekai" و genre_in: ["X","Y"]
    const inlineGenreM  = rawQ.match(/genre_in:\s*\["([^"]+)"/) || rawQ.match(/genre:\s*"([^"]+)"/);
    const inlineGenre   = inlineGenreM?.[1]; // e.g. "Isekai"
    const isMovieQ      = rawQ.includes("format: MOVIE") || rawQ.includes("format:MOVIE");
    const seasonMap: Record<string, string> = { spring: "spring", summer: "summer", fall: "fall", autumn: "fall", winter: "winter" };
    const jikanSeason   = inlineSeason ? (seasonMap[inlineSeason] ?? null) : null;
    const jikanGenreMap: Record<string, number> = {
      Isekai: 62, Action: 1, Comedy: 4, Romance: 22, Fantasy: 10,
      Horror: 14, Mystery: 7, "Sci-Fi": 24, Sports: 30, Mecha: 18,
      Drama: 8, Psychological: 40, Supernatural: 37, Thriller: 41,
    };

    let url = "";
    if (vars.search) {
      url = `https://api.jikan.moe/v4/anime?q=${encodeURIComponent(vars.search)}&sfw=true&limit=20`;
    } else if (vars.season && vars.seasonYear) {
      url = `https://api.jikan.moe/v4/seasons/${vars.seasonYear}/${String(vars.season).toLowerCase()}?sfw=true&limit=20`;
    } else if (jikanSeason && inlineYear) {
      // استعلام موسمي مضمّن في query string — مثل SPRING 2026 / FALL 2025
      url = `https://api.jikan.moe/v4/seasons/${inlineYear}/${jikanSeason}?sfw=true&limit=20`;
    } else if (isMovieQ) {
      // استعلام أفلام أنمي
      url = "https://api.jikan.moe/v4/top/anime?type=movie&limit=20&sfw=true";
    } else if (inlineGenre && jikanGenreMap[inlineGenre]) {
      // استعلام تصنيف مضمّن — مثل Isekai
      url = `https://api.jikan.moe/v4/anime?genres=${jikanGenreMap[inlineGenre]}&sfw=true&limit=20&order_by=popularity`;
    } else if (vars.genre) {
      url = `https://api.jikan.moe/v4/anime?genres=${vars.genre}&sfw=true&limit=20`;
    } else if (q.includes("TRENDING_DESC")) {
      url = "https://api.jikan.moe/v4/top/anime?filter=airing&limit=30&sfw=true";
    } else if (q.includes("POPULARITY_DESC")) {
      url = "https://api.jikan.moe/v4/top/anime?filter=bypopularity&limit=30&sfw=true";
    } else if (q.includes("SCORE_DESC")) {
      url = "https://api.jikan.moe/v4/top/anime?limit=30&sfw=true";
    } else {
      url = "https://api.jikan.moe/v4/top/anime?filter=bypopularity&limit=30&sfw=true";
    }

    const r = await fetch(url, {
      headers: { "Accept": "application/json", "User-Agent": "AnimeNova/1.0" },
      signal: AbortSignal.timeout(10000),
    });
    if (!r.ok) return null;
    const d = await r.json();
    // فلترة الدونغوا الصيني: نبقي فقط الأنمي الياباني
    const media = (d.data || []).filter(isLikelyJapaneseAnime).map(jikanToAniList);
    return {
      data: {
        Page: {
          media,
          pageInfo: { hasNextPage: d.pagination?.has_next_page ?? false, total: d.pagination?.items?.total ?? media.length },
        },
      },
    };
  } catch { return null; }
}

/** تحويل بيانات Kitsu إلى تنسيق AniList */
function kitsuToAniList(a: any): any {
  const attr = a.attributes ?? {};
  const poster = attr.posterImage?.large || attr.posterImage?.medium || null;
  const banner = attr.coverImage?.large || attr.coverImage?.original || null;
  const year = attr.startDate ? Number(String(attr.startDate).slice(0, 4)) : null;
  const status = attr.status === "current" ? "RELEASING"
    : attr.status === "finished" ? "FINISHED"
    : attr.status === "upcoming" ? "NOT_YET_RELEASED" : "RELEASING";
  const format = attr.subtype === "TV" ? "TV"
    : attr.subtype === "movie" ? "MOVIE"
    : attr.subtype === "OVA" ? "OVA" : (attr.subtype || "TV");
  return {
    id: parseInt(a.id) || 0,
    idMal: null,
    idSource: "kitsu",
    title: {
      romaji:  attr.titles?.en_jp || attr.canonicalTitle || "",
      english: attr.titles?.en   || attr.titles?.en_us  || null,
      native:  attr.titles?.ja_jp || null,
    },
    coverImage: { large: poster, extraLarge: poster, color: null },
    bannerImage: banner,
    description: attr.description || null,
    episodes: attr.episodeCount || null,
    startDate: { year: Number.isFinite(year) ? year : null },
    status,
    averageScore: attr.averageRating ? Math.round(parseFloat(attr.averageRating)) : null,
    popularity: attr.userCount || null,
    genres: [],
    format,
    countryOfOrigin: "JP",
    isAdult: attr.nsfw === true,
    nextAiringEpisode: null,
    season: null, seasonYear: null,
    bannerImageInitialized: false,
  };
}

/** Kitsu fallback — للـ Page queries عندما تفشل Jikan */
async function kitsuFallback(body: any): Promise<any | null> {
  try {
    const q    = JSON.stringify(body?.query ?? "");
    const rawQ: string = body?.query ?? "";
    const vars = body?.variables ?? {};

    if (q.includes("airingSchedules") || vars.id) return null;

    // استخراج params مدمجة في query string
    const seasonInlineM2 = rawQ.match(/season:\s*([A-Z]+)/);
    const yearInlineM2   = rawQ.match(/seasonYear:\s*(\d{4})/);
    const inlineSeason2  = seasonInlineM2?.[1]?.toLowerCase();
    const inlineYear2    = yearInlineM2 ? parseInt(yearInlineM2[1]) : null;
    const isMovieQ2      = rawQ.includes("format: MOVIE") || rawQ.includes("format:MOVIE");
    const inlineGenreM2  = rawQ.match(/genre_in:\s*\["([^"]+)"/) || rawQ.match(/genre:\s*"([^"]+)"/);
    const inlineGenre2   = inlineGenreM2?.[1];
    const kitsuSeasonMap: Record<string, string> = { spring: "spring", summer: "summer", fall: "fall", autumn: "fall", winter: "winter" };
    const kitsuSeason2   = inlineSeason2 ? (kitsuSeasonMap[inlineSeason2] ?? null) : null;

    let url = "";
    if (vars.search) {
      url = `https://kitsu.io/api/edge/anime?filter[text]=${encodeURIComponent(vars.search)}&page[limit]=20&filter[ageRating]=G,PG,R`;
    } else if (kitsuSeason2 && inlineYear2) {
      url = `https://kitsu.io/api/edge/anime?filter[season]=${kitsuSeason2}&filter[seasonYear]=${inlineYear2}&page[limit]=20&filter[ageRating]=G,PG,R&sort=-userCount`;
    } else if (isMovieQ2) {
      url = "https://kitsu.io/api/edge/anime?filter[subtype]=movie&page[limit]=20&filter[ageRating]=G,PG,R&sort=-averageRating";
    } else if (inlineGenre2 === "Isekai") {
      url = "https://kitsu.io/api/edge/anime?filter[categories]=isekai&page[limit]=20&filter[ageRating]=G,PG,R&sort=-userCount";
    } else if (q.includes("TRENDING_DESC")) {
      url = "https://kitsu.io/api/edge/anime?sort=-userCount&page[limit]=20&filter[ageRating]=G,PG,R";
    } else if (q.includes("SCORE_DESC")) {
      url = "https://kitsu.io/api/edge/anime?sort=-averageRating&page[limit]=20&filter[ageRating]=G,PG,R";
    } else {
      url = "https://kitsu.io/api/edge/anime?sort=-favoritesCount&page[limit]=20&filter[ageRating]=G,PG,R";
    }

    const r = await fetch(url, {
      headers: { "Accept": "application/vnd.api+json", "User-Agent": "AnimeNova/1.0" },
      signal: AbortSignal.timeout(10000),
    });
    if (!r.ok) return null;
    const d     = await r.json();
    const media = (d.data || []).map(kitsuToAniList);
    return {
      data: {
        Page: {
          media,
          pageInfo: { hasNextPage: !!d.links?.next, total: media.length },
        },
      },
    };
  } catch { return null; }
}

/** Kitsu — يُستخدم لتعبئة bannerImage عندما تكون فارغة */
async function kitsuEnrichBannerImages(mediaList: any[]): Promise<any[]> {
  const missing = mediaList.filter(m => !m.bannerImage && m.title?.romaji);
  if (!missing.length) return mediaList;
  try {
    await Promise.allSettled(
      missing.slice(0, 14).map(async m => {
        try {
          const r = await fetch(
            `https://kitsu.io/api/edge/anime?filter[text]=${encodeURIComponent(m.title.romaji)}&page[limit]=1&fields[anime]=coverImage,posterImage`,
            { headers: { "Accept": "application/vnd.api+json" }, signal: AbortSignal.timeout(5000) }
          );
          if (!r.ok) return;
          const d = await r.json();
          const hit = d.data?.[0]?.attributes;
          if (hit?.coverImage?.original || hit?.coverImage?.large) {
            m.bannerImage = hit.coverImage.original || hit.coverImage.large;
          }
          // إذا كانت صورة الـ poster فارغة كذلك، عبِّئها من Kitsu
          if (!m.coverImage?.large && hit?.posterImage?.large) {
            m.coverImage = { large: hit.posterImage.large, extraLarge: hit.posterImage.large, color: null };
          }
        } catch {}
      })
    );
  } catch {}
  return mediaList;
}

// ── AniList GraphQL Proxy — Cache + Multi-Source ─────────────────────────────
/** 
 * يتتبع ما إذا كان AniList حالياً معطّلاً (يُعاد تعيينه عند أول نجاح).
 * يُستخدم لتخطّي الكاش المُخزَّن من AniList أثناء انقطاع الخدمة عندما
 * يكون الاستعلام Media(id) — حينئذٍ تكون IDs المُعادة هي MAL IDs من Jikan
 * وليست AniList IDs، مما يتعارض مع الكاش القديم.
 */
let _anilistDown = false;
let _anilistDownSince = 0;

// Common Arabic spellings are normalized server-side so web, mobile, and direct API
// callers all get the same precise AniList match. Unknown Arabic terms are preserved
// and can still be matched by AniList's native-title search.
const SEARCH_ARABIC_ALIASES: Record<string, string> = {
  "ناروتو": "Naruto",
  "هانتر": "Hunter x Hunter",
  "هنتر": "Hunter x Hunter",
  "هانتر إكس هانتر": "Hunter x Hunter",
  "ون بيس": "One Piece",
  "ون بيسي": "One Piece",
  "دراغون بول": "Dragon Ball",
  "دراجون بول": "Dragon Ball",
  "ديمون سلاير": "Demon Slayer",
  "قاتل الشياطين": "Demon Slayer",
  "هجوم العمالقة": "Attack on Titan",
  "بوكو نو هيرو": "My Hero Academia",
  "أكاديمية بطلي": "My Hero Academia",
  "بليتش": "Bleach",
  "جوجوتسو كايسن": "Jujutsu Kaisen",
  "جوجوتسو": "Jujutsu Kaisen",
  "سولو ليفلينج": "Solo Leveling",
  "بلاك كلوفر": "Black Clover",
  "فيري تيل": "Fairy Tail",
  "توكيو غول": "Tokyo Ghoul",
  "ريزيرو": "Re:Zero",
  "سورد آرت أونلاين": "Sword Art Online",
  "فول ميتال": "Fullmetal Alchemist",
};

function normalizeAnimeSearchTerm(value: unknown): string {
  const raw = typeof value === "string" ? value.trim() : "";
  if (!raw) return raw;
  const exact = SEARCH_ARABIC_ALIASES[raw];
  if (exact) return exact;
  const folded = raw
    .replace(/[إأآٱ]/g, "ا")
    .replace(/[ى]/g, "ي")
    .replace(/[ة]/g, "ه")
    .replace(/ـ/g, "")
    .replace(/\s+/g, " ")
    .trim();
  for (const [arabic, english] of Object.entries(SEARCH_ARABIC_ALIASES)) {
    const foldedAlias = arabic
      .replace(/[إأآٱ]/g, "ا")
      .replace(/[ى]/g, "ي")
      .replace(/[ة]/g, "ه")
      .replace(/ـ/g, "")
      .replace(/\s+/g, " ")
      .trim();
    if (folded === foldedAlias) return english;
  }
  return raw;
}

function normalizeAnilistRequest(input: any): any {
  const search = input?.variables?.search;
  if (typeof search !== "string" || !search.trim()) return input;
  return {
    ...input,
    variables: { ...input.variables, search: normalizeAnimeSearchTerm(search) },
  };
}

/** يجلب من AniList مباشرة ويحدّث الكاش — يُستخدم للتحديث الخلفي */
async function anilistFetchAndCache(body: any, cacheKey: string, ttl: number): Promise<any | null> {
  try {
    const r = await fetch("https://graphql.anilist.co", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
        "Origin": "https://anilist.co",
        "Referer": "https://anilist.co/",
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36",
        "Accept-Language": "en-US,en;q=0.9,ar;q=0.8",
      },
      body: JSON.stringify(body),
      signal: AbortSignal.timeout(12000),
    });
    if (!r.ok) return null;
    const data = await r.json() as any;
    if (data?.errors?.length) return null;
    _anilistDown = false;
    _anilistDownSince = 0;
    metaCacheSet(cacheKey, data, ttl, "anilist").catch(() => {});
    cacheAnimeSlugsFromAniListResponse(data);
    // خزّن البوستر+القصة في poster cache إذا كانت استجابة Media فردية
    if (data?.data?.Media) extractAndCachePoster(data);
    return data;
  } catch { return null; }
}

async function handleAnilistRequest(req: Request, res: Response) {
  const body        = normalizeAnilistRequest(req.body);
  const cacheKey    = metaHash(body);
  const ttl         = metaTtl(body);
  const isIdQuery   = !!body?.variables?.id;

  // 1️⃣ PostgreSQL cache — أسرع مصدر
  // استثناء: استعلامات Media(id) أثناء انقطاع AniList — الكاش قد يحتوي على
  // بيانات Jikan بـ MAL IDs، فنتخطاه حتى تعود AniList للعمل
  const skipCache = isIdQuery && _anilistDown;
  if (!skipCache) {
    const cached = await metaCacheGet(cacheKey);
    if (cached) {
      // ✅ Stale-While-Revalidate: إذا تجاوز الكاش 30 يوم → أرسله فوراً وحدّث خلفياً
      if (cached.stale && !_anilistDown) {
        anilistFetchAndCache(body, cacheKey, ttl).catch(() => {});
      }
      res.setHeader("Cache-Control", "public, max-age=300");
      res.setHeader("X-Meta-Source", cached.stale ? "cache-stale" : "cache");
      return res.json(cached.data);
    }
  }

  // 2️⃣ AniList GraphQL — المصدر الأساسي
  const freshData = await anilistFetchAndCache(body, cacheKey, ttl);
  if (freshData) {
    res.setHeader("Cache-Control", "public, max-age=60");
    res.setHeader("X-Meta-Source", "anilist");
    return res.json(freshData);
  }

  // AniList فشلت — سجّل ذلك
  _anilistDown = true;
  _anilistDownSince = _anilistDownSince || Date.now();

  // 3️⃣ Jikan (MyAnimeList) fallback
  const jikanData = await jikanFallback(body);
  if (jikanData) {
    if (jikanData.data?.Page?.media) {
      jikanData.data.Page.media = await kitsuEnrichBannerImages(jikanData.data.Page.media);
    }
    // ⚠️ استعلامات Media(id): لا نُخزّن في الكاش — IDs ستكون MAL IDs وتُفسد
    // استعلامات الأنمي الفردية بعد عودة AniList للعمل.
    // استعلامات Page: نُخزّن بـ TTL قصير (10 دق) لتجنّب ضرب Jikan في كل طلب.
    if (!isIdQuery) {
      metaCacheSet(cacheKey, jikanData, 600, "jikan").catch(() => {});
    }
    res.setHeader("Cache-Control", "public, max-age=60");
    res.setHeader("X-Meta-Source", "jikan");
    return res.json(jikanData);
  }

  // 4️⃣ Kitsu fallback — بديل ثالث لـ Page queries
  const kitsuData = await kitsuFallback(body);
  if (kitsuData) {
    if (!isIdQuery) {
      metaCacheSet(cacheKey, kitsuData, 600, "kitsu").catch(() => {});
    }
    res.setHeader("Cache-Control", "public, max-age=60");
    res.setHeader("X-Meta-Source", "kitsu");
    return res.json(kitsuData);
  }

  // 5️⃣ كل المصادر فشلت — هيكل فارغ بدل خطأ
  return res.json({ data: { Page: { media: [], pageInfo: { hasNextPage: false, total: 0 } }, Media: null } });
}

// Keep both contracts alive: older mobile builds used /api/anime/anilist,
// while the canonical endpoint is /api/anilist. The compatibility route is
// intentionally handled by the exact same cache/fallback pipeline.
router.post("/anilist", handleAnilistRequest);
router.post("/anime/anilist", handleAnilistRequest);

// ── Poster endpoint — جلب بوستر+قصة بـ AniList ID ─────────────────────────
router.get("/anime/poster/:id", async (req, res) => {
  const anilistId = parseInt(req.params.id, 10);
  if (!anilistId || isNaN(anilistId)) return res.status(400).json({ error: "id غير صالح" });

  // 1️⃣ من الكاش أولاً
  const cached = await posterCacheGet(anilistId);
  if (cached?.coverUrl) {
    res.setHeader("Cache-Control", "public, max-age=3600");
    return res.json({ coverUrl: cached.coverUrl, synopsis: cached.synopsis, source: "cache" });
  }

  // 2️⃣ جلب من AniList وتخزين
  try {
    const body = {
      query: `query($id:Int){Media(id:$id,type:ANIME){id coverImage{extraLarge large}description(asHtml:false)}}`,
      variables: { id: anilistId },
    };
    const r = await fetch("https://graphql.anilist.co", {
      method: "POST",
      headers: { "Content-Type": "application/json", "Accept": "application/json" },
      body: JSON.stringify(body),
      signal: AbortSignal.timeout(8000),
    });
    if (r.ok) {
      const data = await r.json() as any;
      const media = data?.data?.Media;
      if (media) {
        const coverUrl = media.coverImage?.extraLarge || media.coverImage?.large || `https://img.anili.st/media/${anilistId}`;
        const synopsis = media.description || null;
        posterCacheSet(anilistId, coverUrl, synopsis).catch(() => {});
        res.setHeader("Cache-Control", "public, max-age=3600");
        return res.json({ coverUrl, synopsis, source: "anilist" });
      }
    }
  } catch {}

  // 3️⃣ fallback — img.anili.st مباشرة
  const fallbackUrl = `https://img.anili.st/media/${anilistId}`;
  res.setHeader("Cache-Control", "public, max-age=300");
  return res.json({ coverUrl: fallbackUrl, synopsis: null, source: "fallback" });
});

// ── بناء كتالوج AnimeWitcher في الخلفية عند إقلاع السيرفر ──
buildAWCatalog().catch(() => {});

// ══════════════════════════════════════════════════════════════════════════
//  NEW EPISODES — حلقات جديدة مؤكدة التوفر في AnimeWitcher (للقسم الإخباري)
// ══════════════════════════════════════════════════════════════════════════

const _awNewEpsCache: { ts: number; items: any[] } = { ts: 0, items: [] };
const _awNewEpsTTL = 15 * 60_000; // 15 دقيقة cache

router.get("/anime/new-episodes", async (req, res) => {
  // أرجع من الـ cache إذا كان حديثاً
  if (Date.now() - _awNewEpsCache.ts < _awNewEpsTTL && _awNewEpsCache.items.length) {
    res.setHeader("Cache-Control", "public, max-age=300");
    return res.json(_awNewEpsCache.items);
  }

  try {
    // 1️⃣ جلب جدول البث من AniList (آخر 36 ساعة)
    const now  = Math.floor(Date.now() / 1000);
    const from = now - 36 * 3600;

    const anilistRes = await fetch("https://graphql.anilist.co", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Accept: "application/json",
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36",
      },
      body: JSON.stringify({
        query: `query($greater: Int, $lesser: Int) {
          Page(perPage: 50) {
            airingSchedules(
              airingAt_greater: $greater
              airingAt_lesser: $lesser
              sort: [TIME_DESC]
            ) {
              episode airingAt
              media {
                id type isAdult format
                title { romaji english native }
                coverImage { extraLarge large }
                popularity genres averageScore
              }
            }
          }
        }`,
        variables: { greater: from, lesser: now },
      }),
      signal: AbortSignal.timeout(12_000),
    });

    const anilistData = await anilistRes.json() as any;
    const schedules: any[] = (anilistData?.data?.Page?.airingSchedules || [])
      .filter((s: any) => s.media?.type === "ANIME" && !s.media?.isAdult);

    // إزالة التكرار — نبقي الحلقة الأحدث لكل أنمي
    const byId = new Map<number, any>();
    for (const s of schedules) {
      const existing = byId.get(s.media.id);
      if (!existing || s.episode > existing.episode) byId.set(s.media.id, s);
    }
    const unique = Array.from(byId.values()).slice(0, 20);

    // 2️⃣ بناء قائمة AniList مباشرة (بدون انتظار AnimeWitcher)
    const anilistItems = unique.map((sched: any) => ({
      anilistId:    sched.media.id,
      title:        sched.media.title?.romaji || sched.media.title?.english || "",
      titleAr:      sched.media.title?.native || null,
      episode:      sched.episode,
      airingAt:     sched.airingAt,
      poster:       sched.media.coverImage?.extraLarge || sched.media.coverImage?.large || null,
      anilistPoster: sched.media.coverImage?.extraLarge || sched.media.coverImage?.large || null,
      format:       sched.media.format || "TV",
      popularity:   sched.media.popularity || 0,
      averageScore: sched.media.averageScore || null,
      genres:       (sched.media.genres || []).slice(0, 3),
    })).filter(x => x.title).sort((a: any, b: any) => b.airingAt - a.airingAt);

    // 3️⃣ التحقق من AnimeWitcher بشكل متوازٍ مع timeout قصير (اختياري — fallback لـ AniList)
    const awTimeout = AbortSignal.timeout(6_000);
    const awResults = await Promise.allSettled(unique.slice(0, 10).map(async (sched: any) => {
      const title = sched.media.title?.romaji || sched.media.title?.english || "";
      const ep    = sched.episode;
      if (!title) return null;
      try {
        const sr = await fetch(
          `${AW_HF_BASE}/api/search?q=${encodeURIComponent(title)}`,
          { headers: { "User-Agent": "NovaBot/1.0", Accept: "application/json" }, signal: awTimeout }
        );
        if (!sr.ok) return null;
        const raw = await sr.json().catch(() => null);
        const hits: any[] = raw?.hits ?? (Array.isArray(raw) ? raw : []);
        if (!hits.length) return null;
        const hit = hits[0];
        const animeId = hit?.id || hit?.anime_id || "";
        if (!animeId) return null;
        return { anilistId: sched.media.id, awPoster: hit?.poster || hit?.cover || null };
      } catch { return null; }
    }));

    // دمج بوستر AW مع بيانات AniList إذا توفّر
    const awMap = new Map<number, string>();
    awResults.forEach(r => {
      if (r.status === "fulfilled" && r.value) {
        const { anilistId, awPoster } = r.value;
        if (awPoster) awMap.set(anilistId, awPoster);
      }
    });
    const confirmed = anilistItems.map((item: any) => ({
      ...item,
      poster: awMap.get(item.anilistId) || item.poster,
    }));

    if (confirmed.length > 0) {
      _awNewEpsCache.ts    = Date.now();
      _awNewEpsCache.items = confirmed;
    }

    res.setHeader("Cache-Control", "public, max-age=300");
    res.json(confirmed.length > 0 ? confirmed : _awNewEpsCache.items);
  } catch (e: any) {
    console.warn("[new-episodes] error:", e.message);
    res.setHeader("Cache-Control", "public, max-age=60");
    res.json(_awNewEpsCache.items);
  }
});

// ════════════════════════════════════════════════════════════════════
//  /api/cfproxy/:endpoint — يعيد توجيه الطلبات لـ cf_proxy.py المحلي
//  يُستخدم من Replit عبر NOVA_PROXY_BASE=https://animenovaa.duckdns.org
//  مثال: GET /api/cfproxy/fetch?url=https://...
// ════════════════════════════════════════════════════════════════════
router.get("/cfproxy/:endpoint", async (req: Request, res: Response) => {
  const endpoint = req.params.endpoint;
  const query = new URLSearchParams(req.query as Record<string, string>).toString();
  const localBase = `http://localhost:${process.env.CF_PROXY_PORT || "8000"}`;
  try {
    const r = await fetch(`${localBase}/${endpoint}${query ? `?${query}` : ""}`, {
      signal: AbortSignal.timeout(38_000),
    });
    const body = await r.text();
    res.status(r.status).set("Content-Type", "text/plain; charset=utf-8").send(body);
  } catch (e: any) {
    res.status(502).json({ error: `cfproxy: ${e.message}` });
  }
});

// ════════════════════════════════════════════════════════════════════
//  AW Auto-Sync Scheduler — يحدّث aw_links بالحلقات الجديدة كل ساعتين
//  يفحص 30 أنمي الأكثر نشاطاً (آخر imported_at) ويضيف حلقات جديدة
// ════════════════════════════════════════════════════════════════════

/** يزامن أنمي واحد: يجلب حلقاته من Firestore ويحفظ الجديدة في DB */
async function awSyncAnime(
  animeId: string, animeName: string, anilistId: number | null,
  contentType: "anime" | "dubbed" = "anime",
): Promise<number> {
  try {
    // آخر ep_number في DB لهذا الأنمي
    const existing = await sbSelect<{ ep_number: number }>("aw_links", {
      "anime_id": `eq.${animeId}`,
      "content_type": `eq.${contentType}`,
      "order":    "ep_number.desc",
    }, { limit: 1, select: "ep_number" });
    const lastInDb = existing[0]?.ep_number ?? 0;

    // جلب قائمة الحلقات من Firestore
    const episodes = await awFetchEpisodes(animeId);
    const newEps   = episodes.filter(e => Math.round(e.num) > lastInDb);
    if (!newEps.length) return 0;

    let added = 0;
    for (const ep of newEps) {
      const epNum    = Math.round(ep.num);
      const servers  = await awFetchServers(animeId, ep.id);
      if (!servers.length) continue;
      await awDbSaveLinks(animeId, animeName, anilistId ?? undefined, epNum, ep.id, servers, contentType);
      added++;
      await new Promise(r => setTimeout(r, 300)); // rate limit خفيف
    }
    return added;
  } catch (e: any) {
    console.warn(`[AW-SYNC] ${animeId}:`, e?.message);
    return 0;
  }
}

let _awSyncRunning = false;

async function awAutoSync(): Promise<void> {
  if (_awSyncRunning) return;
  _awSyncRunning = true;
  const start = Date.now();
  try {
    console.log("[AW-SYNC] بدء التزامن التلقائي...");

    let totalAdded = 0;
    for (const contentType of ["anime", "dubbed"] as const) {
      // Keep independent queues: otherwise fresh anime rows starve the
      // dubbed animation rows forever.
      const recent = await sbSelect<{ anime_id: string; anime_name: string; anilist_id: number | null }>(
        "aw_links",
        { "content_type": `eq.${contentType}`, "order": "imported_at.desc" },
        { limit: 200, select: "anime_id,anime_name,anilist_id" },
      );
      const seen = new Set<string>();
      const toSync: typeof recent = [];
      for (const r of recent) {
        if (!seen.has(r.anime_id)) { seen.add(r.anime_id); toSync.push(r); }
        if (toSync.length >= 30) break;
      }

      let groupAdded = 0;
      for (const item of toSync) {
        const added = await awSyncAnime(item.anime_id, item.anime_name, item.anilist_id, contentType);
        if (added > 0) {
          console.log(`[AW-SYNC] ${contentType} ${item.anime_name}: +${added} حلقة جديدة`);
          totalAdded += added;
          groupAdded += added;
        }
        await new Promise(r => setTimeout(r, 500));
      }
      console.log(`[AW-SYNC] ${contentType}: +${groupAdded} حلقة`);
    }
    console.log(`[AW-SYNC] انتهى في ${((Date.now()-start)/1000).toFixed(1)}s — +${totalAdded} حلقة إجمالاً`);
  } catch (e: any) {
    console.warn("[AW-SYNC] خطأ:", e?.message);
  } finally {
    _awSyncRunning = false;
  }
}

// بدء التزامن بعد 3 دقائق من تشغيل السيرفر، ثم كل ساعتين
setTimeout(() => awAutoSync().catch(() => {}), 3 * 60_000);
setInterval(() => awAutoSync().catch(() => {}), 2 * 60 * 60_000);


// ── Jikan episode catalog ────────────────────────────────────────────────
// AniList can lag by one episode while a seasonal show is airing. Keep the
// page list and the current total from Jikan in a short server-side cache so
// the episode screen stays current without hammering the upstream API.
const _jikanEpisodeCache = new Map<string, { ts: number; payload: any }>();
const JIKAN_EPISODE_CACHE_TTL = 10 * 60_000;

async function getAnsLayerLatestEpisode(anilistId: number): Promise<number> {
  try {
    let items = _anslayerLatestCache;
    if (!items || Date.now() - _anslayerLatestTs >= ANSLAYER_LATEST_TTL) {
      const data = await anslayerGet("animes/get-published-animes", {
        list_type: "latest_updated_episode_new",
        page: 1,
      });
      const list: any[] = data?.response?.data || [];
      const rawItems = list.map((item: any) => {
        const epMatch = String(item.latest_episode_name || "").match(/(\d+)/);
        return {
          anslayerId: parseInt(item.anime_id, 10),
          name: item.anime_name || "",
          episode: epMatch ? parseInt(epMatch[1], 10) : null,
          cover: item.anime_cover_image_url || "",
          year: item.anime_release_year || "",
        };
      }).filter((item: any) => item.anslayerId && item.episode);

      items = (await Promise.all(rawItems.map(async (item: any) => {
        const resolvedId = await resolveAniListIdForSource(item.name, null, [], null);
        return { ...item, animeId: resolvedId };
      }))).filter((item: any) => item.animeId && item.episode);
      _anslayerLatestCache = items;
      _anslayerLatestTs = Date.now();
    }
    return Math.max(
      0,
      ...(items || [])
        .filter((item: any) => Number(item.animeId) === anilistId)
        .map((item: any) => Number(item.episode) || 0),
    );
  } catch {
    return 0;
  }
}

router.get("/anime/episode-titles", async (req, res) => {
  const malId = Number.parseInt(String(req.query.malId || "0"), 10);
  const anilistId = Number.parseInt(String(req.query.anilistId || "0"), 10);
  const page = Math.max(1, Number.parseInt(String(req.query.page || "1"), 10) || 1);
  if (!Number.isFinite(malId) || malId <= 0) {
    res.status(400).json({ episodes: [], total: 0, page });
    return;
  }

  const key = `${malId}:${page}`;
  const cached = _jikanEpisodeCache.get(key);
  if (cached && Date.now() - cached.ts < JIKAN_EPISODE_CACHE_TTL) {
    res.json(cached.payload);
    return;
  }

  let payload: any = null;
  for (let attempt = 0; attempt < 2 && !payload; attempt++) {
    try {
      const upstream = await fetch(
        `https://api.jikan.moe/v4/anime/${malId}/episodes?page=${page}`,
        { headers: { ...BASE_HDRS, Accept: "application/json" }, signal: AbortSignal.timeout(8000) },
      );
      if (upstream.ok) {
        const body = await upstream.json() as any;
        const episodes = Array.isArray(body?.data) ? body.data : [];
        const paginationTotal = Number(body?.pagination?.items?.total || 0);
        // Older Jikan responses omit pagination.items.total. Infer a safe
        // lower bound from the visible page so the client can still size the
        // list while AniList supplies the live airing total when available.
        const pageFloor = (page - 1) * 100 + episodes.length;
        const episodeFloor = episodes.reduce((max: number, item: any) => {
          const n = Number(item?.mal_id || item?.episode || 0);
          return Number.isFinite(n) && n > max ? n : max;
        }, 0);
        const latestEpisode = anilistId > 0
          ? await getAnsLayerLatestEpisode(anilistId)
          : 0;
        // Jikan's pagination total is the planned series length and includes
        // unaired episodes. For a currently airing show, expose only episodes
        // whose air date has passed; otherwise the episode list can show 12
        // items while only 7 have actually aired.
        const now = Date.now();
        const airedEpisode = episodes.reduce((max: number, item: any) => {
          const n = Number(item?.mal_id || item?.episode || 0);
          const airedAt = item?.aired?.from ? Date.parse(String(item.aired.from)) : NaN;
          return n > 0 && Number.isFinite(airedAt) && airedAt <= now ? Math.max(max, n) : max;
        }, 0);
        const releasedTotal = Math.max(airedEpisode, latestEpisode);
        const total = Math.max(paginationTotal, pageFloor, episodeFloor, latestEpisode);
        payload = { episodes, total, releasedTotal, latestEpisode, page };
        break;
      }
      if (upstream.status === 429 && attempt === 0) {
        await new Promise(resolve => setTimeout(resolve, 900));
      }
    } catch {
      if (attempt === 0) await new Promise(resolve => setTimeout(resolve, 250));
    }
  }

  const result = payload || { episodes: [], total: 0, latestEpisode: 0, page };
  if (payload) _jikanEpisodeCache.set(key, { ts: Date.now(), payload });
  res.json(result);
});

export default router;
