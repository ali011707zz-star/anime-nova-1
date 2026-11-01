-- Admin usage analytics used by the Nova Control dashboard.
-- Safe to run more than once on an existing production database.

CREATE TABLE IF NOT EXISTS analytics_sessions (
  id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  session_key     TEXT UNIQUE NOT NULL,
  platform        TEXT NOT NULL CHECK (platform IN ('web', 'mobile')),
  visitor_id      TEXT NOT NULL,
  user_id         TEXT,
  anime_id        TEXT,
  episode_number  INTEGER,
  anime_title     TEXT,
  source          TEXT,
  started_at      TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  last_seen_at    TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_analytics_sessions_seen
  ON analytics_sessions(last_seen_at);

CREATE TABLE IF NOT EXISTS analytics_episode_views (
  id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  event_key       TEXT UNIQUE NOT NULL,
  platform        TEXT NOT NULL CHECK (platform IN ('web', 'mobile')),
  visitor_id      TEXT NOT NULL,
  user_id         TEXT,
  anime_id        TEXT NOT NULL,
  episode_number  INTEGER NOT NULL,
  anime_title     TEXT,
  source          TEXT,
  viewed_at       TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_analytics_views_time
  ON analytics_episode_views(viewed_at);
