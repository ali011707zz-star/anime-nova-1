const MEDIA_PROXY_PATH = /^\/api\/(?:anime|animation)\/(?:video|hls|seg)-proxy$/i;

/** Express has already decoded a query parameter once; preserve that value. */
export function readExpressDecodedQueryString(value) {
  return typeof value === "string" ? value.trim() : "";
}

/**
 * Read the inner media URL from a proxy URL using URLSearchParams' single
 * query decoding pass. Never apply decodeURIComponent to the returned URL.
 */
export function sourceMediaUrl(value) {
  const input = typeof value === "string" ? value.trim() : "";
  if (!input) return "";
  try {
    const parsed = new URL(input, "https://nova.invalid");
    if (!MEDIA_PROXY_PATH.test(parsed.pathname)) return input;
    return parsed.searchParams.get("url") || input;
  } catch {
    return input;
  }
}

export function signedUrlExpiryMs(value) {
  const target = sourceMediaUrl(value);
  try {
    const params = new URL(target).searchParams;
    for (const key of ["validto", "expires", "expire", "exp"]) {
      const raw = params.get(key);
      if (!raw || !/^\d{10}(?:\d{3})?$/.test(raw)) continue;
      const numeric = Number(raw);
      return raw.length === 13 ? numeric : numeric * 1000;
    }
  } catch {
    // An unparseable or encrypted URL has no inspectable signed expiry.
  }
  return null;
}

export function hasExpiredSignedSource(sources, now = Date.now()) {
  for (const source of sources || []) {
    for (const value of [
      source?.directUrl,
      source?.url,
      source?.proxyUrl,
      source?.rawUrl,
    ]) {
      if (!value) continue;
      const expiry = signedUrlExpiryMs(value);
      if (expiry !== null && expiry <= now) return true;
    }
  }
  return false;
}

/** Used for both process-local rows and serialized Supabase L2 rows. */
export function isSourceCacheEntryStale(sources, expiresAt, now = Date.now()) {
  return !Number.isFinite(expiresAt) ||
    now > expiresAt ||
    hasExpiredSignedSource(sources, now);
}
