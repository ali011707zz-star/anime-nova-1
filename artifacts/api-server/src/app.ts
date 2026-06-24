import express, { type Express } from "express";
import cors from "cors";
import path from "path";
import { fileURLToPath } from "url";
import pinoHttp from "pino-http";
import router from "./routes";
import userdataRouter from "./routes/userdata.js";
import commentsRouter from "./routes/comments.js";
import adminRouter from "./routes/admin.js";
import dbRelayRouter from "./routes/dbRelay.js";
import reportRouter from "./routes/report.js";
import telegramRouter from "./routes/telegram.js";
import authTokenRouter from "./routes/authToken.js";
import { logger } from "./lib/logger";
import { setupSession, registerEmailAuthRoutes, registerGoogleAuthRoutes, registerGithubAuthRoutes } from "./auth/index.js";
import { validateAnonToken, checkRateLimit } from "./lib/security.js";

// ── المسارات التي تتطلب توكن صالح ──
const PROTECTED_PATHS = [
  "/api/anime/fetch-source",
];

const __dirname = path.dirname(fileURLToPath(import.meta.url));

export async function createApp(): Promise<Express> {
  const app: Express = express();

  app.use(
    pinoHttp({
      logger,
      serializers: {
        req(req) {
          return { id: req.id, method: req.method, url: req.url?.split("?")[0] };
        },
        res(res) {
          return { statusCode: res.statusCode };
        },
      },
    }),
  );
  app.use(cors({ origin: true, credentials: true }));
  app.use(express.json({ limit: "10mb" }));
  app.use(express.urlencoded({ extended: true }));

  setupSession(app);
  registerEmailAuthRoutes(app);
  registerGoogleAuthRoutes(app);
  registerGithubAuthRoutes(app);

  // ── توكن المصادقة (يجب أن يسبق Middleware الحماية) ──
  app.use(authTokenRouter);

  // ── Middleware حماية المسارات الحساسة ──
  app.use((req, res, next) => {
    const p = req.path; // مثال: /api/anime/fetch-source
    if (!PROTECTED_PATHS.some(pp => p.startsWith(pp))) return next();

    const ip =
      (req.headers["x-forwarded-for"] as string)?.split(",")[0].trim() ||
      req.socket.remoteAddress ||
      "unknown";

    // السماح للطلبات الداخلية (من نفس السيرفر) بدون توكن
    const isInternal =
      req.headers["x-internal"] === "1" &&
      (ip === "127.0.0.1" || ip === "::1" || ip === "::ffff:127.0.0.1");
    if (isInternal) return next();

    // Rate limit: 120 طلب/دقيقة لكل IP
    if (!checkRateLimit(`src:${ip}`, 120, 60_000)) {
      res.status(429).json({ error: "Too many requests. Please slow down." });
      return;
    }

    // التحقق من التوكن (header أو query param)
    const token =
      (req.headers["x-app-token"] as string) ||
      (req.query._tok as string) || "";

    if (!validateAnonToken(token)) {
      res.status(403).json({
        error: "Access denied. Use the official Anime NOVA app.",
        code: "INVALID_TOKEN",
      });
      return;
    }

    next();
  });

  app.use("/api", router);
  app.use("/api", userdataRouter);
  app.use("/api", commentsRouter);
  app.use("/api", adminRouter);
  app.use("/api", dbRelayRouter);
  app.use(reportRouter);
  app.use(telegramRouter);

  // Serve built frontend in production
  const frontendDist = path.resolve(__dirname, "../../anime-scraper/dist/public");
  app.use(express.static(frontendDist));
  app.get("/{*path}", (_req, res) => {
    res.sendFile(path.join(frontendDist, "index.html"));
  });

  return app;
}
