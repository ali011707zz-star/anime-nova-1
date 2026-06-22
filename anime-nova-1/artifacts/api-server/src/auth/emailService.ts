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
  return `
<div dir="rtl" style="font-family:'Segoe UI',Arial,sans-serif;max-width:480px;margin:0 auto;background:#0d0d18;color:#e2e8f0;border-radius:16px;overflow:hidden;">
  <div style="background:linear-gradient(135deg,#7c3aed,#4f46e5);padding:32px;text-align:center;">
    <p style="margin:0;font-size:26px;font-weight:900;color:#fff;letter-spacing:-0.5px;">Anime NOVA</p>
    <p style="margin:8px 0 0;color:rgba(255,255,255,0.7);font-size:13px;">تحقق من بريدك الإلكتروني</p>
  </div>
  <div style="padding:32px;text-align:center;">
    <p style="color:#94a3b8;margin:0 0 24px;font-size:15px;">مرحباً! استخدم الكود أدناه لتفعيل حسابك في Anime NOVA. الكود صالح لمدة <strong style="color:#A78BFA;">10 دقائق</strong> فقط.</p>
    <div style="display:inline-block;background:#1e1b4b;border:2px solid #7c3aed;border-radius:12px;padding:16px 36px;margin-bottom:24px;">
      <span style="font-size:36px;font-weight:900;letter-spacing:10px;color:#a78bfa;font-family:monospace;">${code}</span>
    </div>
    <p style="color:#64748b;font-size:12px;margin:0;">إذا لم تطلب هذا الكود، تجاهل هذا البريد.</p>
  </div>
  <div style="padding:16px;text-align:center;border-top:1px solid #1e1b4b;">
    <p style="color:#475569;font-size:11px;margin:0;">Anime NOVA · جميع الحقوق محفوظة 2026</p>
  </div>
</div>`;
}

function resetHtml(code: string): string {
  return `
<div dir="rtl" style="font-family:'Segoe UI',Arial,sans-serif;max-width:480px;margin:0 auto;background:#0d0d18;color:#e2e8f0;border-radius:16px;overflow:hidden;">
  <div style="background:linear-gradient(135deg,#7c3aed,#4f46e5);padding:32px;text-align:center;">
    <p style="margin:0;font-size:26px;font-weight:900;color:#fff;letter-spacing:-0.5px;">Anime NOVA</p>
    <p style="margin:8px 0 0;color:rgba(255,255,255,0.7);font-size:13px;">إعادة تعيين كلمة المرور</p>
  </div>
  <div style="padding:32px;text-align:center;">
    <p style="color:#94a3b8;margin:0 0 24px;font-size:15px;">استخدم الكود أدناه لإعادة تعيين كلمة مرورك. الكود صالح لمدة <strong style="color:#A78BFA;">10 دقائق</strong> فقط.</p>
    <div style="display:inline-block;background:#1e1b4b;border:2px solid #7c3aed;border-radius:12px;padding:16px 36px;margin-bottom:24px;">
      <span style="font-size:36px;font-weight:900;letter-spacing:10px;color:#a78bfa;font-family:monospace;">${code}</span>
    </div>
    <p style="color:#64748b;font-size:12px;margin:0;">إذا لم تطلب إعادة التعيين، تجاهل هذا البريد.</p>
  </div>
  <div style="padding:16px;text-align:center;border-top:1px solid #1e1b4b;">
    <p style="color:#475569;font-size:11px;margin:0;">Anime NOVA · جميع الحقوق محفوظة 2026</p>
  </div>
</div>`;
}
