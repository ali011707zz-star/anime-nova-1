/**
 * emailService.ts — إرسال بريد إلكتروني عبر nodemailer
 * يقرأ SMTP من متغيرات البيئة أو Supabase app_config
 */
import nodemailer, { type Transporter } from "nodemailer";
import { promises as dnsPromises } from "dns";
import { sbSelect, sbUpsert } from "../lib/supabaseClient.js";

/** يحوّل اسم المضيف إلى IPv4 صريح لتجنب ENETUNREACH على IPv6 */
async function resolveIPv4(hostname: string): Promise<string> {
  try {
    const addrs = await dnsPromises.resolve4(hostname);
    return addrs[0] ?? hostname;
  } catch {
    return hostname;
  }
}

let transporter: Transporter | null = null;
let testAccount: { user: string; pass: string } | null = null;
let isEthereal = false;

async function getConfig(key: string): Promise<string | null> {
  try {
    const rows = await sbSelect("app_config", { key: `eq.${key}` }, { limit: 1 });
    return rows[0]?.value ?? null;
  } catch { return null; }
}

export async function setConfig(key: string, value: string): Promise<void> {
  await sbUpsert("app_config", { key, value, updated_at: new Date().toISOString() }, "key");
}

export function resetTransporter() {
  transporter = null;
}

async function getTransporter(): Promise<Transporter> {
  if (transporter) return transporter;

  // اقرأ DB دائماً — إذا وُجد smtp_pass في DB فهو يأخذ الأولوية (يسمح بتحديث SMTP بدون إعادة نشر)
  const [dbUser, dbPass, dbHost, dbPort] = await Promise.all([
    getConfig("smtp_user"),
    getConfig("smtp_pass"),
    getConfig("smtp_host"),
    getConfig("smtp_port"),
  ]);

  // DB له الأولوية، ENV كـ fallback
  let user = dbUser || process.env.SMTP_USER || process.env.EMAIL_USER;
  let pass = dbPass || process.env.SMTP_PASS;
  let host = dbHost || process.env.SMTP_HOST;
  let port = dbPort ? Number(dbPort) : (process.env.SMTP_PORT ? Number(process.env.SMTP_PORT) : undefined);

  if (user && pass) {
    const smtpHostname = host || "smtp.gmail.com";
    const smtpPort     = port || 587;
    // حل الـ hostname إلى IPv4 صريح لتجنب ENETUNREACH (VPS لا يدعم IPv6 لـ Gmail)
    const smtpHost = await resolveIPv4(smtpHostname);
    transporter = nodemailer.createTransport({
      host: smtpHost,
      port: smtpPort,
      secure: smtpPort === 465,
      auth: { user, pass },
      tls: { rejectUnauthorized: false, servername: smtpHostname },
    });
    isEthereal = false;
    console.log(`[email] ✅ SMTP جاهز → ${smtpHostname}(${smtpHost}):${smtpPort} (${user})`);
  } else {
    // لا يوجد SMTP مضبوط — افشل بسرعة بدل الانتظار على Ethereal (يسبب timeout 120ث)
    console.error("[email] SMTP_PASS not configured in env or DB — email disabled");
    throw new Error("SMTP_NOT_CONFIGURED");
  }
  return transporter;
}

export async function initEmailService(): Promise<void> {
  try {
    const t = await getTransporter();
    if (!isEthereal) {
      await t.verify();
      console.log("[email] ✅ اتصال SMTP تم التحقق منه بنجاح");
    }
  } catch (err: any) {
    // لا نُصفّر الـ transporter هنا — يحتفظ بـ IPv4 المُحلَّل
    // حتى لو فشل verify() (قد تكون مشكلة مؤقتة) الإرسال الفعلي قد يعمل
    console.error("[email] ❌ فشل التحقق من SMTP:", err.message);
  }
}

export interface SendResult {
  ok: boolean;
  previewUrl?: string;
  messageId?: string;
  error?: string;
}

export async function sendVerifyEmail(to: string, code: string): Promise<SendResult> {
  try {
    const t = await getTransporter();
    const from = process.env.SMTP_FROM
      ? `"Anime NOVA" <${process.env.SMTP_FROM}>`
      : isEthereal
      ? `"Anime NOVA" <${testAccount?.user}>`
      : `"Anime NOVA" <${process.env.SMTP_USER || await getConfig("smtp_user")}>`;

    const info = await t.sendMail({
      from, to,
      subject: `كود التحقق: ${code} — Anime NOVA`,
      html: verifyHtml(code),
      text: `كود تفعيل حسابك في Anime NOVA هو: ${code}\nصالح لمدة 10 دقائق فقط.`,
    });
    const previewUrl = isEthereal ? nodemailer.getTestMessageUrl(info) || undefined : undefined;
    if (previewUrl) console.log("[email] Ethereal preview:", previewUrl);
    return { ok: true, messageId: info.messageId, previewUrl };
  } catch (err: any) {
    const msg = err.message === "SMTP_NOT_CONFIGURED"
      ? "البريد الإلكتروني غير مفعّل — أضف SMTP_USER وSMTP_PASS في .env على السيرفر"
      : err.message;
    console.error("[email] فشل إرسال كود التحقق:", msg);
    return { ok: false, error: msg };
  }
}

export async function sendPasswordResetEmail(to: string, code: string): Promise<SendResult> {
  try {
    const t = await getTransporter();
    const from = process.env.SMTP_FROM
      ? `"Anime NOVA" <${process.env.SMTP_FROM}>`
      : isEthereal
      ? `"Anime NOVA" <${testAccount?.user}>`
      : `"Anime NOVA" <${process.env.SMTP_USER || await getConfig("smtp_user")}>`;

    const info = await t.sendMail({
      from, to,
      subject: `إعادة تعيين كلمة المرور: ${code} — Anime NOVA`,
      html: resetHtml(code),
      text: `كود إعادة تعيين كلمة مرورك في Anime NOVA هو: ${code}\nصالح لمدة 10 دقائق فقط.`,
    });
    const previewUrl = isEthereal ? nodemailer.getTestMessageUrl(info) || undefined : undefined;
    return { ok: true, messageId: info.messageId, previewUrl };
  } catch (err: any) {
    console.error("[email] فشل إرسال كود إعادة التعيين:", err.message);
    return { ok: false, error: err.message };
  }
}

function verifyHtml(code: string): string {
  const digits = code.split("").map(d =>
    `<td style="padding:0 3px;"><div style="width:44px;height:54px;background:#1a1040;border:2px solid #7c3aed;border-radius:12px;display:inline-flex;align-items:center;justify-content:center;"><span style="font-size:28px;font-weight:900;color:#c4b5fd;font-family:'Courier New',monospace;line-height:1;">${d}</span></div></td>`
  ).join("");
  return `<!DOCTYPE html>
<html dir="rtl" lang="ar">
<head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1"></head>
<body style="margin:0;padding:0;background:#07070f;">
<table width="100%" cellpadding="0" cellspacing="0" style="background:#07070f;padding:32px 0;">
  <tr><td align="center">
    <table width="480" cellpadding="0" cellspacing="0" style="max-width:480px;width:100%;background:#0d0d1f;border-radius:20px;overflow:hidden;border:1px solid rgba(124,58,237,0.25);">
      <!-- Header -->
      <tr>
        <td style="background:linear-gradient(135deg,#6d28d9 0%,#4f46e5 100%);padding:28px 32px;text-align:center;">
          <p style="margin:0 0 4px;font-size:11px;font-weight:700;color:rgba(255,255,255,0.55);letter-spacing:3px;font-family:Arial,sans-serif;">ANIME</p>
          <p style="margin:0;font-size:28px;font-weight:900;color:#fff;letter-spacing:-0.5px;font-family:Arial,sans-serif;">NOVA ✦</p>
          <p style="margin:10px 0 0;color:rgba(196,181,253,0.80);font-size:13px;font-family:Arial,sans-serif;">تحقق من بريدك الإلكتروني</p>
        </td>
      </tr>
      <!-- Body -->
      <tr>
        <td style="padding:36px 32px;text-align:center;">
          <p style="color:#94a3b8;margin:0 0 28px;font-size:15px;line-height:1.7;font-family:Arial,sans-serif;">
            مرحباً! استخدم الكود أدناه لتفعيل حسابك.<br>
            الكود صالح لمدة <strong style="color:#a78bfa;">10 دقائق</strong> فقط.
          </p>
          <!-- Digit boxes -->
          <table cellpadding="0" cellspacing="0" style="margin:0 auto 28px;">
            <tr>${digits}</tr>
          </table>
          <p style="color:#64748b;font-size:12px;margin:0;font-family:Arial,sans-serif;">إذا لم تطلب هذا الكود، تجاهل هذا البريد.</p>
        </td>
      </tr>
      <!-- Footer -->
      <tr>
        <td style="padding:18px 32px;text-align:center;border-top:1px solid rgba(124,58,237,0.15);">
          <p style="color:#334155;font-size:11px;margin:0;font-family:Arial,sans-serif;">Anime NOVA · جميع الحقوق محفوظة 2026</p>
        </td>
      </tr>
    </table>
  </td></tr>
</table>
</body>
</html>`;
}

function resetHtml(code: string): string {
  const digits = code.split("").map(d =>
    `<td style="padding:0 3px;"><div style="width:44px;height:54px;background:#1a1040;border:2px solid #7c3aed;border-radius:12px;display:inline-flex;align-items:center;justify-content:center;"><span style="font-size:28px;font-weight:900;color:#c4b5fd;font-family:'Courier New',monospace;line-height:1;">${d}</span></div></td>`
  ).join("");
  return `<!DOCTYPE html>
<html dir="rtl" lang="ar">
<head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1"></head>
<body style="margin:0;padding:0;background:#07070f;">
<table width="100%" cellpadding="0" cellspacing="0" style="background:#07070f;padding:32px 0;">
  <tr><td align="center">
    <table width="480" cellpadding="0" cellspacing="0" style="max-width:480px;width:100%;background:#0d0d1f;border-radius:20px;overflow:hidden;border:1px solid rgba(124,58,237,0.25);">
      <!-- Header -->
      <tr>
        <td style="background:linear-gradient(135deg,#6d28d9 0%,#4f46e5 100%);padding:28px 32px;text-align:center;">
          <p style="margin:0 0 4px;font-size:11px;font-weight:700;color:rgba(255,255,255,0.55);letter-spacing:3px;font-family:Arial,sans-serif;">ANIME</p>
          <p style="margin:0;font-size:28px;font-weight:900;color:#fff;letter-spacing:-0.5px;font-family:Arial,sans-serif;">NOVA ✦</p>
          <p style="margin:10px 0 0;color:rgba(196,181,253,0.80);font-size:13px;font-family:Arial,sans-serif;">إعادة تعيين كلمة المرور</p>
        </td>
      </tr>
      <!-- Body -->
      <tr>
        <td style="padding:36px 32px;text-align:center;">
          <p style="color:#94a3b8;margin:0 0 28px;font-size:15px;line-height:1.7;font-family:Arial,sans-serif;">
            استخدم الكود أدناه لإعادة تعيين كلمة مرورك.<br>
            الكود صالح لمدة <strong style="color:#a78bfa;">10 دقائق</strong> فقط.
          </p>
          <!-- Digit boxes -->
          <table cellpadding="0" cellspacing="0" style="margin:0 auto 28px;">
            <tr>${digits}</tr>
          </table>
          <p style="color:#64748b;font-size:12px;margin:0;font-family:Arial,sans-serif;">إذا لم تطلب إعادة التعيين، تجاهل هذا البريد.</p>
        </td>
      </tr>
      <!-- Footer -->
      <tr>
        <td style="padding:18px 32px;text-align:center;border-top:1px solid rgba(124,58,237,0.15);">
          <p style="color:#334155;font-size:11px;margin:0;font-family:Arial,sans-serif;">Anime NOVA · جميع الحقوق محفوظة 2026</p>
        </td>
      </tr>
    </table>
  </td></tr>
</table>
</body>
</html>`;
}
