/**
 * index.ts — نقطة الدخول
 * يتصل مباشرة بـ Supabase عبر متغيرات البيئة (SUPABASE_URL + SUPABASE_SERVICE_KEY)
 */

// ── إجبار IPv4 لجميع DNS resolutions — VPS لا يدعم IPv6 للخدمات الخارجية ──
// يجب أن يكون قبل أي import يستخدم الشبكة
import { setDefaultResultOrder } from "dns";
setDefaultResultOrder("ipv4first");

// ── حماية العملية من الانهيار بسبب أخطاء غير معالجة (TimeoutError على Readable streams إلخ) ──
process.on("uncaughtException", (err: any) => {
  // نتجاهل TimeoutError المعتادة من AbortSignal.timeout() على Streams
  const name = err?.name || err?.constructor?.name || "";
  const message = String(err?.message || "");
  const transientStreamError =
    message === "terminated" ||
    err?.code === "UND_ERR_SOCKET" ||
    err?.cause?.code === "UND_ERR_SOCKET";
  if (name === "TimeoutError" || name === "AbortError" || err?.code === "ABORT_ERR" || transientStreamError) {
    console.warn("[uncaughtException] تجاهل انقطاع/إلغاء عابر في stream:", message);
    return;
  }
  console.error("[uncaughtException] خطأ غير متوقع:", err);
});

process.on("unhandledRejection", (reason: any) => {
  const name = reason?.name || reason?.constructor?.name || "";
  const message = String(reason?.message || reason || "");
  const transientStreamError =
    message === "terminated" ||
    reason?.code === "UND_ERR_SOCKET" ||
    reason?.cause?.code === "UND_ERR_SOCKET";
  if (name === "TimeoutError" || name === "AbortError" || reason?.code === "ABORT_ERR" || transientStreamError) {
    console.warn("[unhandledRejection] تجاهل انقطاع/إلغاء عابر في stream:", message);
    return;
  }
  console.error("[unhandledRejection] وعد مرفوض:", reason);
});

const rawPort = process.env["PORT"] ?? "5000";
const port = Number(rawPort);
if (Number.isNaN(port) || port <= 0) throw new Error(`Invalid PORT value: "${rawPort}"`);

if (!process.env.SESSION_SECRET) {
  process.env.SESSION_SECRET = "nova-anime-replit-secret-" + Math.random().toString(36).slice(2);
  console.warn("[bootstrap] ⚠️ SESSION_SECRET not set — using ephemeral secret.");
}

if (!process.env.SUPABASE_URL || !process.env.SUPABASE_SERVICE_KEY) {
  console.warn("[bootstrap] ⚠️ SUPABASE_URL أو SUPABASE_SERVICE_KEY غير موجودين — Supabase لن يعمل");
} else {
  console.log("[bootstrap] ✅ Supabase متصل مباشرة عبر متغيرات البيئة");
}

// ── تحميل التطبيق ──
const { createApp }          = await import("./app.js");
const { logger }             = await import("./lib/logger.js");
const { initEmailService }   = await import("./auth/emailService.js");
const { registerTelegramWebhook, startEpisodeScheduler } = await import("./routes/telegram.js");
const { startAnimationNotificationScheduler } = await import("./routes/notifications.js");

const app  = await createApp();
const host = "0.0.0.0";

app.listen(port, host, (err) => {
  if (err) {
    logger.error({ err }, "Error listening on port");
    process.exit(1);
  }

  logger.info({ port }, "Server listening");

  // ── تشغيل migration بعد بدء الاستماع (لا يُعيق فتح المنفذ) ──
  (async () => {
    try {
      const { runSupabaseMigration } = await import("./lib/supabaseMigrate.js");
      await runSupabaseMigration();
    } catch (e: any) {
      console.warn("[bootstrap] ⚠️ فشل migration:", e.message);
    }
  })();

  // ── مزامنة ENV ↔ DB ثم تشغيل الـ schedulers بعد اكتمال التحميل ──────────
  // ملاحظة: الـ schedulers تبدأ داخل هذا الـ block لتضمن توفر التوكن من DB
  (async () => {
    try {
      const { setDbConfig, getDbConfig } = await import("./lib/dbConfig.js");

      // ENV → DB (push env vars إلى DB إن وُجدت)
      const envMap: Record<string, string> = {
        smtp_user:           process.env.SMTP_USER           || "",
        smtp_pass:           process.env.SMTP_PASS           || "",
        smtp_host:           process.env.SMTP_HOST           || "",
        smtp_port:           process.env.SMTP_PORT           || "",
        telegram_bot_token:  process.env.TELEGRAM_BOT_TOKEN  || "",
        telegram_channel_id: process.env.TELEGRAM_CHANNEL_ID || "",
        telegram_chat_id:    process.env.TELEGRAM_CHAT_ID    || "",
      };
      const synced: string[] = [];
      for (const [key, val] of Object.entries(envMap)) {
        if (val) { await setDbConfig(key, val); synced.push(key); }
      }
      if (synced.length > 0)
        console.log("[config-sync] ✅ ENV → DB:", synced.join(", "));

      // DB → ENV (استعادة القيم الناقصة من DB إلى process.env)
      const restored: string[] = [];
      if (!process.env.TELEGRAM_BOT_TOKEN) {
        const v = await getDbConfig("telegram_bot_token");
        if (v) { process.env.TELEGRAM_BOT_TOKEN = v; restored.push("TELEGRAM_BOT_TOKEN"); }
      }
      if (!process.env.TELEGRAM_CHAT_ID) {
        const v = await getDbConfig("telegram_chat_id");
        if (v) { process.env.TELEGRAM_CHAT_ID = v; restored.push("TELEGRAM_CHAT_ID"); }
      }
      if (!process.env.TELEGRAM_CHANNEL_ID) {
        const v = await getDbConfig("telegram_channel_id");
        if (v) { process.env.TELEGRAM_CHANNEL_ID = v; restored.push("TELEGRAM_CHANNEL_ID"); }
      }
      if (!process.env.SMTP_PASS) {
        const v = await getDbConfig("smtp_pass");
        if (v) { process.env.SMTP_PASS = v; restored.push("SMTP_PASS"); }
      }
      if (restored.length > 0)
        console.log("[config-sync] ✅ DB → ENV (restored):", restored.join(", "));
    } catch (e: any) {
      console.warn("[config-sync] ⚠️ فشل مزامنة ENV ↔ DB:", e.message);
    }

    // ── إعداد email بعد اكتمال config-sync (يضمن توفر SMTP_PASS) ──
    initEmailService().catch(() => {});

    // ── تصحيح SMTP على Orkestr تلقائياً عند الـ startup ──
    const orkestrUrl = process.env.ORKESTR_RELAY_URL;
    const appSecret  = process.env.APP_SECRET || "anime-nova-default-change-me-aabbccdd";
    const smtpUser   = process.env.SMTP_USER;
    const smtpPass   = process.env.SMTP_PASS;
    if (orkestrUrl && smtpUser && smtpPass) {
      fetch(`${orkestrUrl}/api/admin/smtp-env-patch`, {
        method: "POST",
        headers: { "Content-Type": "application/json", "x-relay-secret": appSecret },
        body: JSON.stringify({ smtp_user: smtpUser, smtp_pass: smtpPass, smtp_host: process.env.SMTP_HOST || "smtp.gmail.com", smtp_port: process.env.SMTP_PORT || "587" }),
      }).then(r => r.ok ? r.json() : Promise.reject(r.status)).then((d: any) => {
        if (d.ok) console.log("[smtp-sync] ✅ Orkestr smtp-env-patch →", d.smtp_user);
      }).catch(() => {
        fetch(`${orkestrUrl}/api/admin/smtp-config`, {
          method: "POST",
          headers: { "Content-Type": "application/json", "x-relay-secret": appSecret },
          body: JSON.stringify({ smtp_user: smtpUser, smtp_pass: smtpPass, smtp_host: process.env.SMTP_HOST || "smtp.gmail.com", smtp_port: process.env.SMTP_PORT || "587" }),
        }).catch(() => {});
      });
    }

    // ── تشغيل الـ schedulers بعد اكتمال تحميل التوكن من DB ──────────────────
    const schedulerEnabled = process.env.TELEGRAM_SCHEDULER_ENABLED !== "false";
    if (schedulerEnabled) {
      const domain =
        process.env.APP_DOMAIN ||
        process.env.REPLIT_DEV_DOMAIN ||
        process.env.REPLIT_DOMAINS?.split(",")[0] ||
        null;
      if (domain) {
        registerTelegramWebhook(domain).catch(() => {});
      } else {
        console.warn("[telegram] ⚠️ لم يُعثر على domain — webhook لن يُسجَّل تلقائياً");
      }
      startEpisodeScheduler();
    } else {
      console.log("[telegram] ℹ️ TELEGRAM_SCHEDULER_ENABLED=false — الـ scheduler معطَّل");
    }

    // تشغيل scheduler الأنيميشن دائماً (لا يحتاج Telegram token)
    startAnimationNotificationScheduler();
  })();

});
