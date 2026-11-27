export type DonghuaSourceId = "animexin" | "animekhor";

export interface DonghuaCatalogItem {
  id: string;
  source: DonghuaSourceId;
  slug: string;
  url: string;
  title: string;
  poster: string;
  status: string;
  type: string;
}

export interface DonghuaEpisodeItem {
  number: number;
  numberLabel: string;
  title: string;
  date: string;
  url: string;
}

export interface DonghuaDetail {
  id: string;
  source: DonghuaSourceId;
  slug: string;
  url: string;
  title: string;
  poster: string;
  synopsis: string;
  status: string;
  genres: string[];
  episodes: DonghuaEpisodeItem[];
}

export interface DonghuaMirror {
  label: string;
  embedUrl: string;
  host: "dailymotion_allsub" | "dailymotion" | "okru" | "odysee" | "streamruby" | "rumble" | "other";
  isIndoOnly: boolean;
  isMultiSub: boolean;
  isHardsubEng: boolean;
}

export interface OpenSubtitleMatch {
  url: string;
  fileName: string;
  movieName: string;
  format: string;
  encoding: string;
  isHuman: boolean;
  isTrusted: boolean;
  downloads: number;
  score: number;
}

export function parseDonghuaCatalogHtml(html: string, source: DonghuaSourceId): DonghuaCatalogItem[];
export function parseDonghuaDetailHtml(html: string, source: DonghuaSourceId, pageUrl: string): DonghuaDetail;
export function parseDonghuaEpisodeMirrors(html: string): DonghuaMirror[];
export function parseOkRuEmbedHtml(html: string): { hlsUrl: string | null; videos: { quality: string; url: string }[] };
export function parseOdyseeEmbedHtml(html: string): string | null;
export function parseStreamRubyEmbedHtml(html: string): {
  m3u8: string | null;
  tracks: { url: string; label: string; isArabic: boolean; isEnglish: boolean }[];
};
export function extractDailymotionVideoId(embedUrl: string): string | null;
export function parseDailymotionMetadata(json: any): {
  arabicSubUrl: string | null;
  englishSubUrl: string | null;
  hlsUrl: string | null;
};
export function selectBestOpenSubtitleMatch(
  results: any[],
  query?: { title?: string; episode?: number; season?: number }
): OpenSubtitleMatch | null;
export function convertSubtitleToVtt(rawText: string): string;
export function matchDonghuaCatalogItemByTitle(
  items: DonghuaCatalogItem[],
  candidateTitles?: string[]
): DonghuaCatalogItem | null;
export function pickDonghuaEpisodeByNumber(
  episodes: DonghuaEpisodeItem[],
  episodeNumber: number
): DonghuaEpisodeItem | null;
export function normalizeAndSortSubtitleCues<T extends { start: number; end: number; text: string }>(
  cues: T[]
): { start: number; end: number; text: string }[];
