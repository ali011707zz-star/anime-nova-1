export type AnimeRiftSiteKey = "animerift_cr2" | "animerift_bbz" | "animerift_cr2_dub";
export type AnimeRiftQualityKey = "1080p" | "720p" | "480p" | "360p";

export interface AnimeRiftTarget {
  title?: string;
  english?: string;
  titles?: string[];
  format?: string;
  year?: string | number;
  epNum?: number;
}

export interface AnimeRiftHostEntry {
  hostId: string;
  apiQuality: string;
  quality: AnimeRiftQualityKey;
  provider: string;
  subTitle: string;
  serverName: string;
}

export interface ParsedAnimeRiftSources {
  bySite: Record<AnimeRiftSiteKey, Partial<Record<AnimeRiftQualityKey, AnimeRiftHostEntry>>>;
  availableQualities: Partial<Record<AnimeRiftSiteKey, AnimeRiftQualityKey[]>>;
}

export interface NormalizedAnimeRiftLink {
  site: AnimeRiftSiteKey;
  url: string;
  directType: "mp4" | "hls";
  isHls: boolean;
  quality: AnimeRiftQualityKey;
  headers?: Record<string, string>;
}

export const ANIMERIFT_SITE_CR2: "animerift_cr2";
export const ANIMERIFT_SITE_BBZ: "animerift_bbz";
export const ANIMERIFT_SITE_CR2_DUB: "animerift_cr2_dub";
export const ANIMERIFT_SITES: readonly AnimeRiftSiteKey[];
export const ANIMERIFT_QUALITY_ORDER: readonly AnimeRiftQualityKey[];

export function isAnimeRiftSite(site?: string | null): site is AnimeRiftSiteKey;
export function extractSeasonNumber(raw?: string | null): number | null;
export function normalizeRiftTitle(raw?: string | null): string;
export function buildRiftSearchQueries(input?: {
  title?: string;
  english?: string;
  titles?: string[];
}): string[];
export function scoreAnimeRiftCandidate(candidate: any, target?: AnimeRiftTarget): number;
export function pickBestAnimeRiftCandidate(
  items: any[],
  target?: AnimeRiftTarget,
  minScore?: number,
): { item: any; score: number } | null;
export function pickAnimeRiftEpisode(episodes: any[], epNum: number): any | null;
export function normalizeRiftQualityKey(raw?: string | null): AnimeRiftQualityKey | null;
export function parseAnimeRiftEpisodeSources(payload: any): ParsedAnimeRiftSources;
export function selectRiftHostForQuality(
  siteEntries: Partial<Record<AnimeRiftQualityKey, AnimeRiftHostEntry>> | undefined,
  preferredQuality?: AnimeRiftQualityKey,
): AnimeRiftHostEntry | null;
export function normalizeRiftDirectLink(input: {
  site: AnimeRiftSiteKey;
  directLinkJson: any;
  requestedQuality?: AnimeRiftQualityKey;
}): NormalizedAnimeRiftLink | null;
export function parseRiftRetryAfterMs(
  retryAfterHeader?: string | null,
  bodyText?: string | null,
): number;
export function computeRiftCooldownUntil(
  status: number,
  bodyText: string,
  nowMs: number,
  currentCooldownUntil?: number,
): number;
