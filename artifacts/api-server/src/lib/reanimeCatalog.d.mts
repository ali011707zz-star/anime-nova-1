export type ReanimeCatalogAnime = {
  anime_id?: string;
  anilist_id?: number | string;
  title?: {
    english?: string | null;
    native?: string | null;
    romaji?: string | null;
    user_preferred?: string | null;
  };
};

export type ReanimeCatalogEpisode = {
  episodeId?: string;
  episode_number?: number | string;
  playable?: boolean;
  subbed?: boolean;
  dubbed?: boolean;
};

export function buildReanimeSearchUrl(query: string): string;
export function buildReanimeAnimeUrl(slug: string): string;
export function buildReanimeEpisodesUrl(slug: string): string;
export function buildReanimeFlixUrl(anilistId: number, episodeNumber: number): string;
export function normalizeReanimeTitle(value: string): string;
export function selectReanimeSearchResult(
  results: ReanimeCatalogAnime[],
  anilistId: number | undefined,
  titleCandidates?: string[],
): ReanimeCatalogAnime | null;
export function findPlayableReanimeEpisode(
  episodes: ReanimeCatalogEpisode[],
  episodeNumber: number,
): ReanimeCatalogEpisode | null;
export function resolveReanimeEpisode(options?: {
  anilistId?: number;
  episodeNumber?: number;
  titleCandidates?: string[];
  fetchImpl?: typeof fetch;
}): Promise<{
  slug: string;
  anilistId: number;
  episodeNumber: number;
  watchUrl: string;
  episode: ReanimeCatalogEpisode;
} | null>;
