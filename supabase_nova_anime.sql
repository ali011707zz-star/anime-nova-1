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

-- 7. جدول كاش المصادر
CREATE TABLE IF NOT EXISTS source_cache (
  cache_key  TEXT PRIMARY KEY,
  site       TEXT NOT NULL,
  sources    JSONB NOT NULL DEFAULT '[]',
  fetched_at BIGINT NOT NULL,
  expires_at BIGINT NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_source_cache_expires ON source_cache(expires_at);
CREATE INDEX IF NOT EXISTS idx_source_cache_site    ON source_cache(site);

-- تعطيل RLS لكل الجداول (الوصول عبر service_role key فقط)
ALTER TABLE users          DISABLE ROW LEVEL SECURITY;
ALTER TABLE comments       DISABLE ROW LEVEL SECURITY;
ALTER TABLE comment_likes  DISABLE ROW LEVEL SECURITY;
ALTER TABLE watch_history  DISABLE ROW LEVEL SECURITY;
ALTER TABLE favorites      DISABLE ROW LEVEL SECURITY;
ALTER TABLE watch_progress DISABLE ROW LEVEL SECURITY;
ALTER TABLE source_cache   DISABLE ROW LEVEL SECURITY;
