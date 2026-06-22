-- ══════════════════════════════════════════════════════════════════
--  Anime NOVA — Supabase Migration 002
--  Run this ONCE in: Supabase Dashboard → SQL Editor → Run
-- ══════════════════════════════════════════════════════════════════

-- ── app_config — إعدادات التطبيق الدائمة (SMTP وغيره) ───────────
-- يُخزَّن هنا أي إعداد يجب أن يبقى حتى عند تغيير حساب Replit.
-- الصف الأول يُدرج قيم SMTP — عدّلها بقيمك الحقيقية.

CREATE TABLE IF NOT EXISTS app_config (
  key        TEXT PRIMARY KEY,
  value      TEXT NOT NULL,
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- أدخل إعدادات SMTP هنا مرة واحدة (بدّل القيم بقيمك)
INSERT INTO app_config (key, value) VALUES
  ('smtp_user', 'YOUR_GMAIL@gmail.com'),
  ('smtp_pass', 'YOUR_APP_PASSWORD_HERE'),
  ('smtp_host', 'smtp.gmail.com'),
  ('smtp_port', '587')
ON CONFLICT (key) DO NOTHING;

SELECT 'Migration 002 applied successfully ✓' AS status;
