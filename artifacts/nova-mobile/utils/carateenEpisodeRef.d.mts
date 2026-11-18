export type CarateenEpisodeRef = {
  provider: "sp" | "carateen" | "sd2" | "az";
  showId: string;
  episodeId: string;
};

export function parseCarateenEpisodeUrl(value?: string | null): CarateenEpisodeRef | null;

export function inferDubbedSourceFromKey(
  contentKey?: string | null,
  episodeUrl?: string | null,
): CarateenEpisodeRef | null;

export function resolveDubbedHistoryParams(item: {
  contentKey?: string;
  episodeUrl?: string;
  catalogEpisodeId?: string;
  catalogMediaType?: "movie" | "series";
  ep?: number;
  totalEps?: number;
  seasonLabel?: string;
  title?: string;
  thumbnail?: string;
}): Record<string, string>;
