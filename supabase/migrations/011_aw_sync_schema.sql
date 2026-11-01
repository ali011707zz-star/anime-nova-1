-- AnimeWitcher sync schema hardening.
-- The production database may have been created before the dubbed cache was
-- introduced, so keep these changes idempotent.

ALTER TABLE IF EXISTS aw_links
  ADD COLUMN IF NOT EXISTS content_type TEXT NOT NULL DEFAULT 'anime';

CREATE INDEX IF NOT EXISTS idx_aw_links_content_type
  ON aw_links(content_type);

CREATE TABLE IF NOT EXISTS dubbed_anim_links (
  id             BIGSERIAL PRIMARY KEY,
  series_id      TEXT NOT NULL,
  series_name    TEXT NOT NULL DEFAULT '',
  series_name_ar TEXT NOT NULL DEFAULT '',
  ep_number      REAL NOT NULL,
  ep_id          TEXT NOT NULL DEFAULT '',
  server         TEXT NOT NULL,
  quality        TEXT NOT NULL DEFAULT '720p',
  link           TEXT NOT NULL,
  imported_at    TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Allow one server to expose more than one quality tier.
CREATE UNIQUE INDEX IF NOT EXISTS dubbed_anim_links_uniq_v2
  ON dubbed_anim_links(series_id, ep_number, server, quality);

CREATE INDEX IF NOT EXISTS dal_series_idx
  ON dubbed_anim_links(series_id);

CREATE INDEX IF NOT EXISTS dal_ep_idx
  ON dubbed_anim_links(series_id, ep_number);

CREATE INDEX IF NOT EXISTS dal_imported_idx
  ON dubbed_anim_links(imported_at DESC);