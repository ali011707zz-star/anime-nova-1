export type CarateenProvider = "sp" | "carateen" | "sd2";
export type CarateenEpisodeRef = {
  provider: CarateenProvider;
  showId: string;
  episodeId: string;
};
export function parseCarateenEpisodeUrl(value?: string): CarateenEpisodeRef | null;
