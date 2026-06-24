/**
 * index.ts — نقطة الدخول
 * 1. يجلب المتغيرات من Orkestr API إذا كان SUPABASE_URL غير موجود
 * 2. يُشغّل التطبيق بعد اكتمال البوتستراب
 */

const rawPort = process.env["PORT"];
if (!rawPort) throw new Error("PORT environment variable is required but was not provided.");
const port = Number(rawPort);
if (Number.isNaN(port) || port <= 0) throw new Error(`Invalid PORT value: "${rawPort}"`);

// ── Bootstrap: جلب متغيرات Orkestr إذا كانت Supabase غير مضبوطة ──────────
if (!process.env.SUPABASE_URL || !process.env.SUPABASE_SERVICE_KEY) {
  const apiKey     = process.env.ORKESTR_API_KEY;
  const projectId  = process.env.ORKESTR_PROJECT_ID || "69e4e91d-22a1-4b4e-ac3f-00bac7bc5c4d";

  if (apiKey) {
    try {
      console.log("[bootstrap] 🔄 جلب إعدادات Supabase من Orkestr...");
      const res = await fetch(
        `https://console.orkestr.eu/api/projects/${projectId}/env-vars`,
        {
          headers: { "Authorization": `Bearer ${apiKey}` },
          signal: AbortSignal.timeout(12000),
        }
      );
      if (res.ok) {
        const data = await res.json() as { env_vars?: Record<string, string> };
        const vars = data.env_vars || {};
        const injected: string[] = [];
        for (const key of [
          "SUPABASE_URL", "SUPABASE_SERVICE_KEY",
          "SMTP_USER", "SMTP_PASS", "SMTP_HOST", "SMTP_PORT",
          "TELEGRAM_BOT_TOKEN",
          "GITHUB_CLIENT_ID", "GITHUB_CLIENT_SECRET",
        ]) {
          if (vars[key] && !process.env[key]) {
            process.env[key] = vars[key];
            injected.push(key);
          }
        }
        if (injected.length > 0) {
          console.log("[bootstrap] ✅ تم جلب:", injected.join(", "));
        }
      } else {
        console.warn("[bootstrap] ⚠️ Orkestr API أعاد:", res.status);
      }
    } catch (e: any) {
      console.warn("[bootstrap] ⚠️ فشل جلب إعدادات Orkestr:", e.message);
    }
  } else {
    console.warn("[bootstrap] ⚠️ ORKESTR_API_KEY غير موجود");
  }
}

// ── تحميل التطبيق بعد البوتستراب (dynamic import لضمان قراءة env المحدّثة) ──
const { createApp }          = await import("./app.js");
const { logger }             = await import("./lib/logger.js");
const { initEmailService }   = await import("./auth/emailService.js");
const { registerTelegramWebhook, startEpisodeScheduler } = await import("./routes/telegram.js");

const app  = await createApp();
const host = process.env["IP"] ? "::" : "0.0.0.0";

app.listen(port, host, (err) => {
  if (err) {
    logger.error({ err }, "Error listening on port");
    process.exit(1);
  }

  logger.info({ port }, "Server listening");

  initEmailService().catch(() => {});

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
    console.log("[telegram] ℹ️ TELEGRAM_SCHEDULER_ENABLED=false — الـ scheduler معطَّل على هذا الخادم");
  }
});
