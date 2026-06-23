/**
 * emailService.ts — إرسال بريد إلكتروني عبر nodemailer
 * يقرأ SMTP من متغيرات البيئة أو Supabase app_config
 */
import nodemailer, { type Transporter } from "nodemailer";
import { sbSelect, sbUpsert } from "../lib/supabaseClient.js";

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

  let user = process.env.SMTP_USER;
  let pass = process.env.SMTP_PASS;
  let host = process.env.SMTP_HOST;
  let port = process.env.SMTP_PORT ? Number(process.env.SMTP_PORT) : undefined;

  if (!pass) {
    const [dbUser, dbPass, dbHost, dbPort] = await Promise.all([
      user ? Promise.resolve(null) : getConfig("smtp_user"),
      getConfig("smtp_pass"),
      host ? Promise.resolve(null) : getConfig("smtp_host"),
      port ? Promise.resolve(null) : getConfig("smtp_port"),
    ]);
    if (!user && dbUser) user = dbUser;
    if (!pass && dbPass) pass = dbPass;
    if (!host && dbHost) host = dbHost;
    if (!port && dbPort) port = Number(dbPort);
  }

  if (user && pass) {
    const smtpHost = host || "smtp.gmail.com";
    const smtpPort = port || 587;
    transporter = nodemailer.createTransport({
      host: smtpHost,
      port: smtpPort,
      secure: smtpPort === 465,
      auth: { user, pass },
      tls: { rejectUnauthorized: false },
    });
    isEthereal = false;
    console.log(`[email] ✅ SMTP جاهز → ${smtpHost}:${smtpPort} (${user})`);
  } else {
    testAccount = await nodemailer.createTestAccount();
    transporter = nodemailer.createTransport({
      host: "smtp.ethereal.email",
      port: 587,
      auth: { user: testAccount.user, pass: testAccount.pass },
    });
    isEthereal = true;
    console.error("[email] ❌ SMTP_PASS غير موجود في البيئة أو قاعدة البيانات");
    console.warn(`[email] Ethereal fallback: ${testAccount.user}`);
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
    transporter = null;
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
    console.error("[email] فشل إرسال كود التحقق:", err.message);
    return { ok: false, error: err.message };
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
