import { Router, type Request, type Response } from "express";

const router = Router();

const HLS_CONTENT_TYPE = "application/vnd.apple.mpegurl";
const DEFAULT_USER_AGENT = "Mozilla/5.0";
const CACHE_TTL_MS = 60_000;

type CacheEntry = {
  body: string;
  expiresAt: number;
};

const cache = new Map<string, CacheEntry>();

function queryValue(value: unknown, fallback = ""): string {
  if (Array.isArray(value)) return String(value[0] ?? fallback);
  return typeof value === "string" ? value : fallback;
}

function absolutePlaylistUris(body: string, manifestUrl: string): string {
  const resolveUri = (uri: string): string => {
    const trimmed = uri.trim();
    if (!trimmed || trimmed.startsWith("data:") || trimmed.startsWith("skd:")) return uri;
    try {
      return new URL(trimmed, manifestUrl).toString();
    } catch {
      return uri;
    }
  };

  return body
    .split(/\r?\n/)
    .map((line) => {
      const trimmed = line.trim();

      // Media playlists put segment/child-playlist URIs on their own lines.
      if (trimmed && !trimmed.startsWith("#")) {
        const start = line.indexOf(trimmed);
        return `${line.slice(0, start)}${resolveUri(trimmed)}`;
      }

      // Keep key/map/subtitle URIs usable when they are relative too.
      return line.replace(
        /(\bURI=)(["'])([^"']+)(\2)/gi,
        (_match, prefix: string, quote: string, uri: string, closingQuote: string) =>
          `${prefix}${quote}${resolveUri(uri)}${closingQuote}`,
      );
    })
    .join("\n");
}

function cacheKey(url: string, referer: string, userAgent: string): string {
  return `${url}\n${referer}\n${userAgent}`;
}

/**
 * Manifest-only HLS proxy for mobile playback.
 *
 * It deliberately does not proxy .ts/.m4s segments. The returned playlist
 * contains absolute upstream URLs, so ExoPlayer fetches media bytes directly
 * while the manifest request still gets the required upstream headers.
 */
router.get("/proxy/hls", async (req: Request, res: Response) => {
  const url = queryValue(req.query.url).trim();
  const referer = queryValue(req.query.referer).trim();
  const userAgent = queryValue(req.query.ua, DEFAULT_USER_AGENT).trim() || DEFAULT_USER_AGENT;

  if (!url) {
    res.status(400).send("missing url");
    return;
  }

  let upstreamUrl: URL;
  try {
    upstreamUrl = new URL(url);
    if (!["http:", "https:"].includes(upstreamUrl.protocol)) throw new Error("unsupported protocol");
  } catch {
    res.status(400).send("invalid url");
    return;
  }

  const key = cacheKey(upstreamUrl.toString(), referer, userAgent);
  const now = Date.now();
  const cached = cache.get(key);
  if (cached && cached.expiresAt > now) {
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Content-Type", HLS_CONTENT_TYPE);
    res.setHeader("Cache-Control", "public, max-age=60");
    res.send(cached.body);
    return;
  }
  if (cached) cache.delete(key);

  try {
    const upstream = await fetch(upstreamUrl, {
      headers: {
        Referer: referer,
        "User-Agent": userAgent,
        Accept: "*/*",
      },
      signal: AbortSignal.timeout(10_000),
      redirect: "follow",
    });

    const text = await upstream.text();
    if (!upstream.ok || !text.includes("#EXTM3U")) {
      res.status(500).send("Invalid HLS response");
      return;
    }

    const body = absolutePlaylistUris(text, upstream.url || upstreamUrl.toString());
    cache.set(key, { body, expiresAt: now + CACHE_TTL_MS });
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Content-Type", HLS_CONTENT_TYPE);
    res.setHeader("Cache-Control", "public, max-age=60");
    res.send(body);
  } catch (error) {
    const message = error instanceof Error ? error.message : String(error);
    res.status(502).send(`Fetch failed: ${message}`);
  }
});

export default router;