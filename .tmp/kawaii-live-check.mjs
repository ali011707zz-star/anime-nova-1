const bases = [
  "https://kawaiianime.cc",
  "https://www.kawaii-anime.com",
  "https://kawaii-anime.com",
];
const trustedHosts = new Set([
  "cdn.momentoai.dev",
  "video.kawaii-anime.com",
  "cdn.mewstream.buzz",
  "cdn.watching.onl",
  "cdn.kryntal.top",
  "cdn.imgnex.top",
]);

function isTrusted(url) {
  const host = url.hostname.toLowerCase();
  if (url.protocol !== "https:" || url.username || url.password || url.port) return false;
  if (
    trustedHosts.has(host) ||
    host.endsWith(".kawaii-anime.com") ||
    host.endsWith(".momentoai.dev") ||
    host.endsWith(".mewstream.buzz") ||
    host.endsWith(".imgnex.top")
  ) return true;
  const signed = url.searchParams.has("md5") && [
    "expires", "expire", "exp", "validto",
  ].some(key => url.searchParams.has(key));
  return signed && /^(cdn|video)([.-][a-z0-9-]+)*\./i.test(host);
}

const candidates = bases.flatMap(base => [
  { base, query: "anilistId=113415&ep=1" },
  { base, query: "anilist_id=113415&episode=1" },
]);
const results = await Promise.all(candidates.map(async ({ base, query }) => {
  try {
    const response = await fetch(`${base}/api/miruro?${query}`, {
      headers: {
        Accept: "application/json",
        "User-Agent": "Mozilla/5.0",
        Referer: `${base}/`,
      },
      signal: AbortSignal.timeout(12_000),
    });
    if (!response.ok) return { base, status: response.status, trustedSources: 0 };
    const body = await response.json();
    const payload = body?.data && typeof body.data === "object"
      ? { ...body, ...body.data }
      : body;
    const sources = (payload?.sources || []).flatMap(source => {
      try {
        const url = new URL(source.url, base);
        return isTrusted(url) ? [{ source, url }] : [];
      } catch {
        return [];
      }
    });
    let mediaStatus = null;
    let mediaHost = "";
    const playable = sources.find(({ source, url }) =>
      source.isM3U8 !== true &&
      !/^(hls|m3u8)$/i.test(String(source.type || "")) &&
      !/\.m3u8(?:[?#]|$)/i.test(url.href)
    ) || sources[0];
    if (playable) {
      mediaHost = playable.url.hostname;
      const host = mediaHost.toLowerCase();
      const referer = host.endsWith(".mewstream.buzz")
        ? "https://megaplay.buzz/"
        : payload?.headers?.Referer || payload?.headers?.referer || `${base}/`;
      const mediaResponse = await fetch(playable.url, {
        headers: { Range: "bytes=0-0", Referer: referer },
        signal: AbortSignal.timeout(12_000),
      });
      mediaStatus = mediaResponse.status;
      await mediaResponse.body?.cancel().catch(() => {});
    }
    return {
      base,
      status: response.status,
      trustedSources: sources.length,
      mediaHost,
      mediaStatus,
    };
  } catch (error) {
    return {
      base,
      error: String(error?.name || "fetch error"),
      trustedSources: 0,
    };
  }
}));
console.log(JSON.stringify(results));
