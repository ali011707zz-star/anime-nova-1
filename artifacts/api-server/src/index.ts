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

app.listen(port, "0.0.0.0", (err) => {
  if (err) {
    logger.error({ err }, "Error listening on port");
    process.exit(1);
  }

  logger.info({ port }, "Server listening");

  // فحص SMTP فور بدء الخادم
  initEmailService().catch(() => {});

  // تسجيل Telegram webhook
  const domain = process.env.REPLIT_DEV_DOMAIN || process.env.REPLIT_DOMAINS?.split(",")[0];
  if (domain) {
    registerTelegramWebhook(domain).catch(() => {});
  }

  // تشغيل scheduler الحلقات الجديدة
  startEpisodeScheduler();
});
