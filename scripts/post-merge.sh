#!/bin/bash
set -e
pnpm install --frozen-lockfile

# Run database migrations
psql "$DATABASE_URL" -f supabase/migrations/001_all_tables.sql 2>/dev/null || true
psql "$DATABASE_URL" -f supabase/migrations/002_missing_tables.sql 2>/dev/null || true
psql "$DATABASE_URL" -f supabase/migrations/002_app_config.sql 2>/dev/null || true
psql "$DATABASE_URL" -f supabase/migrations/003_comments_replies.sql 2>/dev/null || true

# Ensure tables from Drizzle schema exist
psql "$DATABASE_URL" -c "
CREATE TABLE IF NOT EXISTS users (
  id VARCHAR PRIMARY KEY DEFAULT gen_random_uuid(),
  email VARCHAR UNIQUE,
  first_name VARCHAR,
  last_name VARCHAR,
  profile_image_url VARCHAR,
  password_hash VARCHAR,
  username VARCHAR,
  display_name VARCHAR,
  profile_image_custom TEXT,
  avatar_color SMALLINT DEFAULT 0,
  email_verified BOOLEAN DEFAULT FALSE,
  verification_code VARCHAR(6),
  verification_expires TIMESTAMP,
  created_at TIMESTAMP DEFAULT NOW(),
  updated_at TIMESTAMP DEFAULT NOW()
);
CREATE TABLE IF NOT EXISTS favorites (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id VARCHAR(128) NOT NULL,
  anime_id INTEGER NOT NULL,
  anime_title TEXT,
  anime_cover TEXT,
  anime_type VARCHAR(16) DEFAULT 'anime',
  tmdb_id VARCHAR(32),
  media_type VARCHAR(8),
  added_at TIMESTAMP DEFAULT NOW()
);
CREATE UNIQUE INDEX IF NOT EXISTS favorites_user_anime_uniq ON favorites(user_id, anime_id);
CREATE TABLE IF NOT EXISTS watch_progress (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id VARCHAR(128) NOT NULL,
  anime_id INTEGER NOT NULL,
  anime_type VARCHAR(16) DEFAULT 'anime',
  episode_number INTEGER NOT NULL DEFAULT 1,
  season_number INTEGER DEFAULT 1,
  tmdb_id VARCHAR(32),
  progress_seconds REAL NOT NULL DEFAULT 0,
  duration_seconds REAL DEFAULT 0,
  updated_at TIMESTAMP DEFAULT NOW()
);
CREATE UNIQUE INDEX IF NOT EXISTS progress_user_anime_ep_uniq ON watch_progress(user_id, anime_id, episode_number, season_number);
CREATE TABLE IF NOT EXISTS app_config (
  key TEXT PRIMARY KEY,
  value TEXT NOT NULL,
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
" 2>/dev/null || true
