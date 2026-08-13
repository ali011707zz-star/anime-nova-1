import { encryptParam } from "./security.js";
import { isDubbedSearchVariant, isNonOriginalVideo } from "./source-policy.js";
import { lookupAniListTitle } from "./anilist-title.js";

/**
 * Consumet is self-hosted on the VPS. Nova consumes only the provider's
 * direct media URLs; subtitle tracks and embed pages are intentionally not
 * forwarded to either client.
 */
type ConsumetProvider = {
  site: string;
  provider: string;
  label: string;
};

// No Consumet provider is currently approved for production. Keep the
// adapter typed so stale clients can still be rejected cleanly by the route.
export const CONSUMET_SOURCES: readonly ConsumetProvider[] = [
  { site: "consumet_gogo", provider: "gogoanime", label: "GogoAnime" },
];

type ConsumetSite = (typeof CONSUMET_SOURCES)[number]["site"];

type ConsumetVideo = {
  url?: unknown;
  quality?: unknown;
  isM3U8?: unknown;
  isDASH?: unknown;
  type?: unknown;
  server?: unknown;
  headers?: Record<string, string>;
  hardsub?: unknown;
  hardSub?: unknown;
  dub?: unknown;
  language?: unknown;
  isDub?: unknown;
  audio?: unknown;
  burnedSub?: unknown;
  subtitles?: unknown;
  tracks?: unknown;
  name?: unknown;
};

type ConsumetWatchPayload = {
  sources?: ConsumetVideo[];
  headers?: Record<string, string>;
  sub?: { sources?: ConsumetVideo[]; headers?: Record<string, string> };
  data?: { sources?: ConsumetVideo[]; headers?: Record<string, string> };
};

type ConsumetEpisode = {
  id?: unknown;
  number?: unknown;
  episodeNumber?: unknown;
  title?: unknown;
  name?: unknown;
};

type NovaSource = {
  name: string;
  url: string;
  quality: string;
  qualityRank: number;
  site: string;
  directUrl: string;
  directType: "hls" | "mp4";
  isEmbed: false;
  hasBuiltinSub: false;
  corsOk?: boolean;
  headers?: Record<string, string>;
};

// Search, info, and watch are separate upstream calls. Keep each call short
// enough that the frontend's per-source budget can cover all three.
const REQUEST_TIMEOUT_MS = 9_000;
let missingUrlWarningShown = false;

function consumetBaseUrl(): string {
  return (process.env.CONSUMET_API_URL || "").trim().replace(/\/+$/, "");
}

function providerForSite(site: string) {
  return CONSUMET_SOURCES.find(item => item.site === site);
}

function encodePath(value: string): string {
  return value.split("/").map(part => encodeURIComponent(part)).join("/");
}

async function getJson<T>(url: string): Promise<T | null> {
  try {
    const response = await fetch(url, {
      headers: {
        Accept: "application/json",
        "User-Agent": "Anime-NOVA-Consumet/1.0",
      },
      signal: AbortSignal.timeout(REQUEST_TIMEOUT_MS),
    });
    if (!response.ok) return null;
    return await response.json() as T;
  } catch {
    return null;
  }
}

async function resolveGogoPlayer(
  playerUrl: string,
): Promise<{ url: string; referer: string } | null> {
  try {
    const playerResponse = await fetch(playerUrl, {
      headers: {
        Accept: "text/html,*/*",
        Referer: "https://gogoanime.me.uk/",
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124 Safari/537.36",
      },
      signal: AbortSignal.timeout(REQUEST_TIMEOUT_MS),
    });
    if (!playerResponse.ok) return null;
    const playerHtml = await playerResponse.text();
    const iframeMatch = playerHtml.match(/<iframe[^>]+src=["']([^"']+)["']/i);
    const iframeUrl = iframeMatch?.[1]?.replace(/&amp;/g, "&") || "";
    if (!/^https?:\/\/megaplay\.buzz\//i.test(iframeUrl)) return null;

    const megaResponse = await fetch(iframeUrl, {
      headers: {
        Accept: "text/html,*/*",
        Referer: "https://gogoanime.me.uk/",
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124 Safari/537.36",
      },
      signal: AbortSignal.timeout(REQUEST_TIMEOUT_MS),
    });
    if (!megaResponse.ok) return null;
    const megaHtml = await megaResponse.text();
    const dataId = megaHtml.match(/data-id=["'](\d+)["']/i)?.[1];
    if (!dataId) return null;

    const sourceResponse = await fetch(
      `https://megaplay.buzz/stream/getSourcesNew?id=${dataId}&category=sub`,
      {
        headers: {
          Accept: "application/json",
          Referer: iframeUrl,
          "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124 Safari/537.36",
          "X-Requested-With": "XMLHttpRequest",
        },
        signal: AbortSignal.timeout(REQUEST_TIMEOUT_MS),
      },
    );
    if (!sourceResponse.ok) return null;
    const sourcePayload = await sourceResponse.json() as {
      file?: unknown;
      url?: unknown;
      sources?: { file?: unknown; url?: unknown } | Array<{ file?: unknown; url?: unknown }>;
    };
    const sourceEntries = Array.isArray(sourcePayload.sources)
      ? sourcePayload.sources
      : sourcePayload.sources ? [sourcePayload.sources] : [];
    const mediaValue = sourceEntries.find(entry =>
      typeof entry.file === "string" || typeof entry.url === "string"
    );
    const mediaUrl = String(
      mediaValue?.file ?? mediaValue?.url ?? sourcePayload.file ?? sourcePayload.url ?? "",
    ).trim();
    if (!/^https?:\/\/.+\.m3u8(?:[?#]|$)/i.test(mediaUrl)) return null;
    return { url: mediaUrl, referer: "https://megaplay.buzz/" };
  } catch {
    return null;
  }
}

function normalizeTitle(value: string): string {
  return value
    .toLowerCase()
    .replace(/\([^)]*\)|\[[^\]]*\]/g, " ")
    .replace(/season\s+\d+|\bs\d+\b/gi, " ")
    .replace(/[^a-z0-9\u0600-\u06ff]+/g, " ")
    .replace(/\s+/g, " ")
    .trim();
}

function titleScore(candidate: string, queries: string[]): number {
  const normalized = normalizeTitle(candidate);
  if (!normalized) return 0;
  let best = 0;
  for (const query of queries) {
    const target = normalizeTitle(query);
    if (!target) continue;
    if (normalized === target) best = Math.max(best, 1);
    else if (normalized.includes(target) || target.includes(normalized)) best = Math.max(best, 0.86);
    else {
      const tokens = new Set(target.split(" ").filter(Boolean));
      const matching = normalized.split(" ").filter(token => tokens.has(token)).length;
      best = Math.max(best, tokens.size ? matching / tokens.size : 0);
    }
  }
  return best;
}

function qualityInfo(video: ConsumetVideo): { label: string; rank: number } {
  const raw = `${video.quality || ""} ${video.server || ""}`.toLowerCase();
  if (raw.includes("2160") || raw.includes("4k")) return { label: "4K", rank: 24 };
  if (raw.includes("1440")) return { label: "1440p", rank: 21 };
  if (raw.includes("1080") || raw.includes("fhd")) return { label: "1080p FHD", rank: 18 };
  if (raw.includes("720") || raw.includes("hd")) return { label: "720p HD", rank: 13 };
  if (raw.includes("480")) return { label: "480p", rank: 8 };
  if (raw.includes("360") || raw.includes("sd")) return { label: "360p SD", rank: 5 };
  const label = String(video.quality || "").trim();
  return {
    label: /^(?:auto|default|original|unknown)?$/i.test(label) ? "Auto" : label,
    rank: 0,
  };
}

function playableType(video: ConsumetVideo, url: string): "hls" | "mp4" | null {
  const lower = url.toLowerCase();
  const type = String(video.type || "").toLowerCase();

  // Do not expose subtitle files, dub variants, DASH manifests, or embed pages.
  if (
    video.isDASH ||
    isNonOriginalVideo(video as Record<string, unknown>, url) ||
    type.includes("embed") ||
    type.includes("iframe")
  ) return null;
  if (/\.(?:vtt|srt|ass|ssa)(?:[?#]|$)/i.test(lower) || lower.includes("/subtitle")) return null;
  if (Boolean(video.isM3U8) || /\.m3u8(?:[?#]|$)/i.test(lower)) return "hls";
  if (type.includes("mp4") || type.includes("video") || /\.(?:mp4|webm)(?:[?#]|$)/i.test(lower)) return "mp4";
  return null;
}

function qualityFromHeight(height: number): { label: string; rank: number } {
  if (height >= 2160) return { label: "4K", rank: 24 };
  if (height >= 1440) return { label: "1440p", rank: 21 };
  if (height >= 1080) return { label: "1080p FHD", rank: 18 };
  if (height >= 720) return { label: "720p HD", rank: 13 };
  if (height >= 480) return { label: "480p", rank: 8 };
  if (height > 0) return { label: "360p SD", rank: 5 };
  return { label: "Auto", rank: 0 };
}

const hlsQualityCache = new Map<string, { quality: { label: string; rank: number }; expiresAt: number }>();
export type HlsVariant = { url: string; label: string; rank: number };
const hlsVariantsCache = new Map<string, { variants: HlsVariant[]; expiresAt: number }>();
const hlsManifestCache = new Map<string, { valid: boolean; expiresAt: number }>();

function hlsVariantQuality(attributes: string): { label: string; rank: number } {
  const resolution = attributes.match(/(?:^|,)RESOLUTION=\d+x(\d+)/i);
  if (resolution) return qualityFromHeight(Number(resolution[1]));
  const namedQuality = attributes.match(/(?:^|,)(?:NAME|VIDEO)=["']?([^,"']+)/i)?.[1] || "";
  if (/2160|4k/i.test(namedQuality)) return qualityFromHeight(2160);
  if (/1440/i.test(namedQuality)) return qualityFromHeight(1440);
  if (/1080|fhd/i.test(namedQuality)) return qualityFromHeight(1080);
  if (/720|hd/i.test(namedQuality)) return qualityFromHeight(720);
  if (/480/i.test(namedQuality)) return qualityFromHeight(480);
  if (/360|sd/i.test(namedQuality)) return qualityFromHeight(360);
  // Some RE/FlixCloud masters omit RESOLUTION and only advertise bitrate.
  // Treat the bandwidth as a quality hint instead of collapsing every variant
  // into the generic Auto/360 bucket.
  const bandwidth = Number(attributes.match(/(?:^|,)AVERAGE-BANDWIDTH=(\d+)/i)?.[1]
    || attributes.match(/(?:^|,)BANDWIDTH=(\d+)/i)?.[1]
    || 0);
  if (bandwidth >= 2_000_000) return qualityFromHeight(1080);
  if (bandwidth >= 1_000_000) return qualityFromHeight(720);
  if (bandwidth >= 500_000) return qualityFromHeight(480);
  if (bandwidth > 0) return qualityFromHeight(360);
  return { label: "Auto", rank: 0 };
}

/**
 * Return the real variant playlists advertised by an HLS master. This is
 * needed by AnimeKai because one master URL otherwise gets classified as the
 * fallback 360p row even when it contains 1080p/720p/480p variants.
 */
export async function probeHlsVariants(url: string, referer: string): Promise<HlsVariant[]> {
  const cached = hlsVariantsCache.get(url);
  if (cached && cached.expiresAt > Date.now()) return cached.variants;
  try {
    const response = await fetch(url, {
      headers: {
        Accept: "application/vnd.apple.mpegurl,application/x-mpegURL,*/*",
        Referer: referer,
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124 Safari/537.36",
      },
      // Reanime/Anivexa signed manifests can take a few seconds on the VPS.
      // A short probe timeout made a healthy master fall back to Auto/360.
       signal: AbortSignal.timeout(12_000),
    });
    if (!response.ok) return [];
    const manifest = await response.text();
    const valid = /^\s*#EXTM3U(?:\s|$)/m.test(manifest);
    const expiresAt = Date.now() + 5 * 60_000;
    hlsManifestCache.set(url, { valid, expiresAt });
    const lines = manifest.split(/\r?\n/);
    const variants: HlsVariant[] = [];
    const seenRanks = new Set<number>();
    for (let index = 0; index < lines.length; index++) {
      const line = lines[index]?.trim() || "";
      if (!line.toUpperCase().startsWith("#EXT-X-STREAM-INF:")) continue;
      const quality = hlsVariantQuality(line.slice(line.indexOf(":") + 1));
      if (quality.rank <= 0 || seenRanks.has(quality.rank)) continue;
      const variantPath = lines.slice(index + 1).find(candidate => {
        const value = candidate.trim();
        return Boolean(value) && !value.startsWith("#");
      })?.trim();
      if (!variantPath) continue;
      let variantUrl = "";
      try { variantUrl = new URL(variantPath, url).toString(); } catch { continue; }
      variants.push({ url: variantUrl, label: quality.label, rank: quality.rank });
      seenRanks.add(quality.rank);
    }
    variants.sort((a, b) => b.rank - a.rank);
    hlsVariantsCache.set(url, { variants, expiresAt });
    return variants;
  } catch {
    return [];
  }
}

/**
 * Verify that an upstream URL actually returned an HLS playlist. A number of
 * providers answer 200 with an encrypted blob or an HTML error page while
 * still advertising an m3u8 content type. Those URLs must not become green
 * source cards or reach hls-proxy.
 */
export async function probeHlsManifest(url: string, referer: string): Promise<boolean> {
  const cached = hlsManifestCache.get(url);
  if (cached && cached.expiresAt > Date.now()) return cached.valid;
  try {
    const response = await fetch(url, {
      headers: {
        Accept: "application/vnd.apple.mpegurl,application/x-mpegURL,*/*",
        Referer: referer,
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124 Safari/537.36",
      },
      signal: AbortSignal.timeout(12_000),
    });
    if (!response.ok) {
      hlsManifestCache.set(url, { valid: false, expiresAt: Date.now() + 60_000 });
      return false;
    }
    const body = await response.text();
    const valid = /^\s*#EXTM3U(?:\s|$)/m.test(body);
    hlsManifestCache.set(url, { valid, expiresAt: Date.now() + 5 * 60_000 });
    return valid;
  } catch {
    hlsManifestCache.set(url, { valid: false, expiresAt: Date.now() + 60_000 });
    return false;
  }
}

/**
 * Providers often label a master playlist as `auto` or `HD-1`. Read the
 * advertised variant resolutions so the picker never calls a 720p stream
 * 1080p, and can expose a real 1080p master when one exists.
 */
export async function probeHlsQuality(
  url: string,
  referer: string,
): Promise<{ label: string; rank: number }> {
  const cached = hlsQualityCache.get(url);
  if (cached && cached.expiresAt > Date.now()) return cached.quality;
  try {
    const response = await fetch(url, {
      headers: {
        Accept: "application/vnd.apple.mpegurl,application/x-mpegURL,*/*",
        Referer: referer,
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124 Safari/537.36",
      },
      signal: AbortSignal.timeout(5_000),
    });
    if (!response.ok) return { label: "Auto", rank: 0 };
    const manifest = await response.text();
    let maxHeight = 0;
    for (const match of manifest.matchAll(/#EXT-X-STREAM-INF:([^\r\n]*)/gi)) {
      const attributes = match[1] || "";
      const quality = hlsVariantQuality(attributes);
      const height = quality.rank >= 24 ? 2160
        : quality.rank >= 21 ? 1440
          : quality.rank >= 18 ? 1080
            : quality.rank >= 13 ? 720
              : quality.rank >= 8 ? 480
                : quality.rank > 0 ? 360 : 0;
      if (Number.isFinite(height)) maxHeight = Math.max(maxHeight, height);
    }
    const quality = qualityFromHeight(maxHeight);
    hlsQualityCache.set(url, { quality, expiresAt: Date.now() + 5 * 60_000 });
    return quality;
  } catch {
    return { label: "Auto", rank: 0 };
  }
}

function proxyUrl(kind: "hls" | "mp4", rawUrl: string, referer: string): string {
  const route = kind === "hls" ? "hls-proxy" : "video-proxy";
  const params = new URLSearchParams({ url: encryptParam(rawUrl) });
  if (referer) params.set("ref", encryptParam(referer));
  return `/api/anime/${route}?${params.toString()}`;
}

function queryCandidates(title: string, english: string | null, variants: string[]): string[] {
  return [english || "", title, ...variants]
    .map(value => value.trim())
    .filter(Boolean)
    .filter((value, index, all) => all.indexOf(value) === index)
    .slice(0, 3);
}

function resultTitle(item: any): string {
  const title = item?.title;
  if (typeof title === "string") return title;
  if (title && typeof title === "object") {
    return String(title.english || title.romaji || title.userPreferred || title.native || "");
  }
  return String(item?.name || item?.titleText || "");
}

function watchVideos(payload: ConsumetWatchPayload | null): ConsumetVideo[] {
  if (!payload) return [];
  // `sub` is provider metadata/subtitle payload, not a second video bucket.
  // Merging it with the primary array leaks hard-subbed/dubbed variants into
  // the source picker. Only accept the provider's primary video array. Some
  // deployments wrap that same array in `data`, so use it only as a shape
  // fallback, never in addition to `sources`.
  const videos = Array.isArray(payload.sources)
    ? payload.sources
    : Array.isArray(payload.data?.sources)
      ? payload.data.sources
      : [];
  const headers = payload.headers || payload.data?.headers;
  return videos
    .filter(video => video && typeof video === "object")
    .map(video => ({
      ...video,
      headers: video.headers || headers,
    }));
}

/**
 * Some providers in the self-hosted Consumet build are currently only
 * returning a provider error from the VPS (Miruro) or an embed-only response.
 * AniVexa already exposes verified direct streams for these same
 * AniList ids, so use it as a provider-local fallback rather than returning
 * an apparently healthy but empty source card.
 */
const ANIVEXA_FALLBACKS: Record<string, { provider: string; label: string }> = {};

async function getAnivexaFallbackSources(
  site: string,
  anilistId: number | undefined,
  ep: number,
): Promise<NovaSource[]> {
  const fallback = ANIVEXA_FALLBACKS[site];
  const baseUrl = (process.env.ANIVEXA_API_URL || "").trim().replace(/\/+$/, "");
  if (!fallback || !baseUrl || !anilistId) return [];

  const payload = await getJson<{
    streams?: Array<{
      url?: unknown;
      type?: unknown;
      server?: unknown;
      quality?: unknown;
      referer?: unknown;
      headers?: Record<string, string>;
    }>;
  }>(`${baseUrl}/watch/${fallback.provider}/${anilistId}/sub/${fallback.provider}-${ep}`);
  const streams = Array.isArray(payload?.streams) ? payload.streams : [];
  const result: NovaSource[] = [];
  const seen = new Set<string>();

  for (const stream of streams) {
    const rawUrl = typeof stream.url === "string" ? stream.url.trim() : "";
    if (!/^https?:\/\//i.test(rawUrl) || seen.has(rawUrl)) continue;
    const type = String(stream.type || "").toLowerCase();
    const lower = rawUrl.toLowerCase();
    if (
      type.includes("embed") ||
      type.includes("iframe") ||
      type.includes("hardsub") ||
      type.includes("burned") ||
      (
        !/\.m3u8(?:[?#]|$)/i.test(lower) &&
        !/\.(?:mp4|webm)(?:[?#]|$)/i.test(lower) &&
        !type.includes("hls") &&
        !type.includes("mp4") &&
        !type.includes("direct")
      )
    ) continue;
    if (isNonOriginalVideo(stream as Record<string, unknown>, rawUrl)) continue;
    const kind: "hls" | "mp4" =
      type.includes("hls") || lower.includes(".m3u8") || lower.includes("/stream/")
        ? "hls"
        : "mp4";
    const referer = typeof stream.referer === "string" && stream.referer
      ? stream.referer
      : stream.headers?.Referer || stream.headers?.referer || `${baseUrl}/`;
    const qualityRaw = `${stream.quality || ""} ${stream.server || ""}`.toLowerCase();
    let quality = qualityRaw.includes("1080") || qualityRaw.includes("fhd")
      ? { label: "1080p FHD", rank: 18 }
      : qualityRaw.includes("720") || qualityRaw.includes("hd")
        ? { label: "720p HD", rank: 13 }
        : { label: "Auto", rank: 0 };
    // Provider metadata often says 720p for a master playlist. Inspect the
    // actual HLS variants before exposing the quality in the picker.
    if (kind === "hls") {
      const manifestQuality = await probeHlsQuality(rawUrl, referer);
      if (manifestQuality.rank > 0) quality = manifestQuality;
    }
    const proxied = proxyUrl(kind, rawUrl, referer);
    seen.add(rawUrl);
    result.push({
      name: `${fallback.label} · ${quality.label} · صوت خام`,
      url: proxied,
      quality: quality.label,
      qualityRank: quality.rank,
      site,
      directUrl: proxied,
      directType: kind,
      isEmbed: false,
      hasBuiltinSub: false,
      headers: { Referer: referer },
    });
  }
  return result;
}

async function findEpisode(
  baseUrl: string,
  provider: string,
  title: string,
  english: string | null,
  ep: number,
  variants: string[],
): Promise<string | null> {
  const queries = queryCandidates(title, english, variants);
  const searches = await Promise.all(
    queries.map(async query => {
      const data = await getJson<{ results?: any[] }>(
        `${baseUrl}/anime/${provider}/${encodeURIComponent(query)}`,
      );
      return Array.isArray(data?.results) ? data.results : [];
    }),
  );
  const results: any[] = [];
  const seen = new Set<string>();
  for (const batch of searches) {
    for (const item of batch) {
      const id = String(item?.id || item?.url || "");
      if (id && !seen.has(id)) {
        seen.add(id);
        results.push(item);
      }
    }
  }
  const bestScore = results
    .filter(item => !isDubbedSearchVariant(
      `${resultTitle(item)} ${String(item?.id || "")} ${String(item?.url || "")}`,
    ))
    .map(item => ({ item, score: titleScore(resultTitle(item), queries) }))
    .sort((a, b) => b.score - a.score)[0];
  // Partial matches are dangerous here: "One Piece Movie 15" scores as a
  // match for "One Piece" and returns a valid-looking but wrong episode.
  if (!bestScore || bestScore.score < 0.95) return null;
  const best = bestScore.item;

  const id = String(best.id || best.url || "");
  if (!id) return null;
  const info = await getJson<{ episodes?: ConsumetEpisode[] }>(
    `${baseUrl}/anime/${provider}/info?id=${encodeURIComponent(id)}`,
  );
  const episodes = Array.isArray(info?.episodes) ? info.episodes : [];
  const match = episodes.find(item => {
    const number = Number(item.number ?? item.episodeNumber);
    return Number.isFinite(number) && number === ep;
  });
  const hasEpisodeNumbers = episodes.some(item =>
    Number.isFinite(Number(item.number ?? item.episodeNumber)),
  );
  const positionalMatch = !hasEpisodeNumbers ? episodes[ep - 1] : undefined;
  const selected = match || positionalMatch;
  if (selected?.id == null) return null;
  const selectedText = `${String(selected.id)} ${String(selected.title || selected.name || "")}`;
  if (isDubbedSearchVariant(selectedText)) return null;
  return String(selected.id);
}

export async function getConsumetSources(
  site: string,
  title: string,
  english: string | null,
  ep: number,
  variants: string[] = [],
  anilistId?: number,
): Promise<NovaSource[]> {
  const providerInfo = providerForSite(site);
  const baseUrl = consumetBaseUrl();
  if (!providerInfo || !baseUrl || !title || !Number.isFinite(ep) || ep < 1) {
    if (providerInfo && !baseUrl && !missingUrlWarningShown) {
      missingUrlWarningShown = true;
      console.warn("[Consumet] CONSUMET_API_URL is not configured; sources are disabled");
    }
    return [];
  }

  try {
    let searchVariants = variants;
    const titleMatch = await lookupAniListTitle([title, english || "", ...variants], anilistId);
    if (titleMatch?.titles.length) {
      searchVariants = [...new Set([...variants, ...titleMatch.titles])].slice(0, 20);
    }
    const episodeId = await findEpisode(baseUrl, providerInfo.provider, title, english, ep, searchVariants);
    if (!episodeId) {
      console.warn(`[Consumet] ${providerInfo.provider} no episode match for "${title}" ep${ep}`);
      return await getAnivexaFallbackSources(site, anilistId, ep);
    }
    const watchPath = `${baseUrl}/anime/${providerInfo.provider}/watch/${encodePath(episodeId)}`;
    const watchUrl = providerInfo.provider === "gogoanime"
      ? `${watchPath}?category=sub`
      : watchPath;
    const payload = await getJson<ConsumetWatchPayload>(watchUrl);
    const videos = watchVideos(payload);
    const payloadReferer =
      payload?.headers?.Referer ||
      payload?.headers?.referer ||
      payload?.sub?.headers?.Referer ||
      payload?.sub?.headers?.referer ||
      `${baseUrl}/`;
    const seen = new Set<string>();
    const sources: NovaSource[] = [];
    if (!videos.length) {
      console.warn(`[Consumet] ${providerInfo.provider} returned no videos for ${episodeId}`);
    }

    for (const video of videos) {
      const originalUrl = typeof video?.url === "string" ? video.url.trim() : "";
      if (!/^https?:\/\//i.test(originalUrl)) continue;
      const gogoResolved = providerInfo.provider === "gogoanime" &&
        /gogoanime\.me\.uk\/newplayer\.php/i.test(originalUrl)
        ? await resolveGogoPlayer(originalUrl)
        : null;
      const rawUrl = gogoResolved?.url || originalUrl;
      if (seen.has(rawUrl)) continue;
      const kind = playableType(video, rawUrl);
      if (!kind) continue;
      seen.add(rawUrl);
      const referer = gogoResolved?.referer ||
        video.headers?.Referer || video.headers?.referer || payloadReferer;
        if (kind === "hls" && providerInfo.provider === "gogoanime") {
          const variants = await probeHlsVariants(rawUrl, referer);
          const playableVariants = variants.length
            ? variants
            : [{
                url: rawUrl,
                ...(await probeHlsQuality(rawUrl, referer)),
              }];
          for (const variant of playableVariants) {
            const proxiedVariant = proxyUrl("hls", variant.url, referer);
            sources.push({
              name: `${providerInfo.label} · ${variant.label} · صوت خام`,
              url: proxiedVariant,
              quality: variant.label,
              qualityRank: variant.rank,
              site: providerInfo.site,
              directUrl: proxiedVariant,
              directType: "hls",
              isEmbed: false,
              hasBuiltinSub: false,
              headers: referer ? { Referer: referer } : undefined,
            });
          }
          continue;
        }

        const quality = qualityInfo(video);
        const proxied = proxyUrl(kind, rawUrl, referer);
        sources.push({
          name: `${providerInfo.label} · ${quality.label} · صوت خام`,
          url: proxied,
          quality: quality.label,
          qualityRank: quality.rank,
          site: providerInfo.site,
          directUrl: proxied,
          directType: kind,
          isEmbed: false,
          hasBuiltinSub: false,
          headers: referer ? { Referer: referer } : undefined,
        });
    }
    if (sources.length) return sources;
    console.warn(`[Consumet] ${providerInfo.provider} returned no playable sources for ${episodeId} (${videos.length} videos)`);
    return await getAnivexaFallbackSources(site, anilistId, ep);
  } catch (error: any) {
    console.warn(`[Consumet] ${providerInfo.provider} ep${ep} failed:`, error?.message || error);
    return await getAnivexaFallbackSources(site, anilistId, ep);
  }
}

export function isConsumetSite(site: string): site is ConsumetSite {
  return Boolean(providerForSite(site));
}