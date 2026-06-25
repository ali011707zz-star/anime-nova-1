-- ═══════════════════════════════════════════════════════════════════════════
-- 003_fix_tables.sql
-- شغّل هذا في Supabase → SQL Editor
-- يُصحّح جداول comments/reports ويضيف translations_cache + anime_meta_ar
-- ═══════════════════════════════════════════════════════════════════════════

-- ───── 1. تصحيح جدول comments (الإنشاء بالمخطط الصحيح) ─────
DROP TABLE IF EXISTS comment_likes CASCADE;
DROP TABLE IF EXISTS comments CASCADE;

CREATE TABLE comments (
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
  created_at        TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
CREATE INDEX idx_comments_anime   ON comments(anime_id, episode_number);
CREATE INDEX idx_comments_tmdb    ON comments(tmdb_id, episode_number);
CREATE INDEX idx_comments_user    ON comments(user_id);
CREATE INDEX idx_comments_parent  ON comments(parent_id);

CREATE TABLE comment_likes (
  comment_id UUID NOT NULL,
  user_id    TEXT NOT NULL,
  PRIMARY KEY (comment_id, user_id)
);

-- ───── 2. تصحيح جدول reports ─────
DROP TABLE IF EXISTS reports CASCADE;
CREATE TABLE reports (
  id                SERIAL PRIMARY KEY,
  type              TEXT NOT NULL DEFAULT 'other',
  message           TEXT NOT NULL,
  page              TEXT,
  user_display_name TEXT,
  created_at        TIMESTAMP NOT NULL DEFAULT NOW()
);
CREATE INDEX idx_reports_created ON reports(created_at DESC);

-- ───── 3. جدول كاش الترجمات ─────
CREATE TABLE IF NOT EXISTS translations_cache (
  cache_key    TEXT PRIMARY KEY,
  translated   TEXT NOT NULL,
  from_lang    TEXT NOT NULL DEFAULT 'en',
  to_lang      TEXT NOT NULL DEFAULT 'ar',
  created_at   TIMESTAMPTZ DEFAULT NOW()
);

-- ───── 4. جدول العناوين والأوصاف العربية للأنمي ─────
CREATE TABLE IF NOT EXISTS anime_meta_ar (
  source_id    TEXT NOT NULL,
  source_type  TEXT NOT NULL DEFAULT 'anime',
  title_ar     TEXT,
  overview_ar  TEXT,
  updated_at   TIMESTAMPTZ DEFAULT NOW(),
  PRIMARY KEY (source_id, source_type)
);

-- ───── 5. باقي الجداول الأساسية (إذا كانت ناقصة) ─────
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

CREATE TABLE IF NOT EXISTS app_config (
  key        TEXT PRIMARY KEY,
  value      TEXT NOT NULL,
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

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

-- ═══════════════════════════════════════════════════════════════════════════
-- انتهى — يمكنك إغلاق SQL Editor الآن
-- ═══════════════════════════════════════════════════════════════════════════
