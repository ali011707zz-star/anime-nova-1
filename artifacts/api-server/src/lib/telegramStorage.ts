import fs from "node:fs";
import path from "node:path";
import { createRequire } from "node:module";
import type { Request, Response } from "express";
import { pool } from "./db.js";
import { getEnvOrDb } from "./dbConfig.js";
import {
  parseChannelCaption,
  normalizeMediaTitle,
  slugifyMediaTitle,
  qualityToRank,
  normalizeAudioLang,
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
  type TitleSuggestion,
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
  kind: "episode" | "series_card";
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

async function queryAniListPage(search: string, sort: "SEARCH_MATCH" | "POPULARITY_DESC" = "SEARCH_MATCH", perPage = 5): Promise<{ ok: boolean; candidates: TitleSuggestion[] }> {
  const query = `query ($search: String, $perPage: Int) { Page(page: 1, perPage: $perPage) { media(search: $search, type: ANIME, sort: ${sort}) { id title { romaji english native } synonyms coverImage { extraLarge large } description(asHtml: false) genres seasonYear } } }`;
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
  anilistId?: number | null
): Promise<{ ok: boolean; candidates: TitleSuggestion[] }> {
  if (anilistId) {
    const query = `query ($id: Int) { Media(id: $id, type: ANIME) { id title { romaji english native } synonyms coverImage { extraLarge large } description(asHtml: false) genres seasonYear } }`;
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

  const primary = await queryAniListPage(title, "SEARCH_MATCH", 5);
  if (!primary.ok || primary.candidates.length > 0) return primary;

  // Fallback for typos (e.g. "Attack on Titn", "One Pece", "Jujutsu Kaisn"):
  // query top 2 significant words sorted by popularity so Levenshtein can suggest the exact right anime!
  const STOPWORDS = new Set(["the", "and", "for", "with", "from", "into", "that", "this", "season", "part", "movie", "anime"]);
  const tokens = normalizeMediaTitle(title)
    .split(" ")
    .filter((w) => w.length >= 3 && /[a-z]/i.test(w) && !STOPWORDS.has(w));

  if (tokens.length === 0) return primary;

  const uniqueTokens = [...new Set(tokens)].sort((a, b) => b.length - a.length).slice(0, 2);
  const byId = new Map<number, TitleSuggestion>();
  const results = await Promise.all(uniqueTokens.map((tok) => queryAniListPage(tok, "POPULARITY_DESC", 8)));
  for (const res of results) {
    for (const c of res.candidates) {
      if (c.anilistId && !byId.has(c.anilistId)) {
        byId.set(c.anilistId, c);
      }
    }
  }
  return { ok: true, candidates: [...byId.values()] };
}

async function lookupAniListMetadata(title: string, anilistId?: number | null): Promise<AniListMeta | null> {
  const res = await searchAniListCandidates(title, anilistId);
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
  if (!input.skipAniListLookup && (input.section === "anime" || input.anilistId) && (!existing || !existing.anilist_id || !existing.poster_url)) {
    const searchName = input.titleEn || input.title;
    if (input.anilistId || (searchName && /[a-z]/i.test(searchName))) {
      aniMeta = await lookupAniListMetadata(searchName, input.anilistId);
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
  kind: "episode" | "series_card" | "subtitle" | "needs_fix" | "cancelled" | "ignored" | "error";
  summary?: string;
  episodeId?: number;
  pendingId?: number;
  replyMarkup?: { inline_keyboard: Array<Array<{ text: string; callback_data: string }>> };
  series?: TgSeriesRow;
  episode?: TgEpisodeRow;
  warning?: string;
  remainingPendingCount?: number;
}

interface MediaPayload {
  channelId: string;
  messageId: number;
  kind: "episode" | "series_card";
  fileId: string;
  fileUniqueId: string | null;
  fileName: string;
  mimeType: string;
  fileSize: number;
  duration: number;
  width: number;
  height: number;
  captionRaw: string;
}

async function validateAndEvaluateDraft(
  draft: ParsedChannelCaption,
  kind: "episode" | "series_card"
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

    if (draft.section === "anime" || draft.anilistId) {
      const searchQuery = draft.titleEn || draft.title;
      const aniRes = await searchAniListCandidates(searchQuery, draft.anilistId);
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
      (channel_id, message_id, kind, file_id, file_unique_id, file_name, mime_type, file_size, duration, width, height, caption_raw, parsed_json, issues_json, suggestions_json, status)
     VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,'pending')
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
    ]
  );
  return r.rows[0];
}

async function publishValidatedDraft(
  media: MediaPayload,
  draft: ParsedChannelCaption,
  matchedCandidate: TitleSuggestion | null,
  isEdit = false
): Promise<ChannelIngestResult> {
  const effectiveAnilistId = draft.anilistId || matchedCandidate?.anilistId || null;
  const effectiveTitleEn = draft.titleEn || matchedCandidate?.titleEn || matchedCandidate?.titleRomaji || null;
  const effectivePosterUrl = matchedCandidate?.posterUrl || null;
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
      summary: `🖼️ تم ${isEdit ? "تحديث" : "حفظ"} بطاقة وبوستر العمل: <b>${series.title}</b> (القسم: ${series.section}${series.anilist_id ? ` · AniList #${series.anilist_id}` : ""}).`,
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
    summary:
      `✅ تم ${isEdit ? "تحديث" : "نشر"} الحلقة بنجاح!\n` +
      `🎬 <b>${series.title}</b>${series.anilist_id ? ` (AniList #${series.anilist_id})` : ""}\n` +
      `📂 القسم: <b>${series.section}</b> · الموسم ${epRow.season_number} · الحلقة <b>${epRow.episode_number}</b>\n` +
      `🎞️ الجودة: <b>${epRow.quality}</b> · الصوت: <b>${langAr}</b> · الحجم: ${sizeMb}` +
      warning,
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

  // Case 2: Photo upload (Series poster / #عمل_جديد)
  if (Array.isArray(post.photo) && post.photo.length > 0 && caption) {
    const bestPhoto = post.photo[post.photo.length - 1];
    const parsed = parseChannelCaption(caption);
    const media: MediaPayload = {
      channelId,
      messageId,
      kind: "series_card",
      fileId: String(bestPhoto.file_id),
      fileUniqueId: bestPhoto.file_unique_id ? String(bestPhoto.file_unique_id) : null,
      fileName: "",
      mimeType: "image/jpeg",
      fileSize: Number(bestPhoto.file_size || 0),
      duration: 0,
      width: Number(bestPhoto.width || 0),
      height: Number(bestPhoto.height || 0),
      captionRaw: caption,
    };
    const check = await validateAndEvaluateDraft(parsed, "series_card");
    if (!check.isValid) {
      const pend = await upsertPendingUpload(media, parsed, check.issues, check.suggestions);
      return {
        handled: true,
        kind: "needs_fix",
        pendingId: pend.id,
        summary: formatPendingReminderMessage(parsed, check.issues, check.suggestions, { kind: "series_card" }),
        replyMarkup: buildPendingInlineKeyboard(pend.id, check.issues, check.suggestions, parsed),
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

  const check = await validateAndEvaluateDraft(parsed, "episode");
  if (!check.isValid) {
    const pend = await upsertPendingUpload(media, parsed, check.issues, check.suggestions);
    return {
      handled: true,
      kind: "needs_fix",
      pendingId: pend.id,
      summary: formatPendingReminderMessage(parsed, check.issues, check.suggestions, { kind: "episode" }),
      replyMarkup: buildPendingInlineKeyboard(pend.id, check.issues, check.suggestions, parsed),
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
  const check = await validateAndEvaluateDraft(nextDraft, row.kind);
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
      replyMarkup: buildPendingInlineKeyboard(p.id, check.issues, check.suggestions, nextDraft),
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
    replyMarkup: buildPendingInlineKeyboard(row.id, issues, suggestions, draft),
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

  if (action === "tg_pend_sec") {
    const sec = parts[2] as TgMediaSection;
    const lang = (parts[3] || "") as TgAudioLang;
    if (!["anime", "cartoon", "dubbed", "film"].includes(sec)) return { callbackToast: "قسم غير صالح" };
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
        WHERE s.section IN ('cartoon', 'dubbed')
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
  const bigInt = _req("big-integer");

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
