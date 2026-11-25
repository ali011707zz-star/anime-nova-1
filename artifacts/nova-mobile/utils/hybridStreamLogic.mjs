/**
 * Hybrid Direct-First -> Silent Server Proxy Failover logic (v1.0.11).
 * Keeps 0% video traffic on VPS whenever direct phone-IP playback works,
 * while preparing a dormant VPS proxy fallback URL that takes over silently
 * at the exact current timestamp if direct playback fails, blocks, or stalls.
 */

export const DIRECT_PROBE_TIMEOUT_MS = 5500;
export const DIRECT_ASSIGN_GUARD_MS = 7000;
export const DIRECT_REBUFFER_TIMEOUT_MS = 7000;
export const DIRECT_STALL_TIMEOUT_MS = 6000;
export const DIRECT_STALL_RECOVERY_MS = 3000;
export const DIRECT_REBUFFER_BURST_COUNT = 3;
export const DIRECT_REBUFFER_BURST_WINDOW_MS = 45_000;

function trimSlash(baseUrl) {
  return String(baseUrl || "").trim().replace(/\/+$/, "");
}

function safeLower(val) {
  return String(val || "").trim().toLowerCase();
}

export function isOwnVpsProxyUrl(url) {
  const lower = safeLower(url);
  if (!lower) return false;
  if (lower.startsWith("file://")) return true;
  if (lower.includes("/api/anime/hls-proxy") && lower.includes("directsegs=1")) {
    return false;
  }
  return (
    lower.includes("/api/anime/hls-proxy") ||
    lower.includes("/api/anime/video-proxy") ||
    lower.includes("/api/anime/seg-proxy") ||
    lower.includes("/api/animation/hls-proxy") ||
    lower.includes("/api/animation/video-proxy") ||
    lower.includes("/api/dubbed/stream") ||
    lower.includes("/api/aw-dubbed/mf-stream") ||
    lower.includes("/api/tg-media/stream") ||
    lower.includes("/api/tg-stream/")
  );
}

export function stripDirectSegsFlag(url) {
  const raw = String(url || "").trim();
  if (!raw) return "";
  try {
    const parsed = new URL(raw.startsWith("/") ? `https://nova.local${raw}` : raw);
    parsed.searchParams.delete("directSegs");
    parsed.searchParams.delete("directsegs");
    const out = raw.startsWith("/") ? `${parsed.pathname}${parsed.search}` : parsed.toString();
    return out;
  } catch {
    return raw.replace(/([?&])directsegs=1(&|$)/gi, (_, p1, p2) => (p2 === "&" ? p1 : ""));
  }
}

export function inferContentType(url, hint) {
  if (hint === "hls" || hint === "mp4") return hint === "hls" ? "hls" : "progressive";
  if (hint === "progressive") return "progressive";
  const lower = safeLower(url);
  if (/\.m3u8(?:[?#]|$)/i.test(lower) || /\/(?:hls|playlist)\//i.test(lower) || lower.includes("/hls-proxy")) {
    return "hls";
  }
  if (
    /\.(?:mp4|m4v|webm|mov)(?:[?#]|$)/i.test(lower) ||
    lower.includes("/video-proxy") ||
    lower.includes("/api/dubbed/stream") ||
    lower.includes("/api/aw-dubbed/mf-stream") ||
    lower.includes("pixeldrain.com/api/file/")
  ) {
    return "progressive";
  }
  return undefined;
}

function isProtectedLocalOrVip({ url, site, deliveryMode }) {
  const lower = safeLower(url);
  const s = safeLower(site);
  if (!lower) return true;
  if (lower.startsWith("file://")) return true;
  if (s === "nova_tg" || s === "nova_tg_dub" || s === "nova_vip") return true;
  if (deliveryMode === "vps-vip") return true;
  if (lower.includes("/api/tg-media/stream") || lower.includes("/api/tg-stream/")) return true;
  return false;
}

/**
 * Computes a dormant VPS proxy URL for a direct source without fetching it.
 * Returns null if the stream is local, NOVA VIP, already non-direct VPS proxied,
 * or cannot be resolved to a valid HTTP(S) URL.
 */
export function buildVpsProxyFallbackUrl({
  directUrl,
  existingProxyUrl,
  referer,
  baseUrl,
  contentType,
  site,
  deliveryMode,
}) {
  const base = trimSlash(baseUrl);
  const primary = String(directUrl || "").trim();
  const existing = String(existingProxyUrl || "").trim();

  if (!primary || isProtectedLocalOrVip({ url: primary, site, deliveryMode })) {
    return null;
  }

  // If existingProxyUrl is a first-party VPS proxy (/api/...), prefer it after stripping directSegs
  if (existing && (isOwnVpsProxyUrl(existing) || existing.includes("directsegs=1"))) {
    const absExisting = existing.startsWith("/") && base ? `${base}${existing}` : existing;
    const cleaned = stripDirectSegsFlag(absExisting);
    if (cleaned && cleaned !== primary) {
      return cleaned;
    }
  }

  // If primary itself is an hls-proxy URL with directSegs=1, stripping directSegs=1 moves segments to VPS
  if (safeLower(primary).includes("/api/anime/hls-proxy") && safeLower(primary).includes("directsegs=1")) {
    const cleaned = stripDirectSegsFlag(primary);
    return cleaned && cleaned !== primary ? cleaned : null;
  }

  // Already a full server proxy (not directSegs) — no secondary proxy needed
  if (isOwnVpsProxyUrl(primary)) {
    return null;
  }

  if (!/^https?:\/\//i.test(primary) || !base) {
    return null;
  }

  let host = "";
  try {
    host = new URL(primary).hostname.toLowerCase();
  } catch {
    return null;
  }

  const resolvedType = inferContentType(primary, contentType);
  const ref = String(referer || "").trim();

  if (resolvedType === "hls") {
    return ref
      ? `${base}/api/anime/hls-proxy?url=${encodeURIComponent(primary)}&ref=${encodeURIComponent(ref)}`
      : `${base}/api/anime/hls-proxy?url=${encodeURIComponent(primary)}`;
  }

  if (host === "stream.foupix.com") {
    return `${base}/api/dubbed/stream?url=${encodeURIComponent(primary)}`;
  }

  return ref
    ? `${base}/api/anime/video-proxy?url=${encodeURIComponent(primary)}&ref=${encodeURIComponent(ref)}`
    : `${base}/api/anime/video-proxy?url=${encodeURIComponent(primary)}`;
}

/**
 * Decorates a PlayerSource so direct playback runs first while holding a dormant
 * proxyFallback object ready for zero-flicker in-player failover.
 */
export function buildHybridPlayerSource(input) {
  const {
    url,
    existingProxyUrl,
    headers,
    referer,
    baseUrl,
    contentType,
    site,
    deliveryMode,
    ...rest
  } = input || {};

  const cleanUrl = String(url || "").trim();
  const effectiveReferer =
    String(referer || headers?.Referer || headers?.referer || "").trim();

  const fallbackUrl = buildVpsProxyFallbackUrl({
    directUrl: cleanUrl,
    existingProxyUrl,
    referer: effectiveReferer,
    baseUrl,
    contentType,
    site,
    deliveryMode,
  });

  const baseSource = {
    ...rest,
    url: cleanUrl,
    ...(contentType ? { contentType } : {}),
    ...(headers && Object.keys(headers).length > 0 ? { headers } : {}),
    ...(site ? { site } : {}),
  };

  if (!fallbackUrl || fallbackUrl === cleanUrl) {
    return baseSource;
  }

  const fallbackType = inferContentType(fallbackUrl, contentType);
  return {
    ...baseSource,
    proxyFallback: {
      url: fallbackUrl,
      ...(fallbackType ? { contentType: fallbackType } : {}),
      // VPS proxy handles CDN Referer/Origin server-side; omit phone-specific headers
    },
  };
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

/**
 * Resolves loading timeout in ms:
 * - 5.5s startup probe when playing direct with a dormant proxyFallback ready.
 * - 7s rebuffer timeout mid-playback when proxyFallback is still available.
 * - Conservative timeouts when already on proxy or no fallback exists.
 */
export function resolveHybridLoadTimeoutMs({
  hasProxyFallback,
  hasStartedPlayback,
  animePlayback,
}) {
  if (hasProxyFallback) {
    return hasStartedPlayback ? DIRECT_REBUFFER_TIMEOUT_MS : DIRECT_PROBE_TIMEOUT_MS;
  }
  if (animePlayback) {
    return hasStartedPlayback ? 40_000 : 25_000;
  }
  return 18_000;
}

export function resolveHybridStallTimings({ hasProxyFallback }) {
  if (hasProxyFallback) {
    return {
      stallTimeoutMs: DIRECT_STALL_TIMEOUT_MS,
      stallRecoveryMs: DIRECT_STALL_RECOVERY_MS,
    };
  }
  return {
    stallTimeoutMs: 25_000,
    stallRecoveryMs: 12_000,
  };
}

/**
 * Assign guard must never abort a direct stream that already reached readyToPlay,
 * started playing, or is actively seeking to a resume position.
 */
export function shouldTriggerAssignGuard({
  hasProxyFallback,
  readyLogged,
  playingLogged,
  hasPendingSeek,
}) {
  if (!hasProxyFallback) return false;
  if (readyLogged || playingLogged || hasPendingSeek) return false;
  return true;
}

/**
 * When a dormant proxyFallback is available, skip stall-nudge seeks on a throttled
 * direct stream and promote directly to the server proxy instead of looping.
 */
export function shouldSkipStallNudge({ hasProxyFallback }) {
  return Boolean(hasProxyFallback);
}

/**
 * Detects frequent rebuffer bursts (3+ non-seek rebuffers within 45s) on direct
 * streams so unstable direct CDNs hand over silently to the VPS proxy.
 */
export function shouldPromoteOnRebufferBurst({
  hasProxyFallback,
  rebufferTimestamps,
  nowMs,
  windowMs = DIRECT_REBUFFER_BURST_WINDOW_MS,
  threshold = DIRECT_REBUFFER_BURST_COUNT,
}) {
  if (!hasProxyFallback || !Array.isArray(rebufferTimestamps)) return false;
  const cutoff = nowMs - windowMs;
  const recent = rebufferTimestamps.filter((ts) => typeof ts === "number" && ts >= cutoff);
  return recent.length >= threshold;
}

/**
 * Avoids forcing a redundant seek/rebuffer when failover happens in the first 2.5s.
 */
export function resolvePreservePosition(posSeconds) {
  const n = Number(posSeconds);
  if (!Number.isFinite(n) || n <= 2.5) return 0;
  return n;
}

/**
 * Applies a silent proxyFallback swap for a source entry without changing array order or index.
 */
export function applyProxyPromotion(source, promotedEntry) {
  if (!source || !promotedEntry?.url) return source;
  return {
    ...source,
    url: promotedEntry.url,
    contentType: promotedEntry.contentType ?? source.contentType,
    headers: promotedEntry.headers,
    proxyFallback: undefined,
  };
}
