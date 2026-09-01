-- Device linking: a short-lived phone code creates a revocable TV session.
CREATE TABLE IF NOT EXISTS device_link_codes (
  id                 UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id            UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  code_hash          TEXT NOT NULL,
  expires_at         TIMESTAMPTZ NOT NULL,
  attempts           INTEGER NOT NULL DEFAULT 0,
  claimed_at         TIMESTAMPTZ,
  claimed_device_id  TEXT,
  created_at         TIMESTAMPTZ NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS idx_device_link_codes_hash_active
  ON device_link_codes(code_hash, claimed_at, expires_at);
CREATE INDEX IF NOT EXISTS idx_device_link_codes_user_active
  ON device_link_codes(user_id, claimed_at, expires_at);

CREATE TABLE IF NOT EXISTS linked_devices (
  id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id     UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  device_id   TEXT NOT NULL,
  device_name TEXT NOT NULL DEFAULT 'Android TV',
  platform    TEXT NOT NULL DEFAULT 'android-tv',
  linked_at   TIMESTAMPTZ NOT NULL DEFAULT now(),
  last_seen_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  revoked_at  TIMESTAMPTZ,
  UNIQUE(user_id, device_id)
);
CREATE INDEX IF NOT EXISTS idx_linked_devices_user_active
  ON linked_devices(user_id, revoked_at, linked_at DESC);

-- The API has a narrowly scoped VPS PostgreSQL fallback when Supabase REST
-- does not yet expose these tables. Keep both schemas aligned.