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

  // Prefer the verified VPS environment values. The DB may contain stale SMTP
  // credentials from an older provider configuration.
  const user = process.env.SMTP_USER || dbUser || process.env.EMAIL_USER;
  const pass = process.env.SMTP_PASS || dbPass;
  const host = process.env.SMTP_HOST || dbHost;
  const port = process.env.SMTP_PORT ? Number(process.env.SMTP_PORT) : (dbPort ? Number(dbPort) : undefined);

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

/** إرسال بريد: Resend أولاً ← Gmail REST API ← SMTP.
 * إذا رفض Resend الإرسال (مثلاً لأن النطاق غير موثّق في وضع الاختبار)
 * نتابع إلى مزوّد آخر بدلاً من إيقاف الطلب فوراً.
 */
async function sendEmail(
  to: string,
  subject: string,
  html: string,
  text: string,
): Promise<SendResult> {
  const providerErrors: string[] = [];

  // 1. SMTP on the VPS (verified working and supports any recipient address).
  try {
    const t = await getTransporter();
    const smtpUser = process.env.SMTP_USER || await getConfig("smtp_user") || "";
    const fromAddr = `"Anime NOVA" <${smtpUser}>`;
    const info = await t.sendMail({ from: fromAddr, to, subject, html, text });
    console.log(`[email] ✅ SMTP → ${to}`);
    return { ok: true, messageId: info.messageId };
  } catch (err: any) {
    const msg = err.message === "SMTP_NOT_CONFIGURED" ? "SMTP_NOT_CONFIGURED" : err.message;
    providerErrors.push(`SMTP: ${msg}`);
    console.error("[email] SMTP فشل — تجربة البدائل:", msg);
  }

  // 2. Resend fallback (the current testing sender only accepts its owner address).
  try {
    await sendViaResend(to, subject, html, text);
    return { ok: true };
  } catch (err: any) {
    if (err.message === "RESEND_NOT_CONFIGURED") {
      console.warn("[email] Resend غير مُهيّأ — الانتقال إلى Gmail API");
    } else {
      providerErrors.push(`Resend: ${err.message}`);
      console.error("[email] Resend فشل — تجربة البديل:", err.message);
    }
  }

  // 3. Gmail REST API (HTTPS/443 — لا يُحجب).
  try {
    await sendViaGmailApi(to, subject, html, text);
    return { ok: true };
  } catch (err: any) {
    if (err.message === "GMAIL_API_NOT_CONFIGURED") {
      console.warn("[email] Gmail API غير مُهيّأ");
    } else {
      providerErrors.push(`Gmail API: ${err.message}`);
      console.error("[email] Gmail API فشل:", err.message);
    }
    return {
      ok: false,
      error: providerErrors.join(" | ") || "EMAIL_DELIVERY_FAILED",
    };
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

function legacyCodeHtml(
  code: string,
  subtitle: string,
  instruction: string,
  expiryText: string,
): string {
  return `
  <div dir="rtl" style="font-family:'Segoe UI',Arial,sans-serif;max-width:480px;margin:0 auto;background:#0d0d18;color:#e2e8f0;border-radius:16px;overflow:hidden;">
    <div style="background:linear-gradient(135deg,#7c3aed,#4f46e5);padding:32px;text-align:center;">
      <h1 style="margin:0;font-size:26px;font-weight:900;color:#fff;letter-spacing:-0.5px;">ANIME NOVA</h1>
      <p style="margin:8px 0 0;color:rgba(255,255,255,0.7);font-size:13px;">${subtitle}</p>
    </div>
    <div style="padding:32px;text-align:center;">
      <p style="color:#94a3b8;margin:0 0 24px;font-size:15px;">${instruction}</p>
      <div style="display:inline-block;background:#1e1b4b;border:2px solid #7c3aed;border-radius:12px;padding:16px 36px;margin-bottom:24px;">
        <span style="font-size:36px;font-weight:900;letter-spacing:10px;color:#a78bfa;font-family:monospace;">${code}</span>
      </div>
      <p style="color:#64748b;font-size:12px;margin:0;">${expiryText}</p>
    </div>
    <div style="border-top:1px solid rgba(255,255,255,0.06);padding:16px 32px;text-align:center;">
      <p style="color:#475569;font-size:11px;margin:0;">إذا لم تطلب هذا، تجاهل هذا البريد.</p>
    </div>
  </div>
`;
}

function verifyHtml(code: string): string {
  return legacyCodeHtml(code, "تحقق من بريدك الإلكتروني", "أدخل هذا الرمز لتأكيد حسابك:", "الرمز صالح لمدة 10 دقائق. لا تشاركه مع أحد.");
}

function resetHtml(code: string): string {
  return legacyCodeHtml(code, "إعادة تعيين كلمة المرور", "أدخل هذا الرمز لإعادة تعيين كلمة مرورك:", "الرمز صالح لمدة 10 دقائق. لا تشاركه مع أحد.");
}

