/**
 * emailService.ts
 * ─────────────────────────────────────────────────────
 * إرسال بريد إلكتروني عبر nodemailer
 *
 * الأولوية:
 *  1. SMTP_USER + SMTP_PASS موجودة  → SMTP حقيقي (Gmail أو غيره)
 *  2. لا يوجد → Ethereal test account (يُنشأ تلقائياً، URL يظهر في الكونسول)
 *
 * متغيرات البيئة:
 *   SMTP_HOST   (اختياري، افتراضي smtp.gmail.com)
 *   SMTP_PORT   (اختياري، افتراضي 587)
 *   SMTP_USER   (البريد المُرسِل)
 *   SMTP_PASS   (كلمة المرور / App Password لـ Gmail)
 *   SMTP_FROM   (اسم المُرسِل، اختياري)
 */
import nodemailer, { type Transporter } from "nodemailer";

let transporter: Transporter | null = null;
let testAccount: { user: string; pass: string } | null = null;
let isEthereal = false;

async function getTransporter(): Promise<Transporter> {
  if (transporter) return transporter;

  const user = process.env.SMTP_USER;
  const pass = process.env.SMTP_PASS;

  if (user && pass) {
    /* ── SMTP حقيقي ── */
    const host = process.env.SMTP_HOST || "smtp.gmail.com";
    const port = Number(process.env.SMTP_PORT) || 587;
    transporter = nodemailer.createTransport({
      host,
      port,
      secure: port === 465,
      auth: { user, pass },
      tls: { rejectUnauthorized: false },
    });
    isEthereal = false;
    console.log(`[email] SMTP جاهز → ${host}:${port} (${user})`);
  } else {
    /* ── Ethereal (اختبار) ── */
    testAccount = await nodemailer.createTestAccount();
    transporter = nodemailer.createTransport({
      host: "smtp.ethereal.email",
      port: 587,
      auth: { user: testAccount.user, pass: testAccount.pass },
    });
    isEthereal = true;
    console.warn(
      "[email] ⚠️  لم تُعيَّن SMTP_USER/SMTP_PASS — يُستخدم Ethereal للاختبار"
    );
    console.warn(
      `[email] Ethereal: ${testAccount.user} / ${testAccount.pass}`
    );
  }

  return transporter;
}

export interface SendResult {
  ok: boolean;
  previewUrl?: string;
  messageId?: string;
  error?: string;
}

export async function sendVerifyEmail(
  to: string,
  code: string
): Promise<SendResult> {
  try {
    const t = await getTransporter();
    const from = process.env.SMTP_FROM
      ? `"Nova Anime" <${process.env.SMTP_FROM}>`
      : isEthereal
      ? `"Nova Anime" <${testAccount?.user}>`
      : `"Nova Anime" <${process.env.SMTP_USER}>`;

    const info = await t.sendMail({
      from,
      to,
      subject: `كود التحقق: ${code} — Nova Anime`,
      text: `كود التحقق الخاص بك: ${code}\nصالح لمدة 10 دقائق.`,
      html: `
<!DOCTYPE html>
<html dir="rtl" lang="ar">
<head><meta charset="UTF-8" /><meta name="viewport" content="width=device-width,initial-scale=1"/></head>
<body style="margin:0;padding:0;background:#09090B;font-family:'Cairo',Arial,sans-serif;color:#fff;">
  <div style="max-width:480px;margin:40px auto;background:linear-gradient(135deg,#0F0D1B,#09090B);border:1px solid rgba(139,92,246,0.22);border-radius:24px;overflow:hidden;">
    <div style="height:3px;background:linear-gradient(90deg,#7C3AED,#A78BFA,#EC4899);"></div>
    <div style="padding:40px 32px;">
      <div style="display:flex;align-items:center;gap:12px;margin-bottom:28px;">
        <div style="width:42px;height:42px;background:linear-gradient(135deg,#7C3AED,#4F46E5);border-radius:14px;display:flex;align-items:center;justify-content:center;font-size:20px;">✨</div>
        <div>
          <p style="margin:0;font-size:18px;font-weight:900;color:#fff;">Nova Anime</p>
          <p style="margin:0;font-size:11px;color:rgba(255,255,255,0.35);">التحقق من البريد الإلكتروني</p>
        </div>
      </div>
      <p style="font-size:14px;color:rgba(255,255,255,0.7);margin-bottom:28px;line-height:1.7;">
        مرحباً! استخدم الكود أدناه لتفعيل حسابك في Nova Anime. الكود صالح لمدة <strong style="color:#A78BFA;">10 دقائق</strong> فقط.
      </p>
      <div style="background:rgba(139,92,246,0.12);border:1.5px solid rgba(139,92,246,0.30);border-radius:18px;padding:28px;text-align:center;margin-bottom:24px;">
        <p style="margin:0 0 8px 0;font-size:11px;color:rgba(255,255,255,0.35);letter-spacing:2px;">كود التحقق</p>
        <p style="margin:0;font-size:44px;font-weight:900;letter-spacing:10px;color:#A78BFA;font-family:monospace;">${code}</p>
      </div>
      <p style="font-size:11px;color:rgba(255,255,255,0.25);text-align:center;margin:0;">
        إذا لم تطلب هذا الكود، يمكنك تجاهل هذا البريد.
      </p>
    </div>
  </div>
</body>
</html>`,
    });

    const previewUrl = isEthereal
      ? nodemailer.getTestMessageUrl(info) || undefined
      : undefined;

    if (previewUrl) {
      console.log(`[email] ✅ كود [${code}] → ${to}`);
      console.log(`[email] 🔗 معاينة البريد: ${previewUrl}`);
    } else {
      console.log(`[email] ✅ كود [${code}] أُرسل إلى ${to} (${info.messageId})`);
    }

    return { ok: true, previewUrl: previewUrl as string | undefined, messageId: info.messageId };
  } catch (err: any) {
    console.error("[email] ❌ فشل الإرسال:", err.message);
    return { ok: false, error: err.message };
  }
}

export async function sendPasswordResetEmail(
  to: string,
  code: string
): Promise<SendResult> {
  try {
    const t = await getTransporter();
    const from = process.env.SMTP_FROM
      ? `"Nova Anime" <${process.env.SMTP_FROM}>`
      : isEthereal
      ? `"Nova Anime" <${testAccount?.user}>`
      : `"Nova Anime" <${process.env.SMTP_USER}>`;

    const info = await t.sendMail({
      from,
      to,
      subject: `إعادة تعيين كلمة المرور: ${code} — Nova Anime`,
      html: `
<!DOCTYPE html>
<html dir="rtl" lang="ar">
<head><meta charset="UTF-8"/></head>
<body style="margin:0;padding:0;background:#09090B;font-family:'Cairo',Arial,sans-serif;color:#fff;">
  <div style="max-width:480px;margin:40px auto;background:linear-gradient(135deg,#0F0D1B,#09090B);border:1px solid rgba(236,72,153,0.22);border-radius:24px;overflow:hidden;">
    <div style="height:3px;background:linear-gradient(90deg,#EC4899,#F97316,#EAB308);"></div>
    <div style="padding:40px 32px;">
      <p style="font-size:14px;color:rgba(255,255,255,0.7);margin-bottom:28px;line-height:1.7;">
        طلبت إعادة تعيين كلمة المرور. استخدم الكود أدناه (صالح <strong style="color:#F9A8D4;">10 دقائق</strong>).
      </p>
      <div style="background:rgba(236,72,153,0.10);border:1.5px solid rgba(236,72,153,0.28);border-radius:18px;padding:28px;text-align:center;">
        <p style="margin:0 0 8px 0;font-size:11px;color:rgba(255,255,255,0.35);letter-spacing:2px;">كود إعادة التعيين</p>
        <p style="margin:0;font-size:44px;font-weight:900;letter-spacing:10px;color:#F9A8D4;font-family:monospace;">${code}</p>
      </div>
    </div>
  </div>
</body>
</html>`,
    });

    const previewUrl = isEthereal ? nodemailer.getTestMessageUrl(info) || undefined : undefined;
    if (previewUrl) console.log(`[email] 🔗 معاينة إعادة التعيين: ${previewUrl}`);
    else console.log(`[email] ✅ كود إعادة التعيين [${code}] → ${to}`);

    return { ok: true, previewUrl: previewUrl as string | undefined, messageId: info.messageId };
  } catch (err: any) {
    console.error("[email] ❌ فشل الإرسال:", err.message);
    return { ok: false, error: err.message };
  }
}
