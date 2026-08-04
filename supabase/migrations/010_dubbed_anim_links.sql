-- ══════════════════════════════════════════════════════════════════
--  dubbed_anim_links — جدول مخصص للأنيميشن المدبلج (AnimeWitcher)
--  بديل أكثر اكتمالاً وتنظيماً من aw_links للقسم المدبلج
-- ══════════════════════════════════════════════════════════════════

CREATE TABLE IF NOT EXISTS dubbed_anim_links (
  id           BIGSERIAL    PRIMARY KEY,
  series_id    TEXT         NOT NULL,
  series_name  TEXT         NOT NULL DEFAULT '',
  series_name_ar TEXT       NOT NULL DEFAULT '',
  ep_number    REAL         NOT NULL,
  ep_id        TEXT         NOT NULL DEFAULT '',
  server       TEXT         NOT NULL,
  quality      TEXT         NOT NULL DEFAULT '720p',
  link         TEXT         NOT NULL,
  imported_at  TIMESTAMPTZ  NOT NULL DEFAULT NOW(),
  CONSTRAINT dubbed_anim_links_uniq UNIQUE(series_id, ep_number, server)
);

CREATE INDEX IF NOT EXISTS dal_series_idx    ON dubbed_anim_links(series_id);
CREATE INDEX IF NOT EXISTS dal_ep_idx        ON dubbed_anim_links(series_id, ep_number);
CREATE INDEX IF NOT EXISTS dal_imported_idx  ON dubbed_anim_links(imported_at DESC);
