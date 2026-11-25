/**
 * Hybrid Direct-First -> Silent Server Proxy Failover logic (v1.0.11).
 * Keeps 0% video traffic on VPS whenever direct phone-IP playback works,
 * while preparing a dormant VPS proxy fallback URL that takes over silently
 * at the exact current timestamp if direct playback fails, blocks, or stalls.
 */

export const DIRECT_PROBE_TIMEOUT_MS = 3000;
export const DIRECT_REBUFFER_TIMEOUT_MS = 10_000;
export const DIRECT_STALL_TIMEOUT_MS = 8000;
export const DIRECT_STALL_RECOVERY_MS = 3500;

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
 * Resolves loading timeout in ms:
 * - Fast 3s startup probe when playing direct with a dormant proxyFallback ready.
 * - Faster 10s rebuffer timeout mid-playback when proxyFallback is still available.
 * - Existing conservative timeouts when already on proxy or no fallback exists.
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
