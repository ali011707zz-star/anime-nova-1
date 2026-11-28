export const EGYWATCH_BASES: readonly string[];
export const EGYWATCH_API_CODE: string;
export const EGYWATCH_SCRAPER_BASE: string;
export const EGYWATCH_HEADERS: Record<string, string>;
export const EGYWATCH_BROWSER_UA: string;
export const EGYWATCH_HOST_RULES: Record<
  string,
  { endpoint: string; method: "GET" | "POST"; queryKey: string }
>;

export type EgyWatchServerCode = "EG" | "TK" | "UQ" | "EB" | "VS";
export type EgyWatchSiteKey =
  | "egywatch_eg"
  | "egywatch_tk"
  | "egywatch_uq"
  | "egywatch_eb"
  | "egywatch_vs";

export interface ClassifiedEgyWatchServer {
  code: EgyWatchServerCode;
  site: EgyWatchSiteKey;
  label: string;
  priority: number;
  mode: "turki_api" | "direct" | "json_worker" | "redirect_worker" | "scraper" | "embed";
  link: string;
  serverRaw: string;
  rule: { endpoint: string; method: "GET" | "POST"; queryKey: string } | null;
  headers: Record<string, string>;
}

export interface EgyWatchMatchResult {
  id: number;
  ewType: "movie" | "serie" | "anime";
  title: string;
  tmdbId: number | null;
  score: number;
}

export interface ExtractedMediaLink {
  url: string;
  quality: string;
  kind: "hls" | "direct";
}

export function unpackPackedJs(html: string): string;
export function normalizeEgyTitle(raw: string): string;
export function extractHostLabel(urlStr: string): string;
export function extractHostName(urlStr: string): string;
export function isDirectPlayableMediaUrl(urlStr: string): boolean;
export function classifyEgyWatchServer(video: any): ClassifiedEgyWatchServer | null;
export function pickBestEgyWatchMatch(
  candidates: any[],
  target: {
    tmdbId?: number | null;
    tmdbType?: "movie" | "tv" | string;
    type?: string;
    titleAr?: string;
    titleEn?: string;
    title?: string;
    year?: number;
    preferDubbed?: boolean;
  },
): EgyWatchMatchResult | null;
export function parseExtractedMediaLinks(body: string): ExtractedMediaLink[];
export function detectQualityFromM3u8(m3u8Text: string, fallbackQuality?: string): string;
export function normalizeQualityLabel(rawQuality?: string, url?: string): string;
export function isJapaneseAnimeRaw(raw: any): boolean;
export function isUnreleasedDate(dateStr?: string, todayIso?: string): boolean;
export function isAsianSeriesSummary(item: any): boolean;
