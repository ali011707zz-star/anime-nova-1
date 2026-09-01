-- Expo push tokens used for new-episode notifications when the app is closed.
CREATE TABLE IF NOT EXISTS mobile_push_tokens (
  token        TEXT PRIMARY KEY,
  platform     TEXT NOT NULL DEFAULT 'android',
  app_version  TEXT,
  created_at   TIMESTAMPTZ NOT NULL DEFAULT now(),
  last_seen_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  disabled_at  TIMESTAMPTZ
);

CREATE INDEX IF NOT EXISTS idx_mobile_push_tokens_active
  ON mobile_push_tokens(disabled_at, last_seen_at DESC);