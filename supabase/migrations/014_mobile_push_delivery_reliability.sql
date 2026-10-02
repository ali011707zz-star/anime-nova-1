-- Repair token ownership for databases created from migration 013 and add a
-- durable, per-device queue for Expo tickets and receipts.
ALTER TABLE mobile_push_tokens
  ADD COLUMN IF NOT EXISTS user_id UUID;

CREATE INDEX IF NOT EXISTS idx_mobile_push_tokens_user_active
  ON mobile_push_tokens(user_id, disabled_at);

CREATE TABLE IF NOT EXISTS mobile_push_deliveries (
  id BIGSERIAL PRIMARY KEY,
  event_key TEXT NOT NULL,
  token TEXT NOT NULL,
  payload_json TEXT NOT NULL,
  status TEXT NOT NULL DEFAULT 'queued'
    CHECK (status IN ('queued', 'retry', 'ticket_pending', 'sent', 'invalid_token', 'failed')),
  attempts INTEGER NOT NULL DEFAULT 0,
  next_attempt_at TIMESTAMPTZ,
  ticket_id TEXT,
  last_error TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  UNIQUE(event_key, token)
);

CREATE INDEX IF NOT EXISTS idx_mobile_push_deliveries_due
  ON mobile_push_deliveries(status, next_attempt_at);