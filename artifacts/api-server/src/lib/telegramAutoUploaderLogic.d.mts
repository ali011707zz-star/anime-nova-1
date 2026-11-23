import type { TgAudioLang, TgMediaSection } from "./telegramStorageLogic.mjs";

export interface BatchSessionSpec {
  section: TgMediaSection;
  title: string;
  season: number;
  nextEpisode: number;
  quality: string;
  explicitQuality: boolean;
  audioLang: TgAudioLang;
  isManga: boolean;
}

export interface LeechJobSpec {
  section: TgMediaSection;
  title: string;
  season: number;
  quality: string;
  explicitQuality: boolean;
  audioLang: TgAudioLang;
  posterUrl: string | null;
  items: Array<{ episodeNumber: number; url: string }>;
  skippedInvalidCount: number;
}

export interface ImportRequestSpec {
  section: TgMediaSection;
  title: string;
  season: number;
  quality: string;
  explicitQuality: boolean;
  audioLang: TgAudioLang;
  fromEp: number;
  toEp: number;
  sourceUrl: string | null;
  posterUrl: string | null;
}

export function isSafePublicMediaUrl(rawUrl: string): boolean;
export function parseBatchCommand(rawText: string): { ok: true; session: BatchSessionSpec } | { ok: false; errorAr: string };
export function parseLeechCommand(rawText: string): { ok: true; job: LeechJobSpec } | { ok: false; errorAr: string };
export function parseImportCommand(rawText: string): { ok: true; request: ImportRequestSpec } | { ok: false; errorAr: string };
export function detectImplicitAutoCommand(rawText: string): "import" | "leech" | null;
export function extractCandidateEpisodeLinksFromHtml(html: string, baseUrl: string): Array<{ url: string; episodeNumber: number | null; kind: "direct" | "host" | "episode_page" }>;
export function extractDirectMediaFromEpisodeHtml(html: string, baseUrl: string): { url: string; kind: "mp4" | "hls" | "host" | "iframe" } | null;
export function classifyPullErrorArabic(rawError: unknown): string;
export function formatReplacementAlertMessage(item: any, reasonAr: string, remainingCount?: number): string;
export function buildReplacementInlineKeyboard(itemId: number): { inline_keyboard: Array<Array<{ text: string; callback_data: string }>> };
export function formatAutomationHelpMessage(): string;
