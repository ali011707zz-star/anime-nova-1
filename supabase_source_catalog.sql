-- Nova source catalog
-- Catalog pages are stored; final MP4/HLS playback URLs are resolved on demand.
-- Apply once to the Supabase project used by the VPS.

CREATE TABLE IF NOT EXISTS source_catalog_titles (
  id BIGSERIAL PRIMARY KEY,
  provider TEXT NOT NULL CHECK (provider IN ('animeify', 'anslayer', 'sanime', 'anifox')),
  provider_title_id TEXT NOT NULL,
  title TEXT NOT NULL,
  title_en TEXT,
  title_ar TEXT,
  title_native TEXT,
  synonyms JSONB NOT NULL DEFAULT '[]'::jsonb,
  genres JSONB NOT NULL DEFAULT '[]'::jsonb,
  tags JSONB NOT NULL DEFAULT '[]'::jsonb,
  media_type TEXT,
  status TEXT,
  release_year INTEGER,
  episode_count INTEGER,
  poster_url TEXT,
  backdrop_url TEXT,
  provider_metadata JSONB NOT NULL DEFAULT '{}'::jsonb,
  catalog_status TEXT NOT NULL DEFAULT 'catalogued'
    CHECK (catalog_status IN ('catalogued', 'details_checked', 'partial', 'failed')),
  first_seen_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  last_seen_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  details_checked_at TIMESTAMPTZ,
  last_error TEXT,
  UNIQUE (provider, provider_title_id)
);

CREATE INDEX IF NOT EXISTS source_catalog_titles_provider_idx
  ON source_catalog_titles(provider);
CREATE INDEX IF NOT EXISTS source_catalog_titles_provider_title_idx
  ON source_catalog_titles(provider, title);
CREATE INDEX IF NOT EXISTS source_catalog_titles_title_idx
  ON source_catalog_titles USING gin (to_tsvector('simple', title));
CREATE INDEX IF NOT EXISTS source_catalog_titles_seen_idx
  ON source_catalog_titles(last_seen_at DESC);

CREATE TABLE IF NOT EXISTS source_catalog_episodes (
  id BIGSERIAL PRIMARY KEY,
  title_id BIGINT NOT NULL REFERENCES source_catalog_titles(id) ON DELETE CASCADE,
  provider TEXT NOT NULL CHECK (provider IN ('animeify', 'anslayer', 'sanime', 'anifox')),
  provider_episode_id TEXT NOT NULL,
  season_number INTEGER NOT NULL DEFAULT 1,
  episode_number NUMERIC(10, 2),
  episode_label TEXT,
  title TEXT,
  air_date TEXT,
  episode_status TEXT NOT NULL DEFAULT 'episode_found'
    CHECK (episode_status IN ('episode_found', 'link_found', 'media_verified', 'dead', 'unsupported', 'failed')),
  provider_metadata JSONB NOT NULL DEFAULT '{}'::jsonb,
  first_seen_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  last_seen_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  details_checked_at TIMESTAMPTZ,
  last_error TEXT,
  UNIQUE (title_id, provider_episode_id)
);

CREATE INDEX IF NOT EXISTS source_catalog_episodes_title_idx
  ON source_catalog_episodes(title_id, season_number, episode_number);
CREATE INDEX IF NOT EXISTS source_catalog_episodes_provider_idx
  ON source_catalog_episodes(provider, last_seen_at DESC);

CREATE TABLE IF NOT EXISTS source_catalog_servers (
  id BIGSERIAL PRIMARY KEY,
  episode_id BIGINT NOT NULL REFERENCES source_catalog_episodes(id) ON DELETE CASCADE,
  provider TEXT NOT NULL CHECK (provider IN ('animeify', 'anslayer', 'sanime', 'anifox')),
  server_key TEXT NOT NULL,
  server_name TEXT,
  quality TEXT,
  language TEXT,
  source_kind TEXT NOT NULL DEFAULT 'provider_reference',
  page_url TEXT,
  source_host TEXT,
  availability_status TEXT NOT NULL DEFAULT 'link_found'
    CHECK (availability_status IN ('link_found', 'media_verified', 'dead', 'unsupported')),
  provider_metadata JSONB NOT NULL DEFAULT '{}'::jsonb,
  first_seen_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  last_seen_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  last_checked_at TIMESTAMPTZ,
  UNIQUE (episode_id, server_key, quality, language)
);

CREATE INDEX IF NOT EXISTS source_catalog_servers_episode_idx
  ON source_catalog_servers(episode_id);
CREATE INDEX IF NOT EXISTS source_catalog_servers_episode_quality_idx
  ON source_catalog_servers(episode_id, quality, availability_status);
CREATE INDEX IF NOT EXISTS source_catalog_servers_provider_idx
  ON source_catalog_servers(provider, availability_status);
CREATE INDEX IF NOT EXISTS source_catalog_servers_page_host_idx
  ON source_catalog_servers(provider, source_host);

-- The tables may already exist from the first catalog import. Keep this file
-- idempotent and add the page URL column without touching existing records.
ALTER TABLE source_catalog_servers
  ADD COLUMN IF NOT EXISTS page_url TEXT;

-- These are public catalog records, not credentials or playback URLs.
-- Keep RLS enabled and expose only SELECT to the anon role through the API
-- route, which uses the server-side Supabase key.
ALTER TABLE source_catalog_titles ENABLE ROW LEVEL SECURITY;
ALTER TABLE source_catalog_episodes ENABLE ROW LEVEL SECURITY;
ALTER TABLE source_catalog_servers ENABLE ROW LEVEL SECURITY;