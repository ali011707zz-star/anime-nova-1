/**
 * index.ts — Entry point for Replit environment
 * Uses Replit's native DATABASE_URL and environment variables directly.
 */

const rawPort = process.env["PORT"];
if (!rawPort) throw new Error("PORT environment variable is required but was not provided.");
const port = Number(rawPort);
if (Number.isNaN(port) || port <= 0) throw new Error(`Invalid PORT value: "${rawPort}"`);

// Generate a session secret if not set (development fallback)
if (!process.env.SESSION_SECRET) {
  process.env.SESSION_SECRET = "nova-anime-replit-secret-" + Math.random().toString(36).slice(2);
  console.warn("[bootstrap] ⚠️ SESSION_SECRET not set — using ephemeral secret. Set SESSION_SECRET env var for persistent sessions.");
}

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
      console.warn("[telegram] ⚠️ No domain found — webhook will not be registered automatically");
    }
    startEpisodeScheduler();
  } else {
    console.log("[telegram] ℹ️ TELEGRAM_SCHEDULER_ENABLED=false — scheduler disabled");
  }
});
