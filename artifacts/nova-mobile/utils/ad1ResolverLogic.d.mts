export declare const AD1_BASE_URL: string;

export interface Anime4upServerEntry {
  watchValue: string;
  label: string;
  isDirectUrl: boolean;
  priority: number;
}

export interface Ad1MirrorCandidate {
  embedUrl: string;
  quality: string;
  driver: string;
  hostKind: "okru" | "standard";
  totalScore: number;
}

export declare function slugifyAnime4upTitle(raw: string | null | undefined): string;
export declare function buildAnime4upEpisodeCandidates(opts: {
  title?: string | null;
  english?: string | null;
  epNum: number;
}): string[];
export declare function extractAnime4upEpisodeMeta(html: string): {
  episodeId: string | null;
  servers: Anime4upServerEntry[];
};
export declare function extractAnime4upSeriesUrlFromSearchHtml(
  html: string,
  title?: string | null,
  english?: string | null,
): string | null;
export declare function extractAnime4upEpisodeUrlFromSeriesHtml(
  html: string,
  epNum: number,
): string | null;
export declare function normalizeAd1QualityLabel(label: string | null | undefined): string;
export declare function selectPreferredAd1Mirrors(
  streamsData: unknown,
  preferredQuality?: string,
  forDownload?: boolean,
): Ad1MirrorCandidate[];
