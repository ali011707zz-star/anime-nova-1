import AsyncStorage from "@react-native-async-storage/async-storage";

export type TmdbMediaType = "movie" | "tv";
export type FilmMediaType = "movie" | "series" | "animation";

export type FilmStreamSource = {
  id: string;
  name: string;
  label: string;
  url: string;
  site?: string;
  quality: string;
  qualityTier: "4K" | "FHD" | "HD" | "SD";
  tier?: string;
  kind: "direct" | "hls" | "embed";
  type?: "direct" | "hls" | "embed";
  directUrl?: string;
  proxyUrl?: string;
  embedUrl?: string;
  subtitleUrl?: string;
  headers?: Record<string, string>;
  note?: string;
  isArabic?: boolean;
  isEmbed?: boolean;
  hardsubbed?: boolean;
};

export type FilmServerLink = FilmStreamSource;

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

export type SavedFilmCastMember = {
  id: number;
  name: string;
  character: string;
  role?: string;
  image: string;
  avatar?: string;
  filmId: number;
  filmTitle: string;
  tmdbType: TmdbMediaType;
};

export type FilmSummary = {
  id: number;
  tmdbType: TmdbMediaType;
  mediaType: FilmMediaType;
  kind?: "movie" | "series" | "animation";
  titleAr: string;
  titleEn: string;
  title?: string;
  englishTitle?: string;
  overviewAr: string;
  posterUrl: string | null;
  backdropUrl: string | null;
  poster?: string;
  backdrop?: string;
  year: number;
  imdbRating: number;
  rating?: number;
  voteCount?: number;
  popularity?: number;
  qualityBadge: string;
  quality?: string;
  audioLabel: string;
  categoryLabel: string;
  genres: string[];
  originalLanguage?: string;
  releaseDate?: string;
  durationOrSeasons?: string;
  seasonsCount?: number;
  releaseDayIndex?: number;
  scheduleNote?: string;
};

export type FavoriteFilmItem = FilmSummary;

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
  relations?: FilmSummary[];
  recommendations: FilmSummary[];
};

export type FilmTitle = FilmSummary;

export type FilmPlaybackRecord = {
  key: string;
  titleId: number;
  filmId: number;
  tmdbType: TmdbMediaType;
  kind: "movie" | "series" | "animation";
  title: string;
  englishTitle?: string;
  poster?: string;
  backdrop?: string;
  episodeId?: string;
  episodeTitle?: string;
  seasonNumber: number;
  episodeNumber: number;
  positionSec: number;
  durationSec: number;
  progressPercent: number;
  updatedAt: number;
  titleSnapshot?: FilmSummary;
};

export type FilmPlaybackProgress = FilmPlaybackRecord;

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
const SAVED_CAST_KEY = "nova_film_saved_cast_v1";

export function normalizeFilmSummary(raw: any): FilmSummary {
  const tmdbType: TmdbMediaType = raw?.tmdbType === "tv" ? "tv" : "movie";
  const mediaType: FilmMediaType =
    raw?.mediaType === "series" || tmdbType === "tv"
      ? "series"
      : raw?.mediaType === "animation"
        ? "animation"
        : "movie";
  const posterUrl = raw?.posterUrl || raw?.poster || null;
  const backdropUrl = raw?.backdropUrl || raw?.backdrop || posterUrl;
  const imdbRating = Number(raw?.imdbRating ?? raw?.rating ?? 0) || 0;
  const titleAr = String(raw?.titleAr || raw?.title || raw?.titleEn || "").trim();
  const titleEn = String(raw?.titleEn || raw?.englishTitle || titleAr).trim();
  const qualityBadge = String(raw?.qualityBadge || raw?.quality || "1080p FHD");

  return {
    ...raw,
    id: Number(raw?.id || 0),
    tmdbType,
    mediaType,
    kind: mediaType,
    titleAr,
    titleEn,
    title: titleAr,
    englishTitle: titleEn,
    overviewAr: String(raw?.overviewAr || raw?.overview || ""),
    posterUrl,
    backdropUrl,
    poster: posterUrl || "",
    backdrop: backdropUrl || "",
    year: Number(raw?.year || 2024),
    imdbRating,
    rating: imdbRating,
    qualityBadge,
    quality: qualityBadge,
    audioLabel: String(raw?.audioLabel || "مترجم"),
    categoryLabel: String(raw?.categoryLabel || (tmdbType === "tv" ? "مسلسلات أجنبية" : "أفلام أجنبية")),
    genres: Array.isArray(raw?.genres) ? raw.genres : [],
  };
}

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
    return Array.isArray(parsed)
      ? parsed.filter((x) => x && x.id).map(normalizeFilmSummary)
      : [];
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
  const normalized = normalizeFilmSummary(item);
  const list = await loadFavoriteFilms();
  const exists = list.some((x) => x.id === normalized.id && x.tmdbType === normalized.tmdbType);
  const next = exists
    ? list.filter((x) => !(x.id === normalized.id && x.tmdbType === normalized.tmdbType))
    : [normalized, ...list].slice(0, 120);
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

export async function loadSavedCast(): Promise<SavedFilmCastMember[]> {
  try {
    const raw = await AsyncStorage.getItem(SAVED_CAST_KEY);
    if (!raw) return [];
    const parsed = JSON.parse(raw);
    return Array.isArray(parsed)
      ? parsed
          .filter((x) => x && x.id)
          .map((x) => ({
            ...x,
            id: Number(x.id),
            role: x.role || x.character || "",
            character: x.character || x.role || "",
            avatar: x.avatar || x.image || "",
            image: x.image || x.avatar || "",
          }))
      : [];
  } catch {
    return [];
  }
}

export async function toggleSavedCastMember(
  member: SavedFilmCastMember,
): Promise<SavedFilmCastMember[] & { items: SavedFilmCastMember[]; saved: boolean }> {
  const list = await loadSavedCast();
  const exists = list.some((x) => String(x.id) === String(member.id));
  const normalized: SavedFilmCastMember = {
    ...member,
    id: Number(member.id),
    role: member.role || member.character || "",
    character: member.character || member.role || "",
    avatar: member.avatar || member.image || "",
    image: member.image || member.avatar || "",
  };
  const next = exists
    ? list.filter((x) => String(x.id) !== String(member.id))
    : [normalized, ...list].slice(0, 120);
  await AsyncStorage.setItem(SAVED_CAST_KEY, JSON.stringify(next));
  return Object.assign(next, { items: next, saved: !exists });
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

function normalizePlaybackRecord(r: any): FilmPlaybackRecord {
  const titleId = Number(r?.titleId || r?.filmId || 0);
  const tmdbType: TmdbMediaType = r?.tmdbType === "tv" || r?.kind === "series" ? "tv" : "movie";
  const kind = tmdbType === "tv" ? "series" : "movie";
  const snap = r?.titleSnapshot ? normalizeFilmSummary(r.titleSnapshot) : undefined;
  const durationSec = Math.max(1, Number(r?.durationSec || 100));
  const positionSec = Math.max(0, Number(r?.positionSec || 0));
  const progressPercent =
    typeof r?.progressPercent === "number"
      ? r.progressPercent
      : Math.min(100, Math.round((positionSec / durationSec) * 100));
  const seasonNumber = Number(r?.seasonNumber || 1);
  const episodeNumber = Number(r?.episodeNumber || 1);

  return {
    key: r?.key || buildFilmPlaybackKey(titleId, seasonNumber, episodeNumber, tmdbType),
    titleId,
    filmId: titleId,
    tmdbType,
    kind,
    title: String(r?.title || snap?.titleAr || snap?.titleEn || ""),
    englishTitle: String(r?.englishTitle || snap?.titleEn || ""),
    poster: String(r?.poster || snap?.posterUrl || ""),
    backdrop: String(r?.backdrop || snap?.backdropUrl || ""),
    episodeId: r?.episodeId || `${tmdbType}-${titleId}-s${seasonNumber}-e${episodeNumber}`,
    episodeTitle: r?.episodeTitle || "",
    seasonNumber,
    episodeNumber,
    positionSec,
    durationSec,
    progressPercent,
    updatedAt: Number(r?.updatedAt || Date.now()),
    titleSnapshot: snap,
  };
}

export async function loadAllPlaybackProgress(): Promise<FilmPlaybackRecord[]> {
  try {
    const raw = await AsyncStorage.getItem(PLAYBACK_KEY);
    if (!raw) return [];
    const parsed = JSON.parse(raw);
    if (!parsed || typeof parsed !== "object") return [];
    return Object.values(parsed as Record<string, any>)
      .filter((r) => r && (r.titleId || r.filmId))
      .map(normalizePlaybackRecord)
      .sort((a, b) => (b.updatedAt || 0) - (a.updatedAt || 0));
  } catch {
    return [];
  }
}

export const loadAllFilmPlaybackProgress = loadAllPlaybackProgress;

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

export async function savePlaybackProgress(record: Partial<FilmPlaybackRecord> & { titleId?: number; filmId?: number }): Promise<void> {
  try {
    const raw = await AsyncStorage.getItem(PLAYBACK_KEY);
    const map: Record<string, FilmPlaybackRecord> = raw ? JSON.parse(raw) : {};
    const normalized = normalizePlaybackRecord(record);
    map[normalized.key] = normalized;
    await AsyncStorage.setItem(PLAYBACK_KEY, JSON.stringify(map));
  } catch {}
}

export async function removeFilmPlaybackProgress(
  titleId: number,
  tmdbTypeOrEpisodeId?: string,
): Promise<void> {
  try {
    const raw = await AsyncStorage.getItem(PLAYBACK_KEY);
    if (!raw) return;
    const map = JSON.parse(raw) as Record<string, any>;
    for (const key of Object.keys(map)) {
      const rec = map[key];
      const recId = Number(rec?.titleId || rec?.filmId || 0);
      if (recId === titleId) {
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
    if (rating <= 0) {
      delete map[`${tmdbType}:${titleId}`];
      delete map[String(titleId)];
    } else {
      map[`${tmdbType}:${titleId}`] = rating;
    }
    await AsyncStorage.setItem(RATING_KEY, JSON.stringify(map));
  } catch {}
}

export async function clearAllFilmHistory(): Promise<void> {
  try {
    await AsyncStorage.multiRemove([WATCHED_KEY, PLAYBACK_KEY]);
  } catch {}
}

export async function clearAllFilmFavorites(): Promise<void> {
  try {
    await AsyncStorage.multiRemove([FAVORITES_KEY, FAVORITE_IDS_KEY]);
  } catch {}
}
