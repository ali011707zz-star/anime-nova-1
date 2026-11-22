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
  explicitSeason: boolean;
  explicitQuality: boolean;
  explicitAudio: boolean;
  emptyFields: string[];
  invalidFields: Array<{ field: string; raw: string }>;
  unknownTags: string[];
  titleConfirmed?: boolean;
}

export interface ValidationIssue {
  field: string;
  code: string;
  message: string;
}

export interface TitleSuggestion {
  id?: number | null;
  anilistId?: number | null;
  title: string;
  titleEn?: string | null;
  titleRomaji?: string | null;
  titleAr?: string | null;
  synonyms?: string[];
  source: "anilist" | "existing_series";
  posterUrl?: string | null;
  synopsis?: string | null;
  genres?: string[];
  year?: number | null;
  score?: number;
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
export function parseAudioLangStrict(raw: string): TgAudioLang | null;
export function normalizeAudioLang(raw: string, section?: TgMediaSection): TgAudioLang;
export function parseQualityStrict(raw: string): string | null;
export function normalizeQuality(raw: string, videoHeight?: number): string;
export function qualityToRank(quality: string): number;
export function isSuspiciousTitle(title: string): { suspicious: boolean; reason?: string };
export function parseChannelCaption(
  caption: string,
  fileName?: string,
  mediaMeta?: { height?: number; width?: number }
): ParsedChannelCaption;
export function validateParsedCaption(
  parsed: ParsedChannelCaption,
  kind?: "episode" | "series_card"
): { isValid: boolean; issues: ValidationIssue[] };
export function levenshteinDistance(a: string, b: string): number;
export function computeTitleSimilarity(a: string, b: string): number;
export function evaluateTitleMatch(
  inputTitle: string,
  candidates: TitleSuggestion[],
  options?: { section?: TgMediaSection; anilistId?: number | null; titleConfirmed?: boolean }
): {
  status: "exact" | "confirmed" | "ok_new" | "suggest" | "not_found" | "invalid_id";
  matched: TitleSuggestion | null;
  suggestions: TitleSuggestion[];
};
export function mergeAdminFixIntoDraft(
  draft: ParsedChannelCaption,
  replyText: string,
  currentIssues?: ValidationIssue[],
  mediaMeta?: { height?: number; width?: number }
): ParsedChannelCaption;
export function formatPendingReminderMessage(
  draft: ParsedChannelCaption,
  issues: ValidationIssue[],
  suggestions?: TitleSuggestion[],
  meta?: { kind?: "episode" | "series_card" }
): string;
export function buildPendingInlineKeyboard(
  pendingId: number,
  issues: ValidationIssue[],
  suggestions?: TitleSuggestion[],
  draft?: Partial<ParsedChannelCaption>
): { inline_keyboard: Array<Array<{ text: string; callback_data: string }>> };
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
export function extractAuthorizedAdminIds(input?: {
  ownerChatId?: string | number | null;
  extraAdminIds?: string | null;
  channelMemberLists?: Array<Array<{ status?: string; user?: { id?: number | string; is_bot?: boolean } }>>;
}): Set<string>;
export function isPrivateSenderAuthorized(msgOrCallback: any, allowedAdminIds: Set<string>): boolean;
