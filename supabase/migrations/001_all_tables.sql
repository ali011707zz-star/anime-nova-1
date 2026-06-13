-- ══════════════════════════════════════════════════════════════════
--  Nova Anime — Supabase Migration  001
--  Run this ONCE in: Supabase Dashboard → SQL Editor → Run
-- ══════════════════════════════════════════════════════════════════

-- ── 1. source_cache — حفظ سيرفرات الحلقات (L2 Cache) ─────────────
CREATE TABLE IF NOT EXISTS source_cache (
  cache_key  TEXT        PRIMARY KEY,
  site       TEXT        NOT NULL,
  sources    JSONB       NOT NULL DEFAULT '[]',
  fetched_at BIGINT      NOT NULL DEFAULT (EXTRACT(EPOCH FROM NOW()) * 1000)::BIGINT,
  expires_at BIGINT      NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_source_cache_expires ON source_cache(expires_at);
CREATE INDEX IF NOT EXISTS idx_source_cache_site    ON source_cache(site);

-- ── 2. comments — تعليقات الأنمي والأنيميشن ──────────────────────
CREATE TABLE IF NOT EXISTS comments (
  id              UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id         TEXT        NOT NULL,
  username        TEXT        NOT NULL DEFAULT 'مستخدم',
  avatar_url      TEXT,
  anime_id        INTEGER,
  tmdb_id         TEXT,
  anime_type      TEXT        NOT NULL DEFAULT 'anime',
  episode_number  INTEGER,
  text            TEXT        NOT NULL CHECK (char_length(text) <= 1000),
  likes           INTEGER     NOT NULL DEFAULT 0 CHECK (likes >= 0),
  created_at      TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_comments_anime   ON comments(anime_id, episode_number);
CREATE INDEX IF NOT EXISTS idx_comments_tmdb    ON comments(tmdb_id, episode_number);
CREATE INDEX IF NOT EXISTS idx_comments_user    ON comments(user_id);
CREATE INDEX IF NOT EXISTS idx_comments_created ON comments(created_at DESC);

-- ── 3. comment_likes ──────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS comment_likes (
  comment_id UUID NOT NULL REFERENCES comments(id) ON DELETE CASCADE,
  user_id    TEXT NOT NULL,
  PRIMARY KEY (comment_id, user_id)
);
CREATE INDEX IF NOT EXISTS idx_comment_likes_user ON comment_likes(user_id);

-- ── 4. users — بيانات المستخدمين ─────────────────────────────────
CREATE TABLE IF NOT EXISTS nova_users (
  id           TEXT        PRIMARY KEY,
  email        TEXT        UNIQUE,
  username     TEXT        UNIQUE,
  display_name TEXT,
  avatar_url   TEXT,
  bio          TEXT,
  created_at   TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at   TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- ── 5. watch_history — سجل المشاهدة ──────────────────────────────
CREATE TABLE IF NOT EXISTS watch_history (
  id             UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id        TEXT        NOT NULL,
  anime_id       INTEGER,
  tmdb_id        TEXT,
  content_type   TEXT        NOT NULL DEFAULT 'anime',
  episode_number INTEGER,
  season_number  INTEGER,
  title          TEXT,
  cover_url      TEXT,
  watched_at     TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_watch_history_user ON watch_history(user_id, watched_at DESC);
CREATE INDEX IF NOT EXISTS idx_watch_history_anime ON watch_history(anime_id);

-- ── 6. favorites — المفضلة ────────────────────────────────────────
CREATE TABLE IF NOT EXISTS favorites (
  user_id      TEXT        NOT NULL,
  anime_id     INTEGER,
  tmdb_id      TEXT,
  content_type TEXT        NOT NULL DEFAULT 'anime',
  title        TEXT,
  cover_url    TEXT,
  added_at     TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  PRIMARY KEY (user_id, COALESCE(anime_id::TEXT, ''), COALESCE(tmdb_id, ''))
);
CREATE INDEX IF NOT EXISTS idx_favorites_user ON favorites(user_id, added_at DESC);

-- ── 7. watch_progress — تقدم المشاهدة ────────────────────────────
CREATE TABLE IF NOT EXISTS watch_progress (
  user_id        TEXT    NOT NULL,
  anime_id       INTEGER,
  tmdb_id        TEXT,
  content_type   TEXT    NOT NULL DEFAULT 'anime',
  episode_number INTEGER NOT NULL DEFAULT 1,
  season_number  INTEGER NOT NULL DEFAULT 1,
  progress_sec   FLOAT   NOT NULL DEFAULT 0,
  duration_sec   FLOAT,
  updated_at     TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  PRIMARY KEY (user_id, COALESCE(anime_id::TEXT,''), COALESCE(tmdb_id,''), episode_number, season_number)
);
CREATE INDEX IF NOT EXISTS idx_watch_progress_user ON watch_progress(user_id);

-- ── 8. ratings — تقييمات المستخدمين ──────────────────────────────
CREATE TABLE IF NOT EXISTS ratings (
  user_id      TEXT    NOT NULL,
  anime_id     INTEGER,
  tmdb_id      TEXT,
  content_type TEXT    NOT NULL DEFAULT 'anime',
  rating       SMALLINT NOT NULL CHECK (rating BETWEEN 1 AND 10),
  rated_at     TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  PRIMARY KEY (user_id, COALESCE(anime_id::TEXT,''), COALESCE(tmdb_id,''))
);

-- ── تفعيل Row Level Security (اختياري — يمنع الوصول غير المصرّح به)
-- ALTER TABLE comments       ENABLE ROW LEVEL SECURITY;
-- ALTER TABLE comment_likes  ENABLE ROW LEVEL SECURITY;
-- ALTER TABLE watch_history  ENABLE ROW LEVEL SECURITY;
-- ALTER TABLE favorites      ENABLE ROW LEVEL SECURITY;
-- ALTER TABLE watch_progress ENABLE ROW LEVEL SECURITY;
-- ALTER TABLE ratings        ENABLE ROW LEVEL SECURITY;

-- ── تنظيف source_cache المنتهي تلقائياً (نظف كل ساعة) ─────────────
-- يُنفَّذ من الكود (setInterval) — لا حاجة لـ pg_cron هنا.

SELECT 'Migration 001 applied successfully ✓' AS status;
