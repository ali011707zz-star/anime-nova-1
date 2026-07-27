<<<<<<< HEAD
import express, { type Express } from "express";
import cors from "cors";
import pinoHttp from "pino-http";
import router from "./routes";
import { logger } from "./lib/logger";

const app: Express = express();

app.use(
  pinoHttp({
    logger,
    serializers: {
      req(req) {
        return {
          id: req.id,
          method: req.method,
          url: req.url?.split("?")[0],
        };
      },
      res(res) {
        return {
          statusCode: res.statusCode,
        };
      },
    },
  }),
);
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use("/api", router);

export default app;
=======
import express, { type Express, type Request, type Response, type NextFunction } from "express";
import cors from "cors";
import path from "path";
import http from "http";
import { fileURLToPath } from "url";
import pinoHttp from "pino-http";
import router from "./routes";
import userdataRouter from "./routes/userdata.js";
import commentsRouter from "./routes/comments.js";
import adminRouter from "./routes/admin.js";
import dbRelayRouter from "./routes/dbRelay.js";
import reportRouter from "./routes/report.js";
import telegramRouter, { sendAdminAlert } from "./routes/telegram.js";
import authTokenRouter from "./routes/authToken.js";
import newsRouter from "./routes/news.js";
import notificationsRouter from "./routes/notifications.js";
import { logger } from "./lib/logger";
import { setupSession, registerEmailAuthRoutes, registerGoogleAuthRoutes, registerGithubAuthRoutes } from "./auth/index.js";
import sitemapRouter from "./routes/sitemap.js";
import { validateAnonToken, checkRateLimit } from "./lib/security.js";

// ── المسارات التي تتطلب توكن صالح ──
const PROTECTED_PATHS = [
  "/api/anime/fetch-source",
];

const __dirname = path.dirname(fileURLToPath(import.meta.url));

export async function createApp(): Promise<Express> {
  const app: Express = express();

  // ثق بـ Nginx كـ reverse proxy (لقراءة X-Forwarded-For بأمان)
  app.set("trust proxy", 1);

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

  // ── Security Headers (helmet-equivalent) ────────────────────────────────────
  app.use((_req, res, next) => {
    res.removeHeader("X-Powered-By");
    res.setHeader("X-Content-Type-Options", "nosniff");
    res.setHeader("X-Frame-Options", "SAMEORIGIN");
    res.setHeader("X-XSS-Protection", "1; mode=block");
    res.setHeader("Referrer-Policy", "strict-origin-when-cross-origin");
    res.setHeader("Permissions-Policy", "camera=(), microphone=(), geolocation=()");
    next();
  });

  // ── CORS — السماح للواجهة الأمامية وتطبيق الموبايل فقط ─────────────────────
  const ALLOWED_ORIGINS = new Set([
    process.env.FRONTEND_ORIGIN || "",
    process.env.APP_DOMAIN ? `https://${process.env.APP_DOMAIN}` : "",
    process.env.APP_DOMAIN ? `http://${process.env.APP_DOMAIN}` : "",
    // Replit dev domains
    process.env.REPLIT_DEV_DOMAIN ? `https://${process.env.REPLIT_DEV_DOMAIN}` : "",
    ...(process.env.REPLIT_DOMAINS?.split(",").map(d => `https://${d.trim()}`) ?? []),
  ].filter(Boolean));

  app.use(cors({
    origin: (origin, cb) => {
      // السماح للطلبات بدون origin (mobile apps, curl, server-to-server)
      if (!origin) return cb(null, true);
      if (ALLOWED_ORIGINS.has(origin)) return cb(null, true);
      // السماح لـ Replit domains (*.replit.dev, *.repl.co, *.replit.app)
      if (origin.endsWith(".replit.dev") || origin.endsWith(".repl.co") || origin.endsWith(".replit.app")) {
        return cb(null, true);
      }
      // السماح لـ DuckDNS (VPS self-hosted — animenovaa.duckdns.org وما شابهه)
      if (/^https?:\/\/[a-zA-Z0-9-]+\.duckdns\.org$/.test(origin)) return cb(null, true);
      // في التطوير: اسمح بأي localhost
      if (origin.includes("localhost") || origin.includes("127.0.0.1")) return cb(null, true);
      // السماح لـ nova-player.local (Expo mobile OAuth WebViews)
      if (origin.includes("nova-player.local") || origin.endsWith(".local")) return cb(null, true);
      cb(new Error(`CORS: ${origin} غير مسموح`));
    },
    credentials: true,
  }));

  // ── Global Rate Limit — 300 طلب/دقيقة لكل IP (حماية من DDoS) ─────────────
  app.use((req, res, next) => {
    const ip =
      (req.headers["x-forwarded-for"] as string)?.split(",")[0].trim() ||
      req.socket.remoteAddress || "unknown";
    if (!checkRateLimit(`global:${ip}`, 300, 60_000)) {
      res.status(429).json({ error: "Too many requests. Please slow down." });
      return;
    }
    next();
  });

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
  app.use("/api", newsRouter);
  app.use("/api", notificationsRouter);
  app.use("/api", userdataRouter);
  app.use("/api", commentsRouter);
  app.use("/api", adminRouter);
  app.use("/api", dbRelayRouter);
  app.use(reportRouter);
  app.use(telegramRouter);

  // ── Proxy /nova-mobile/* → port 3000 (Nova Mobile static server) ──
  app.use("/nova-mobile", (req, res) => {
    const qs = req.url.includes("?") ? req.url.substring(req.url.indexOf("?")) : "";
    const target = `http://127.0.0.1:3000/nova-mobile${req.path}${qs}`;
    const proxyReq = http.request(
      target,
      { method: req.method, headers: { ...req.headers, host: "127.0.0.1:3000" } },
      (proxyRes) => {
        res.writeHead(proxyRes.statusCode!, proxyRes.headers as any);
        proxyRes.pipe(res, { end: true });
      }
    );
    proxyReq.on("error", () => {
      if (!res.headersSent) res.status(502).send("Nova Mobile غير متاح حالياً");
    });
    req.pipe(proxyReq, { end: true });
  });

  // Serve built frontend in production
  const frontendDist = path.resolve(__dirname, "../../anime-scraper/dist/public");
  app.use(express.static(frontendDist));
  app.get("/{*path}", (_req, res) => {
    res.sendFile(path.join(frontendDist, "index.html"));
  });

  // ── Global error handler → يُرسل أخطاء 500 لـ Telegram ─────────────────
  app.use((err: any, _req: Request, res: Response, _next: NextFunction) => {
    const msg = err?.message || String(err);
    logger.error({ err }, "Unhandled server error");

    // أرسل للأدمن عبر Telegram (بدون انتظار)
    sendAdminAlert(
      `⚠️ <b>خطأ في الخادم</b>\n\n<code>${msg.slice(0, 300)}</code>`
    ).catch(() => {});

    if (!res.headersSent) {
      res.status(500).json({ error: "Internal server error" });
    }
  });

  return app;
}
>>>>>>> 22277ebee9275f51cb7b54c9b3300c5144e2c175
