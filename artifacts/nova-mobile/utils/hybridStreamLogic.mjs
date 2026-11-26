/**
 * Fixed Deterministic Stream & Direct MP4 Download Logic
 *
 * Replaces runtime Direct-to-Proxy probing & mid-playback swaps with fixed,
 * predictable per-source routing:
 * - Direct 100% on phone: KW, MP/MP DUB, RE/RE DUB, AD2, Pixeldrain,
 *   phone-resolved MediaFire, Google Drive, Ok.ru, VK, phone-extracted
 *   clientExtract streams (VOE/Filemoon/StreamWish/VidHide/EarnVids/MixDrop),
 *   and open non-locked MP4s.
 * - VPS Proxy directly from start: SA (sanime), NOVA VIP (nova_tg/nova_vip),
 *   stream.foupix.com, Referer-locked HLS (carateen/sp/arabic-toons/stardima),
 *   and any server-only /api/ stream.
 * - Keeps balanced native buffer profile (32s forward cushion + 1.8s minBufferForPlayback).
 */

export const DIRECT_PROBE_TIMEOUT_MS = 25_000;
export const DIRECT_ASSIGN_GUARD_MS = 25_000;
export const DIRECT_REBUFFER_TIMEOUT_MS = 40_000;
export const DIRECT_STALL_TIMEOUT_MS = 25_000;
export const DIRECT_STALL_RECOVERY_MS = 12_000;
export const DIRECT_REBUFFER_BURST_COUNT = 3;
export const DIRECT_REBUFFER_BURST_WINDOW_MS = 45_000;

export const VPS_ONLY_SITES = new Set([
  "sanime",
  "sa",
  "nova_tg",
  "nova_tg_dub",
  "nova_vip",
]);

const VPS_ONLY_HOSTS = [
  "stream.foupix.com",
  "foupix.com",
  "pegasus.5387692.xyz",
  "sanime.net",
  "carateen.tv",
  "arabic-toons.com",
  "stardima.com.im",
  "hyperwatching.com",
  "hyperwatching.net",
  "hyperwatching.xyz",
];

const REFERER_LOCKED_DUBBED_PROVIDERS = new Set([
  "carateen",
  "sp",
  "arabic-toons",
  "arabictoons",
  "stardima",
]);

const HLS_URL_RE = /\.m3u8(?:[?#]|$)|\/(?:hls|playlist|manifest)(?:\/|[?#]|$)|\/api\/(?:anime|animation)\/hls-proxy/i;
const MEDIAFIRE_LANDING_RE = /^https?:\/\/(?:www\.)?mediafire\.com\/(?:file|view|download)\//i;
const EMBED_PAGE_URL_RE = /\/(?:e|v|d|f|embed|iframe|embed-\d+|watch|player)\/|(?:^https?:\/\/(?:www\.)?(?:voe\.sx|filemoon\.[a-z]+|streamwish\.[a-z]+|vidhide\.[a-z]+|mixdrop\.[a-z]+|dood\.[a-z]+|streamtape\.[a-z]+|ok\.ru\/video)\/)/i;
const NON_MP4_EXT_RE = /\.(?:m3u8|mpd|ts|m4s|vtt|srt|ass|ssa|html|htm|php|aspx|jsp|txt|xml|json)(?:[?#]|$)/i;
const MP4_PROGRESSIVE_EXT_RE = /\.(?:mp4|m4v|webm|mov)(?:[?#]|$)/i;

function trimSlash(value) {
  return String(value || "").trim().replace(/\/+$/, "");
}

function safeLower(value) {
  return String(value || "").trim().toLowerCase();
}

function hostMatches(hostname, suffix) {
  const h = safeLower(hostname);
  const s = safeLower(suffix);
  return h === s || h.endsWith(`.${s}`);
}

export function isOwnVpsProxyUrl(url) {
  const s = safeLower(url);
  if (!s) return false;
  if (s.startsWith("file://") || s.startsWith("content://")) return true;
  if (s.includes("/api/anime/hls-proxy")) {
    return !s.includes("directsegs=1");
  }
  return (
    s.includes("/api/anime/video-proxy") ||
    s.includes("/api/anime/seg-proxy") ||
    s.includes("/api/anime/download-mp4") ||
    s.includes("/api/animation/hls-proxy") ||
    s.includes("/api/animation/video-proxy") ||
    s.includes("/api/dubbed/stream") ||
    s.includes("/api/dubbed/carateen/stream") ||
    s.includes("/api/aw-dubbed/mf-stream") ||
    s.includes("/api/tg-media/stream") ||
    s.includes("/api/tg-stream/")
  );
}

/**
 * True ONLY when targetUrl points to our own Nova VPS API origin or is a relative `/api/` route.
 * Never returns true for external CDNs (MediaFire, Pixeldrain, Drive, KW/MP/RE CDNs, etc.).
 */
export function isFirstPartyVpsUrl(targetUrl, baseUrl = "https://animenovaa.duckdns.org") {
  const raw = String(targetUrl || "").trim();
  if (!raw) return false;
  if (raw.startsWith("/")) return true;
  if (!/^https?:\/\//i.test(raw)) return false;
  try {
    const targetParsed = new URL(raw);
    const base = trimSlash(baseUrl) || "https://animenovaa.duckdns.org";
    const baseParsed = new URL(base);
    return (
      targetParsed.origin.toLowerCase() === baseParsed.origin.toLowerCase() ||
      targetParsed.hostname.toLowerCase() === "animenovaa.duckdns.org"
    );
  } catch {
    return false;
  }
}

export function stripDirectSegsFlag(url) {
  const raw = String(url || "").trim();
  if (!raw) return "";
  try {
    const parsed = new URL(raw.startsWith("/") ? `https://nova.local${raw}` : raw);
    parsed.searchParams.delete("directSegs");
    parsed.searchParams.delete("directsegs");
    return raw.startsWith("/") ? `${parsed.pathname}${parsed.search}` : parsed.toString();
  } catch {
    return raw.replace(/([?&])directsegs=1(&|$)/gi, (_, p1, p2) => (p2 === "&" ? p1 : ""));
  }
}

export function inferContentType(url, hint) {
  if (hint === "hls" || hint === "mp4") return hint === "hls" ? "hls" : "progressive";
  if (hint === "progressive") return "progressive";
  const lower = safeLower(url);
  if (HLS_URL_RE.test(lower)) {
    return "hls";
  }
  if (
    MP4_PROGRESSIVE_EXT_RE.test(lower) ||
    lower.includes("/video-proxy") ||
    lower.includes("/api/dubbed/stream") ||
    lower.includes("/api/aw-dubbed/mf-stream") ||
    lower.includes("pixeldrain.com/api/file/") ||
    lower.includes("pixeldrain.net/api/file/")
  ) {
    return "progressive";
  }
  return undefined;
}

function isVpsProtectedSite(site) {
  const s = safeLower(site);
  if (!s) return false;
  if (VPS_ONLY_SITES.has(s)) return true;
  if (s.startsWith("nova_tg") || s.startsWith("nova_vip")) return true;
  return false;
}

export function isFixedVpsPlaybackSource({
  url,
  site,
  deliveryMode,
  contentType,
  headers,
  referer,
  provider,
}) {
  const cleanUrl = String(url || "").trim();
  const s = safeLower(site);
  const p = safeLower(provider);
  const lower = safeLower(cleanUrl);

  if (!cleanUrl) return true;
  if (lower.startsWith("file://") || lower.startsWith("content://")) return true;
  if (isVpsProtectedSite(s)) return true;
  if (deliveryMode === "vps-vip" || deliveryMode === "vps-proxy") return true;
  if (isOwnVpsProxyUrl(cleanUrl)) return true;

  let host = "";
  try {
    host = new URL(cleanUrl).hostname.toLowerCase();
  } catch {
    return false;
  }

  for (const blocked of VPS_ONLY_HOSTS) {
    if (hostMatches(host, blocked)) return true;
  }

  const resolvedType = inferContentType(cleanUrl, contentType);
  const effRef = String(referer || headers?.Referer || headers?.referer || "").trim();
  if (resolvedType === "hls" && REFERER_LOCKED_DUBBED_PROVIDERS.has(p)) {
    return true;
  }
  if (
    resolvedType === "hls" &&
    effRef &&
    (s.startsWith("dubbed_") || s.startsWith("stardima_") || p === "stardima" || p === "az" || p === "sd2")
  ) {
    return true;
  }

  return false;
}

export function buildVpsProxyUrl({
  url,
  referer,
  baseUrl,
  contentType,
  site,
  deliveryMode,
}) {
  const base = trimSlash(baseUrl);
  const cleanUrl = String(url || "").trim();
  if (!cleanUrl || !base) return cleanUrl;
  if (isOwnVpsProxyUrl(cleanUrl)) {
    return cleanUrl.startsWith("/") ? `${base}${cleanUrl}` : cleanUrl;
  }
  if (
    safeLower(site).startsWith("nova_tg") ||
    safeLower(site) === "nova_vip" ||
    deliveryMode === "vps-vip"
  ) {
    return cleanUrl.startsWith("/") ? `${base}${cleanUrl}` : cleanUrl;
  }
  if (!/^https?:\/\//i.test(cleanUrl)) return cleanUrl;

  let host = "";
  try {
    host = new URL(cleanUrl).hostname.toLowerCase();
  } catch {
    return cleanUrl;
  }

  if (hostMatches(host, "stream.foupix.com")) {
    return `${base}/api/dubbed/stream?url=${encodeURIComponent(cleanUrl)}`;
  }

  const resolvedType = inferContentType(cleanUrl, contentType);
  const ref = String(referer || "").trim();
  if (resolvedType === "hls") {
    return ref
      ? `${base}/api/anime/hls-proxy?url=${encodeURIComponent(cleanUrl)}&ref=${encodeURIComponent(ref)}`
      : `${base}/api/anime/hls-proxy?url=${encodeURIComponent(cleanUrl)}`;
  }
  return ref
    ? `${base}/api/anime/video-proxy?url=${encodeURIComponent(cleanUrl)}&ref=${encodeURIComponent(ref)}`
    : `${base}/api/anime/video-proxy?url=${encodeURIComponent(cleanUrl)}`;
}

/** Kept for API compatibility — returns null so runtime never runs mid-playback probing swaps. */
export function buildVpsProxyFallbackUrl() {
  return null;
}

/**
 * Deterministic Fixed Plan player source builder:
 * - Direct sources stay Direct 100% with their CDN headers and NO proxyFallback.
 * - VPS-only sources (SA, NOVA VIP, stream.foupix.com, Referer-locked dubbed/carateen/stardima HLS)
 *   are routed straight through the VPS proxy from the start with clean server headers.
 */
export function buildDeterministicPlayerSource(input) {
  const {
    url,
    rawUrl: _rawUrl,
    existingProxyUrl: _existingProxyUrl,
    headers,
    referer,
    baseUrl,
    contentType,
    site,
    deliveryMode,
    provider,
    ...rest
  } = input || {};

  const cleanUrl = String(url || "").trim();
  const base = trimSlash(baseUrl);
  const effRef = String(referer || headers?.Referer || headers?.referer || "").trim();
  const resolvedType = inferContentType(cleanUrl, contentType);

  const useVps = isFixedVpsPlaybackSource({
    url: cleanUrl,
    site,
    deliveryMode,
    contentType: resolvedType,
    headers,
    referer: effRef,
    provider,
  });

  if (useVps) {
    const absClean = cleanUrl.startsWith("/") && base ? `${base}${cleanUrl}` : cleanUrl;
    const finalUrl = isOwnVpsProxyUrl(absClean) || absClean.startsWith("file://") || absClean.startsWith("content://")
      ? absClean
      : buildVpsProxyUrl({
          url: absClean,
          referer: effRef,
          baseUrl: base,
          contentType: resolvedType,
          site,
          deliveryMode,
        });
    const finalType = inferContentType(finalUrl, resolvedType);
    return {
      ...rest,
      url: finalUrl,
      ...(finalType ? { contentType: finalType } : {}),
      ...(site ? { site } : {}),
      proxyFallback: undefined,
    };
  }

  return {
    ...rest,
    url: cleanUrl,
    ...(resolvedType ? { contentType: resolvedType } : {}),
    ...(headers && Object.keys(headers).length > 0 ? { headers } : {}),
    ...(site ? { site } : {}),
    proxyFallback: undefined,
  };
}

/** Backward-compatible export mapped cleanly to the Fixed Deterministic Plan (no proxyFallback). */
export function buildHybridPlayerSource(input) {
  return buildDeterministicPlayerSource(input);
}

function isKnownDirectMp4Url(candidate, { directType, mediaType, deliveryMode } = {}) {
  if (!candidate || !/^https?:\/\//i.test(candidate)) return false;
  if (isOwnVpsProxyUrl(candidate)) return false;
  if (HLS_URL_RE.test(candidate)) return false;
  if (MEDIAFIRE_LANDING_RE.test(candidate)) return false;
  if (EMBED_PAGE_URL_RE.test(candidate)) return false;

  let parsed;
  try {
    parsed = new URL(candidate);
  } catch {
    return false;
  }

  const host = parsed.hostname.toLowerCase();
  const path = parsed.pathname;

  for (const blocked of VPS_ONLY_HOSTS) {
    if (hostMatches(host, blocked)) return false;
  }

  if (NON_MP4_EXT_RE.test(path)) return false;
  if (MP4_PROGRESSIVE_EXT_RE.test(path)) return true;

  if (/^download\d*\.mediafire\.com$/i.test(host) && path.length > 8) return true;
  if ((host === "pixeldrain.com" || host === "pixeldrain.net" || host.endsWith(".pixeldrain.com")) &&
      /^\/api\/file\/[a-zA-Z0-9_-]+$/i.test(path)) {
    return true;
  }
  if (host === "drive.google.com" || host.endsWith(".googleusercontent.com")) return true;
  if (hostMatches(host, "okcdn.ru") || hostMatches(host, "userapi.com") || hostMatches(host, "vkvideo.ru")) {
    return true;
  }
  if ((host === "dl.buzzheavier.com" || host.endsWith(".buzzheavier.com") || host.endsWith(".buzzheav.com")) &&
      path.length > 4) {
    return true;
  }

  const hintType = safeLower(directType || mediaType);
  if (
    (hintType === "mp4" || hintType === "progressive" || deliveryMode === "client-extract") &&
    hintType !== "hls"
  ) {
    return true;
  }

  return false;
}

/**
 * Determines if an internal download can fetch an MP4 directly from the user's phone (0% VPS).
 * Never allows HLS (.m3u8), SA, NOVA VIP, stream.foupix.com, or unresolved MediaFire/embed pages.
 */
export function resolveDirectInternalMp4Download({
  url = "",
  rawUrl = "",
  directUrl = "",
  directType = "",
  mediaType = "",
  site = "",
  provider = "",
  deliveryMode = "",
  headers = undefined,
  baseUrl = "",
} = {}) {
  const s = safeLower(site);
  const p = safeLower(provider);
  const hintType = safeLower(directType || mediaType);

  if (isVpsProtectedSite(s) || deliveryMode === "vps-vip") {
    return { isDirect: false, url: null, headers: undefined, reason: "vps_only_site" };
  }

  if (hintType === "hls" || hintType === "m3u8") {
    return { isDirect: false, url: null, headers: undefined, reason: "hls_requires_vps" };
  }

  if (p === "carateen" || p === "sp") {
    // Allow direct only if an explicit direct MediaFire/Pixeldrain/Drive MP4 endpoint is provided
    const explicitCandidates = [directUrl, rawUrl, url].map((v) => String(v || "").trim()).filter(Boolean);
    const hasExplicitDirectHost = explicitCandidates.some((c) => {
      try {
        const h = new URL(c).hostname.toLowerCase();
        return /^download\d*\.mediafire\.com$/i.test(h) || h.includes("pixeldrain.") || h === "drive.google.com" || h.endsWith(".googleusercontent.com");
      } catch {
        return false;
      }
    });
    if (!hasExplicitDirectHost) {
      return { isDirect: false, url: null, headers: undefined, reason: "provider_requires_vps" };
    }
  }

  const candidates = [directUrl, rawUrl, url]
    .map((v) => String(v || "").trim())
    .filter((v) => Boolean(v) && !isFirstPartyVpsUrl(v, baseUrl));

  for (const candidate of candidates) {
    if (HLS_URL_RE.test(candidate)) {
      return { isDirect: false, url: null, headers: undefined, reason: "hls_requires_vps" };
    }
    if (isKnownDirectMp4Url(candidate, { directType, mediaType, deliveryMode })) {
      return {
        isDirect: true,
        url: candidate,
        headers: headers && Object.keys(headers).length > 0 ? headers : undefined,
        reason: "direct_mp4",
      };
    }
  }

  return { isDirect: false, url: null, headers: undefined, reason: "not_direct_mp4" };
}

/**
 * Balanced native buffer configuration:
 * - 32s forward cushion prevents micro-stalls on variable mobile connections.
 * - 1.8s minBufferForPlayback prevents endless 0.65s rebuffer-stall loops on 1080p.
 */
export function getHybridBufferProfile() {
  return {
    preferredForwardBufferDuration: 32,
    waitsToMinimizeStalling: true,
    minBufferForPlayback: 1.8,
  };
}

export function resolveHybridLoadTimeoutMs({
  hasStartedPlayback,
  animePlayback,
}) {
  if (animePlayback) {
    return hasStartedPlayback ? 40_000 : 25_000;
  }
  return 18_000;
}

export function resolveHybridStallTimings() {
  return {
    stallTimeoutMs: 25_000,
    stallRecoveryMs: 12_000,
  };
}

export function shouldTriggerAssignGuard() {
  return false;
}

export function shouldSkipStallNudge() {
  return false;
}

export function shouldPromoteOnRebufferBurst() {
  return false;
}

export function resolvePreservePosition(posSeconds) {
  const n = Number(posSeconds);
  if (!Number.isFinite(n) || n <= 2.5) return 0;
  return n;
}

export function applyProxyPromotion(source) {
  return source;
}
