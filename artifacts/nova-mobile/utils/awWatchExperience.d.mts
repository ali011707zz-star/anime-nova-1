export type AwWatchQualityKey = "1080p" | "720p" | "480p" | "360p";
export type AwWatchSeason = { label: string; animeId: string };
export type AwWatchSource = {
  pickerKey: string;
  serverName: string;
  quality: string;
  qualityKey: AwWatchQualityKey;
  url: string;
};
export type AwWatchDestination = {
  episode: number;
  seasonIndex: number;
  seasonLabel: string;
  series: string;
};

export function normalizeAwWatchSources(
  rows: unknown,
  baseUrl: string,
): AwWatchSource[];
export function hasAwEpisode(
  seasons: AwWatchSeason[],
  episodeNumbersBySeason: Record<string, number[]>,
  seasonIndex: number,
  episode: number,
): boolean;
export function getAdjacentAwEpisode(
  seasons: AwWatchSeason[],
  episodeNumbersBySeason: Record<string, number[]>,
  seasonIndex: number,
  currentEpisode: number,
  direction: -1 | 1,
): AwWatchDestination | null;
