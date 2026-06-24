/**
 * supabaseMigrate.ts
 * يتحقق من وجود الجداول في Supabase، وإن لم تكن موجودة
 * يطبعها في اللوج ليتمكن المستخدم من تشغيلها في SQL Editor.
 */
import { logger } from "./logger.js";
import { sbSelect } from "./supabaseClient.js";

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
  id         UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id    UUID REFERENCES users(id) ON DELETE CASCADE,
  anime_id   TEXT NOT NULL,
  episode    INTEGER,
  content    TEXT NOT NULL,
  likes      INTEGER DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_comments_anime ON comments(anime_id, episode);

CREATE TABLE IF NOT EXISTS comment_likes (
  user_id    UUID REFERENCES users(id) ON DELETE CASCADE,
  comment_id UUID REFERENCES comments(id) ON DELETE CASCADE,
  PRIMARY KEY(user_id, comment_id)
);

CREATE TABLE IF NOT EXISTS source_cache (
  cache_key  TEXT PRIMARY KEY,
  sources    JSONB NOT NULL DEFAULT '[]',
  site       TEXT,
  expires_at TIMESTAMPTZ NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS subtitle_cache (
  cache_key  TEXT PRIMARY KEY,
  vtt        TEXT NOT NULL,
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
  id         UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id    UUID REFERENCES users(id) ON DELETE SET NULL,
  anime_id   TEXT,
  episode    INTEGER,
  reason     TEXT,
  details    TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS app_config (
  key        TEXT PRIMARY KEY,
  value      TEXT NOT NULL,
  updated_at TIMESTAMPTZ DEFAULT NOW()
);
`;

const REQUIRED_TABLES = ["users", "pending_verifications", "watch_history", "favorites"];

export async function runSupabaseMigration(): Promise<void> {
  const supabaseUrl = process.env.SUPABASE_URL;
  const serviceKey  = process.env.SUPABASE_SERVICE_KEY || process.env.SUPABASE_SERVICE_ROLE_KEY;

  if (!supabaseUrl || !serviceKey) {
    logger.warn("[migrate] SUPABASE_URL أو SUPABASE_SERVICE_KEY غير موجود — تخطّي");
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
