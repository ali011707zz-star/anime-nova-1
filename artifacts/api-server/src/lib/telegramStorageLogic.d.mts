export type TgMediaSection = "anime" | "cartoon" | "dubbed" | "film";
export type TgAudioLang = "sub" | "dub_en" | "dub_ar";

export interface ParsedChannelCaption {
  section: TgMediaSection;
  explicitSection: boolean;
  isSeriesCard: boolean;
  title: string;
  titleEn: string | null;
  normalizedTitle: string;
  slug: string;
  season: number;
  episode: number | null;
  quality: string;
  qualityRank: number;
  audioLang: TgAudioLang;
  anilistId: number | null;
  tmdbId: number | null;
  synopsis: string | null;
  genres: string[];
  year: number | null;
}

export interface ParsedByteRange {
  start: number;
  end: number;
  chunkLength: number;
  isPartial: boolean;
}

export function normalizeMediaTitle(value: string): string;
export function slugifyMediaTitle(value: string): string;
export function normalizeSection(raw: string): TgMediaSection | null;
export function normalizeAudioLang(raw: string, section?: TgMediaSection): TgAudioLang;
export function normalizeQuality(raw: string, videoHeight?: number): string;
export function qualityToRank(quality: string): number;
export function parseChannelCaption(
  caption: string,
  fileName?: string,
  mediaMeta?: { height?: number; width?: number }
): ParsedChannelCaption;
export function parseHttpByteRange(rangeHeader: string | undefined, fileSize: number): ParsedByteRange | null;
export function signTgStreamToken(episodeId: number | string, secret: string, ttlSec?: number): { exp: number; sig: string };
export function verifyTgStreamToken(
  episodeId: number | string,
  exp: number | string | undefined,
  sig: string | undefined,
  secret: string,
  nowSec?: number
): boolean;
export function convertSrtToVtt(rawText: string): string;
export function formatTemplatesMessage(): string;
