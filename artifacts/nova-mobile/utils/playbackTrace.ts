export function createPlaybackTraceId(): string {
  const time = Date.now().toString(36);
  const entropy = Math.random().toString(36).slice(2, 9);
  return `${time}-${entropy}`;
}

export function withPlaybackTrace(
  rawUrl: string | undefined,
  traceId: string,
  baseUrl: string,
): string {
  if (!rawUrl) return "";

  try {
    const url = new URL(rawUrl, baseUrl);
    url.searchParams.set("trace", traceId);
    return url.toString();
  } catch {
    const separator = rawUrl.includes("?") ? "&" : "?";
    return `${rawUrl}${separator}trace=${encodeURIComponent(traceId)}`;
  }
}
