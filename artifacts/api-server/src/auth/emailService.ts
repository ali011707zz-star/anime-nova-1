/**
 * emailService.ts — إرسال بريد إلكتروني
 *
 * ترتيب الأولوية:
 *   1. Resend API (HTTPS/443) — مجاني 3000 بريد/شهر، بدون بطاقة، بدون منافذ SMTP
 *      RESEND_API_KEY — مفتاح من resend.com (مجاني)
 *      RESEND_FROM    — عنوان الإرسال مثل "Anime NOVA <no-reply@yourdomain.com>"
 *                       أو اتركه فارغاً لاستخدام onboarding@resend.dev
 *   2. Gmail REST API (HTTPS/443) — لا يتأثر بحجب منافذ SMTP — Google فقط
 *      GMAIL_CLIENT_ID + GMAIL_CLIENT_SECRET + GMAIL_REFRESH_TOKEN + GMAIL_USER
 *   3. SMTP (nodemailer + Gmail) — fallback إذا انفتحت المنافذ مستقبلاً
 *      SMTP_USER / SMTP_PASS / SMTP_HOST / SMTP_PORT
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

// ─── Gmail REST API (primary) ──────────────────────────────────────────────
// يستخدم HTTPS/443 — لا يتأثر بحجب منافذ SMTP من الاستضافة
// يحتاج: GMAIL_CLIENT_ID + GMAIL_CLIENT_SECRET + GMAIL_REFRESH_TOKEN + GMAIL_USER
// للحصول على الـ credentials: https://console.cloud.google.com/ → Create OAuth2 client → get refresh token

let _gmailAccessToken: string | null = null;
let _gmailTokenExpiry = 0;

async function getGmailCreds(): Promise<{
  clientId: string; clientSecret: string; refreshToken: string; gmailUser: string;
} | null> {
  const clientId     = process.env.GMAIL_CLIENT_ID     || await getConfig("gmail_client_id");
  const clientSecret = process.env.GMAIL_CLIENT_SECRET || await getConfig("gmail_client_secret");
  const refreshToken = process.env.GMAIL_REFRESH_TOKEN || await getConfig("gmail_refresh_token");
  const gmailUser    = process.env.GMAIL_USER           || await getConfig("gmail_user")
                       || process.env.SMTP_USER          || null;
  if (!clientId || !clientSecret || !refreshToken || !gmailUser) return null;
  return { clientId, clientSecret, refreshToken, gmailUser };
}

/** جلب/تجديد access_token من Gmail OAuth2 */
async function getGmailAccessToken(creds: {
  clientId: string; clientSecret: string; refreshToken: string;
}): Promise<string> {
  // إذا الـ token لا يزال صالحاً (مع هامش 60ث)
  if (_gmailAccessToken && Date.now() < _gmailTokenExpiry - 60_000) {
    return _gmailAccessToken;
  }

  const res = await fetch("https://oauth2.googleapis.com/token", {
    method: "POST",
    headers: { "Content-Type": "application/x-www-form-urlencoded" },
    body: new URLSearchParams({
      client_id:     creds.clientId,
      client_secret: creds.clientSecret,
      refresh_token: creds.refreshToken,
      grant_type:    "refresh_token",
    }),
    signal: AbortSignal.timeout(10_000),
  });

  if (!res.ok) {
    const err = await res.text().catch(() => "");
    throw new Error(`Gmail OAuth2 token refresh فشل: ${res.status} — ${err.slice(0, 200)}`);
  }

  const json = await res.json() as any;
  _gmailAccessToken = json.access_token as string;
  // expires_in عادةً 3600 ثانية
  _gmailTokenExpiry = Date.now() + ((json.expires_in ?? 3600) * 1000);
  return _gmailAccessToken!;
}

/** بناء رسالة RFC 2822 وترميزها base64url */
function buildRfc2822(from: string, to: string, subject: string, html: string, text: string): string {
  const boundary = `=_nova_${Math.random().toString(36).slice(2)}_${Date.now()}`;
  const subjectEncoded = `=?UTF-8?B?${Buffer.from(subject).toString("base64")}?=`;

  const raw = [
    `From: "Anime NOVA" <${from}>`,
    `To: ${to}`,
    `Subject: ${subjectEncoded}`,
    `MIME-Version: 1.0`,
    `Content-Type: multipart/alternative; boundary="${boundary}"`,
    ``,
    `--${boundary}`,
    `Content-Type: text/plain; charset=UTF-8`,
    `Content-Transfer-Encoding: base64`,
    ``,
    Buffer.from(text, "utf-8").toString("base64"),
    ``,
    `--${boundary}`,
    `Content-Type: text/html; charset=UTF-8`,
    `Content-Transfer-Encoding: base64`,
    ``,
    Buffer.from(html, "utf-8").toString("base64"),
    ``,
    `--${boundary}--`,
  ].join("\r\n");

  return Buffer.from(raw, "utf-8").toString("base64url");
}

/** إرسال بريد عبر Gmail REST API (HTTPS/443) */
async function sendViaGmailApi(
  to: string, subject: string, html: string, text: string,
): Promise<void> {
  const creds = await getGmailCreds();
  if (!creds) throw new Error("GMAIL_API_NOT_CONFIGURED");

  const accessToken = await getGmailAccessToken(creds);
  const rawEncoded  = buildRfc2822(creds.gmailUser, to, subject, html, text);

  const res = await fetch(
    "https://gmail.googleapis.com/gmail/v1/users/me/messages/send",
    {
      method: "POST",
      headers: {
        "Authorization": `Bearer ${accessToken}`,
        "Content-Type":  "application/json",
      },
      body: JSON.stringify({ raw: rawEncoded }),
      signal: AbortSignal.timeout(20_000),
    },
  );

  if (!res.ok) {
    const err = await res.text().catch(() => "");
    // إذا انتهت صلاحية الـ token أعد المحاولة مرة واحدة
    if (res.status === 401) {
      _gmailAccessToken = null;
      _gmailTokenExpiry = 0;
    }
    throw new Error(`Gmail API HTTP ${res.status}: ${err.slice(0, 200)}`);
  }

  console.log(`[email] ✅ Gmail API → ${to}`);
}

// ── SMTP fallback (nodemailer) ─────────────────────────────────────────────

async function getTransporter(): Promise<Transporter> {
  if (transporter) return transporter;

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
      connectionTimeout: 12000,
      greetingTimeout:   12000,
      socketTimeout:     20000,
    });
    console.log(`[email] SMTP جاهز → ${smtpHostname}(${smtpHost}):${smtpPort} (${user})`);
    return transporter;
  }

  throw new Error("SMTP_NOT_CONFIGURED");
}

export async function initEmailService(): Promise<void> {
  // 1. Resend
  const resendKey = process.env.RESEND_API_KEY || await getConfig("resend_api_key").catch(() => null);
  if (resendKey) {
    console.log("[email] ✅ Resend API مُفعَّل (HTTPS/443 — مجاني)");
    return;
  }
  // 2. Gmail REST API
  const creds = await getGmailCreds();
  if (creds) {
    console.log(`[email] ✅ Gmail REST API مُفعَّل → ${creds.gmailUser} (HTTPS/443)`);
    return;
  }
  // 3. SMTP
  try {
    const t = await getTransporter();
    await t.verify();
    console.log("[email] ✅ SMTP متصل");
  } catch (err: any) {
    console.error("[email] ❌ البريد معطّل — أضف RESEND_API_KEY (مجاني من resend.com)");
    console.warn("[email] ⚠️  سجّل على resend.com → API Keys → أنشئ مفتاحاً → أضفه للـ .env");
  }
}

export interface SendResult {
  ok: boolean;
  previewUrl?: string;
  messageId?: string;
  error?: string;
}

// ── Resend API (أسرع وأبسط — مجاني 3000 بريد/شهر بدون بطاقة) ──────────────
async function sendViaResend(
  to: string, subject: string, html: string, text: string,
): Promise<void> {
  const apiKey  = process.env.RESEND_API_KEY || await getConfig("resend_api_key");
  if (!apiKey) throw new Error("RESEND_NOT_CONFIGURED");

  const fromAddr = process.env.RESEND_FROM
    || await getConfig("resend_from")
    || "Anime NOVA <onboarding@resend.dev>";

  const res = await fetch("https://api.resend.com/emails", {
    method:  "POST",
    headers: { "Authorization": `Bearer ${apiKey}`, "Content-Type": "application/json" },
    body:    JSON.stringify({ from: fromAddr, to, subject, html, text }),
    signal:  AbortSignal.timeout(15_000),
  });

  if (!res.ok) {
    const err = await res.text().catch(() => "");
    throw new Error(`Resend HTTP ${res.status}: ${err.slice(0, 200)}`);
  }
  console.log(`[email] ✅ Resend → ${to}`);
}

/** إرسال بريد: Resend أولاً ← Gmail REST API ← SMTP */
async function sendEmail(
  to: string,
  subject: string,
  html: string,
  text: string,
): Promise<SendResult> {
  // 1. Resend (HTTPS/443 — مجاني بدون بطاقة — الأسهل إعداداً)
  try {
    await sendViaResend(to, subject, html, text);
    return { ok: true };
  } catch (err: any) {
    if (err.message !== "RESEND_NOT_CONFIGURED") {
      console.error("[email] Resend فشل:", err.message);
      return { ok: false, error: `Resend: ${err.message}` };
    }
    // لا يوجد RESEND_API_KEY → جرّب Gmail API
  }

  // 2. Gmail REST API (HTTPS/443 — لا يُحجب)
  try {
    await sendViaGmailApi(to, subject, html, text);
    return { ok: true };
  } catch (err: any) {
    if (err.message !== "GMAIL_API_NOT_CONFIGURED") {
      console.error("[email] Gmail API فشل:", err.message);
      return { ok: false, error: `Gmail API: ${err.message}` };
    }
    // لا يوجد Gmail API credentials → جرّب SMTP
  }

  // 3. SMTP fallback (يعمل إذا لم تكن المنافذ محجوبة)
  try {
    const t = await getTransporter();
    const smtpUser = process.env.SMTP_USER || await getConfig("smtp_user") || "";
    const fromAddr = `"Anime NOVA" <${smtpUser}>`;
    const info     = await t.sendMail({ from: fromAddr, to, subject, html, text });
    console.log(`[email] ✅ SMTP → ${to}`);
    return { ok: true, messageId: info.messageId };
  } catch (err: any) {
    const msg = err.message === "SMTP_NOT_CONFIGURED"
      ? "البريد معطّل — أضف RESEND_API_KEY (مجاني من resend.com) أو Gmail API credentials"
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
      <tr>
        <td style="background:linear-gradient(135deg,#6d28d9 0%,#4f46e5 100%);padding:28px 32px;text-align:center;">
          <p style="margin:0 0 4px;font-size:11px;font-weight:700;color:rgba(255,255,255,0.55);letter-spacing:3px;font-family:Arial,sans-serif;">ANIME</p>
          <p style="margin:0;font-size:28px;font-weight:900;color:#fff;letter-spacing:-0.5px;font-family:Arial,sans-serif;">NOVA ✦</p>
          <p style="margin:10px 0 0;color:rgba(196,181,253,0.80);font-size:13px;font-family:Arial,sans-serif;">تحقق من بريدك الإلكتروني</p>
        </td>
      </tr>
      <tr>
        <td style="padding:36px 32px;text-align:center;">
          <p style="color:#94a3b8;margin:0 0 28px;font-size:15px;line-height:1.7;font-family:Arial,sans-serif;">
            مرحباً! استخدم الكود أدناه لتفعيل حسابك.<br>
            الكود صالح لمدة <strong style="color:#a78bfa;">10 دقائق</strong> فقط.
          </p>
          <table cellpadding="0" cellspacing="0" style="margin:0 auto 28px;">
            <tr>${digits}</tr>
          </table>
          <p style="color:#64748b;font-size:12px;margin:0;font-family:Arial,sans-serif;">إذا لم تطلب هذا الكود، تجاهل هذا البريد.</p>
        </td>
      </tr>
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
      <tr>
        <td style="background:linear-gradient(135deg,#6d28d9 0%,#4f46e5 100%);padding:28px 32px;text-align:center;">
          <p style="margin:0 0 4px;font-size:11px;font-weight:700;color:rgba(255,255,255,0.55);letter-spacing:3px;font-family:Arial,sans-serif;">ANIME</p>
          <p style="margin:0;font-size:28px;font-weight:900;color:#fff;letter-spacing:-0.5px;font-family:Arial,sans-serif;">NOVA ✦</p>
          <p style="margin:10px 0 0;color:rgba(196,181,253,0.80);font-size:13px;font-family:Arial,sans-serif;">إعادة تعيين كلمة المرور</p>
        </td>
      </tr>
      <tr>
        <td style="padding:36px 32px;text-align:center;">
          <p style="color:#94a3b8;margin:0 0 28px;font-size:15px;line-height:1.7;font-family:Arial,sans-serif;">
            استخدم الكود أدناه لإعادة تعيين كلمة مرورك.<br>
            الكود صالح لمدة <strong style="color:#a78bfa;">10 دقائق</strong> فقط.
          </p>
          <table cellpadding="0" cellspacing="0" style="margin:0 auto 28px;">
            <tr>${digits}</tr>
          </table>
          <p style="color:#64748b;font-size:12px;margin:0;font-family:Arial,sans-serif;">إذا لم تطلب إعادة التعيين، تجاهل هذا البريد.</p>
        </td>
      </tr>
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
