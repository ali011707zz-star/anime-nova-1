import fs from "fs";
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
import telegramStorageRouter from "./routes/telegramStorage.js";
import authTokenRouter from "./routes/authToken.js";
import pushRouter from "./routes/push.js";
import newsRouter from "./routes/news.js";
import notificationsRouter from "./routes/notifications.js";
import { logger } from "./lib/logger";
import { sbSelect } from "./lib/supabaseClient.js";
import { setupSession, registerEmailAuthRoutes, registerGoogleAuthRoutes, registerGithubAuthRoutes } from "./auth/index.js";
import sitemapRouter from "./routes/sitemap.js";
import { getAnimeSeoEntryById, getArabicAnimeTitleById } from "./lib/arabicAnimeTitles.js";
import crashReportRouter from "./routes/crashReport.js";
import hlsProxyRouter from "./routes/hlsProxy.js";
import otaRouter from "./routes/ota.js";
import filmRouter from "./routes/film.js";
import otaFilmRouter from "./routes/otaFilm.js";
import mediaVaultRouter from "./routes/mediaVault.js";
import { registerWebAdminRoutes } from "./routes/webAdmin.js";
import analyticsRouter from "./routes/analytics.js";
import deviceLinkRouter from "./routes/deviceLink.js";
import {
  validateAnonToken,
  validateMobileAppIdentity,
  checkRateLimit,
  assertSecurityConfig,
  MOBILE_CLIENT_ID,
  getDeviceUserTokenInfo,
  validateDownloadToken,
} from "./lib/security.js";

// ── المسارات التي تتطلب توكن صالح ──
const PROTECTED_PATHS = [
  "/api/anime/fetch-source",
  "/api/anime/download-mp4",
  "/api/animation/sources-stream",
];

const __dirname = path.dirname(fileURLToPath(import.meta.url));

export async function createApp(): Promise<Express> {
  assertSecurityConfig();
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
    if (process.env.NODE_ENV === "production") {
      res.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains");
    }
    next();
  });

  // ── CORS — السماح للواجهة الأمامية وتطبيق الموبايل فقط ─────────────────────
  // Native players forward the provider's Referer/Origin headers to the
  // media proxy (for example megaplay.buzz). Those origins must never be
  // allowed to call the application API, but they also must not be rejected
  // by this global CORS guard before the proxy can handle the request.
  const MEDIA_PROXY_PATH = /^\/api\/(?:anime|animation|film)\/(?:hls-proxy|video-proxy|seg-proxy|download-mp4)$/;
  const ALLOWED_ORIGINS = new Set([
    process.env.FRONTEND_ORIGIN || "",
    process.env.APP_DOMAIN ? `https://${process.env.APP_DOMAIN}` : "",
    process.env.NODE_ENV !== "production" && process.env.APP_DOMAIN
      ? `http://${process.env.APP_DOMAIN}`
      : "",
    // Replit dev domains
    process.env.REPLIT_DEV_DOMAIN ? `https://${process.env.REPLIT_DEV_DOMAIN}` : "",
    ...(process.env.REPLIT_DOMAINS?.split(",").map(d => `https://${d.trim()}`) ?? []),
    // AniNeko/AnimeKai WebView players make same-API requests with their
    // embed origin. Keep this explicit instead of opening production CORS.
    "https://otakuvid.online",
    "https://otakuhg.online",
    "https://www3.anikai.cc",
  ].filter(Boolean));

  const corsOptions = {
    origin: (origin, cb) => {
      // السماح للطلبات بدون origin (mobile apps, curl, server-to-server)
      if (!origin) return cb(null, true);
      if (ALLOWED_ORIGINS.has(origin)) return cb(null, true);
      // Development-only origins. Never keep these wildcards in production.
      if (process.env.NODE_ENV !== "production") {
        if (origin.endsWith(".replit.dev") || origin.endsWith(".repl.co") || origin.endsWith(".replit.app")) {
          return cb(null, true);
        }
        if (origin.includes("localhost") || origin.includes("127.0.0.1")) return cb(null, true);
      }
      // Exact origin used by the mobile OAuth WebView and AI Studio preview.
      if (
        origin === "https://nova-player.local" ||
        origin === "http://nova-player.local" ||
        origin.endsWith(".run.app")
      ) {
        return cb(null, true);
      }
      cb(new Error(`CORS: ${origin} غير مسموح`));
    },
    credentials: true,
  };

  app.use((req, res, next) => {
    if (MEDIA_PROXY_PATH.test(req.path)) {
      res.setHeader("Access-Control-Allow-Origin", "*");
      res.setHeader(
        "Access-Control-Allow-Headers",
        "Range, Content-Type, X-App-Token, X-Download-Token",
      );
      res.setHeader(
        "Access-Control-Expose-Headers",
        "Accept-Ranges, Content-Length, Content-Range, Content-Type, Content-Disposition",
      );
      if (req.method === "OPTIONS") {
        res.status(204).end();
        return;
      }
      next();
      return;
    }
    cors(corsOptions)(req, res, next);
  });

  // ── Global Rate Limit — 300 طلب/دقيقة لكل IP (حماية من DDoS) ─────────────
  app.use(async (req, res, next) => {
    const ip =
      (req.headers["x-forwarded-for"] as string)?.split(",")[0].trim() ||
      req.socket.remoteAddress || "unknown";
    if (!checkRateLimit(`global:${ip}`, 300, 60_000)) {
      res.status(429).json({ error: "Too many requests. Please slow down." });
      return;
    }
    next();
  });

  // Keep request bodies bounded. Large media never belongs in the API body;
  // it must be streamed through the dedicated proxy routes.
  app.use(express.json({ limit: "2mb" }));
  app.use(express.urlencoded({ extended: false, limit: "64kb" }));

  // A malformed client body is a 400, not an internal server failure. In
  // particular, never turn JSON parser noise into a Telegram alert storm.
  app.use((err: any, _req: Request, res: Response, next: NextFunction) => {
    if (err?.type === "entity.parse.failed" || err instanceof SyntaxError) {
      res.status(400).json({ error: "Invalid JSON request body" });
      return;
    }
    next(err);
  });

  setupSession(app);
  registerEmailAuthRoutes(app);
  registerGoogleAuthRoutes(app);
  registerGithubAuthRoutes(app);
  registerWebAdminRoutes(app);

  // ── توكن المصادقة وتحديثات OTA الهوائية (تسبق Middleware الحماية) ──
  app.use(authTokenRouter);
  app.use("/api/ota", otaRouter);
  app.use("/api/ota-film", otaFilmRouter);
  app.use("/api/media-vault", mediaVaultRouter);

  // ── Mobile release gate ───────────────────────────────────────────────────
  // Web requests remain public as before. Any request identifying itself as the
  // mobile client must prove its release identity and carry a valid app token
  // before it can receive config, catalog, posters, sources, or playback data.
  // Background MP4 downloads may additionally use their longer-lived lease.
  app.use(async (req, res, next) => {
    const clientHeader = req.headers["x-nova-client"];
    const isMediaProxyRequest = MEDIA_PROXY_PATH.test(req.path);
    const isMobileClient =
      clientHeader === MOBILE_CLIENT_ID ||
      (Array.isArray(clientHeader) && clientHeader.includes(MOBILE_CLIENT_ID)) ||
      clientHeader !== undefined;
    if (!isMobileClient) return next();

    const identity = validateMobileAppIdentity(req.headers);
    /* Older installed builds sent only X-Nova-Client on background media
       downloads. Keep those downloads working while still requiring the
       exact client id and the short-lived app token below. New builds send
       package/version as well; non-media API routes remain strict. */
    const legacyMediaIdentity =
      isMediaProxyRequest &&
      clientHeader === MOBILE_CLIENT_ID &&
      (!identity.ok &&
        (identity.code === "INVALID_PACKAGE" || identity.code === "APP_UPDATE_REQUIRED"));
    if (!identity.ok && !legacyMediaIdentity) {
      if (isMediaProxyRequest) {
        console.warn(`[mobile-gate] rejected media path=${req.path} code=${identity.code}`);
      }
      res.status(403).json({
        error: "هذه النسخة غير رسمية أو تحتاج إلى تحديث. حمّل النسخة الرسمية من الموقع.",
        code: identity.code,
        officialDownloadRequired: true,
      });
      return;
    }

    const tokenHeader = req.headers["x-app-token"];
    const token = Array.isArray(tokenHeader) ? tokenHeader[0] : tokenHeader;
    const downloadTokenHeader = req.headers["x-download-token"];
    const downloadToken = (Array.isArray(downloadTokenHeader) ? downloadTokenHeader[0] : downloadTokenHeader) || (req.query.dlToken as string) || (req.query.downloadToken as string);
    const hasValidMediaToken =
      validateAnonToken(token || "") ||
      (isMediaProxyRequest && validateDownloadToken(downloadToken || ""));
    if (!hasValidMediaToken) {
      if (isMediaProxyRequest) {
        console.warn(`[mobile-gate] rejected media path=${req.path} code=INVALID_TOKEN hasAppToken=${Boolean(token)} hasDownloadToken=${Boolean(downloadToken)}`);
      }
      res.status(403).json({
        error: "انتهت جلسة النسخة الرسمية. أعد فتح التطبيق.",
        code: "INVALID_TOKEN",
        officialDownloadRequired: true,
      });
      return;
    }

    // Linked-device tokens are stateful at the device-link layer: revocation on the phone
    // must take effect on the next request, unlike the normal stateless mobile token.
    const userTokenHeader = req.headers["x-user-token"];
    const userToken = Array.isArray(userTokenHeader) ? userTokenHeader[0] : userTokenHeader;
    const deviceToken = getDeviceUserTokenInfo(userToken);
    if (deviceToken) {
      const linked = await sbSelect("linked_devices", {
        user_id: `eq.${deviceToken.userId}`,
        device_id: `eq.${deviceToken.deviceId}`,
        revoked_at: "is.null",
      }, { limit: 1 });
      if (!linked.length) {
        res.status(403).json({
          error: "تم إلغاء ربط هذا الجهاز من الهاتف.",
          code: "DEVICE_REVOKED",
        });
        return;
      }
    }
    next();
  });

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
    const downloadToken = (req.headers["x-download-token"] as string) || (req.query.dlToken as string) || (req.query.downloadToken as string);

    if (!validateAnonToken(token) && !(p === "/api/anime/download-mp4" && validateDownloadToken(downloadToken || ""))) {
      res.status(403).json({
        error: "Access denied. Use the official Anime NOVA app.",
        code: "INVALID_TOKEN",
      });
      return;
    }

    next();
  });

  app.use("/api/film", filmRouter);
  app.use("/api", router);
  app.use("/api/push", pushRouter);
  app.use("/api", pushRouter);
  app.use("/api", newsRouter);
  app.use("/api", notificationsRouter);
  app.use("/api", userdataRouter);
  app.use("/api", deviceLinkRouter);
  app.use("/api", commentsRouter);
  app.use("/api", analyticsRouter);
  app.use("/api", adminRouter);
  app.use("/api", dbRelayRouter);
  app.use(reportRouter);
  app.use(telegramRouter);
  app.use(telegramStorageRouter);
  app.use("/api/crash-report", crashReportRouter);
  // Manifest-only proxy used by the mobile AniNeko player. Segment URLs are
  // rewritten to absolute upstream URLs and are fetched directly by ExoPlayer.
  app.use(hlsProxyRouter);

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
  const publicApkDir = "/opt/anime-nova/public";

  // Serve official APK endpoints (/nova.apk for Android TV Downloader 2576388, /Anime-Nova.apk for web/mobile)
  // with strict no-cache headers so Downloader & browsers always fetch the latest v1.0.7 build.
  app.get(["/nova.apk", "/Anime-Nova.apk", "/Anime-Nova-TV.apk", "/Anime Nova.apk"], (req, res, next) => {
    res.setHeader("Cache-Control", "public, max-age=60, must-revalidate");
    res.setHeader("Pragma", "no-cache");
    res.setHeader("Expires", "0");
    res.setHeader("Content-Type", "application/vnd.android.package-archive");
    const requestedFile = decodeURIComponent(req.path.replace(/^\/+/, ""));
    const candidates = [
      path.join(publicApkDir, requestedFile),
      path.join(publicApkDir, "nova.apk"),
      path.join(publicApkDir, "Anime-Nova.apk"),
      path.join(publicApkDir, "Anime Nova.apk"),
      path.join(frontendDist, requestedFile),
      path.join(frontendDist, "nova.apk"),
      path.join(frontendDist, "Anime-Nova.apk"),
    ];
    const trySend = (idx: number) => {
      if (idx >= candidates.length) {
        next();
        return;
      }
      res.sendFile(candidates[idx], (err) => {
        if (err) trySend(idx + 1);
      });
    };
    trySend(0);
  });

  app.get("/api/apk-info", (_req, res) => {
    res.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    res.json({
      version: "1.0.7",
      versionCode: 8,
      downloaderCode: "2576388",
      downloaderShortUrl: "https://aftv.news/2576388",
      tvDirectUrl: "https://animenovaa.duckdns.org/nova.apk?v=1.0.7",
      mobileDirectUrl: "https://animenovaa.duckdns.org/Anime-Nova.apk?v=1.0.7",
    });
  });

  // Hashed assets (JS/CSS with content hash) → cache 1 year, immutable
  app.use("/assets", express.static(path.join(frontendDist, "assets"), {
    maxAge: "1y",
    immutable: true,
    etag: false,
  }));
  // Dynamic sitemap.xml & robots.txt (must precede static files so /app + 100 anime URLs are always served)
  app.use(sitemapRouter);

  // Dynamic SSR SEO injection for /, /app, /browse, /manga, /spacetoon, /cartoon, /animation, /updates, /schedule, /search, /anime/:id
  const _animeSeoExtraCache = new Map<number, { titleAr: string; titleEn: string; ts: number }>();
  const escHtmlAttr = (v: string): string =>
    String(v || "").replace(/&/g, "&amp;").replace(/"/g, "&quot;").replace(/</g, "&lt;").replace(/>/g, "&gt;");

  const resolveAnimeSeoMeta = async (animeId: number): Promise<{ titleAr: string; titleEn: string }> => {
    const local = await getAnimeSeoEntryById(animeId);
    if (local && local.titleAr && local.titleEn) return local;
    const cached = _animeSeoExtraCache.get(animeId);
    if (cached && Date.now() - cached.ts < 6 * 3_600_000) return { titleAr: cached.titleAr, titleEn: cached.titleEn };
    let titleEn = local?.titleEn || "";
    let titleAr = local?.titleAr || "";
    try {
      const resp = await fetch("https://graphql.anilist.co", {
        method: "POST",
        headers: { "Content-Type": "application/json", Accept: "application/json" },
        body: JSON.stringify({
          query: "query($id:Int){Media(id:$id,type:ANIME){id title{english romaji native} synonyms}}",
          variables: { id: animeId },
        }),
        signal: AbortSignal.timeout(1800),
      });
      if (resp.ok) {
        const json = await resp.json() as any;
        const m = json?.data?.Media;
        if (m) {
          titleEn = m.title?.english || m.title?.romaji || titleEn;
          if (!titleAr) {
            titleAr = await getArabicAnimeTitleById(animeId, {
              english: m.title?.english,
              romaji: m.title?.romaji,
              native: m.title?.native,
              synonyms: m.synonyms,
            });
          }
        }
      }
    } catch {}
    _animeSeoExtraCache.set(animeId, { titleAr, titleEn, ts: Date.now() });
    return { titleAr, titleEn };
  };

  const renderSeoHtml = async (reqPath: string): Promise<string | null> => {
    try {
      const rawHtml = fs.readFileSync(path.join(frontendDist, "index.html"), "utf8");
      const cleanPath = reqPath === "/" ? "/" : reqPath.replace(/\/+$/, "");
      const canonicalUrl = `https://animenovaa.duckdns.org${cleanPath === "/" ? "/" : cleanPath}`;
      let title = "انمي نوفا (أنمي نوفا) | تطبيق انمي نوفا وموقع مشاهدة الأنمي المترجم والمدبلج Anime NOVA";
      let desc = "موقع وتطبيق انمي نوفا (أنمي نوفا - Anime NOVA) الرسمي لمشاهدة وتحميل الأنمي المترجم والمدبلج، قراءة المانجا والمانهوا، ومسلسلات سبيستون والكرتون مجاناً بجودة عالية FHD بدون إعلانات. حمل تطبيق انمي نوفا للأندرويد والتلفاز الذكي (كود Downloader: 2576388).";
      let ogImage = "https://animenovaa.duckdns.org/opengraph.jpg";
      let rootSeoHtml = "";

      const animeMatch = cleanPath.match(/^\/anime\/(\d+)/);
      if (cleanPath === "/app") {
        title = "تطبيق انمي نوفا (أنمي نوفا APK v1.0.9) | تحميل تطبيق Anime NOVA للأندرويد والتلفاز الذكي";
        desc = "حمل تطبيق أنمي نوفا (Anime NOVA APK v1.0.9) الأصلي مجاناً للهواتف وشاشات التلفاز الذكية Android TV (كود Downloader: 2576388). مشاهدة وتحميل الأنمي المترجم والمدبلج، قراءة المانجا والمانهوا، ومسلسلات سبيستون والكرتون بدون إعلانات.";
        rootSeoHtml = `<main dir="rtl" style="max-width:960px;margin:0 auto;padding:24px;color:#f4f4f5;font-family:Cairo,sans-serif;">
          <h1>تطبيق أنمي نوفا الرسمي | تحميل تطبيق انمي نوفا للأندرويد والتلفاز الذكي (Anime NOVA APK v1.0.9)</h1>
          <p>حمل <strong>تطبيق أنمي نوفا (Anime NOVA)</strong> الأصلي مجاناً لهواتف الأندرويد وشاشات التلفاز الذكية Android TV و Google TV و Fire TV عبر <strong>كود تطبيق Downloader: 2576388</strong> أو الرابط المباشر <a href="https://aftv.news/2576388">aftv.news/2576388</a>.</p>
          <h2>مميزات تطبيق أنمي نوفا للهاتف والتلفاز الذكي</h2>
          <ul>
            <li>مشاهدة وتحميل الأنمي المترجم والمدبلج بجودة 1080p FHD مع تخطي المقدمة والنهاية تلقائياً.</li>
            <li>مكتبة المانجا اليابانية والمانهوا الكورية الملونة المترجمة بالكامل مع قارئ عمودي ذكي وتحميل الفصول بدون إنترنت.</li>
            <li>قسم خاص لمسلسلات وأفلام سبيستون، الكرتون المدبلج، والأنيميشن العائلي.</li>
            <li>نسخة مخصصة لشاشات التلفاز الذكية Android TV تدعم التحكم الكامل بالريموت والمؤشر الذكي.</li>
          </ul>
          <p><a href="https://animenovaa.duckdns.org/Anime-Nova.apk">تحميل تطبيق أنمي نوفا للهاتف (APK)</a> | <a href="https://animenovaa.duckdns.org/nova.apk">تحميل نسخة التلفاز الذكي (Android TV APK)</a> | <a href="https://animenovaa.duckdns.org/">تصفح موقع أنمي نوفا</a></p>
        </main>`;
      } else if (animeMatch) {
        const animeId = Number(animeMatch[1]);
        const meta = await resolveAnimeSeoMeta(animeId);
        const mainTitle = meta.titleAr || meta.titleEn || `أنمي #${animeId}`;
        const subTitle = meta.titleEn && meta.titleAr && meta.titleEn !== meta.titleAr ? ` (${meta.titleEn})` : "";
        title = `مشاهدة وتحميل أنمي ${mainTitle}${subTitle} مترجم | أنمي نوفا Anime NOVA`;
        desc = `شاهد وحمّل جميع حلقات أنمي ${mainTitle}${subTitle} مترجمة بالعربية بجودة عالية 1080p FHD مجاناً وبدون إعلانات على موقع وتطبيق أنمي نوفا Anime NOVA.`;
        ogImage = `https://img.anili.st/media/${animeId}`;
        rootSeoHtml = `<main dir="rtl" style="max-width:960px;margin:0 auto;padding:24px;color:#f4f4f5;font-family:Cairo,sans-serif;">
          <h1>أنمي ${escHtmlAttr(mainTitle)}${escHtmlAttr(subTitle)} مترجم — أنمي نوفا</h1>
          <p>${escHtmlAttr(desc)}</p>
          <nav aria-label="روابط أنمي نوفا">
            <ul>
              <li><a href="https://animenovaa.duckdns.org/">الرئيسية - أنمي نوفا</a></li>
              <li><a href="https://animenovaa.duckdns.org/browse">تصفح مكتبة الأنمي</a></li>
              <li><a href="https://animenovaa.duckdns.org/app">تحميل تطبيق أنمي نوفا APK v1.0.9</a></li>
            </ul>
          </nav>
        </main>`;
      } else if (cleanPath === "/browse") {
        title = "تصفح مكتبة الأنمي المترجم | أنمي نوفا Anime NOVA";
        desc = "تصفح آلاف مسلسلات وأفلام الأنمي المترجمة بالعربية في موقع وتطبيق أنمي نوفا (Anime NOVA) مع فلترة متقدمة حسب التصنيف، السنة، والتقييم العالمي.";
        rootSeoHtml = `<main dir="rtl" style="max-width:960px;margin:0 auto;padding:24px;color:#f4f4f5;font-family:Cairo,sans-serif;"><h1>تصفح مكتبة الأنمي المترجم | أنمي نوفا</h1><p>${escHtmlAttr(desc)}</p></main>`;
      } else if (cleanPath === "/manga") {
        title = "مكتبة المانجا والمانهوا المترجمة | تطبيق أنمي نوفا Anime NOVA";
        desc = "اقرأ وحمل أشهر أعمال المانجا اليابانية والمانهوا الكورية الملونة المترجمة للعربية حصرياً عبر تطبيق أنمي نوفا (Anime NOVA).";
        rootSeoHtml = `<main dir="rtl" style="max-width:960px;margin:0 auto;padding:24px;color:#f4f4f5;font-family:Cairo,sans-serif;"><h1>مكتبة المانجا والمانهوا المترجمة | أنمي نوفا</h1><p>${escHtmlAttr(desc)}</p></main>`;
      } else if (cleanPath === "/spacetoon") {
        title = "مسلسلات وأفلام سبيستون المدبلجة | تطبيق أنمي نوفا Anime NOVA";
        desc = "شاهد وحمل أجمل مسلسلات وأفلام سبيستون الكلاسيكية والحديثة المدبلجة للعربية بجودة عالية عبر تطبيق أنمي نوفا (Anime NOVA).";
        rootSeoHtml = `<main dir="rtl" style="max-width:960px;margin:0 auto;padding:24px;color:#f4f4f5;font-family:Cairo,sans-serif;"><h1>مسلسلات وأفلام سبيستون المدبلجة | أنمي نوفا</h1><p>${escHtmlAttr(desc)}</p></main>`;
      } else if (cleanPath === "/cartoon") {
        title = "كرتون مدبلج ومترجم | تطبيق وموقع أنمي نوفا Anime NOVA";
        desc = "مشاهدة وتحميل مسلسلات وأفلام الكرتون المدبلجة والمترجمة بالعربية بجودة عالية عبر تطبيق أنمي نوفا (Anime NOVA).";
        rootSeoHtml = `<main dir="rtl" style="max-width:960px;margin:0 auto;padding:24px;color:#f4f4f5;font-family:Cairo,sans-serif;"><h1>كرتون مدبلج ومترجم | أنمي نوفا</h1><p>${escHtmlAttr(desc)}</p></main>`;
      } else if (cleanPath === "/animation") {
        title = "أفلام ومسلسلات الأنيميشن | تطبيق وموقع أنمي نوفا Anime NOVA";
        desc = "مشاهدة وتحميل أحدث أفلام ومسلسلات الأنيميشن العالمية مترجمة ومدبلجة بجودة 1080p FHD عبر تطبيق أنمي نوفا (Anime NOVA).";
        rootSeoHtml = `<main dir="rtl" style="max-width:960px;margin:0 auto;padding:24px;color:#f4f4f5;font-family:Cairo,sans-serif;"><h1>أفلام ومسلسلات الأنيميشن | أنمي نوفا</h1><p>${escHtmlAttr(desc)}</p></main>`;
      } else if (cleanPath === "/updates") {
        title = "أحدث حلقات الأنمي المضافة اليوم | أنمي نوفا Anime NOVA";
        desc = "تابع أحدث حلقات الأنمي المترجمة فور صدورها يومياً بجودة عالية FHD وبدون إعلانات عبر أنمي نوفا.";
        rootSeoHtml = `<main dir="rtl" style="max-width:960px;margin:0 auto;padding:24px;color:#f4f4f5;font-family:Cairo,sans-serif;"><h1>أحدث حلقات الأنمي المضافة اليوم | أنمي نوفا</h1><p>${escHtmlAttr(desc)}</p></main>`;
      } else if (cleanPath === "/schedule") {
        title = "جدول مواعيد عرض حلقات الأنمي الأسبوعي | أنمي نوفا Anime NOVA";
        desc = "تعرّف على جدول مواعيد عرض الحلقات الجديدة للأنميات الموسمية على مدار الأسبوع بتوقيتك المحلي في أنمي نوفا.";
        rootSeoHtml = `<main dir="rtl" style="max-width:960px;margin:0 auto;padding:24px;color:#f4f4f5;font-family:Cairo,sans-serif;"><h1>جدول مواعيد عرض حلقات الأنمي الأسبوعي | أنمي نوفا</h1><p>${escHtmlAttr(desc)}</p></main>`;
      } else if (cleanPath === "/search") {
        title = "البحث في مكتبة الأنمي والمانجا | أنمي نوفا Anime NOVA";
        desc = "ابحث باللغة العربية أو الإنجليزية عن أي أنمي أو مانجا أو كرتون مدبلج وشاهده مجاناً عبر أنمي نوفا.";
        rootSeoHtml = `<main dir="rtl" style="max-width:960px;margin:0 auto;padding:24px;color:#f4f4f5;font-family:Cairo,sans-serif;"><h1>البحث في مكتبة أنمي نوفا</h1><p>${escHtmlAttr(desc)}</p></main>`;
      }

      const safeTitle = escHtmlAttr(title);
      const safeDesc = escHtmlAttr(desc);
      const safeCanonical = escHtmlAttr(canonicalUrl);
      const safeOgImg = escHtmlAttr(ogImage);
      let html = rawHtml
        .replace(/<title>[\s\S]*?<\/title>/i, `<title>${safeTitle}</title>`)
        .replace(/<meta name="description" content="[^"]*" \/>/i, `<meta name="description" content="${safeDesc}" />`)
        .replace(/<link rel="canonical" href="[^"]*" \/>/i, `<link rel="canonical" href="${safeCanonical}" />`)
        .replace(/<meta property="og:title" content="[^"]*" \/>/i, `<meta property="og:title" content="${safeTitle}" />`)
        .replace(/<meta property="og:description" content="[^"]*" \/>/i, `<meta property="og:description" content="${safeDesc}" />`)
        .replace(/<meta property="og:url" content="[^"]*" \/>/i, `<meta property="og:url" content="${safeCanonical}" />`)
        .replace(/<meta property="og:image" content="[^"]*" \/>/i, `<meta property="og:image" content="${safeOgImg}" />`)
        .replace(/<meta name="twitter:title" content="[^"]*" \/>/i, `<meta name="twitter:title" content="${safeTitle}" />`)
        .replace(/<meta name="twitter:description" content="[^"]*" \/>/i, `<meta name="twitter:description" content="${safeDesc}" />`)
        .replace(/<meta name="twitter:image" content="[^"]*" \/>/i, `<meta name="twitter:image" content="${safeOgImg}" />`);
      if (rootSeoHtml) {
        html = html.replace(/<div id="root">[\s\S]*?<\/main>\s*<\/div>/i, `<div id="root">${rootSeoHtml}</div>`);
      }
      return html;
    } catch {
      return null;
    }
  };

  // Smart redirect for /watch/:id?ep=N (fixes legacy / Telegram direct links so Watch opens the exact episode & title!)
  const watchMetaCache = new Map<number, { romaji: string; english: string; cover: string; at: number }>();
  app.get("/watch/:id", async (req, res, next) => {
    const id = parseInt(String(req.params.id || ""), 10);
    if (!Number.isFinite(id) || id <= 0) return next();
    const ep = Math.max(1, parseInt(String(req.query.ep || "1"), 10) || 1);
    const params = new URLSearchParams();
    for (const [k, v] of Object.entries(req.query || {})) {
      if (typeof v === "string" && v.trim()) params.set(k, v);
    }
    params.set("anime", String(id));
    params.set("anilistId", String(id));
    params.set("ep", String(ep));
    if (!params.get("totalEps")) params.set("totalEps", String(ep));
    params.set("fromLatest", "1");

    if (!params.get("title") || !params.get("english")) {
      let meta = watchMetaCache.get(id);
      if (!meta || Date.now() - meta.at > 6 * 3600_000) {
        try {
          const r = await fetch("https://graphql.anilist.co", {
            method: "POST",
            headers: { "Content-Type": "application/json", Accept: "application/json" },
            body: JSON.stringify({
              query: "query($id:Int){Media(id:$id,type:ANIME){title{romaji english}coverImage{large}}}",
              variables: { id },
            }),
            signal: AbortSignal.timeout(3_500),
          });
          if (r.ok) {
            const j: any = await r.json();
            const m = j?.data?.Media;
            if (m) {
              meta = {
                romaji: String(m.title?.romaji || m.title?.english || "").trim(),
                english: String(m.title?.english || m.title?.romaji || "").trim(),
                cover: String(m.coverImage?.large || "").trim(),
                at: Date.now(),
              };
              watchMetaCache.set(id, meta);
            }
          }
        } catch {}
      }
      if (meta) {
        if (!params.get("title") && (meta.romaji || meta.english)) params.set("title", meta.romaji || meta.english);
        if (!params.get("english") && meta.english) params.set("english", meta.english);
        if (!params.get("cover") && meta.cover) params.set("cover", meta.cover);
      }
    }

    res.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    res.redirect(302, `/watch?${params.toString()}`);
  });

  // Serve static files except index.html so "/" also goes through renderSeoHtml with no-cache
  app.use(express.static(frontendDist, { maxAge: 0, etag: true, index: false }));

  app.get("/{*path}", async (req, res) => {
    res.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    const html = await renderSeoHtml(req.path || "/");
    if (html) {
      res.setHeader("Content-Type", "text/html; charset=utf-8");
      res.status(200).send(html);
      return;
    }
    res.sendFile(path.join(frontendDist, "index.html"));
  });

  // ── Global error handler → يُرسل أخطاء 500 لـ Telegram ─────────────────
  app.use((err: any, _req: Request, res: Response, _next: NextFunction) => {
    const msg = err?.message || String(err);
    logger.error({ err }, "Unhandled server error");

    // CORS/rate-limit/client errors must not page the administrator. Also
    // coalesce identical failures so a broken upstream cannot flood Telegram.
    const status = Number(err?.status || err?.statusCode || 500);
    if (status >= 500) {
      const escaped = msg.slice(0, 300)
        .replace(/&/g, "&amp;")
        .replace(/</g, "&lt;")
        .replace(/>/g, "&gt;");
      const alertKey = msg.slice(0, 300);
      const now = Date.now();
      const previous = (app as any).__lastTelegramError as { key: string; ts: number } | undefined;
      if (!previous || previous.key !== alertKey || now - previous.ts > 10 * 60_000) {
        (app as any).__lastTelegramError = { key: alertKey, ts: now };
        sendAdminAlert(
          `⚠️ <b>خطأ في الخادم</b>\n\n<code>${escaped}</code>`
        ).catch(() => {});
      }
    }

    if (!res.headersSent) {
      res.status(status >= 400 && status < 600 ? status : 500).json({ error: status >= 500 ? "Internal server error" : msg });
    }
  });

  return app;
}
