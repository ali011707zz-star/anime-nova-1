const TRACE_ID_PATTERN = /^[a-z0-9_-]{8,36}$/i;
const VPS_STREAM_PATH_PATTERN =
  /^\/api\/(?:(?:anime|animation)\/(?:hls|video|seg)-proxy|dubbed\/stream(?:\.mp4)?|aw-dubbed\/mf-stream)$/i;

export function createPlaybackTraceId(): string {
  return `${Date.now().toString(36)}-${Math.random().toString(36).slice(2, 9)}`;
}

/**
 * Attach a non-identifying trace ID only to this app's own media-proxy URLs.
 * Provider URLs, tokens, and query strings are never logged or modified here.
 */
export function withPlaybackTrace(
  rawUrl: string,
  traceId: string,
  baseUrl: string,
): string {
  if (!TRACE_ID_PATTERN.test(traceId)) return rawUrl;
  try {
    const url = new URL(rawUrl, baseUrl);
    const base = new URL(baseUrl);
    if (url.origin !== base.origin || !VPS_STREAM_PATH_PATTERN.test(url.pathname)) {
      return rawUrl;
    }
    url.searchParams.set("trace", traceId);
    return url.toString();
  } catch {
    return rawUrl;
  }
}
