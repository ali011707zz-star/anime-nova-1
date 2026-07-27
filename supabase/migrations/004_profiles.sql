-- ================================================================
-- 004_profiles.sql
-- نظام الاشتراكات — شغّل هذا في Supabase SQL Editor
-- ================================================================

-- ── 1. إضافة حقول الاشتراك لجدول المستخدمين ────────────────────
ALTER TABLE users ADD COLUMN IF NOT EXISTS plan       TEXT NOT NULL DEFAULT 'free'
  CHECK (plan IN ('free', 'premium', 'admin'));
ALTER TABLE users ADD COLUMN IF NOT EXISTS expires_at TIMESTAMPTZ;

-- ── 2. فهرس للخطط ──────────────────────────────────────────────
CREATE INDEX IF NOT EXISTS idx_users_plan ON users(plan);

-- ── 3. واجهة profiles (VIEW) — قراءة فقط ───────────────────────
CREATE OR REPLACE VIEW profiles AS
  SELECT
    id          AS user_id,
    email,
    plan,
    expires_at,
    created_at
  FROM users;

-- ── 4. تنظيف الاشتراكات المنتهية تلقائياً (دالة مساعدة) ────────
CREATE OR REPLACE FUNCTION expire_plans()
RETURNS void LANGUAGE plpgsql AS $$
BEGIN
  UPDATE users
     SET plan = 'free', expires_at = NULL
   WHERE plan = 'premium'
     AND expires_at IS NOT NULL
     AND expires_at < NOW();
END;
$$;
