import { resolveVixSrcClient } from "./vixsrcClient";
import { Image } from "react-native";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { getBaseUrl } from "./baseUrl";
import { secureFetch, secureStreamFetch } from "./secureApi";
import {
  resolveFilmImageUrl,
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
  foreignMovies?: FilmSummary[];
  arabicMovies?: FilmSummary[];
  turkishMovies?: FilmSummary[];
  indianMovies?: FilmSummary[];
  asianMovies: FilmSummary[];
  popularSeries: FilmSummary[];
  latestSeries?: FilmSummary[];
  arabicSeries?: FilmSummary[];
  turkishSeries?: FilmSummary[];
  indianSeries?: FilmSummary[];
  asianSeries?: FilmSummary[];
  dubbedSeries?: FilmSummary[];
  topRated: FilmSummary[];
  animations: FilmSummary[];
  animationMovies?: FilmSummary[];
  animationSeries?: FilmSummary[];
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

export const FILM_HOME_CACHE_KEY = "nova_film_home_cache_v5";
let _memHomeFeed: FilmHomeFeed | undefined = undefined;

function normalizeHomeFeed(raw: any): FilmHomeFeed {
  const mapArr = (v: any) => (Array.isArray(v) ? v.map(normalizeFilmSummary) : []);
  return {
    hero: mapArr(raw?.hero),
    trendingMovies: mapArr(raw?.trendingMovies),
    latestMovies: mapArr(raw?.latestMovies),
    foreignMovies: mapArr(raw?.foreignMovies),
    arabicMovies: mapArr(raw?.arabicMovies),
    turkishMovies: mapArr(raw?.turkishMovies),
    indianMovies: mapArr(raw?.indianMovies),
    asianMovies: mapArr(raw?.asianMovies),
    popularSeries: mapArr(raw?.popularSeries),
    latestSeries: mapArr(raw?.latestSeries),
    arabicSeries: mapArr(raw?.arabicSeries),
    turkishSeries: mapArr(raw?.turkishSeries),
    indianSeries: mapArr(raw?.indianSeries),
    asianSeries: mapArr(raw?.asianSeries),
    dubbedSeries: mapArr(raw?.dubbedSeries),
    topRated: mapArr(raw?.topRated),
    animations: mapArr(raw?.animations),
    animationMovies: mapArr(raw?.animationMovies),
    animationSeries: mapArr(raw?.animationSeries),
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
    scheduleBackgroundAnimWarm();
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

  if (rawUrl.includes("erebus.cursed.st")) return null;
  const isEmbed = Boolean(raw.isEmbed) || rawUrl.includes("mega.nz") || rawUrl.includes("mega.co.nz");
  const isHls =
    !isEmbed &&
    (raw.type === "hls" ||
      raw.kind === "hls" ||
      rawUrl.includes(".m3u8") ||
      rawUrl.includes("hls-proxy") ||
      rawUrl.includes("/hls/") ||
      rawUrl.includes("ex.divhard.com/api/media.php"));
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
    type: kind,
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

const SOURCES_CACHE_TTL = 3 * 60_000;

export async function streamFilmSources(params: {
  tmdbId: number | string;
  tmdbType?: TmdbMediaType;
  type?: TmdbMediaType;
  season: number;
  episode: number;
  title: string;
  year?: number | string;
  realTmdbId?: number | null;
  forceRefresh?: boolean;
  onStatus?: (msg: string) => void;
  onSource: (srv: FilmServerLink) => void;
  onDone?: () => void;
  signal?: AbortSignal;
}): Promise<FilmServerLink[]> {
  const base = getBaseUrl();
  const mediaType: TmdbMediaType = params.tmdbType || params.type || "movie";
  const cacheKey = `film-srcs-v5-${mediaType}-${params.tmdbId}-s${params.season}-e${params.episode}`;

  const collected: FilmServerLink[] = [];
  const seen = new Set<string>();
  const emitUnique = (item: FilmServerLink) => {
    const dedupeKey = item.directUrl || item.embedUrl || item.url || item.id;
    if (!dedupeKey || seen.has(dedupeKey)) return;
    seen.add(dedupeKey);
    collected.push(item);
    params.onSource(item);
  };

  let vixPromise: Promise<void> | null = null;
  const triggerVixSrc = (realId: number | null | undefined) => {
    if (vixPromise || !realId || !Number.isFinite(Number(realId)) || Number(realId) <= 0) return;
    vixPromise = resolveVixSrcClient({
      tmdbId: Number(realId),
      type: mediaType,
      season: params.season,
      episode: params.episode,
      forceRefresh: params.forceRefresh,
      signal: params.signal,
    })
      .then((cbLink) => {
        if (cbLink && !params.signal?.aborted) {
          emitUnique(cbLink);
        }
      })
      .catch(() => {});
  };

  // Start client-side Cobalt (VixSrc) immediately if realTmdbId is already known from detail
  triggerVixSrc(params.realTmdbId);

  if (!params.forceRefresh) {
    try {
      const rawCache = await AsyncStorage.getItem(cacheKey);
      if (rawCache) {
        const parsed = JSON.parse(rawCache) as { ts: number; items: FilmServerLink[]; realTmdbId?: number | null };
        if (parsed?.items?.length > 0 && Date.now() - parsed.ts < SOURCES_CACHE_TTL) {
          triggerVixSrc(parsed.realTmdbId);
          parsed.items.forEach((item) => emitUnique(item));
          if (vixPromise) await vixPromise;
          params.onDone?.();
          return collected;
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

  let idxCounter = 0;
  let discoveredRealTmdbId: number | null = params.realTmdbId ? Number(params.realTmdbId) : null;

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
        if (ev === "meta" && data.realTmdbId) {
          const rid = Number(data.realTmdbId);
          if (Number.isFinite(rid) && rid > 0) {
            discoveredRealTmdbId = rid;
            triggerVixSrc(rid);
          }
        } else if (ev === "status" && data.msg) {
          params.onStatus?.(String(data.msg));
        } else if (ev === "source" || (!ev && (data.url || data.directUrl || data.proxyUrl))) {
          const normalized = normalizeServerFromSSE(data, idxCounter++, base);
          if (!normalized) continue;
          emitUnique(normalized);
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

  if (vixPromise) {
    await vixPromise;
  }
  const cacheable = collected.filter((item) => !item.clientSideOnly);
  if (cacheable.length > 0) {
    AsyncStorage.setItem(
      cacheKey,
      JSON.stringify({ ts: Date.now(), items: cacheable, realTmdbId: discoveredRealTmdbId }),
    ).catch(() => {});
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


export type AnimTabKey = "animation_movies" | "animation_series";

type AnimPageCacheEntry = {
  items: FilmSummary[];
  page: number;
  totalPages: number;
  ts: number;
};

const ANIM_MEM_CACHE = new Map<string, AnimPageCacheEntry>();
const ANIM_CACHE_TTL_MS = 15 * 60_000;
const PREFETCHED_POSTERS = new Set<string>();
let _warmStarted = false;

export function toFastGridPosterUrl(url?: string | null): string | undefined {
  const resolved = resolveFilmImageUrl(url);
  if (!resolved) return undefined;
  if (resolved.includes("image.tmdb.org/t/p/w780/")) {
    return resolved.replace("/t/p/w780/", "/t/p/w500/");
  }
  return resolved;
}

export function normalizeAnimGridSummary(raw: any): FilmSummary {
  const item = normalizeFilmSummary(raw);
  const fastPoster = toFastGridPosterUrl(item.posterUrl);
  return fastPoster && fastPoster !== item.posterUrl ? { ...item, posterUrl: fastPoster } : item;
}

export function animCacheKey(tab: AnimTabKey, page = 1, q = ""): string {
  return `${tab}|p${page}|q=${q.trim().toLowerCase()}`;
}

export function getMemoryAnimPage(tab: AnimTabKey, page = 1, q = ""): AnimPageCacheEntry | null {
  const key = animCacheKey(tab, page, q);
  const hit = ANIM_MEM_CACHE.get(key);
  if (!hit) return null;
  if (Date.now() - hit.ts > ANIM_CACHE_TTL_MS) {
    ANIM_MEM_CACHE.delete(key);
    return null;
  }
  ANIM_MEM_CACHE.delete(key);
  ANIM_MEM_CACHE.set(key, hit);
  return hit;
}

export function setMemoryAnimPage(tab: AnimTabKey, page: number, q: string, items: FilmSummary[], totalPages: number): void {
  const key = animCacheKey(tab, page, q);
  const normalized = items.map(normalizeAnimGridSummary);
  if (ANIM_MEM_CACHE.size >= 40) {
    const oldest = ANIM_MEM_CACHE.keys().next().value;
    if (oldest) ANIM_MEM_CACHE.delete(oldest);
  }
  ANIM_MEM_CACHE.set(key, { items: normalized, page, totalPages, ts: Date.now() });
  if (page === 1 && !q.trim() && normalized.length > 0) {
    AsyncStorage.setItem(
      `nova_film_anim_p1_${tab}_v1`,
      JSON.stringify({ items: normalized.slice(0, 24), totalPages }),
    ).catch(() => {});
  }
}

export async function loadDiskAnimPage(tab: AnimTabKey): Promise<AnimPageCacheEntry | null> {
  const mem = getMemoryAnimPage(tab, 1, "");
  if (mem) return mem;
  try {
    const raw = await AsyncStorage.getItem(`nova_film_anim_p1_${tab}_v1`);
    if (!raw) return null;
    const parsed = JSON.parse(raw);
    const items = Array.isArray(parsed?.items) ? parsed.items.map(normalizeAnimGridSummary).filter((x: FilmSummary) => x && x.id) : [];
    if (items.length === 0) return null;
    const totalPages = Number(parsed?.totalPages || 25);
    const entry: AnimPageCacheEntry = { items, page: 1, totalPages, ts: Date.now() - (ANIM_CACHE_TTL_MS - 60_000) };
    ANIM_MEM_CACHE.set(animCacheKey(tab, 1, ""), entry);
    return entry;
  } catch {
    return null;
  }
}

export function getHomeSeedAnimItems(tab: AnimTabKey): FilmSummary[] {
  const home = _memHomeFeed;
  if (!home) return [];
  const list = tab === "animation_movies" ? home.animationMovies : home.animationSeries;
  return Array.isArray(list) ? list.map(normalizeAnimGridSummary) : [];
}

export function prefetchAnimPosterBatch(items: FilmSummary[], limit = 18): void {
  const urls: string[] = [];
  for (let i = 0; i < items.length && urls.length < limit; i++) {
    const u = toFastGridPosterUrl(items[i]?.posterUrl || items[i]?.backdropUrl);
    if (!u || PREFETCHED_POSTERS.has(u)) continue;
    if (PREFETCHED_POSTERS.size >= 260) {
      const oldest = PREFETCHED_POSTERS.values().next().value;
      if (oldest) PREFETCHED_POSTERS.delete(oldest);
    }
    PREFETCHED_POSTERS.add(u);
    urls.push(u);
  }
  for (const u of urls) {
    Image.prefetch(u).catch(() => {});
  }
}

export async function prefetchAnimTabPage(tab: AnimTabKey): Promise<FilmSummary[] | null> {
  const existing = getMemoryAnimPage(tab, 1, "");
  if (existing && existing.items.length > 0) {
    prefetchAnimPosterBatch(existing.items, 15);
    return existing.items;
  }
  try {
    const res = await fetchFilmBrowse({ category: tab, sort: "popularity", page: 1 });
    if (res.results.length > 0) {
      setMemoryAnimPage(tab, 1, "", res.results, res.totalPages || 25);
      prefetchAnimPosterBatch(res.results, 15);
      return res.results;
    }
  } catch {}
  return null;
}

export function scheduleBackgroundAnimWarm(): void {
  if (_warmStarted) return;
  _warmStarted = true;
  setTimeout(() => {
    void (async () => {
      await Promise.allSettled([loadDiskAnimPage("animation_movies"), loadDiskAnimPage("animation_series")]);
      const m = await prefetchAnimTabPage("animation_movies");
      if (m) prefetchAnimPosterBatch(m, 12);
      const s = await prefetchAnimTabPage("animation_series");
      if (s) prefetchAnimPosterBatch(s, 12);
    })();
  }, 650);
}
