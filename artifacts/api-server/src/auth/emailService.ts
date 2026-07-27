/**
 * emailService.ts — إرسال بريد إلكتروني
 *
 * ترتيب الأولوية:
 *   1. Resend API (HTTPS/443) — لا يتأثر بحجب منافذ SMTP
 *   2. SMTP (nodemailer) — كـ fallback مع timeout قصير (15ث)
 *
 * متغيرات البيئة:
 *   RESEND_API_KEY   — مفتاح Resend API (احصل عليه من resend.com مجاناً)
 *   RESEND_FROM      — عنوان الإرسال المُحقَّق في Resend (مثال: no-reply@yourdomain.com)
 *                      إذا لم يُضبَط يستخدم onboarding@resend.dev (يعمل مع حسابات Resend المجانية)
 *   SMTP_USER / SMTP_PASS / SMTP_HOST / SMTP_PORT — بيانات SMTP كـ fallback
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

// ── Resend API (primary — uses HTTPS/443, not blocked by ISP) ──────────────

async function getResendKey(): Promise<string | null> {
  // ENV أولاً، ثم DB
  return process.env.RESEND_API_KEY || await getConfig("resend_api_key") || null;
}

async function sendViaResend(to: string, subject: string, html: string, text: string): Promise<void> {
  const apiKey = await getResendKey();
  if (!apiKey) throw new Error("RESEND_NOT_CONFIGURED");

  const fromEnv = process.env.RESEND_FROM || await getConfig("resend_from");
  const from    = fromEnv || "Anime NOVA <onboarding@resend.dev>";

  const res = await fetch("https://api.resend.com/emails", {
    method: "POST",
    headers: {
      "Authorization": `Bearer ${apiKey}`,
      "Content-Type":  "application/json",
    },
    body: JSON.stringify({ from, to, subject, html, text }),
    signal: AbortSignal.timeout(15000),
  });

  if (!res.ok) {
    const body = await res.text().catch(() => "");
    throw new Error(`Resend HTTP ${res.status}: ${body.slice(0, 200)}`);
  }
  console.log(`[email] ✅ Resend → ${to}`);
}

// ── SMTP fallback (nodemailer) ─────────────────────────────────────────────

async function getTransporter(): Promise<Transporter> {
  if (transporter) return transporter;

  // اقرأ DB دائماً — إذا وُجد smtp_pass في DB فهو يأخذ الأولوية
  const [dbUser, dbPass, dbHost, dbPort] = await Promise.all([
    getConfig("smtp_user"),
    getConfig("smtp_pass"),
    getConfig("smtp_host"),
    getConfig("smtp_port"),
  ]);

  const user = dbUser || process.env.SMTP_USER || process.env.EMAIL_USER;
  const pass = dbPass || process.env.SMTP_PASS;
  const host = dbHost || process.env.SMTP_HOST;
  const port = dbPort ? Number(dbPort) : (process.env.SMTP_PORT ? Number(process.env.SMTP_PORT) : undefined);

  if (user && pass) {
    const smtpHostname = host || "smtp.gmail.com";
    const smtpPort     = port || 587;
    const smtpHost     = await resolveIPv4(smtpHostname);
    transporter = nodemailer.createTransport({
      host:              smtpHost,
      port:              smtpPort,
      secure:            smtpPort === 465,
      auth:              { user, pass },
      tls:               { rejectUnauthorized: false, servername: smtpHostname },
      // ⬇ timeout قصير — لا نُعيق الـ request دقيقتين إذا كان المنفذ محجوباً
      connectionTimeout: 12000,
      greetingTimeout:   12000,
      socketTimeout:     20000,
    });
    isEthereal = false;
    console.log(`[email] ✅ SMTP جاهز → ${smtpHostname}(${smtpHost}):${smtpPort} (${user})`);
  } else {
    console.error("[email] SMTP_PASS not configured in env or DB — email disabled");
    throw new Error("SMTP_NOT_CONFIGURED");
  }
  return transporter;
}

export async function initEmailService(): Promise<void> {
  const resendKey = await getResendKey();
  if (resendKey) {
    console.log("[email] ✅ Resend API مُفعَّل — سيُستخدم HTTPS لإرسال البريد");
    return;
  }
  // لا يوجد Resend — جرّب SMTP
  try {
    const t = await getTransporter();
    if (!isEthereal) {
      await t.verify();
      console.log("[email] ✅ اتصال SMTP تم التحقق منه بنجاح");
    }
  } catch (err: any) {
    console.error("[email] ❌ فشل التحقق من SMTP:", err.message);
    console.warn("[email] ⚠️  أضف RESEND_API_KEY إلى .env لإرسال موثوق (resend.com مجاني)");
  }
}

export interface SendResult {
  ok: boolean;
  previewUrl?: string;
  messageId?: string;
  error?: string;
}

/** إرسال عبر Resend أو SMTP مع fallback */
async function sendEmail(
  to: string,
  subject: string,
  html: string,
  text: string,
): Promise<SendResult> {
  // 1. Resend API (HTTPS — لا يُحجب)
  const resendKey = await getResendKey();
  if (resendKey) {
    try {
      await sendViaResend(to, subject, html, text);
      return { ok: true };
    } catch (err: any) {
      console.error("[email] Resend فشل:", err.message);
      // لا نجرب SMTP إذا فشل Resend — الأرجح أن المشكلة في المفتاح/الإعداد
      return { ok: false, error: `Resend: ${err.message}` };
    }
  }

  // 2. SMTP fallback
  try {
    const t = await getTransporter();
    const smtpUser  = process.env.SMTP_USER || await getConfig("smtp_user") || "";
    const fromAddr  = process.env.SMTP_FROM
      ? `"Anime NOVA" <${process.env.SMTP_FROM}>`
      : `"Anime NOVA" <${smtpUser}>`;

    const info = await t.sendMail({ from: fromAddr, to, subject, html, text });
    console.log(`[email] ✅ SMTP → ${to}`);
    return { ok: true, messageId: info.messageId };
  } catch (err: any) {
    const msg = err.message === "SMTP_NOT_CONFIGURED"
      ? "البريد الإلكتروني غير مفعّل — أضف RESEND_API_KEY إلى .env (resend.com)"
      : err.message;
    console.error("[email] SMTP فشل:", msg);
    return { ok: false, error: msg };
  }
}

export async function sendVerifyEmail(to: string, code: string): Promise<SendResult> {
  return sendEmail(
    to,
    `كود التحقق: ${code} — Anime NOVA`,
    verifyHtml(code),
    `كود تفعيل حسابك في Anime NOVA هو: ${code}\nصالح لمدة 10 دقائق فقط.`,
  );
}

export async function sendPasswordResetEmail(to: string, code: string): Promise<SendResult> {
  return sendEmail(
    to,
    `إعادة تعيين كلمة المرور: ${code} — Anime NOVA`,
    resetHtml(code),
    `كود إعادة تعيين كلمة مرورك في Anime NOVA هو: ${code}\nصالح لمدة 10 دقائق فقط.`,
  );
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
