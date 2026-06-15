import express, { type Express } from "express";
import cors from "cors";
import helmet from "helmet";
import path from "path";
import { fileURLToPath } from "url";
import pinoHttp from "pino-http";
import router from "./routes";
import userdataRouter from "./routes/userdata.js";
import commentsRouter from "./routes/comments.js";
import adminRouter from "./routes/admin.js";
import reportRouter from "./routes/report.js";
import telegramRouter from "./routes/telegram.js";
import authTokenRouter from "./routes/authToken.js";
import { logger } from "./lib/logger";
import { setupSession, registerEmailAuthRoutes, registerGoogleAuthRoutes, registerGithubAuthRoutes } from "./auth/index.js";
import { validateAnonToken, checkRateLimit, validateClientId } from "./lib/security.js";

// ── المسارات المحمية بالتوكن + Client-ID ──
// (يُستدعى من كود التطبيق فقط، ليس من مشغّل الفيديو مباشرة)
const PROTECTED_PATHS = [
  "/api/anime/sources-stream",
  "/api/anime/fetch-source",
  "/api/anime/extract-video",
  "/api/animation/sources-stream",
];

// ── مسارات الـ proxy — rate-limit فقط (يُستدعى من المشغّل مباشرة، لا يقبل headers) ──
const PROXY_PATHS = [
  "/api/anime/hls-proxy",
  "/api/anime/seg-proxy",
  "/api/anime/video-proxy",
];

// ── مسارات API العامة — rate-limit خفيف ──
const RATE_ONLY_PATHS = [
  "/api/anime/",
  "/api/animation/",
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
  // ── HTTP Security Headers (Helmet) ──
  app.use(helmet({
    contentSecurityPolicy: false,
    crossOriginEmbedderPolicy: false,
  }));

  app.use(cors({ origin: true, credentials: true }));
  app.use(express.json({ limit: "10mb" }));
  app.use(express.urlencoded({ extended: true }));

  setupSession(app);
  registerEmailAuthRoutes(app);
  registerGoogleAuthRoutes(app);
  registerGithubAuthRoutes(app);

  // ── توكن المصادقة (يجب أن يسبق Middleware الحماية) ──
  app.use(authTokenRouter);

  // ── Middleware: Rate limit شامل على كل /api/ ──
  app.use((req, res, next) => {
    const p = req.path;
    const isApiPath = PROTECTED_PATHS.some(pp => p.startsWith(pp)) ||
                      PROXY_PATHS.some(pp => p.startsWith(pp)) ||
                      RATE_ONLY_PATHS.some(pp => p.startsWith(pp));
    if (!isApiPath) return next();

    const ip =
      (req.headers["x-forwarded-for"] as string)?.split(",")[0].trim() ||
      req.socket.remoteAddress ||
      "unknown";

    // حد عام: 300 طلب/دقيقة لكل IP على مسارات الـ API
    if (!checkRateLimit(`api:${ip}`, 300, 60_000)) {
      res.status(429).json({ error: "Too many requests. Slow down.", code: "RATE_LIMIT" });
      return;
    }

    next();
  });

  // ── Middleware: حماية المسارات الحساسة بالتوكن + Client-ID ──
  app.use((req, res, next) => {
    const p = req.path;
    if (!PROTECTED_PATHS.some(pp => p.startsWith(pp))) return next();

    const ip =
      (req.headers["x-forwarded-for"] as string)?.split(",")[0].trim() ||
      req.socket.remoteAddress ||
      "unknown";

    // Rate limit مشدَّد: 80 طلب/دقيقة على المصادر الحساسة
    if (!checkRateLimit(`src:${ip}`, 80, 60_000)) {
      res.status(429).json({ error: "Too many source requests. Please slow down.", code: "RATE_LIMIT_SRC" });
      return;
    }

    // التحقق من معرّف العميل (header أو query param لـ SSE/EventSource)
    const clientId = (req.headers["x-nova-client"] as string) ||
                     (req.query._client as string) || "";
    if (!validateClientId(clientId)) {
      res.status(403).json({
        error: "Access denied. Use the official Anime NOVA app.",
        code: "INVALID_CLIENT",
      });
      return;
    }

    // التحقق من التوكن (header أو query param لـ SSE/EventSource)
    const token =
      (req.headers["x-app-token"] as string) ||
      (req.query._tok as string) || "";

    if (!validateAnonToken(token)) {
      res.status(403).json({
        error: "Access denied. Token required.",
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
