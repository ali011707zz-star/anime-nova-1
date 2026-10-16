export function buildMediaRequestHeaders({
  baseHeaders = {},
  referer = "",
  range = "",
  ifRange = "",
  userAgent = "",
} = {}) {
  const headers = { ...baseHeaders };
  if (userAgent === "IBRAHIMSEVEN") headers["User-Agent"] = "IBRAHIMSEVEN";
  if (referer) {
    headers.Referer = referer;
    try {
      headers.Origin = new URL(referer).origin;
    } catch {
      // Keep the Referer even if it is not a valid URL; the caller validates it.
    }
  }
  if (range) headers.Range = range;
  if (ifRange) headers["If-Range"] = ifRange;
  return headers;
}

function setResponseStatus(res, status) {
  if (typeof res.status === "function") res.status(status);
  else res.statusCode = status;
}

export async function copyMediaResponse(upstream, res, {
  mp4Hint = false,
  onFirstChunk,
  onEnd,
  onError,
} = {}) {
  let contentType = upstream.headers.get("content-type") || (mp4Hint ? "video/mp4" : "video/MP2T");
  if (
    (contentType === "application/octet-stream" || contentType === "binary/octet-stream") &&
    mp4Hint
  ) contentType = "video/mp4";

  res.setHeader("Content-Type", contentType);
  for (const [sourceName, outputName] of [
    ["accept-ranges", "Accept-Ranges"],
    ["content-length", "Content-Length"],
    ["content-range", "Content-Range"],
    ["etag", "ETag"],
  ]) {
    const value = upstream.headers.get(sourceName);
    if (value) res.setHeader(outputName, value);
  }
  setResponseStatus(res, upstream.status);

  if (!upstream.body) {
    res.end();
    return {
      status: upstream.status,
      contentType,
      contentRange: upstream.headers.get("content-range"),
      acceptRanges: upstream.headers.get("accept-ranges"),
    };
  }

  const { Readable } = await import("node:stream");
  const stream = Readable.fromWeb(upstream.body);
  let bytes = 0;
  let started = false;
  stream.on("data", chunk => {
    const length = typeof chunk === "string" ? Buffer.byteLength(chunk) : (chunk?.byteLength || 0);
    bytes += length;
    if (!started) {
      started = true;
      try { onFirstChunk?.(length); } catch {}
    }
  });
  stream.once("end", () => {
    try { onEnd?.(bytes); } catch {}
  });
  stream.once("error", error => {
    try { onError?.(error instanceof Error ? error.name : "Error", bytes); } catch {}
  });
  stream.pipe(res);
  return {
    status: upstream.status,
    contentType,
    contentRange: upstream.headers.get("content-range"),
    acceptRanges: upstream.headers.get("accept-ranges"),
  };
}
