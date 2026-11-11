import { Router, type Request, type Response } from "express";
import { setConfig, resetTransporter, initEmailService } from "../auth/emailService.js";
import { getEmailUser } from "../auth/emailAuth.js";
import { sbSelect, sbSelectAll, sbCount, sbInsert, sbPatch, sbDelete } from "../lib/supabaseClient.js";
import { SETUP_SQL, getTableStatus } from "../lib/supabaseMigrate.js";
import { setDbConfig, clearDbConfigCache } from "../lib/dbConfig.js";
import { checkAppSecret } from "../lib/security.js";
import { isWebAdmin } from "./webAdmin.js";
import {
  notifyCommentTargets,
  getCachedCommentAnimeTitles,
  rememberCommentAnimeTitle,
} from "./comments.js";

// دالة مساعدة للتحقق من secret أو صلاحيات الأدمن
async function hasRelayAccess(req: Request): Promise<boolean> {
  const provided = (req.headers["x-relay-secret"] as string | undefined) || (req.query.s as string | undefined);
  return checkAppSecret(provided) || (await isAdmin(req));
}

const router = Router();
const ENTITLEMENT_PREFIX = "admin_entitlement:";

type Entitlement = { plan: "free" | "premium" | "admin"; expiresAt: string | null };

async function loadEntitlements(): Promise<Map<string, Entitlement>> {
  const result = new Map<string, Entitlement>();
  const rows = await sbSelect<any>("app_config", {}, { limit: 5000 });
  for (const row of rows) {
    const key = String(row.key || "");
    if (!key.startsWith(ENTITLEMENT_PREFIX)) continue;
    try {
      const value = JSON.parse(String(row.value || ""));
      if (["free", "premium", "admin"].includes(value?.plan)) {
        result.set(key.slice(ENTITLEMENT_PREFIX.length), {
          plan: value.plan,
          expiresAt: value.expiresAt ?? null,
        });
      }
    } catch { /* ignore malformed legacy config rows */ }
  }
  return result;
}

function effectiveUser(u: any, entitlement?: Entitlement) {
  return {
    id:          u.id,
    email:       u.email,
    username:    u.username,
    displayName: u.display_name,
    plan:        entitlement?.plan ?? u.plan ?? "free",
    expiresAt:   entitlement?.expiresAt ?? u.expires_at ?? null,
    createdAt:   u.created_at,
  };
}

async function saveEntitlement(id: string, plan: Entitlement["plan"], expiresAt: string | null): Promise<void> {
  // The production Supabase REST schema predates the plan columns. Keep the
  // admin-managed entitlement in the already-available app_config table so
  // actions work immediately and survive restarts.
  await setDbConfig(`${ENTITLEMENT_PREFIX}${id}`, JSON.stringify({ plan, expiresAt }));
}

async function isAdmin(req: Request): Promise<boolean> {
  if (isWebAdmin(req)) return true;
  const eu = await getEmailUser(req);
  return eu?.plan === "admin";
}

// ── Env Relay — يُرجع المفاتيح لخوادم Replit الفرعية ───────────────────────

/* GET /api/admin/env-relay — يُرجع SUPABASE + SMTP vars محمية بـ APP_SECRET */
router.get("/admin/env-relay", async (req: Request, res: Response) => {
  if (!(await hasRelayAccess(req)))
    return res.status(401).json({ error: "unauthorized" });
  return res.json({
    SUPABASE_URL:         process.env.SUPABASE_URL         || "",
    SUPABASE_SERVICE_KEY: process.env.SUPABASE_SERVICE_KEY || "",
    SMTP_PASS:            process.env.SMTP_PASS             || "",
    SMTP_USER:            process.env.SMTP_USER             || "",
    SMTP_HOST:            process.env.SMTP_HOST             || "",
    SMTP_PORT:            process.env.SMTP_PORT             || "",
    GITHUB_CLIENT_ID:     process.env.GITHUB_CLIENT_ID     || "",
    GITHUB_CLIENT_SECRET: process.env.GITHUB_CLIENT_SECRET || "",
  });
});

// ── SMTP Config ─────────────────────────────────────────────────────────────

/* GET /api/admin/db-setup — يعرض SQL المطلوب لإنشاء الجداول (أدمن فقط) */
router.get("/admin/db-setup", async (req: Request, res: Response) => {
  if (!(await isAdmin(req)))
    return res.status(401).json({ error: "غير مصرّح — مطلوب صلاحيات المدير" });
  const status = await getTableStatus();
  return res.json({
    tables: status,
    allOk: Object.values(status).every(Boolean),
    sql: SETUP_SQL,
    instructions: "افتح Supabase SQL Editor وشغّل SQL أعلاه: https://supabase.com/dashboard/project/_/sql",
  });
});

/* تشخيص SMTP — يكشف الخطأ الحقيقي من Gmail (أدمن فقط) */
router.get("/admin/smtp-ping", async (req: Request, res: Response) => {
  if (!(await isAdmin(req)))
    return res.status(401).json({ error: "غير مصرّح — مطلوب صلاحيات المدير" });
  const { getDbConfig } = await import("../lib/dbConfig.js");
  const dbPass = await getDbConfig("smtp_pass");
  const dbUser = await getDbConfig("smtp_user");
  const dbHost = await getDbConfig("smtp_host");
  const dbPort = await getDbConfig("smtp_port");

  const user = dbUser || process.env.SMTP_USER || process.env.EMAIL_USER || "";
  const pass = dbPass || process.env.SMTP_PASS || "";
  const host = dbHost || process.env.SMTP_HOST || "smtp.gmail.com";
  const port = dbPort ? Number(dbPort) : (process.env.SMTP_PORT ? Number(process.env.SMTP_PORT) : 587);

  if (!user || !pass) {
    return res.json({
      ok: false,
      error: "SMTP_USER أو SMTP_PASS غير موجود",
      source: "none",
    });
  }

  // اختبار اتصال SMTP مباشر مع إظهار الخطأ الحقيقي
  try {
    const nodemailer = (await import("nodemailer")).default;
    const t = nodemailer.createTransport({
      host, port,
      secure: port === 465,
      auth: { user, pass },
      tls: { rejectUnauthorized: false },
    });
    await t.verify();  // هذا يكشف الخطأ الحقيقي من Gmail
    t.close();
    return res.json({
      ok: true,
      smtpUser: user,
      smtpHost: `${host}:${port}`,
      hasPass: true,
      source: dbPass ? "db" : "env",
      nodeEnv: process.env.NODE_ENV,
      message: "✅ SMTP يعمل بنجاح",
    });
  } catch (err: any) {
    return res.status(500).json({
      ok: false,
      smtpUser: user,
      smtpHost: `${host}:${port}`,
      source: dbPass ? "db" : "env",
      error: err.message,  // ← الخطأ الحقيقي من Gmail
      code: err.code,
      responseCode: err.responseCode,
    });
  }
});

/* تحديث SMTP في process.env مباشرة — محمي بـ APP_SECRET — يعمل بدون إعادة نشر */
router.post("/admin/smtp-env-patch", async (req: Request, res: Response) => {
  if (!(await hasRelayAccess(req))) return res.status(401).json({ error: "unauthorized" });

  const { smtp_user, smtp_pass, smtp_host, smtp_port } = req.body || {};
  if (smtp_user) process.env.SMTP_USER = String(smtp_user);
  if (smtp_pass) process.env.SMTP_PASS = String(smtp_pass);
  if (smtp_host) process.env.SMTP_HOST = String(smtp_host);
  if (smtp_port) process.env.SMTP_PORT = String(smtp_port);

  resetTransporter();
  try { await initEmailService(); } catch {}

  return res.json({ ok: true, smtp_user: process.env.SMTP_USER, hasPass: !!process.env.SMTP_PASS });
});

/* POST /api/admin/telegram-env-patch — تعيين TELEGRAM_BOT_TOKEN مباشرة في process.env + DB */
router.post("/admin/telegram-env-patch", async (req: Request, res: Response) => {
  if (!(await hasRelayAccess(req)))
    return res.status(401).json({ error: "unauthorized" });

  const { telegram_bot_token, telegram_chat_id, telegram_channel_id } = req.body || {};

  if (telegram_bot_token) {
    process.env.TELEGRAM_BOT_TOKEN = String(telegram_bot_token);
    await setDbConfig("telegram_bot_token", String(telegram_bot_token));
  }
  if (telegram_chat_id) {
    process.env.TELEGRAM_CHAT_ID = String(telegram_chat_id);
    await setDbConfig("telegram_chat_id", String(telegram_chat_id));
  }
  if (telegram_channel_id) {
    process.env.TELEGRAM_CHANNEL_ID = String(telegram_channel_id);
    await setDbConfig("telegram_channel_id", String(telegram_channel_id));
  }

  return res.json({
    ok: true,
    hasToken:   !!process.env.TELEGRAM_BOT_TOKEN,
    chatId:     process.env.TELEGRAM_CHAT_ID     || "(من DB)",
    channelId:  process.env.TELEGRAM_CHANNEL_ID  || "(من DB)",
    message:    "✅ إعدادات Telegram مُحدَّثة",
  });
});

/* GET /api/admin/telegram-status — حالة Telegram */
router.get("/admin/telegram-status", async (req: Request, res: Response) => {
  if (!(await hasRelayAccess(req)))
    return res.status(401).json({ error: "unauthorized" });

  const { getEnvOrDb } = await import("../lib/dbConfig.js");
  const token     = await getEnvOrDb("TELEGRAM_BOT_TOKEN", "telegram_bot_token");
  const chatId    = await getEnvOrDb("TELEGRAM_CHAT_ID",   "telegram_chat_id");
  const channelId = await getEnvOrDb("TELEGRAM_CHANNEL_ID","telegram_channel_id");

  let botInfo: any = null;
  if (token) {
    try {
      const r = await fetch(`https://api.telegram.org/bot${token}/getMe`, { signal: AbortSignal.timeout(5000) });
      botInfo = await r.json();
    } catch { /* ignore */ }
  }

  return res.json({
    hasToken:   !!token,
    hasChatId:  !!chatId,
    hasChannel: !!channelId,
    chatId,
    channelId,
    botInfo: botInfo?.result ?? null,
    source:  token ? (process.env.TELEGRAM_BOT_TOKEN ? "env" : "db") : "none",
  });
});

router.post("/admin/smtp-config", async (req: Request, res: Response) => {
  if (!(await hasRelayAccess(req)))
    return res.status(401).json({ error: "غير مصرّح — مطلوب صلاحيات المدير أو x-relay-secret" });

  const { smtp_pass, smtp_user, smtp_host, smtp_port } = req.body || {};

  if (!smtp_pass)
    return res.status(400).json({ error: "smtp_pass مطلوب" });

  await setConfig("smtp_pass", String(smtp_pass));
  if (smtp_user) await setConfig("smtp_user", String(smtp_user));
  if (smtp_host) await setConfig("smtp_host", String(smtp_host));
  if (smtp_port) await setConfig("smtp_port", String(smtp_port));

  resetTransporter();

  return res.json({ ok: true, message: "تم حفظ إعدادات SMTP ✓" });
});

router.get("/admin/smtp-status", async (req: Request, res: Response) => {
  if (!(await isAdmin(req)))
    return res.status(401).json({ error: "غير مصرّح" });

  const rows = await sbSelect("app_config", {});
  const keys = rows.filter((r: any) => r.key?.startsWith("smtp_")).map((r: any) => r.key);
  return res.json({
    configured: keys,
    hasUser: keys.includes("smtp_user"),
    hasPass: keys.includes("smtp_pass"),
  });
});

// ── إدارة المستخدمين والاشتراكات ────────────────────────────────────────────

router.get("/admin/users", async (req: Request, res: Response) => {
  if (!(await isAdmin(req)))
    return res.status(401).json({ error: "غير مصرّح" });

  try {
    const q    = String(req.query.q || "").trim();
    const plan = String(req.query.plan || "").trim();
    const page = Math.max(0, Number(req.query.page || 0));
    const limit = 50;

    const filter: Record<string, string> = { order: "created_at.desc", offset: String(page * limit) };

    const rows = await sbSelect<any>("users",
      filter,
      { limit: q ? 200 : limit },
    );
    const entitlements = await loadEntitlements();

    const matchedRows = q
      ? rows.filter((u: any) => [u.email, u.username, u.display_name]
        .some(value => String(value || "").toLocaleLowerCase().includes(q.toLocaleLowerCase())))
        .slice(0, limit)
      : rows;

    const users = matchedRows
      .map((u: any) => effectiveUser(u, entitlements.get(String(u.id))))
      .filter((u: any) => !plan || u.plan === plan);

    return res.json({ users, page, total: users.length });
  } catch (err) {
    console.error("[admin/users]", err);
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

// تغيير خطة مستخدم
router.patch("/admin/users/:id/plan", async (req: Request, res: Response) => {
  if (!(await isAdmin(req)))
    return res.status(401).json({ error: "غير مصرّح" });

  const { id } = req.params;
  const { plan, expires_at } = req.body || {};

  if (!plan || !["free", "premium", "admin"].includes(plan))
    return res.status(400).json({ error: "plan يجب أن يكون: free | premium | admin" });

  try {
    let expiresAt: string | null = null;

    if (plan === "free") {
      expiresAt = null;
    } else if (expires_at) {
      expiresAt = new Date(expires_at).toISOString();
    } else if (plan === "premium") {
      // افتراضي: اشتراك لمدة شهر
      const d = new Date();
      d.setMonth(d.getMonth() + 1);
      expiresAt = d.toISOString();
    }

    const existing = await sbSelect("users", { id: `eq.${id}` }, { limit: 1 });
    if (!existing.length) return res.status(404).json({ error: "المستخدم غير موجود" });
    await saveEntitlement(id, plan, expiresAt);

    return res.json({
      ok:        true,
      id,
      plan,
      expiresAt,
      message:   `تم تغيير خطة المستخدم إلى ${plan} ✓`,
    });
  } catch (err) {
    console.error("[admin/users/plan]", err);
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

// إعطاء اشتراك مجاني لفترة محددة
router.post("/admin/users/:id/grant", async (req: Request, res: Response) => {
  if (!(await isAdmin(req)))
    return res.status(401).json({ error: "غير مصرّح" });

  const { id } = req.params;
  const rawDays = req.body?.days ?? 30;
  const days = Number(rawDays);
  if (!Number.isInteger(days) || days < 1 || days > 3650)
    return res.status(400).json({ error: "عدد الأيام يجب أن يكون رقماً صحيحاً بين 1 و3650" });

  try {
    const d = new Date();
    d.setDate(d.getDate() + days);

    const existing = await sbSelect("users", { id: `eq.${id}` }, { limit: 1 });
    if (!existing.length) return res.status(404).json({ error: "المستخدم غير موجود" });
    await saveEntitlement(id, "premium", d.toISOString());

    return res.json({
      ok:        true,
      id,
      plan:      "premium",
      expiresAt: d.toISOString(),
      message:   `تم منح اشتراك مميز لـ ${days} يوماً ✓`,
    });
  } catch (err) {
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

// حذف مستخدم
router.delete("/admin/users/:id", async (req: Request, res: Response) => {
  if (!(await isAdmin(req)))
    return res.status(401).json({ error: "غير مصرّح" });

  const { id } = req.params;
  try {
    await sbDelete("users", { id: `eq.${id}` });
    return res.json({ ok: true, message: "تم حذف المستخدم ✓" });
  } catch (err) {
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

function getRiyadhStartOfDayMs(nowMs = Date.now()): number {
  const riyadhOffsetMs = 3 * 60 * 60_000;
  const riyadhDate = new Date(nowMs + riyadhOffsetMs);
  return Date.UTC(
    riyadhDate.getUTCFullYear(),
    riyadhDate.getUTCMonth(),
    riyadhDate.getUTCDate(),
    0, 0, 0, 0,
  ) - riyadhOffsetMs;
}

async function resolveCommentAnimeTitles(commentRows: any[]): Promise<Map<string, string>> {
  const titleMap = new Map<string, string>();
  const cached = await getCachedCommentAnimeTitles();
  for (const [k, v] of cached.entries()) {
    if (v) titleMap.set(String(k), v);
  }

  const neededAnimeIds = new Set<string>();
  const neededTmdbIds = new Set<string>();
  for (const r of commentRows) {
    if (r.anime_id != null) {
      const k = String(r.anime_id);
      if (!titleMap.has(k)) neededAnimeIds.add(k);
    }
    if (r.tmdb_id != null && String(r.tmdb_id).trim()) {
      const k = String(r.tmdb_id).trim();
      if (!titleMap.has(`tmdb:${k}`) && !titleMap.has(k)) neededTmdbIds.add(k);
    }
  }

  if (neededAnimeIds.size > 0 || neededTmdbIds.size > 0) {
    const [viewsRes, sessionsRes, historyRes, favsRes, metaArRes] = await Promise.allSettled([
      sbSelect<any>("analytics_episode_views", { order: "viewed_at.desc" }, { select: "anime_id,anime_title", limit: 1000 }),
      sbSelect<any>("analytics_sessions", { order: "last_seen_at.desc" }, { select: "anime_id,anime_title", limit: 1000 }),
      sbSelect<any>("watch_history", { order: "watched_at.desc" }, { select: "anime_id,tmdb_id,anime_title", limit: 1000 }),
      sbSelect<any>("favorites", {}, { select: "anime_id,title", limit: 1000 }),
      sbSelect<any>("anime_meta_ar", {}, { select: "source_id,source_type,title_ar", limit: 1000 }),
    ]);

    const rememberPair = (rawId: any, rawTitle: any, prefix = "") => {
      const id = String(rawId ?? "").trim();
      const title = String(rawTitle ?? "").trim();
      if (!id || !title || title === "التعليقات" || title === "أنمي") return;
      const key = prefix ? `${prefix}${id}` : id;
      if (!titleMap.has(key)) {
        titleMap.set(key, title);
        void rememberCommentAnimeTitle(key, title);
      }
      if (!prefix && !titleMap.has(id)) {
        titleMap.set(id, title);
        void rememberCommentAnimeTitle(id, title);
      }
    };

    if (metaArRes.status === "fulfilled") {
      for (const r of metaArRes.value) {
        rememberPair(r.source_id, r.title_ar);
        if (r.source_type && r.source_type !== "anime") {
          rememberPair(r.source_id, r.title_ar, "tmdb:");
        }
      }
    }
    if (viewsRes.status === "fulfilled") {
      for (const r of viewsRes.value) rememberPair(r.anime_id, r.anime_title);
    }
    if (sessionsRes.status === "fulfilled") {
      for (const r of sessionsRes.value) rememberPair(r.anime_id, r.anime_title);
    }
    if (historyRes.status === "fulfilled") {
      for (const r of historyRes.value) {
        if (r.anime_id != null) rememberPair(r.anime_id, r.anime_title);
        if (r.tmdb_id != null) {
          rememberPair(r.tmdb_id, r.anime_title, "tmdb:");
          rememberPair(r.tmdb_id, r.anime_title);
        }
      }
    }
    if (favsRes.status === "fulfilled") {
      for (const r of favsRes.value) rememberPair(r.anime_id, r.title);
    }
  }

  // Batch-resolve any remaining numeric AniList IDs via AniList GraphQL
  const missingAnilistIds = [...neededAnimeIds]
    .filter((id) => !titleMap.has(id) && /^\d+$/.test(id))
    .map((id) => Number(id))
    .filter((n) => Number.isInteger(n) && n > 0)
    .slice(0, 50);

  if (missingAnilistIds.length > 0) {
    try {
      const gqlRes = await fetch("https://graphql.anilist.co", {
        method: "POST",
        headers: { "Content-Type": "application/json", Accept: "application/json" },
        body: JSON.stringify({
          query: `query ($ids: [Int]) { Page(perPage: 50) { media(id_in: $ids) { id title { userPreferred english romaji } } } }`,
          variables: { ids: missingAnilistIds },
        }),
        signal: AbortSignal.timeout(6000),
      });
      if (gqlRes.ok) {
        const payload: any = await gqlRes.json().catch(() => null);
        const mediaList: any[] = payload?.data?.Page?.media || [];
        for (const m of mediaList) {
          const idStr = String(m?.id || "");
          const resolvedTitle = String(
            m?.title?.userPreferred || m?.title?.english || m?.title?.romaji || "",
          ).trim();
          if (idStr && resolvedTitle) {
            titleMap.set(idStr, resolvedTitle);
            await rememberCommentAnimeTitle(idStr, resolvedTitle);
          }
        }
      }
    } catch { /* ignore AniList timeout */ }
  }

  return titleMap;
}

// حالة الخادم للمدير
router.get("/admin/stats", async (req: Request, res: Response) => {
  if (!(await isAdmin(req)))
    return res.status(401).json({ error: "غير مصرّح" });

  try {
    const [
      allUsersResult,
      cacheRowsResult,
      entitlementsResult,
      allSessionsResult,
      episodeViewsResult,
      episodeViewsCountResult,
      commentsCountResult,
      tableStatusResult,
    ] = await Promise.allSettled([
      sbSelectAll<any>("users", {}, { select: "id", maxRows: 10000 }),
      sbSelect("source_cache", { select: "cache_key" }, { limit: 1000 }),
      loadEntitlements(),
      sbSelectAll<any>("analytics_sessions", { order: "last_seen_at.desc" }, {
        select: "session_key,platform,visitor_id,user_id,anime_id,anime_title,episode_number,last_seen_at",
        maxRows: 25000,
      }),
      sbSelectAll<any>("analytics_episode_views", { order: "viewed_at.desc" }, {
        select: "event_key,platform,visitor_id,user_id,anime_id,anime_title,episode_number,viewed_at",
        maxRows: 50000,
      }),
      sbCount("analytics_episode_views"),
      sbCount("comments"),
      getTableStatus(),
    ]);

    const valueOr = <T,>(result: PromiseSettledResult<T>, fallback: T): T =>
      result.status === "fulfilled" ? result.value : fallback;

    const allUsers = valueOr(allUsersResult, [] as any[]);
    const cacheRows = valueOr(cacheRowsResult, [] as any[]);
    const entitlements = valueOr(entitlementsResult, new Map<string, Entitlement>());
    const allSessions = valueOr(allSessionsResult, [] as any[]);
    const episodeViews = valueOr(episodeViewsResult, [] as any[]);
    const exactEpisodeViewsCount = valueOr(episodeViewsCountResult, 0);
    const totalComments = valueOr(commentsCountResult, 0);
    const tableStatus = valueOr(tableStatusResult, {});

    const nowMs = Date.now();
    const activeCutoffMs = nowMs - 5 * 60_000;
    const activeSessions = allSessions.filter((s) => {
      const ts = Date.parse(String(s.last_seen_at || ""));
      return Number.isFinite(ts) && ts >= activeCutoffMs;
    });

    const byPlatform = (platform: string) => activeSessions.filter((s) => s.platform === platform);
    const viewsByPlatform = (platform: string) => episodeViews.filter((v) => v.platform === platform);
    const uniqueActiveUsers = (rows: any[]) => new Set(
      rows.map((s) => s.user_id ? `user:${s.user_id}` : `visitor:${s.platform}:${s.visitor_id}`),
    ).size;

    // حساب إجمالي المستخدمين والأجهزة (المسجلين + الزوار الذين يستخدمون التطبيق بدون حساب قوقل)
    const registeredUserIds = new Set(allUsers.map((u: any) => String(u.id)).filter(Boolean));
    const guestVisitorsAll = new Set<string>();
    const guestMobileVisitors = new Set<string>();
    const guestWebVisitors = new Set<string>();
    const allMobileDevices = new Set<string>();
    const allWebVisitors = new Set<string>();

    const recordVisitorRow = (row: any) => {
      const platform = String(row.platform || "mobile");
      const visitorId = String(row.visitor_id || "").trim();
      const userId = row.user_id ? String(row.user_id).trim() : "";
      if (visitorId) {
        if (platform === "mobile") allMobileDevices.add(visitorId);
        else if (platform === "web") allWebVisitors.add(visitorId);
      }
      if (!userId && visitorId) {
        guestVisitorsAll.add(`${platform}:${visitorId}`);
        if (platform === "mobile") guestMobileVisitors.add(visitorId);
        else if (platform === "web") guestWebVisitors.add(visitorId);
      }
    };

    for (const s of allSessions) recordVisitorRow(s);
    for (const v of episodeViews) recordVisitorRow(v);

    const registeredCount = registeredUserIds.size || allUsers.length;
    const guestUsersCount = guestVisitorsAll.size;
    const totalAppUsers = registeredCount + guestUsersCount;

    const riyadhStartMs = getRiyadhStartOfDayMs(nowMs);
    const dayAgoMs = nowMs - 24 * 60 * 60_000;
    const viewsTodayRiyadh = episodeViews.filter((v) => {
      const ts = Date.parse(String(v.viewed_at || ""));
      return Number.isFinite(ts) && ts >= riyadhStartMs;
    });
    const viewsLast24h = episodeViews.filter((v) => {
      const ts = Date.parse(String(v.viewed_at || ""));
      return Number.isFinite(ts) && ts >= dayAgoMs;
    });

    const topMap = new Map<string, { animeId: string; title: string; episode: number; views: number }>();
    for (const row of episodeViews) {
      const key = `${row.anime_id}:${row.episode_number}`;
      const current = topMap.get(key) || {
        animeId: String(row.anime_id || ""),
        title: String(row.anime_title || row.anime_id || "بدون عنوان"),
        episode: Number(row.episode_number) || 1,
        views: 0,
      };
      if ((!current.title || current.title === current.animeId) && row.anime_title) {
        current.title = String(row.anime_title);
      }
      current.views++;
      topMap.set(key, current);
    }

    const totalConfirmedViews = Math.max(exactEpisodeViewsCount, episodeViews.length);
    const premiumCount = [...entitlements.values()].filter((v) => v.plan === "premium").length;

    return res.json({
      totalUsers:       registeredCount,
      guestUsers:       guestUsersCount,
      guestMobileUsers: guestMobileVisitors.size,
      guestWebUsers:    guestWebVisitors.size,
      mobileDevicesCount: allMobileDevices.size,
      webVisitorsCount:   allWebVisitors.size,
      totalAppUsers,
      totalComments,
      premiumUsers:     premiumCount,
      freeUsers:        Math.max(0, registeredCount - premiumCount),
      cacheEntries:     cacheRows.length,
      analytics: {
        activeUsers:        uniqueActiveUsers(activeSessions),
        activeWeb:          uniqueActiveUsers(byPlatform("web")),
        activeMobile:       uniqueActiveUsers(byPlatform("mobile")),
        watchingNow:        activeSessions.filter((s) => s.anime_id && s.episode_number !== null).length,
        watchingWeb:        byPlatform("web").filter((s) => s.anime_id && s.episode_number !== null).length,
        watchingMobile:     byPlatform("mobile").filter((s) => s.anime_id && s.episode_number !== null).length,
        episodeViews:       totalConfirmedViews,
        episodeViewsToday:  viewsTodayRiyadh.length,
        episodeViews24h:    viewsLast24h.length,
        episodeViewsWeb:    viewsByPlatform("web").length,
        episodeViewsMobile: viewsByPlatform("mobile").length,
        totalSessions:      allSessions.length,
        uniqueDevices:      allMobileDevices.size + allWebVisitors.size,
        mobileDevices:      allMobileDevices.size,
        webVisitors:        allWebVisitors.size,
        guestUsers:         guestUsersCount,
        totalAppUsers,
        topEpisodes:        [...topMap.values()].sort((a, b) => b.views - a.views).slice(0, 8),
        lastEventAt:        episodeViews[0]?.viewed_at || null,
        sampledLimit:       50000,
        ready:              tableStatus.analytics_sessions !== false && tableStatus.analytics_episode_views !== false,
      },
    });
  } catch (err) {
    console.error("[admin/stats]", err);
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

// ── إدارة التعليقات والرد المباشر من لوحة الإدارة ───────────────────────────

router.get("/admin/comments", async (req: Request, res: Response) => {
  if (!(await isAdmin(req)))
    return res.status(401).json({ error: "غير مصرّح" });

  try {
    const q = String(req.query.q || "").trim().toLowerCase();
    const filterMode = String(req.query.filter || "all").trim();
    const limit = Math.min(Math.max(Number(req.query.limit) || 200, 1), 500);

    const rows = await sbSelectAll<any>("comments", { order: "created_at.desc" }, { maxRows: 500 });
    const userIds = Array.from(
      new Set(
        rows
          .map((r) => String(r.user_id || "").trim())
          .filter((id) => id && id !== "admin" && /^[0-9a-fA-F-]{10,}$/.test(id)),
      ),
    );

    const profiles = new Map<string, any>();
    if (userIds.length > 0) {
      try {
        const users = await sbSelect<any>("users", { id: `in.(${userIds.join(",")})` }, { limit: userIds.length });
        for (const u of users) profiles.set(String(u.id), u);
      } catch { /* ignore */ }
    }

    const titleMap = await resolveCommentAnimeTitles(rows);

    const formatItem = (r: any) => {
      const profile = profiles.get(String(r.user_id || ""));
      const animeIdStr = r.anime_id != null ? String(r.anime_id) : "";
      const tmdbIdStr = r.tmdb_id != null ? String(r.tmdb_id).trim() : "";
      const resolvedTitle =
        (animeIdStr && titleMap.get(animeIdStr)) ||
        (tmdbIdStr && (titleMap.get(`tmdb:${tmdbIdStr}`) || titleMap.get(tmdbIdStr))) ||
        (animeIdStr ? `أنمي #${animeIdStr}` : tmdbIdStr ? `عمل #${tmdbIdStr}` : "عام");

      const isAdminComment =
        String(r.user_id || "") === "admin" ||
        String(r.user_handle || "").toLowerCase() === "admin";

      return {
        id:              String(r.id),
        userId:          String(r.user_id || ""),
        username:        profile?.display_name || r.username || "مستخدم",
        rawUsername:     r.username || "مستخدم",
        userHandle:      r.user_handle || profile?.username || null,
        email:           profile?.email || null,
        avatarUrl:       profile?.profile_image_custom || r.avatar_url || null,
        animeId:         r.anime_id ?? null,
        tmdbId:          r.tmdb_id ?? null,
        animeType:       r.anime_type || "anime",
        animeTitle:      resolvedTitle,
        episodeNumber:   r.episode_number ?? null,
        text:            String(r.text || ""),
        likes:           Number(r.likes) || 0,
        createdAt:       r.created_at,
        parentId:        r.parent_id ? String(r.parent_id) : null,
        replyToUsername: r.reply_to_username || null,
        isAdminComment,
      };
    };

    const allFormatted = rows.map(formatItem);
    const byParent = new Map<string, ReturnType<typeof formatItem>[]>();
    for (const item of allFormatted) {
      if (item.parentId) {
        const list = byParent.get(item.parentId) || [];
        list.push(item);
        byParent.set(item.parentId, list);
      }
    }
    for (const list of byParent.values()) {
      list.sort((a, b) => Date.parse(String(a.createdAt || "")) - Date.parse(String(b.createdAt || "")));
    }

    const enriched = allFormatted.map((item) => {
      const replies = byParent.get(item.id) || [];
      const hasAdminReply = item.isAdminComment || replies.some((rep) => rep.isAdminComment);
      return {
        ...item,
        repliesCount: replies.length,
        hasAdminReply,
        replies,
      };
    });

    const filtered = enriched.filter((item) => {
      if (filterMode === "unreplied" && (item.isAdminComment || item.hasAdminReply)) return false;
      if (filterMode === "episode" && item.episodeNumber == null) return false;
      if (filterMode === "general" && item.episodeNumber != null) return false;
      if (!q) return true;
      const haystack = [
        item.username,
        item.rawUsername,
        item.userHandle,
        item.email,
        item.animeTitle,
        item.animeId,
        item.tmdbId,
        item.episodeNumber != null ? `الحلقة ${item.episodeNumber}` : "تعليق عام",
        item.text,
      ]
        .filter(Boolean)
        .join(" ")
        .toLowerCase();
      return haystack.includes(q);
    });

    const unrepliedCount = enriched.filter((c) => !c.parentId && !c.isAdminComment && !c.hasAdminReply).length;
    const episodeCommentsCount = enriched.filter((c) => c.episodeNumber != null).length;

    return res.json({
      comments: filtered.slice(0, limit),
      total: rows.length,
      filteredTotal: filtered.length,
      unrepliedCount,
      episodeCommentsCount,
    });
  } catch (err) {
    console.error("[admin/comments GET]", err);
    return res.status(500).json({ error: "تعذّر تحميل التعليقات" });
  }
});

router.post("/admin/comments/:id/reply", async (req: Request, res: Response) => {
  if (!(await isAdmin(req)))
    return res.status(401).json({ error: "غير مصرّح" });

  try {
    const targetId = String(req.params.id || "").trim();
    const cleanText = String(req.body?.text || "").trim();
    const customAnimeTitle = String(req.body?.animeTitle || "").trim();

    if (!targetId) return res.status(400).json({ error: "معرّف التعليق مطلوب" });
    if (!cleanText) return res.status(400).json({ error: "نص الرد مطلوب" });
    if (cleanText.length > 1000) return res.status(400).json({ error: "الرد طويل جداً (الحد الأقصى 1000 حرف)" });

    const targets = await sbSelect<any>("comments", { id: `eq.${targetId}` }, { limit: 1 });
    if (!targets.length) return res.status(404).json({ error: "التعليق الأصلي غير موجود" });
    const target = targets[0];

    if (customAnimeTitle) {
      if (target.anime_id != null) await rememberCommentAnimeTitle(target.anime_id, customAnimeTitle);
      if (target.tmdb_id != null) await rememberCommentAnimeTitle(`tmdb:${target.tmdb_id}`, customAnimeTitle);
    }

    const eu = await getEmailUser(req);
    const adminDisplayName = String(req.body?.adminName || eu?.display_name || "إدارة Anime NOVA").trim();
    const rootParentId = target.parent_id ? String(target.parent_id) : String(target.id);
    const replyText =
      target.username && !cleanText.includes(`@${target.user_handle || target.username}`)
        ? cleanText
        : cleanText;

    const baseReplyRow = {
      user_id:           eu?.id ? String(eu.id) : "admin",
      username:          adminDisplayName,
      avatar_url:        null,
      anime_id:          target.anime_id ?? null,
      tmdb_id:           target.tmdb_id ?? null,
      anime_type:        target.anime_type || "anime",
      episode_number:    target.episode_number ?? null,
      text:              replyText,
      likes:             0,
      parent_id:         rootParentId,
      reply_to_username: target.username || null,
    };

    let inserted = await sbInsert<any>("comments", {
      ...baseReplyRow,
      user_handle: "admin",
    });
    if (!inserted) {
      inserted = await sbInsert<any>("comments", baseReplyRow);
    }

    const created = Array.isArray(inserted) ? inserted[0] : inserted;
    let pushStats = { targetUsers: 0, delivered: 0 };
    if (created) {
      let resolvedAnimeTitle = customAnimeTitle;
      if (!resolvedAnimeTitle) {
        const titleMap = await resolveCommentAnimeTitles([target]).catch(() => new Map<string, string>());
        const animeIdStr = target.anime_id != null ? String(target.anime_id) : "";
        const tmdbIdStr = target.tmdb_id != null ? String(target.tmdb_id).trim() : "";
        resolvedAnimeTitle =
          (animeIdStr && titleMap.get(animeIdStr)) ||
          (tmdbIdStr && (titleMap.get(`tmdb:${tmdbIdStr}`) || titleMap.get(tmdbIdStr))) ||
          "";
      }

      pushStats = await notifyCommentTargets({
        comment: { ...created, parent_id: target.id },
        actorUserId: "admin",
        actorName: adminDisplayName,
        allowSelfNotify: true,
        directTargetUserId: target.user_id ? String(target.user_id) : null,
        animeTitle: resolvedAnimeTitle || null,
        isAdminReply: true,
      }).catch((err: any) => {
        console.warn("[admin/comments reply push]", err?.message || String(err));
        return { targetUsers: 0, delivered: 0 };
      });
    }

    return res.status(201).json({
      ok: true,
      message: pushStats.delivered > 0
        ? `تم إرسال رد الإدارة وإشعار الهاتف (${pushStats.delivered}) بنجاح ✓`
        : "تم إرسال رد الإدارة بنجاح ✓",
      pushDelivered: pushStats.delivered,
      comment: created || null,
    });
  } catch (err) {
    console.error("[admin/comments reply POST]", err);
    return res.status(500).json({ error: "تعذّر إرسال الرد" });
  }
});

router.delete("/admin/comments/:id", async (req: Request, res: Response) => {
  if (!(await isAdmin(req)))
    return res.status(401).json({ error: "غير مصرّح" });

  try {
    const id = String(req.params.id || "").trim();
    if (!id) return res.status(400).json({ error: "معرّف التعليق مطلوب" });

    // حذف الردود التابعة أولاً ثم التعليق نفسه
    await sbDelete("comments", { parent_id: `eq.${id}` }).catch(() => {});
    await sbDelete("comment_likes", { comment_id: `eq.${id}` }).catch(() => {});
    await sbDelete("comments", { id: `eq.${id}` });

    return res.json({ ok: true, id, message: "تم حذف التعليق ✓" });
  } catch (err) {
    console.error("[admin/comments DELETE]", err);
    return res.status(500).json({ error: "تعذّر حذف التعليق" });
  }
});

// ── إعداد الأسرار من قاعدة البيانات (بدون Replit Secrets) ─────────────────
// محمي بـ APP_SECRET فقط — لا يحتاج تسجيل دخول (للإعداد الأولي)
router.post("/admin/setup", async (req: Request, res: Response) => {
  const provided = (req.headers["x-setup-secret"] as string | undefined) || req.body?.secret;
  if (!checkAppSecret(provided)) {
    return res.status(401).json({ error: "x-setup-secret غير صحيح" });
  }

  const {
    telegram_bot_token,
    smtp_pass,
    smtp_user,
    smtp_host,
    smtp_port,
    telegram_chat_id,
    telegram_channel_id,
  } = req.body || {};

  const saved: string[] = [];

  if (telegram_bot_token) {
    await setDbConfig("telegram_bot_token", String(telegram_bot_token));
    saved.push("telegram_bot_token");
  }
  if (smtp_pass) {
    await setDbConfig("smtp_pass", String(smtp_pass));
    await setConfig("smtp_pass", String(smtp_pass));
    saved.push("smtp_pass");
  }
  if (smtp_user) {
    await setDbConfig("smtp_user", String(smtp_user));
    await setConfig("smtp_user", String(smtp_user));
    saved.push("smtp_user");
  }
  if (smtp_host) {
    await setDbConfig("smtp_host", String(smtp_host));
    await setConfig("smtp_host", String(smtp_host));
    saved.push("smtp_host");
  }
  if (smtp_port) {
    await setDbConfig("smtp_port", String(smtp_port));
    await setConfig("smtp_port", String(smtp_port));
    saved.push("smtp_port");
  }
  if (telegram_chat_id) {
    await setDbConfig("telegram_chat_id", String(telegram_chat_id));
    saved.push("telegram_chat_id (DB only — also set TELEGRAM_CHAT_ID env)");
  }
  if (telegram_channel_id) {
    await setDbConfig("telegram_channel_id", String(telegram_channel_id));
    saved.push("telegram_channel_id (DB only — also set TELEGRAM_CHANNEL_ID env)");
  }

  if (smtp_pass || smtp_user) resetTransporter();
  clearDbConfigCache();

  return res.json({
    ok:    saved.length > 0,
    saved,
    message: saved.length > 0
      ? `✅ تم حفظ ${saved.length} إعداد في قاعدة البيانات بشكل دائم`
      : "لم يُرسَل أي إعداد للحفظ",
  });
});

// ── عرض الإعدادات المحفوظة (بدون القيم الحساسة) ──────────────────────────
router.get("/admin/setup/status", async (req: Request, res: Response) => {
  const provided = (req.headers["x-setup-secret"] as string | undefined) || (req.query.secret as string | undefined);
  if (!checkAppSecret(provided)) {
    return res.status(401).json({ error: "x-setup-secret غير صحيح" });
  }

  const rows = await sbSelect("app_config", {}).catch(() => [] as any[]);
  const keys = rows.map((r: any) => r.key as string).filter((k: string) =>
    ["telegram_bot_token","smtp_pass","smtp_user","smtp_host","smtp_port"].includes(k)
  );

  return res.json({
    ok: true,
    configuredKeys: keys,
    telegram_bot_token: keys.includes("telegram_bot_token") ? "✅ موجود في DB" : "❌ غير موجود",
    smtp_pass:          keys.includes("smtp_pass")          ? "✅ موجود في DB" : "❌ غير موجود",
    smtp_user:          keys.includes("smtp_user")          ? "✅ موجود في DB" : "❌ غير موجود",
    envVars: {
      TELEGRAM_BOT_TOKEN:  process.env.TELEGRAM_BOT_TOKEN  ? "✅ في البيئة" : "⚠️ غير موجود",
      TELEGRAM_CHANNEL_ID: process.env.TELEGRAM_CHANNEL_ID ? "✅ في البيئة" : "⚠️ غير موجود",
      TELEGRAM_CHAT_ID:    process.env.TELEGRAM_CHAT_ID    ? "✅ في البيئة" : "⚠️ غير موجود",
      SMTP_USER:           process.env.SMTP_USER            ? "✅ في البيئة" : "⚠️ غير موجود",
    },
  });
});


// ── anime3rb CF cookie routes removed 2026-07-30 (anime3rb deleted) ──

export default router;
