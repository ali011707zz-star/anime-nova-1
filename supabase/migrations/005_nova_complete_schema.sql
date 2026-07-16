-- ══════════════════════════════════════════════════════════════════════
--  Anime NOVA — Migration 005 — الجداول الكاملة والناقصة
--  شغّل هذا في: Supabase Dashboard → SQL Editor → Run
--  هذا الملف يُنشئ الجداول الناقصة فقط (IF NOT EXISTS) — آمن تماماً
-- ══════════════════════════════════════════════════════════════════════

-- ═══════════════════════════════════════════════════════════════════
-- 1. nova_users — المستخدمون
-- ═══════════════════════════════════════════════════════════════════
CREATE TABLE IF NOT EXISTS nova_users (
  id           TEXT        PRIMARY KEY,
  email        TEXT        UNIQUE,
  username     TEXT        UNIQUE,
  display_name TEXT,
  avatar_url   TEXT,
  bio          TEXT,
  plan         TEXT        NOT NULL DEFAULT 'free' CHECK (plan IN ('free','premium','admin')),
  expires_at   TIMESTAMPTZ,
  created_at   TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at   TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_nova_users_email ON nova_users(email);
CREATE INDEX IF NOT EXISTS idx_nova_users_plan  ON nova_users(plan);

-- ═══════════════════════════════════════════════════════════════════
-- 2. sessions — جلسات المستخدمين
-- ═══════════════════════════════════════════════════════════════════
CREATE TABLE IF NOT EXISTS sessions (
  sid    VARCHAR     PRIMARY KEY,
  sess   JSONB       NOT NULL,
  expire TIMESTAMP   NOT NULL
);
CREATE INDEX IF NOT EXISTS "IDX_session_expire" ON sessions(expire);

-- ═══════════════════════════════════════════════════════════════════
-- 3. pending_verifications — رموز التحقق من البريد
-- ═══════════════════════════════════════════════════════════════════
CREATE TABLE IF NOT EXISTS pending_verifications (
  email      TEXT        PRIMARY KEY,
  code       TEXT        NOT NULL,
  type       TEXT        NOT NULL DEFAULT 'signup',
  expires_at TIMESTAMP   NOT NULL,
  attempts   INTEGER     NOT NULL DEFAULT 0,
  sent_at    TIMESTAMP   NOT NULL DEFAULT NOW()
);

-- ═══════════════════════════════════════════════════════════════════
-- 4. comments — التعليقات (الإصدار الكامل مع الردود)
-- ═══════════════════════════════════════════════════════════════════
CREATE TABLE IF NOT EXISTS comments (
  id                UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id           TEXT        NOT NULL,
  username          TEXT        NOT NULL DEFAULT 'مستخدم',
  avatar_url        TEXT,
  anime_id          INTEGER,
  tmdb_id           TEXT,
  anime_type        TEXT        NOT NULL DEFAULT 'anime',
  episode_number    INTEGER,
  text              TEXT        NOT NULL CHECK (char_length(text) <= 1000),
  likes             INTEGER     NOT NULL DEFAULT 0 CHECK (likes >= 0),
  parent_id         UUID,
  reply_to_username TEXT,
  created_at        TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_comments_anime   ON comments(anime_id, episode_number);
CREATE INDEX IF NOT EXISTS idx_comments_tmdb    ON comments(tmdb_id, episode_number);
CREATE INDEX IF NOT EXISTS idx_comments_user    ON comments(user_id);
CREATE INDEX IF NOT EXISTS idx_comments_parent  ON comments(parent_id);
CREATE INDEX IF NOT EXISTS idx_comments_created ON comments(created_at DESC);

-- ═══════════════════════════════════════════════════════════════════
-- 5. comment_likes — إعجابات التعليقات
-- ═══════════════════════════════════════════════════════════════════
CREATE TABLE IF NOT EXISTS comment_likes (
  comment_id UUID NOT NULL REFERENCES comments(id) ON DELETE CASCADE,
  user_id    TEXT NOT NULL,
  PRIMARY KEY (comment_id, user_id)
);
CREATE INDEX IF NOT EXISTS idx_comment_likes_user ON comment_likes(user_id);

-- ═══════════════════════════════════════════════════════════════════
-- 6. watch_history — سجل المشاهدة
-- ═══════════════════════════════════════════════════════════════════
CREATE TABLE IF NOT EXISTS watch_history (
  id             UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id        TEXT        NOT NULL,
  anime_id       INTEGER,
  tmdb_id        TEXT,
  content_type   TEXT        NOT NULL DEFAULT 'anime',
  episode_number INTEGER,
  season_number  INTEGER,
  title          TEXT,
  cover_url      TEXT,
  watched_at     TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_watch_history_user  ON watch_history(user_id, watched_at DESC);
CREATE INDEX IF NOT EXISTS idx_watch_history_anime ON watch_history(anime_id);
CREATE INDEX IF NOT EXISTS idx_watch_history_tmdb  ON watch_history(tmdb_id);

-- ═══════════════════════════════════════════════════════════════════
-- 7. favorites — المفضلة
-- ═══════════════════════════════════════════════════════════════════
CREATE TABLE IF NOT EXISTS favorites (
  user_id      TEXT        NOT NULL,
  anime_id     INTEGER,
  tmdb_id      TEXT,
  content_type TEXT        NOT NULL DEFAULT 'anime',
  title        TEXT,
  cover_url    TEXT,
  added_at     TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  PRIMARY KEY (user_id, COALESCE(anime_id::TEXT,''), COALESCE(tmdb_id,''))
);
CREATE INDEX IF NOT EXISTS idx_favorites_user ON favorites(user_id, added_at DESC);

-- ═══════════════════════════════════════════════════════════════════
-- 8. watch_progress — تقدم المشاهدة (بالثواني)
-- ═══════════════════════════════════════════════════════════════════
CREATE TABLE IF NOT EXISTS watch_progress (
  user_id        TEXT    NOT NULL,
  anime_id       INTEGER,
  tmdb_id        TEXT,
  content_type   TEXT    NOT NULL DEFAULT 'anime',
  episode_number INTEGER NOT NULL DEFAULT 1,
  season_number  INTEGER NOT NULL DEFAULT 1,
  progress_sec   FLOAT   NOT NULL DEFAULT 0,
  duration_sec   FLOAT,
  updated_at     TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  PRIMARY KEY (user_id, COALESCE(anime_id::TEXT,''), COALESCE(tmdb_id,''), episode_number, season_number)
);
CREATE INDEX IF NOT EXISTS idx_watch_progress_user ON watch_progress(user_id);

-- ═══════════════════════════════════════════════════════════════════
-- 9. ratings — تقييمات المستخدمين
-- ═══════════════════════════════════════════════════════════════════
CREATE TABLE IF NOT EXISTS ratings (
  user_id      TEXT     NOT NULL,
  anime_id     INTEGER,
  tmdb_id      TEXT,
  content_type TEXT     NOT NULL DEFAULT 'anime',
  rating       SMALLINT NOT NULL CHECK (rating BETWEEN 1 AND 10),
  rated_at     TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  PRIMARY KEY (user_id, COALESCE(anime_id::TEXT,''), COALESCE(tmdb_id,''))
);

-- ═══════════════════════════════════════════════════════════════════
-- 10. reports — بلاغات المستخدمين
-- ═══════════════════════════════════════════════════════════════════
CREATE TABLE IF NOT EXISTS reports (
  id                SERIAL      PRIMARY KEY,
  type              TEXT        NOT NULL DEFAULT 'other',
  message           TEXT        NOT NULL,
  page              TEXT,
  user_display_name TEXT,
  created_at        TIMESTAMP   NOT NULL DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_reports_created ON reports(created_at DESC);

-- ═══════════════════════════════════════════════════════════════════
-- 11. source_cache — كاش مصادر الحلقات (L2)
--     expires_at = Unix timestamp بالميلي ثانية
-- ═══════════════════════════════════════════════════════════════════
CREATE TABLE IF NOT EXISTS source_cache (
  cache_key  TEXT   PRIMARY KEY,
  site       TEXT   NOT NULL,
  sources    JSONB  NOT NULL DEFAULT '[]',
  fetched_at BIGINT NOT NULL DEFAULT (EXTRACT(EPOCH FROM NOW()) * 1000)::BIGINT,
  expires_at BIGINT NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_source_cache_expires ON source_cache(expires_at);
CREATE INDEX IF NOT EXISTS idx_source_cache_site    ON source_cache(site);

-- ═══════════════════════════════════════════════════════════════════
-- 12. subtitle_cache — كاش الترجمات (cues JSON)
--     يحفظ الترجمة المعالَجة لمدة 30 يوم
-- ═══════════════════════════════════════════════════════════════════
CREATE TABLE IF NOT EXISTS subtitle_cache (
  cache_key  TEXT   PRIMARY KEY,
  cues       JSONB  NOT NULL DEFAULT '[]',
  fetched_at BIGINT NOT NULL DEFAULT (EXTRACT(EPOCH FROM NOW()) * 1000)::BIGINT,
  expires_at BIGINT NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_subtitle_cache_expires ON subtitle_cache(expires_at);

-- ═══════════════════════════════════════════════════════════════════
-- 13. cdn_cache — كاش HLS manifest (نص m3u8)
-- ═══════════════════════════════════════════════════════════════════
CREATE TABLE IF NOT EXISTS cdn_cache (
  cache_key  TEXT   PRIMARY KEY,
  content    TEXT   NOT NULL,
  ct         TEXT   NOT NULL DEFAULT 'application/vnd.apple.mpegurl',
  fetched_at BIGINT NOT NULL DEFAULT (EXTRACT(EPOCH FROM NOW()) * 1000)::BIGINT,
  expires_at BIGINT NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_cdn_cache_expires ON cdn_cache(expires_at);

-- ═══════════════════════════════════════════════════════════════════
-- 14. translations_cache — كاش ترجمة Google Translate
--     ❌ ناقص في الإصدارات السابقة — أهم جدول للأداء
-- ═══════════════════════════════════════════════════════════════════
CREATE TABLE IF NOT EXISTS translations_cache (
  cache_key  TEXT        PRIMARY KEY,
  translated TEXT        NOT NULL,
  from_lang  TEXT        NOT NULL DEFAULT 'en',
  to_lang    TEXT        NOT NULL DEFAULT 'ar',
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
CREATE INDEX IF NOT EXISTS idx_translations_cache_created ON translations_cache(created_at);

-- ═══════════════════════════════════════════════════════════════════
-- 15. anime_meta_ar — العناوين والأوصاف العربية
--     ❌ ناقص في الإصدارات السابقة
--     يحفظ الترجمة العربية للعنوان والوصف لكل أنمي/فيلم
-- ═══════════════════════════════════════════════════════════════════
CREATE TABLE IF NOT EXISTS anime_meta_ar (
  source_id   TEXT        NOT NULL,
  source_type TEXT        NOT NULL DEFAULT 'anime',  -- 'anime' | 'movie' | 'tv'
  title_ar    TEXT,
  overview_ar TEXT,
  updated_at  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  PRIMARY KEY (source_id, source_type)
);
CREATE INDEX IF NOT EXISTS idx_anime_meta_ar_updated ON anime_meta_ar(updated_at DESC);

-- ═══════════════════════════════════════════════════════════════════
-- 16. app_config — إعدادات التطبيق (key-value)
--     ❌ ناقص في الإصدارات السابقة
-- ═══════════════════════════════════════════════════════════════════
CREATE TABLE IF NOT EXISTS app_config (
  key        TEXT        PRIMARY KEY,
  value      TEXT        NOT NULL,
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- قيم افتراضية للإعدادات
INSERT INTO app_config (key, value) VALUES
  ('maintenance_mode', 'false'),
  ('banner_message', ''),
  ('max_comments_per_day', '20')
ON CONFLICT (key) DO NOTHING;

-- ═══════════════════════════════════════════════════════════════════
-- 17. دالة تجديد الكاش المنتهي (auto-cleanup)
--     ⚠️ يمكن تشغيلها يدوياً أو جدولتها مع pg_cron
-- ═══════════════════════════════════════════════════════════════════
CREATE OR REPLACE FUNCTION cleanup_expired_cache()
RETURNS void LANGUAGE plpgsql AS $$
DECLARE
  now_ms BIGINT := (EXTRACT(EPOCH FROM NOW()) * 1000)::BIGINT;
BEGIN
  DELETE FROM source_cache   WHERE expires_at < now_ms;
  DELETE FROM subtitle_cache WHERE expires_at < now_ms;
  DELETE FROM cdn_cache      WHERE expires_at < now_ms;
  DELETE FROM sessions       WHERE expire < NOW();
  DELETE FROM pending_verifications WHERE expires_at < NOW();
END;
$$;

-- ═══════════════════════════════════════════════════════════════════
-- ملخص الجداول الناقصة التي يُضيفها هذا الملف:
--   ✅ translations_cache — كاش Google Translate (جديد)
--   ✅ anime_meta_ar      — عناوين وأوصاف عربية (جديد)
--   ✅ app_config         — إعدادات التطبيق (جديد)
--   ✅ cleanup_expired_cache() — دالة تنظيف الكاش (جديد)
--
-- جميع الجداول الأخرى: IF NOT EXISTS (آمنة — لا تحذف بيانات)
-- ═══════════════════════════════════════════════════════════════════

SELECT 'Migration 005 applied successfully ✓' AS status;
