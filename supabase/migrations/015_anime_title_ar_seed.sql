-- Verified Arabic anime names use the existing anime_meta_ar table.
-- source_id is the AniList ID as text; source_type separates title records
-- from other Arabic metadata already stored in that table.
--
-- Sources: The Dubbing Database documents these exact Arabic dub titles and
-- the corresponding Arabic broadcaster/platform. AniList IDs and English
-- identities were checked against AniList Media(id) for the listed release.
--
-- Insert-only on conflict: existing records are preserved and never replaced.
INSERT INTO anime_meta_ar (source_id, source_type, title_ar, updated_at)
VALUES
  ('20', 'anime_title_ar', 'ناروتو', NOW()),
  ('136', 'anime_title_ar', 'القناص', NOW()),
  ('170', 'anime_title_ar', 'سلام دانك', NOW()),
  ('235', 'anime_title_ar', 'المحقق كونان', NOW()),
  ('21459', 'anime_title_ar', 'أكاديمية بطلي', NOW())
ON CONFLICT (source_id, source_type) DO NOTHING;
