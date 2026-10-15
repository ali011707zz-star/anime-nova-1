export type CarateenProvider = "sp" | "carateen";
export type CarateenEpisodeRef = {
  provider: CarateenProvider;
  showId: string;
  episodeId: string;
};
export function parseCarateenEpisodeUrl(value?: string): CarateenEpisodeRef | null;
