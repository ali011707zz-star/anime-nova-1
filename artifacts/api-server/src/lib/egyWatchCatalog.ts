import fs from "node:fs";
import {
  EGYWATCH_API_CODE,
  EGYWATCH_BASES,
  EGYWATCH_BROWSER_UA,
  EGYWATCH_HEADERS,
  EGYWATCH_SCRAPER_BASE,
  classifyEgyWatchServer,
  parseExtractedMediaLinks,
  pickBestEgyWatchMatch,
  type ClassifiedEgyWatchServer,
  type EgyWatchServerCode,
} from "./egyWatchLogic.mjs";
import {
  TMDB_IMG_BACKDROP,
  TMDB_IMG_POSTER,
  buildTmdbDiscoverSpec,
  encodeSyntheticTmdbId,
  mapTmdbItemToFilmSummary,
} from "./filmCatalogHelpers.mjs";
import type { ExternalFilmSummary } from "./filmExternalSources.js";

const TMDB_KEY = process.env.TMDB_API_KEY || "4ef0d7355d9ffb5151e987764708ce96";
const TMDB_BASE = "https://api.themoviedb.org/3";
const CACHE_FILE = "/tmp/nova-egywatch-catalog-v2.json";
const REFRESH_INTERVAL_MS = 6 * 60 * 60 * 1000;

export type EgyWatchVerifiedCategory =
  | "dubbed_series"
  | "arabic_series"
  | "arabic_movies"
  | "turkish_series"
  | "turkish_movies"
  | "indian_movies"
  | "indian_series"
  | "asian_movies"
  | "asian_series";

export type VerifiedFilmItem = ExternalFilmSummary & {
  egyWatchId: number;
  egyWatchType: "movie" | "serie" | "anime";
  realTmdbId?: number | null;
};

interface CatalogStore {
  updatedAt: number;
  categories: Record<EgyWatchVerifiedCategory, VerifiedFilmItem[]>;
}

const EMPTY_CATEGORIES: Record<EgyWatchVerifiedCategory, VerifiedFilmItem[]> = {
  dubbed_series: [],
  arabic_series: [],
  arabic_movies: [],
  turkish_series: [],
  turkish_movies: [],
  indian_movies: [],
  indian_series: [],
  asian_movies: [],
  asian_series: [],
};

let _store: CatalogStore = {
  updatedAt: 0,
  categories: { ...EMPTY_CATEGORIES },
};

const _itemById = new Map<number, VerifiedFilmItem>();
let _refreshRunning = false;
let _schedulerStarted = false;

function rebuildLookupIndex() {
  _itemById.clear();
  for (const list of Object.values(_store.categories)) {
    for (const item of list) {
      if (item?.id) _itemById.set(Number(item.id), item);
    }
  }
}

function loadDiskCache() {
  try {
    if (!fs.existsSync(CACHE_FILE)) return;
    const raw = fs.readFileSync(CACHE_FILE, "utf8");
    const parsed = JSON.parse(raw) as Partial<CatalogStore>;
    if (parsed && parsed.categories && typeof parsed.categories === "object") {
      const merged: Record<EgyWatchVerifiedCategory, VerifiedFilmItem[]> = {
        ...EMPTY_CATEGORIES,
      };
      for (const k of Object.keys(EMPTY_CATEGORIES) as EgyWatchVerifiedCategory[]) {
        const arr = (parsed.categories as any)[k];
        if (Array.isArray(arr)) merged[k] = arr;
      }
      _store = {
        updatedAt: Number(parsed.updatedAt || 0),
        categories: merged,
      };
      rebuildLookupIndex();
    }
  } catch {
    // Ignore corrupt disk cache
  }
}

function saveDiskCache() {
  try {
    fs.writeFileSync(CACHE_FILE, JSON.stringify(_store), "utf8");
  } catch {
    // Ignore write failures
  }
}

loadDiskCache();

export async function egyWatchApiFetch(path: string, timeoutMs = 8000): Promise<any | null> {
  for (let attempt = 0; attempt < 4; attempt++) {
    const base = EGYWATCH_BASES[attempt % EGYWATCH_BASES.length];
    try {
      const res = await fetch(`${base}${path}`, {
        headers: EGYWATCH_HEADERS,
        signal: AbortSignal.timeout(timeoutMs),
      });
      if (!res.ok) continue;
      const text = await res.text();
      if (!text || text === '{"message":""}') continue;
      const json = JSON.parse(text);
      if (json && Object.keys(json).length === 1 && json.message === "") continue;
      return json;
    } catch {
      // Fail over to secondary mirror
    }
  }
  return null;
}

function upgradeToFastPoster(url: string | null | undefined, isBackdrop = false): string | null {
  if (!url || typeof url !== "string") return null;
  let clean = url.trim().replace(/^http:\/\//i, "https://");
  if (!clean.startsWith("https://")) return null;
  if (clean.includes("image.tmdb.org/t/p/")) {
    clean = clean.replace(
      /\/t\/p\/(?:original|w1280|w780|w500)\//i,
      isBackdrop ? "/t/p/w780/" : "/t/p/w342/",
    );
  }
  return clean;
}

async function fetchTmdbDiscoverRaw(category: string, page: number): Promise<any[]> {
  const spec = buildTmdbDiscoverSpec(category, { page });
  if (!spec) return [];
  const sep = spec.path.includes("?") ? "&" : "?";
  const url = `${TMDB_BASE}${spec.path}${sep}api_key=${TMDB_KEY}&language=ar`;
  try {
    const res = await fetch(url, { signal: AbortSignal.timeout(8000) });
    if (!res.ok) return [];
    const data = await res.json();
    return Array.isArray(data?.results) ? data.results : [];
  } catch {
    return [];
  }
}

async function runPool<T, R>(
  items: T[],
  concurrency: number,
  worker: (item: T) => Promise<R>,
): Promise<R[]> {
  const results: R[] = new Array(items.length);
  let cursor = 0;
  const runners = Array.from({ length: Math.min(concurrency, items.length) }, async () => {
    while (cursor < items.length) {
      const idx = cursor++;
      results[idx] = await worker(items[idx]);
    }
  });
  await Promise.all(runners);
  return results;
}

async function hasPlayableEgyWatchVideos(
  ewId: number,
  ewType: "movie" | "serie" | "anime",
): Promise<{ ok: boolean; seasonsCount?: number }> {
  if (ewType === "movie") {
    const det = await egyWatchApiFetch(`media/detail/${ewId}/${EGYWATCH_API_CODE}`, 7000);
    const vids = Array.isArray(det?.videos) ? det.videos : [];
    const usable = vids.some((v: any) => Boolean(classifyEgyWatchServer(v)));
    return { ok: usable };
  }
  const showPath = ewType === "anime" ? `animes/show/${ewId}` : `series/show/${ewId}`;
  const seasonPath = ewType === "anime" ? "animes/season" : "series/season";
  const det = await egyWatchApiFetch(`${showPath}/${EGYWATCH_API_CODE}`, 7000);
  const seasons = Array.isArray(det?.seasons) ? det.seasons : [];
  if (seasons.length === 0) return { ok: false };
  const sData = await egyWatchApiFetch(`${seasonPath}/${seasons[0].id}/${EGYWATCH_API_CODE}`, 7000);
  const eps = Array.isArray(sData?.episodes) ? sData.episodes : [];
  const sampleEps = eps.slice(0, 2);
  const usable = sampleEps.some(
    (ep: any) => Array.isArray(ep?.videos) && ep.videos.some((v: any) => Boolean(classifyEgyWatchServer(v))),
  );
  return { ok: usable, seasonsCount: seasons.length };
}

function makeFallbackSyntheticId(ewType: "movie" | "serie" | "anime", ewId: number): number {
  if (ewType === "movie") return 1_690_000_000 + ewId;
  if (ewType === "anime") return 1_960_000_000 + ewId;
  return 1_930_000_000 + ewId;
}

async function indexDubbedSeriesFromEgyWatch(): Promise<VerifiedFilmItem[]> {
  const rawItems: any[] = [];
  const seenEw = new Set<number>();

  // Pull pages 1..6 from genres/animes/all (most recent dubbed) & animes/byrating
  const pages = await Promise.all([
    egyWatchApiFetch(`genres/animes/all/${EGYWATCH_API_CODE}?page=1`, 8000),
    egyWatchApiFetch(`genres/animes/all/${EGYWATCH_API_CODE}?page=2`, 8000),
    egyWatchApiFetch(`genres/animes/all/${EGYWATCH_API_CODE}?page=3`, 8000),
    egyWatchApiFetch(`genres/animes/all/${EGYWATCH_API_CODE}?page=4`, 8000),
    egyWatchApiFetch(`animes/byrating/${EGYWATCH_API_CODE}?page=1`, 8000),
    egyWatchApiFetch(`animes/byrating/${EGYWATCH_API_CODE}?page=2`, 8000),
  ]);
  for (const p of pages) {
    const list = Array.isArray(p?.data) ? p.data : [];
    for (const item of list) {
      const id = Number(item?.id || 0);
      if (!id || seenEw.has(id)) continue;
      seenEw.add(id);
      rawItems.push(item);
    }
  }

  const verified = await runPool(rawItems.slice(0, 56), 6, async (item): Promise<VerifiedFilmItem | null> => {
    const ewId = Number(item.id);
    const det = await egyWatchApiFetch(`animes/show/${ewId}/${EGYWATCH_API_CODE}`, 7000);
    const seasons = Array.isArray(det?.seasons) ? det.seasons : [];
    if (seasons.length === 0) return null;
    const sData = await egyWatchApiFetch(`animes/season/${seasons[0].id}/${EGYWATCH_API_CODE}`, 7000);
    const eps = Array.isArray(sData?.episodes) ? sData.episodes : [];
    const playable = eps.slice(0, 2).some(
      (ep: any) => Array.isArray(ep?.videos) && ep.videos.some((v: any) => Boolean(classifyEgyWatchServer(v))),
    );
    if (!playable) return null;

    const titleAr = String(det?.name || item?.name || item?.title || "").trim();
    const posterUrl = upgradeToFastPoster(det?.poster_path || item?.poster_path);
    const backdropUrl = upgradeToFastPoster(det?.backdrop_path || item?.backdrop_path, true) || posterUrl;
    if (!titleAr || !posterUrl) return null;

    const realTmdbId = Number(det?.tmdb_id || 0) || null;
    const id = realTmdbId ? encodeSyntheticTmdbId("tv", realTmdbId) : makeFallbackSyntheticId("anime", ewId);
    const dateStr = String(det?.first_air_date || det?.release_date || "");
    const year = Number(dateStr.slice(0, 4)) || new Date().getFullYear();
    const genres = Array.isArray(det?.genreslist) && det.genreslist.length > 0 ? det.genreslist.slice(0, 4) : ["دراما", "مدبلج"];

    return {
      id,
      tmdbType: "tv",
      mediaType: "series",
      titleAr,
      titleEn: titleAr,
      overviewAr: String(det?.overview || "").trim(),
      posterUrl,
      backdropUrl,
      year,
      imdbRating: Number(Number(det?.vote_average || item?.vote_average || 7.6).toFixed(1)) || 7.6,
      voteCount: Number(det?.vote_count || 120),
      popularity: Number(det?.popularity || 100) + 50,
      qualityBadge: "1080p FHD",
      audioLabel: "مدبلج عربي",
      categoryLabel: "مسلسلات مدبلجة",
      genres,
      durationOrSeasons: seasons.length > 1 ? `${seasons.length} مواسم` : `الموسم 1 · ${eps.length} حلقة`,
      egyWatchId: ewId,
      egyWatchType: "anime",
      realTmdbId,
    };
  });

  return verified.filter((x): x is VerifiedFilmItem => Boolean(x));
}

async function indexRamadanArabicSeries(): Promise<VerifiedFilmItem[]> {
  const pages = await Promise.all([
    egyWatchApiFetch(`networks/media/show/8618/${EGYWATCH_API_CODE}?page=1`, 8000),
    egyWatchApiFetch(`networks/media/show/8618/${EGYWATCH_API_CODE}?page=2`, 8000),
    egyWatchApiFetch(`networks/media/show/8618/${EGYWATCH_API_CODE}?page=3`, 8000),
  ]);
  const rawItems: any[] = [];
  const seen = new Set<number>();
  for (const p of pages) {
    const list = Array.isArray(p?.data) ? p.data : [];
    for (const it of list) {
      const id = Number(it?.id || 0);
      if (!id || seen.has(id)) continue;
      seen.add(id);
      rawItems.push(it);
    }
  }

  const verified = await runPool(rawItems.slice(0, 32), 6, async (item): Promise<VerifiedFilmItem | null> => {
    const ewId = Number(item.id);
    const det = await egyWatchApiFetch(`series/show/${ewId}/${EGYWATCH_API_CODE}`, 7000);
    const seasons = Array.isArray(det?.seasons) ? det.seasons : [];
    if (seasons.length === 0) return null;
    const sData = await egyWatchApiFetch(`series/season/${seasons[0].id}/${EGYWATCH_API_CODE}`, 7000);
    const eps = Array.isArray(sData?.episodes) ? sData.episodes : [];
    const playable = eps.slice(0, 2).some(
      (ep: any) => Array.isArray(ep?.videos) && ep.videos.some((v: any) => Boolean(classifyEgyWatchServer(v))),
    );
    if (!playable) return null;

    const titleAr = String(det?.name || item?.name || item?.title || "").trim();
    const posterUrl = upgradeToFastPoster(det?.poster_path || item?.poster_path);
    const backdropUrl = upgradeToFastPoster(det?.backdrop_path || item?.backdrop_path, true) || posterUrl;
    if (!titleAr || !posterUrl) return null;

    const realTmdbId = Number(det?.tmdb_id || 0) || null;
    const id = realTmdbId ? encodeSyntheticTmdbId("tv", realTmdbId) : makeFallbackSyntheticId("serie", ewId);
    const dateStr = String(det?.first_air_date || det?.release_date || "");
    const year = Number(dateStr.slice(0, 4)) || 2026;

    return {
      id,
      tmdbType: "tv",
      mediaType: "series",
      titleAr,
      titleEn: titleAr,
      overviewAr: String(det?.overview || "").trim(),
      posterUrl,
      backdropUrl,
      year,
      imdbRating: Number(Number(det?.vote_average || item?.vote_average || 7.8).toFixed(1)) || 7.8,
      voteCount: Number(det?.vote_count || 150),
      popularity: Number(det?.popularity || 180) + 100,
      qualityBadge: "1080p FHD",
      audioLabel: "عربي",
      categoryLabel: "مسلسلات عربية",
      genres: Array.isArray(det?.genreslist) && det.genreslist.length > 0 ? det.genreslist.slice(0, 4) : ["دراما عربية"],
      durationOrSeasons: seasons.length > 1 ? `${seasons.length} مواسم` : `الموسم 1 · ${eps.length} حلقة`,
      egyWatchId: ewId,
      egyWatchType: "serie",
      realTmdbId,
    };
  });

  return verified.filter((x): x is VerifiedFilmItem => Boolean(x));
}

async function indexRegionalCategoryViaTmdbAndEgyWatch(
  category: Exclude<EgyWatchVerifiedCategory, "dubbed_series">,
  pagesToScan = 3,
): Promise<VerifiedFilmItem[]> {
  const spec = buildTmdbDiscoverSpec(category, { page: 1 });
  if (!spec) return [];

  const rawPages = await Promise.all(
    Array.from({ length: pagesToScan }, (_, i) => fetchTmdbDiscoverRaw(category, i + 1)),
  );
  const candidates: Array<{ summary: ExternalFilmSummary; realTmdbId: number }> = [];
  const seenTmdb = new Set<number>();

  for (const pageItems of rawPages) {
    for (const raw of pageItems) {
      const realTmdbId = Number(raw?.id || 0);
      if (!realTmdbId || seenTmdb.has(realTmdbId)) continue;
      const summary = mapTmdbItemToFilmSummary(raw, spec);
      if (!summary) continue;
      seenTmdb.add(realTmdbId);
      candidates.push({ summary, realTmdbId });
    }
  }

  const verified = await runPool(candidates.slice(0, 50), 6, async ({ summary, realTmdbId }): Promise<VerifiedFilmItem | null> => {
    const queries = Array.from(
      new Set([summary.titleAr, summary.titleEn].map((s) => String(s || "").trim()).filter((s) => s.length >= 2)),
    );
    let match = null;
    for (const q of queries) {
      const sr = await egyWatchApiFetch(`search/${encodeURIComponent(q)}/${EGYWATCH_API_CODE}`, 7000);
      const list = Array.isArray(sr?.search) ? sr.search : Array.isArray(sr?.data) ? sr.data : [];
      if (list.length === 0) continue;
      const pick = pickBestEgyWatchMatch(list, {
        tmdbId: realTmdbId,
        tmdbType: summary.tmdbType,
        titleAr: summary.titleAr,
        titleEn: summary.titleEn,
        year: summary.year,
        preferDubbed: false,
      });
      if (pick) {
        match = pick;
        if (pick.score >= 900) break;
      }
    }
    if (!match) return null;

    const check = await hasPlayableEgyWatchVideos(match.id, match.ewType);
    if (!check.ok) return null;

    return {
      ...summary,
      posterUrl: upgradeToFastPoster(summary.posterUrl),
      backdropUrl: upgradeToFastPoster(summary.backdropUrl, true),
      durationOrSeasons:
        summary.tmdbType === "tv" && check.seasonsCount && check.seasonsCount > 1
          ? `${check.seasonsCount} مواسم`
          : summary.durationOrSeasons,
      egyWatchId: match.id,
      egyWatchType: match.ewType,
      realTmdbId,
    };
  });

  return verified.filter((x): x is VerifiedFilmItem => Boolean(x));
}

export async function refreshEgyWatchCatalog(force = false): Promise<void> {
  if (_refreshRunning) return;
  const age = Date.now() - _store.updatedAt;
  const hasCore =
    _store.categories.dubbed_series.length >= 6 &&
    _store.categories.arabic_movies.length >= 6 &&
    _store.categories.arabic_series.length >= 6;
  if (!force && hasCore && age < REFRESH_INTERVAL_MS) return;

  _refreshRunning = true;
  try {
    // Stage A: Dubbed + Ramadan Arabic + Arabic Movies + Turkish Series (highest priority)
    const [dubbed, ramadan, arabicMovies, turkishSeries] = await Promise.all([
      indexDubbedSeriesFromEgyWatch().catch(() => []),
      indexRamadanArabicSeries().catch(() => []),
      indexRegionalCategoryViaTmdbAndEgyWatch("arabic_movies", 3).catch(() => []),
      indexRegionalCategoryViaTmdbAndEgyWatch("turkish_series", 3).catch(() => []),
    ]);

    if (dubbed.length > 0) _store.categories.dubbed_series = dubbed;
    if (arabicMovies.length > 0) _store.categories.arabic_movies = arabicMovies;
    if (turkishSeries.length > 0) _store.categories.turkish_series = turkishSeries;

    // Stage B: Arabic Series (Ramadan first + TMDB verified classics), Indian, Turkish Movies, Asian
    const [arabicSeriesTmdb, indianMovies, turkishMovies, indianSeries, asianMovies, asianSeries] = await Promise.all([
      indexRegionalCategoryViaTmdbAndEgyWatch("arabic_series", 3).catch(() => []),
      indexRegionalCategoryViaTmdbAndEgyWatch("indian_movies", 3).catch(() => []),
      indexRegionalCategoryViaTmdbAndEgyWatch("turkish_movies", 2).catch(() => []),
      indexRegionalCategoryViaTmdbAndEgyWatch("indian_series", 2).catch(() => []),
      indexRegionalCategoryViaTmdbAndEgyWatch("asian_movies", 2).catch(() => []),
      indexRegionalCategoryViaTmdbAndEgyWatch("asian_series", 2).catch(() => []),
    ]);

    // Merge Ramadan 2026 at top of arabic_series without duplicates
    const seenArS = new Set<number>();
    const mergedArabicSeries: VerifiedFilmItem[] = [];
    for (const item of [...ramadan, ...arabicSeriesTmdb]) {
      if (seenArS.has(item.id)) continue;
      seenArS.add(item.id);
      mergedArabicSeries.push(item);
    }
    if (mergedArabicSeries.length > 0) _store.categories.arabic_series = mergedArabicSeries;
    if (indianMovies.length > 0) _store.categories.indian_movies = indianMovies;
    if (turkishMovies.length > 0) _store.categories.turkish_movies = turkishMovies;
    if (indianSeries.length > 0) _store.categories.indian_series = indianSeries;
    if (asianMovies.length > 0) _store.categories.asian_movies = asianMovies;
    if (asianSeries.length > 0) _store.categories.asian_series = asianSeries;

    _store.updatedAt = Date.now();
    rebuildLookupIndex();
    saveDiskCache();
    console.info(
      `[egywatch-catalog] Ready: dubbed=${_store.categories.dubbed_series.length}, arM=${_store.categories.arabic_movies.length}, arS=${_store.categories.arabic_series.length}, trS=${_store.categories.turkish_series.length}, inM=${_store.categories.indian_movies.length}, asM=${_store.categories.asian_movies.length}, asS=${_store.categories.asian_series.length}`,
    );
  } catch (err) {
    console.warn("[egywatch-catalog] refresh failed:", (err as Error)?.message);
  } finally {
    _refreshRunning = false;
  }
}

export function startEgyWatchCatalogScheduler(): void {
  if (_schedulerStarted) return;
  _schedulerStarted = true;
  setTimeout(() => {
    void refreshEgyWatchCatalog(false);
  }, 1200);
  setInterval(() => {
    void refreshEgyWatchCatalog(true);
  }, REFRESH_INTERVAL_MS);
}

export function getVerifiedEgyWatchCategory(category: string): VerifiedFilmItem[] {
  const c = String(category || "").trim().toLowerCase();
  if (c === "dubbed" || c === "dubbed_series") return _store.categories.dubbed_series;
  if (c === "arabic_movies") return _store.categories.arabic_movies;
  if (c === "arabic_series") return _store.categories.arabic_series;
  if (c === "arabic") return [..._store.categories.arabic_movies, ..._store.categories.arabic_series];
  if (c === "turkish_series" || c === "turkish") return _store.categories.turkish_series;
  if (c === "turkish_movies") return _store.categories.turkish_movies;
  if (c === "indian_movies" || c === "indian") return _store.categories.indian_movies;
  if (c === "indian_series") return _store.categories.indian_series;
  if (c === "asian_movies") return _store.categories.asian_movies;
  if (c === "asian_series") return _store.categories.asian_series;
  if (c === "asian") return [..._store.categories.asian_movies, ..._store.categories.asian_series];
  return [];
}

export function lookupVerifiedEgyWatchItem(id: number): VerifiedFilmItem | null {
  return _itemById.get(Number(id)) || null;
}

/**
 * Resolve seasons & episodes for an EgyWatch-backed series/dubbed title (used by /detail & /season).
 */
export async function getEgyWatchSeriesSeasons(
  ewId: number,
  ewType: "serie" | "anime",
  parentId: number,
  seasonNumber = 1,
): Promise<{ seasons: any[]; episodes: any[] } | null> {
  const showPath = ewType === "anime" ? `animes/show/${ewId}` : `series/show/${ewId}`;
  const seasonPath = ewType === "anime" ? "animes/season" : "series/season";
  const det = await egyWatchApiFetch(`${showPath}/${EGYWATCH_API_CODE}`, 7000);
  const rawSeasons = Array.isArray(det?.seasons) ? det.seasons : [];
  if (rawSeasons.length === 0) return null;

  const fallbackPoster = upgradeToFastPoster(det?.poster_path);
  const seasons = rawSeasons.map((s: any, idx: number) => ({
    seasonNumber: Number(s?.season_number || idx + 1) || idx + 1,
    name: String(s?.name || `الموسم ${idx + 1}`),
    episodeCount: Number(s?.episodes_count || 0) || 1,
    posterUrl: upgradeToFastPoster(s?.poster_path) || fallbackPoster,
    airDate: String(s?.air_date || ""),
    _ewSeasonId: s?.id,
  }));

  const targetSeason =
    seasons.find((s: any) => s.seasonNumber === seasonNumber) ||
    seasons[Math.max(0, Math.min(seasons.length - 1, seasonNumber - 1))] ||
    seasons[0];

  const sData = targetSeason?._ewSeasonId
    ? await egyWatchApiFetch(`${seasonPath}/${targetSeason._ewSeasonId}/${EGYWATCH_API_CODE}`, 7000)
    : null;
  const rawEps = Array.isArray(sData?.episodes) ? sData.episodes : [];

  if (rawEps.length > 0 && targetSeason) {
    targetSeason.episodeCount = Math.max(targetSeason.episodeCount, rawEps.length);
  }

  const episodes = rawEps.map((ep: any, idx: number) => {
    const epNum = Number(ep?.episode_number || idx + 1) || idx + 1;
    return {
      id: `${parentId}-s${targetSeason.seasonNumber}-e${epNum}`,
      seasonNumber: targetSeason.seasonNumber,
      episodeNumber: epNum,
      titleAr: String(ep?.name || `الحلقة ${epNum}`).trim(),
      titleEn: `Episode ${epNum}`,
      overview: String(ep?.overview || "").trim(),
      runtimeMin: 45,
      airDate: String(ep?.air_date || ""),
      stillUrl: upgradeToFastPoster(ep?.still_path, true) || fallbackPoster,
    };
  });

  return {
    seasons: seasons.map(({ _ewSeasonId, ...rest }: any) => rest),
    episodes,
  };
}

/**
 * Extract direct playable HLS/MP4 URLs for a single classified EgyWatch server.
 */
async function extractSingleClassifiedServer(
  srv: ClassifiedEgyWatchServer,
): Promise<Array<{ url: string; quality: string; kind: "hls" | "direct"; headers: Record<string, string> }>> {
  const baseHeaders: Record<string, string> = {
    "User-Agent": srv.headers["User-Agent"] || EGYWATCH_BROWSER_UA,
    ...(srv.headers.Referer ? { Referer: srv.headers.Referer } : {}),
  };

  let originRef = "";
  try {
    originRef = `${new URL(srv.link).origin}/`;
  } catch {}
  const playHeaders: Record<string, string> = {
    "User-Agent": EGYWATCH_BROWSER_UA,
    ...(originRef ? { Referer: originRef } : {}),
  };

  if (srv.mode === "direct") {
    return [
      {
        url: srv.link,
        quality: /\b1080/i.test(srv.serverRaw + srv.link) ? "1080p" : /\b480/i.test(srv.serverRaw) ? "480p" : "720p",
        kind: srv.link.includes(".m3u8") ? "hls" : "direct",
        headers: playHeaders,
      },
    ];
  }

  if (srv.mode === "turki_api") {
    try {
      const r = await fetch(srv.link, { headers: baseHeaders, signal: AbortSignal.timeout(7000) });
      if (!r.ok) return [];
      const body = await r.text();
      return parseExtractedMediaLinks(body).map((m) => ({
        ...m,
        headers: { "User-Agent": EGYWATCH_BROWSER_UA, Referer: "https://3isk.news/" },
      }));
    } catch {
      return [];
    }
  }

  if (srv.mode === "json_worker") {
    try {
      const r = await fetch(srv.link, { headers: baseHeaders, signal: AbortSignal.timeout(7000) });
      if (!r.ok) return [];
      const body = await r.text();
      return parseExtractedMediaLinks(body).map((m) => ({ ...m, headers: { "User-Agent": EGYWATCH_BROWSER_UA } }));
    } catch {
      return [];
    }
  }

  if (srv.mode === "redirect_worker") {
    try {
      const r = await fetch(srv.link, {
        headers: baseHeaders,
        redirect: "manual",
        signal: AbortSignal.timeout(7000),
      });
      const loc = r.headers.get("location");
      if (loc && /^https?:\/\//i.test(loc)) {
        return [
          {
            url: loc,
            quality: "720p",
            kind: loc.includes(".m3u8") ? "hls" : "direct",
            headers: { "User-Agent": EGYWATCH_BROWSER_UA },
          },
        ];
      }
    } catch {}
    return [];
  }

  if (srv.mode === "scraper" && srv.rule) {
    const scraperUrl = `${EGYWATCH_SCRAPER_BASE}${srv.rule.endpoint}?${srv.rule.queryKey}=${encodeURIComponent(srv.link)}`;
    try {
      // Try GET ?api=... first (fastest and works for VIP Fast, Uqload, EgybestVid, HDUp20, Liiivideo)
      const r = await fetch(scraperUrl, {
        headers: { "User-Agent": EGYWATCH_BROWSER_UA, Referer: EGYWATCH_SCRAPER_BASE },
        signal: AbortSignal.timeout(7000),
      });
      if (r.ok) {
        const body = await r.text();
        const links = parseExtractedMediaLinks(body);
        if (links.length > 0) {
          return links.map((m) => ({ ...m, headers: playHeaders }));
        }
      }
    } catch {}

    // If POST rule and GET didn't yield links, fetch embed HTML and POST to scraper
    if (srv.rule.method === "POST") {
      try {
        const embedRes = await fetch(srv.link, { headers: baseHeaders, signal: AbortSignal.timeout(6000) });
        if (embedRes.ok) {
          const html = await embedRes.text();
          const direct = parseExtractedMediaLinks(html);
          if (direct.length > 0) {
            return direct.map((m) => ({ ...m, headers: playHeaders }));
          }
          const form = new URLSearchParams({ content: html, url: srv.link });
          const postRes = await fetch(`${EGYWATCH_SCRAPER_BASE}${srv.rule.endpoint}`, {
            method: "POST",
            headers: {
              "Content-Type": "application/x-www-form-urlencoded",
              "User-Agent": EGYWATCH_BROWSER_UA,
              Referer: EGYWATCH_SCRAPER_BASE,
            },
            body: form.toString(),
            signal: AbortSignal.timeout(7000),
          });
          if (postRes.ok) {
            const pBody = await postRes.text();
            const links = parseExtractedMediaLinks(pBody);
            if (links.length > 0) {
              return links.map((m) => ({ ...m, headers: playHeaders }));
            }
          }
        }
      } catch {}
    }
  }

  // Direct embed HTML scrape fallback (e.g., anafast)
  try {
    const embedRes = await fetch(srv.link, { headers: baseHeaders, signal: AbortSignal.timeout(6000) });
    if (embedRes.ok) {
      const html = await embedRes.text();
      return parseExtractedMediaLinks(html).map((m) => ({ ...m, headers: playHeaders }));
    }
  } catch {}

  return [];
}

export interface ServerEgyWatchSource {
  id: string;
  site: string;
  serverCode: EgyWatchServerCode;
  name: string;
  label: string;
  url: string;
  directUrl: string;
  kind: "hls" | "direct";
  type: "hls" | "direct";
  quality: string;
  tier: string;
  headers: Record<string, string>;
  isArabic: boolean;
  hardsubbed: boolean;
  downloadableOnPhone: boolean;
}

/**
 * Resolve playable direct HLS/MP4 sources from EgyWatch for any movie/series/dubbed title,
 * streaming each resolved server immediately via `onSource`.
 */
export async function resolveEgyWatchStreams(params: {
  tmdbId?: number | null;
  tmdbType: "movie" | "tv";
  titleAr?: string;
  titleEn?: string;
  year?: number;
  season?: number;
  ep?: number;
  preferDubbed?: boolean;
  egyWatchId?: number | null;
  egyWatchType?: "movie" | "serie" | "anime" | null;
  onSource: (src: ServerEgyWatchSource) => void;
}): Promise<number> {
  let ewId = Number(params.egyWatchId || 0) || 0;
  let ewType: "movie" | "serie" | "anime" | null = params.egyWatchType || null;

  if (!ewId) {
    const queries = Array.from(
      new Set([params.titleAr, params.titleEn].map((q) => String(q || "").trim()).filter((q) => q.length >= 2)),
    );
    for (const q of queries) {
      const sr = await egyWatchApiFetch(`search/${encodeURIComponent(q)}/${EGYWATCH_API_CODE}`, 7000);
      const list = Array.isArray(sr?.search) ? sr.search : Array.isArray(sr?.data) ? sr.data : [];
      if (list.length === 0) continue;
      const best = pickBestEgyWatchMatch(list, {
        tmdbId: params.tmdbId,
        tmdbType: params.tmdbType,
        titleAr: params.titleAr,
        titleEn: params.titleEn,
        year: params.year,
        preferDubbed: params.preferDubbed,
      });
      if (best) {
        ewId = best.id;
        ewType = best.ewType;
        if (best.score >= 900) break;
      }
    }
  }

  if (!ewId || !ewType) return 0;

  let rawVideos: any[] = [];
  if (ewType === "movie") {
    const det = await egyWatchApiFetch(`media/detail/${ewId}/${EGYWATCH_API_CODE}`, 7000);
    rawVideos = Array.isArray(det?.videos) ? det.videos : [];
  } else {
    const showPath = ewType === "anime" ? `animes/show/${ewId}` : `series/show/${ewId}`;
    const seasonPath = ewType === "anime" ? "animes/season" : "series/season";
    const det = await egyWatchApiFetch(`${showPath}/${EGYWATCH_API_CODE}`, 7000);
    const seasons = Array.isArray(det?.seasons) ? det.seasons : [];
    const seasonNum = Math.max(1, Number(params.season || 1));
    const epNum = Math.max(1, Number(params.ep || 1));
    const targetSeason =
      seasons.find((s: any) => Number(s?.season_number) === seasonNum) ||
      seasons[Math.min(seasons.length - 1, seasonNum - 1)] ||
      seasons[0];
    if (targetSeason?.id) {
      const sData = await egyWatchApiFetch(`${seasonPath}/${targetSeason.id}/${EGYWATCH_API_CODE}`, 7000);
      const eps = Array.isArray(sData?.episodes) ? sData.episodes : [];
      const targetEp =
        eps.find((e: any) => Number(e?.episode_number) === epNum) ||
        eps[Math.min(eps.length - 1, epNum - 1)] ||
        null;
      rawVideos = Array.isArray(targetEp?.videos) ? targetEp.videos : [];
    }
  }

  if (rawVideos.length === 0) return 0;

  // Classify & pick up to 2 best servers per code (EG, TK, UQ, EB, VS) sorted by priority
  const classified: ClassifiedEgyWatchServer[] = [];
  const perCode = new Map<EgyWatchServerCode, number>();
  const seenLinks = new Set<string>();

  for (const v of rawVideos) {
    const c = classifyEgyWatchServer(v);
    if (!c || seenLinks.has(c.link)) continue;
    seenLinks.add(c.link);
    const count = perCode.get(c.code) || 0;
    if (count >= 2) continue;
    perCode.set(c.code, count + 1);
    classified.push(c);
  }

  classified.sort((a, b) => a.priority - b.priority);

  let emitted = 0;
  const seenResolved = new Set<string>();

  await Promise.all(
    classified.slice(0, 7).map(async (srv) => {
      const extracted = await extractSingleClassifiedServer(srv);
      for (const media of extracted.slice(0, 2)) {
        const key = media.url.includes(".m3u8") ? media.url.split("?")[0] : media.url;
        if (seenResolved.has(key)) continue;
        seenResolved.add(key);
        emitted++;
        params.onSource({
          id: `${srv.site}-${emitted}`,
          site: srv.site,
          serverCode: srv.code,
          name: srv.label,
          label: srv.label,
          url: media.url,
          directUrl: media.url,
          kind: media.kind,
          type: media.kind,
          quality: media.quality,
          tier: media.quality === "1080p" || media.quality === "4K" ? "1080p FHD" : "720p HD",
          headers: media.headers,
          isArabic: true,
          hardsubbed: true,
          downloadableOnPhone: true,
        });
      }
    }),
  );

  return emitted;
}
