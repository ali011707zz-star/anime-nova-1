export type StardimaServerReference = {
  server_key: string;
  server_name: string;
  quality: string;
  language: string;
  source_kind: "provider_page" | "direct_media";
  page_url: string;
  source_host: string;
  availability_status: "link_found";
};
export function mapStardimaServers(rawServers: unknown): StardimaServerReference[];
export function mapStardimaEpisode(
  raw: Record<string, any>,
  title: { provider_title_id: string; title?: string },
  season: { id?: string | number; name?: string; season_number?: number; normalizedNumber?: number },
  episodeIndex: number,
  isMovie?: boolean,
): Record<string, any>;
export function dedupeStardimaEpisodes(episodes: unknown[]): any[];
export function stardimaPlayableType(url: string): "hls" | "mp4" | null;
