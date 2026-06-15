-- ================================================================
-- 002_missing_tables.sql
-- الجداول الناقصة من Supabase — شغّل هذا في Supabase SQL Editor
-- ================================================================

-- ── nova_users ───────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS nova_users (
  id           TEXT PRIMARY KEY,
  email        TEXT UNIQUE,
  username     TEXT UNIQUE,
  display_name TEXT,
  avatar_url   TEXT,
  bio          TEXT,
  created_at   TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at   TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- ── pending_verifications ────────────────────────────────────────
CREATE TABLE IF NOT EXISTS pending_verifications (
  email      TEXT PRIMARY KEY,
  code       TEXT NOT NULL,
  type       TEXT NOT NULL,
  expires_at TIMESTAMP NOT NULL,
  attempts   INTEGER NOT NULL DEFAULT 0,
  sent_at    TIMESTAMP NOT NULL DEFAULT now()
);

-- ── reports ──────────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS reports (
  id                SERIAL PRIMARY KEY,
  type              TEXT NOT NULL DEFAULT 'other',
  message           TEXT NOT NULL,
  page              TEXT,
  user_display_name TEXT,
  created_at        TIMESTAMP NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS idx_reports_created ON reports (created_at DESC);

-- ── sessions ─────────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS sessions (
  sid    VARCHAR PRIMARY KEY,
  sess   JSONB NOT NULL,
  expire TIMESTAMP NOT NULL
);
CREATE INDEX IF NOT EXISTS "IDX_session_expire" ON sessions (expire);

-- ── subtitle_cache ───────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS subtitle_cache (
  cache_key  TEXT PRIMARY KEY,
  cues       JSONB NOT NULL DEFAULT '[]',
  fetched_at BIGINT NOT NULL,
  expires_at BIGINT NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_subtitle_cache_expires ON subtitle_cache (expires_at);

-- ── cdn_cache ────────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS cdn_cache (
  cache_key  TEXT PRIMARY KEY,
  content    TEXT NOT NULL,
  ct         TEXT NOT NULL DEFAULT 'application/vnd.apple.mpegurl',
  fetched_at BIGINT NOT NULL,
  expires_at BIGINT NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_cdn_cache_expires ON cdn_cache (expires_at);

-- ── source_cache (إذا لم تكن موجودة) ────────────────────────────
CREATE TABLE IF NOT EXISTS source_cache (
  cache_key  TEXT PRIMARY KEY,
  site       TEXT NOT NULL,
  sources    JSONB NOT NULL DEFAULT '[]',
  fetched_at BIGINT NOT NULL,
  expires_at BIGINT NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_source_cache_expires ON source_cache (expires_at);
CREATE INDEX IF NOT EXISTS idx_source_cache_site    ON source_cache (site);
