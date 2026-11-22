import fs from "node:fs";
import path from "node:path";
import { createRequire } from "node:module";
import fs from "node:fs";
import path from "node:path";
import type { Request, Response } from "express";
import { pool } from "./db.js";
import { getEnvOrDb } from "./dbConfig.js";
import {
  parseChannelCaption,
  normalizeMediaTitle,
  slugifyMediaTitle,
  qualityToRank,
  normalizeAudioLang,
  getSectionDisplayInfo,
  signTgStreamToken,
  convertSrtToVtt,
  validateParsedCaption,
  evaluateTitleMatch,
  mergeAdminFixIntoDraft,
  formatPendingReminderMessage,
  buildPendingInlineKeyboard,
  type ParsedByteRange,
  type ParsedChannelCaption,
  type TgMediaSection,
  type TgAudioLang,
  type ValidationIssue,
  isMangaSection,
  formatChapterLabel,
  listZipImageEntries,
  extractZipImageByIndex,
  type TitleSuggestion,
  type TgUploadKind,
} from "./telegramStorageLogic.mjs";

const _req = createRequire(import.meta.url);

export interface TgSeriesRow {
  id: number;
  slug: string;
  section: TgMediaSection;
  title: string;
  title_ar: string | null;
  title_en: string | null;
  normalized_title: string;
  anilist_id: number | null;
  tmdb_id: number | null;
  poster_url: string | null;
  poster_file_id: string | null;
  poster_message_id: number | null;
  synopsis: string | null;
  genres_json: string;
  year: number | null;
  updated_at: string;
}

export interface TgEpisodeRow {
  id: number;
  series_id: number;
  channel_id: string;
  message_id: number;
  file_id: string;
  file_unique_id: string | null;
  file_name: string | null;
  mime_type: string;
  file_size: number;
  duration: number;
  width: number;
  height: number;
  season_number: number;
  episode_number: number;
  quality: string;
  audio_lang: TgAudioLang;
  subtitle_message_id: number | null;
  subtitle_file_id: string | null;
  subtitle_mime: string | null;
  caption_raw: string | null;
  is_active: boolean;
  created_at: string;
  updated_at: string;
  // Joined fields when queried with series
  series_title?: string;
  series_title_ar?: string | null;
  series_title_en?: string | null;
  series_slug?: string;
  series_section?: TgMediaSection;
  series_anilist_id?: number | null;
  series_tmdb_id?: number | null;
  series_poster_url?: string | null;
  series_poster_file_id?: string | null;
}

export interface TgChapterRow {
  id: number;
  series_id: number;
  channel_id: string;
  message_id: number;
  media_group_id: string | null;
  chapter_number: number;
  chapter_label: string;
  source_type: "zip" | "photos";
  file_id: string | null;
  file_unique_id: string | null;
  file_name: string | null;
  file_size: number;
  pages_json: string;
  pages_count: number;
  caption_raw: string | null;
  is_active: boolean;
  created_at: string;
  updated_at: string;
  series_title?: string;
  series_title_ar?: string | null;
  series_title_en?: string | null;
  series_slug?: string;
  series_section?: TgMediaSection;
  series_poster_url?: string | null;
  series_poster_file_id?: string | null;
}

let _schemaReadyPromise: Promise<void> | null = null;

export function ensureTelegramStorageSchema(): Promise<void> {
  if (_schemaReadyPromise) return _schemaReadyPromise;
  _schemaReadyPromise = (async () => {
    await pool.query(`
      CREATE TABLE IF NOT EXISTS telegram_media_series (
        id SERIAL PRIMARY KEY,
        slug TEXT NOT NULL,
        section TEXT NOT NULL DEFAULT 'anime',
        title TEXT NOT NULL,
        title_ar TEXT,
        title_en TEXT,
        normalized_title TEXT NOT NULL,
        anilist_id INTEGER,
        tmdb_id INTEGER,
        poster_url TEXT,
        poster_file_id TEXT,
        poster_message_id INTEGER,
        synopsis TEXT,
        genres_json TEXT NOT NULL DEFAULT '[]',
        year INTEGER,
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
        updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
      );
      CREATE UNIQUE INDEX IF NOT EXISTS idx_tg_series_section_slug
        ON telegram_media_series (section, slug);
      CREATE INDEX IF NOT EXISTS idx_tg_series_anilist
        ON telegram_media_series (anilist_id) WHERE anilist_id IS NOT NULL;
      CREATE INDEX IF NOT EXISTS idx_tg_series_tmdb
        ON telegram_media_series (tmdb_id) WHERE tmdb_id IS NOT NULL;
      CREATE INDEX IF NOT EXISTS idx_tg_series_norm
        ON telegram_media_series (normalized_title);

      CREATE TABLE IF NOT EXISTS telegram_media_episodes (
        id SERIAL PRIMARY KEY,
        series_id INTEGER NOT NULL REFERENCES telegram_media_series(id) ON DELETE CASCADE,
        channel_id TEXT NOT NULL,
        message_id INTEGER NOT NULL,
        file_id TEXT NOT NULL,
        file_unique_id TEXT,
        file_name TEXT,
        mime_type TEXT NOT NULL DEFAULT 'video/mp4',
        file_size BIGINT NOT NULL DEFAULT 0,
        duration INTEGER NOT NULL DEFAULT 0,
        width INTEGER NOT NULL DEFAULT 0,
        height INTEGER NOT NULL DEFAULT 0,
        season_number INTEGER NOT NULL DEFAULT 1,
        episode_number INTEGER NOT NULL DEFAULT 1,
        quality TEXT NOT NULL DEFAULT '720p',
        audio_lang TEXT NOT NULL DEFAULT 'sub',
        subtitle_message_id INTEGER,
        subtitle_file_id TEXT,
        subtitle_mime TEXT,
        caption_raw TEXT,
        is_active BOOLEAN NOT NULL DEFAULT TRUE,
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
        updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
      );
      CREATE UNIQUE INDEX IF NOT EXISTS idx_tg_ep_channel_msg
        ON telegram_media_episodes (channel_id, message_id);
      CREATE INDEX IF NOT EXISTS idx_tg_ep_series_ep
        ON telegram_media_episodes (series_id, season_number, episode_number) WHERE is_active = TRUE;

      CREATE TABLE IF NOT EXISTS telegram_media_pending (
        id SERIAL PRIMARY KEY,
        channel_id TEXT NOT NULL,
        message_id INTEGER NOT NULL,
        kind TEXT NOT NULL DEFAULT 'episode',
        file_id TEXT NOT NULL,
        file_unique_id TEXT,
        file_name TEXT,
        mime_type TEXT NOT NULL DEFAULT 'video/mp4',
        file_size BIGINT NOT NULL DEFAULT 0,
        duration INTEGER NOT NULL DEFAULT 0,
        width INTEGER NOT NULL DEFAULT 0,
        height INTEGER NOT NULL DEFAULT 0,
        caption_raw TEXT,
        parsed_json TEXT NOT NULL,
        issues_json TEXT NOT NULL DEFAULT '[]',
        suggestions_json TEXT NOT NULL DEFAULT '[]',
        status TEXT NOT NULL DEFAULT 'pending',
        admin_prompt_msg_id INTEGER,
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
        updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
      );
      CREATE UNIQUE INDEX IF NOT EXISTS idx_tg_pending_channel_msg
        ON telegram_media_pending (channel_id, message_id);
      CREATE INDEX IF NOT EXISTS idx_tg_pending_status_updated
        ON telegram_media_pending (status, updated_at DESC);
      ALTER TABLE telegram_media_pending ADD COLUMN IF NOT EXISTS media_group_id TEXT;

      CREATE TABLE IF NOT EXISTS telegram_media_chapters (
        id SERIAL PRIMARY KEY,
        series_id INTEGER NOT NULL REFERENCES telegram_media_series(id) ON DELETE CASCADE,
        channel_id TEXT NOT NULL,
        message_id INTEGER NOT NULL,
        media_group_id TEXT,
        chapter_number DOUBLE PRECISION NOT NULL,
        chapter_label TEXT NOT NULL,
        source_type TEXT NOT NULL DEFAULT 'zip',
        file_id TEXT,
        file_unique_id TEXT,
        file_name TEXT,
        file_size BIGINT NOT NULL DEFAULT 0,
        pages_json TEXT NOT NULL DEFAULT '[]',
        pages_count INTEGER NOT NULL DEFAULT 0,
        caption_raw TEXT,
        is_active BOOLEAN NOT NULL DEFAULT TRUE,
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
        updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
      );
      CREATE UNIQUE INDEX IF NOT EXISTS idx_tg_chapters_channel_msg
        ON telegram_media_chapters (channel_id, message_id);
      CREATE INDEX IF NOT EXISTS idx_tg_chapters_series_ch
        ON telegram_media_chapters (series_id, chapter_number DESC);
      CREATE INDEX IF NOT EXISTS idx_tg_chapters_media_group
        ON telegram_media_chapters (channel_id, media_group_id)
        WHERE media_group_id IS NOT NULL;
    `);
  })().catch((err) => {
    _schemaReadyPromise = null;
    console.error("[tg-storage] schema init failed:", err?.message || err);
    throw err;
  });
  return _schemaReadyPromise;
}

export function getStorageChannelId(): string {
  return String(process.env.TELEGRAM_STORAGE_CHANNEL_ID || "").trim();
}

export function isStorageChannel(chatId: number | string | undefined): boolean {
  const expected = getStorageChannelId();
  if (!expected || chatId == null) return false;
  return String(chatId).trim() === expected;
}

export function getStreamSigningSecret(): string {
  return String(process.env.APP_SECRET || process.env.SESSION_SECRET || "").trim();
}

export function getPublicApiBase(): string {
  return (process.env.NOVA_PUBLIC_URL || `https://${process.env.APP_DOMAIN || "animenovaa.duckdns.org"}`).replace(/\/+$/, "");
}

export function buildSignedStreamPath(episodeId: number, ttlSec = 6 * 3600): string {
  const secret = getStreamSigningSecret();
  const { exp, sig } = signTgStreamToken(episodeId, secret, ttlSec);
  return `/api/tg-media/stream/${episodeId}?exp=${exp}&sig=${encodeURIComponent(sig)}`;
}

export function buildSignedStreamUrl(episodeId: number, ttlSec = 6 * 3600): string {
  return `${getPublicApiBase()}${buildSignedStreamPath(episodeId, ttlSec)}`;
}

export function buildSubtitleUrl(episodeId: number): string {
  const secret = getStreamSigningSecret();
  const { exp, sig } = signTgStreamToken(episodeId, secret, 12 * 3600);
  return `${getPublicApiBase()}/api/tg-media/subtitle/${episodeId}?exp=${exp}&sig=${encodeURIComponent(sig)}`;
}

export function buildPosterUrl(series: Pick<TgSeriesRow, "id" | "poster_url" | "poster_file_id">): string {
  if (series.poster_file_id) {
    return `${getPublicApiBase()}/api/tg-media/poster/${series.id}`;
  }
  return series.poster_url || "";
}

/* ── AniList metadata & candidate search (Typo Detection + Enrichment) ── */

interface AniListMeta {
  id: number;
  titleRomaji: string;
  titleEnglish: string | null;
  synonyms: string[];
  posterUrl: string | null;
  synopsis: string | null;
  genres: string[];
  year: number | null;
}

export interface TgPendingRow {
  id: number;
  channel_id: string;
  message_id: number;
  kind: TgUploadKind;
  media_group_id?: string | null;
  file_id: string;
  file_unique_id: string | null;
  file_name: string | null;
  mime_type: string;
  file_size: number;
  duration: number;
  width: number;
  height: number;
  caption_raw: string | null;
  parsed_json: string;
  issues_json: string;
  suggestions_json: string;
  status: "pending" | "published" | "cancelled";
  admin_prompt_msg_id: number | null;
  created_at: string;
  updated_at: string;
}

function mapAniListMediaToCandidate(m: any): TitleSuggestion {
  const desc = typeof m?.description === "string"
    ? m.description.replace(/<[^>]+>/g, " ").replace(/\s+/g, " ").trim().slice(0, 600)
    : null;
  const titleRomaji = String(m?.title?.romaji || m?.title?.english || "Untitled");
  const titleEn = m?.title?.english ? String(m.title.english) : null;
  return {
    id: Number(m.id),
    anilistId: Number(m.id),
    title: titleEn || titleRomaji,
    titleEn,
    titleRomaji,
    synonyms: Array.isArray(m?.synonyms) ? m.synonyms.filter((s: any) => typeof s === "string").slice(0, 10) : [],
    source: "anilist",
    posterUrl: m?.coverImage?.extraLarge || m?.coverImage?.large || null,
    synopsis: desc,
    genres: Array.isArray(m?.genres) ? m.genres.slice(0, 8) : [],
    year: Number.isFinite(Number(m?.seasonYear)) ? Number(m.seasonYear) : null,
  };
}

async function queryAniListPage(
  search: string,
  sort: "SEARCH_MATCH" | "POPULARITY_DESC" = "SEARCH_MATCH",
  perPage = 5,
  mediaType: "ANIME" | "MANGA" = "ANIME"
): Promise<{ ok: boolean; candidates: TitleSuggestion[] }> {
  const query = `query ($search: String, $perPage: Int) { Page(page: 1, perPage: $perPage) { media(search: $search, type: ${mediaType}, sort: ${sort}) { id title { romaji english native } synonyms coverImage { extraLarge large } description(asHtml: false) genres seasonYear startDate { year } } } }`;
  try {
    const r = await fetch("https://graphql.anilist.co", {
      method: "POST",
      headers: { "Content-Type": "application/json", Accept: "application/json" },
      body: JSON.stringify({ query, variables: { search, perPage } }),
      signal: AbortSignal.timeout(7000),
    });
    if (!r.ok) return { ok: false, candidates: [] };
    const data = (await r.json()) as any;
    const list = Array.isArray(data?.data?.Page?.media) ? data.data.Page.media : [];
    return {
      ok: true,
      candidates: list.filter((m: any) => m?.id).map(mapAniListMediaToCandidate),
    };
  } catch {
    return { ok: false, candidates: [] };
  }
}

async function searchAniListCandidates(
  title: string,
  anilistId?: number | null,
  mediaType: "ANIME" | "MANGA" = "ANIME"
): Promise<{ ok: boolean; candidates: TitleSuggestion[] }> {
  if (anilistId) {
    const query = `query ($id: Int) { Media(id: $id, type: ${mediaType}) { id title { romaji english native } synonyms coverImage { extraLarge large } description(asHtml: false) genres seasonYear startDate { year } } }`;
    try {
      const r = await fetch("https://graphql.anilist.co", {
        method: "POST",
        headers: { "Content-Type": "application/json", Accept: "application/json" },
        body: JSON.stringify({ query, variables: { id: anilistId } }),
        signal: AbortSignal.timeout(7000),
      });
      if (r.status === 404) return { ok: true, candidates: [] };
      if (!r.ok) return { ok: false, candidates: [] };
      const data = (await r.json()) as any;
      const m = data?.data?.Media;
      return { ok: true, candidates: m?.id ? [mapAniListMediaToCandidate(m)] : [] };
    } catch {
      return { ok: false, candidates: [] };
    }
  }

  const primary = await queryAniListPage(title, "SEARCH_MATCH", 5, mediaType);
  if (!primary.ok || primary.candidates.length > 0) return primary;

  const STOPWORDS = new Set(["the", "and", "for", "with", "from", "into", "that", "this", "season", "part", "movie", "anime", "manga", "manhwa"]);
  const tokens = normalizeMediaTitle(title)
    .split(" ")
    .filter((w) => w.length >= 3 && /[a-z]/i.test(w) && !STOPWORDS.has(w));

  if (tokens.length === 0) return primary;

  const uniqueTokens = [...new Set(tokens)].sort((a, b) => b.length - a.length).slice(0, 2);
  const byId = new Map<number, TitleSuggestion>();
  const results = await Promise.all(uniqueTokens.map((tok) => queryAniListPage(tok, "POPULARITY_DESC", 8, mediaType)));
  for (const res of results) {
    for (const c of res.candidates) {
      if (c.anilistId && !byId.has(c.anilistId)) {
        byId.set(c.anilistId, c);
      }
    }
  }
  return { ok: true, candidates: [...byId.values()] };
}

async function lookupAniListMetadata(
  title: string,
  anilistId?: number | null,
  mediaType: "ANIME" | "MANGA" = "ANIME"
): Promise<AniListMeta | null> {
  const res = await searchAniListCandidates(title, anilistId, mediaType);
  const first = res.candidates[0];
  if (!first || !first.anilistId) return null;
  return {
    id: first.anilistId,
    titleRomaji: first.titleRomaji || first.title,
    titleEnglish: first.titleEn || null,
    synonyms: first.synonyms || [],
    posterUrl: first.posterUrl || null,
    synopsis: first.synopsis || null,
    genres: first.genres || [],
    year: first.year || null,
  };
}

async function searchExistingSeriesCandidates(section: TgMediaSection): Promise<TitleSuggestion[]> {
  try {
    const r = await pool.query<TgSeriesRow>(
      `SELECT id, title, title_ar, title_en, anilist_id, poster_url, synopsis, genres_json, year
         FROM telegram_media_series
        WHERE section = $1
        ORDER BY updated_at DESC
        LIMIT 250`,
      [section]
    );
    return r.rows.map((s) => {
      let genres: string[] = [];
      try { genres = JSON.parse(s.genres_json || "[]"); } catch {}
      return {
        id: s.id,
        anilistId: s.anilist_id,
        title: s.title,
        titleAr: s.title_ar,
        titleEn: s.title_en,
        source: "existing_series" as const,
        posterUrl: s.poster_url,
        synopsis: s.synopsis,
        genres,
        year: s.year,
      };
    });
  } catch {
    return [];
  }
}

/* ── Upsert Series & Validation / Pending Workflow ─────────────────────── */

async function findOrUpsertSeries(input: {
  section: TgMediaSection;
  title: string;
  titleEn?: string | null;
  anilistId?: number | null;
  tmdbId?: number | null;
  posterUrl?: string | null;
  posterFileId?: string | null;
  posterMessageId?: number | null;
  synopsis?: string | null;
  genres?: string[];
  year?: number | null;
  skipAniListLookup?: boolean;
}): Promise<TgSeriesRow> {
  await ensureTelegramStorageSchema();
  const norm = normalizeMediaTitle(input.title || input.titleEn || "");
  const normEn = input.titleEn ? normalizeMediaTitle(input.titleEn) : "";

  let existing: TgSeriesRow | null = null;
  if (input.anilistId) {
    const r = await pool.query<TgSeriesRow>(
      `SELECT * FROM telegram_media_series WHERE anilist_id = $1 AND section = $2 LIMIT 1`,
      [input.anilistId, input.section]
    );
    existing = r.rows[0] || null;
  }
  if (!existing && input.tmdbId) {
    const r = await pool.query<TgSeriesRow>(
      `SELECT * FROM telegram_media_series WHERE tmdb_id = $1 AND section = $2 LIMIT 1`,
      [input.tmdbId, input.section]
    );
    existing = r.rows[0] || null;
  }
  if (!existing && norm) {
    const r = await pool.query<TgSeriesRow>(
      `SELECT * FROM telegram_media_series WHERE section = $1 AND (normalized_title = $2 OR ($3 <> '' AND normalized_title = $3)) LIMIT 1`,
      [input.section, norm, normEn]
    );
    existing = r.rows[0] || null;
  }

  let aniMeta: AniListMeta | null = null;
  if (!input.skipAniListLookup && (input.section === "anime" || isMangaSection(input.section) || input.anilistId) && (!existing || !existing.anilist_id || !existing.poster_url)) {
    const searchName = input.titleEn || input.title;
    if (input.anilistId || (searchName && /[a-z]/i.test(searchName))) {
      const alType = isMangaSection(input.section) ? "MANGA" : "ANIME";
      aniMeta = await lookupAniListMetadata(searchName, input.anilistId, alType);
    }
  }

  const finalAnilistId = input.anilistId || existing?.anilist_id || aniMeta?.id || null;
  const finalTmdbId = input.tmdbId || existing?.tmdb_id || null;
  const isArabicTitle = /[\u0600-\u06FF]/.test(input.title);
  const finalTitle = existing?.title || input.title || aniMeta?.titleEnglish || aniMeta?.titleRomaji || "Untitled";
  const finalTitleAr = isArabicTitle ? input.title : (existing?.title_ar || null);
  const finalTitleEn = input.titleEn || (!isArabicTitle ? input.title : null) || aniMeta?.titleEnglish || aniMeta?.titleRomaji || existing?.title_en || null;
  const finalPosterUrl = input.posterUrl || existing?.poster_url || aniMeta?.posterUrl || null;
  const finalPosterFileId = input.posterFileId || existing?.poster_file_id || null;
  const finalPosterMsgId = input.posterMessageId || existing?.poster_message_id || null;
  const finalSynopsis = input.synopsis || existing?.synopsis || aniMeta?.synopsis || null;
  const finalGenres = (input.genres && input.genres.length > 0)
    ? JSON.stringify(input.genres)
    : (existing?.genres_json && existing.genres_json !== "[]" ? existing.genres_json : JSON.stringify(aniMeta?.genres || []));
  const finalYear = input.year || existing?.year || aniMeta?.year || null;

  if (existing) {
    const upd = await pool.query<TgSeriesRow>(
      `UPDATE telegram_media_series
         SET title = $1,
             title_ar = $2,
             title_en = $3,
             anilist_id = $4,
             tmdb_id = $5,
             poster_url = $6,
             poster_file_id = $7,
             poster_message_id = $8,
             synopsis = $9,
             genres_json = $10,
             year = $11,
             updated_at = NOW()
       WHERE id = $12
       RETURNING *`,
      [
        finalTitle,
        finalTitleAr,
        finalTitleEn,
        finalAnilistId,
        finalTmdbId,
        finalPosterUrl,
        finalPosterFileId,
        finalPosterMsgId,
        finalSynopsis,
        finalGenres,
        finalYear,
        existing.id,
      ]
    );
    return upd.rows[0];
  }

  const slug = slugifyMediaTitle(finalTitleEn || finalTitle);
  const ins = await pool.query<TgSeriesRow>(
    `INSERT INTO telegram_media_series
      (slug, section, title, title_ar, title_en, normalized_title, anilist_id, tmdb_id, poster_url, poster_file_id, poster_message_id, synopsis, genres_json, year)
     VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14)
     ON CONFLICT (section, slug) DO UPDATE SET
       title = EXCLUDED.title,
       title_ar = COALESCE(EXCLUDED.title_ar, telegram_media_series.title_ar),
       title_en = COALESCE(EXCLUDED.title_en, telegram_media_series.title_en),
       anilist_id = COALESCE(EXCLUDED.anilist_id, telegram_media_series.anilist_id),
       tmdb_id = COALESCE(EXCLUDED.tmdb_id, telegram_media_series.tmdb_id),
       poster_url = COALESCE(EXCLUDED.poster_url, telegram_media_series.poster_url),
       poster_file_id = COALESCE(EXCLUDED.poster_file_id, telegram_media_series.poster_file_id),
       poster_message_id = COALESCE(EXCLUDED.poster_message_id, telegram_media_series.poster_message_id),
       synopsis = COALESCE(EXCLUDED.synopsis, telegram_media_series.synopsis),
       genres_json = CASE WHEN EXCLUDED.genres_json <> '[]' THEN EXCLUDED.genres_json ELSE telegram_media_series.genres_json END,
       year = COALESCE(EXCLUDED.year, telegram_media_series.year),
       updated_at = NOW()
     RETURNING *`,
    [
      slug,
      input.section,
      finalTitle,
      finalTitleAr,
      finalTitleEn,
      norm || normalizeMediaTitle(finalTitle),
      finalAnilistId,
      finalTmdbId,
      finalPosterUrl,
      finalPosterFileId,
      finalPosterMsgId,
      finalSynopsis,
      finalGenres,
      finalYear,
    ]
  );
  return ins.rows[0];
}

export interface ChannelIngestResult {
  handled: boolean;
  kind: "episode" | "chapter" | "series_card" | "subtitle" | "needs_fix" | "cancelled" | "ignored" | "error";
  summary?: string;
  episodeId?: number;
  chapterId?: number;
  pendingId?: number;
  replyMarkup?: { inline_keyboard: Array<Array<{ text: string; callback_data: string }>> };
  series?: TgSeriesRow;
  episode?: TgEpisodeRow;
  chapter?: TgChapterRow;
  warning?: string;
  remainingPendingCount?: number;
}

interface MediaPayload {
  channelId: string;
  messageId: number;
  kind: TgUploadKind;
  fileId: string;
  fileUniqueId: string | null;
  fileName: string;
  mimeType: string;
  fileSize: number;
  duration: number;
  width: number;
  height: number;
  captionRaw: string;
  mediaGroupId?: string | null;
}

async function findExistingTelegramDuplicate(
  draft: ParsedChannelCaption,
  matchedCandidate: TitleSuggestion | null,
  excludeChannelId?: string,
  excludeMessageId?: number
): Promise<{ id: number; quality: string; title: string; season: number; episode: number } | null> {
  try {
    const norm = normalizeMediaTitle(draft.title || draft.titleEn || "");
    const anilistId = draft.anilistId || matchedCandidate?.anilistId || null;
    const epNum = draft.section === "film" ? (draft.episode || 1) : Number(draft.episode || 0);
    if (!epNum || (!norm && !anilistId)) return null;

    const params: any[] = [draft.section, draft.season || 1, epNum, draft.audioLang];
    const seriesMatchConds: string[] = [];
    if (anilistId) {
      params.push(anilistId);
      seriesMatchConds.push(`s.anilist_id = $${params.length}`);
    }
    if (norm) {
      params.push(norm);
      seriesMatchConds.push(`s.normalized_title = $${params.length}`);
    }
    let excludeSql = "";
    if (excludeChannelId && excludeMessageId) {
      params.push(excludeChannelId, excludeMessageId);
      excludeSql = `AND NOT (e.channel_id = $${params.length - 1} AND e.message_id = $${params.length})`;
    }
    const r = await pool.query<any>(
      `SELECT e.id, e.quality, e.season_number, e.episode_number, s.title
         FROM telegram_media_episodes e
         JOIN telegram_media_series s ON s.id = e.series_id
        WHERE s.section = $1
          AND e.season_number = $2
          AND e.episode_number = $3
          AND e.audio_lang = $4
          AND e.is_active = TRUE
          AND (${seriesMatchConds.join(" OR ")})
          ${excludeSql}
        ORDER BY e.updated_at DESC
        LIMIT 1`,
      params
    );
    if (!r.rows[0]) return null;
    return {
      id: r.rows[0].id,
      quality: r.rows[0].quality,
      title: r.rows[0].title,
      season: r.rows[0].season_number,
      episode: r.rows[0].episode_number,
    };
  } catch {
    return null;
  }
}

async function findExistingTelegramChapterDuplicate(
  draft: ParsedChannelCaption,
  matchedCandidate: TitleSuggestion | null,
  excludeChannelId?: string,
  excludeMessageId?: number
): Promise<{ id: number; title: string; chapterLabel: string } | null> {
  try {
    const norm = normalizeMediaTitle(draft.title || draft.titleEn || "");
    const anilistId = draft.anilistId || matchedCandidate?.anilistId || null;
    const chNum = Number(draft.episode);
    if (!Number.isFinite(chNum) || chNum < 0 || (!norm && !anilistId)) return null;

    const params: any[] = [draft.section, chNum];
    const seriesMatchConds: string[] = [];
    if (anilistId) {
      params.push(anilistId);
      seriesMatchConds.push(`s.anilist_id = $${params.length}`);
    }
    if (norm) {
      params.push(norm);
      seriesMatchConds.push(`s.normalized_title = $${params.length}`);
    }
    let excludeSql = "";
    if (excludeChannelId && excludeMessageId) {
      params.push(excludeChannelId, excludeMessageId);
      excludeSql = `AND NOT (c.channel_id = $${params.length - 1} AND c.message_id = $${params.length})`;
    }
    const r = await pool.query<any>(
      `SELECT c.id, c.chapter_label, s.title
         FROM telegram_media_chapters c
         JOIN telegram_media_series s ON s.id = c.series_id
        WHERE s.section = $1
          AND c.chapter_number = $2
          AND c.is_active = TRUE
          AND (${seriesMatchConds.join(" OR ")})
          ${excludeSql}
        ORDER BY c.updated_at DESC
        LIMIT 1`,
      params
    );
    if (!r.rows[0]) return null;
    return {
      id: r.rows[0].id,
      title: r.rows[0].title,
      chapterLabel: r.rows[0].chapter_label,
    };
  } catch {
    return null;
  }
}

async function checkExternalCatalogDuplicate(
  draft: ParsedChannelCaption
): Promise<{ existsInSource: boolean; sourceLabel?: string; matchedTitle?: string; posterUrl?: string | null }> {
  const normTarget = normalizeMediaTitle(draft.title || "");
  const epNum = Number(draft.episode || 0);
  if (!normTarget || !epNum) return { existsInSource: false };
  const localBase = `http://127.0.0.1:${process.env.PORT || 5000}`;

  try {
    if (draft.section === "cartoon") {
      const r = await fetch(`${localBase}/api/dubbed/search?q=${encodeURIComponent(draft.title)}`, {
        headers: { "x-internal": "1" }, signal: AbortSignal.timeout(4500),
      });
      if (!r.ok) return { existsInSource: false };
      const data = (await r.json()) as any;
      const items = (Array.isArray(data?.results) ? data.results : []).filter(
        (it: any) => it && it.source !== "tg" && !String(it.key || "").startsWith("tg-")
      );
      const exact = items.find((it: any) => normalizeMediaTitle(it.title) === normTarget);
      if (!exact) return { existsInSource: false };
      const posterUrl = exact.poster || exact.image || null;
      const seasons = Array.isArray(exact.seasons) ? exact.seasons : [];
      const targetSeason = seasons[Math.max(0, (draft.season || 1) - 1)] || seasons[0];
      if (targetSeason?.arabicToonsId) {
        const epR = await fetch(
          `${localBase}/api/dubbed/episodes?series=${encodeURIComponent(targetSeason.arabicToonsId)}&order=asc`,
          { headers: { "x-internal": "1" }, signal: AbortSignal.timeout(5000) }
        );
        if (epR.ok) {
          const epD = (await epR.json()) as any;
          const eps = Array.isArray(epD?.episodes) ? epD.episodes : [];
          if (eps.some((e: any) => Number(e?.number) === epNum)) {
            return { existsInSource: true, sourceLabel: "كرتون مدبلج 1", matchedTitle: exact.title, posterUrl };
          }
        }
      }
      return { existsInSource: false, matchedTitle: exact.title, posterUrl };
    }

    if (draft.section === "cartoon2") {
      const r = await fetch(`${localBase}/api/dubbed/sd2/catalog?q=${encodeURIComponent(draft.title)}&limit=12`, {
        headers: { "x-internal": "1" }, signal: AbortSignal.timeout(4500),
      });
      if (!r.ok) return { existsInSource: false };
      const data = (await r.json()) as any;
      const items = (Array.isArray(data?.results) ? data.results : []).filter(
        (it: any) => it && !String(it.slug || "").startsWith("tg-sd2-")
      );
      const exact = items.find((it: any) => normalizeMediaTitle(it.title) === normTarget);
      if (!exact) return { existsInSource: false };
      const posterUrl = exact.image || null;
      if (exact.slug) {
        const epR = await fetch(
          `${localBase}/api/dubbed/sd2/episodes?slug=${encodeURIComponent(exact.slug)}&mediaType=${encodeURIComponent(exact.mediaType || "series")}`,
          { headers: { "x-internal": "1" }, signal: AbortSignal.timeout(5000) }
        );
        if (epR.ok) {
          const epD = (await epR.json()) as any;
          const eps = Array.isArray(epD?.episodes) ? epD.episodes : [];
          if (eps.some((e: any) => Number(e?.number) === epNum && (Number(e?.season || 1) === (draft.season || 1)))) {
            return { existsInSource: true, sourceLabel: "كرتون مدبلج 2", matchedTitle: exact.title, posterUrl };
          }
        }
      }
      return { existsInSource: false, matchedTitle: exact.title, posterUrl };
    }

    if (draft.section === "dubbed") {
      const r = await fetch(`${localBase}/api/dubbed/animezid/catalog?q=${encodeURIComponent(draft.title)}&page=1`, {
        headers: { "x-internal": "1" }, signal: AbortSignal.timeout(4500),
      });
      if (!r.ok) return { existsInSource: false };
      const data = (await r.json()) as any;
      const items = (Array.isArray(data?.results) ? data.results : []).filter(
        (it: any) => it && !String(it.slug || "").startsWith("tg-az-")
      );
      const exact = items.find((it: any) => normalizeMediaTitle(it.title) === normTarget);
      if (!exact) return { existsInSource: false };
      const posterUrl = exact.poster || null;
      if (exact.slug) {
        const epR = await fetch(
          `${localBase}/api/dubbed/animezid/detail?slug=${encodeURIComponent(exact.slug)}&season=${draft.season || 1}`,
          { headers: { "x-internal": "1" }, signal: AbortSignal.timeout(5000) }
        );
        if (epR.ok) {
          const epD = (await epR.json()) as any;
          const eps = Array.isArray(epD?.episodes) ? epD.episodes : [];
          if (eps.some((e: any) => Number(e?.number) === epNum)) {
            return { existsInSource: true, sourceLabel: "أنمي مدبلج", matchedTitle: exact.title, posterUrl };
          }
        }
      }
      return { existsInSource: false, matchedTitle: exact.title, posterUrl };
    }
    if (draft.section === "spacetoon") {
      const r = await fetch(
        `${localBase}/api/dubbed/carateen/catalog?provider=sp&q=${encodeURIComponent(draft.title)}&limit=12`,
        { headers: { "x-internal": "1" }, signal: AbortSignal.timeout(4500) }
      );
      if (!r.ok) return { existsInSource: false };
      const data = (await r.json()) as any;
      const items = (Array.isArray(data?.results) ? data.results : []).filter(
        (it: any) => it && Number(it.id || 0) < TG_SPACETOON_ID_BASE
      );
      const exact = items.find((it: any) => normalizeMediaTitle(it.title) === normTarget);
      if (!exact) return { existsInSource: false };
      const posterUrl = exact.image || null;
      if (exact.id) {
        const epR = await fetch(
          `${localBase}/api/dubbed/carateen/episodes?provider=sp&showId=${encodeURIComponent(String(exact.id))}`,
          { headers: { "x-internal": "1" }, signal: AbortSignal.timeout(5000) }
        );
        if (epR.ok) {
          const epD = (await epR.json()) as any;
          const eps = Array.isArray(epD?.episodes) ? epD.episodes : [];
          if (eps.some((e: any) => Number(e?.number) === epNum)) {
            return { existsInSource: true, sourceLabel: "سبيستون", matchedTitle: exact.title, posterUrl };
          }
        }
      }
      return { existsInSource: false, matchedTitle: exact.title, posterUrl };
    }

    if (draft.section === "aw_animation") {
      const r = await fetch(`${localBase}/api/aw-dubbed/catalog?q=${encodeURIComponent(draft.title)}&page=1`, {
        headers: { "x-internal": "1" }, signal: AbortSignal.timeout(4500),
      });
      if (!r.ok) return { existsInSource: false };
      const data = (await r.json()) as any;
      const items = (Array.isArray(data?.results) ? data.results : []).filter(
        (it: any) => it && !String(it.key || "").startsWith("tg-aw-")
      );
      const exact = items.find((it: any) =>
        normalizeMediaTitle(it.title) === normTarget || normalizeMediaTitle(it.titleAr) === normTarget
      );
      if (!exact) return { existsInSource: false };
      const posterUrl = exact.poster || null;
      const seasons = Array.isArray(exact.seasons) ? exact.seasons : [];
      const targetSeason = seasons[Math.max(0, (draft.season || 1) - 1)] || seasons[0];
      if (targetSeason?.animeId) {
        const epR = await fetch(
          `${localBase}/api/aw-dubbed/episodes?series=${encodeURIComponent(targetSeason.animeId)}&order=asc`,
          { headers: { "x-internal": "1" }, signal: AbortSignal.timeout(5000) }
        );
        if (epR.ok) {
          const epD = (await epR.json()) as any;
          const eps = Array.isArray(epD?.episodes) ? epD.episodes : [];
          if (eps.some((e: any) => Number(e?.number) === epNum)) {
            return { existsInSource: true, sourceLabel: "أنيميشن مدبلج", matchedTitle: exact.titleAr || exact.title, posterUrl };
          }
        }
      }
      return { existsInSource: false, matchedTitle: exact.titleAr || exact.title, posterUrl };
    }

    if (draft.section === "animation") {
      const r = await fetch(`${localBase}/api/animation/search?q=${encodeURIComponent(draft.titleEn || draft.title)}`, {
        headers: { "x-internal": "1" }, signal: AbortSignal.timeout(4500),
      });
      if (r.ok) {
        const data = (await r.json()) as any;
        const items = Array.isArray(data?.results) ? data.results : (Array.isArray(data?.items) ? data.items : []);
        const exact = items.find((it: any) =>
          normalizeMediaTitle(it.title || it.name) === normTarget ||
          normalizeMediaTitle(it.original_title || it.original_name) === normTarget
        );
        if (exact) {
          const posterUrl = exact.poster || (exact.poster_path ? `https://image.tmdb.org/t/p/w500${exact.poster_path}` : null);
          return { existsInSource: false, matchedTitle: exact.title || exact.name, posterUrl };
        }
      }
      return { existsInSource: false };
    }

    if (draft.section === "manga" || draft.section === "manhwa") {
      const srcParam = draft.section === "manhwa" ? "manhwa" : "manga";
      const r = await fetch(
        `${localBase}/api/manga/catalog?source=${srcParam}&search=${encodeURIComponent(draft.titleEn || draft.title)}&page=1`,
        { headers: { "x-internal": "1" }, signal: AbortSignal.timeout(5500) }
      );
      if (!r.ok) return { existsInSource: false };
      const data = (await r.json()) as any;
      const rawItems = Array.isArray(data?.items) ? data.items : (Array.isArray(data?.results) ? data.results : []);
      const items = rawItems.filter((it: any) => it && !String(it.id || "").startsWith("tg-"));
      const exact = items.find((it: any) => {
        const candidates = [it.arabicTitle, it.englishTitle, it.displayTitle, typeof it.title === "string" ? it.title : it.title?.english, it.title?.romaji];
        return candidates.some((c) => c && normalizeMediaTitle(c) === normTarget);
      });
      if (!exact) return { existsInSource: false };
      const posterUrl = exact.poster || exact.coverImage?.large || null;
      if (exact.id) {
        const chR = await fetch(
          `${localBase}/api/manga/chapters?id=${encodeURIComponent(exact.id)}&source=${srcParam}`,
          { headers: { "x-internal": "1" }, signal: AbortSignal.timeout(5500) }
        );
        if (chR.ok) {
          const chD = (await chR.json()) as any;
          const chs = Array.isArray(chD?.chapters) ? chD.chapters : [];
          if (chs.some((c: any) => Number(c?.number) === Number(draft.episode))) {
            return {
              existsInSource: true,
              sourceLabel: draft.section === "manhwa" ? "المانهوا" : "المانجا",
              matchedTitle: exact.displayTitle || exact.arabicTitle || exact.englishTitle,
              posterUrl,
            };
          }
        }
      }
      return { existsInSource: false, matchedTitle: exact.displayTitle || exact.arabicTitle || exact.englishTitle, posterUrl };
    }
  } catch {
    /* fail-open on external check timeout */
  }
  return { existsInSource: false };
}

async function validateAndEvaluateDraft(
  draft: ParsedChannelCaption,
  kind: TgUploadKind,
  ctx?: { channelId?: string; messageId?: number }
): Promise<{
  isValid: boolean;
  issues: ValidationIssue[];
  suggestions: TitleSuggestion[];
  matchedCandidate: TitleSuggestion | null;
}> {
  const base = validateParsedCaption(draft, kind);
  const issues: ValidationIssue[] = [...base.issues];
  let suggestions: TitleSuggestion[] = [];
  let matchedCandidate: TitleSuggestion | null = null;

  const hasSectionIssue = issues.some((i) => i.field === "section");
  const hasTitleIssue = issues.some((i) => i.field === "title");
  const hasAnilistIssue = issues.some((i) => i.field === "anilistId");

  if (!hasSectionIssue && !hasTitleIssue && !hasAnilistIssue && draft.title) {
    const existingCandidates = await searchExistingSeriesCandidates(draft.section);

    if (draft.section === "anime" || isMangaSection(draft.section) || draft.anilistId) {
      const searchQuery = draft.titleEn || draft.title;
      const alType = isMangaSection(draft.section) ? "MANGA" : "ANIME";
      const aniRes = await searchAniListCandidates(searchQuery, draft.anilistId, alType);
      if (aniRes.ok) {
        const combined = [...existingCandidates, ...aniRes.candidates];
        const match = evaluateTitleMatch(searchQuery, combined, {
          section: draft.section,
          anilistId: draft.anilistId,
          titleConfirmed: draft.titleConfirmed,
        });
        if (match.status === "invalid_id") {
          issues.push({
            field: "anilistId",
            code: "invalid",
            message: `معرّف AniList (#${draft.anilistId}) غير موجود — تأكد من الرقم أو أرسل الاسم الصحيح`,
          });
        } else if (match.status === "suggest") {
          issues.push({
            field: "title",
            code: "suggest",
            message: `الاسم المكتوب ("${draft.title}") غير مطابق تماماً — قد يكون فيه خطأ إملائي. اختر الاسم الصحيح أو أرسله هنا`,
          });
          suggestions = match.suggestions;
        } else if (match.status === "not_found") {
          issues.push({
            field: "title",
            code: "not_found",
            message: `لم أجد أنمي بهذا الاسم ("${draft.title}") في AniList — أرسل الاسم الإنجليزي الصحيح أو رابط AniList، أو اضغط «اعتماد الاسم كما كتبته»`,
          });
        } else if (match.status === "exact" && match.matched) {
          matchedCandidate = match.matched;
        }
      }
    } else {
      const match = evaluateTitleMatch(draft.title, existingCandidates, {
        section: draft.section,
        titleConfirmed: draft.titleConfirmed,
      });
      if (match.status === "suggest") {
        issues.push({
          field: "title",
          code: "suggest",
          message: `الاسم ("${draft.title}") قريب جداً من عمل موجود مسبقاً — هل تقصد ربطه به لتجنب التكرار؟`,
        });
        suggestions = match.suggestions;
      } else if (match.status === "exact" && match.matched) {
        matchedCandidate = match.matched;
      }
    }
  }

  const extCheckSections: TgMediaSection[] = ["cartoon", "cartoon2", "dubbed", "aw_animation", "spacetoon", "animation", "manga", "manhwa"];
  if (issues.length === 0 && kind === "manga_chapter" && !draft.duplicateAction) {
    const tgChDup = await findExistingTelegramChapterDuplicate(draft, matchedCandidate, ctx?.channelId, ctx?.messageId);
    if (tgChDup) {
      issues.push({
        field: "duplicate",
        code: "duplicate_tg",
        message: `هذا الفصل مرفوع مسبقاً في قناتك! (${tgChDup.title} · الفصل ${tgChDup.chapterLabel})`,
      });
    } else {
      const ext = await checkExternalCatalogDuplicate(draft);
      if (ext.posterUrl && !draft.externalPosterUrl) draft.externalPosterUrl = ext.posterUrl;
      if (ext.existsInSource) {
        issues.push({
          field: "duplicate",
          code: "duplicate_source",
          message: `العمل "${ext.matchedTitle || draft.title}" موجود مسبقاً في قسم «${ext.sourceLabel}»، والفصل رقم ${formatChapterLabel(draft.episode ?? 0)} موجود بالفعل هناك!`,
        });
      }
    }
  } else if (issues.length === 0 && kind === "episode" && !draft.duplicateAction) {
    const tgDup = await findExistingTelegramDuplicate(draft, matchedCandidate, ctx?.channelId, ctx?.messageId);
    if (tgDup) {
      issues.push({
        field: "duplicate",
        code: "duplicate_tg",
        message: `هذه الحلقة مرفوعة مسبقاً في قناتك! (${tgDup.title} · الموسم ${tgDup.season} · الحلقة ${tgDup.episode} · ${tgDup.quality})`,
      });
    } else if (extCheckSections.includes(draft.section)) {
      const ext = await checkExternalCatalogDuplicate(draft);
      if (ext.posterUrl && !draft.externalPosterUrl) {
        draft.externalPosterUrl = ext.posterUrl;
      }
      if (ext.existsInSource) {
        issues.push({
          field: "duplicate",
          code: "duplicate_source",
          message: `العمل "${ext.matchedTitle || draft.title}" موجود مسبقاً في قسم «${ext.sourceLabel}»، والحلقة رقم ${draft.episode} موجودة بالفعل هناك!`,
        });
      }
    }
  } else if (issues.length === 0 && (kind === "episode" || kind === "manga_chapter") && !draft.externalPosterUrl && extCheckSections.includes(draft.section)) {
    const ext = await checkExternalCatalogDuplicate(draft);
    if (ext.posterUrl) draft.externalPosterUrl = ext.posterUrl;
  }

  return {
    isValid: issues.length === 0,
    issues,
    suggestions,
    matchedCandidate,
  };
}

async function upsertPendingUpload(
  media: MediaPayload,
  draft: ParsedChannelCaption,
  issues: ValidationIssue[],
  suggestions: TitleSuggestion[]
): Promise<TgPendingRow> {
  await ensureTelegramStorageSchema();
  const r = await pool.query<TgPendingRow>(
    `INSERT INTO telegram_media_pending
      (channel_id, message_id, kind, file_id, file_unique_id, file_name, mime_type, file_size, duration, width, height, caption_raw, parsed_json, issues_json, suggestions_json, media_group_id, status)
     VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,'pending')
     ON CONFLICT (channel_id, message_id) DO UPDATE SET
       kind = EXCLUDED.kind,
       file_id = EXCLUDED.file_id,
       file_unique_id = EXCLUDED.file_unique_id,
       file_name = EXCLUDED.file_name,
       mime_type = EXCLUDED.mime_type,
       file_size = EXCLUDED.file_size,
       duration = EXCLUDED.duration,
       width = EXCLUDED.width,
       height = EXCLUDED.height,
       caption_raw = EXCLUDED.caption_raw,
       parsed_json = EXCLUDED.parsed_json,
       issues_json = EXCLUDED.issues_json,
       suggestions_json = EXCLUDED.suggestions_json,
       media_group_id = COALESCE(EXCLUDED.media_group_id, telegram_media_pending.media_group_id),
       status = 'pending',
       updated_at = NOW()
     RETURNING *`,
    [
      media.channelId,
      media.messageId,
      media.kind,
      media.fileId,
      media.fileUniqueId,
      media.fileName || null,
      media.mimeType,
      media.fileSize,
      media.duration,
      media.width,
      media.height,
      media.captionRaw || null,
      JSON.stringify(draft),
      JSON.stringify(issues),
      JSON.stringify(suggestions),
      media.mediaGroupId || null,
    ]
  );
  return r.rows[0];
}

const MANGA_ZIP_CACHE_DIR = "/tmp/tg-manga-cache";
interface AlbumPhotoEntry {
  fileId: string;
  messageId: number;
  width: number;
  height: number;
}
const _albumPhotoBuffer = new Map<string, { photos: AlbumPhotoEntry[]; ts: number }>();

function trackAlbumPhoto(channelId: string, mediaGroupId: string, photo: AlbumPhotoEntry): AlbumPhotoEntry[] {
  const key = `${channelId}:${mediaGroupId}`;
  const now = Date.now();
  if (_albumPhotoBuffer.size > 200) {
    for (const [k, v] of _albumPhotoBuffer) {
      if (now - v.ts > 15 * 60 * 1000) _albumPhotoBuffer.delete(k);
    }
  }
  const bucket = _albumPhotoBuffer.get(key) || { photos: [], ts: now };
  bucket.ts = now;
  if (!bucket.photos.some((p) => p.messageId === photo.messageId)) {
    bucket.photos.push(photo);
    bucket.photos.sort((a, b) => a.messageId - b.messageId);
  }
  _albumPhotoBuffer.set(key, bucket);
  return bucket.photos;
}

async function downloadZipChapterBuffer(channelId: string, messageId: number, fileId: string | null, fileSize: number): Promise<Buffer | null> {
  if (fileId && (!fileSize || fileSize <= 19 * 1024 * 1024)) {
    const small = await downloadTelegramSmallFile(fileId).catch(() => null);
    if (small?.buffer && small.buffer.length > 22) return small.buffer;
  }
  try {
    const client = await getMtprotoClient();
    const msg = await getChannelMessageMedia(channelId, messageId);
    if (!msg) return null;
    const dl = await client.downloadMedia(msg, {});
    if (Buffer.isBuffer(dl) && dl.length > 22) return dl;
    if (dl instanceof Uint8Array && dl.length > 22) return Buffer.from(dl);
  } catch (err: any) {
    console.error("[tg-manga] MTProto ZIP download failed:", err?.message || err);
  }
  return null;
}

function getCachedZipPath(chapterId: number): string {
  return path.join(MANGA_ZIP_CACHE_DIR, `ch_${chapterId}.zip`);
}

function saveZipToCache(chapterId: number, buf: Buffer): void {
  try {
    if (!fs.existsSync(MANGA_ZIP_CACHE_DIR)) fs.mkdirSync(MANGA_ZIP_CACHE_DIR, { recursive: true });
    const files = fs.readdirSync(MANGA_ZIP_CACHE_DIR).filter((f) => f.endsWith(".zip"));
    if (files.length >= 40) {
      const sorted = files
        .map((f) => {
          const full = path.join(MANGA_ZIP_CACHE_DIR, f);
          return { full, mtime: fs.statSync(full).mtimeMs };
        })
        .sort((a, b) => a.mtime - b.mtime);
      for (const old of sorted.slice(0, 10)) {
        try { fs.unlinkSync(old.full); } catch {}
      }
    }
    fs.writeFileSync(getCachedZipPath(chapterId), buf);
  } catch {}
}

async function publishValidatedDraft(
  media: MediaPayload,
  draft: ParsedChannelCaption,
  matchedCandidate: TitleSuggestion | null,
  isEdit = false
): Promise<ChannelIngestResult> {
  const effectiveAnilistId = draft.anilistId || matchedCandidate?.anilistId || null;
  const effectiveTitleEn = draft.titleEn || matchedCandidate?.titleEn || matchedCandidate?.titleRomaji || null;
  const effectivePosterUrl = matchedCandidate?.posterUrl || draft.externalPosterUrl || null;
  const effectiveSynopsis = draft.synopsis || matchedCandidate?.synopsis || null;
  const effectiveGenres = (draft.genres && draft.genres.length > 0) ? draft.genres : (matchedCandidate?.genres || []);
  const effectiveYear = draft.year || matchedCandidate?.year || null;

  if (media.kind === "series_card") {
    const series = await findOrUpsertSeries({
      section: draft.section,
      title: draft.title,
      titleEn: effectiveTitleEn,
      anilistId: effectiveAnilistId,
      tmdbId: draft.tmdbId,
      posterUrl: effectivePosterUrl,
      posterFileId: media.fileId,
      posterMessageId: media.messageId,
      synopsis: effectiveSynopsis,
      genres: effectiveGenres,
      year: effectiveYear,
      skipAniListLookup: Boolean(draft.titleConfirmed && !effectiveAnilistId),
    });
    await pool.query(
      `UPDATE telegram_media_pending SET status = 'published', updated_at = NOW() WHERE channel_id = $1 AND message_id = $2`,
      [media.channelId, media.messageId]
    ).catch(() => {});
    return {
      handled: true,
      kind: "series_card",
      series,
      summary: (() => {
        const secInfo = getSectionDisplayInfo(series.section);
        return `🖼️ تم ${isEdit ? "تحديث" : "حفظ"} بطاقة وبوستر العمل: <b>${series.title}</b>\n📂 القسم: <b>${secInfo.labelAr}</b>${series.anilist_id ? ` · AniList #${series.anilist_id}` : ""}\n📍 <b>مكان الظهور في التطبيق:</b> ${secInfo.appLocationAr}`;
      })(),
    };
  }

  if (media.kind === "manga_chapter") {
    const chNum = Number(draft.episode ?? 1);
    const chLabel = formatChapterLabel(chNum);
    const isZip = /zip|cbz/i.test(media.mimeType) || /\.(zip|cbz)$/i.test(media.fileName || "");
    const sourceType: "zip" | "photos" = isZip ? "zip" : "photos";

    let pagesMeta: any[] = [];
    let zipBufForCache: Buffer | null = null;
    if (sourceType === "zip") {
      const zipBuf = await downloadZipChapterBuffer(media.channelId, media.messageId, media.fileId, media.fileSize);
      if (!zipBuf) {
        return {
          handled: true,
          kind: "error",
          summary: `❌ تعذر تحميل ملف الفصل (${media.fileName || "chapter.zip"}) من تليجرام — أعد رفعه أو تأكد من حجمه.`,
        };
      }
      let entries;
      try {
        entries = listZipImageEntries(zipBuf);
      } catch (err: any) {
        return {
          handled: true,
          kind: "error",
          summary: `❌ ملف الأرشيف (${media.fileName || "chapter.zip"}) غير صالح أو تالف (${err?.message || "invalid_zip"}). يُرجى ضغط الصور بصيغة ZIP أو CBZ عادية.`,
        };
      }
      if (!entries.length) {
        return {
          handled: true,
          kind: "error",
          summary: `⚠️ ملف الأرشيف (${media.fileName || "chapter.zip"}) لا يحتوي على أي صور (JPG/PNG/WEBP).`,
        };
      }
      pagesMeta = entries.map((e) => ({ name: e.name, mime: e.mime }));
      zipBufForCache = zipBuf;
    } else {
      const basePhoto: AlbumPhotoEntry = {
        fileId: media.fileId,
        messageId: media.messageId,
        width: media.width || 0,
        height: media.height || 0,
      };
      pagesMeta = media.mediaGroupId
        ? trackAlbumPhoto(media.channelId, media.mediaGroupId, basePhoto)
        : [basePhoto];
    }

    const series = await findOrUpsertSeries({
      section: draft.section,
      title: draft.title,
      titleEn: effectiveTitleEn,
      anilistId: effectiveAnilistId,
      tmdbId: draft.tmdbId,
      posterUrl: effectivePosterUrl,
      synopsis: effectiveSynopsis,
      genres: effectiveGenres,
      year: effectiveYear,
      skipAniListLookup: Boolean(draft.titleConfirmed && !effectiveAnilistId),
    });

    if (draft.duplicateAction === "replace") {
      await pool.query(
        `UPDATE telegram_media_chapters
            SET is_active = FALSE, updated_at = NOW()
          WHERE series_id = $1
            AND chapter_number = $2
            AND is_active = TRUE
            AND NOT (channel_id = $3 AND message_id = $4)`,
        [series.id, chNum, media.channelId, media.messageId]
      ).catch(() => {});
    }

    const chRes = await pool.query<TgChapterRow>(
      `INSERT INTO telegram_media_chapters
        (series_id, channel_id, message_id, media_group_id, chapter_number, chapter_label, source_type, file_id, file_unique_id, file_name, file_size, pages_json, pages_count, caption_raw, is_active)
       VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,TRUE)
       ON CONFLICT (channel_id, message_id) DO UPDATE SET
         series_id = EXCLUDED.series_id,
         media_group_id = COALESCE(EXCLUDED.media_group_id, telegram_media_chapters.media_group_id),
         chapter_number = EXCLUDED.chapter_number,
         chapter_label = EXCLUDED.chapter_label,
         source_type = EXCLUDED.source_type,
         file_id = EXCLUDED.file_id,
         file_unique_id = EXCLUDED.file_unique_id,
         file_name = EXCLUDED.file_name,
         file_size = EXCLUDED.file_size,
         pages_json = EXCLUDED.pages_json,
         pages_count = EXCLUDED.pages_count,
         caption_raw = EXCLUDED.caption_raw,
         is_active = TRUE,
         updated_at = NOW()
       RETURNING *`,
      [
        series.id,
        media.channelId,
        media.messageId,
        media.mediaGroupId || null,
        chNum,
        chLabel,
        sourceType,
        media.fileId || null,
        media.fileUniqueId || null,
        media.fileName || null,
        media.fileSize || 0,
        JSON.stringify(pagesMeta),
        pagesMeta.length,
        media.captionRaw || null,
      ]
    );
    const chRow = chRes.rows[0];
    if (zipBufForCache && chRow?.id) {
      saveZipToCache(chRow.id, zipBufForCache);
    }
    await pool.query(
      `UPDATE telegram_media_pending SET status = 'published', updated_at = NOW() WHERE channel_id = $1 AND message_id = $2`,
      [media.channelId, media.messageId]
    ).catch(() => {});

    const secInfo = getSectionDisplayInfo(series.section);
    const albumNote = sourceType === "photos" && media.mediaGroupId
      ? "\n📸 <i>أي صور إضافية في نفس الألبوم ستُضاف تلقائياً للفصل بالترتيب.</i>"
      : "";
    return {
      handled: true,
      kind: "chapter",
      chapterId: chRow.id,
      series,
      chapter: chRow,
      summary:
        `✅ تم ${isEdit ? "تحديث" : "نشر"} الفصل بنجاح!\n` +
        `📖 <b>${series.title}</b>${series.anilist_id ? ` (AniList #${series.anilist_id})` : ""}\n` +
        `📂 القسم: <b>${secInfo.labelAr}</b> · الفصل: <b>${chRow.chapter_label}</b> · الصفحات: <b>${chRow.pages_count}</b> (${sourceType === "zip" ? "أرشيف ZIP/CBZ" : "صور تليجرام"})\n` +
        `📍 <b>مكان الظهور في التطبيق:</b> ${secInfo.appLocationAr}` +
        albumNote,
    };
  }

  const epNum = draft.section === "film" ? (draft.episode || 1) : Number(draft.episode || 1);
  const series = await findOrUpsertSeries({
    section: draft.section,
    title: draft.title,
    titleEn: effectiveTitleEn,
    anilistId: effectiveAnilistId,
    tmdbId: draft.tmdbId,
    posterUrl: effectivePosterUrl,
    synopsis: effectiveSynopsis,
    genres: effectiveGenres,
    year: effectiveYear,
    skipAniListLookup: Boolean(draft.titleConfirmed && !effectiveAnilistId),
  });

  if (draft.duplicateAction === "replace") {
    await pool.query(
      `UPDATE telegram_media_episodes
          SET is_active = FALSE, updated_at = NOW()
        WHERE series_id = $1
          AND season_number = $2
          AND episode_number = $3
          AND audio_lang = $4
          AND is_active = TRUE
          AND NOT (channel_id = $5 AND message_id = $6)`,
      [series.id, draft.season, epNum, draft.audioLang, media.channelId, media.messageId]
    ).catch(() => {});
  }

  const epRes = await pool.query<TgEpisodeRow>(
    `INSERT INTO telegram_media_episodes
      (series_id, channel_id, message_id, file_id, file_unique_id, file_name, mime_type, file_size, duration, width, height, season_number, episode_number, quality, audio_lang, caption_raw, is_active)
     VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,TRUE)
     ON CONFLICT (channel_id, message_id) DO UPDATE SET
       series_id = EXCLUDED.series_id,
       file_id = EXCLUDED.file_id,
       file_unique_id = EXCLUDED.file_unique_id,
       file_name = EXCLUDED.file_name,
       mime_type = EXCLUDED.mime_type,
       file_size = EXCLUDED.file_size,
       duration = EXCLUDED.duration,
       width = EXCLUDED.width,
       height = EXCLUDED.height,
       season_number = EXCLUDED.season_number,
       episode_number = EXCLUDED.episode_number,
       quality = EXCLUDED.quality,
       audio_lang = EXCLUDED.audio_lang,
       caption_raw = EXCLUDED.caption_raw,
       is_active = TRUE,
       updated_at = NOW()
     RETURNING *`,
    [
      series.id,
      media.channelId,
      media.messageId,
      media.fileId,
      media.fileUniqueId,
      media.fileName || null,
      media.mimeType,
      media.fileSize,
      media.duration,
      media.width,
      media.height,
      draft.season,
      epNum,
      draft.quality,
      draft.audioLang,
      media.captionRaw || null,
    ]
  );

  await pool.query(
    `UPDATE telegram_media_pending SET status = 'published', updated_at = NOW() WHERE channel_id = $1 AND message_id = $2`,
    [media.channelId, media.messageId]
  ).catch(() => {});

  const epRow = epRes.rows[0];
  const sizeMb = media.fileSize > 0 ? `${(media.fileSize / (1024 * 1024)).toFixed(1)} MB` : "—";
  const langAr = draft.audioLang === "dub_en" ? "دبلجة إنجليزية 🇬🇧" : draft.audioLang === "dub_ar" ? "مدبلج عربي" : "ياباني مترجم 🇯🇵";
  const warning = /matroska|mkv/i.test(media.mimeType) || /\.mkv$/i.test(media.fileName)
    ? "\n⚠️ ملاحظة: الملف بصيغة MKV — قد لا يعمل على بعض المتصفحات، يُفضّل MP4 لأفضل توافق."
    : "";

  return {
    handled: true,
    kind: "episode",
    episodeId: epRow.id,
    series,
    episode: epRow,
    warning: warning || undefined,
    summary: (() => {
      const secInfo = getSectionDisplayInfo(series.section, draft.audioLang);
      return (
        `✅ تم ${isEdit ? "تحديث" : "نشر"} الحلقة بنجاح!\n` +
        `🎬 <b>${series.title}</b>${series.anilist_id ? ` (AniList #${series.anilist_id})` : ""}\n` +
        `📂 القسم: <b>${secInfo.labelAr}</b> · الموسم ${epRow.season_number} · الحلقة <b>${epRow.episode_number}</b>\n` +
        `🎞️ الجودة: <b>${epRow.quality}</b> · الصوت: <b>${langAr}</b> · الحجم: ${sizeMb}\n` +
        `📍 <b>مكان الظهور في التطبيق:</b> ${secInfo.appLocationAr}` +
        warning
      );
    })(),
  };
}

export async function handleStorageChannelPost(post: any, isEdit = false): Promise<ChannelIngestResult> {
  if (!post || !isStorageChannel(post.chat?.id)) {
    return { handled: false, kind: "ignored" };
  }
  await ensureTelegramStorageSchema();
  const channelId = String(post.chat.id);
  const messageId = Number(post.message_id);
  const caption = String(post.caption || post.text || "").trim();

  // Case 1: Subtitle reply (.srt / .vtt) replied to an existing episode message
  const doc = post.document;
  const docName = String(doc?.file_name || "");
  const isSubFile = Boolean(doc && (/\.(srt|vtt)$/i.test(docName) || /subrip|vtt/i.test(String(doc.mime_type || ""))));
  if (isSubFile && post.reply_to_message?.message_id) {
    const parentMsgId = Number(post.reply_to_message.message_id);
    const upd = await pool.query<TgEpisodeRow>(
      `UPDATE telegram_media_episodes
         SET subtitle_message_id = $1,
             subtitle_file_id = $2,
             subtitle_mime = $3,
             updated_at = NOW()
       WHERE channel_id = $4 AND message_id = $5
       RETURNING *`,
      [messageId, String(doc.file_id), String(doc.mime_type || "text/plain"), channelId, parentMsgId]
    );
    if (upd.rows[0]) {
      return {
        handled: true,
        kind: "subtitle",
        episodeId: upd.rows[0].id,
        episode: upd.rows[0],
        summary: `✅ تم ربط ملف الترجمة (${docName || "subtitle"}) بالحلقة رقم ${upd.rows[0].episode_number} (رسالة #${parentMsgId}).`,
      };
    }
    return {
      handled: true,
      kind: "error",
      summary: `⚠️ لم أجد حلقة مفهرسة للرسالة #${parentMsgId} لربط ملف الترجمة بها.`,
    };
  }

  // Case 2A: Photo upload (Series poster OR Manga/Manhwa chapter photo/album)
  if (Array.isArray(post.photo) && post.photo.length > 0) {
    const bestPhoto = post.photo[post.photo.length - 1];
    const mediaGroupId = post.media_group_id ? String(post.media_group_id) : null;
    const photoEntry: AlbumPhotoEntry = {
      fileId: String(bestPhoto.file_id),
      messageId,
      width: Number(bestPhoto.width || 0),
      height: Number(bestPhoto.height || 0),
    };

    if (mediaGroupId) {
      trackAlbumPhoto(channelId, mediaGroupId, photoEntry);
    }

    if (!caption && mediaGroupId) {
      const existingCh = await pool.query<TgChapterRow>(
        `SELECT * FROM telegram_media_chapters
          WHERE channel_id = $1 AND media_group_id = $2 AND source_type = 'photos' AND is_active = TRUE
          ORDER BY id DESC LIMIT 1`,
        [channelId, mediaGroupId]
      );
      if (existingCh.rows[0]) {
        const ch = existingCh.rows[0];
        let pages: AlbumPhotoEntry[] = [];
        try { pages = JSON.parse(ch.pages_json || "[]"); } catch {}
        if (!pages.some((p) => p.messageId === messageId)) {
          pages.push(photoEntry);
          pages.sort((a, b) => a.messageId - b.messageId);
          await pool.query(
            `UPDATE telegram_media_chapters SET pages_json = $1, pages_count = $2, updated_at = NOW() WHERE id = $3`,
            [JSON.stringify(pages), pages.length, ch.id]
          );
        }
      }
      return { handled: false, kind: "ignored" };
    }

    if (caption) {
      const parsed = parseChannelCaption(caption);
      const isPhotoChapter = Boolean(
        !parsed.isSeriesCard &&
        isMangaSection(parsed.section) &&
        (parsed.episode != null || Boolean(mediaGroupId))
      );
      const uploadKind: TgUploadKind = isPhotoChapter ? "manga_chapter" : "series_card";
      const media: MediaPayload = {
        channelId,
        messageId,
        kind: uploadKind,
        fileId: String(bestPhoto.file_id),
        fileUniqueId: bestPhoto.file_unique_id ? String(bestPhoto.file_unique_id) : null,
        fileName: "",
        mimeType: "image/jpeg",
        fileSize: Number(bestPhoto.file_size || 0),
        duration: 0,
        width: Number(bestPhoto.width || 0),
        height: Number(bestPhoto.height || 0),
        captionRaw: caption,
        mediaGroupId,
      };
      const check = await validateAndEvaluateDraft(parsed, uploadKind, { channelId, messageId });
      if (!check.isValid) {
        const pend = await upsertPendingUpload(media, parsed, check.issues, check.suggestions);
        return {
          handled: true,
          kind: "needs_fix",
          pendingId: pend.id,
          summary: formatPendingReminderMessage(parsed, check.issues, check.suggestions, { kind: uploadKind }),
          replyMarkup: buildPendingInlineKeyboard(pend.id, check.issues, check.suggestions, parsed, { kind: uploadKind }),
        };
      }
      return publishValidatedDraft(media, parsed, check.matchedCandidate, isEdit);
    }
    return { handled: false, kind: "ignored" };
  }

  // Case 2B: Manga / Manhwa Chapter Archive (.zip / .cbz)
  const isArchiveDoc = Boolean(
    doc && (
      /\.(zip|cbz)$/i.test(docName) ||
      /^(application\/zip|application\/x-zip-compressed|application\/x-cbz|application\/vnd\.comicbook\+zip)$/i.test(String(doc.mime_type || ""))
    )
  );
  if (isArchiveDoc && doc) {
    const parsed = parseChannelCaption(caption, docName);
    const media: MediaPayload = {
      channelId,
      messageId,
      kind: "manga_chapter",
      fileId: String(doc.file_id),
      fileUniqueId: doc.file_unique_id ? String(doc.file_unique_id) : null,
      fileName: docName,
      mimeType: String(doc.mime_type || "application/zip"),
      fileSize: Number(doc.file_size || 0),
      duration: 0,
      width: 0,
      height: 0,
      captionRaw: caption,
    };
    const check = await validateAndEvaluateDraft(parsed, "manga_chapter", { channelId, messageId });
    if (!check.isValid) {
      const pend = await upsertPendingUpload(media, parsed, check.issues, check.suggestions);
      return {
        handled: true,
        kind: "needs_fix",
        pendingId: pend.id,
        summary: formatPendingReminderMessage(parsed, check.issues, check.suggestions, { kind: "manga_chapter" }),
        replyMarkup: buildPendingInlineKeyboard(pend.id, check.issues, check.suggestions, parsed, { kind: "manga_chapter" }),
      };
    }
    return publishValidatedDraft(media, parsed, check.matchedCandidate, isEdit);
  }

  // Case 3: Video or Video Document upload
  const video = post.video;
  const isVideoDoc = Boolean(
    doc && (
      String(doc.mime_type || "").startsWith("video/") ||
      /\.(mp4|m4v|mkv|webm|mov)$/i.test(docName)
    )
  );
  if (!video && !isVideoDoc) {
    return { handled: false, kind: "ignored" };
  }

  const rawMedia = video || doc;
  const fileName = String(rawMedia.file_name || "");
  const mimeType = String(rawMedia.mime_type || "video/mp4");
  const fileSize = Number(rawMedia.file_size || 0);
  const duration = Number(rawMedia.duration || 0);
  const width = Number(rawMedia.width || 0);
  const height = Number(rawMedia.height || 0);

  const parsed = parseChannelCaption(caption, fileName, { width, height });
  const media: MediaPayload = {
    channelId,
    messageId,
    kind: "episode",
    fileId: String(rawMedia.file_id),
    fileUniqueId: rawMedia.file_unique_id ? String(rawMedia.file_unique_id) : null,
    fileName,
    mimeType,
    fileSize,
    duration,
    width,
    height,
    captionRaw: caption,
  };

  const check = await validateAndEvaluateDraft(parsed, "episode", { channelId, messageId });
  if (!check.isValid) {
    const pend = await upsertPendingUpload(media, parsed, check.issues, check.suggestions);
    return {
      handled: true,
      kind: "needs_fix",
      pendingId: pend.id,
      summary: formatPendingReminderMessage(parsed, check.issues, check.suggestions, { kind: "episode" }),
      replyMarkup: buildPendingInlineKeyboard(pend.id, check.issues, check.suggestions, parsed, { kind: "episode" }),
    };
  }

  return publishValidatedDraft(media, parsed, check.matchedCandidate, isEdit);
}

/* ── Admin Interactive Pending Fix Helpers ─────────────────────────────── */

function pendingRowToMedia(row: TgPendingRow): MediaPayload {
  return {
    channelId: row.channel_id,
    messageId: row.message_id,
    kind: row.kind,
    fileId: row.file_id,
    fileUniqueId: row.file_unique_id,
    fileName: row.file_name || "",
    mimeType: row.mime_type || "video/mp4",
    fileSize: Number(row.file_size || 0),
    duration: Number(row.duration || 0),
    width: Number(row.width || 0),
    height: Number(row.height || 0),
    captionRaw: row.caption_raw || "",
    mediaGroupId: row.media_group_id || null,
  };
}

export async function setPendingAdminPromptMsgId(pendingId: number, promptMsgId: number): Promise<void> {
  if (!pendingId || !promptMsgId) return;
  await ensureTelegramStorageSchema();
  await pool.query(
    `UPDATE telegram_media_pending SET admin_prompt_msg_id = $1, updated_at = NOW() WHERE id = $2`,
    [promptMsgId, pendingId]
  ).catch(() => {});
}

export async function getPendingCount(): Promise<number> {
  await ensureTelegramStorageSchema();
  const r = await pool.query<{ cnt: string }>(`SELECT COUNT(*)::text AS cnt FROM telegram_media_pending WHERE status = 'pending'`);
  return Number.parseInt(r.rows[0]?.cnt || "0", 10) || 0;
}

async function findTargetPendingRow(replyToMsgId?: number): Promise<TgPendingRow | null> {
  await ensureTelegramStorageSchema();
  if (replyToMsgId) {
    const byReply = await pool.query<TgPendingRow>(
      `SELECT * FROM telegram_media_pending WHERE status = 'pending' AND admin_prompt_msg_id = $1 ORDER BY updated_at DESC LIMIT 1`,
      [replyToMsgId]
    );
    if (byReply.rows[0]) return byReply.rows[0];
  }
  const latest = await pool.query<TgPendingRow>(
    `SELECT * FROM telegram_media_pending WHERE status = 'pending' AND updated_at > NOW() - INTERVAL '24 hours' ORDER BY updated_at DESC LIMIT 1`
  );
  return latest.rows[0] || null;
}

export async function hasPendingAdminUpload(replyToMsgId?: number): Promise<boolean> {
  const row = await findTargetPendingRow(replyToMsgId);
  return Boolean(row);
}

async function finalizeOrRePromptPending(row: TgPendingRow, nextDraft: ParsedChannelCaption): Promise<ChannelIngestResult> {
  const media = pendingRowToMedia(row);
  const check = await validateAndEvaluateDraft(nextDraft, row.kind, { channelId: row.channel_id, messageId: row.message_id });
  if (!check.isValid) {
    const updated = await pool.query<TgPendingRow>(
      `UPDATE telegram_media_pending
          SET parsed_json = $1,
              issues_json = $2,
              suggestions_json = $3,
              updated_at = NOW()
        WHERE id = $4
        RETURNING *`,
      [JSON.stringify(nextDraft), JSON.stringify(check.issues), JSON.stringify(check.suggestions), row.id]
    );
    const p = updated.rows[0] || row;
    return {
      handled: true,
      kind: "needs_fix",
      pendingId: p.id,
      summary: formatPendingReminderMessage(nextDraft, check.issues, check.suggestions, { kind: row.kind }),
      replyMarkup: buildPendingInlineKeyboard(p.id, check.issues, check.suggestions, nextDraft, { kind: row.kind }),
    };
  }
  const res = await publishValidatedDraft(media, nextDraft, check.matchedCandidate, false);
  res.remainingPendingCount = await getPendingCount();
  return res;
}

export async function applyAdminReplyToPending(replyText: string, replyToMsgId?: number): Promise<ChannelIngestResult> {
  const row = await findTargetPendingRow(replyToMsgId);
  if (!row) return { handled: false, kind: "ignored" };
  let draft: ParsedChannelCaption;
  let issues: ValidationIssue[] = [];
  try { draft = JSON.parse(row.parsed_json); } catch { draft = parseChannelCaption(row.caption_raw || ""); }
  try { issues = JSON.parse(row.issues_json || "[]"); } catch {}

  const nextDraft = mergeAdminFixIntoDraft(draft, replyText, issues, { height: row.height, width: row.width });
  return finalizeOrRePromptPending(row, nextDraft);
}

export async function getLatestPendingSummary(): Promise<ChannelIngestResult> {
  const row = await findTargetPendingRow();
  if (!row) {
    return {
      handled: true,
      kind: "ignored",
      summary: "✅ لا توجد أي حلقات معلّقة حالياً — كل ما رفعته مكتمل ومنشور.",
    };
  }
  const draft: ParsedChannelCaption = JSON.parse(row.parsed_json);
  const issues: ValidationIssue[] = JSON.parse(row.issues_json || "[]");
  const suggestions: TitleSuggestion[] = JSON.parse(row.suggestions_json || "[]");
  return {
    handled: true,
    kind: "needs_fix",
    pendingId: row.id,
    summary: formatPendingReminderMessage(draft, issues, suggestions, { kind: row.kind }),
    replyMarkup: buildPendingInlineKeyboard(row.id, issues, suggestions, draft, { kind: row.kind }),
  };
}

export async function cancelLatestPendingUpload(): Promise<{ ok: boolean; pendingId?: number }> {
  const row = await findTargetPendingRow();
  if (!row) return { ok: false };
  await pool.query(`UPDATE telegram_media_pending SET status = 'cancelled', updated_at = NOW() WHERE id = $1`, [row.id]);
  return { ok: true, pendingId: row.id };
}

export async function applyAdminCallbackToPending(
  callbackData: string
): Promise<{ callbackToast: string; result?: ChannelIngestResult }> {
  await ensureTelegramStorageSchema();
  const parts = String(callbackData || "").split(":");
  const action = parts[0];
  const pendingId = Number.parseInt(parts[1] || "", 10);
  if (!Number.isFinite(pendingId) || pendingId <= 0) {
    return { callbackToast: "طلب غير صالح" };
  }

  const r = await pool.query<TgPendingRow>(`SELECT * FROM telegram_media_pending WHERE id = $1 LIMIT 1`, [pendingId]);
  const row = r.rows[0];
  if (!row) return { callbackToast: "هذه الحلقة غير موجودة" };
  if (row.status !== "pending") {
    return { callbackToast: row.status === "published" ? "تم نشرها مسبقاً ✅" : "تم إلغاؤها مسبقاً" };
  }

  if (action === "tg_pend_cancel") {
    await pool.query(`UPDATE telegram_media_pending SET status = 'cancelled', updated_at = NOW() WHERE id = $1`, [row.id]);
    const remaining = await getPendingCount();
    return {
      callbackToast: "❌ تم إلغاء الحلقة",
      result: {
        handled: true,
        kind: "cancelled",
        summary: `❌ تم إلغاء الحلقة المعلّقة (رسالة #${row.message_id}) — لن يتم نشرها في التطبيق.${remaining > 0 ? `\n📌 لا يزال لديك ${remaining} حلقة معلّقة (أرسل /معلق لعرضها).` : ""}`,
        remainingPendingCount: remaining,
      },
    };
  }

  const draft: ParsedChannelCaption = JSON.parse(row.parsed_json);
  const suggestions: TitleSuggestion[] = JSON.parse(row.suggestions_json || "[]");
  const clearField = (f: string) => {
    draft.emptyFields = (draft.emptyFields || []).filter((x) => x !== f);
    draft.invalidFields = (draft.invalidFields || []).filter((x) => x.field !== f);
  };

  if (action === "tg_pend_pick") {
    const idx = Number.parseInt(parts[2] || "", 10);
    const chosen = Number.isFinite(idx) ? suggestions[idx] : null;
    if (!chosen) return { callbackToast: "الاقتراح لم يعد متاحاً" };
    draft.title = chosen.titleEn || chosen.title;
    draft.titleEn = chosen.titleEn || chosen.titleRomaji || draft.titleEn;
    draft.normalizedTitle = normalizeMediaTitle(draft.title);
    draft.slug = slugifyMediaTitle(draft.titleEn || draft.title);
    if (chosen.anilistId) draft.anilistId = chosen.anilistId;
    draft.titleConfirmed = true;
    clearField("title");
    clearField("anilistId");
    const res = await finalizeOrRePromptPending(row, draft);
    return { callbackToast: `✅ تم اختيار: ${draft.title.slice(0, 30)}`, result: res };
  }

  if (action === "tg_pend_keep_title") {
    draft.titleConfirmed = true;
    clearField("title");
    const res = await finalizeOrRePromptPending(row, draft);
    return { callbackToast: "✔️ تم اعتماد الاسم كما كتبته", result: res };
  }

  if (action === "tg_pend_replace") {
    draft.duplicateAction = "replace";
    const res = await finalizeOrRePromptPending(row, draft);
    return { callbackToast: "🔄 جاري استبدال الحلقة القديمة...", result: res };
  }

  if (action === "tg_pend_keep_dup") {
    draft.duplicateAction = "keep_both";
    const res = await finalizeOrRePromptPending(row, draft);
    return { callbackToast: "➕ جاري نشرها كنسخة إضافية...", result: res };
  }

  if (action === "tg_pend_ep_movie") {
    draft.episode = 1;
    clearField("episode");
    const res = await finalizeOrRePromptPending(row, draft);
    return { callbackToast: "🎬 تم اعتماده كفيلم أنيميشن", result: res };
  }

  if (action === "tg_pend_sec") {
    const sec = parts[2] as TgMediaSection;
    const lang = (parts[3] || "") as TgAudioLang;
    if (!["anime", "animation", "aw_animation", "spacetoon", "cartoon", "cartoon2", "dubbed", "film", "manga", "manhwa"].includes(sec)) {
      return { callbackToast: "قسم غير صالح" };
    }
    draft.section = sec;
    draft.explicitSection = true;
    draft.unknownTags = [];
    clearField("section");
    if (lang === "sub" || lang === "dub_en" || lang === "dub_ar") {
      draft.audioLang = lang;
      draft.explicitAudio = true;
      clearField("audioLang");
    } else if (!draft.explicitAudio) {
      draft.audioLang = normalizeAudioLang("", sec);
    }
    if (sec === "film" && draft.episode == null) {
      draft.episode = 1;
      clearField("episode");
    }
    const res = await finalizeOrRePromptPending(row, draft);
    return { callbackToast: `✅ تم تحديد القسم: ${sec}`, result: res };
  }

  if (action === "tg_pend_q") {
    const q = parts[2] || "720p";
    draft.quality = q;
    draft.qualityRank = qualityToRank(q);
    draft.explicitQuality = true;
    clearField("quality");
    const res = await finalizeOrRePromptPending(row, draft);
    return { callbackToast: `🎞️ تم تحديد الجودة: ${q}`, result: res };
  }

  if (action === "tg_pend_lang") {
    const lang = parts[2] as TgAudioLang;
    if (!["sub", "dub_en", "dub_ar"].includes(lang)) return { callbackToast: "لغة غير صالحة" };
    draft.audioLang = lang;
    draft.explicitAudio = true;
    clearField("audioLang");
    const res = await finalizeOrRePromptPending(row, draft);
    return { callbackToast: "✅ تم تحديد اللغة", result: res };
  }

  return { callbackToast: "تم" };
}

export async function softDeleteTelegramEpisode(episodeId: number): Promise<boolean> {
  await ensureTelegramStorageSchema();
  const r = await pool.query(
    `UPDATE telegram_media_episodes SET is_active = FALSE, updated_at = NOW() WHERE id = $1 RETURNING id`,
    [episodeId]
  );
  return (r.rowCount || 0) > 0;
}

export async function softDeleteTelegramChapter(chapterId: number): Promise<boolean> {
  await ensureTelegramStorageSchema();
  const r = await pool.query(
    `UPDATE telegram_media_chapters SET is_active = FALSE, updated_at = NOW() WHERE id = $1 RETURNING id`,
    [chapterId]
  );
  return (r.rowCount || 0) > 0;
}

export async function getTelegramChapterById(chapterId: number): Promise<TgChapterRow | null> {
  await ensureTelegramStorageSchema();
  const r = await pool.query<TgChapterRow>(
    `SELECT c.*, s.title AS series_title, s.section AS series_section
       FROM telegram_media_chapters c
       JOIN telegram_media_series s ON s.id = c.series_id
      WHERE c.id = $1 AND c.is_active = TRUE
      LIMIT 1`,
    [chapterId]
  );
  return r.rows[0] || null;
}

const _mangaPageMemCache = new Map<string, { buf: Buffer; mime: string; ts: number }>();

export async function getTelegramChapterPageBuffer(
  chapterId: number,
  pageIndexOneBased: number
): Promise<{ buffer: Buffer; mime: string } | null> {
  const idx = pageIndexOneBased - 1;
  if (!Number.isFinite(idx) || idx < 0) return null;
  const cacheKey = `${chapterId}:${idx}`;
  const memHit = _mangaPageMemCache.get(cacheKey);
  if (memHit && Date.now() - memHit.ts < 30 * 60 * 1000) {
    return { buffer: memHit.buf, mime: memHit.mime };
  }

  const ch = await getTelegramChapterById(chapterId);
  if (!ch) return null;

  let result: { buffer: Buffer; mime: string } | null = null;
  if (ch.source_type === "photos") {
    let pages: AlbumPhotoEntry[] = [];
    try { pages = JSON.parse(ch.pages_json || "[]"); } catch {}
    const page = pages[idx];
    if (!page?.fileId) return null;
    const dl = await downloadTelegramSmallFile(page.fileId);
    if (!dl) return null;
    const mime = /\.png$/i.test(dl.filePath) ? "image/png" : /\.webp$/i.test(dl.filePath) ? "image/webp" : "image/jpeg";
    result = { buffer: dl.buffer, mime };
  } else {
    const zipPath = getCachedZipPath(ch.id);
    let zipBuf: Buffer | null = null;
    if (fs.existsSync(zipPath)) {
      try { zipBuf = fs.readFileSync(zipPath); } catch {}
    }
    if (!zipBuf) {
      zipBuf = await downloadZipChapterBuffer(ch.channel_id, ch.message_id, ch.file_id, Number(ch.file_size || 0));
      if (zipBuf) saveZipToCache(ch.id, zipBuf);
    }
    if (!zipBuf) return null;
    const extracted = extractZipImageByIndex(zipBuf, idx);
    if (!extracted) return null;
    result = { buffer: extracted.data, mime: extracted.mime };
  }

  if (result) {
    if (_mangaPageMemCache.size >= 120) {
      const oldestKey = _mangaPageMemCache.keys().next().value;
      if (oldestKey) _mangaPageMemCache.delete(oldestKey);
    }
    _mangaPageMemCache.set(cacheKey, { buf: result.buffer, mime: result.mime, ts: Date.now() });
  }
  return result;
}

export async function getTelegramEpisodeById(episodeId: number): Promise<TgEpisodeRow | null> {
  await ensureTelegramStorageSchema();
  const r = await pool.query<TgEpisodeRow>(
    `SELECT e.*, s.title AS series_title, s.title_ar AS series_title_ar, s.title_en AS series_title_en,
            s.slug AS series_slug, s.section AS series_section, s.anilist_id AS series_anilist_id,
            s.tmdb_id AS series_tmdb_id, s.poster_url AS series_poster_url, s.poster_file_id AS series_poster_file_id
       FROM telegram_media_episodes e
       JOIN telegram_media_series s ON s.id = e.series_id
      WHERE e.id = $1 AND e.is_active = TRUE
      LIMIT 1`,
    [episodeId]
  );
  return r.rows[0] || null;
}

export async function getTelegramSeriesById(seriesId: number): Promise<TgSeriesRow | null> {
  await ensureTelegramStorageSchema();
  const r = await pool.query<TgSeriesRow>(
    `SELECT * FROM telegram_media_series WHERE id = $1 LIMIT 1`,
    [seriesId]
  );
  return r.rows[0] || null;
}

/* ── Seamless Query Helpers for Anime / Dubbed / Film ─────────────────── */
export async function getTelegramAnimeSources(params: {
  anilistId?: number;
  title?: string;
  english?: string | null;
  titleAr?: string | null;
  episode: number;
  season?: number | null;
  audioMode?: "sub" | "dub" | "all";
}): Promise<any[]> {
  try {
    await ensureTelegramStorageSchema();
    const ep = Number(params.episode);
    if (!Number.isFinite(ep) || ep < 1) return [];

    const normTitles = Array.from(
      new Set(
        [params.title, params.english, params.titleAr]
          .map((t) => normalizeMediaTitle(t || ""))
          .filter((t) => t.length >= 2)
      )
    );
    const hasAnilist = Number.isFinite(Number(params.anilistId)) && Number(params.anilistId) > 0;
    if (!hasAnilist && normTitles.length === 0) return [];

    const sqlParams: any[] = [ep];
    const conds: string[] = [];
    if (hasAnilist) {
      sqlParams.push(Number(params.anilistId));
      conds.push(`s.anilist_id = $${sqlParams.length}`);
    }
    if (normTitles.length > 0) {
      sqlParams.push(normTitles);
      conds.push(`s.normalized_title = ANY($${sqlParams.length}::text[])`);
    }

    const r = await pool.query<TgEpisodeRow>(
      `SELECT e.*, s.title AS series_title, s.anilist_id AS series_anilist_id, s.section AS series_section
         FROM telegram_media_episodes e
         JOIN telegram_media_series s ON s.id = e.series_id
        WHERE e.is_active = TRUE
          AND e.episode_number = $1
          AND (${conds.join(" OR ")})
        ORDER BY e.updated_at DESC
        LIMIT 12`,
      sqlParams
    );

    const rows = r.rows.filter((row) => {
      if (params.audioMode === "dub") return row.audio_lang === "dub_en";
      if (params.audioMode === "sub") return row.audio_lang !== "dub_en";
      return true;
    });

    return rows.map((row) => {
      const isEngDub = row.audio_lang === "dub_en";
      const isArDub = row.audio_lang === "dub_ar";
      const site = isEngDub ? "nova_tg_dub" : "nova_tg";
      const streamUrl = buildSignedStreamUrl(row.id);
      const labelSuffix = isEngDub ? "EN Dub" : isArDub ? "مدبلج عربي" : "مباشر";
      const subtitles = row.subtitle_file_id
        ? [{ label: "العربية (NOVA)", lang: "ar", url: buildSubtitleUrl(row.id) }]
        : undefined;
      return {
        name: `NOVA TG (${labelSuffix}) · ${row.quality}`,
        url: streamUrl,
        directUrl: streamUrl,
        quality: row.quality,
        qualityRank: qualityToRank(row.quality) + 2,
        site,
        type: "mp4",
        isDirect: true,
        corsOk: true,
        verified: true,
        audioLang: isEngDub ? "en" : isArDub ? "ar" : "ja",
        ...(subtitles ? { subtitles } : {}),
      };
    });
  } catch (err: any) {
    console.warn("[tg-storage] getTelegramAnimeSources error:", err?.message || err);
    return [];
  }
}

export async function getTelegramDubbedCatalogItems(searchQuery?: string): Promise<any[]> {
  try {
    await ensureTelegramStorageSchema();
    const r = await pool.query<TgSeriesRow & { ep_count: string; max_season: string }>(
      `SELECT s.*,
              COUNT(e.id)::text AS ep_count,
              COALESCE(MAX(e.season_number), 1)::text AS max_season
         FROM telegram_media_series s
         LEFT JOIN telegram_media_episodes e ON e.series_id = s.id AND e.is_active = TRUE
        WHERE s.section = 'cartoon'
        GROUP BY s.id
       HAVING COUNT(e.id) > 0
        ORDER BY MAX(e.updated_at) DESC NULLS LAST, s.updated_at DESC
        LIMIT 100`
    );
    const needle = searchQuery ? normalizeMediaTitle(searchQuery) : "";
    const tokens = needle ? needle.split(" ").filter(Boolean) : [];

    return r.rows
      .filter((s) => {
        if (tokens.length === 0) return true;
        const hay = normalizeMediaTitle([s.title, s.title_ar, s.title_en, s.slug].filter(Boolean).join(" "));
        return tokens.every((t) => hay.includes(t));
      })
      .map((s) => {
        const poster = buildPosterUrl(s) || `${getPublicApiBase()}/favicon.ico`;
        const maxS = Math.max(1, Number.parseInt(s.max_season || "1", 10) || 1);
        const seasons = [];
        for (let sn = 1; sn <= maxS; sn++) {
          seasons.push({
            label: maxS > 1 ? `الموسم ${sn}` : "الحلقات",
            arabicToonsId: `tg://series/${s.id}?season=${sn}`,
          });
        }
        return {
          key: `tg-${s.id}-${s.slug}`,
          slug: `tg-${s.id}-${s.slug}`,
          title: s.title,
          image: poster,
          poster,
          synopsis: s.synopsis || undefined,
          source: "tg",
          seasons,
        };
      });
  } catch (err: any) {
    console.warn("[tg-storage] getTelegramDubbedCatalogItems error:", err?.message || err);
    return [];
  }
}

export async function getTelegramDubbedEpisodes(seriesRef: string): Promise<any[]> {
  await ensureTelegramStorageSchema();
  const m = String(seriesRef || "").match(/^tg:\/\/series\/(\d+)(?:\?season=(\d+))?/i);
  if (!m) return [];
  const seriesId = Number.parseInt(m[1], 10);
  const seasonFilter = m[2] ? Number.parseInt(m[2], 10) : null;
  const r = await pool.query<TgEpisodeRow>(
    `SELECT e.*, s.poster_url AS series_poster_url, s.poster_file_id AS series_poster_file_id
       FROM telegram_media_episodes e
       JOIN telegram_media_series s ON s.id = e.series_id
      WHERE e.series_id = $1 AND e.is_active = TRUE
        AND ($2::int IS NULL OR e.season_number = $2)
      ORDER BY e.season_number ASC, e.episode_number ASC, e.id DESC`,
    [seriesId, seasonFilter]
  );
  // Deduplicate by episode_number keeping highest quality
  const byNum = new Map<number, TgEpisodeRow>();
  for (const row of r.rows) {
    const prev = byNum.get(row.episode_number);
    if (!prev || qualityToRank(row.quality) > qualityToRank(prev.quality)) {
      byNum.set(row.episode_number, row);
    }
  }
  return Array.from(byNum.values()).map((ep) => ({
    number: ep.episode_number,
    epId: `tg-${ep.id}`,
    url: `tg://episode/${ep.id}`,
    title: `الحلقة ${ep.episode_number} (${ep.quality})`,
    thumbnail: ep.series_poster_file_id ? `${getPublicApiBase()}/api/tg-media/poster/${ep.series_id}` : (ep.series_poster_url || ""),
    season: ep.season_number,
  }));
}


/* ── Cartoon 2 (SD2) & Dubbed Anime (AnimeZid) Seamless Integration ───── */

export async function getTelegramSd2CatalogItems(searchQuery?: string): Promise<any[]> {
  try {
    await ensureTelegramStorageSchema();
    const r = await pool.query<TgSeriesRow & { ep_count: string }>(
      `SELECT s.*, COUNT(e.id)::text AS ep_count
         FROM telegram_media_series s
         LEFT JOIN telegram_media_episodes e ON e.series_id = s.id AND e.is_active = TRUE
        WHERE s.section = 'cartoon2'
        GROUP BY s.id
       HAVING COUNT(e.id) > 0
        ORDER BY MAX(e.updated_at) DESC NULLS LAST, s.updated_at DESC
        LIMIT 100`
    );
    const needle = searchQuery ? normalizeMediaTitle(searchQuery) : "";
    const tokens = needle ? needle.split(" ").filter(Boolean) : [];
    return r.rows
      .filter((s) => {
        if (tokens.length === 0) return true;
        const hay = normalizeMediaTitle([s.title, s.title_ar, s.title_en, s.slug].filter(Boolean).join(" "));
        return tokens.every((t) => hay.includes(t));
      })
      .map((s) => ({
        id: 900000 + s.id,
        slug: `tg-sd2-${s.id}`,
        provider: "sd2",
        providerLabel: "مدبلج عربي",
        title: s.title,
        image: buildPosterUrl(s) || `${getPublicApiBase()}/favicon.ico`,
        mediaType: "series",
        isMovie: false,
        year: s.year ? String(s.year) : "",
        languageLabel: "مدبلج عربي",
        isDubbed: true,
        isSubbed: false,
        category: "مسلسلات",
        source: "tg",
      }));
  } catch {
    return [];
  }
}

export async function getTelegramSd2Detail(slugParam: string): Promise<any | null> {
  const m = String(slugParam || "").match(/^tg-sd2-(d+)$/i);
  if (!m) return null;
  await ensureTelegramStorageSchema();
  const seriesId = Number.parseInt(m[1], 10);
  const sRes = await pool.query<TgSeriesRow>(`SELECT * FROM telegram_media_series WHERE id = $1 LIMIT 1`, [seriesId]);
  const s = sRes.rows[0];
  if (!s) return null;
  const eRes = await pool.query<TgEpisodeRow>(
    `SELECT * FROM telegram_media_episodes WHERE series_id = $1 AND is_active = TRUE ORDER BY season_number ASC, episode_number ASC, updated_at DESC`,
    [seriesId]
  );
  const poster = buildPosterUrl(s) || `${getPublicApiBase()}/favicon.ico`;
  const bySeason = new Map<number, any[]>();
  for (const ep of eRes.rows) {
    const sn = ep.season_number || 1;
    if (!bySeason.has(sn)) bySeason.set(sn, []);
    bySeason.get(sn)!.push({
      number: ep.episode_number,
      epId: `tg-${ep.id}`,
      url: `tg://episode/${ep.id}`,
      watchUrl: `tg://episode/${ep.id}`,
      title: `الحلقة ${ep.episode_number}`,
      thumbnail: poster,
      season: sn,
      seasonLabel: `الموسم ${sn}`,
    });
  }
  const seasons = [...bySeason.entries()].map(([sn, episodes]) => ({
    label: `الموسم ${sn}`,
    seasonNumber: sn,
    episodes,
  }));
  const flatEpisodes = seasons.flatMap((x) => x.episodes);
  return {
    slug: `tg-sd2-${s.id}`,
    title: s.title,
    mediaType: "series",
    image: poster,
    year: s.year ? String(s.year) : "",
    languageLabel: "مدبلج عربي",
    seasons,
    episodes: flatEpisodes,
  };
}

export async function getTelegramAnimeZidCatalogItems(searchQuery?: string): Promise<any[]> {
  try {
    await ensureTelegramStorageSchema();
    const r = await pool.query<TgSeriesRow & { ep_count: string; max_season: string }>(
      `SELECT s.*,
              COUNT(e.id)::text AS ep_count,
              COALESCE(MAX(e.season_number), 1)::text AS max_season
         FROM telegram_media_series s
         LEFT JOIN telegram_media_episodes e ON e.series_id = s.id AND e.is_active = TRUE
        WHERE s.section = 'dubbed'
        GROUP BY s.id
       HAVING COUNT(e.id) > 0
        ORDER BY MAX(e.updated_at) DESC NULLS LAST, s.updated_at DESC
        LIMIT 100`
    );
    const needle = searchQuery ? normalizeMediaTitle(searchQuery) : "";
    const tokens = needle ? needle.split(" ").filter(Boolean) : [];
    return r.rows
      .filter((s) => {
        if (tokens.length === 0) return true;
        const hay = normalizeMediaTitle([s.title, s.title_ar, s.title_en, s.slug].filter(Boolean).join(" "));
        return tokens.every((t) => hay.includes(t));
      })
      .map((s) => ({
        id: `tg-az-${s.id}`,
        slug: `tg-az-${s.id}`,
        url: `tg://animezid/${s.id}`,
        title: s.title,
        poster: buildPosterUrl(s) || `${getPublicApiBase()}/favicon.ico`,
        badge: "مدبلج",
        year: s.year ? String(s.year) : "",
        seasonsCount: Math.max(1, Number.parseInt(s.max_season || "1", 10) || 1),
        episodesCount: Number.parseInt(s.ep_count || "0", 10) || 0,
        mediaType: "series",
        source: "tg",
      }));
  } catch {
    return [];
  }
}

export async function getTelegramAnimeZidDetail(slugParam: string, requestedSeason?: number): Promise<any | null> {
  const m = String(slugParam || "").match(/^tg-az-(d+)$/i);
  if (!m) return null;
  await ensureTelegramStorageSchema();
  const seriesId = Number.parseInt(m[1], 10);
  const sRes = await pool.query<TgSeriesRow>(`SELECT * FROM telegram_media_series WHERE id = $1 LIMIT 1`, [seriesId]);
  const s = sRes.rows[0];
  if (!s) return null;
  const eRes = await pool.query<TgEpisodeRow>(
    `SELECT * FROM telegram_media_episodes WHERE series_id = $1 AND is_active = TRUE ORDER BY season_number ASC, episode_number ASC, updated_at DESC`,
    [seriesId]
  );
  const poster = buildPosterUrl(s) || `${getPublicApiBase()}/favicon.ico`;
  const seasonCounts = new Map<number, number>();
  for (const ep of eRes.rows) {
    const sn = ep.season_number || 1;
    seasonCounts.set(sn, (seasonCounts.get(sn) || 0) + 1);
  }
  const seasonNums = [...seasonCounts.keys()].sort((a, b) => a - b);
  const activeSeason = requestedSeason && seasonCounts.has(requestedSeason) ? requestedSeason : (seasonNums[0] || 1);
  const seasons = seasonNums.map((sn) => ({
    seasonNumber: sn,
    label: `الموسم ${sn}`,
    url: `tg://animezid/${s.id}/season/${sn}`,
    episodeCount: seasonCounts.get(sn) || 0,
  }));
  const episodes = eRes.rows
    .filter((ep) => (ep.season_number || 1) === activeSeason)
    .map((ep) => ({
      number: ep.episode_number,
      numberLabel: String(ep.episode_number),
      vid: `tg-ep-${ep.id}`,
      watchUrl: `tg://episode/${ep.id}`,
      title: `الحلقة ${ep.episode_number}`,
      duration: ep.duration > 0 ? `${Math.floor(ep.duration / 60)}:${String(ep.duration % 60).padStart(2, "0")}` : "",
    }));
  return {
    slug: `tg-az-${s.id}`,
    url: `tg://animezid/${s.id}`,
    rawTitle: s.title,
    titleAr: s.title,
    englishTitle: s.title_en || s.title,
    poster,
    badge: "مدبلج",
    year: s.year ? String(s.year) : "",
    views: "",
    seasonsCount: Math.max(1, seasons.length),
    episodesCount: eRes.rows.length,
    rawDescription: s.synopsis || "",
    seasons,
    activeSeason,
    episodes,
    anilist: null,
  };
}

export async function getTelegramFilmSources(params: {
  tmdbId?: number;
  title?: string;
  season?: number;
  ep?: number;
}): Promise<any[]> {
  try {
    await ensureTelegramStorageSchema();
    const norm = normalizeMediaTitle(params.title || "");
    const hasTmdb = Number.isFinite(Number(params.tmdbId)) && Number(params.tmdbId) > 0;
    if (!hasTmdb && !norm) return [];
    const sqlParams: any[] = [];
    const conds: string[] = [];
    if (hasTmdb) {
      sqlParams.push(Number(params.tmdbId));
      conds.push(`s.tmdb_id = $${sqlParams.length}`);
    }
    if (norm) {
      sqlParams.push(norm);
      conds.push(`s.normalized_title = $${sqlParams.length}`);
    }
    const r = await pool.query<TgEpisodeRow>(
      `SELECT e.*, s.title AS series_title
         FROM telegram_media_episodes e
         JOIN telegram_media_series s ON s.id = e.series_id
        WHERE s.section = 'film' AND e.is_active = TRUE AND (${conds.join(" OR ")})
        ORDER BY e.updated_at DESC
        LIMIT 8`,
      sqlParams
    );
    return r.rows.map((row) => {
      const streamUrl = buildSignedStreamUrl(row.id);
      return {
        name: `NOVA TG · ${row.quality}`,
        url: streamUrl,
        directUrl: streamUrl,
        quality: row.quality,
        qualityRank: qualityToRank(row.quality) + 2,
        site: "nova_tg",
        type: "mp4",
        isDirect: true,
        corsOk: true,
        verified: true,
        ...(row.subtitle_file_id ? { subtitles: [{ label: "العربية", lang: "ar", url: buildSubtitleUrl(row.id) }] } : {}),
      };
    });
  } catch {
    return [];
  }
}

/* ── Animation Tab Sources (/api/animation/sources-stream) ─────────────── */
export async function getTelegramAnimationSources(params: {
  tmdbId?: string | number;
  title?: string;
  altTitle?: string;
  season?: number;
  ep?: number;
  type?: string;
}): Promise<Array<{ url: string; label: string; directUrl: string; proxyUrl: string; quality: string; subtitleUrl?: string }>> {
  try {
    await ensureTelegramStorageSchema();
    const norm = normalizeMediaTitle(params.title || "");
    const normAlt = normalizeMediaTitle(params.altTitle || "");
    const tmdbNum = Number.parseInt(String(params.tmdbId || "0"), 10);
    const hasTmdb = Number.isFinite(tmdbNum) && tmdbNum > 0;
    if (!hasTmdb && !norm && !normAlt) return [];

    const isMovie = String(params.type || "").toLowerCase() === "movie";
    const season = isMovie ? 1 : Math.max(1, Number(params.season || 1));
    const ep = isMovie ? 1 : Math.max(1, Number(params.ep || 1));

    const sqlParams: any[] = [season, ep];
    const conds: string[] = [];
    if (hasTmdb) {
      sqlParams.push(tmdbNum);
      conds.push(`s.tmdb_id = $${sqlParams.length}`);
    }
    if (norm) {
      sqlParams.push(norm);
      conds.push(`s.normalized_title = $${sqlParams.length}`);
    }
    if (normAlt && normAlt !== norm) {
      sqlParams.push(normAlt);
      conds.push(`s.normalized_title = $${sqlParams.length}`);
    }
    const r = await pool.query<TgEpisodeRow>(
      `SELECT e.*, s.title AS series_title
         FROM telegram_media_episodes e
         JOIN telegram_media_series s ON s.id = e.series_id
        WHERE s.section = 'animation'
          AND e.is_active = TRUE
          AND e.season_number = $1
          AND e.episode_number = $2
          AND (${conds.join(" OR ")})
        ORDER BY e.updated_at DESC
        LIMIT 8`,
      sqlParams
    );
    return r.rows.map((row) => {
      const streamUrl = buildSignedStreamUrl(row.id);
      const langTag = row.audio_lang === "dub_ar" ? "مدبلج" : row.audio_lang === "dub_en" ? "EN" : "مترجم";
      return {
        url: streamUrl,
        label: `NOVA TG · ${row.quality} (${langTag})`,
        directUrl: streamUrl,
        proxyUrl: streamUrl,
        quality: row.quality,
        ...(row.subtitle_file_id ? { subtitleUrl: buildSubtitleUrl(row.id) } : {}),
      };
    });
  } catch {
    return [];
  }
}

/* ── Dubbed Animation Sub-Tab (/api/aw-dubbed/*) ─────────────────────── */
export async function getTelegramAwDubbedCatalogItems(searchQuery?: string): Promise<any[]> {
  try {
    await ensureTelegramStorageSchema();
    const normQ = normalizeMediaTitle(searchQuery || "");
    const r = await pool.query<TgSeriesRow & { seasons_arr: number[] }>(
      `SELECT s.*, ARRAY_AGG(DISTINCT e.season_number ORDER BY e.season_number) AS seasons_arr
         FROM telegram_media_series s
         JOIN telegram_media_episodes e ON e.series_id = s.id AND e.is_active = TRUE
        WHERE s.section = 'aw_animation'
        GROUP BY s.id
        ORDER BY MAX(e.created_at) DESC
        LIMIT 100`
    );
    return r.rows
      .filter((row) => {
        if (!normQ) return true;
        return (
          row.normalized_title.includes(normQ) ||
          normalizeMediaTitle(row.title_ar || "").includes(normQ) ||
          normalizeMediaTitle(row.title_en || "").includes(normQ)
        );
      })
      .map((row) => {
        const seasonsNums = Array.isArray(row.seasons_arr) && row.seasons_arr.length ? row.seasons_arr : [1];
        return {
          key: `tg-aw-${row.id}`,
          title: row.title_en || row.title,
          titleAr: row.title_ar || row.title,
          poster: buildPosterUrl(row),
          dubbedConfirmed: true,
          year: row.year || undefined,
          source: "tg",
          seasons: seasonsNums.map((sn) => ({
            label: seasonsNums.length > 1 ? `الموسم ${sn}` : "الموسم 1",
            animeId: `tg://aw/${row.id}?season=${sn}`,
            dubbedConfirmed: true,
          })),
        };
      });
  } catch {
    return [];
  }
}

export async function getTelegramAwDubbedEpisodes(seriesRef: string, order: "asc" | "desc" = "desc"): Promise<Array<{ number: number }>> {
  const m = String(seriesRef || "").match(/^tg:\/\/aw\/(\d+)(?:\?season=(\d+))?$/);
  if (!m) return [];
  const seriesId = Number.parseInt(m[1], 10);
  const seasonNum = Number.parseInt(m[2] || "1", 10) || 1;
  await ensureTelegramStorageSchema();
  const r = await pool.query<{ episode_number: number }>(
    `SELECT DISTINCT episode_number
       FROM telegram_media_episodes
      WHERE series_id = $1 AND season_number = $2 AND is_active = TRUE
      ORDER BY episode_number ${order === "asc" ? "ASC" : "DESC"}`,
    [seriesId, seasonNum]
  );
  return r.rows.map((row) => ({ number: row.episode_number }));
}

export async function getTelegramAwDubbedWatchSrc(seriesRef: string, epNum: number): Promise<Array<{ quality: string; name: string; rawUrl: string; hlsUrl: null }>> {
  const m = String(seriesRef || "").match(/^tg:\/\/aw\/(\d+)(?:\?season=(\d+))?$/);
  if (!m) return [];
  const seriesId = Number.parseInt(m[1], 10);
  const seasonNum = Number.parseInt(m[2] || "1", 10) || 1;
  await ensureTelegramStorageSchema();
  const r = await pool.query<TgEpisodeRow>(
    `SELECT *
       FROM telegram_media_episodes
      WHERE series_id = $1 AND season_number = $2 AND episode_number = $3 AND is_active = TRUE
      ORDER BY updated_at DESC`,
    [seriesId, seasonNum, epNum]
  );
  return r.rows
    .sort((a, b) => qualityToRank(b.quality) - qualityToRank(a.quality))
    .map((row) => ({
      quality: row.quality || "720p",
      name: `NOVA TG · ${row.quality}`,
      rawUrl: buildSignedStreamUrl(row.id),
      hlsUrl: null,
    }));
}

/* ── Spacetoon Section (/api/dubbed/carateen/* & /dubbed/watch-src) ──── */
export const TG_SPACETOON_ID_BASE = 9_000_000_000;

export async function getTelegramSpacetoonCatalogItems(searchQuery?: string): Promise<any[]> {
  try {
    await ensureTelegramStorageSchema();
    const normQ = normalizeMediaTitle(searchQuery || "");
    const r = await pool.query<TgSeriesRow & { ep_count: number }>(
      `SELECT s.*, COUNT(DISTINCT (e.season_number, e.episode_number))::int AS ep_count
         FROM telegram_media_series s
         JOIN telegram_media_episodes e ON e.series_id = s.id AND e.is_active = TRUE
        WHERE s.section = 'spacetoon'
        GROUP BY s.id
        ORDER BY MAX(e.created_at) DESC
        LIMIT 100`
    );
    return r.rows
      .filter((row) => {
        if (!normQ) return true;
        return (
          row.normalized_title.includes(normQ) ||
          normalizeMediaTitle(row.title_ar || "").includes(normQ) ||
          normalizeMediaTitle(row.title_en || "").includes(normQ)
        );
      })
      .map((row) => {
        let genres: string[] = [];
        try { genres = JSON.parse(row.genres_json || "[]"); } catch {}
        const category = genres[0] || "سبيستون";
        const isMovie = /فيلم|movie/i.test(category) || /فيلم/.test(row.title);
        return {
          id: TG_SPACETOON_ID_BASE + row.id,
          provider: "sp" as const,
          providerLabel: "سبيستون",
          title: row.title_ar || row.title,
          image: buildPosterUrl(row),
          category,
          episodeCount: Number(row.ep_count || 1),
          isMovie,
          year: row.year ? String(row.year) : "",
          source: "tg",
        };
      });
  } catch {
    return [];
  }
}

export async function getTelegramSpacetoonEpisodes(showId: number): Promise<any[]> {
  if (!Number.isSafeInteger(showId) || showId <= TG_SPACETOON_ID_BASE) return [];
  const seriesId = showId - TG_SPACETOON_ID_BASE;
  await ensureTelegramStorageSchema();
  const r = await pool.query<TgEpisodeRow>(
    `SELECT e.*, s.poster_url AS series_poster_url, s.poster_file_id AS series_poster_file_id
       FROM telegram_media_episodes e
       JOIN telegram_media_series s ON s.id = e.series_id
      WHERE e.series_id = $1 AND s.section = 'spacetoon' AND e.is_active = TRUE
      ORDER BY e.season_number ASC, e.episode_number ASC, e.updated_at DESC`,
    [seriesId]
  );
  const byKey = new Map<string, TgEpisodeRow>();
  for (const row of r.rows) {
    const k = `${row.season_number}:${row.episode_number}`;
    const cur = byKey.get(k);
    if (!cur || qualityToRank(row.quality) > qualityToRank(cur.quality)) {
      byKey.set(k, row);
    }
  }
  return [...byKey.values()]
    .sort((a, b) => a.season_number - b.season_number || a.episode_number - b.episode_number)
    .map((ep) => {
      const spEpId = TG_SPACETOON_ID_BASE + ep.id;
      const thumb = ep.series_poster_file_id
        ? `${getPublicApiBase()}/api/tg-media/poster/${ep.series_id}`
        : (ep.series_poster_url || "");
      return {
        number: ep.episode_number,
        epId: String(spEpId),
        url: `carateen://sp/${showId}/${spEpId}`,
        title: `الحلقة ${ep.episode_number} (${ep.quality})`,
        thumbnail: thumb,
        season: ep.season_number,
      };
    });
}

export async function getTelegramSpacetoonWatchSrc(spacetoonEpisodeId: number): Promise<{
  hlsUrl: string;
  rawUrl: string;
  streamUrl: string;
  type: "mp4";
  subtitleUrl?: string;
} | null> {
  if (!Number.isSafeInteger(spacetoonEpisodeId) || spacetoonEpisodeId <= TG_SPACETOON_ID_BASE) return null;
  const epId = spacetoonEpisodeId - TG_SPACETOON_ID_BASE;
  const epRow = await getTelegramEpisodeById(epId);
  if (!epRow) return null;
  const signedPath = buildSignedStreamPath(epRow.id);
  const signedUrl = buildSignedStreamUrl(epRow.id);
  const subtitleUrl = epRow.subtitle_file_id ? buildSubtitleUrl(epRow.id) : undefined;
  return {
    hlsUrl: signedPath,
    rawUrl: signedUrl,
    streamUrl: signedUrl,
    type: "mp4",
    ...(subtitleUrl ? { subtitleUrl } : {}),
  };
}

/* ── Manga & Manhwa Tab (/api/manga/*) ───────────────────────────────── */
function buildMangaPrefix(section: TgMediaSection): "tg-mw-" | "tg-mg-" {
  return section === "manhwa" ? "tg-mw-" : "tg-mg-";
}

function buildMangaPageUrl(chapterId: number, pageIndexOneBased: number): string {
  const base = getPublicApiBase();
  return `${base}/api/tg-media/manga-page/${chapterId}/${pageIndexOneBased}`;
}

function formatTgMangaBaseItem(
  row: TgSeriesRow & { chapters_count?: number; latest_chapter?: number; latest_chapter_label?: string; latest_updated?: string }
) {
  const isManhwa = row.section === "manhwa";
  const prefix = buildMangaPrefix(row.section);
  const id = `${prefix}${row.id}`;
  const poster = buildPosterUrl(row);
  const arTitle = row.title_ar || row.title;
  const enTitle = row.title_en || row.title;
  let genres: string[] = [];
  try { genres = JSON.parse(row.genres_json || "[]"); } catch {}
  const latestCh = row.latest_chapter != null ? Number(row.latest_chapter) : null;
  const latestSlug = row.latest_chapter_label || (latestCh != null ? formatChapterLabel(latestCh) : "");
  const updatedAt = row.latest_updated || row.updated_at || new Date().toISOString();
  return {
    id,
    slug: id,
    source: isManhwa ? "manhwa" : "manga",
    title: {
      romaji: enTitle || arTitle,
      english: enTitle || arTitle,
      native: arTitle || enTitle,
    },
    arTitle,
    enTitle,
    arabicTitle: arTitle,
    englishTitle: enTitle,
    displayTitle: arTitle || enTitle,
    description: row.synopsis || "",
    poster,
    cover: poster,
    banner: poster,
    bannerImage: poster,
    coverImage: {
      extraLarge: poster,
      large: poster,
      medium: poster,
    },
    status: "RELEASING",
    statusAr: "مستمر",
    averageScore: null,
    scoreText: "NOVA TG",
    chapters: Number(row.chapters_count || 0),
    latestChapter: latestCh,
    latestChapterSlug: latestSlug,
    latestChapterDate: updatedAt,
    updatedAt,
    genres,
    year: row.year || null,
    countryOfOrigin: isManhwa ? "KR" : "JP",
    typeLabel: isManhwa ? "مانهوا" : "مانجا",
  };
}

export async function getTelegramMangaCatalogItems(section: "manga" | "manhwa", searchQuery?: string): Promise<any[]> {
  try {
    await ensureTelegramStorageSchema();
    const normQ = normalizeMediaTitle(searchQuery || "");
    const r = await pool.query<any>(
      `SELECT s.*,
              COUNT(c.id)::int AS chapters_count,
              MAX(c.chapter_number) AS latest_chapter,
              (SELECT c2.chapter_label FROM telegram_media_chapters c2 WHERE c2.series_id = s.id AND c2.is_active = TRUE ORDER BY c2.chapter_number DESC LIMIT 1) AS latest_chapter_label,
              MAX(c.updated_at) AS latest_updated
         FROM telegram_media_series s
         JOIN telegram_media_chapters c ON c.series_id = s.id AND c.is_active = TRUE
        WHERE s.section = $1
        GROUP BY s.id
        ORDER BY MAX(c.updated_at) DESC
        LIMIT 100`,
      [section]
    );
    return r.rows
      .filter((row) => {
        if (!normQ) return true;
        return (
          String(row.normalized_title || "").includes(normQ) ||
          normalizeMediaTitle(row.title_ar || "").includes(normQ) ||
          normalizeMediaTitle(row.title_en || "").includes(normQ)
        );
      })
      .map(formatTgMangaBaseItem);
  } catch {
    return [];
  }
}

export async function getTelegramMangaDetail(idParam: string): Promise<any | null> {
  const m = String(idParam || "").match(/^tg-(mg|mw)-(\d+)$/);
  if (!m) return null;
  const expectedSection: TgMediaSection = m[1] === "mw" ? "manhwa" : "manga";
  const seriesId = Number.parseInt(m[2], 10);
  await ensureTelegramStorageSchema();

  const [sRes, cRes] = await Promise.all([
    pool.query<TgSeriesRow>(`SELECT * FROM telegram_media_series WHERE id = $1 AND section = $2 LIMIT 1`, [seriesId, expectedSection]),
    pool.query<TgChapterRow>(
      `SELECT * FROM telegram_media_chapters
        WHERE series_id = $1 AND is_active = TRUE
        ORDER BY chapter_number DESC, updated_at DESC`,
      [seriesId]
    ),
  ]);
  const series = sRes.rows[0];
  if (!series) return null;

  const base = formatTgMangaBaseItem({
    ...series,
    chapters_count: cRes.rows.length,
    latest_chapter: cRes.rows[0]?.chapter_number,
    latest_chapter_label: cRes.rows[0]?.chapter_label,
    latest_updated: cRes.rows[0]?.updated_at,
  });

  const seenNums = new Set<string>();
  const chapters = [];
  for (const ch of cRes.rows) {
    const numStr = ch.chapter_label || formatChapterLabel(ch.chapter_number);
    if (seenNums.has(numStr)) continue;
    seenNums.add(numStr);
    chapters.push({
      id: `ch-${ch.id}`,
      number: Number(ch.chapter_number),
      numberStr: numStr,
      slug: numStr,
      title: `الفصل ${numStr}`,
      url: `${base.id}/${numStr}`,
      createdAt: ch.created_at,
      date: ch.created_at,
      pagesCount: ch.pages_count,
    });
  }

  return {
    ...base,
    author: "",
    trailer: null,
    trailerYT: null,
    characters: [],
    chaptersCount: chapters.length,
    chapters,
    chaptersList: chapters,
  };
}

export async function getTelegramMangaChapterPages(idParam: string, chapterParam: string): Promise<any | null> {
  const m = String(idParam || "").match(/^tg-(mg|mw)-(\d+)$/);
  if (!m) return null;
  const expectedSection: "manga" | "manhwa" = m[1] === "mw" ? "manhwa" : "manga";
  const seriesId = Number.parseInt(m[2], 10);
  await ensureTelegramStorageSchema();

  const rawCh = String(chapterParam || "").trim();
  const chIdMatch = rawCh.match(/^ch-(\d+)$/);
  let chRow: TgChapterRow | undefined;

  if (chIdMatch) {
    const r = await pool.query<TgChapterRow>(
      `SELECT * FROM telegram_media_chapters WHERE id = $1 AND series_id = $2 AND is_active = TRUE LIMIT 1`,
      [Number.parseInt(chIdMatch[1], 10), seriesId]
    );
    chRow = r.rows[0];
  } else {
    const chNum = Number.parseFloat(rawCh.replace(/[^0-9.]/g, ""));
    const r = await pool.query<TgChapterRow>(
      `SELECT * FROM telegram_media_chapters
        WHERE series_id = $1 AND is_active = TRUE
          AND (chapter_label = $2 OR ($3::double precision IS NOT NULL AND chapter_number = $3))
        ORDER BY updated_at DESC
        LIMIT 1`,
      [seriesId, rawCh, Number.isFinite(chNum) ? chNum : null]
    );
    chRow = r.rows[0];
  }
  if (!chRow) return null;

  let pagesCount = Number(chRow.pages_count || 0);
  if (pagesCount <= 0) {
    try {
      const parsed = JSON.parse(chRow.pages_json || "[]");
      pagesCount = Array.isArray(parsed) ? parsed.length : 0;
    } catch {}
  }

  const pages = Array.from({ length: pagesCount }, (_, idx) => ({
    index: idx + 1,
    url: buildMangaPageUrl(chRow!.id, idx + 1),
  }));

  return {
    id: idParam,
    slug: idParam,
    chapter: chRow.chapter_label || rawCh,
    source: expectedSection,
    contentType: "images",
    pagesCount: pages.length,
    pages,
  };
}

export async function getTelegramMangaLatestUpdates(): Promise<any[]> {
  try {
    await ensureTelegramStorageSchema();
    const r = await pool.query<any>(
      `SELECT DISTINCT ON (s.id)
              s.*,
              c.chapter_number AS latest_chapter,
              c.chapter_label AS latest_chapter_label,
              c.updated_at AS latest_updated
         FROM telegram_media_chapters c
         JOIN telegram_media_series s ON s.id = c.series_id
        WHERE s.section IN ('manga', 'manhwa') AND c.is_active = TRUE
        ORDER BY s.id, c.updated_at DESC
        LIMIT 12`
    );
    return r.rows
      .sort((a, b) => new Date(b.latest_updated).getTime() - new Date(a.latest_updated).getTime())
      .map((row) => {
        const isManhwa = row.section === "manhwa";
        const id = `${buildMangaPrefix(row.section)}${row.id}`;
        const poster = buildPosterUrl(row);
        let genres: string[] = [];
        try { genres = JSON.parse(row.genres_json || "[]"); } catch {}
        return {
          id,
          slug: id,
          source: isManhwa ? "manhwa" : "manga",
          typeLabel: isManhwa ? "مانهوا" : "مانجا",
          title: row.title_ar || row.title,
          arabicTitle: row.title_ar || row.title,
          englishTitle: row.title_en || row.title,
          poster,
          description: row.synopsis || "",
          latestChapter: Number(row.latest_chapter),
          latestChapterSlug: row.latest_chapter_label || formatChapterLabel(row.latest_chapter),
          latestChapterLabel: `الفصل ${row.latest_chapter_label || formatChapterLabel(row.latest_chapter)}`,
          updatedAt: row.latest_updated,
          scoreText: "NOVA TG",
          statusAr: "مستمر",
          genres,
        };
      });
  } catch {
    return [];
  }
}

export async function listTelegramMediaAdmin(): Promise<{ series: TgSeriesRow[]; episodes: TgEpisodeRow[] }> {
  await ensureTelegramStorageSchema();
  const [sRes, eRes] = await Promise.all([
    pool.query<TgSeriesRow>(`SELECT * FROM telegram_media_series ORDER BY updated_at DESC LIMIT 200`),
    pool.query<TgEpisodeRow>(
      `SELECT e.*, s.title AS series_title, s.section AS series_section
         FROM telegram_media_episodes e
         JOIN telegram_media_series s ON s.id = e.series_id
        WHERE e.is_active = TRUE
        ORDER BY e.created_at DESC
        LIMIT 300`
    ),
  ]);
  return { series: sRes.rows, episodes: eRes.rows };
}

/* ── Small File Download via Bot API (Posters & Subtitles <20MB) ──────── */
export async function downloadTelegramSmallFile(fileId: string): Promise<{ buffer: Buffer; filePath: string } | null> {
  const tok = await getEnvOrDb("TELEGRAM_BOT_TOKEN", "telegram_bot_token");
  if (!tok || !fileId) return null;
  const metaR = await fetch(`https://api.telegram.org/bot${tok}/getFile?file_id=${encodeURIComponent(fileId)}`, {
    signal: AbortSignal.timeout(8000),
  });
  const meta = (await metaR.json()) as any;
  const filePath = meta?.result?.file_path;
  if (!meta?.ok || !filePath) return null;
  const fileR = await fetch(`https://api.telegram.org/file/bot${tok}/${filePath}`, {
    signal: AbortSignal.timeout(15000),
  });
  if (!fileR.ok) return null;
  const ab = await fileR.arrayBuffer();
  return { buffer: Buffer.from(ab), filePath };
}

/* ── MTProto (GramJS) Bot Streaming Engine (Up to 2 GB, HTTP Range 206) ─ */
let _mtClient: any = null;
let _mtConnecting: Promise<any> | null = null;
const _msgCache = new Map<string, { msg: any; ts: number }>();
const MSG_CACHE_TTL_MS = 15 * 60 * 1000;
const SESSION_PATH = "/opt/anime-nova/.tg-mtproto.session";

export async function getMtprotoClient(): Promise<any> {
  if (_mtClient && _mtClient.connected) return _mtClient;
  if (_mtConnecting) return _mtConnecting;

  _mtConnecting = (async () => {
    const apiId = Number.parseInt(process.env.TELEGRAM_API_ID || "", 10);
    const apiHash = String(process.env.TELEGRAM_API_HASH || "").trim();
    const botToken = await getEnvOrDb("TELEGRAM_BOT_TOKEN", "telegram_bot_token");
    if (!apiId || !apiHash || !botToken) {
      throw new Error("TELEGRAM_API_ID / TELEGRAM_API_HASH / TELEGRAM_BOT_TOKEN not configured");
    }
    const { TelegramClient } = _req("telegram");
    const { StringSession } = _req("telegram/sessions");
    const savedSession = fs.existsSync(SESSION_PATH) ? fs.readFileSync(SESSION_PATH, "utf8").trim() : "";

    const client = new TelegramClient(new StringSession(savedSession), apiId, apiHash, {
      connectionRetries: 5,
      autoReconnect: true,
    });
    client.setLogLevel("error");
    await client.start({ botAuthToken: botToken });
    const nextSession = client.session.save();
    if (nextSession && nextSession !== savedSession) {
      try {
        fs.writeFileSync(SESSION_PATH, nextSession, { mode: 0o600 });
        fs.chmodSync(SESSION_PATH, 0o600);
      } catch {}
    }
    _mtClient = client;
    return client;
  })().finally(() => {
    _mtConnecting = null;
  });

  return _mtConnecting;
}

async function getChannelMessageMedia(channelId: string, messageId: number): Promise<any> {
  const cacheKey = `${channelId}:${messageId}`;
  const hit = _msgCache.get(cacheKey);
  if (hit && Date.now() - hit.ts < MSG_CACHE_TTL_MS) return hit.msg;

  const client = await getMtprotoClient();
  const entity = await client.getInputEntity(Number(channelId));
  const msgs = await client.getMessages(entity, { ids: [Number(messageId)] });
  const msg = Array.isArray(msgs) ? msgs[0] : null;
  if (!msg || !msg.media) {
    throw new Error(`Telegram message ${messageId} has no media or was deleted`);
  }
  _msgCache.set(cacheKey, { msg, ts: Date.now() });
  if (_msgCache.size > 300) {
    const firstKey = _msgCache.keys().next().value;
    if (firstKey) _msgCache.delete(firstKey);
  }
  return msg;
}

export async function streamTelegramEpisodeRange(
  ep: TgEpisodeRow,
  range: ParsedByteRange,
  _reqObj: Request,
  res: Response
): Promise<void> {
  const client = await getMtprotoClient();
  const msg = await getChannelMessageMedia(ep.channel_id, ep.message_id);
  const _tgReq = createRequire(_req.resolve("telegram"));
  const bigInt = _tgReq("big-integer");

  // MTProto upload.getFile requires 4096-byte aligned offsets and power-of-2 chunk sizes <= 512 KB
  const MIN_ALIGN = 4096;
  const alignedOffset = Math.floor(range.start / MIN_ALIGN) * MIN_ALIGN;
  let skipBytes = range.start - alignedOffset;
  let remaining = range.chunkLength;

  // Use smaller requestSize for tiny range probes (e.g., moov atom seeks), 512KB for normal playback
  const requestSize = remaining <= 65536 ? 65536 : 512 * 1024;
  const totalChunksNeeded = Math.max(1, Math.ceil((skipBytes + remaining) / requestSize));

  let aborted = false;
  res.on("close", () => { aborted = true; });

  const iter = client.iterDownload({
    file: msg.media,
    offset: bigInt(alignedOffset),
    requestSize,
    limit: totalChunksNeeded,
  });

  for await (const rawChunk of iter) {
    if (aborted || res.destroyed || res.writableEnded) break;
    let buf: Buffer = Buffer.isBuffer(rawChunk) ? rawChunk : Buffer.from(rawChunk);
    if (skipBytes > 0) {
      if (buf.length <= skipBytes) {
        skipBytes -= buf.length;
        continue;
      }
      buf = buf.subarray(skipBytes);
      skipBytes = 0;
    }
    if (buf.length > remaining) {
      buf = buf.subarray(0, remaining);
    }
    if (buf.length === 0) break;

    remaining -= buf.length;
    const canContinue = res.write(buf);
    if (!canContinue && !aborted && !res.destroyed) {
      await new Promise<void>((resolve) => {
        const done = () => { res.off("drain", done); res.off("close", done); resolve(); };
        res.once("drain", done);
        res.once("close", done);
      });
    }
    if (remaining <= 0) break;
  }

  if (!aborted && !res.writableEnded) {
    res.end();
  }
}

export async function getEpisodeFileSizeFallback(ep: TgEpisodeRow): Promise<number> {
  if (Number(ep.file_size) > 0) return Number(ep.file_size);
  const msg = await getChannelMessageMedia(ep.channel_id, ep.message_id);
  const doc = msg?.media?.document;
  const size = Number(doc?.size?.toJSNumber ? doc.size.toJSNumber() : (doc?.size || 0));
  if (size > 0) {
    await pool.query(`UPDATE telegram_media_episodes SET file_size = $1 WHERE id = $2`, [size, ep.id]).catch(() => {});
  }
  return size;
}

export async function getSubtitleVttForEpisode(ep: TgEpisodeRow): Promise<string | null> {
  if (!ep.subtitle_file_id) return null;
  const dl = await downloadTelegramSmallFile(ep.subtitle_file_id);
  if (!dl) return null;
  return convertSrtToVtt(dl.buffer.toString("utf8"));
}
