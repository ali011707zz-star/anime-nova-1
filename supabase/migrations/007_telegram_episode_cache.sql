-- ═══════════════════════════════════════════════════════════════════
-- Migration 007: telegram_episode_cache
-- جدول لحفظ روابط الحلقات المُرفوعة على تيليغرام
-- ═══════════════════════════════════════════════════════════════════

CREATE TABLE IF NOT EXISTS telegram_episode_cache (
  -- مفتاح منظَّم: tg:{animeId}:ep{ep:03d}:{quality}:{site}
  id            TEXT        PRIMARY KEY,
  anime_id      INTEGER     NOT NULL,
  ep            INTEGER     NOT NULL,
  title         TEXT,
  quality       TEXT        NOT NULL DEFAULT 'HD',   -- "1080p","720p","480p","360p","HD","SD"
  site          TEXT        NOT NULL,                 -- اسم الـ scraper المصدر
  file_id       TEXT        NOT NULL DEFAULT '',      -- Telegram file_id (دائم)
  file_size     BIGINT,                               -- حجم الملف بالبايت
  duration_sec  INTEGER,                              -- مدة الفيديو بالثواني
  status        TEXT        NOT NULL DEFAULT 'pending'
                CHECK (status IN ('pending','downloading','ready','failed')),
  source_url    TEXT,                                 -- الرابط الأصلي
  caption       TEXT,                                 -- النص المرسل مع الفيديو
  created_at    TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at    TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- فهرس للبحث السريع بـ animeId + ep
CREATE INDEX IF NOT EXISTS idx_tec_anime_ep
  ON telegram_episode_cache (anime_id, ep);

-- فهرس للحالات الجاهزة فقط
CREATE INDEX IF NOT EXISTS idx_tec_ready
  ON telegram_episode_cache (anime_id, ep, status)
  WHERE status = 'ready';

-- فهرس للمهام المعلّقة (للتنظيف)
CREATE INDEX IF NOT EXISTS idx_tec_pending
  ON telegram_episode_cache (status, updated_at)
  WHERE status IN ('pending','downloading');

SELECT 'Migration 007 applied successfully ✓' AS status;
