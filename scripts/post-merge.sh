#!/bin/bash
set -e
<<<<<<< HEAD
pnpm install --frozen-lockfile
pnpm --filter db push
=======

# Install all dependencies including devDependencies needed for build
echo "y" | NODE_ENV=development pnpm install --no-frozen-lockfile

# Build API server and frontend
NODE_ENV=development pnpm --filter @workspace/api-server run build 2>&1 || true
NODE_ENV=development pnpm --filter @workspace/anime-scraper run build 2>&1 || true

# Install Python dependencies for CF Proxy and Whisper Service
.pythonlibs/bin/pip install flask curl_cffi faster-whisper 2>/dev/null || pip install flask curl_cffi faster-whisper 2>/dev/null || true

# Run database migrations (idempotent — safe to re-run)
python3 -c "
import os, psycopg2
conn = psycopg2.connect(os.environ['DATABASE_URL'])
conn.autocommit = True
cur = conn.cursor()
cur.execute('''
CREATE TABLE IF NOT EXISTS source_cache (
  cache_key  TEXT PRIMARY KEY,
  site       TEXT NOT NULL,
  sources    JSONB NOT NULL DEFAULT '[]',
  fetched_at BIGINT NOT NULL DEFAULT (EXTRACT(EPOCH FROM NOW()) * 1000)::BIGINT,
  expires_at BIGINT NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_source_cache_expires ON source_cache(expires_at);
CREATE INDEX IF NOT EXISTS idx_source_cache_site    ON source_cache(site);

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
  created_at      TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  parent_id       UUID REFERENCES comments(id) ON DELETE CASCADE,
  reply_to_username TEXT
);
CREATE INDEX IF NOT EXISTS idx_comments_anime   ON comments(anime_id, episode_number);
CREATE INDEX IF NOT EXISTS idx_comments_tmdb    ON comments(tmdb_id, episode_number);
CREATE INDEX IF NOT EXISTS idx_comments_user    ON comments(user_id);
CREATE INDEX IF NOT EXISTS idx_comments_created ON comments(created_at DESC);
CREATE INDEX IF NOT EXISTS idx_comments_parent  ON comments(parent_id);

CREATE TABLE IF NOT EXISTS comment_likes (
  comment_id UUID NOT NULL REFERENCES comments(id) ON DELETE CASCADE,
  user_id    TEXT NOT NULL,
  PRIMARY KEY (comment_id, user_id)
);
CREATE INDEX IF NOT EXISTS idx_comment_likes_user ON comment_likes(user_id);

CREATE TABLE IF NOT EXISTS users (
  id                    VARCHAR PRIMARY KEY DEFAULT gen_random_uuid()::text,
  email                 VARCHAR UNIQUE,
  first_name            VARCHAR,
  last_name             VARCHAR,
  profile_image_url     VARCHAR,
  password_hash         VARCHAR,
  username              VARCHAR,
  display_name          VARCHAR,
  profile_image_custom  TEXT,
  avatar_color          SMALLINT DEFAULT 0,
  email_verified        BOOLEAN DEFAULT false,
  verification_code     VARCHAR(6),
  verification_expires  TIMESTAMP,
  created_at            TIMESTAMP DEFAULT NOW(),
  updated_at            TIMESTAMP DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS sessions (
  sid    VARCHAR PRIMARY KEY,
  sess   JSONB NOT NULL,
  expire TIMESTAMP NOT NULL
);
CREATE INDEX IF NOT EXISTS \"IDX_session_expire\" ON sessions (expire);

CREATE TABLE IF NOT EXISTS pending_verifications (
  email      TEXT PRIMARY KEY,
  code       TEXT NOT NULL,
  type       TEXT NOT NULL,
  expires_at TIMESTAMP NOT NULL,
  attempts   INTEGER NOT NULL DEFAULT 0,
  sent_at    TIMESTAMP NOT NULL DEFAULT now()
);

CREATE TABLE IF NOT EXISTS reports (
  id                SERIAL PRIMARY KEY,
  type              TEXT NOT NULL DEFAULT 'other',
  message           TEXT NOT NULL,
  page              TEXT,
  user_display_name TEXT,
  created_at        TIMESTAMP NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS idx_reports_created ON reports (created_at DESC);

CREATE TABLE IF NOT EXISTS subtitle_cache (
  cache_key  TEXT PRIMARY KEY,
  cues       JSONB NOT NULL DEFAULT '[]',
  fetched_at BIGINT NOT NULL,
  expires_at BIGINT NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_subtitle_cache_expires ON subtitle_cache (expires_at);

CREATE TABLE IF NOT EXISTS cdn_cache (
  cache_key  TEXT PRIMARY KEY,
  content    TEXT NOT NULL,
  ct         TEXT NOT NULL DEFAULT 'application/vnd.apple.mpegurl',
  fetched_at BIGINT NOT NULL,
  expires_at BIGINT NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_cdn_cache_expires ON cdn_cache (expires_at);

CREATE TABLE IF NOT EXISTS app_config (
  key        TEXT PRIMARY KEY,
  value      TEXT NOT NULL,
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS watch_history (
  id             UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id        VARCHAR(128) NOT NULL,
  anime_id       INTEGER     NOT NULL,
  anime_title    TEXT,
  anime_cover    TEXT,
  anime_type     VARCHAR(16) DEFAULT 'anime',
  episode_number INTEGER     NOT NULL DEFAULT 1,
  season_number  INTEGER     DEFAULT 1,
  tmdb_id        VARCHAR(32),
  media_type     VARCHAR(8),
  watched_at     TIMESTAMP   DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_watch_history_user  ON watch_history(user_id, watched_at DESC);
CREATE INDEX IF NOT EXISTS idx_watch_history_anime ON watch_history(anime_id);

CREATE TABLE IF NOT EXISTS favorites (
  id          UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id     VARCHAR(128) NOT NULL,
  anime_id    INTEGER     NOT NULL,
  anime_title TEXT,
  anime_cover TEXT,
  anime_type  VARCHAR(16) DEFAULT 'anime',
  tmdb_id     VARCHAR(32),
  media_type  VARCHAR(8),
  added_at    TIMESTAMP   DEFAULT NOW()
);
CREATE UNIQUE INDEX IF NOT EXISTS favorites_user_anime_uniq ON favorites(user_id, anime_id);

CREATE TABLE IF NOT EXISTS watch_progress (
  id               UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id          VARCHAR(128) NOT NULL,
  anime_id         INTEGER     NOT NULL,
  anime_type       VARCHAR(16) DEFAULT 'anime',
  episode_number   INTEGER     NOT NULL DEFAULT 1,
  season_number    INTEGER     DEFAULT 1,
  tmdb_id          VARCHAR(32),
  progress_seconds REAL        NOT NULL DEFAULT 0,
  duration_seconds REAL        DEFAULT 0,
  updated_at       TIMESTAMP   DEFAULT NOW()
);
CREATE UNIQUE INDEX IF NOT EXISTS progress_user_anime_ep_uniq ON watch_progress(user_id, anime_id, episode_number, season_number);
''')
print('[post-merge] All database tables ensured OK')
conn.close()
" 2>&1 || echo '[post-merge] DB migration warning (may already exist)'
>>>>>>> 22277ebee9275f51cb7b54c9b3300c5144e2c175
