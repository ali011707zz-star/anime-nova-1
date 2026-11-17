import AsyncStorage from "@react-native-async-storage/async-storage";

export type FilmMediaType = "movie" | "series" | "animation";
export type TmdbMediaType = "movie" | "tv";

export type FilmServerLink = {
  id: string;
  name: string;
  site?: string;
  quality: string;
  qualityTier: "4K" | "FHD" | "HD" | "SD";
  kind: "direct" | "hls" | "embed";
  directUrl?: string;
  proxyUrl?: string;
  embedUrl?: string;
  subtitleUrl?: string;
  headers?: Record<string, string>;
  note?: string;
  isArabic?: boolean;
};

export type FilmSubtitleTrack = {
  id: string;
  lang: string;
  label: string;
  url: string;
};

export type FilmEpisode = {
  id: string;
  seasonNumber: number;
  episodeNumber: number;
  titleAr: string;
  titleEn: string;
  overview?: string;
  runtimeMin: number;
  airDate?: string;
  stillUrl?: string | null;
};

export type FilmSeasonSummary = {
  seasonNumber: number;
  name: string;
  episodeCount: number;
  posterUrl?: string | null;
  airDate?: string;
};

export type FilmCastMember = {
  id: number;
  name: string;
  character: string;
  profileUrl?: string | null;
};

export type FilmSummary = {
  id: number;
  tmdbType: TmdbMediaType;
  mediaType: FilmMediaType;
  titleAr: string;
  titleEn: string;
  overviewAr: string;
  posterUrl: string | null;
  backdropUrl: string | null;
  year: number;
  imdbRating: number;
  voteCount?: number;
  popularity?: number;
  qualityBadge: string;
  audioLabel: string;
  categoryLabel: string;
  genres: string[];
  originalLanguage?: string;
  releaseDate?: string;
  durationOrSeasons?: string;
  releaseDayIndex?: number;
  scheduleNote?: string;
};

export type FilmDetail = FilmSummary & {
  runtimeMin: number;
  durationOrSeasons: string;
  statusLabel: string;
  ageRating: string;
  director: string;
  productionCompany: string;
  imdbId?: string | null;
  trailerYoutubeKey?: string | null;
  cast: FilmCastMember[];
  seasons: FilmSeasonSummary[];
  episodes: FilmEpisode[];
  recommendations: FilmSummary[];
};

export type FilmTitle = FilmSummary;

export type FilmPlaybackRecord = {
  key: string;
  titleId: number;
  tmdbType: TmdbMediaType;
  seasonNumber: number;
  episodeNumber: number;
  positionSec: number;
  durationSec: number;
  updatedAt: number;
  titleSnapshot?: FilmSummary;
};

export const NOVA_FILM_GENRES = [
  "الكل",
  "أكشن",
  "مغامرة",
  "دراما",
  "كوميديا",
  "خيال علمي",
  "إثارة",
  "غموض",
  "رعب",
  "فانتازيا",
  "جريمة",
  "عائلي",
  "أنميشن",
  "وثائقي",
];

const FAVORITES_KEY = "nova_film_favorites_v2";
const FAVORITE_IDS_KEY = "nova_film_favorites_v1";
const WATCHED_KEY = "nova_film_watched_v2";
const PLAYBACK_KEY = "nova_film_playback_v2";
const RATING_KEY = "nova_film_ratings_v2";

export function makeFilmKey(tmdbType: TmdbMediaType, id: number): string {
  return `${tmdbType}:${id}`;
}

export function makeEpisodeKey(
  titleId: number | string,
  seasonNumber: number,
  episodeNumber: number,
  tmdbType: TmdbMediaType = "tv",
): string {
  return `${tmdbType}:${titleId}:s${seasonNumber}:e${episodeNumber}`;
}

export function buildFilmPlaybackKey(
  titleId: number | string,
  seasonNumber: number,
  episodeNumber: number,
  tmdbType: TmdbMediaType = "movie",
): string {
  return `${tmdbType}:${titleId}:s${seasonNumber}:e${episodeNumber}`;
}

export function getImageSource(url?: string | null): { uri: string } | undefined {
  if (!url || typeof url !== "string") return undefined;
  return { uri: url };
}

export async function loadFavoriteFilms(): Promise<FilmSummary[]> {
  try {
    const raw = await AsyncStorage.getItem(FAVORITES_KEY);
    if (!raw) return [];
    const parsed = JSON.parse(raw);
    return Array.isArray(parsed) ? parsed.filter((x) => x && x.id) : [];
  } catch {
    return [];
  }
}

export async function loadFavoriteFilmIds(): Promise<number[]> {
  const list = await loadFavoriteFilms();
  if (list.length > 0) return list.map((x) => Number(x.id));
  try {
    const raw = await AsyncStorage.getItem(FAVORITE_IDS_KEY);
    if (!raw) return [];
    const parsed = JSON.parse(raw);
    return Array.isArray(parsed) ? parsed.map(Number).filter(Number.isFinite) : [];
  } catch {
    return [];
  }
}

export async function toggleFavoriteFilm(item: FilmSummary): Promise<FilmSummary[]> {
  const list = await loadFavoriteFilms();
  const exists = list.some((x) => x.id === item.id && x.tmdbType === item.tmdbType);
  const next = exists
    ? list.filter((x) => !(x.id === item.id && x.tmdbType === item.tmdbType))
    : [item, ...list].slice(0, 120);
  await AsyncStorage.setItem(FAVORITES_KEY, JSON.stringify(next));
  await AsyncStorage.setItem(FAVORITE_IDS_KEY, JSON.stringify(next.map((x) => x.id)));
  return next;
}

export async function removeFavoriteFilm(id: number, tmdbType?: TmdbMediaType): Promise<FilmSummary[]> {
  const list = await loadFavoriteFilms();
  const next = list.filter((x) => (tmdbType ? !(x.id === id && x.tmdbType === tmdbType) : x.id !== id));
  await AsyncStorage.setItem(FAVORITES_KEY, JSON.stringify(next));
  await AsyncStorage.setItem(FAVORITE_IDS_KEY, JSON.stringify(next.map((x) => x.id)));
  return next;
}

export async function loadWatchedMap(): Promise<Record<string, boolean>> {
  try {
    const raw = await AsyncStorage.getItem(WATCHED_KEY);
    if (!raw) return {};
    const parsed = JSON.parse(raw);
    return parsed && typeof parsed === "object" ? parsed : {};
  } catch {
    return {};
  }
}

export async function saveWatchedMap(next: Record<string, boolean>): Promise<void> {
  try {
    await AsyncStorage.setItem(WATCHED_KEY, JSON.stringify(next));
  } catch {}
}

export async function toggleEpisodeWatched(
  titleId: number,
  seasonNumber: number,
  episodeNumber: number,
  tmdbType: TmdbMediaType = "tv",
  explicit?: boolean,
): Promise<Record<string, boolean>> {
  const current = await loadWatchedMap();
  const key = makeEpisodeKey(titleId, seasonNumber, episodeNumber, tmdbType);
  const next = { ...current };
  const targetVal = explicit !== undefined ? explicit : !next[key];
  if (targetVal) next[key] = true;
  else delete next[key];
  await saveWatchedMap(next);
  return next;
}

export async function loadAllPlaybackProgress(): Promise<FilmPlaybackRecord[]> {
  try {
    const raw = await AsyncStorage.getItem(PLAYBACK_KEY);
    if (!raw) return [];
    const parsed = JSON.parse(raw);
    if (!parsed || typeof parsed !== "object") return [];
    return Object.values(parsed as Record<string, FilmPlaybackRecord>)
      .filter((r) => r && r.titleId && r.durationSec > 0)
      .sort((a, b) => (b.updatedAt || 0) - (a.updatedAt || 0));
  } catch {
    return [];
  }
}

export async function loadEpisodePlaybackProgress(
  titleId: number,
  seasonNumber: number,
  episodeNumber: number,
  tmdbType: TmdbMediaType = "movie",
): Promise<number> {
  try {
    const raw = await AsyncStorage.getItem(PLAYBACK_KEY);
    if (!raw) return 0;
    const parsed = JSON.parse(raw) as Record<string, FilmPlaybackRecord>;
    const key = buildFilmPlaybackKey(titleId, seasonNumber, episodeNumber, tmdbType);
    return parsed[key]?.positionSec || 0;
  } catch {
    return 0;
  }
}

export async function savePlaybackProgress(record: FilmPlaybackRecord): Promise<void> {
  try {
    const raw = await AsyncStorage.getItem(PLAYBACK_KEY);
    const map: Record<string, FilmPlaybackRecord> = raw ? JSON.parse(raw) : {};
    map[record.key] = record;
    await AsyncStorage.setItem(PLAYBACK_KEY, JSON.stringify(map));
  } catch {}
}

export async function removeFilmPlaybackProgress(titleId: number, tmdbType?: TmdbMediaType): Promise<void> {
  try {
    const raw = await AsyncStorage.getItem(PLAYBACK_KEY);
    if (!raw) return;
    const map = JSON.parse(raw) as Record<string, FilmPlaybackRecord>;
    for (const key of Object.keys(map)) {
      const rec = map[key];
      if (rec?.titleId === titleId && (!tmdbType || rec.tmdbType === tmdbType)) {
        delete map[key];
      }
    }
    await AsyncStorage.setItem(PLAYBACK_KEY, JSON.stringify(map));
  } catch {}
}

export async function loadUserRating(tmdbType: TmdbMediaType, titleId: number): Promise<number> {
  try {
    const raw = await AsyncStorage.getItem(RATING_KEY);
    if (!raw) return 0;
    const map = JSON.parse(raw) as Record<string, number>;
    return map[`${tmdbType}:${titleId}`] || map[String(titleId)] || 0;
  } catch {
    return 0;
  }
}

export async function saveUserRating(tmdbType: TmdbMediaType, titleId: number, rating: number): Promise<void> {
  try {
    const raw = await AsyncStorage.getItem(RATING_KEY);
    const map: Record<string, number> = raw ? JSON.parse(raw) : {};
    map[`${tmdbType}:${titleId}`] = rating;
    await AsyncStorage.setItem(RATING_KEY, JSON.stringify(map));
  } catch {}
}
