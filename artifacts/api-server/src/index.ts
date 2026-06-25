/**
 * index.ts — نقطة الدخول
 * يتصل مباشرة بـ Supabase عبر متغيرات البيئة (SUPABASE_URL + SUPABASE_SERVICE_KEY)
 */

const rawPort = process.env["PORT"];
if (!rawPort) throw new Error("PORT environment variable is required but was not provided.");
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

// ── تشغيل migration على Supabase ──
const { runSupabaseMigration } = await import("./lib/supabaseMigrate.js");
await runSupabaseMigration();

// ── تحميل التطبيق ──
const { createApp }          = await import("./app.js");
const { logger }             = await import("./lib/logger.js");
const { initEmailService }   = await import("./auth/emailService.js");
const { registerTelegramWebhook, startEpisodeScheduler } = await import("./routes/telegram.js");

const app  = await createApp();
const host = "0.0.0.0";

app.listen(port, host, (err) => {
  if (err) {
    logger.error({ err }, "Error listening on port");
    process.exit(1);
  }

  logger.info({ port }, "Server listening");

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
    }).then(r => r.json()).then((d: any) => {
      if (d.ok) console.log("[smtp-sync] ✅ Orkestr SMTP synced →", d.smtp_user);
      else console.warn("[smtp-sync] ⚠️ Orkestr SMTP sync failed:", d.error || JSON.stringify(d));
    }).catch(() => {});
  }

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
});
