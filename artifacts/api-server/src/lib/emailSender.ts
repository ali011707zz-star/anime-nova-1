import nodemailer from "nodemailer";

const EMAIL_USER = process.env.EMAIL_USER || "";
const EMAIL_PASS = process.env.EMAIL_PASS || "";

function createGmailTransport() {
  if (!EMAIL_USER || !EMAIL_PASS) return null;
  return nodemailer.createTransport({
    service: "gmail",
    auth: { user: EMAIL_USER, pass: EMAIL_PASS },
  });
}

const EMAIL_HTML = (code: string) => `
  <div dir="rtl" style="font-family:'Segoe UI',Arial,sans-serif;max-width:480px;margin:0 auto;background:#0d0d18;color:#e2e8f0;border-radius:16px;overflow:hidden;">
    <div style="background:linear-gradient(135deg,#7c3aed,#4f46e5);padding:32px;text-align:center;">
      <h1 style="margin:0;font-size:26px;font-weight:900;color:#fff;letter-spacing:-0.5px;">ANIME NOVA</h1>
      <p style="margin:8px 0 0;color:rgba(255,255,255,0.7);font-size:13px;">تحقق من بريدك الإلكتروني</p>
    </div>
    <div style="padding:32px;text-align:center;">
      <p style="color:#94a3b8;margin:0 0 24px;font-size:15px;">أدخل هذا الرمز لتأكيد حسابك:</p>
      <div style="display:inline-block;background:#1e1b4b;border:2px solid #7c3aed;border-radius:12px;padding:16px 36px;margin-bottom:24px;">
        <span style="font-size:36px;font-weight:900;letter-spacing:10px;color:#a78bfa;font-family:monospace;">${code}</span>
      </div>
      <p style="color:#64748b;font-size:12px;margin:0;">الرمز صالح لمدة 15 دقيقة. لا تشاركه مع أحد.</p>
    </div>
    <div style="border-top:1px solid rgba(255,255,255,0.06);padding:16px 32px;text-align:center;">
      <p style="color:#475569;font-size:11px;margin:0;">إذا لم تطلب هذا، تجاهل هذا البريد.</p>
    </div>
  </div>
`;

export async function sendVerificationEmail(to: string, code: string): Promise<boolean> {
  /* 1. Gmail SMTP (if configured) */
  try {
    const transport = createGmailTransport();
    if (transport) {
      await transport.sendMail({
        from: `"Anime NOVA" <${EMAIL_USER}>`,
        to,
        subject: "رمز التحقق من حسابك — Anime NOVA",
        html: EMAIL_HTML(code),
        text: `رمز التحقق الخاص بك في Anime NOVA: ${code}\nصالح لمدة 15 دقيقة.`,
      });
      console.log(`[email] ✅ Gmail → ${to}`);
      return true;
    }
  } catch (err) {
    console.error("[email] Gmail فشل:", err);
  }

  /* 2. Fallback: log to console (development) */
  console.warn(`[email] ⚠️  SMTP غير مُعدَّل — رمز التحقق لـ ${to}: ${code}`);
  return false;
}
