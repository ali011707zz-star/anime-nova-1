/**
 * supabaseMigrate.ts
 * يتحقق من وجود الجداول في Supabase، وإن لم تكن موجودة
 * يطبعها في اللوج ليتمكن المستخدم من تشغيلها في SQL Editor.
 * كذلك يُشغّل migration مباشرةً على PostgreSQL (DATABASE_URL) عند الحاجة.
 */
import { logger } from "./logger.js";
import { sbSelect } from "./supabaseClient.js";
import pg from "pg";

const { Pool } = pg;

// SQL لإنشاء كل الجداول المطلوبة
export const SETUP_SQL = `
-- ملف migration لـ Nova Anime — شغّل هذا في Supabase SQL Editor

CREATE TABLE IF NOT EXISTS users (
  id                   UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  email                TEXT UNIQUE,
  username             TEXT UNIQUE,
  display_name         TEXT,
  first_name           TEXT,
  last_name            TEXT,
  password_hash        TEXT,
  profile_image_url    TEXT,
  profile_image_custom TEXT,
  avatar_color         INTEGER DEFAULT 0,
  email_verified       BOOLEAN DEFAULT FALSE,
  plan                 TEXT DEFAULT 'free',
  expires_at           TIMESTAMPTZ,
  auth_type            TEXT DEFAULT 'email',
  google_id            TEXT,
  github_id            TEXT,
  created_at           TIMESTAMPTZ DEFAULT NOW(),
  updated_at           TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS pending_verifications (
  email      TEXT PRIMARY KEY,
  code       TEXT NOT NULL,
  type       TEXT NOT NULL DEFAULT 'signup',
  expires_at TIMESTAMPTZ NOT NULL,
  attempts   INTEGER DEFAULT 0,
  sent_at    TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS sessions (
  sid    TEXT PRIMARY KEY,
  sess   JSONB NOT NULL,
  expire TIMESTAMPTZ NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_sessions_expire ON sessions(expire);

CREATE TABLE IF NOT EXISTS watch_history (
  id         UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id    UUID REFERENCES users(id) ON DELETE CASCADE,
  anime_id   TEXT NOT NULL,
  episode    INTEGER NOT NULL,
  title      TEXT,
  image      TEXT,
  watched_at TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE(user_id, anime_id, episode)
);
CREATE INDEX IF NOT EXISTS idx_wh_user ON watch_history(user_id);

CREATE TABLE IF NOT EXISTS favorites (
  id       UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id  UUID REFERENCES users(id) ON DELETE CASCADE,
  anime_id TEXT NOT NULL,
  title    TEXT,
  image    TEXT,
  added_at TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE(user_id, anime_id)
);
CREATE INDEX IF NOT EXISTS idx_fav_user ON favorites(user_id);

CREATE TABLE IF NOT EXISTS watch_progress (
  id         UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id    UUID REFERENCES users(id) ON DELETE CASCADE,
  anime_id   TEXT NOT NULL,
  episode    INTEGER NOT NULL,
  progress   FLOAT DEFAULT 0,
  duration   FLOAT DEFAULT 0,
  updated_at TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE(user_id, anime_id, episode)
);
CREATE INDEX IF NOT EXISTS idx_wp_user ON watch_progress(user_id);

CREATE TABLE IF NOT EXISTS comments (
  id                UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id           TEXT        NOT NULL,
  username          TEXT        NOT NULL DEFAULT 'مستخدم',
  user_handle       TEXT,
  avatar_url        TEXT,
  anime_id          INTEGER,
  tmdb_id           TEXT,
  anime_type        TEXT        NOT NULL DEFAULT 'anime',
  episode_number    INTEGER,
  text              TEXT        NOT NULL CHECK (char_length(text) <= 1000),
  likes             INTEGER     NOT NULL DEFAULT 0 CHECK (likes >= 0),
  parent_id         UUID,
  reply_to_username TEXT,
  created_at        TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
-- إضافة الأعمدة الناقصة إن كان الجدول موجوداً بمخطط قديم
ALTER TABLE comments ADD COLUMN IF NOT EXISTS user_handle       TEXT;
ALTER TABLE comments ADD COLUMN IF NOT EXISTS username          TEXT NOT NULL DEFAULT 'مستخدم';
ALTER TABLE comments ADD COLUMN IF NOT EXISTS user_id           TEXT NOT NULL DEFAULT '';
ALTER TABLE comments ADD COLUMN IF NOT EXISTS anime_type        TEXT NOT NULL DEFAULT 'anime';
ALTER TABLE comments ADD COLUMN IF NOT EXISTS tmdb_id           TEXT;
ALTER TABLE comments ADD COLUMN IF NOT EXISTS anime_id          INTEGER;
ALTER TABLE comments ADD COLUMN IF NOT EXISTS episode_number    INTEGER;
ALTER TABLE comments ADD COLUMN IF NOT EXISTS text              TEXT;
ALTER TABLE comments ADD COLUMN IF NOT EXISTS parent_id         UUID;
ALTER TABLE comments ADD COLUMN IF NOT EXISTS reply_to_username TEXT;
CREATE INDEX IF NOT EXISTS idx_comments_anime   ON comments(anime_id, episode_number);
CREATE INDEX IF NOT EXISTS idx_comments_tmdb    ON comments(tmdb_id, episode_number);
CREATE INDEX IF NOT EXISTS idx_comments_user    ON comments(user_id);
CREATE INDEX IF NOT EXISTS idx_comments_parent  ON comments(parent_id);

-- إضافة أعمدة ناقصة في users (safe migration)
ALTER TABLE users ADD COLUMN IF NOT EXISTS plan                 TEXT DEFAULT 'free';
ALTER TABLE users ADD COLUMN IF NOT EXISTS expires_at           TIMESTAMPTZ;
ALTER TABLE users ADD COLUMN IF NOT EXISTS auth_type            TEXT DEFAULT 'email';
ALTER TABLE users ADD COLUMN IF NOT EXISTS google_id            TEXT;
ALTER TABLE users ADD COLUMN IF NOT EXISTS github_id            TEXT;
ALTER TABLE users ADD COLUMN IF NOT EXISTS profile_image_custom TEXT;
ALTER TABLE users ADD COLUMN IF NOT EXISTS avatar_color         INTEGER DEFAULT 0;
ALTER TABLE users ADD COLUMN IF NOT EXISTS verification_code    TEXT;
ALTER TABLE users ADD COLUMN IF NOT EXISTS verification_expires TIMESTAMPTZ;

CREATE TABLE IF NOT EXISTS comment_likes (
  user_id    UUID REFERENCES users(id) ON DELETE CASCADE,
  comment_id UUID REFERENCES comments(id) ON DELETE CASCADE,
  PRIMARY KEY(user_id, comment_id)
);

CREATE TABLE IF NOT EXISTS source_cache (
  cache_key  TEXT PRIMARY KEY,
  sources    JSONB NOT NULL DEFAULT '[]',
  site       TEXT,
  fetched_at BIGINT,
  expires_at TIMESTAMPTZ NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS subtitle_cache (
  cache_key  TEXT PRIMARY KEY,
  vtt        TEXT,
  cues       JSONB,
  fetched_at BIGINT,
  expires_at TIMESTAMPTZ NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS cdn_cache (
  url        TEXT PRIMARY KEY,
  status     INTEGER,
  ok         BOOLEAN,
  checked_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS reports (
  id                SERIAL PRIMARY KEY,
  type              TEXT NOT NULL DEFAULT 'other',
  message           TEXT NOT NULL,
  page              TEXT,
  user_display_name TEXT,
  created_at        TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS app_config (
  key        TEXT PRIMARY KEY,
  value      TEXT NOT NULL,
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- جدول كاش الترجمات: يخزّن ترجمة أي نص (عنوان، وصف، حلقة) إلى العربية
CREATE TABLE IF NOT EXISTS translations_cache (
  cache_key    TEXT PRIMARY KEY,
  translated   TEXT NOT NULL,
  from_lang    TEXT NOT NULL DEFAULT 'en',
  to_lang      TEXT NOT NULL DEFAULT 'ar',
  created_at   TIMESTAMPTZ DEFAULT NOW()
);

-- جدول الميتاداتا العربية للأنمي والأنيميشن
CREATE TABLE IF NOT EXISTS anime_meta_ar (
  source_id    TEXT NOT NULL,
  source_type  TEXT NOT NULL DEFAULT 'anime',
  title_ar     TEXT,
  overview_ar  TEXT,
  updated_at   TIMESTAMPTZ DEFAULT NOW(),
  PRIMARY KEY (source_id, source_type)
);

-- جدول كاش بيانات AniList/Jikan الوصفية
CREATE TABLE IF NOT EXISTS anime_meta_cache (
  cache_key   TEXT PRIMARY KEY,
  data        JSONB NOT NULL,
  source      TEXT DEFAULT 'anilist',
  ttl_seconds INTEGER DEFAULT 21600,
  created_at  TIMESTAMPTZ DEFAULT NOW()
);

-- جدول كاش البوستر والقصة (بحث بـ anilist_id مباشرة)
CREATE TABLE IF NOT EXISTS anime_poster_cache (
  anilist_id  INTEGER PRIMARY KEY,
  cover_url   TEXT,
  synopsis    TEXT,
  updated_at  TIMESTAMPTZ DEFAULT NOW()
);

-- Expo push tokens used by the background episode notification scheduler
CREATE TABLE IF NOT EXISTS mobile_push_tokens (
  token        TEXT PRIMARY KEY,
  user_id      UUID,
  platform     TEXT NOT NULL DEFAULT 'android',
  app_version  TEXT,
  created_at   TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  last_seen_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  disabled_at  TIMESTAMPTZ
);
ALTER TABLE mobile_push_tokens ADD COLUMN IF NOT EXISTS user_id UUID;
CREATE INDEX IF NOT EXISTS idx_mobile_push_tokens_active
  ON mobile_push_tokens(disabled_at, last_seen_at DESC);
CREATE INDEX IF NOT EXISTS idx_mobile_push_tokens_user_active
  ON mobile_push_tokens(user_id, disabled_at);

-- Device-link codes are short-lived and stored as hashes only.
CREATE TABLE IF NOT EXISTS device_link_codes (
  id                 UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id            UUID NOT NULL,
  code_hash          TEXT NOT NULL,
  expires_at         TIMESTAMPTZ NOT NULL,
  attempts           INTEGER NOT NULL DEFAULT 0,
  claimed_at         TIMESTAMPTZ,
  claimed_device_id  TEXT,
  created_at         TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_device_link_codes_hash_active
  ON device_link_codes(code_hash, claimed_at, expires_at);
CREATE INDEX IF NOT EXISTS idx_device_link_codes_user_active
  ON device_link_codes(user_id, claimed_at, expires_at);

CREATE TABLE IF NOT EXISTS linked_devices (
  id            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id       UUID NOT NULL,
  device_id     TEXT NOT NULL,
  device_name   TEXT NOT NULL DEFAULT 'Android TV',
  platform      TEXT NOT NULL DEFAULT 'android-tv',
  linked_at     TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  last_seen_at  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  revoked_at    TIMESTAMPTZ,
  UNIQUE(user_id, device_id)
);
CREATE INDEX IF NOT EXISTS idx_linked_devices_user_active
  ON linked_devices(user_id, revoked_at, linked_at DESC);
`;

const REQUIRED_TABLES = [
  "users", "pending_verifications", "watch_history", "favorites",
  "translations_cache", "anime_meta_ar", "anime_meta_cache", "anime_poster_cache",
  // Shared L2 cache tables — verify these at startup so cache failures are visible.
  "source_cache", "subtitle_cache", "cdn_cache", "telegram_episode_cache",
  "mobile_push_tokens", "device_link_codes", "linked_devices",
];

// ── PostgreSQL direct migration (للـ Replit PostgreSQL) ──────────────────────
const PG_MIGRATION_SQL = `
CREATE TABLE IF NOT EXISTS users (
  id                   UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  email                TEXT UNIQUE,
  username             TEXT UNIQUE,
  display_name         TEXT,
  first_name           TEXT,
  last_name            TEXT,
  password_hash        TEXT,
  profile_image_url    TEXT,
  profile_image_custom TEXT,
  avatar_color         INTEGER DEFAULT 0,
  email_verified       BOOLEAN DEFAULT FALSE,
  plan                 TEXT DEFAULT 'free',
  expires_at           TIMESTAMPTZ,
  auth_type            TEXT DEFAULT 'email',
  google_id            TEXT,
  github_id            TEXT,
  created_at           TIMESTAMPTZ DEFAULT NOW(),
  updated_at           TIMESTAMPTZ DEFAULT NOW()
);
CREATE TABLE IF NOT EXISTS pending_verifications (
  email      TEXT PRIMARY KEY,
  code       TEXT NOT NULL,
  type       TEXT NOT NULL DEFAULT 'signup',
  expires_at TIMESTAMPTZ NOT NULL,
  attempts   INTEGER DEFAULT 0,
  sent_at    TIMESTAMPTZ DEFAULT NOW()
);
CREATE TABLE IF NOT EXISTS sessions (
  sid    TEXT PRIMARY KEY,
  sess   JSONB NOT NULL,
  expire TIMESTAMPTZ NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_sessions_expire ON sessions(expire);
CREATE TABLE IF NOT EXISTS watch_history (
  id         UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id    UUID REFERENCES users(id) ON DELETE CASCADE,
  anime_id   TEXT NOT NULL,
  episode    INTEGER NOT NULL,
  title      TEXT,
  image      TEXT,
  watched_at TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE(user_id, anime_id, episode)
);
CREATE INDEX IF NOT EXISTS idx_wh_user ON watch_history(user_id);
CREATE TABLE IF NOT EXISTS favorites (
  id       UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id  UUID REFERENCES users(id) ON DELETE CASCADE,
  anime_id TEXT NOT NULL,
  title    TEXT,
  image    TEXT,
  added_at TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE(user_id, anime_id)
);
CREATE INDEX IF NOT EXISTS idx_fav_user ON favorites(user_id);
CREATE TABLE IF NOT EXISTS watch_progress (
  id         UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id    UUID REFERENCES users(id) ON DELETE CASCADE,
  anime_id   TEXT NOT NULL,
  episode    INTEGER NOT NULL,
  progress   FLOAT DEFAULT 0,
  duration   FLOAT DEFAULT 0,
  updated_at TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE(user_id, anime_id, episode)
);
CREATE INDEX IF NOT EXISTS idx_wp_user ON watch_progress(user_id);
CREATE TABLE IF NOT EXISTS comments (
  id                UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id           TEXT NOT NULL,
  username          TEXT NOT NULL DEFAULT 'مستخدم',
  avatar_url        TEXT,
  anime_id          INTEGER,
  tmdb_id           TEXT,
  anime_type        TEXT NOT NULL DEFAULT 'anime',
  episode_number    INTEGER,
  text              TEXT NOT NULL CHECK (char_length(text) <= 1000),
  likes             INTEGER NOT NULL DEFAULT 0 CHECK (likes >= 0),
  parent_id         UUID,
  reply_to_username TEXT,
  user_handle       TEXT,
  created_at        TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
ALTER TABLE comments ADD COLUMN IF NOT EXISTS user_handle TEXT;
-- إضافة أعمدة ناقصة في users إن وُجد الجدول بدون بعضها
ALTER TABLE users ADD COLUMN IF NOT EXISTS plan                 TEXT DEFAULT 'free';
ALTER TABLE users ADD COLUMN IF NOT EXISTS expires_at           TIMESTAMPTZ;
ALTER TABLE users ADD COLUMN IF NOT EXISTS auth_type            TEXT DEFAULT 'email';
ALTER TABLE users ADD COLUMN IF NOT EXISTS google_id            TEXT;
ALTER TABLE users ADD COLUMN IF NOT EXISTS github_id            TEXT;
ALTER TABLE users ADD COLUMN IF NOT EXISTS profile_image_custom TEXT;
ALTER TABLE users ADD COLUMN IF NOT EXISTS avatar_color         INTEGER DEFAULT 0;
ALTER TABLE users ADD COLUMN IF NOT EXISTS verification_code    TEXT;
ALTER TABLE users ADD COLUMN IF NOT EXISTS verification_expires TIMESTAMPTZ;
CREATE INDEX IF NOT EXISTS idx_comments_anime   ON comments(anime_id, episode_number);
CREATE INDEX IF NOT EXISTS idx_comments_tmdb    ON comments(tmdb_id, episode_number);
CREATE INDEX IF NOT EXISTS idx_comments_user    ON comments(user_id);
CREATE INDEX IF NOT EXISTS idx_comments_parent  ON comments(parent_id);
CREATE TABLE IF NOT EXISTS comment_likes (
  comment_id UUID NOT NULL,
  user_id    TEXT NOT NULL,
  PRIMARY KEY (comment_id, user_id)
);
CREATE TABLE IF NOT EXISTS source_cache (
  cache_key  TEXT PRIMARY KEY,
  sources    JSONB NOT NULL DEFAULT '[]',
  site       TEXT,
  fetched_at BIGINT,
  expires_at TIMESTAMPTZ NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW()
);
CREATE TABLE IF NOT EXISTS subtitle_cache (
  cache_key  TEXT PRIMARY KEY,
  vtt        TEXT,
  cues       JSONB,
  fetched_at BIGINT,
  expires_at TIMESTAMPTZ NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW()
);
CREATE TABLE IF NOT EXISTS cdn_cache (
  url        TEXT PRIMARY KEY,
  status     INTEGER,
  ok         BOOLEAN,
  checked_at TIMESTAMPTZ DEFAULT NOW()
);
CREATE TABLE IF NOT EXISTS reports (
  id                SERIAL PRIMARY KEY,
  type              TEXT NOT NULL DEFAULT 'other',
  message           TEXT NOT NULL,
  page              TEXT,
  user_display_name TEXT,
  created_at        TIMESTAMP NOT NULL DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_reports_created ON reports(created_at DESC);
CREATE TABLE IF NOT EXISTS app_config (
  key        TEXT PRIMARY KEY,
  value      TEXT NOT NULL,
  updated_at TIMESTAMPTZ DEFAULT NOW()
);
CREATE TABLE IF NOT EXISTS translations_cache (
  cache_key    TEXT PRIMARY KEY,
  translated   TEXT NOT NULL,
  from_lang    TEXT NOT NULL DEFAULT 'en',
  to_lang      TEXT NOT NULL DEFAULT 'ar',
  created_at   TIMESTAMPTZ DEFAULT NOW()
);
CREATE TABLE IF NOT EXISTS anime_meta_ar (
  source_id    TEXT NOT NULL,
  source_type  TEXT NOT NULL DEFAULT 'anime',
  title_ar     TEXT,
  overview_ar  TEXT,
  updated_at   TIMESTAMPTZ DEFAULT NOW(),
  PRIMARY KEY (source_id, source_type)
);
CREATE TABLE IF NOT EXISTS anime_meta_cache (
  cache_key   TEXT PRIMARY KEY,
  data        JSONB NOT NULL,
  source      TEXT DEFAULT 'anilist',
  ttl_seconds INTEGER DEFAULT 21600,
  created_at  TIMESTAMPTZ DEFAULT NOW()
);
CREATE TABLE IF NOT EXISTS anime_poster_cache (
  anilist_id  INTEGER PRIMARY KEY,
  cover_url   TEXT,
  synopsis    TEXT,
  updated_at  TIMESTAMPTZ DEFAULT NOW()
);
CREATE TABLE IF NOT EXISTS notifications (
  id          SERIAL PRIMARY KEY,
  type        TEXT NOT NULL DEFAULT 'episode_new',
  title       TEXT NOT NULL,
  title_ar    TEXT,
  body        TEXT,
  image_url   TEXT,
  link_path   TEXT,
  anime_id    TEXT,
  tmdb_id     INTEGER,
  episode_num INTEGER,
  is_read     BOOLEAN DEFAULT FALSE,
  created_at  TIMESTAMPTZ DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_notifications_created ON notifications(created_at DESC);
CREATE INDEX IF NOT EXISTS idx_notifications_unread  ON notifications(is_read) WHERE is_read = FALSE;
CREATE TABLE IF NOT EXISTS mobile_push_tokens (
  token        TEXT PRIMARY KEY,
  user_id      UUID,
  platform     TEXT NOT NULL DEFAULT 'android',
  app_version  TEXT,
  created_at   TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  last_seen_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  disabled_at  TIMESTAMPTZ
);
ALTER TABLE mobile_push_tokens ADD COLUMN IF NOT EXISTS user_id UUID;
CREATE INDEX IF NOT EXISTS idx_mobile_push_tokens_active
  ON mobile_push_tokens(disabled_at, last_seen_at DESC);
CREATE INDEX IF NOT EXISTS idx_mobile_push_tokens_user_active
  ON mobile_push_tokens(user_id, disabled_at);
CREATE TABLE IF NOT EXISTS device_link_codes (
  id                 UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id            UUID NOT NULL,
  code_hash          TEXT NOT NULL,
  expires_at         TIMESTAMPTZ NOT NULL,
  attempts           INTEGER NOT NULL DEFAULT 0,
  claimed_at         TIMESTAMPTZ,
  claimed_device_id  TEXT,
  created_at         TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
-- The VPS fallback stores users that are owned by Supabase, not local users.
ALTER TABLE device_link_codes DROP CONSTRAINT IF EXISTS device_link_codes_user_id_fkey;
CREATE INDEX IF NOT EXISTS idx_device_link_codes_hash_active
  ON device_link_codes(code_hash, claimed_at, expires_at);
CREATE INDEX IF NOT EXISTS idx_device_link_codes_user_active
  ON device_link_codes(user_id, claimed_at, expires_at);
CREATE TABLE IF NOT EXISTS linked_devices (
  id            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id       UUID NOT NULL,
  device_id     TEXT NOT NULL,
  device_name   TEXT NOT NULL DEFAULT 'Android TV',
  platform      TEXT NOT NULL DEFAULT 'android-tv',
  linked_at     TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  last_seen_at  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  revoked_at    TIMESTAMPTZ,
  UNIQUE(user_id, device_id)
);
CREATE INDEX IF NOT EXISTS idx_linked_devices_user_active
  ON linked_devices(user_id, revoked_at, linked_at DESC);
`;

/** يُنشئ الجداول مباشرةً في Replit PostgreSQL عند الـ startup */
export async function runPostgresMigration(): Promise<void> {
  const dbUrl = process.env.DATABASE_URL;
  if (!dbUrl) {
    logger.warn("[pg-migrate] DATABASE_URL غير موجود — تخطّي");
    return;
  }
  const pool = new Pool({ connectionString: dbUrl });
  try {
    // Split by semicolons and run each statement separately
    const statements = PG_MIGRATION_SQL
      .split(";")
      .map(s => s.trim())
      .filter(s => s.length > 0 && !s.startsWith("--"));
    for (const stmt of statements) {
      try {
        await pool.query(stmt);
      } catch (e: any) {
        // Ignore already-exists errors
        if (!e.message?.includes("already exists")) {
          logger.warn({ err: e.message, stmt: stmt.slice(0, 80) }, "[pg-migrate] تحذير");
        }
      }
    }
    logger.info("[pg-migrate] ✅ جداول PostgreSQL جاهزة (translations_cache + anime_meta_ar مُضافة)");
  } catch (e: any) {
    logger.error({ err: e.message }, "[pg-migrate] ❌ فشل migration PostgreSQL");
  } finally {
    await pool.end().catch(() => {});
  }
}

export async function runSupabaseMigration(): Promise<void> {
  // دائماً شغّل migration على PostgreSQL أولاً (Replit native DB)
  await runPostgresMigration();

  const supabaseUrl = process.env.SUPABASE_URL;
  const serviceKey  = process.env.SUPABASE_SERVICE_KEY || process.env.SUPABASE_SERVICE_ROLE_KEY;

  if (!supabaseUrl || !serviceKey) {
    logger.warn("[migrate] SUPABASE_URL أو SUPABASE_SERVICE_KEY غير موجود — تخطّي Supabase");
    return;
  }

  logger.info("[migrate] 🔍 التحقق من جداول Supabase...");

  // تحقق من وجود كل جدول عبر REST API
  const missing: string[] = [];
  for (const table of REQUIRED_TABLES) {
    try {
      const rows = await sbSelect(table, {}, { limit: 1 });
      // إذا وصلنا هنا بدون خطأ → الجدول موجود
      void rows;
    } catch {
      missing.push(table);
    }
  }

  // أيضاً تحقق عبر HTTP response بدلاً من try/catch
  const missingFromHttp: string[] = [];
  for (const table of REQUIRED_TABLES) {
    const url = `${supabaseUrl.replace(/\/$/, "")}/rest/v1/${table}?select=*&limit=1`;
    try {
      const res = await fetch(url, {
        headers: {
          "apikey":        serviceKey,
          "Authorization": `Bearer ${serviceKey}`,
        },
        signal: AbortSignal.timeout(6000),
      });
      // أي استجابة غير ناجحة = الجدول غير موجود أو مشكلة أخرى
      if (!res.ok) {
        missingFromHttp.push(table);
        const body = await res.text().catch(() => "");
        logger.warn({ table, status: res.status, detail: body.slice(0, 150) }, "[migrate] جدول مفقود");
      }
    } catch (e: any) {
      missingFromHttp.push(table);
      logger.warn({ table, err: e.message }, "[migrate] تعذّر الوصول للجدول");
    }
  }

  const allMissing = [...new Set([...missingFromHttp])];

  // ── تصحيح نوع expires_at: BIGINT → TIMESTAMPTZ إن كان خاطئاً ─────────────
  // السبب: الجدول كان يُنشأ يدوياً في Supabase بـ BIGINT بدلاً من TIMESTAMPTZ
  try {
    const colUrl = `${supabaseUrl.replace(/\/$/, "")}/rest/v1/rpc/sql`;
    // نستخدم information_schema للتحقق من النوع
    const checkUrl = `${supabaseUrl.replace(/\/$/, "")}/rest/v1/source_cache?select=expires_at&limit=1`;
    const checkRes = await fetch(checkUrl, {
      headers: { "apikey": serviceKey, "Authorization": `Bearer ${serviceKey}`, "Accept": "application/json" },
      signal: AbortSignal.timeout(5000),
    });
    if (checkRes.ok) {
      const rows = await checkRes.json().catch(() => []);
      if (Array.isArray(rows) && rows.length > 0 && typeof rows[0]?.expires_at === "number") {
        // الحقل bigint (رقم) بدلاً من timestamptz (نص ISO) → نصحح عبر RPC
        logger.warn("[migrate] ⚠️ source_cache.expires_at نوعه BIGINT — يجب تغييره إلى TIMESTAMPTZ في Supabase SQL Editor:");
        logger.warn("[migrate] ALTER TABLE source_cache ALTER COLUMN expires_at TYPE TIMESTAMPTZ USING to_timestamp(expires_at/1000.0) AT TIME ZONE 'UTC';");
      }
    }
  } catch { /* not critical */ }

  if (allMissing.length === 0) {
    logger.info("[migrate] ✅ كل الجداول موجودة في Supabase");
    return;
  }

  logger.warn({ tables: allMissing }, "[migrate] ⚠️ الجداول التالية غير موجودة في Supabase");
  logger.warn("[migrate] ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━");
  logger.warn("[migrate] يجب تشغيل هذا SQL في Supabase SQL Editor:");
  logger.warn("[migrate] https://supabase.com/dashboard/project/_/sql");
  logger.warn("[migrate] ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━");
  logger.warn("[migrate] GET /api/admin/db-setup لعرض SQL كامل");
  logger.warn("[migrate] ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━");
}

/** تُرجع حالة الجداول */
export async function getTableStatus(): Promise<Record<string, boolean>> {
  const supabaseUrl = process.env.SUPABASE_URL;
  const serviceKey  = process.env.SUPABASE_SERVICE_KEY || process.env.SUPABASE_SERVICE_ROLE_KEY;
  if (!supabaseUrl || !serviceKey) return {};

  const status: Record<string, boolean> = {};
  for (const table of REQUIRED_TABLES) {
    const url = `${supabaseUrl.replace(/\/$/, "")}/rest/v1/${table}?select=*&limit=1`;
    try {
      const res = await fetch(url, {
        headers: { "apikey": serviceKey, "Authorization": `Bearer ${serviceKey}` },
        signal: AbortSignal.timeout(5000),
      });
      status[table] = res.ok;
    } catch {
      status[table] = false;
    }
  }
  return status;
}
