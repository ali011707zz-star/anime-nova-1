import { encryptParam } from "./security.js";

/**
 * Consumet is self-hosted on the VPS. Nova consumes only the provider's
 * direct media URLs; subtitle tracks and embed pages are intentionally not
 * forwarded to either client.
 */
export const CONSUMET_SOURCES = [
  { site: "consumet_gogo", provider: "gogoanime", label: "GogoAnime" },
  { site: "consumet_world", provider: "animeworld", label: "AnimeWorld" },
  { site: "consumet_reanime", provider: "reanime", label: "ReAnime" },
  { site: "consumet_miruro", provider: "miruro", label: "Miruro" },
  { site: "consumet_saturn", provider: "animesaturn", label: "AnimeSaturn" },
  { site: "consumet_sama", provider: "animesama", label: "AnimeSama" },
] as const;

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
  return { label: String(video.quality || "HD"), rank: 10 };
}

function playableType(video: ConsumetVideo, url: string): "hls" | "mp4" | null {
  const lower = url.toLowerCase();
  const type = String(video.type || "").toLowerCase();
  const language = String(video.language || "").toLowerCase();

  // Do not expose subtitle files, dub variants, DASH manifests, or embed pages.
  if (video.isDASH || video.hardsub || video.hardSub || video.dub) return null;
  if (language.includes("dub") || type.includes("dub") || type.includes("embed") || type.includes("iframe")) return null;
  if (/\.(?:vtt|srt|ass|ssa)(?:[?#]|$)/i.test(lower) || lower.includes("/subtitle")) return null;
  if (Boolean(video.isM3U8) || /\.m3u8(?:[?#]|$)/i.test(lower)) return "hls";
  if (type.includes("mp4") || type.includes("video") || /\.(?:mp4|webm)(?:[?#]|$)/i.test(lower)) return "mp4";
  return null;
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
  const best = results
    .map(item => ({ item, score: titleScore(resultTitle(item), queries) }))
    .sort((a, b) => b.score - a.score)[0]?.item;
  if (!best) return null;

  const id = String(best.id || best.url || "");
  if (!id) return null;
  const info = await getJson<{ episodes?: ConsumetEpisode[] }>(
    `${baseUrl}/anime/${provider}/info?id=${encodeURIComponent(id)}`,
  );
  const episodes = Array.isArray(info?.episodes) ? info.episodes : [];
  const match = episodes.find(item => {
    const number = Number(item.number ?? item.episodeNumber);
    return Number.isFinite(number) && number === ep;
  }) || episodes[ep - 1];
  return match?.id == null ? null : String(match.id);
}

export async function getConsumetSources(
  site: string,
  title: string,
  english: string | null,
  ep: number,
  variants: string[] = [],
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
    const episodeId = await findEpisode(baseUrl, providerInfo.provider, title, english, ep, variants);
    if (!episodeId) return [];
    const payload = await getJson<{ sources?: ConsumetVideo[]; headers?: Record<string, string> }>(
      `${baseUrl}/anime/${providerInfo.provider}/watch/${encodePath(episodeId)}`,
    );
    const videos = Array.isArray(payload?.sources) ? payload.sources : [];
    const payloadReferer = payload?.headers?.Referer || payload?.headers?.referer || `${baseUrl}/`;
    const seen = new Set<string>();
    const sources: NovaSource[] = [];

    for (const video of videos) {
      const rawUrl = typeof video?.url === "string" ? video.url.trim() : "";
      if (!/^https?:\/\//i.test(rawUrl) || seen.has(rawUrl)) continue;
      const kind = playableType(video, rawUrl);
      if (!kind) continue;
      seen.add(rawUrl);
      const quality = qualityInfo(video);
      const referer = video.headers?.Referer || video.headers?.referer || payloadReferer;
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
    return sources;
  } catch (error: any) {
    console.warn(`[Consumet] ${providerInfo.provider} ep${ep} failed:`, error?.message || error);
    return [];
  }
}

export function isConsumetSite(site: string): site is ConsumetSite {
  return Boolean(providerForSite(site));
}