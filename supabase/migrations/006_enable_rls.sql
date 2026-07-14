-- ══════════════════════════════════════════════════════════════════
--  Anime NOVA — Migration 006: Enable Row Level Security
--  Run in: Supabase Dashboard → SQL Editor → Run
--
--  المشكلة: الجداول مكشوفة للعامة (rls_disabled_in_public)
--  الحل: تفعيل RLS على كل الجداول
--  ملاحظة: service_role key يتجاوز RLS تلقائياً → الـ API server لا يتأثر
-- ══════════════════════════════════════════════════════════════════

-- ── تفعيل RLS على جميع الجداول ──────────────────────────────────
ALTER TABLE IF EXISTS source_cache     ENABLE ROW LEVEL SECURITY;
ALTER TABLE IF EXISTS comments         ENABLE ROW LEVEL SECURITY;
ALTER TABLE IF EXISTS comment_likes    ENABLE ROW LEVEL SECURITY;
ALTER TABLE IF EXISTS nova_users       ENABLE ROW LEVEL SECURITY;
ALTER TABLE IF EXISTS watch_history    ENABLE ROW LEVEL SECURITY;
ALTER TABLE IF EXISTS favorites        ENABLE ROW LEVEL SECURITY;
ALTER TABLE IF EXISTS watch_progress   ENABLE ROW LEVEL SECURITY;
ALTER TABLE IF EXISTS ratings          ENABLE ROW LEVEL SECURITY;
ALTER TABLE IF EXISTS app_config       ENABLE ROW LEVEL SECURITY;

-- ── السماح للـ anon key بقراءة source_cache فقط (اختياري — إن كان الـ frontend يقرأها مباشرة) ──
-- source_cache: للقراءة فقط (لا تحتوي على بيانات مستخدمين)
DROP POLICY IF EXISTS "source_cache_read_anon" ON source_cache;
CREATE POLICY "source_cache_read_anon"
  ON source_cache FOR SELECT
  USING (true);

-- ── التعليقات: قراءة عامة ─────────────────────────────────────────
DROP POLICY IF EXISTS "comments_read_all" ON comments;
CREATE POLICY "comments_read_all"
  ON comments FOR SELECT
  USING (true);

-- ── باقي العمليات تتم عبر service_role (API server) الذي يتجاوز RLS تلقائياً ──
-- لا حاجة لإضافة policies إضافية طالما كل الكتابة تمر عبر الـ backend

SELECT 'Migration 006: RLS enabled on all tables ✓' AS status;
