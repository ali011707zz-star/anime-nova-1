import { createApp } from "./app";
import { logger } from "./lib/logger";
import { initEmailService } from "./auth/emailService";
import { registerTelegramWebhook, startEpisodeScheduler } from "./routes/telegram.js";

const rawPort = process.env["PORT"];

if (!rawPort) {
  throw new Error(
    "PORT environment variable is required but was not provided.",
  );
}

const port = Number(rawPort);

if (Number.isNaN(port) || port <= 0) {
  throw new Error(`Invalid PORT value: "${rawPort}"`);
}

const app = await createApp();

// AlwaysData sets IP env var (IPv6) → use "::" ; everywhere else use "0.0.0.0"
const host = process.env["IP"] ? "::" : "0.0.0.0";

app.listen(port, host, (err) => {
  if (err) {
    logger.error({ err }, "Error listening on port");
    process.exit(1);
  }

  logger.info({ port }, "Server listening");

  // فحص SMTP فور بدء الخادم
  initEmailService().catch(() => {});

  // تسجيل Telegram webhook + scheduler
  // TELEGRAM_SCHEDULER_ENABLED=false → يُعطَّل على هذا الخادم (يعمل من خادم خارجي مثل Orkestr)
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
