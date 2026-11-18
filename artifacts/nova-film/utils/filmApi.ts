import AsyncStorage from "@react-native-async-storage/async-storage";
import { getBaseUrl } from "./baseUrl";
import { secureFetch, secureStreamFetch } from "./secureApi";
import {
  normalizeFilmSummary,
  type FilmDetail,
  type FilmEpisode,
  type FilmServerLink,
  type FilmSubtitleTrack,
  type FilmSummary,
  type TmdbMediaType,
} from "./filmCatalog";

export type FilmHomeFeed = {
  hero: FilmSummary[];
  trendingMovies: FilmSummary[];
  latestMovies: FilmSummary[];
  asianMovies: FilmSummary[];
  popularSeries: FilmSummary[];
  topRated: FilmSummary[];
  animations: FilmSummary[];
};

export type FilmBrowseResponse = {
  results: FilmSummary[];
  items: FilmSummary[];
  page: number;
  totalPages: number;
  totalResults: number;
  hasNextPage: boolean;
};

function resolveAbsUrl(url: string | undefined, base: string): string {
  if (!url) return "";
  if (url.startsWith("http://") || url.startsWith("https://")) return url;
  return `${base}${url.startsWith("/") ? url : `/${url}`}`;
}

export const FILM_HOME_CACHE_KEY = "nova_film_home_cache_v1";
let _memHomeFeed: FilmHomeFeed | undefined = undefined;

function normalizeHomeFeed(raw: any): FilmHomeFeed {
  return {
    hero: Array.isArray(raw?.hero) ? raw.hero.map(normalizeFilmSummary) : [],
    trendingMovies: Array.isArray(raw?.trendingMovies) ? raw.trendingMovies.map(normalizeFilmSummary) : [],
    latestMovies: Array.isArray(raw?.latestMovies) ? raw.latestMovies.map(normalizeFilmSummary) : [],
    asianMovies: Array.isArray(raw?.asianMovies) ? raw.asianMovies.map(normalizeFilmSummary) : [],
    popularSeries: Array.isArray(raw?.popularSeries) ? raw.popularSeries.map(normalizeFilmSummary) : [],
    topRated: Array.isArray(raw?.topRated) ? raw.topRated.map(normalizeFilmSummary) : [],
    animations: Array.isArray(raw?.animations) ? raw.animations.map(normalizeFilmSummary) : [],
  };
}

function hasHomeContent(feed?: FilmHomeFeed | null): feed is FilmHomeFeed {
  if (!feed) return false;
  return Boolean(
    feed.hero.length ||
      feed.trendingMovies.length ||
      feed.latestMovies.length ||
      feed.popularSeries.length ||
      feed.animations.length,
  );
}

export function getMemoryFilmHome(): FilmHomeFeed | undefined {
  return _memHomeFeed;
}

export function primeMemoryFilmHomeFromJson(rawJson: string | null | undefined): FilmHomeFeed | undefined {
  if (!rawJson) return _memHomeFeed;
  try {
    const parsed = normalizeHomeFeed(JSON.parse(rawJson));
    if (hasHomeContent(parsed)) {
      _memHomeFeed = parsed;
      return parsed;
    }
  } catch {}
  return _memHomeFeed;
}

export async function loadCachedFilmHome(): Promise<FilmHomeFeed | undefined> {
  if (_memHomeFeed) return _memHomeFeed;
  try {
    const raw = await AsyncStorage.getItem(FILM_HOME_CACHE_KEY);
    return primeMemoryFilmHomeFromJson(raw);
  } catch {
    return undefined;
  }
}

export async function fetchFilmHome(): Promise<FilmHomeFeed> {
  const base = getBaseUrl();
  const res = await secureFetch(`${base}/api/film/home`, {
    headers: { Accept: "application/json" },
  });
  if (!res.ok) throw new Error(`HTTP ${res.status}`);
  const raw = (await res.json()) as FilmHomeFeed;
  const normalized = normalizeHomeFeed(raw);
  if (hasHomeContent(normalized)) {
    _memHomeFeed = normalized;
    AsyncStorage.setItem(FILM_HOME_CACHE_KEY, JSON.stringify(normalized)).catch(() => {});
  }
  return normalized;
}

export async function fetchFilmBrowse(params: {
  category?: string;
  genre?: string;
  sort?: string;
  year?: string | number;
  page?: number;
  q?: string;
  query?: string;
}): Promise<FilmBrowseResponse> {
  const base = getBaseUrl();
  const qs = new URLSearchParams();
  if (params.category) qs.set("category", params.category);
  if (params.genre) qs.set("genre", params.genre);
  if (params.sort) qs.set("sort", params.sort);
  if (params.year) qs.set("year", String(params.year));
  if (params.page) qs.set("page", String(params.page));
  const searchVal = params.q || params.query;
  if (searchVal) qs.set("q", searchVal);
  const res = await secureFetch(`${base}/api/film/browse?${qs.toString()}`, {
    headers: { Accept: "application/json" },
  });
  if (!res.ok) throw new Error(`HTTP ${res.status}`);
  const data = (await res.json()) as any;
  const results = Array.isArray(data.results)
    ? data.results.map(normalizeFilmSummary)
    : Array.isArray(data.items)
      ? data.items.map(normalizeFilmSummary)
      : [];
  const page = Number(data.page || params.page || 1);
  const totalPages = Number(data.totalPages || 1);
  return {
    results,
    items: results,
    page,
    totalPages,
    totalResults: Number(data.totalResults || results.length),
    hasNextPage: Boolean(data.hasNextPage ?? page < totalPages),
  };
}

export async function fetchFilmDetail(
  typeOrId: TmdbMediaType | number | string,
  maybeId?: number | string | TmdbMediaType,
): Promise<FilmDetail> {
  const base = getBaseUrl();
  let tmdbType: TmdbMediaType = "movie";
  let id: number | string;
  if (typeOrId === "movie" || typeOrId === "tv") {
    tmdbType = typeOrId;
    id = maybeId ?? "";
  } else {
    id = typeOrId;
    if (maybeId === "movie" || maybeId === "tv") {
      tmdbType = maybeId;
    }
  }
  const res = await secureFetch(
    `${base}/api/film/detail?type=${encodeURIComponent(tmdbType)}&id=${encodeURIComponent(String(id))}`,
    { headers: { Accept: "application/json" } },
  );
  if (!res.ok) throw new Error(`HTTP ${res.status}`);
  const raw = await res.json();
  const summary = normalizeFilmSummary(raw);
  return {
    ...raw,
    ...summary,
    relations: Array.isArray(raw?.relations) ? raw.relations.map(normalizeFilmSummary) : [],
    recommendations: Array.isArray(raw?.recommendations)
      ? raw.recommendations.map(normalizeFilmSummary)
      : [],
  } as FilmDetail;
}

export type FilmSeasonResult = FilmEpisode[] & { episodes: FilmEpisode[] };

export async function fetchFilmSeason(
  tmdbId: number | string,
  season: number,
): Promise<FilmSeasonResult> {
  const base = getBaseUrl();
  const res = await secureFetch(
    `${base}/api/film/season?id=${encodeURIComponent(String(tmdbId))}&season=${season}`,
    { headers: { Accept: "application/json" } },
  );
  if (!res.ok) throw new Error(`HTTP ${res.status}`);
  const data = (await res.json()) as { episodes?: FilmEpisode[] };
  const eps = data.episodes || [];
  return Object.assign(eps, { episodes: eps });
}

export async function fetchFilmSchedule(): Promise<FilmSummary[]> {
  const base = getBaseUrl();
  const res = await secureFetch(`${base}/api/film/schedule`, {
    headers: { Accept: "application/json" },
  });
  if (!res.ok) throw new Error(`HTTP ${res.status}`);
  const data = (await res.json()) as { items?: FilmSummary[] };
  return (data.items || []).map(normalizeFilmSummary);
}

export async function fetchFilmSubtitleTracks(params: {
  tmdbId: number | string;
  tmdbType?: TmdbMediaType;
  type?: TmdbMediaType;
  season: number;
  episode: number;
  title: string;
  signal?: AbortSignal;
}): Promise<FilmSubtitleTrack[]> {
  const base = getBaseUrl();
  try {
    const mediaType = params.tmdbType || params.type || "movie";
    const qs = new URLSearchParams({
      tmdbId: String(params.tmdbId),
      type: mediaType,
      season: String(params.season),
      ep: String(params.episode),
      title: params.title,
    });
    const res = await secureFetch(`${base}/api/film/subtitle-tracks?${qs.toString()}`, {
      headers: { Accept: "application/json" },
    });
    if (!res.ok) return [];
    const data = (await res.json()) as { tracks?: FilmSubtitleTrack[] };
    return (data.tracks || []).map((t) => ({
      ...t,
      url: t.url.startsWith("/")
        ? resolveAbsUrl(t.url, base)
        : `${base}/api/anime/proxy-text?url=${encodeURIComponent(t.url)}`,
    }));
  } catch {
    return [];
  }
}

function normalizeServerFromSSE(raw: any, index: number, base: string): FilmServerLink | null {
  if (!raw || typeof raw !== "object") return null;
  const rawUrl = resolveAbsUrl(raw.proxyUrl || raw.directUrl || raw.url, base);
  const directUrl = resolveAbsUrl(raw.directUrl || raw.url, base);
  const proxyUrl = resolveAbsUrl(raw.proxyUrl, base);
  if (!rawUrl || (!rawUrl.startsWith("http://") && !rawUrl.startsWith("https://"))) {
    return null;
  }

  const label = String(raw.label || raw.server || `سيرفر ${index + 1}`).trim();
  const lower = `${label} ${raw.tier || ""} ${raw.quality || ""}`.toLowerCase();
  let qualityTier: FilmServerLink["qualityTier"] = "HD";
  let quality = "720p HD";
  if (lower.includes("2160") || lower.includes("4k") || lower.includes("uhd")) {
    qualityTier = "4K";
    quality = "4K UHD";
  } else if (
    lower.includes("1080") ||
    lower.includes("fhd") ||
    lower.includes("bluray") ||
    lower.includes("vidfast") ||
    lower.includes("starcima") ||
    lower.includes("vaplayer") ||
    lower.includes("dulo") ||
    lower.includes("vidbolt")
  ) {
    qualityTier = "FHD";
    quality = "1080p FHD";
  } else if (lower.includes("360") || lower.includes("sd")) {
    qualityTier = "SD";
    quality = "360p SD";
  }

  const isEmbed = Boolean(raw.isEmbed) || rawUrl.includes("mega.nz") || rawUrl.includes("mega.co.nz");
  const isHls =
    !isEmbed &&
    (rawUrl.includes(".m3u8") || rawUrl.includes("hls-proxy") || rawUrl.includes("/hls/"));
  const kind: FilmServerLink["kind"] = isEmbed ? "embed" : isHls ? "hls" : "direct";
  const subRaw = raw.subtitleUrl ? resolveAbsUrl(raw.subtitleUrl, base) : undefined;

  return {
    id: `${raw.site || "srv"}-${index}-${rawUrl.slice(-18)}`,
    name: label,
    label,
    url: !isEmbed ? proxyUrl || directUrl || rawUrl : rawUrl,
    isEmbed,
    site: raw.site,
    quality,
    qualityTier,
    kind,
    directUrl: !isEmbed ? proxyUrl || directUrl || rawUrl : undefined,
    proxyUrl: proxyUrl || undefined,
    embedUrl: isEmbed ? rawUrl : undefined,
    subtitleUrl: subRaw,
    headers: raw.headers && typeof raw.headers === "object" ? raw.headers : undefined,
    hardsubbed: Boolean(raw.hardsubbed),
    note: isEmbed
      ? "مشغل مضمّن احتياطي"
      : isHls
        ? "بث مباشر HLS فائق السرعة"
        : "رابط فيديو مباشر عالي الجودة",
    isArabic:
      label.includes("عرب") ||
      label.includes("مدبلج") ||
      label.includes("مترجم") ||
      Boolean(subRaw),
  };
}

const SOURCES_CACHE_TTL = 40 * 60_000;

export async function streamFilmSources(params: {
  tmdbId: number | string;
  tmdbType?: TmdbMediaType;
  type?: TmdbMediaType;
  season: number;
  episode: number;
  title: string;
  year?: number | string;
  forceRefresh?: boolean;
  onStatus?: (msg: string) => void;
  onSource: (srv: FilmServerLink) => void;
  onDone?: () => void;
  signal?: AbortSignal;
}): Promise<FilmServerLink[]> {
  const base = getBaseUrl();
  const mediaType: TmdbMediaType = params.tmdbType || params.type || "movie";
  const cacheKey = `film-srcs-v3-${mediaType}-${params.tmdbId}-s${params.season}-e${params.episode}`;

  if (!params.forceRefresh) {
    try {
      const rawCache = await AsyncStorage.getItem(cacheKey);
      if (rawCache) {
        const parsed = JSON.parse(rawCache) as { ts: number; items: FilmServerLink[] };
        if (parsed?.items?.length > 0 && Date.now() - parsed.ts < SOURCES_CACHE_TTL) {
          parsed.items.forEach((item) => params.onSource(item));
          params.onDone?.();
          return parsed.items;
        }
      }
    } catch {}
  }

  const qs = new URLSearchParams({
    tmdbId: String(params.tmdbId),
    type: mediaType,
    season: String(params.season),
    ep: String(params.episode),
    title: params.title,
  });

  const collected: FilmServerLink[] = [];
  const seen = new Set<string>();
  let idxCounter = 0;

  const processLineBatch = (chunkText: string, state: { currentEvent: string }) => {
    const lines = chunkText.split("\n");
    const tail = lines.pop() || "";
    for (const line of lines) {
      if (line === "") {
        state.currentEvent = "";
        continue;
      }
      if (line.startsWith(":")) continue;
      if (line.startsWith("event:")) {
        state.currentEvent = line.slice(6).trim();
        continue;
      }
      if (!line.startsWith("data:")) continue;
      try {
        const data = JSON.parse(line.slice(5).trim());
        const ev = state.currentEvent || data.type || "";
        if (ev === "status" && data.msg) {
          params.onStatus?.(String(data.msg));
        } else if (ev === "source" || (!ev && (data.url || data.directUrl || data.proxyUrl))) {
          const normalized = normalizeServerFromSSE(data, idxCounter++, base);
          if (!normalized) continue;
          const dedupeKey = normalized.directUrl || normalized.embedUrl || normalized.id;
          if (seen.has(dedupeKey)) continue;
          seen.add(dedupeKey);
          collected.push(normalized);
          params.onSource(normalized);
        }
      } catch {}
    }
    return tail;
  };

  try {
    const response = await secureStreamFetch(`${base}/api/film/sources-stream?${qs.toString()}`, {
      signal: params.signal,
    });
    if (!response.ok) {
      params.onDone?.();
      return collected;
    }

    const state = { currentEvent: "" };
    if (response.body && typeof response.body.getReader === "function") {
      const reader = response.body.getReader();
      const decoder = new TextDecoder();
      let buffer = "";
      while (true) {
        const { done, value } = await reader.read();
        if (done) break;
        buffer += decoder.decode(value, { stream: true });
        buffer = processLineBatch(buffer, state);
      }
      if (buffer.trim()) processLineBatch(`${buffer}\n\n`, state);
    } else {
      const fullText = await response.text();
      processLineBatch(`${fullText}\n\n`, state);
    }
  } catch {
    // Graceful stop on network abort/timeout
  }

  if (collected.length > 0) {
    AsyncStorage.setItem(cacheKey, JSON.stringify({ ts: Date.now(), items: collected })).catch(() => {});
  }
  params.onDone?.();
  return collected;
}

export async function resolveFilmSource(params: {
  sourceId: string;
  tmdbId: number | string;
  tmdbType?: TmdbMediaType;
  type?: TmdbMediaType;
  season: number;
  episode: number;
  title: string;
  quality?: string;
}): Promise<FilmServerLink | null> {
  const base = getBaseUrl();
  try {
    const mediaType = params.tmdbType || params.type || "movie";
    const res = await secureFetch(`${base}/api/film/source-resolve`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        sourceId: params.sourceId,
        tmdbId: String(params.tmdbId),
        type: mediaType,
        season: params.season,
        ep: params.episode,
        title: params.title,
        quality: params.quality || "",
      }),
    });
    if (!res.ok) return null;
    const raw = await res.json();
    return normalizeServerFromSSE(raw, 0, base);
  } catch {
    return null;
  }
}

export function resolveFilmPlayableUrl(srv: Partial<FilmServerLink> | null | undefined): string {
  if (!srv) return "";
  const base = getBaseUrl();
  const target = srv.proxyUrl || srv.directUrl || srv.url || srv.embedUrl || "";
  return resolveAbsUrl(target, base);
}
