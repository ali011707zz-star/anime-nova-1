import type { FilmServerLink, TmdbMediaType } from "./filmCatalog";

const VIXSRC_ORIGIN = "https://vixsrc.to";
const VIX_UA =
  "Mozilla/5.0 (Linux; Android 13) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36";

const CACHE_TTL_MS = 10 * 60_000;
const CACHE_MAX = 40;
const vixCache = new Map<string, { ts: number; link: FilmServerLink | null }>();

function getCached(key: string): FilmServerLink | null | undefined {
  const hit = vixCache.get(key);
  if (!hit) return undefined;
  if (Date.now() - hit.ts > CACHE_TTL_MS) {
    vixCache.delete(key);
    return undefined;
  }
  return hit.link;
}

function setCached(key: string, link: FilmServerLink | null) {
  if (vixCache.size >= CACHE_MAX) {
    const oldest = vixCache.keys().next().value;
    if (oldest) vixCache.delete(oldest);
  }
  vixCache.set(key, { ts: Date.now(), link });
}

async function fetchWithTimeout(
  url: string,
  headers: Record<string, string>,
  timeoutMs: number,
  outerSignal?: AbortSignal,
): Promise<Response> {
  const controller = new AbortController();
  const onOuterAbort = () => controller.abort();
  if (outerSignal) {
    if (outerSignal.aborted) throw new Error("aborted");
    outerSignal.addEventListener("abort", onOuterAbort, { once: true });
  }
  const timer = setTimeout(() => controller.abort(), timeoutMs);
  try {
    return await fetch(url, { headers, signal: controller.signal });
  } finally {
    clearTimeout(timer);
    if (outerSignal) outerSignal.removeEventListener("abort", onOuterAbort);
  }
}

/**
 * Client-side Cobalt (VixSrc) HLS resolver.
 * Executes directly on the user device IP (zero VPS proxy / zero VPS RAM or bandwidth).
 */
export async function resolveVixSrcClient(params: {
  tmdbId: number;
  type: TmdbMediaType;
  season?: number;
  episode?: number;
  forceRefresh?: boolean;
  signal?: AbortSignal;
}): Promise<FilmServerLink | null> {
  const tmdbId = Number(params.tmdbId || 0);
  if (!Number.isFinite(tmdbId) || tmdbId <= 0) return null;
  const type: TmdbMediaType = params.type === "tv" ? "tv" : "movie";
  const season = Math.max(1, Number(params.season || 1));
  const episode = Math.max(1, Number(params.episode || 1));

  const cacheKey = `${type}:${tmdbId}:s${season}:e${episode}`;
  if (!params.forceRefresh) {
    const cached = getCached(cacheKey);
    if (cached !== undefined) return cached;
  }

  try {
    const pageReferer =
      type === "tv"
        ? `${VIXSRC_ORIGIN}/tv/${tmdbId}/${season}/${episode}`
        : `${VIXSRC_ORIGIN}/movie/${tmdbId}`;
    const apiUrl =
      type === "tv"
        ? `${VIXSRC_ORIGIN}/api/tv/${tmdbId}/${season}/${episode}`
        : `${VIXSRC_ORIGIN}/api/movie/${tmdbId}`;

    // Step 1: Resolve embed path from VixSrc API
    const apiRes = await fetchWithTimeout(
      apiUrl,
      {
        "User-Agent": VIX_UA,
        Accept: "application/json, text/plain, */*",
        Referer: pageReferer,
      },
      5500,
      params.signal,
    );
    if (!apiRes.ok) {
      setCached(cacheKey, null);
      return null;
    }
    const apiJson = (await apiRes.json().catch(() => null)) as { src?: string } | null;
    const rawSrc = String(apiJson?.src || "").trim();
    if (!rawSrc) {
      setCached(cacheKey, null);
      return null;
    }
    const embedUrl = rawSrc.startsWith("http")
      ? rawSrc
      : `${VIXSRC_ORIGIN}${rawSrc.startsWith("/") ? "" : "/"}${rawSrc}`;

    // Step 2: Fetch embed HTML to extract masterPlaylist token & expires
    const embedRes = await fetchWithTimeout(
      embedUrl,
      {
        "User-Agent": VIX_UA,
        Accept: "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
        Referer: pageReferer,
      },
      6000,
      params.signal,
    );
    if (!embedRes.ok) return null;
    const html = await embedRes.text();

    const masterBlockMatch = html.match(/masterPlaylist\s*=\s*\{[\s\S]{0,600}?\}/);
    const block = masterBlockMatch ? masterBlockMatch[0] : html;
    const urlMatch = block.match(/url\s*:\s*['"]([^'"]+)['"]/);
    const tokenMatch = block.match(/['"]token['"]\s*:\s*['"]([^'"]+)['"]/);
    const expiresMatch = block.match(/['"]expires['"]\s*:\s*['"]([^'"]+)['"]/);
    const asnMatch = block.match(/['"]asn['"]\s*:\s*['"]([^'"]*)['"]/);

    if (!urlMatch?.[1] || !tokenMatch?.[1] || !expiresMatch?.[1]) return null;

    const basePlaylistUrl = urlMatch[1].replace(/\\\//g, "/");
    const token = tokenMatch[1];
    const expires = expiresMatch[1];
    const asn = asnMatch?.[1] || "";
    const canPlayFHD = /window\.canPlayFHD\s*=\s*true/i.test(html);

    const sep = basePlaylistUrl.includes("?") ? "&" : "?";
    const asnPart = asn ? `&asn=${encodeURIComponent(asn)}` : "";
    const playlistUrl = `${basePlaylistUrl}${sep}token=${encodeURIComponent(token)}&expires=${encodeURIComponent(expires)}${asnPart}&h=1&lang=en`;

    const playHeaders: Record<string, string> = {
      Referer: embedUrl,
      Origin: VIXSRC_ORIGIN,
      "User-Agent": VIX_UA,
    };

    // Step 3: Validate playlist directly on the device IP so we never show a dead/403 server
    const m3u8Res = await fetchWithTimeout(
      playlistUrl,
      {
        ...playHeaders,
        Accept: "application/vnd.apple.mpegurl, application/x-mpegURL, */*",
      },
      6000,
      params.signal,
    );
    if (!m3u8Res.ok) return null;
    const m3u8Text = await m3u8Res.text();
    if (!m3u8Text.includes("#EXTM3U")) return null;

    const isFhd =
      canPlayFHD ||
      /RESOLUTION=\d+x1080|RESOLUTION=1920x|1080p/i.test(m3u8Text);

    const link: FilmServerLink = {
      id: `cb-vixsrc-${cacheKey}`,
      name: "السيرفر CB",
      label: "السيرفر CB",
      url: playlistUrl,
      directUrl: playlistUrl,
      site: "cb",
      quality: isFhd ? "1080p FHD" : "720p HD",
      qualityTier: isFhd ? "FHD" : "HD",
      tier: isFhd ? "1080p FHD" : "720p HD",
      kind: "hls",
      type: "hls",
      isEmbed: false,
      headers: playHeaders,
      note: "بث مباشر HLS فائق السرعة",
      recommended: true,
      clientSideOnly: true,
    };

    setCached(cacheKey, link);
    return link;
  } catch {
    return null;
  }
}
