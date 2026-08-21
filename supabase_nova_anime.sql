-- ═══════════════════════════════════════════════════════
--  Nova Anime — إنشاء الجداول في Supabase
--  شغّل هذا الـ SQL في SQL Editor في Supabase
-- ═══════════════════════════════════════════════════════

-- 1. جدول المستخدمين
CREATE TABLE IF NOT EXISTS users (
  id                   TEXT PRIMARY KEY DEFAULT gen_random_uuid()::text,
  email                TEXT UNIQUE,
  first_name           TEXT,
  last_name            TEXT,
  profile_image_url    TEXT,
  password_hash        TEXT,
  username             TEXT,
  display_name         TEXT,
  profile_image_custom TEXT,
  avatar_color         SMALLINT DEFAULT 0,
  email_verified       BOOLEAN DEFAULT FALSE,
  verification_code    VARCHAR(6),
  verification_expires TIMESTAMP,
  created_at           TIMESTAMP DEFAULT NOW(),
  updated_at           TIMESTAMP DEFAULT NOW()
);

-- 2. جدول التعليقات
CREATE TABLE IF NOT EXISTS comments (
  id             UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id        VARCHAR(128) NOT NULL,
  username       VARCHAR(64)  NOT NULL DEFAULT 'مستخدم',
  avatar_url     TEXT,
  anime_id       INTEGER,
  episode_number INTEGER,
  anime_type     VARCHAR(16) DEFAULT 'anime',
  tmdb_id        VARCHAR(32),
  text           TEXT NOT NULL,
  likes          INTEGER NOT NULL DEFAULT 0,
  created_at     TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at     TIMESTAMP NOT NULL DEFAULT NOW()
);

-- 3. جدول إعجابات التعليقات
CREATE TABLE IF NOT EXISTS comment_likes (
  id         UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  comment_id UUID NOT NULL REFERENCES comments(id) ON DELETE CASCADE,
  user_id    VARCHAR(128) NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  UNIQUE(comment_id, user_id)
);

-- 4. جدول سجل المشاهدة
CREATE TABLE IF NOT EXISTS watch_history (
  id             UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id        VARCHAR(128) NOT NULL,
  anime_id       INTEGER NOT NULL,
  anime_title    TEXT,
  anime_cover    TEXT,
  anime_type     VARCHAR(16) DEFAULT 'anime',
  episode_number INTEGER NOT NULL DEFAULT 1,
  season_number  INTEGER DEFAULT 1,
  tmdb_id        VARCHAR(32),
  media_type     VARCHAR(8),
  watched_at     TIMESTAMP DEFAULT NOW()
);

-- 5. جدول المفضلة
CREATE TABLE IF NOT EXISTS favorites (
  id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id     VARCHAR(128) NOT NULL,
  anime_id    INTEGER NOT NULL,
  anime_title TEXT,
  anime_cover TEXT,
  anime_type  VARCHAR(16) DEFAULT 'anime',
  tmdb_id     VARCHAR(32),
  media_type  VARCHAR(8),
  added_at    TIMESTAMP DEFAULT NOW(),
  UNIQUE(user_id, anime_id)
);

-- 6. جدول تقدم المشاهدة
CREATE TABLE IF NOT EXISTS watch_progress (
  id               UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id          VARCHAR(128) NOT NULL,
  anime_id         INTEGER NOT NULL,
  anime_type       VARCHAR(16) DEFAULT 'anime',
  episode_number   INTEGER NOT NULL DEFAULT 1,
  season_number    INTEGER DEFAULT 1,
  tmdb_id          VARCHAR(32),
  progress_seconds REAL NOT NULL DEFAULT 0,
  duration_seconds REAL DEFAULT 0,
  updated_at       TIMESTAMP DEFAULT NOW(),
  UNIQUE(user_id, anime_id, episode_number, season_number)
);

CREATE TABLE IF NOT EXISTS analytics_sessions (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  session_key TEXT UNIQUE NOT NULL,
  platform TEXT NOT NULL CHECK (platform IN ('web', 'mobile')),
  visitor_id TEXT NOT NULL,
  user_id TEXT,
  anime_id TEXT,
  episode_number INTEGER,
  anime_title TEXT,
  source TEXT,
  started_at TIMESTAMPTZ DEFAULT NOW(),
  last_seen_at TIMESTAMPTZ DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_analytics_sessions_seen ON analytics_sessions(last_seen_at);

CREATE TABLE IF NOT EXISTS analytics_episode_views (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  event_key TEXT UNIQUE NOT NULL,
  platform TEXT NOT NULL CHECK (platform IN ('web', 'mobile')),
  visitor_id TEXT NOT NULL,
  user_id TEXT,
  anime_id TEXT NOT NULL,
  episode_number INTEGER NOT NULL,
  anime_title TEXT,
  source TEXT,
  viewed_at TIMESTAMPTZ DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_analytics_views_time ON analytics_episode_views(viewed_at);

-- 7. جدول رموز التحقق المعلقة
CREATE TABLE IF NOT EXISTS pending_verifications (
  email       TEXT PRIMARY KEY,
  code        TEXT NOT NULL,
  type        TEXT NOT NULL DEFAULT 'signup',
  expires_at  TIMESTAMPTZ NOT NULL,
  attempts    INT NOT NULL DEFAULT 0,
  sent_at     TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- 8. جدول كاش المصادر
CREATE TABLE IF NOT EXISTS source_cache (
  cache_key  TEXT PRIMARY KEY,
  site       TEXT NOT NULL,
  sources    JSONB NOT NULL DEFAULT '[]',
  fetched_at BIGINT NOT NULL,
  expires_at BIGINT NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_source_cache_expires ON source_cache(expires_at);
CREATE INDEX IF NOT EXISTS idx_source_cache_site    ON source_cache(site);

CREATE TABLE IF NOT EXISTS subtitle_cache (
  cache_key  TEXT PRIMARY KEY,
  cues       JSONB NOT NULL DEFAULT '[]',
  fetched_at BIGINT NOT NULL,
  expires_at BIGINT NOT NULL
);

-- تعطيل RLS لكل الجداول (الوصول عبر service_role key فقط)
ALTER TABLE users          DISABLE ROW LEVEL SECURITY;
ALTER TABLE comments       DISABLE ROW LEVEL SECURITY;
ALTER TABLE comment_likes  DISABLE ROW LEVEL SECURITY;
ALTER TABLE watch_history  DISABLE ROW LEVEL SECURITY;
ALTER TABLE favorites      DISABLE ROW LEVEL SECURITY;
ALTER TABLE watch_progress         DISABLE ROW LEVEL SECURITY;
ALTER TABLE source_cache           DISABLE ROW LEVEL SECURITY;
ALTER TABLE subtitle_cache         DISABLE ROW LEVEL SECURITY;
ALTER TABLE pending_verifications  DISABLE ROW LEVEL SECURITY;

-- ── anime_poster_cache — كاش البوستر والقصة بـ anilist_id ──────────
-- يُخزَّن تلقائياً عند جلب بيانات من AniList؛ يُستخدم fallback عندما يتوقف img.anili.st
CREATE TABLE IF NOT EXISTS anime_poster_cache (
  anilist_id  INTEGER     PRIMARY KEY,
  cover_url   TEXT,
  synopsis    TEXT,
  updated_at  TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
ALTER TABLE anime_poster_cache DISABLE ROW LEVEL SECURITY;

-- ── anime — عناوين وslugs متعددة اللغات لتحسين مطابقة السكرابر ─────────
CREATE TABLE IF NOT EXISTS anime (
  anilist_id  INTEGER PRIMARY KEY,
  titles      JSONB NOT NULL DEFAULT '[]'::jsonb,
  slugs       JSONB NOT NULL DEFAULT '[]'::jsonb,
  updated_at  TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_anime_slugs ON anime USING GIN (slugs);
ALTER TABLE anime DISABLE ROW LEVEL SECURITY;

-- ── site_cookies — تخزين كوكيز CF دائم (يصمد بعد restart) ───────────
-- يُستخدم لـ anime3rb cf_clearance: يُجدَّد مرة/20ساعة عبر nopecha
CREATE TABLE IF NOT EXISTS site_cookies (
  site        TEXT        PRIMARY KEY,
  cookie_str  TEXT        NOT NULL,
  updated_at  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  expires_at  TIMESTAMPTZ NOT NULL
);
ALTER TABLE site_cookies DISABLE ROW LEVEL SECURITY;
