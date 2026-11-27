import crypto from "node:crypto";
import fs from "node:fs";
import path from "node:path";
import { spawn } from "node:child_process";
import { pipeline } from "node:stream/promises";
import { Router, type Request, type Response } from "express";
import { issueAnonToken, validateAnonToken, validateDownloadToken } from "../lib/security.js";
import { getTelegramFilmSources } from "../lib/telegramStorage.js";
import { pool } from "../lib/db.js";
import {
  deduplicateFilmSummaries,
  fetchExternalCategory,
  fetchExternalHomeCatalog,
  getExternalFilmDetail,
  getExternalSeasonEpisodes,
  isExternalFilmId,
  resolveExternalFilmStreams,
  searchExternalCatalog,
  type ExternalFilmSummary,
} from "../lib/filmExternalSources.js";
import {
  buildTmdbDiscoverSpec,
  decodeSyntheticTmdbId,
  formatMergedSeriesDuration,
  isOfficialAnimationCategory,
  mapTmdbItemToFilmSummary,
  mergeSeasonEpisodes,
  mergeTvSeasons,
  normalizeArabicSearchVariants,
} from "../lib/filmCatalogHelpers.mjs";

const router = Router();

const TMDB_KEY = process.env.TMDB_API_KEY || "4ef0d7355d9ffb5151e987764708ce96";
const TMDB_BASE = "https://api.themoviedb.org/3";
const TMDB_IMG_POSTER = "https://image.tmdb.org/t/p/w780";
const TMDB_IMG_BACKDROP = "https://image.tmdb.org/t/p/w1280";
const TMDB_IMG_PROFILE = "https://image.tmdb.org/t/p/w185";

const BROWSER_UA =
  "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36";

type TmdbCacheEntry = { data: any; ts: number };
const _tmdbCache = new Map<string, TmdbCacheEntry>();
const _sourceResolveCache = new Map<string, { items: ResolvedSource[]; tracks: SubTrack[]; titleEn: string; tmdbId: number | null; ts: number }>();

type SubTrack = { id: string; lang: string; label: string; url: string };
type ResolvedSource = {
  site: string;
  label: string;
  tier: string;
  url: string;
  directUrl: string;
  proxyUrl?: string;
  isEmbed: boolean;
  subtitleUrl?: string;
  hardsubbed?: boolean;
  type?: "hls" | "mp4";
  headers?: Record<string, string>;
};

const PROXY_POSTER_HOSTS = [
  "egydead.here",
  "topcinemaa.tv",
  "topcinemaa.one",
  "topcinemaa.top",
  "topcinema.fan",
  "moviztime.top",
  "aoneroom.com",
  "elcinema.com",
];

const ALLOWED_POSTER_PROXY_HOSTS = [
  ...PROXY_POSTER_HOSTS,
  "image.tmdb.org",
  "tmdb.org",
];

function maybeProxyBlockedPoster(url: string): string {
  try {
    const h = new URL(url).hostname.toLowerCase();
    if (PROXY_POSTER_HOSTS.some((d) => h === d || h.endsWith("." + d))) {
      return `/api/film/poster?u=${encodeURIComponent(url)}`;
    }
  } catch {}
  return url;
}

function encodeMediaUrl(raw?: string | null): string | null {
  const s = String(raw || "").trim();
  if (!s) return null;
  if (s.startsWith("/api/film/poster?")) return s;
  if (!s.startsWith("http")) return null;
  if (s.includes("/uploads/images.jpg")) return null;
  let normalized = s;
  try {
    normalized = new URL(s).toString();
  } catch {
    try {
      normalized = encodeURI(s);
    } catch {
      normalized = s;
    }
  }
  return maybeProxyBlockedPoster(normalized);
}

function safeJsonArray<T = any>(raw: any): T[] {
  if (Array.isArray(raw)) return raw;
  try {
    const parsed = JSON.parse(String(raw || "[]"));
    return Array.isArray(parsed) ? parsed : [];
  } catch {
    return [];
  }
}

function formatDurationOrSeasons(row: any): string {
  if (row.tmdb_type === "tv" || row.media_type === "series") {
    const seasons = Math.max(1, Number(row.season_count || 1));
    const eps = Math.max(1, Number(row.playable_episode_count || row.episode_count || 1));
    return seasons > 1 ? `${seasons} مواسم · ${eps} حلقة` : `الموسم 1 · ${eps} حلقة`;
  }
  return "فيلم كامل";
}

function rowToFilmSummary(row: any) {
  const posterUrl = encodeMediaUrl(row.poster_url);
  const backdropUrl = encodeMediaUrl(row.backdrop_url) || posterUrl;
  const genres = safeJsonArray<string>(row.genres_json);
  const imdbRating = Number(Number(row.imdb_rating || 0).toFixed(1));
  return {
    id: Number(row.id),
    tmdbType: row.tmdb_type === "tv" ? "tv" : "movie",
    mediaType:
      row.media_type === "animation"
        ? "animation"
        : row.media_type === "series" || row.tmdb_type === "tv"
          ? "series"
          : "movie",
    titleAr: String(row.title_ar || row.title_en || "عمل عالمي").trim(),
    titleEn: String(row.title_en || row.title_ar || "").trim(),
    overviewAr: String(row.synopsis || "").trim(),
    posterUrl,
    backdropUrl,
    year: Number(row.year || new Date().getFullYear()),
    imdbRating,
    voteCount: Number(row.playable_episode_count || 1),
    popularity: Number(row.year || 2020) * 10 + imdbRating,
    qualityBadge: String(row.quality_badge || "1080p FHD"),
    audioLabel: String(row.audio_label || "مترجم"),
    categoryLabel: String(row.category_label || "أفلام أجنبية"),
    genres: genres.length > 0 ? genres : ["دراما"],
    durationOrSeasons: formatDurationOrSeasons(row),
  };
}

async function tmdbFetchOptional(path: string, lang = "ar"): Promise<any | null> {
  if (!TMDB_KEY) return null;
  const sep = path.includes("?") ? "&" : "?";
  const url = `${TMDB_BASE}${path}${sep}api_key=${TMDB_KEY}&language=${lang}`;
  const hit = _tmdbCache.get(url);
  if (hit && Date.now() - hit.ts < 30 * 60_000) return hit.data;
  try {
    const r = await fetch(url, { signal: AbortSignal.timeout(4500) });
    if (!r.ok) return null;
    const data = await r.json();
    _tmdbCache.set(url, { data, ts: Date.now() });
    return data;
  } catch {
    return null;
  }
}

async function enrichDetailFromTmdb(row: any): Promise<{
  tmdbId: number | null;
  posterUrl: string | null;
  backdropUrl: string | null;
  overviewAr: string;
  runtimeMin: number;
  ageRating: string;
  director: string;
  productionCompany: string;
  imdbId: string | null;
  trailerYoutubeKey: string | null;
  cast: any[];
  seasons: any[];
}> {
  const type: "movie" | "tv" = row.tmdb_type === "tv" ? "tv" : "movie";
  const cleanEn = String(row.title_en || "").trim();
  const year = Number(row.year || 0);
  let tmdbId = row.tmdb_id ? Number(row.tmdb_id) : null;

  if (!tmdbId && cleanEn && /[A-Za-z]{2,}/.test(cleanEn)) {
    const yearParam = year >= 1930 ? (type === "tv" ? `&first_air_date_year=${year}` : `&year=${year}`) : "";
    const searchData = await tmdbFetchOptional(
      `/search/${type}?query=${encodeURIComponent(cleanEn)}${yearParam}&include_adult=false`,
      "en-US",
    );
    const first = Array.isArray(searchData?.results) ? searchData.results[0] : null;
    if (first?.id) {
      tmdbId = Number(first.id);
    }
  }

  if (!tmdbId) {
    return {
      tmdbId: null,
      posterUrl: null,
      backdropUrl: null,
      overviewAr: String(row.synopsis || "").trim(),
      runtimeMin: type === "tv" ? 45 : 112,
      ageRating: "PG-13",
      director: "سينما عالمية",
      productionCompany: "NOVA FILM",
      imdbId: null,
      trailerYoutubeKey: null,
      cast: [],
      seasons: [],
    };
  }

  const append =
    type === "tv"
      ? "aggregate_credits,credits,videos,content_ratings,external_ids"
      : "credits,videos,release_dates,external_ids";
  const [arData, enData] = await Promise.all([
    tmdbFetchOptional(`/${type}/${tmdbId}?append_to_response=${append}`, "ar"),
    tmdbFetchOptional(`/${type}/${tmdbId}?append_to_response=videos`, "en-US"),
  ]);

  const data = arData || enData;
  if (!data) {
    return {
      tmdbId,
      posterUrl: null,
      backdropUrl: null,
      overviewAr: String(row.synopsis || "").trim(),
      runtimeMin: type === "tv" ? 45 : 112,
      ageRating: "PG-13",
      director: "سينما عالمية",
      productionCompany: "NOVA FILM",
      imdbId: null,
      trailerYoutubeKey: null,
      cast: [],
      seasons: [],
    };
  }

  const posterUrl = data.poster_path ? `${TMDB_IMG_POSTER}${data.poster_path}` : null;
  const backdropUrl = data.backdrop_path ? `${TMDB_IMG_BACKDROP}${data.backdrop_path}` : null;
  const curPoster = String(row.poster_url || "");
  const curBackdrop = String(row.backdrop_url || "");
  const needsPosterUpgrade = Boolean(posterUrl && (!curPoster.includes("image.tmdb.org/t/p/w780") || curPoster.includes("moviztime")));
  const needsBackdropUpgrade = Boolean(backdropUrl && (!curBackdrop.includes("image.tmdb.org") || curBackdrop === curPoster));
  if (!row.tmdb_id || needsPosterUpgrade || needsBackdropUpgrade) {
    pool
      .query(
        `UPDATE film_vault_titles
         SET tmdb_id = COALESCE($1, tmdb_id),
             poster_url = COALESCE($2, poster_url),
             backdrop_url = COALESCE($3, backdrop_url)
         WHERE id = $4`,
        [
          tmdbId,
          needsPosterUpgrade ? posterUrl : null,
          needsBackdropUpgrade ? backdropUrl : null,
          row.id,
        ],
      )
      .catch(() => {});
  }

  const allVideos: any[] = [...(enData?.videos?.results || []), ...(arData?.videos?.results || [])];
  const trailer =
    allVideos.find((v) => v.site === "YouTube" && v.type === "Trailer" && v.official !== false) ||
    allVideos.find((v) => v.site === "YouTube" && v.type === "Trailer") ||
    allVideos.find((v) => v.site === "YouTube" && v.type === "Teaser" && v.official !== false) ||
    allVideos.find((v) => v.site === "YouTube" && v.type === "Teaser") ||
    allVideos.find((v) => v.site === "YouTube");

  const crew: any[] = data?.credits?.crew || [];
  const directorObj =
    crew.find((c) => c.job === "Director") ||
    (Array.isArray(data?.created_by) ? data.created_by[0] : null);
  const rawCast: any[] =
    data?.credits?.cast?.length > 0 ? data.credits.cast : data?.aggregate_credits?.cast || [];
  const cast = rawCast.slice(0, 14).map((c: any) => ({
    id: Number(c.id),
    name: String(c.name || c.original_name || ""),
    character: String(c.character || (Array.isArray(c.roles) ? c.roles[0]?.character : "") || "ممثل"),
    profileUrl: c.profile_path ? `${TMDB_IMG_PROFILE}${c.profile_path}` : null,
  }));

  let ageRating = "PG-13";
  if (type === "tv") {
    const usR = (data?.content_ratings?.results || []).find((r: any) => r.iso_3166_1 === "US");
    if (usR?.rating) ageRating = usR.rating;
  } else {
    const usR = (data?.release_dates?.results || []).find((r: any) => r.iso_3166_1 === "US");
    const cert = usR?.release_dates?.find((d: any) => d.certification)?.certification;
    if (cert) ageRating = cert;
  }

  return {
    tmdbId,
    posterUrl,
    backdropUrl,
    overviewAr: String(row.synopsis || "").trim() || String(arData?.overview || enData?.overview || "").trim(),
    runtimeMin: Number(data?.runtime || (Array.isArray(data?.episode_run_time) ? data.episode_run_time[0] : 0) || (type === "tv" ? 45 : 112)),
    ageRating,
    director: directorObj?.name || (type === "tv" ? "إنتاج تلفزيوني" : "سينما عالمية"),
    productionCompany: data?.production_companies?.[0]?.name || "NOVA FILM",
    imdbId: data?.external_ids?.imdb_id || null,
    trailerYoutubeKey: trailer?.key || null,
    cast,
    seasons:
      type === "tv" && Array.isArray(data?.seasons)
        ? data.seasons.filter((s: any) => Number(s?.season_number) >= 1 && Number(s?.episode_count) > 0)
        : [],
  };
}

async function fetchTmdbDiscoverCategory(
  category: string,
  opts: { genre?: string; sort?: string; year?: number; page?: number } = {},
  limit = 24,
): Promise<{ items: ExternalFilmSummary[]; totalPages: number; totalResults: number }> {
  const spec = buildTmdbDiscoverSpec(category, opts);
  if (!spec) return { items: [], totalPages: 1, totalResults: 0 };
  const data = await tmdbFetchOptional(spec.path, "ar");
  if (!data || !Array.isArray(data.results)) {
    return { items: [], totalPages: 1, totalResults: 0 };
  }
  const items = data.results
    .map((raw: any) => mapTmdbItemToFilmSummary(raw, spec))
    .filter((x: ExternalFilmSummary | null): x is ExternalFilmSummary => Boolean(x))
    .slice(0, limit);
  return {
    items,
    totalPages: Math.min(500, Math.max(1, Number(data.total_pages || 1))),
    totalResults: Math.max(items.length, Number(data.total_results || items.length)),
  };
}

async function searchTmdbCatalog(
  rawQuery: string,
  typeFilter: "multi" | "movie" | "tv" = "multi",
  page = 1,
  opts: { animationOnly?: boolean } = {},
): Promise<ExternalFilmSummary[]> {
  const variants = normalizeArabicSearchVariants(rawQuery).slice(0, 5);
  if (variants.length === 0) return [];
  const endpoint = typeFilter === "movie" ? "/search/movie" : typeFilter === "tv" ? "/search/tv" : "/search/multi";
  const reqs: Promise<any>[] = [];
  for (const v of variants) {
    reqs.push(tmdbFetchOptional(`${endpoint}?query=${encodeURIComponent(v)}&page=${page}&include_adult=false`, "ar"));
  }
  if (/[A-Za-z]{2,}/.test(variants[0])) {
    reqs.push(tmdbFetchOptional(`${endpoint}?query=${encodeURIComponent(variants[0])}&page=${page}&include_adult=false`, "en-US"));
  }
  const settled = await Promise.all(reqs);
  const hasAnyHit = settled.some((d) => Array.isArray(d?.results) && d.results.length > 0);
  if (!hasAnyHit && page === 1) {
    // Fuzzy multi-word fallback for Arabic spelling/transliteration variations (e.g. "البيكي بيلاندرز")
    const baseClean = variants[variants.length - 1] || variants[0];
    const tokens = baseClean
      .split(/\s+/)
      .map((t) => t.replace(/^ال(?=[\u0600-\u06FF]{3,})/, "").trim())
      .filter((t) => t.length >= 3);
    if (tokens.length >= 2) {
      const fbReqs = tokens
        .slice(0, 2)
        .map((tok) =>
          tmdbFetchOptional(`${endpoint}?query=${encodeURIComponent(tok)}&page=1&include_adult=false`, "ar"),
        );
      const fbSettled = await Promise.all(fbReqs);
      settled.push(...fbSettled);
    }
  }
  const mapped: ExternalFilmSummary[] = [];
  for (const data of settled) {
    if (!data || !Array.isArray(data.results)) continue;
    for (const raw of data.results) {
      const mType = typeFilter === "multi" ? raw?.media_type : typeFilter;
      if (mType !== "movie" && mType !== "tv") continue;
      const item = mapTmdbItemToFilmSummary(raw, { tmdbType: mType });
      if (!item) continue;
      if (opts.animationOnly && item.mediaType !== "animation") continue;
      mapped.push(item);
    }
  }
  return deduplicateFilmSummaries([mapped], undefined, 32);
}

async function resolveTmdbTvByTitle(title: string, year?: number): Promise<{ tmdbId: number; seasons: any[]; posterUrl: string | null; backdropUrl: string | null } | null> {
  const variants = normalizeArabicSearchVariants(title).slice(0, 2);
  for (const q of variants) {
    const yearParam = year && year >= 1950 ? `&first_air_date_year=${year}` : "";
    const lang = /[A-Za-z]{2,}/.test(q) ? "en-US" : "ar";
    const sData = await tmdbFetchOptional(`/search/tv?query=${encodeURIComponent(q)}${yearParam}&include_adult=false`, lang);
    const hit = Array.isArray(sData?.results) ? sData.results[0] : null;
    if (hit?.id) {
      const full = await tmdbFetchOptional(`/tv/${hit.id}`, "ar");
      const seasons = Array.isArray(full?.seasons)
        ? full.seasons.filter((s: any) => Number(s?.season_number) >= 1 && Number(s?.episode_count) > 0)
        : [];
      return {
        tmdbId: Number(hit.id),
        seasons,
        posterUrl: full?.poster_path ? `${TMDB_IMG_POSTER}${full.poster_path}` : null,
        backdropUrl: full?.backdrop_path ? `${TMDB_IMG_BACKDROP}${full.backdrop_path}` : null,
      };
    }
  }
  return null;
}

async function resolveTmdbTitleEn(tmdbId: number, type: "movie" | "tv"): Promise<string> {
  if (!tmdbId || tmdbId <= 0) return "";
  const en = await tmdbFetchOptional(`/${type}/${tmdbId}`, "en-US");
  return String(en?.title || en?.name || en?.original_title || en?.original_name || "").trim();
}

async function fetchLiveTmdbSeason(realTmdbId: number, seasonNumber: number, parentId: number) {
  if (!realTmdbId || realTmdbId <= 0) return null;
  const [arS, enS] = await Promise.all([
    tmdbFetchOptional(`/tv/${realTmdbId}/season/${seasonNumber}`, "ar"),
    tmdbFetchOptional(`/tv/${realTmdbId}/season/${seasonNumber}`, "en-US"),
  ]);
  const sData = arS || enS;
  if (!sData || !Array.isArray(sData.episodes)) return null;
  const enEps: any[] = Array.isArray(enS?.episodes) ? enS.episodes : [];
  return {
    seasonNumber,
    name: String(sData.name || `الموسم ${seasonNumber}`),
    episodes: sData.episodes.map((ep: any, idx: number) => {
      const epNum = Number(ep.episode_number || idx + 1);
      const enMatch = enEps.find((x: any) => Number(x.episode_number) === epNum);
      return {
        id: `${parentId}-s${seasonNumber}-e${epNum}`,
        seasonNumber,
        episodeNumber: epNum,
        titleAr: String(ep.name || `الحلقة ${epNum}`).trim(),
        titleEn: String(enMatch?.name || `Episode ${epNum}`).trim(),
        overview: String(ep.overview || enMatch?.overview || "").trim(),
        runtimeMin: Number(ep.runtime || enMatch?.runtime || 45),
        airDate: String(ep.air_date || ""),
        stillUrl: ep.still_path ? `${TMDB_IMG_BACKDROP}${ep.still_path}` : null,
      };
    }),
  };
}

async function buildLiveTmdbFilmDetail(publicId: number, realTmdbId: number, type: "movie" | "tv") {
  if (!realTmdbId || realTmdbId <= 0) return null;
  const append =
    type === "tv"
      ? "aggregate_credits,credits,videos,content_ratings,external_ids,recommendations"
      : "credits,videos,release_dates,external_ids,recommendations";
  const [arData, enData] = await Promise.all([
    tmdbFetchOptional(`/${type}/${realTmdbId}?append_to_response=${append}`, "ar"),
    tmdbFetchOptional(`/${type}/${realTmdbId}?append_to_response=videos`, "en-US"),
  ]);
  const data = arData || enData;
  if (!data || !data.id) return null;

  const isTv = type === "tv";
  const titleAr = String(arData?.title || arData?.name || enData?.title || enData?.name || "عمل عالمي").trim();
  const titleEn = String(enData?.title || enData?.name || data.original_title || data.original_name || titleAr).trim();
  const posterUrl = data.poster_path ? `${TMDB_IMG_POSTER}${data.poster_path}` : null;
  const backdropUrl = data.backdrop_path ? `${TMDB_IMG_BACKDROP}${data.backdrop_path}` : posterUrl;
  const releaseStr = String(data.release_date || data.first_air_date || "");
  const year = Number(releaseStr.slice(0, 4)) || new Date().getFullYear();
  const genres = Array.isArray(data.genres) && data.genres.length > 0
    ? data.genres.map((g: any) => String(g.name || "")).filter(Boolean).slice(0, 4)
    : ["دراما"];
  const isAnim = genres.some((g: string) => /animation|رسوم|أنميشن|كرتون/i.test(g)) ||
    (Array.isArray(data.genres) && data.genres.some((g: any) => Number(g.id) === 16));

  const allVideos: any[] = [...(enData?.videos?.results || []), ...(arData?.videos?.results || [])];
  const trailer =
    allVideos.find((v) => v.site === "YouTube" && v.type === "Trailer" && v.official !== false) ||
    allVideos.find((v) => v.site === "YouTube" && v.type === "Trailer") ||
    allVideos.find((v) => v.site === "YouTube");

  const crew: any[] = data?.credits?.crew || [];
  const directorObj =
    crew.find((c) => c.job === "Director") ||
    (Array.isArray(data?.created_by) ? data.created_by[0] : null);
  const rawCast: any[] =
    data?.credits?.cast?.length > 0 ? data.credits.cast : data?.aggregate_credits?.cast || [];
  const cast = rawCast.slice(0, 14).map((c: any) => ({
    id: Number(c.id),
    name: String(c.name || c.original_name || ""),
    character: String(c.character || (Array.isArray(c.roles) ? c.roles[0]?.character : "") || "ممثل"),
    profileUrl: c.profile_path ? `${TMDB_IMG_PROFILE}${c.profile_path}` : null,
  }));

  let ageRating = "PG-13";
  if (isTv) {
    const usR = (data?.content_ratings?.results || []).find((r: any) => r.iso_3166_1 === "US");
    if (usR?.rating) ageRating = usR.rating;
  } else {
    const usR = (data?.release_dates?.results || []).find((r: any) => r.iso_3166_1 === "US");
    const cert = usR?.release_dates?.find((d: any) => d.certification)?.certification;
    if (cert) ageRating = cert;
  }

  const runtimeMin = Number(
    data?.runtime ||
      (Array.isArray(data?.episode_run_time) ? data.episode_run_time[0] : 0) ||
      (isTv ? 45 : 112),
  );

  const seasonsRaw: any[] = isTv && Array.isArray(data.seasons)
    ? data.seasons.filter((s: any) => Number(s.season_number) >= 1)
    : [];
  const seasons = seasonsRaw.map((s: any) => ({
    seasonNumber: Number(s.season_number),
    name: String(s.name || `الموسم ${s.season_number}`),
    episodeCount: Number(s.episode_count || 1),
    posterUrl: s.poster_path ? `${TMDB_IMG_POSTER}${s.poster_path}` : posterUrl,
    airDate: String(s.air_date || ""),
  }));

  let episodes: any[] = [];
  if (!isTv) {
    episodes = [
      {
        id: `${publicId}-m-1`,
        seasonNumber: 1,
        episodeNumber: 1,
        titleAr,
        titleEn,
        overview: String(arData?.overview || enData?.overview || "لا يوجد ملخص متوفر حالياً.").trim(),
        runtimeMin,
        airDate: releaseStr,
        stillUrl: backdropUrl || posterUrl,
      },
    ];
  } else {
    const firstSeasonNum = seasons[0]?.seasonNumber || 1;
    const sRes = await fetchLiveTmdbSeason(realTmdbId, firstSeasonNum, publicId);
    episodes = sRes?.episodes || [];
  }

  const recOffset = isTv ? 1_800_000_000 : 1_500_000_000;
  const recsRaw: any[] = Array.isArray(data?.recommendations?.results) ? data.recommendations.results.slice(0, 10) : [];
  const recs = recsRaw.map((r: any) => ({
    id: recOffset + Number(r.id),
    tmdbType: type,
    mediaType: isAnim ? "animation" : isTv ? "series" : "movie",
    titleAr: String(r.title || r.name || r.original_title || r.original_name || "").trim(),
    titleEn: String(r.original_title || r.original_name || r.title || r.name || "").trim(),
    overviewAr: String(r.overview || "").trim(),
    posterUrl: r.poster_path ? `${TMDB_IMG_POSTER}${r.poster_path}` : null,
    backdropUrl: r.backdrop_path ? `${TMDB_IMG_BACKDROP}${r.backdrop_path}` : null,
    year: Number(String(r.release_date || r.first_air_date || "").slice(0, 4)) || year,
    imdbRating: Number(Number(r.vote_average || 7.0).toFixed(1)),
    voteCount: Number(r.vote_count || 100),
    popularity: Number(r.popularity || 50),
    qualityBadge: "1080p FHD",
    audioLabel: "مترجم",
    categoryLabel: isAnim ? "أنميشن" : isTv ? "مسلسلات أجنبية" : "أفلام أجنبية",
    genres,
    durationOrSeasons: isTv ? `${seasons.length || 1} مواسم` : "فيلم كامل",
  }));

  return {
    id: publicId,
    realTmdbId,
    tmdbType: type,
    mediaType: isAnim ? "animation" : isTv ? "series" : "movie",
    titleAr,
    titleEn,
    overviewAr: String(arData?.overview || enData?.overview || "لا يوجد ملخص متوفر حالياً.").trim(),
    posterUrl,
    backdropUrl,
    year,
    imdbRating: Number(Number(data.vote_average || 7.0).toFixed(1)),
    voteCount: Number(data.vote_count || 100),
    popularity: Number(data.popularity || 50),
    qualityBadge: "1080p FHD",
    audioLabel: "مترجم",
    categoryLabel: isAnim ? "أنميشن" : isTv ? "مسلسلات أجنبية" : "أفلام أجنبية",
    genres,
    runtimeMin,
    durationOrSeasons: isTv
      ? seasons.length > 1
        ? `${seasons.length} مواسم`
        : `${episodes.length || 1} حلقة`
      : "فيلم كامل",
    statusLabel: isTv ? (seasons.length > 1 ? "مكتمل" : "متوفر") : "فيلم كامل",
    ageRating,
    director: directorObj?.name || (isTv ? "إنتاج تلفزيوني" : "سينما عالمية"),
    productionCompany: data?.production_companies?.[0]?.name || "NOVA FILM",
    imdbId: data?.external_ids?.imdb_id || null,
    trailerYoutubeKey: trailer?.key || null,
    cast,
    seasons,
    episodes,
    relations: recs.slice(0, 6),
    recommendations: recs,
  };
}

// ── FirePlayer (vidhls.com / embed.hamml.com) real HLS extractor ────────────
function extractFirePlayerConfig(html: string): any | null {
  const fpIdx = html.search(/FirePlayer\s*\(/);
  if (fpIdx === -1) return null;
  const objStart = html.indexOf("{", fpIdx);
  if (objStart === -1) return null;
  let depth = 0;
  let configEnd = -1;
  let inStr = false;
  let escNext = false;
  for (let i = objStart; i < html.length; i++) {
    const ch = html[i];
    if (escNext) {
      escNext = false;
      continue;
    }
    if (ch === "\\" && inStr) {
      escNext = true;
      continue;
    }
    if (ch === '"') {
      inStr = !inStr;
      continue;
    }
    if (inStr) continue;
    if (ch === "{") depth++;
    else if (ch === "}") {
      depth--;
      if (depth === 0) {
        configEnd = i;
        break;
      }
    }
  }
  if (configEnd === -1) return null;
  try {
    return JSON.parse(html.slice(objStart, configEnd + 1));
  } catch {
    return null;
  }
}


const MOVIEBOX_DEFAULT_DOMAINS = [
  "https://fmoviesunblocked.net",
  "https://h5.aoneroom.com",
  "https://moviebox.ph",
];

function getMovieBoxDomains(): string[] {
  const fromEnv = String(process.env.MOVIEBOX_DOMAINS || process.env.MOVIEBOX_DOMAIN || "")
    .split(",")
    .map((s) => s.trim().replace(/\/+$/, ""))
    .filter((s) => s.startsWith("http"));
  return fromEnv.length > 0 ? [...new Set([...fromEnv, ...MOVIEBOX_DEFAULT_DOMAINS])] : MOVIEBOX_DEFAULT_DOMAINS;
}

function stripArabicDiacritics(s: string): string {
  return String(s || "").replace(/[\u064B-\u065F\u0670\u06D6-\u06ED]/g, "");
}

function isArabicCaption(lan?: string, lanName?: string): boolean {
  const l = String(lan || "").trim().toLowerCase();
  if (l === "ar" || l.startsWith("ar-") || l.startsWith("ar_")) return true;
  const cleanName = stripArabicDiacritics(String(lanName || "")).toLowerCase();
  return cleanName.includes("arab") || cleanName.includes("عرب");
}

function tierFromResolution(resNum: number): string {
  if (resNum >= 2160) return "4K UHD";
  if (resNum >= 1080) return "1080p FHD";
  if (resNum >= 720) return "720p HD";
  return "480p SD";
}

async function resolveMovieBoxServer(
  srv: { name?: string; url: string; host?: string },
  idx: number,
): Promise<{ sources: ResolvedSource[]; tracks: SubTrack[] }> {
  const outSources: ResolvedSource[] = [];
  const outTracks: SubTrack[] = [];
  const raw = String(srv.url || "").trim();
  const match = raw.match(/^moviebox:\/\/([^/?#]+)\/(\d+)\/(\d+)(?:\?(.*))?$/i);
  if (!match) return { sources: outSources, tracks: outTracks };

  const subjectId = match[1];
  const se = Number.parseInt(match[2], 10) || 0;
  const ep = Number.parseInt(match[3], 10) || 0;
  const qs = new URLSearchParams(match[4] || "");
  const detailPath = qs.get("path") || subjectId;
  const domains = getMovieBoxDomains();

  for (const domain of domains) {
    try {
      const refPage = `${domain}/spa/videoPlayPage/movies/${encodeURIComponent(detailPath)}?id=${encodeURIComponent(subjectId)}&type=/movie/detail`;
      const reqHeaders = {
        "User-Agent": BROWSER_UA,
        Accept: "application/json, text/plain, */*",
        Referer: refPage,
        Origin: domain,
      };

      let streams: Array<{ id?: string; url: string; resolution: number }> = [];
      let captions: Array<{ lan?: string; lanName?: string; url?: string }> = [];

      const dlUrl = `${domain}/wefeed-h5-bff/web/subject/download?subjectId=${encodeURIComponent(subjectId)}&se=${se}&ep=${ep}&detail_path=${encodeURIComponent(detailPath)}`;
      const dlResp = await fetch(dlUrl, { headers: reqHeaders, signal: AbortSignal.timeout(10_000) });
      if (dlResp.ok) {
        const dlJson: any = await dlResp.json().catch(() => null);
        if (Array.isArray(dlJson?.data?.downloads) && dlJson.data.downloads.length > 0) {
          streams = dlJson.data.downloads
            .filter((d: any) => typeof d?.url === "string" && d.url.startsWith("http"))
            .map((d: any) => ({
              id: String(d.id || ""),
              url: String(d.url),
              resolution: Number(d.resolution || 0),
            }));
        }
        if (Array.isArray(dlJson?.data?.captions)) {
          captions = dlJson.data.captions;
        }
      }

      if (streams.length === 0) {
        const playUrl = `${domain}/wefeed-h5-bff/web/subject/play?subjectId=${encodeURIComponent(subjectId)}&se=${se}&ep=${ep}&detail_path=${encodeURIComponent(detailPath)}`;
        const pResp = await fetch(playUrl, { headers: reqHeaders, signal: AbortSignal.timeout(10_000) });
        if (pResp.ok) {
          const pJson: any = await pResp.json().catch(() => null);
          if (Array.isArray(pJson?.data?.streams) && pJson.data.streams.length > 0) {
            streams = pJson.data.streams
              .filter((s: any) => typeof s?.url === "string" && s.url.startsWith("http"))
              .map((s: any) => ({
                id: String(s.id || ""),
                url: String(s.url),
                resolution: Number.parseInt(String(s.resolutions || "0"), 10) || 0,
              }));
          }
        }
        if (streams.length > 0 && captions.length === 0 && streams[0].id) {
          const capUrl = `${domain}/wefeed-h5-bff/web/subject/caption?format=MP4&id=${encodeURIComponent(streams[0].id)}&subjectId=${encodeURIComponent(subjectId)}`;
          const cResp = await fetch(capUrl, { headers: reqHeaders, signal: AbortSignal.timeout(8_000) });
          if (cResp.ok) {
            const cJson: any = await cResp.json().catch(() => null);
            if (Array.isArray(cJson?.data?.captions)) captions = cJson.data.captions;
          }
        }
      }

      if (streams.length === 0) continue;

      const sortedCaps = [...captions].filter((c) => typeof c?.url === "string" && c.url.startsWith("http"));
      sortedCaps.sort((a, b) => Number(isArabicCaption(b.lan, b.lanName)) - Number(isArabicCaption(a.lan, a.lanName)));
      for (let ci = 0; ci < sortedCaps.length; ci++) {
        const cap = sortedCaps[ci];
        const isAr = isArabicCaption(cap.lan, cap.lanName);
        if (!isAr && String(cap.lan || "").toLowerCase() !== "en") continue;
        outTracks.push({
          id: `mb-sub-${idx}-${ci}`,
          lang: isAr ? "ar" : "en",
          label: isAr ? "العربية" : "English",
          url: String(cap.url),
        });
      }

      const arSubUrl = outTracks.find((t) => t.lang === "ar")?.url || outTracks[0]?.url;
      streams.sort((a, b) => b.resolution - a.resolution);
      const pickedStreams: typeof streams = [];
      const seenTiers = new Set<string>();
      for (const st of streams) {
        const tier = tierFromResolution(st.resolution);
        if (seenTiers.has(tier)) continue;
        seenTiers.add(tier);
        pickedStreams.push(st);
        if (pickedStreams.length >= 2) break;
      }

      const cdnHeaders = {
        Referer: "https://themoviebox.xyz/",
        "User-Agent": BROWSER_UA,
      };

      for (let si = 0; si < pickedStreams.length; si++) {
        const st = pickedStreams[si];
        const tier = tierFromResolution(st.resolution);
        outSources.push({
          site: si === 0 ? "moviebox" : "moviebox-alt",
          label: `سيرفر ${idx + si + 1}  · ${st.resolution ? st.resolution + "p" : tier} مباشر`,
          tier,
          url: st.url,
          directUrl: st.url,
          isEmbed: false,
          type: "mp4",
          subtitleUrl: arSubUrl,
          hardsubbed: false,
          headers: cdnHeaders,
        });
      }
      return { sources: outSources, tracks: outTracks };
    } catch {
      // try next domain
    }
  }
  return { sources: outSources, tracks: outTracks };
}

async function resolveDivHardServer(
  srv: { name?: string; url: string; host?: string },
  idx: number,
  isHardsubbed = true,
): Promise<{ sources: ResolvedSource[]; tracks: SubTrack[] }> {
  const outSources: ResolvedSource[] = [];
  const outTracks: SubTrack[] = [];
  const embedUrl = String(srv.url || "").trim();
  const tokMatch = embedUrl.match(/ex\.divhard\.com\/play\/([a-f0-9]+)/i);
  if (!tokMatch) return { sources: outSources, tracks: outTracks };

  const token = tokMatch[1];
  const srvLabel = String(srv.name || `السيرفر ${idx + 1}`).trim();
  try {
    const apiResp = await fetch(`https://ex.divhard.com/api/source.php?t=${encodeURIComponent(token)}`, {
      headers: {
        "User-Agent": BROWSER_UA,
        Referer: embedUrl,
        Origin: "https://ex.divhard.com",
        Accept: "application/json, */*",
      },
      signal: AbortSignal.timeout(10_000),
    });
    if (!apiResp.ok) return { sources: outSources, tracks: outTracks };
    const data: any = await apiResp.json().catch(() => null);
    if (!data?.ok || !Array.isArray(data.sources) || data.sources.length === 0) {
      return { sources: outSources, tracks: outTracks };
    }

    const firstSrc = data.sources.find((s: any) => typeof s?.url === "string" && s.url.trim().length > 0);
    if (!firstSrc) return { sources: outSources, tracks: outTracks };

    const rawMediaUrl = String(firstSrc.url).trim();
    const absMediaUrl = rawMediaUrl.startsWith("http")
      ? rawMediaUrl
      : `https://ex.divhard.com${rawMediaUrl.startsWith("/") ? "" : "/"}${rawMediaUrl}`;
    const refForHls = "https://ex.divhard.com/";

    const mResp = await fetch(absMediaUrl, {
      headers: { "User-Agent": BROWSER_UA, Referer: refForHls, Accept: "*/*" },
      signal: AbortSignal.timeout(9_000),
    });
    if (!mResp.ok) return { sources: outSources, tracks: outTracks };
    const mText = await mResp.text();
    if (!mText.includes("#EXTM3U")) return { sources: outSources, tracks: outTracks };

    const streamInf = mText
      .split(/\r?\n/)
      .filter((l) => l.startsWith("#EXT-X-STREAM-INF"))
      .join("\n");
    const titleHint = String(data.title || "");
    let tier = "1080p FHD";
    if (/3840x2160|2160p/i.test(streamInf)) tier = "4K UHD";
    else if (/1920x1080|1080p/i.test(streamInf) || /1080/.test(titleHint)) tier = "1080p FHD";
    else if (/1280x720|720p/i.test(streamInf) || /720/.test(titleHint)) tier = "720p HD";
    else if (/854x480|640x360|480p/i.test(streamInf)) tier = "480p SD";

    const divHeaders = { "User-Agent": BROWSER_UA, Referer: refForHls };
    outSources.push({
      site: "nv",
      label: tier,
      tier,
      url: absMediaUrl,
      directUrl: absMediaUrl,
      isEmbed: false,
      type: "hls",
      headers: divHeaders,
      hardsubbed: isHardsubbed,
    });

    // If master playlist contains a lighter 720p/480p variant, emit it as a fast-start HD option too!
    const mLines = mText.split(/\r?\n/).map((l) => l.trim());
    let pickedFastUrl = "";
    let pickedFastTier = "";
    for (let li = 0; li < mLines.length - 1; li++) {
      const infLine = mLines[li];
      if (!infLine.startsWith("#EXT-X-STREAM-INF")) continue;
      const nextUrl = mLines[li + 1];
      if (!nextUrl || nextUrl.startsWith("#")) continue;
      const resM = infLine.match(/RESOLUTION=(\d+)x(\d+)/i);
      const height = resM ? Number.parseInt(resM[2], 10) : 0;
      const absVar = nextUrl.startsWith("http") ? nextUrl : new URL(nextUrl, absMediaUrl).toString();
      if (height >= 540 && height <= 800 && tier !== "720p HD") {
        pickedFastUrl = absVar;
        pickedFastTier = "720p HD";
        break;
      }
      if (!pickedFastUrl && height >= 360 && height < 540 && tier !== "480p SD") {
        pickedFastUrl = absVar;
        pickedFastTier = "480p SD";
      }
    }
    if (pickedFastUrl && pickedFastUrl !== absMediaUrl) {
      outSources.push({
        site: "vx",
        label: pickedFastTier,
        tier: pickedFastTier,
        url: pickedFastUrl,
        directUrl: pickedFastUrl,
        isEmbed: false,
        type: "hls",
        headers: divHeaders,
        hardsubbed: isHardsubbed,
      });
    }
  } catch {
    // failed to resolve divhard source
  }
  return { sources: outSources, tracks: outTracks };
}

async function resolveMoviztimeServer(
  srv: { name?: string; url: string; host?: string },
  idx: number,
  isHardsubbed = true,
): Promise<{ sources: ResolvedSource[]; tracks: SubTrack[] }> {
  const outSources: ResolvedSource[] = [];
  const outTracks: SubTrack[] = [];
  const embedUrl = String(srv.url || "").trim();
  if (embedUrl.toLowerCase().startsWith("moviebox://")) {
    return resolveMovieBoxServer(srv, idx);
  }
  if (!embedUrl.startsWith("http")) return { sources: outSources, tracks: outTracks };
  if (embedUrl.toLowerCase().includes("ex.divhard.com/play/")) {
    return resolveDivHardServer(srv, idx, isHardsubbed);
  }

  const lower = embedUrl.toLowerCase();
  const srvLabel = String(srv.name || `السيرفر ${idx + 1}`).trim();

  if (lower.includes("vidhls.com") || lower.includes("embed.hamml.com")) {
    try {
      const resp = await fetch(embedUrl, {
        headers: {
          "User-Agent": BROWSER_UA,
          Referer: "https://moviztime.top/",
          Accept: "text/html,application/xhtml+xml,*/*;q=0.8",
        },
        signal: AbortSignal.timeout(12_000),
      });
      if (resp.ok) {
        const html = await resp.text();
        const cfg = extractFirePlayerConfig(html);
        if (cfg && cfg.videoUrl) {
          const cleanPath = String(cfg.videoUrl).replace(/\\\//g, "/");
          const srvParam = String(cfg.videoServer ?? "1");
          const masterUrl = `https://vidhls.com${cleanPath.startsWith("/") ? "" : "/"}${cleanPath}?s=${encodeURIComponent(srvParam)}`;
          const refForHls = lower.includes("vidhls.com") ? embedUrl : "https://vidhls.com/";

          // Extract inline subtitle tracks if available
          if (Array.isArray(cfg.tracks)) {
            for (let ti = 0; ti < cfg.tracks.length; ti++) {
              const tr = cfg.tracks[ti];
              const trFile = String(tr?.file || "").trim();
              if (!trFile) continue;
              const absSub = trFile.startsWith("http")
                ? trFile
                : `https://vidhls.com${trFile.startsWith("/") ? "" : "/"}${trFile}`;
              const label = String(tr?.label || "ترجمة");
              const lang = /arab|عرب|\bar\b/i.test(label) ? "ar" : "en";
              outTracks.push({
                id: `vh-sub-${idx}-${ti}`,
                lang,
                label,
                url: absSub,
              });
            }
          }

          // Verify real #EXTM3U stream before emitting as playable HLS
          const mResp = await fetch(masterUrl, {
            headers: {
              "User-Agent": BROWSER_UA,
              Referer: refForHls,
              Accept: "*/*",
            },
            signal: AbortSignal.timeout(10_000),
          });
          if (mResp.ok) {
            const mText = await mResp.text();
            if (mText.includes("#EXTM3U")) {
              const streamInf = mText
                .split(/\r?\n/)
                .filter((l) => l.startsWith("#EXT-X-STREAM-INF"))
                .join("\n");
              const titleHint = String(cfg.title || "");
              let tier = "1080p FHD";
              if (/3840x2160|2160p/i.test(streamInf)) tier = "4K UHD";
              else if (/1920x1080|1080p/i.test(streamInf) || /1080/.test(titleHint)) tier = "1080p FHD";
              else if (/1280x720|720p/i.test(streamInf) || /\[720\]/.test(titleHint)) tier = "720p HD";
              else if (/854x480|640x360|480p/i.test(streamInf)) tier = "480p SD";

              const subUrl = isHardsubbed ? undefined : outTracks.find((t) => t.lang === "ar")?.url;
              const directHeaders = { "User-Agent": BROWSER_UA, Referer: refForHls };
              outSources.push({
                site: "nv",
                label: tier,
                tier,
                url: masterUrl,
                directUrl: masterUrl,
                isEmbed: false,
                type: "hls",
                headers: directHeaders,
                subtitleUrl: subUrl,
                hardsubbed: isHardsubbed,
              });

              const childLine = mText
                .split(/\r?\n/)
                .map((l) => l.trim())
                .find((l) => l.startsWith("http"));
              if (childLine) {
                const altTier = tier === "1080p FHD" ? "720p HD" : "1080p FHD";
                outSources.push({
                  site: "vx",
                  label: altTier,
                  tier: altTier,
                  url: childLine,
                  directUrl: childLine,
                  isEmbed: false,
                  type: "hls",
                  headers: directHeaders,
                  subtitleUrl: subUrl,
                  hardsubbed: isHardsubbed,
                });
              }
              return { sources: outSources, tracks: outTracks };
            }
          }
        }
      }
    } catch {
      // direct extraction failed; do not emit broken embed fallback
    }
  }
  return { sources: outSources, tracks: outTracks };
}

async function resolveEpisodeFromVault(
  titleId: number,
  tmdbType: "movie" | "tv",
  season: number,
  episode: number,
): Promise<{ sources: ResolvedSource[]; tracks: SubTrack[]; titleEn: string; tmdbId: number | null; vaultId: number | null }> {
  const cacheKey = `${tmdbType}:${titleId}:s${season}:e${episode}`;
  const cached = _sourceResolveCache.get(cacheKey);
  if (cached && Date.now() - cached.ts < 20 * 60_000 && cached.items.length > 0) {
    return { sources: cached.items, tracks: cached.tracks, titleEn: cached.titleEn, tmdbId: cached.tmdbId, vaultId: null };
  }

  const decoded = decodeSyntheticTmdbId(titleId);
  const effectiveType: "movie" | "tv" = decoded?.tmdbType || tmdbType;

  let titleRes = await pool.query(
    `SELECT id, title_ar, title_en, tmdb_id, tmdb_type, audio_label FROM film_vault_titles WHERE id = $1 AND is_archived = FALSE LIMIT 1`,
    [titleId],
  );
  if (titleRes.rows.length === 0) {
    const lookupTmdbId = decoded ? decoded.realTmdbId : titleId;
    if (lookupTmdbId > 0) {
      titleRes = await pool.query(
        `SELECT id, title_ar, title_en, tmdb_id, tmdb_type, audio_label
         FROM film_vault_titles
         WHERE tmdb_id = $1 AND tmdb_type = $2 AND is_archived = FALSE
         ORDER BY has_live_server DESC, id DESC LIMIT 1`,
        [lookupTmdbId, effectiveType],
      );
    }
  }
  const titleRow = titleRes.rows[0];
  const vaultId = titleRow?.id ? Number(titleRow.id) : null;
  const isHardsubbed = !titleRow?.audio_label || /مترجم|hardsub/i.test(String(titleRow.audio_label));

  let epRow: any = null;
  if (vaultId) {
    if (effectiveType === "movie") {
      const epRes = await pool.query(
        `SELECT servers_json, source_url FROM film_vault_episodes WHERE title_id = $1 AND is_archived = FALSE ORDER BY has_live_server DESC, season_number ASC, episode_number ASC LIMIT 1`,
        [vaultId],
      );
      epRow = epRes.rows[0];
    } else {
      const epRes = await pool.query(
        `SELECT servers_json, source_url FROM film_vault_episodes WHERE title_id = $1 AND season_number = $2 AND episode_number = $3 AND is_archived = FALSE LIMIT 1`,
        [vaultId, season, episode],
      );
      epRow = epRes.rows[0];
    }
  }

  const servers = safeJsonArray<{ name?: string; url: string; host?: string; live?: boolean }>(
    epRow?.servers_json,
  );
  const orderedServers = [...servers].sort((a, b) => Number(Boolean(b.live)) - Number(Boolean(a.live)));

  const resolvedAll: ResolvedSource[] = [];
  const tracksAll: SubTrack[] = [];

  if (orderedServers.length > 0) {
    const results = await Promise.all(orderedServers.slice(0, 4).map((srv, idx) => resolveMoviztimeServer(srv, idx, isHardsubbed)));
    for (const r of results) {
      resolvedAll.push(...r.sources);
      tracksAll.push(...r.tracks);
    }
  }

  const resolvedTmdbId = titleRow?.tmdb_id
    ? Number(titleRow.tmdb_id)
    : (decoded?.realTmdbId ?? null);
  let resolvedTitleEn = String(titleRow?.title_en || "").trim();
  if (!resolvedTitleEn && resolvedTmdbId) {
    resolvedTitleEn = await resolveTmdbTitleEn(resolvedTmdbId, effectiveType);
  }

  if (resolvedAll.some((s) => !s.isEmbed)) {
    const directOnly = resolvedAll.filter((s) => !s.isEmbed);
    _sourceResolveCache.set(cacheKey, { items: directOnly, tracks: tracksAll, titleEn: resolvedTitleEn, tmdbId: resolvedTmdbId, ts: Date.now() });
    return {
      sources: directOnly,
      tracks: tracksAll,
      titleEn: resolvedTitleEn,
      tmdbId: resolvedTmdbId,
      vaultId,
    };
  }

  if (resolvedAll.length > 0) {
    _sourceResolveCache.set(cacheKey, { items: resolvedAll, tracks: tracksAll, titleEn: resolvedTitleEn, tmdbId: resolvedTmdbId, ts: Date.now() });
  }
  return {
    sources: resolvedAll,
    tracks: tracksAll,
    titleEn: resolvedTitleEn,
    tmdbId: resolvedTmdbId,
    vaultId,
  };
}

// ── 1. Clean NOVA FILM remote config ─────────────────────────────────────────
// Lightweight 7-day-cached poster proxy ONLY for ISP/hotlink-blocked poster hosts (zero video traffic!)
router.get("/poster", async (req: Request, res: Response) => {
  try {
    const raw = String(req.query.u || req.query.url || "").trim();
    if (!raw || !raw.startsWith("http")) {
      res.status(400).end();
      return;
    }
    let parsed: URL;
    try {
      parsed = new URL(raw);
    } catch {
      res.status(400).end();
      return;
    }
    if (parsed.protocol !== "http:" && parsed.protocol !== "https:") {
      res.status(400).end();
      return;
    }
    const host = parsed.hostname.toLowerCase();
    const allowed = ALLOWED_POSTER_PROXY_HOSTS.some((d) => host === d || host.endsWith("." + d));
    if (!allowed) {
      res.status(403).end();
      return;
    }
    const up = await fetch(parsed.toString(), {
      headers: {
        "User-Agent": BROWSER_UA,
        Referer: `${parsed.origin}/`,
        Accept: "image/avif,image/webp,image/apng,image/*,*/*;q=0.8",
      },
      redirect: "follow",
      signal: AbortSignal.timeout(8_000),
    });
    if (!up.ok) {
      res.status(up.status === 404 ? 404 : 502).end();
      return;
    }
    const ct = (up.headers.get("content-type") || "image/jpeg").toLowerCase();
    if (!ct.startsWith("image/")) {
      res.status(415).end();
      return;
    }
    const buf = Buffer.from(await up.arrayBuffer());
    if (buf.length === 0 || buf.length > 4 * 1024 * 1024) {
      res.status(502).end();
      return;
    }
    res.setHeader("Content-Type", ct);
    res.setHeader("Cache-Control", "public, max-age=604800, immutable");
    res.setHeader("Content-Length", String(buf.length));
    res.end(buf);
  } catch {
    if (!res.headersSent) res.status(502).end();
  }
});

router.get("/config", (_req: Request, res: Response) => {
  res.json({
    app: "nova-film",
    version: "1.0.10",
    latestVersion: "1.0.10",
    latestVersionCode: 10,
    forceUpdate: false,
    maintenanceMode: false,
    catalogSource: "moviztime-vault",
    announcements: [],
    features: {
      comments: true,
      watchHistory: true,
      subscriptions: true,
      downloads: true,
      animationSection: true,
      subtitles: true,
    },
    sources: {
      moviztime: true,
      vidhls: true,
      divhard: true,
      moviebox: true,
      hamml: true,
    },
    limits: { downloadLimit: 6, watchAccessMinutes: 120 },
  });
});

// ── 2. Home batched real vault + live EgyDead & TopCinema feeds (deduped) ──
let _filmHomeCache: { ts: number; payload: any } | null = null;
router.get("/home", async (_req: Request, res: Response) => {
  try {
    if (_filmHomeCache && Date.now() - _filmHomeCache.ts < 5 * 60_000) {
      res.json(_filmHomeCache.payload);
      return;
    }

    const [
      heroRes,
      trendingRes,
      latestRes,
      asianRes,
      seriesRes,
      topRatedRes,
      extHome,
      tmdbForeignM,
      tmdbArabicM,
      tmdbTurkishM,
      tmdbIndianM,
      tmdbAsianM,
      tmdbArabicS,
      tmdbTurkishS,
      tmdbIndianS,
      tmdbAsianS,
      tmdbDubbedS,
      tmdbAnimM,
      tmdbAnimS,
    ] = await Promise.all([
      pool.query(
        `SELECT * FROM film_vault_titles
         WHERE is_archived = FALSE AND has_live_server = TRUE
           AND media_type != 'animation'
           AND poster_url != '' AND poster_url NOT LIKE '%images.jpg%'
         ORDER BY COALESCE(year, 2020) DESC, COALESCE(imdb_rating, 7.0) DESC, updated_at DESC
         LIMIT 8`,
      ),
      pool.query(
        `SELECT * FROM film_vault_titles
         WHERE is_archived = FALSE AND has_live_server = TRUE AND media_type = 'movie'
           AND poster_url != ''
         ORDER BY (COALESCE(year, 2020) * 1.5 + COALESCE(imdb_rating, 6.8) * 10) DESC, id DESC
         LIMIT 16`,
      ),
      pool.query(
        `SELECT * FROM film_vault_titles
         WHERE is_archived = FALSE AND has_live_server = TRUE AND media_type = 'movie'
           AND poster_url IS NOT NULL AND poster_url != '' AND poster_url NOT LIKE '%images.jpg%'
         ORDER BY COALESCE(year, 2020) DESC, updated_at DESC, id DESC
         LIMIT 16`,
      ),
      pool.query(
        `SELECT * FROM film_vault_titles
         WHERE is_archived = FALSE AND has_live_server = TRUE AND media_type = 'movie'
           AND category_label IN ('أفلام آسيوية', 'أفلام أوروبية')
         ORDER BY COALESCE(year, 2020) DESC, COALESCE(imdb_rating, 6.5) DESC, id DESC
         LIMIT 16`,
      ),
      pool.query(
        `SELECT * FROM film_vault_titles
         WHERE is_archived = FALSE AND has_live_server = TRUE AND media_type = 'series'
           AND poster_url IS NOT NULL AND poster_url != '' AND poster_url NOT LIKE '%images.jpg%'
         ORDER BY COALESCE(year, 2020) DESC, playable_episode_count DESC, updated_at DESC
         LIMIT 16`,
      ),
      pool.query(
        `SELECT * FROM film_vault_titles
         WHERE is_archived = FALSE AND has_live_server = TRUE AND media_type = 'movie'
           AND imdb_rating IS NOT NULL
         ORDER BY imdb_rating DESC, COALESCE(year, 2020) DESC, id DESC
         LIMIT 16`,
      ),
      fetchExternalHomeCatalog().catch(() => null),
      fetchTmdbDiscoverCategory("foreign_movies", { page: 1 }, 16).catch(() => ({ items: [] })),
      fetchTmdbDiscoverCategory("arabic_movies", { page: 1 }, 16).catch(() => ({ items: [] })),
      fetchTmdbDiscoverCategory("turkish_movies", { page: 1 }, 16).catch(() => ({ items: [] })),
      fetchTmdbDiscoverCategory("indian_movies", { page: 1 }, 16).catch(() => ({ items: [] })),
      fetchTmdbDiscoverCategory("asian_movies", { page: 1 }, 16).catch(() => ({ items: [] })),
      fetchTmdbDiscoverCategory("arabic_series", { page: 1 }, 16).catch(() => ({ items: [] })),
      fetchTmdbDiscoverCategory("turkish_series", { page: 1 }, 16).catch(() => ({ items: [] })),
      fetchTmdbDiscoverCategory("indian_series", { page: 1 }, 16).catch(() => ({ items: [] })),
      fetchTmdbDiscoverCategory("asian_series", { page: 1 }, 16).catch(() => ({ items: [] })),
      fetchTmdbDiscoverCategory("dubbed_series", { page: 1 }, 16).catch(() => ({ items: [] })),
      fetchTmdbDiscoverCategory("animation_movies", { page: 1 }, 16).catch(() => ({ items: [] })),
      fetchTmdbDiscoverCategory("animation_series", { page: 1 }, 16).catch(() => ({ items: [] })),
    ]);

    const vHero = heroRes.rows.map(rowToFilmSummary);
    const vTrending = trendingRes.rows.map(rowToFilmSummary);
    const vLatest = latestRes.rows.map(rowToFilmSummary);
    const vAsian = asianRes.rows.map(rowToFilmSummary);
    const vSeries = seriesRes.rows.map(rowToFilmSummary);
    const vTopRated = topRatedRes.rows.map(rowToFilmSummary);

    const ext = extHome || {
      foreignMovies: [], arabicMovies: [], turkishMovies: [], indianMovies: [],
      asianMovies: [], animationMovies: [], foreignSeries: [], arabicSeries: [],
      turkishSeries: [], indianSeries: [], asianSeries: [], dubbedSeries: [], animationSeries: [],
    };

    const hero = deduplicateFilmSummaries([vHero, tmdbForeignM.items.slice(0, 4), ext.foreignMovies.slice(0, 4), ext.foreignSeries.slice(0, 2)], undefined, 6);
    const trendingMovies = deduplicateFilmSummaries([vTrending, tmdbForeignM.items, ext.foreignMovies], undefined, 16);
    const latestMovies = deduplicateFilmSummaries([tmdbForeignM.items, ext.foreignMovies, vLatest], undefined, 16);
    const foreignMovies = deduplicateFilmSummaries([tmdbForeignM.items, ext.foreignMovies, vTrending, vLatest], undefined, 16);
    const arabicMovies = deduplicateFilmSummaries([ext.arabicMovies, tmdbArabicM.items], undefined, 16);
    const turkishMovies = deduplicateFilmSummaries([ext.turkishMovies, tmdbTurkishM.items], undefined, 16);
    const indianMovies = deduplicateFilmSummaries([ext.indianMovies, tmdbIndianM.items], undefined, 16);
    const asianMovies = deduplicateFilmSummaries([ext.asianMovies, tmdbAsianM.items, vAsian], undefined, 16);
    const popularSeries = deduplicateFilmSummaries([vSeries, ext.foreignSeries], undefined, 16);
    const latestSeries = deduplicateFilmSummaries([ext.foreignSeries, vSeries], undefined, 16);
    const arabicSeries = deduplicateFilmSummaries([ext.arabicSeries, tmdbArabicS.items], undefined, 16);
    const turkishSeries = deduplicateFilmSummaries([ext.turkishSeries, tmdbTurkishS.items], undefined, 16);
    const asianSeries = deduplicateFilmSummaries([ext.asianSeries, tmdbAsianS.items], undefined, 16);
    const dubbedSeries = deduplicateFilmSummaries([ext.dubbedSeries, tmdbDubbedS.items], undefined, 16);
    const indianSeries = deduplicateFilmSummaries([ext.indianSeries, tmdbIndianS.items], undefined, 16);
    const topRated = deduplicateFilmSummaries([vTopRated, tmdbForeignM.items, ext.foreignMovies], undefined, 16);
    // Official Animation Movies & Animation Series DB ONLY (stops wrong saved vault/scraped anime posters)
    const animationMovies = deduplicateFilmSummaries([tmdbAnimM.items], undefined, 16);
    const animationSeries = deduplicateFilmSummaries([tmdbAnimS.items], undefined, 16);
    const animations = deduplicateFilmSummaries([tmdbAnimM.items.slice(0, 10), tmdbAnimS.items.slice(0, 8)], undefined, 16);

    const payload = {
      hero,
      trendingMovies,
      latestMovies,
      foreignMovies,
      arabicMovies,
      turkishMovies,
      indianMovies,
      asianMovies,
      popularSeries,
      latestSeries,
      arabicSeries,
      turkishSeries,
      asianSeries,
      dubbedSeries,
      indianSeries,
      topRated,
      animations,
      animationMovies,
      animationSeries,
    };

    _filmHomeCache = { ts: Date.now(), payload };
    res.json(payload);
  } catch (err: any) {
    res.status(500).json({ error: String(err?.message || err) });
  }
});

// ── 3. Browse / Discover (Vault + Live EgyDead & TopCinema, zero dupes) ────
router.get("/browse", async (req: Request, res: Response) => {
  try {
    const category = String(req.query.category || "all").trim();
    const genre = String(req.query.genre || "الكل").trim();
    const sortRaw = String(req.query.sort || "popular").trim();
    const yearParam = Number.parseInt(String(req.query.year || ""), 10);
    const q = String(req.query.q || "").trim();
    const page = Math.max(1, Number.parseInt(String(req.query.page || "1"), 10) || 1);
    const limit = 24;
    const offset = (page - 1) * limit;

    // Official Animation Movies & Animation Series DB ONLY (never serve wrong saved vault or scraped anime posters)
    if (isOfficialAnimationCategory(category)) {
      if (q) {
        const tf = category === "animation_series" ? "tv" : category === "animation_movies" ? "movie" : "multi";
        const results = await searchTmdbCatalog(q, tf, page, { animationOnly: true });
        res.json({
          results: results.slice(0, limit),
          page,
          totalPages: results.length >= 16 ? page + 1 : page,
          totalResults: results.length,
        });
        return;
      }
      if (category === "animation") {
        const [mRes, sRes] = await Promise.all([
          fetchTmdbDiscoverCategory("animation_movies", { genre, sort: sortRaw, year: yearParam, page }, 16),
          fetchTmdbDiscoverCategory("animation_series", { genre, sort: sortRaw, year: yearParam, page }, 12),
        ]);
        const mergedAnim = deduplicateFilmSummaries([mRes.items, sRes.items], undefined, limit);
        res.json({
          results: mergedAnim,
          page,
          totalPages: Math.max(mRes.totalPages, sRes.totalPages),
          totalResults: mRes.totalResults + sRes.totalResults,
        });
        return;
      }
      const animRes = await fetchTmdbDiscoverCategory(category, { genre, sort: sortRaw, year: yearParam, page }, limit);
      res.json({
        results: animRes.items,
        page,
        totalPages: animRes.totalPages,
        totalResults: animRes.totalResults,
      });
      return;
    }

    const extCatKeys: Record<string, string[]> = {
      all: ["foreign_movies", "foreign_series", "arabic_movies", "arabic_series"],
      movie: ["foreign_movies"],
      foreign_movies: ["foreign_movies"],
      western_movies: ["foreign_movies"],
      series: ["foreign_series"],
      foreign_series: ["foreign_series"],
      western_series: ["foreign_series"],
      arabic_movies: ["arabic_movies"],
      arabic_series: ["arabic_series"],
      arabic: ["arabic_movies", "arabic_series"],
      turkish_movies: ["turkish_movies"],
      turkish_series: ["turkish_series"],
      turkish: ["turkish_series", "turkish_movies"],
      indian_movies: ["indian_movies"],
      indian_series: ["indian_series"],
      indian: ["indian_movies", "indian_series"],
      asian_movies: ["asian_movies"],
      asian_series: ["asian_series"],
      asian: ["asian_movies", "asian_series"],
      dubbed: ["dubbed_series"],
      dubbed_series: ["dubbed_series"],
      top_rated: ["foreign_movies"],
    };

    const tmdbCatKeys: Record<string, string[]> = {
      all: ["foreign_movies", "foreign_series"],
      movie: ["foreign_movies"],
      foreign_movies: ["foreign_movies"],
      western_movies: ["western_movies"],
      series: ["foreign_series"],
      foreign_series: ["foreign_series"],
      western_series: ["western_series"],
      arabic_movies: ["arabic_movies"],
      arabic_series: ["arabic_series"],
      arabic: ["arabic_movies", "arabic_series"],
      turkish_movies: ["turkish_movies"],
      turkish_series: ["turkish_series"],
      turkish: ["turkish_series", "turkish_movies"],
      indian_movies: ["indian_movies"],
      indian_series: ["indian_series"],
      indian: ["indian_movies", "indian_series"],
      asian_movies: ["asian_movies"],
      asian_series: ["asian_series"],
      asian: ["asian_movies", "asian_series"],
      dubbed: ["dubbed_series"],
      dubbed_series: ["dubbed_series"],
      top_rated: ["top_rated"],
    };

    const isPureRegionalCat = [
      "arabic_movies",
      "arabic_series",
      "arabic",
      "turkish_movies",
      "turkish_series",
      "turkish",
      "indian_movies",
      "indian_series",
      "indian",
      "asian_series",
      "dubbed",
      "dubbed_series",
    ].includes(category);

    // 1) Vault query (skip saved vault animation posters & skip when pure regional category without search)
    const vaultPromise = (async () => {
      if (isPureRegionalCat && !q) return { rows: [] as any[], total: 0 };
      const conditions: string[] = [
        "is_archived = FALSE",
        "has_live_server = TRUE",
        "media_type != 'animation'",
        "poster_url IS NOT NULL",
        "poster_url != ''",
        "poster_url NOT LIKE '%images.jpg%'",
      ];
      const params: any[] = [];

      if (category === "asian" || category === "asian_movies") {
        conditions.push(`media_type = 'movie' AND category_label IN ('أفلام آسيوية', 'أفلام أوروبية')`);
      } else if (category === "movie" || category === "foreign_movies" || category === "western_movies" || category === "top_rated") {
        conditions.push(`media_type = 'movie'`);
      } else if (category === "series" || category === "foreign_series" || category === "western_series") {
        conditions.push(`media_type = 'series'`);
      }

      if (Number.isFinite(yearParam) && yearParam >= 1950 && yearParam <= 2035) {
        params.push(yearParam);
        conditions.push(`year = $${params.length}`);
      }

      if (genre && genre !== "الكل") {
        params.push(`%${genre}%`);
        conditions.push(`genres_json ILIKE $${params.length}`);
      }

      if (q) {
        const variants = normalizeArabicSearchVariants(q);
        const orParts: string[] = [];
        for (const v of variants) {
          params.push(`%${v}%`);
          orParts.push(`title_ar ILIKE $${params.length} OR title_en ILIKE $${params.length}`);
        }
        if (orParts.length > 0) conditions.push(`(${orParts.join(" OR ")})`);
      }

      const whereSql = `WHERE ${conditions.join(" AND ")}`;
      let orderSql =
        "ORDER BY (COALESCE(year, 2020) * 1.5 + COALESCE(imdb_rating, 6.8) * 10 + LEAST(playable_episode_count, 20) * 0.3) DESC, id DESC";
      if (sortRaw === "rating" || category === "top_rated") {
        orderSql = "ORDER BY COALESCE(imdb_rating, 0) DESC, COALESCE(year, 2020) DESC, id DESC";
      } else if (sortRaw === "year") {
        orderSql = "ORDER BY COALESCE(year, 2020) DESC, updated_at DESC, id DESC";
      }

      const [countRes, rowsRes] = await Promise.all([
        pool.query(`SELECT COUNT(*)::int AS total FROM film_vault_titles ${whereSql}`, params),
        pool.query(
          `SELECT * FROM film_vault_titles ${whereSql} ${orderSql} LIMIT $${params.length + 1} OFFSET $${params.length + 2}`,
          [...params, limit, offset],
        ),
      ]);
      return {
        rows: rowsRes.rows.map(rowToFilmSummary),
        total: Number(countRes.rows[0]?.total || 0),
      };
    })();

    // 2) Live External query (TopCinema + EgyDead)
    const extPromise = (async () => {
      try {
        if (q) {
          if (page > 1) return [];
          const typeFilter =
            category === "movie" || category.endsWith("_movies")
              ? "movie"
              : category === "series" || category.endsWith("_series") || category === "dubbed"
                ? "tv"
                : "multi";
          return await searchExternalCatalog(q, typeFilter, 28);
        }
        const keys = extCatKeys[category] || ["foreign_movies"];
        const perKey = Math.max(12, Math.ceil(36 / keys.length));
        const batches = await Promise.all(keys.map((k) => fetchExternalCategory(k, page, perKey)));
        let list = deduplicateFilmSummaries(batches, undefined, 40);
        if (Number.isFinite(yearParam) && yearParam >= 1950 && yearParam <= 2035) {
          list = list.filter((x) => x.year === yearParam);
        }
        if (genre && genre !== "الكل") {
          const gLow = genre.toLowerCase();
          const filtered = list.filter(
            (x) =>
              x.genres.some((g) => g.toLowerCase().includes(gLow)) ||
              x.categoryLabel.toLowerCase().includes(gLow),
          );
          if (filtered.length > 0) list = filtered;
        }
        return list;
      } catch {
        return [];
      }
    })();

    // 3) Official TMDB Discover / Search query (guarantees zero empty categories & full Arabic+English search!)
    const tmdbPromise = (async () => {
      try {
        if (q) {
          const typeFilter: "multi" | "movie" | "tv" =
            category === "movie" || category.endsWith("_movies")
              ? "movie"
              : category === "series" || category.endsWith("_series") || category === "dubbed"
                ? "tv"
                : "multi";
          const items = await searchTmdbCatalog(q, typeFilter, page);
          return { items, totalPages: items.length >= 16 ? page + 1 : page, totalResults: items.length };
        }
        const keys = tmdbCatKeys[category] || ["foreign_movies"];
        const perKey = Math.max(12, Math.ceil(limit / keys.length));
        const batches = await Promise.all(
          keys.map((k) => fetchTmdbDiscoverCategory(k, { genre, sort: sortRaw, year: yearParam, page }, perKey)),
        );
        const items = deduplicateFilmSummaries(batches.map((b) => b.items), undefined, 32);
        const totalPages = batches.reduce((m, b) => Math.max(m, b.totalPages), 1);
        const totalResults = batches.reduce((sum, b) => sum + b.totalResults, 0);
        return { items, totalPages, totalResults };
      } catch {
        return { items: [] as ExternalFilmSummary[], totalPages: 1, totalResults: 0 };
      }
    })();

    const [vaultData, extItems, tmdbData] = await Promise.all([vaultPromise, extPromise, tmdbPromise]);

    const orderedLists = q
      ? [vaultData.rows, tmdbData.items, extItems]
      : isPureRegionalCat || sortRaw === "year"
        ? [extItems, tmdbData.items, vaultData.rows]
        : [vaultData.rows, tmdbData.items, extItems];
    const merged = deduplicateFilmSummaries(orderedLists, undefined, limit);
    const hasRichPages = !q && (extItems.length >= 6 || tmdbData.items.length >= 6);
    const estTotalPages = Math.max(
      1,
      Math.ceil(vaultData.total / limit),
      tmdbData.totalPages,
      hasRichPages ? Math.max(page + 1, 25) : page,
    );

    res.json({
      results: merged,
      page,
      totalPages: estTotalPages,
      totalResults: Math.max(merged.length, vaultData.total + tmdbData.totalResults),
    });
  } catch (err: any) {
    res.status(500).json({ error: String(err?.message || err) });
  }
});

// ── 4. Search (Unified Vault + TopCinema + EgyDead, strictly deduped) ───────
router.get("/search", async (req: Request, res: Response) => {
  try {
    const q = String(req.query.q || "").trim();
    const type = String(req.query.type || "multi");
    const page = Math.max(1, Number.parseInt(String(req.query.page || "1"), 10) || 1);
    const limit = 24;
    const offset = (page - 1) * limit;

    if (!q) {
      res.json({ results: [], page: 1, totalPages: 1 });
      return;
    }

    const variants = normalizeArabicSearchVariants(q);
    const conditions: string[] = [
      "is_archived = FALSE",
      "has_live_server = TRUE",
      "media_type != 'animation'",
      "poster_url IS NOT NULL",
      "poster_url != ''",
      "poster_url NOT LIKE '%images.jpg%'",
    ];
    const params: any[] = [];

    if (type === "movie") {
      conditions.push(`tmdb_type = 'movie'`);
    } else if (type === "tv") {
      conditions.push(`tmdb_type = 'tv'`);
    }

    const orParts: string[] = [];
    for (const v of variants) {
      params.push(`%${v}%`);
      orParts.push(`title_ar ILIKE $${params.length} OR title_en ILIKE $${params.length}`);
    }
    if (orParts.length > 0) conditions.push(`(${orParts.join(" OR ")})`);
    const whereSql = `WHERE ${conditions.join(" AND ")}`;

    const typeFilter: "multi" | "movie" | "tv" = type === "movie" ? "movie" : type === "tv" ? "tv" : "multi";
    const [countRes, rowsRes, tmdbResults, extResults] = await Promise.all([
      pool.query(`SELECT COUNT(*)::int AS total FROM film_vault_titles ${whereSql}`, params),
      pool.query(
        `SELECT * FROM film_vault_titles ${whereSql}
         ORDER BY COALESCE(year, 2020) DESC, COALESCE(imdb_rating, 6.5) DESC, id DESC
         LIMIT $${params.length + 1} OFFSET $${params.length + 2}`,
        [...params, limit, offset],
      ),
      searchTmdbCatalog(q, typeFilter, page).catch(() => []),
      page === 1 ? searchExternalCatalog(q, typeFilter, 24).catch(() => []) : Promise.resolve([]),
    ]);

    const merged = deduplicateFilmSummaries(
      [rowsRes.rows.map(rowToFilmSummary), tmdbResults, extResults],
      undefined,
      limit,
    );
    const total = Math.max(merged.length, Number(countRes.rows[0]?.total || 0) + tmdbResults.length);
    res.json({
      results: merged,
      page,
      totalPages: Math.max(1, Math.ceil(total / limit)),
    });
  } catch (err: any) {
    res.status(500).json({ error: String(err?.message || err) });
  }
});

// ── 5. Full Detail (vault episodes + optional TMDB cast/trailer enrichment) ──
router.get("/detail", async (req: Request, res: Response) => {
  try {
    const rawId = Number.parseInt(String(req.query.id || "0"), 10);
    if (!rawId) {
      res.status(400).json({ error: "id is required" });
      return;
    }

    if (isExternalFilmId(rawId)) {
      const extDetail = await getExternalFilmDetail(rawId);
      if (!extDetail) {
        res.status(404).json({ error: "External title not found" });
        return;
      }
      if (extDetail.tmdbType === "tv") {
        try {
          const tmdbMatch = await resolveTmdbTvByTitle(extDetail.titleEn || extDetail.titleAr, extDetail.year);
          if (tmdbMatch) {
            extDetail.realTmdbId = tmdbMatch.tmdbId;
            if (tmdbMatch.posterUrl) extDetail.posterUrl = tmdbMatch.posterUrl;
            if (tmdbMatch.backdropUrl) extDetail.backdropUrl = tmdbMatch.backdropUrl;
            const mergedSeasons = mergeTvSeasons(extDetail.seasons || [], tmdbMatch.seasons, extDetail.posterUrl);
            if (mergedSeasons.length > 0) {
              extDetail.seasons = mergedSeasons;
              extDetail.durationOrSeasons = formatMergedSeriesDuration(mergedSeasons);
              const firstNum = mergedSeasons[0].seasonNumber || 1;
              const liveFirst = await fetchLiveTmdbSeason(tmdbMatch.tmdbId, firstNum, rawId);
              if (liveFirst?.episodes?.length) {
                extDetail.episodes = mergeSeasonEpisodes(
                  extDetail.episodes || [],
                  liveFirst.episodes,
                  rawId,
                  firstNum,
                  extDetail.backdropUrl || extDetail.posterUrl,
                );
              }
            }
          }
        } catch {}
      }
      // Attach real similar recommendations from cached home/category catalog
      try {
        const homeCat = await fetchExternalHomeCatalog();
        const poolList =
          extDetail.tmdbType === "tv"
            ? [...homeCat.foreignSeries, ...homeCat.arabicSeries, ...homeCat.turkishSeries]
            : [...homeCat.foreignMovies, ...homeCat.arabicMovies, ...homeCat.asianMovies];
        const recs = poolList.filter((x) => x.id !== rawId).slice(0, 10);
        extDetail.relations = recs.slice(0, 6);
        extDetail.recommendations = recs;
      } catch {}
      res.json(extDetail);
      return;
    }

    const decoded = decodeSyntheticTmdbId(rawId);
    const reqType: "movie" | "tv" = decoded?.tmdbType || (String(req.query.type || "movie") === "tv" ? "tv" : "movie");
    let titleRes = await pool.query(
      `SELECT * FROM film_vault_titles WHERE id = $1 AND is_archived = FALSE LIMIT 1`,
      [rawId],
    );
    if (titleRes.rows.length === 0) {
      const lookupTmdbId = decoded ? decoded.realTmdbId : rawId;
      titleRes = await pool.query(
        `SELECT * FROM film_vault_titles WHERE tmdb_id = $1 AND tmdb_type = $2 AND is_archived = FALSE ORDER BY has_live_server DESC, id DESC LIMIT 1`,
        [lookupTmdbId, reqType],
      );
    }

    const row = titleRes.rows[0];
    if (!row) {
      const liveDetail = await buildLiveTmdbFilmDetail(rawId, decoded ? decoded.realTmdbId : rawId, reqType);
      if (liveDetail) {
        res.json(liveDetail);
        return;
      }
      res.status(404).json({ error: "Title not found in vault" });
      return;
    }

    const summary = rowToFilmSummary(row);
    const isTv = summary.tmdbType === "tv";

    const [seasonsRes, tmdbExtra, recsRes] = await Promise.all([
      pool.query(
        `SELECT season_number, COUNT(*)::int AS ep_count
         FROM film_vault_episodes
         WHERE title_id = $1 AND is_archived = FALSE AND has_live_server = TRUE
         GROUP BY season_number
         ORDER BY season_number ASC`,
        [row.id],
      ),
      enrichDetailFromTmdb(row),
      pool.query(
        `SELECT * FROM film_vault_titles
         WHERE id != $1 AND is_archived = FALSE AND has_live_server = TRUE AND media_type = $2
         ORDER BY COALESCE(imdb_rating, 6.5) DESC, COALESCE(year, 2020) DESC
         LIMIT 10`,
        [row.id, row.media_type],
      ),
    ]);

    const effectiveRealTmdbId = tmdbExtra.tmdbId || (row.tmdb_id ? Number(row.tmdb_id) : null);
    const effectivePosterUrl = tmdbExtra.posterUrl || summary.posterUrl;
    const effectiveBackdropUrl = tmdbExtra.backdropUrl || summary.backdropUrl;

    const seasons = isTv
      ? mergeTvSeasons(seasonsRes.rows, tmdbExtra.seasons, effectivePosterUrl)
      : [];

    const firstSeasonNum = seasons[0]?.seasonNumber || 1;
    let episodes: any[] = [];

    if (!isTv) {
      episodes = [
        {
          id: `${row.id}-m-1`,
          seasonNumber: 1,
          episodeNumber: 1,
          titleAr: summary.titleAr,
          titleEn: summary.titleEn,
          overview: tmdbExtra.overviewAr || summary.overviewAr || "لا يوجد ملخص متوفر حالياً.",
          runtimeMin: tmdbExtra.runtimeMin,
          airDate: String(row.year || ""),
          stillUrl: effectiveBackdropUrl || effectivePosterUrl,
        },
      ];
    } else {
      const [epsRes, liveFirstSeason] = await Promise.all([
        pool.query(
          `SELECT id, season_number, episode_number, raw_title
           FROM film_vault_episodes
           WHERE title_id = $1 AND season_number = $2 AND is_archived = FALSE AND has_live_server = TRUE
           ORDER BY episode_number ASC`,
          [row.id, firstSeasonNum],
        ),
        effectiveRealTmdbId
          ? fetchLiveTmdbSeason(effectiveRealTmdbId, firstSeasonNum, row.id).catch(() => null)
          : Promise.resolve(null),
      ]);
      const vaultFirstEps = epsRes.rows.map((ep: any) => ({
        id: `${row.id}-s${ep.season_number}-e${ep.episode_number}`,
        seasonNumber: Number(ep.season_number),
        episodeNumber: Number(ep.episode_number),
        titleAr: `الحلقة ${ep.episode_number}`,
        titleEn: `Episode ${ep.episode_number}`,
        overview: "",
        runtimeMin: tmdbExtra.runtimeMin || 45,
        airDate: String(row.year || ""),
        stillUrl: effectiveBackdropUrl || effectivePosterUrl,
      }));
      episodes = mergeSeasonEpisodes(
        vaultFirstEps,
        liveFirstSeason?.episodes || [],
        row.id,
        firstSeasonNum,
        effectiveBackdropUrl || effectivePosterUrl,
      );
    }

    res.json({
      ...summary,
      realTmdbId: effectiveRealTmdbId,
      posterUrl: effectivePosterUrl,
      backdropUrl: effectiveBackdropUrl,
      overviewAr: tmdbExtra.overviewAr || summary.overviewAr || "لا يوجد ملخص متوفر حالياً.",
      runtimeMin: tmdbExtra.runtimeMin,
      durationOrSeasons: isTv ? formatMergedSeriesDuration(seasons) : formatDurationOrSeasons(row),
      statusLabel: isTv ? (seasons.length > 1 ? "مكتمل" : "متوفر") : "فيلم كامل",
      ageRating: tmdbExtra.ageRating,
      director: tmdbExtra.director,
      productionCompany: tmdbExtra.productionCompany,
      imdbId: tmdbExtra.imdbId,
      trailerYoutubeKey: tmdbExtra.trailerYoutubeKey,
      cast: tmdbExtra.cast,
      seasons,
      episodes,
      relations: recsRes.rows.slice(0, 6).map(rowToFilmSummary),
      recommendations: recsRes.rows.map(rowToFilmSummary),
    });
  } catch (err: any) {
    res.status(500).json({ error: String(err?.message || err) });
  }
});

// ── 6. Season Episodes ───────────────────────────────────────────────────────
router.get("/season", async (req: Request, res: Response) => {
  try {
    const id = Number.parseInt(String(req.query.id || "0"), 10);
    const season = Math.max(1, Number.parseInt(String(req.query.season || "1"), 10) || 1);
    if (!id) {
      res.status(400).json({ error: "id is required" });
      return;
    }

    if (isExternalFilmId(id)) {
      const extSeason = await getExternalSeasonEpisodes(id, season).catch(() => null);
      const extDetail = await getExternalFilmDetail(id).catch(() => null);
      let liveSeason: any = null;
      if (extDetail?.titleEn || extDetail?.titleAr) {
        const tmdbMatch = await resolveTmdbTvByTitle(extDetail.titleEn || extDetail.titleAr, extDetail.year).catch(() => null);
        if (tmdbMatch?.tmdbId) {
          liveSeason = await fetchLiveTmdbSeason(tmdbMatch.tmdbId, season, id).catch(() => null);
        }
      }
      const mergedEps = mergeSeasonEpisodes(
        extSeason?.episodes || [],
        liveSeason?.episodes || [],
        id,
        season,
        extDetail?.backdropUrl || extDetail?.posterUrl || null,
      );
      if (mergedEps.length === 0) {
        res.status(404).json({ error: "Season not found" });
        return;
      }
      res.json({
        seasonNumber: season,
        name: liveSeason?.name || extSeason?.name || `الموسم ${season}`,
        episodes: mergedEps,
      });
      return;
    }

    const decoded = decodeSyntheticTmdbId(id);
    let titleRes = await pool.query(
      `SELECT id, tmdb_id, title_en, title_ar, poster_url, backdrop_url, year FROM film_vault_titles WHERE id = $1 LIMIT 1`,
      [id],
    );
    if (titleRes.rows.length === 0) {
      const lookupTmdbId = decoded ? decoded.realTmdbId : id;
      titleRes = await pool.query(
        `SELECT id, tmdb_id, title_en, title_ar, poster_url, backdrop_url, year FROM film_vault_titles WHERE tmdb_id = $1 AND tmdb_type = 'tv' ORDER BY has_live_server DESC, id DESC LIMIT 1`,
        [lookupTmdbId],
      );
    }
    const tRow = titleRes.rows[0];
    const vaultTitleId = tRow?.id ? Number(tRow.id) : id;

    let realTmdbId: number | null = tRow?.tmdb_id
      ? Number(tRow.tmdb_id)
      : decoded
        ? decoded.realTmdbId
        : !tRow
          ? id
          : null;

    if (!realTmdbId && tRow && (tRow.title_en || tRow.title_ar)) {
      const matched = await resolveTmdbTvByTitle(String(tRow.title_en || tRow.title_ar), Number(tRow.year || 0)).catch(() => null);
      if (matched?.tmdbId) realTmdbId = matched.tmdbId;
    }

    const [epsRes, liveSeason] = await Promise.all([
      pool.query(
        `SELECT id, season_number, episode_number, raw_title
         FROM film_vault_episodes
         WHERE title_id = $1 AND season_number = $2 AND is_archived = FALSE AND has_live_server = TRUE
         ORDER BY episode_number ASC`,
        [vaultTitleId, season],
      ),
      realTmdbId ? fetchLiveTmdbSeason(realTmdbId, season, id).catch(() => null) : Promise.resolve(null),
    ]);

    const stillUrl = encodeMediaUrl(tRow?.backdrop_url) || encodeMediaUrl(tRow?.poster_url);
    const vaultEps = epsRes.rows.map((ep: any) => ({
      id: `${id}-s${ep.season_number}-e${ep.episode_number}`,
      seasonNumber: Number(ep.season_number),
      episodeNumber: Number(ep.episode_number),
      titleAr: `الحلقة ${ep.episode_number}`,
      titleEn: `Episode ${ep.episode_number}`,
      overview: "",
      runtimeMin: 45,
      airDate: String(tRow?.year || ""),
      stillUrl,
    }));

    const mergedEpisodes = mergeSeasonEpisodes(
      vaultEps,
      liveSeason?.episodes || [],
      id,
      season,
      stillUrl,
    );

    res.json({
      seasonNumber: season,
      name: liveSeason?.name || `الموسم ${season}`,
      episodes: mergedEpisodes,
    });
  } catch (err: any) {
    res.status(500).json({ error: String(err?.message || err) });
  }
});

// ── 7. Schedule (recent real playable releases distributed across week days) ─
router.get("/schedule", async (_req: Request, res: Response) => {
  try {
    const [seriesRes, moviesRes] = await Promise.all([
      pool.query(
        `SELECT * FROM film_vault_titles
         WHERE is_archived = FALSE AND has_live_server = TRUE AND media_type = 'series'
         ORDER BY COALESCE(year, 2020) DESC, updated_at DESC
         LIMIT 14`,
      ),
      pool.query(
        `SELECT * FROM film_vault_titles
         WHERE is_archived = FALSE AND has_live_server = TRUE AND media_type IN ('movie', 'animation')
         ORDER BY COALESCE(year, 2020) DESC, updated_at DESC
         LIMIT 10`,
      ),
    ]);

    const seriesItems = seriesRes.rows.map((r: any, idx: number) => ({
      ...rowToFilmSummary(r),
      releaseDayIndex: idx % 7,
      scheduleNote: `${r.playable_episode_count || r.episode_count || 1} حلقة متاحة للمشاهدة`,
    }));

    const movieItems = moviesRes.rows.map((r: any, idx: number) => ({
      ...rowToFilmSummary(r),
      releaseDayIndex: (idx + 3) % 7,
      scheduleNote: r.year ? `إصدار ${r.year} · جاهز للبث` : "متاح للمشاهدة الآن",
    }));

    res.json({ items: [...seriesItems, ...movieItems] });
  } catch (err: any) {
    res.status(500).json({ error: String(err?.message || err) });
  }
});

// ── 8. Real Moviztime/VidHLS Streaming Sources (SSE) & Resolve & Subtitles ───
router.get("/sources-stream", async (req: Request, res: Response) => {
  const tmdbId = Number.parseInt(String(req.query.tmdbId || "0"), 10);
  const type: "movie" | "tv" = String(req.query.type || "movie") === "tv" ? "tv" : "movie";
  const season = Math.max(1, Number.parseInt(String(req.query.season || "1"), 10) || 1);
  const ep = Math.max(1, Number.parseInt(String(req.query.ep || "1"), 10) || 1);

  res.setHeader("Content-Type", "text/event-stream; charset=utf-8");
  res.setHeader("Cache-Control", "no-cache");
  res.setHeader("Connection", "keep-alive");
  res.setHeader("X-Accel-Buffering", "no");
  res.flushHeaders();

  const SERVER_CODES = ["NV", "VX", "HD", "NX", "PX", "SX", "FX", "LX", "MX", "RX", "DX", "ZX"];
  let _srvCodeSeq = 0;
  const sendEvent = (event: string, data: any) => {
    if (res.writableEnded) return;
    let payload = data;
    if (event === "source" && data && typeof data === "object") {
      const code = SERVER_CODES[_srvCodeSeq % SERVER_CODES.length] || `S${_srvCodeSeq + 1}`;
      _srvCodeSeq++;
      const tier = String(data.tier || (/1080|fhd|4k|2160/i.test(String(data.label || "")) ? "1080p FHD" : "720p HD"));
      payload = {
        ...data,
        site: code.toLowerCase(),
        label: `السيرفر ${code}`,
        tier,
      };
    }
    res.write(`event: ${event}\ndata: ${JSON.stringify(payload)}\n\n`);
  };

  try {
    sendEvent("status", { msg: "جاري تجهيز سيرفرات المشاهدة المباشرة..." });
    if (!tmdbId) {
      sendEvent("done", { ok: false, count: 0 });
      res.end();
      return;
    }

    const titleParam = String(req.query.title || "").trim();
    const clientExtract = String(req.query.clientExtract || "") === "1";

    // Unwrap any VPS proxy URL (/api/anime/hls-proxy or video-proxy) into a raw direct CDN URL + headers
    const toDirectOnlySource = (sObj: any): any | null => {
      if (!sObj || typeof sObj !== "object") return null;
      if (sObj.clientExtract?.embedUrl) return sObj;
      let rawUrl = String(sObj.url || sObj.directUrl || sObj.proxyUrl || "").trim();
      let refHeader = sObj.headers?.Referer || sObj.headers?.referer || "";
      const maybeProxy = String(sObj.proxyUrl || sObj.directUrl || rawUrl || "").trim();
      if (maybeProxy.includes("/api/anime/hls-proxy") || maybeProxy.includes("/api/anime/video-proxy") || maybeProxy.includes("/proxy/hls")) {
        try {
          const parsed = new URL(maybeProxy.startsWith("http") ? maybeProxy : `https://local.invalid${maybeProxy}`);
          const inner = parsed.searchParams.get("url");
          const innerRef = parsed.searchParams.get("ref") || parsed.searchParams.get("referer");
          if (inner && inner.startsWith("http")) rawUrl = inner;
          if (innerRef && !refHeader) refHeader = innerRef;
        } catch {}
      }
      if (!rawUrl.startsWith("http") || rawUrl.includes("/api/anime/hls-proxy") || rawUrl.includes("/api/anime/seg-proxy") || rawUrl.includes("/api/anime/video-proxy")) {
        return null;
      }
      const nextHeaders: Record<string, string> = {
        ...(sObj.headers && typeof sObj.headers === "object" ? sObj.headers : {}),
      };
      if (!nextHeaders["User-Agent"]) nextHeaders["User-Agent"] = BROWSER_UA;
      if (refHeader && !nextHeaders.Referer) nextHeaders.Referer = refHeader;
      const tier = /2160|4k/i.test(String(sObj.tier || sObj.label || ""))
        ? "4K UHD"
        : /1080|fhd/i.test(String(sObj.tier || sObj.label || ""))
          ? "1080p FHD"
          : "720p HD";
      const isHls = sObj.type === "hls" || rawUrl.includes(".m3u8") || rawUrl.includes("/hls/");
      const cleaned: any = {
        ...sObj,
        label: tier,
        tier,
        url: rawUrl,
        directUrl: rawUrl,
        isEmbed: false,
        type: isHls ? "hls" : sObj.type || "mp4",
        headers: nextHeaders,
      };
      delete cleaned.proxyUrl;
      return cleaned;
    };

    if (isExternalFilmId(tmdbId)) {
      sendEvent("status", { msg: "جاري تجهيز سيرفرات المشاهدة المباشرة..." });
      let emittedExt = 0;
      await resolveExternalFilmStreams({
        id: tmdbId,
        type,
        season,
        ep,
        titleHint: titleParam,
        clientExtract,
        onSource: (sObj) => {
          const direct = toDirectOnlySource(sObj);
          if (!direct) return;
          sendEvent("source", direct);
          emittedExt++;
        },
      });
      sendEvent("done", { ok: emittedExt > 0, count: emittedExt });
      res.end();
      return;
    }

    const resolved = await resolveEpisodeFromVault(tmdbId, type, season, ep);
    const decodedId = decodeSyntheticTmdbId(tmdbId);
    const effectiveRealTmdbId = resolved.tmdbId || decodedId?.realTmdbId || null;
    let effectiveTitleEn = resolved.titleEn || titleParam;
    if (effectiveRealTmdbId && (!effectiveTitleEn || !/[A-Za-z]{2,}/.test(effectiveTitleEn))) {
      const tmdbEn = await resolveTmdbTitleEn(effectiveRealTmdbId, type).catch(() => "");
      if (tmdbEn) effectiveTitleEn = tmdbEn;
    }
    if (effectiveRealTmdbId) {
      sendEvent("meta", { realTmdbId: effectiveRealTmdbId, titleEn: effectiveTitleEn });
    }
    let emitted = 0;
    const tgFilmSources = await getTelegramFilmSources({
      tmdbId: resolved.vaultId || effectiveRealTmdbId || tmdbId,
      title: effectiveTitleEn,
      season,
      ep,
    });
    for (const src of tgFilmSources) {
      sendEvent("source", src);
      emitted++;
    }
    for (const src of resolved.sources) {
      sendEvent("source", src);
      emitted++;
    }
    // Also query multi-CDN providers (/api/animation/sources-stream) if titleEn is available
    if (effectiveTitleEn) {
      try {
        const port = Number(process.env.PORT || 5000);
        const tok = issueAnonToken().token;
        const qs = new URLSearchParams({
          tmdbId: String(effectiveRealTmdbId || ""),
          type,
          season: String(season),
          ep: String(ep),
          title: effectiveTitleEn,
          mobile: "1",
        });
        const up = await fetch(`http://127.0.0.1:${port}/api/animation/sources-stream?${qs.toString()}`, {
          headers: {
            "x-app-token": tok,
            "x-nova-client": "nova-anime-mobile-v1",
            "x-nova-package": "com.nova.anime",
            "x-nova-version": "1.0.0",
          },
          signal: AbortSignal.timeout(9000),
        });
        if (up.ok && up.body) {
          const reader = up.body.getReader();
          const dec = new TextDecoder();
          let buf = "";
          while (true) {
            const { done, value } = await reader.read();
            if (done) break;
            buf += dec.decode(value, { stream: true });
            const blocks = buf.split("\n\n");
            buf = blocks.pop() || "";
            for (const b of blocks) {
              const evMatch = b.match(/^event:\s*(\S+)/m);
              const dtMatch = b.match(/^data:\s*(.+)$/m);
              if (evMatch?.[1] === "source" && dtMatch?.[1]) {
                try {
                  const sObj = JSON.parse(dtMatch[1]);
                  if (sObj && (sObj.url || sObj.directUrl || sObj.proxyUrl) && !/dahmer/i.test(String(sObj.label || sObj.site || ""))) {
                    const direct = toDirectOnlySource(sObj);
                    if (direct) {
                      sendEvent("source", direct);
                      emitted++;
                    }
                  }
                } catch {}
              }
            }
          }
        }
      } catch {}
    }
    // Bonus live streams from TopCinema & EgyDead if vault yielded fewer than 4 servers
    if (emitted < 4 && effectiveTitleEn) {
      try {
        await resolveExternalFilmStreams({
          id: 0,
          type,
          season,
          ep,
          titleHint: effectiveTitleEn,
          clientExtract,
          onSource: (sObj) => {
            const direct = toDirectOnlySource(sObj);
            if (!direct) return;
            sendEvent("source", direct);
            emitted++;
          },
        });
      } catch {}
    }
    sendEvent("done", { ok: true, count: emitted });
    res.end();
  } catch (err: any) {
    sendEvent("status", { msg: `تعذر جلب السيرفرات: ${err?.message || "خطأ غير متوقع"}` });
    sendEvent("done", { ok: false, count: 0 });
    if (!res.writableEnded) res.end();
  }
});

router.post("/source-resolve", async (req: Request, res: Response) => {
  try {
    const tmdbId = Number.parseInt(String(req.body?.tmdbId || "0"), 10);
    const type: "movie" | "tv" = String(req.body?.type || "movie") === "tv" ? "tv" : "movie";
    const season = Math.max(1, Number.parseInt(String(req.body?.season || "1"), 10) || 1);
    const ep = Math.max(1, Number.parseInt(String(req.body?.ep || "1"), 10) || 1);

    if (!tmdbId) {
      res.status(400).json({ error: "tmdbId is required" });
      return;
    }

    if (isExternalFilmId(tmdbId)) {
      const extSources = await resolveExternalFilmStreams({
        id: tmdbId,
        type,
        season,
        ep,
        titleHint: String(req.body?.title || "").trim(),
      });
      if (!extSources.length) {
        res.status(404).json({ error: "No playable source found" });
        return;
      }
      res.json(extSources[0]);
      return;
    }

    const resolved = await resolveEpisodeFromVault(tmdbId, type, season, ep);
    if (resolved.sources.length > 0) {
      res.json(resolved.sources[0]);
      return;
    }
    if (resolved.titleEn) {
      const extFallback = await resolveExternalFilmStreams({
        id: 0,
        type,
        season,
        ep,
        titleHint: resolved.titleEn,
      });
      if (extFallback.length > 0) {
        res.json(extFallback[0]);
        return;
      }
    }
    res.status(404).json({ error: "No playable source found" });
  } catch (err: any) {
    res.status(502).json({ error: String(err?.message || err) });
  }
});

router.get("/subtitle-tracks", async (req: Request, res: Response) => {
  try {
    const tmdbId = Number.parseInt(String(req.query.tmdbId || "0"), 10);
    const type: "movie" | "tv" = String(req.query.type || "movie") === "tv" ? "tv" : "movie";
    const season = Math.max(1, Number.parseInt(String(req.query.season || "1"), 10) || 1);
    const ep = Math.max(1, Number.parseInt(String(req.query.ep || "1"), 10) || 1);
    const titleParam = String(req.query.title || "").trim();

    let tracks: SubTrack[] = [];
    let lookupTitle = titleParam;
    let realTmdbId: number | null = null;

    if (tmdbId > 0) {
      const resolved = await resolveEpisodeFromVault(tmdbId, type, season, ep);
      tracks.push(...resolved.tracks);
      if (resolved.titleEn) lookupTitle = resolved.titleEn;
      if (resolved.tmdbId) realTmdbId = resolved.tmdbId;
    }

    if (tracks.length === 0 && (realTmdbId || lookupTitle)) {
      const port = Number(process.env.PORT || 5000);
      const qs = new URLSearchParams({
        tmdbId: String(realTmdbId || ""),
        type,
        season: String(season),
        ep: String(ep),
        title: lookupTitle,
      });
      try {
        const subRes = await fetch(`http://127.0.0.1:${port}/api/animation/subtitle-tracks?${qs.toString()}`, {
          signal: AbortSignal.timeout(8000),
        });
        if (subRes.ok) {
          const data = (await subRes.json()) as { tracks?: SubTrack[] };
          if (Array.isArray(data?.tracks)) tracks.push(...data.tracks);
        }
      } catch {
        // external subtitles optional because moviztime streams have burned-in Arabic subs
      }
    }

    res.json({ tracks });
  } catch (err: any) {
    res.json({ tracks: [], error: String(err?.message || err) });
  }
});


// ── 9. Real HLS -> MP4 Download Converter (with Range + Single-Flight Cache) ─
const FILM_DL_CACHE_DIR = "/tmp/nova-film-dl-cache";
const _filmDlInFlight = new Map<string, Promise<string>>();

function cleanupFilmDlCache() {
  try {
    if (!fs.existsSync(FILM_DL_CACHE_DIR)) return;
    const now = Date.now();
    for (const name of fs.readdirSync(FILM_DL_CACHE_DIR)) {
      const fp = path.join(FILM_DL_CACHE_DIR, name);
      try {
        const st = fs.statSync(fp);
        if (now - st.mtimeMs > 25 * 60_000) fs.rmSync(fp, { force: true });
      } catch {}
    }
  } catch {}
}

function buildLocalProxyUrl(rawUrl: string): string | null {
  const s = String(rawUrl || "").trim();
  if (!s) return null;
  const port = Number(process.env.PORT || 5000);
  if (s.startsWith("/api/anime/hls-proxy") || s.startsWith("/api/anime/video-proxy")) {
    return `http://127.0.0.1:${port}${s}`;
  }
  try {
    const u = new URL(s);
    if (u.pathname === "/api/anime/hls-proxy" || u.pathname === "/api/anime/video-proxy") {
      return `http://127.0.0.1:${port}${u.pathname}${u.search}`;
    }
    if (u.protocol === "http:" || u.protocol === "https:") {
      return u.toString();
    }
  } catch {}
  return null;
}

function runFfmpegToMp4(inputUrl: string, outputPath: string, referer?: string): Promise<void> {
  const spawnOnce = (extraArgs: string[]) =>
    new Promise<void>((resolve, reject) => {
      const headerArg = referer
        ? ["-headers", `Referer: ${referer}\r\nUser-Agent: ${BROWSER_UA}\r\n`]
        : ["-headers", `User-Agent: ${BROWSER_UA}\r\n`];
      const args = [
        "-hide_banner",
        "-loglevel",
        "error",
        "-y",
        "-rw_timeout",
        "120000000",
        "-protocol_whitelist",
        "file,http,https,tcp,tls,crypto",
        "-allowed_extensions",
        "ALL",
        ...headerArg,
        "-i",
        inputUrl,
        "-map",
        "0:v:0",
        "-map",
        "0:a:0?",
        ...extraArgs,
        outputPath,
      ];
      const child = spawn("/usr/bin/ffmpeg", args, { stdio: ["ignore", "ignore", "pipe"] });
      let stderr = "";
      child.stderr.on("data", (chunk: Buffer) => {
        stderr = (stderr + chunk.toString()).slice(-3000);
      });
      child.once("error", reject);
      child.once("close", (code) => {
        if (code === 0 && fs.existsSync(outputPath) && fs.statSync(outputPath).size > 32 * 1024) {
          resolve();
        } else {
          reject(new Error(`ffmpeg exited ${code}: ${stderr}`));
        }
      });
    });

  return spawnOnce(["-c", "copy", "-bsf:a", "aac_adtstoasc", "-movflags", "+faststart"])
    .catch(() => {
      fs.rmSync(outputPath, { force: true });
      return spawnOnce(["-c", "copy", "-movflags", "+faststart"]);
    })
    .catch(() => {
      fs.rmSync(outputPath, { force: true });
      return spawnOnce([
        "-c:v",
        "libx264",
        "-preset",
        "veryfast",
        "-crf",
        "23",
        "-pix_fmt",
        "yuv420p",
        "-c:a",
        "aac",
        "-b:a",
        "128k",
        "-movflags",
        "+faststart",
      ]);
    });
}

function streamFfmpegFragMp4(
  inputUrl: string,
  tmpMp4: string,
  cachedMp4: string,
  referer: string | undefined,
  req: Request,
  res: Response,
): Promise<void> {
  const headerArg = referer
    ? ["-headers", `Referer: ${referer}\r\nUser-Agent: ${BROWSER_UA}\r\n`]
    : ["-headers", `User-Agent: ${BROWSER_UA}\r\n`];

  const attempt = (codecArgs: string[]) =>
    new Promise<void>((resolve, reject) => {
      const args = [
        "-hide_banner",
        "-loglevel",
        "error",
        "-y",
        "-rw_timeout",
        "120000000",
        "-protocol_whitelist",
        "file,http,https,tcp,tls,crypto",
        "-allowed_extensions",
        "ALL",
        ...headerArg,
        "-i",
        inputUrl,
        "-map",
        "0:v:0",
        "-map",
        "0:a:0?",
        ...codecArgs,
        "-f",
        "mp4",
        "-movflags",
        "frag_keyframe+empty_moov+default_base_moof",
        "pipe:1",
      ];

      const child = spawn("/usr/bin/ffmpeg", args, { stdio: ["ignore", "pipe", "pipe"] });
      let stderr = "";
      let headersSent = false;
      let totalBytes = 0;
      let clientClosed = false;
      let fileStream: fs.WriteStream | null = null;

      const cleanupTmp = () => {
        try { fileStream?.destroy(); } catch {}
        try { fs.rmSync(tmpMp4, { force: true }); } catch {}
      };

      const onClientClose = () => {
        if (!res.writableFinished) {
          clientClosed = true;
          if (!child.killed) child.kill("SIGTERM");
          cleanupTmp();
          resolve();
        }
      };
      req.once("close", onClientClose);
      res.once("close", onClientClose);

      child.stderr.on("data", (chunk: Buffer) => {
        stderr = (stderr + chunk.toString()).slice(-3000);
      });

      child.stdout.on("data", (chunk: Buffer) => {
        if (clientClosed || res.destroyed) return;
        if (!headersSent) {
          headersSent = true;
          res.status(200);
          res.setHeader("Content-Type", "video/mp4");
          res.setHeader("Content-Disposition", 'attachment; filename="nova-film.mp4"');
          res.setHeader("Cache-Control", "no-store");
          fileStream = fs.createWriteStream(tmpMp4);
          fileStream.on("error", () => {});
        }
        totalBytes += chunk.length;
        try {
          fileStream?.write(chunk);
        } catch {}
        const ok = res.write(chunk);
        if (!ok) {
          child.stdout.pause();
          res.once("drain", () => {
            if (!clientClosed && !res.destroyed) child.stdout.resume();
          });
        }
      });

      child.once("error", (err) => {
        req.removeListener("close", onClientClose);
        res.removeListener("close", onClientClose);
        cleanupTmp();
        reject(err);
      });

      child.once("close", (code) => {
        req.removeListener("close", onClientClose);
        res.removeListener("close", onClientClose);
        if (clientClosed) return;
        if (code === 0 && headersSent && totalBytes > 64 * 1024) {
          const finalize = () => {
            try {
              if (fs.existsSync(tmpMp4) && fs.statSync(tmpMp4).size > 64 * 1024) {
                fs.renameSync(tmpMp4, cachedMp4);
              }
            } catch {
              cleanupTmp();
            }
            if (!res.writableEnded) res.end();
            resolve();
          };
          if (fileStream) fileStream.end(finalize);
          else finalize();
        } else {
          cleanupTmp();
          if (headersSent) {
            if (!res.writableEnded) res.destroy();
            resolve();
          } else {
            reject(new Error(`ffmpeg exited ${code}: ${stderr}`));
          }
        }
      });
    });

  return attempt(["-c", "copy", "-bsf:a", "aac_adtstoasc"])
    .catch((err) => {
      if (res.headersSent) throw err;
      return attempt(["-c", "copy"]);
    })
    .catch((err) => {
      if (res.headersSent) throw err;
      return attempt([
        "-c:v", "libx264", "-preset", "veryfast", "-crf", "23", "-pix_fmt", "yuv420p",
        "-c:a", "aac", "-b:a", "128k",
      ]);
    });
}

router.get("/download-mp4", async (req: Request, res: Response) => {
  try {
    const token = String((req.headers["x-app-token"] as string) || (req.query._tok as string) || "").trim();
    const dlToken = String((req.headers["x-download-token"] as string) || (req.query.dlToken as string) || (req.query.downloadToken as string) || "").trim();
    if (!validateAnonToken(token) && !validateDownloadToken(dlToken)) {
      res.status(403).json({ error: "Access denied", code: "INVALID_TOKEN" });
      return;
    }
    const rawUrl = String(req.query.url || "").trim();
    const refParam = String(req.query.ref || "").trim() || undefined;
    const sourceUrl = buildLocalProxyUrl(rawUrl);
    if (!sourceUrl) {
      res.status(400).send("invalid media url");
      return;
    }

    fs.mkdirSync(FILM_DL_CACHE_DIR, { recursive: true });
    cleanupFilmDlCache();

    const hash = crypto.createHash("sha1").update(sourceUrl).digest("hex");
    const cachedMp4 = path.join(FILM_DL_CACHE_DIR, `${hash}.mp4`);
    const tmpMp4 = path.join(FILM_DL_CACHE_DIR, `${hash}.${Date.now()}.tmp.mp4`);
    const hasValidCache = fs.existsSync(cachedMp4) && fs.statSync(cachedMp4).size > 64 * 1024;
    const range = String(req.headers.range || "").trim();

    if (!hasValidCache) {
      if (!range) {
        await streamFfmpegFragMp4(sourceUrl, tmpMp4, cachedMp4, refParam, req, res);
        return;
      }
      let pending = _filmDlInFlight.get(hash);
      if (!pending) {
        pending = (async () => {
          try {
            await runFfmpegToMp4(sourceUrl, tmpMp4, refParam);
            fs.renameSync(tmpMp4, cachedMp4);
            return cachedMp4;
          } catch (err) {
            fs.rmSync(tmpMp4, { force: true });
            throw err;
          } finally {
            _filmDlInFlight.delete(hash);
          }
        })();
        _filmDlInFlight.set(hash, pending);
      }
      await pending;
    }

    const finalPath = cachedMp4;
    const size = fs.statSync(finalPath).size;
    if (size <= 0) {
      res.status(502).send("empty converted video");
      return;
    }
    let streamStart = 0;
    let streamEnd = size - 1;
    let statusCode = 200;
    if (range) {
      const match = /^bytes=(\d*)-(\d*)$/i.exec(range);
      if (!match || (!match[1] && !match[2])) {
        res.status(416).setHeader("Content-Range", `bytes */${size}`).end();
        return;
      }
      if (match[1]) {
        streamStart = Number(match[1]);
        streamEnd = match[2] ? Math.min(Number(match[2]), size - 1) : size - 1;
      } else {
        const suffixLength = Number(match[2]);
        streamStart = Math.max(0, size - suffixLength);
        streamEnd = size - 1;
      }
      if (!Number.isSafeInteger(streamStart) || !Number.isSafeInteger(streamEnd) || streamStart < 0 || streamStart >= size || streamStart > streamEnd) {
        res.status(416).setHeader("Content-Range", `bytes */${size}`).end();
        return;
      }
      statusCode = 206;
    }

    res.status(statusCode);
    res.setHeader("Content-Type", "video/mp4");
    res.setHeader("Accept-Ranges", "bytes");
    res.setHeader("Content-Length", String(streamEnd - streamStart + 1));
    if (statusCode === 206) {
      res.setHeader("Content-Range", `bytes ${streamStart}-${streamEnd}/${size}`);
    }
    res.setHeader("Content-Disposition", 'attachment; filename="nova-film.mp4"');
    await pipeline(fs.createReadStream(finalPath, { start: streamStart, end: streamEnd }), res);
  } catch (err: any) {
    if (!res.headersSent && !res.destroyed) {
      res.status(502).send(`film conversion failed: ${err?.message || "unknown error"}`);
    }
  }
});

export default router;
