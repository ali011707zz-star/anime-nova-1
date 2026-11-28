import type { ExternalFilmSummary } from "./filmExternalSources.js";

export const TMDB_IMG_POSTER: string;
export const TMDB_IMG_BACKDROP: string;

export interface TmdbDiscoverSpec {
  path: string;
  tmdbType: "movie" | "tv";
  mediaType: "movie" | "series" | "animation";
  categoryLabel: string;
  audioLabel: string;
}

export interface MergedSeasonSummary {
  seasonNumber: number;
  name: string;
  episodeCount: number;
  posterUrl: string | null;
  airDate: string;
}

export interface MergedEpisodeSummary {
  id: string;
  seasonNumber: number;
  episodeNumber: number;
  titleAr: string;
  titleEn: string;
  overview: string;
  runtimeMin: number;
  airDate: string;
  stillUrl: string | null;
}

export function encodeSyntheticTmdbId(tmdbType: "movie" | "tv", realTmdbId: number): number;
export function decodeSyntheticTmdbId(rawId: number): { realTmdbId: number; tmdbType: "movie" | "tv" } | null;
export function isOfficialAnimationCategory(category: string): boolean;
export function normalizeArabicSearchVariants(rawQuery: string): string[];
export function buildTmdbDiscoverSpec(
  category: string,
  opts?: { genre?: string; sort?: string; year?: number; page?: number },
): TmdbDiscoverSpec | null;
export function mapTmdbItemToFilmSummary(
  raw: any,
  spec?: Partial<Pick<TmdbDiscoverSpec, "tmdbType" | "mediaType" | "categoryLabel" | "audioLabel">>,
): ExternalFilmSummary | null;
export function mergeTvSeasons(
  vaultSeasons: any[],
  tmdbSeasons: any[],
  fallbackPosterUrl?: string | null,
): MergedSeasonSummary[];
export function mergeSeasonEpisodes(
  vaultEpisodes: any[],
  tmdbEpisodes: any[],
  parentId: number,
  seasonNumber: number,
  fallbackStillUrl?: string | null,
): MergedEpisodeSummary[];
export function formatMergedSeriesDuration(seasons: MergedSeasonSummary[]): string;

export function getDigitalReleaseCutoffIso(daysAgo?: number, nowDate?: Date): string;
export function hasUntranslatedCjkTitle(title: string): boolean;
