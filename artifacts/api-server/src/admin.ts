import { Router, type Request, type Response } from "express";
import { setConfig, resetTransporter, initEmailService } from "../auth/emailService.js";
import { getEmailUser } from "../auth/emailAuth.js";
import { sbSelect, sbPatch, sbDelete } from "../lib/supabaseClient.js";
import { SETUP_SQL, getTableStatus } from "../lib/supabaseMigrate.js";
import { setDbConfig, clearDbConfigCache } from "../lib/dbConfig.js";
import { checkAppSecret } from "../lib/security.js";
import { isWebAdmin } from "./webAdmin.js";

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

// إحصائيات الاستخدام الفعلية للوحة Nova Control.
async function loadUsageAnalytics() {
  const empty = {
    ready: false, activeUsers: 0, watchingNow: 0, watchingWeb: 0, watchingMobile: 0,
    activeWeb: 0, activeMobile: 0, episodeViews: 0, episodeViewsToday: 0,
    episodeViewsWeb: 0, episodeViewsMobile: 0, lastEventAt: null, topEpisodes: [],
  };
  try {
    const [sessions, views] = await Promise.all([
      sbSelect<any>("analytics_sessions", {}, { select: "platform,visitor_id,user_id,last_seen_at,anime_id", limit: 5000 }),
      sbSelect<any>("analytics_episode_views", {}, { select: "platform,anime_id,episode_number,anime_title,viewed_at", limit: 5000 }),
    ]);
    const cutoff = Date.now() - 5 * 60 * 1000;
    const active = sessions.filter((row) => {
      const timestamp = Date.parse(String(row.last_seen_at || ""));
      return Number.isFinite(timestamp) && timestamp >= cutoff;
    });
    const unique = new Set(active.map((row) => String(row.user_id || row.visitor_id || "")).filter(Boolean));
    const top = new Map<string, { title: string; episode: number; views: number }>();
    for (const row of views) {
      const key = `${row.anime_id}:${row.episode_number}`;
      const item = top.get(key) || { title: String(row.anime_title || "بدون عنوان"), episode: Number(row.episode_number), views: 0 };
      item.views += 1;
      top.set(key, item);
    }
    const today = new Date();
    today.setHours(0, 0, 0, 0);
    const todayMs = today.getTime();
    const last = views.reduce((value, row) => {
      const time = Date.parse(String(row.viewed_at || ""));
      return Number.isFinite(time) && time > value ? time : value;
    }, 0);
    return {
      ready: true,
      activeUsers: unique.size,
      watchingNow: active.filter((row) => row.anime_id).length,
      watchingWeb: active.filter((row) => row.platform === "web" && row.anime_id).length,
      watchingMobile: active.filter((row) => row.platform === "mobile" && row.anime_id).length,
      activeWeb: active.filter((row) => row.platform === "web").length,
      activeMobile: active.filter((row) => row.platform === "mobile").length,
      episodeViews: views.length,
      episodeViewsToday: views.filter((row) => Date.parse(String(row.viewed_at || "")) >= todayMs).length,
      episodeViewsWeb: views.filter((row) => row.platform === "web").length,
      episodeViewsMobile: views.filter((row) => row.platform === "mobile").length,
      lastEventAt: last ? new Date(last).toISOString() : null,
      topEpisodes: [...top.values()].sort((a, b) => b.views - a.views).slice(0, 10),
    };
  } catch (err: any) {
    console.warn("[admin/stats] analytics unavailable:", err?.message || err);
    return empty;
  }
}

// حالة الخادم للمدير
router.get("/admin/stats", async (req: Request, res: Response) => {
  if (!(await isAdmin(req)))
    return res.status(401).json({ error: "غير مصرّح" });

  try {
    const [allUsers, cacheRows, entitlements, analytics] = await Promise.all([
      sbSelect("users", { select: "id" }, { limit: 1000 }),
      sbSelect("source_cache", { select: "cache_key" }, { limit: 1000 }),
      loadEntitlements(),
      loadUsageAnalytics(),
    ]);

    return res.json({
      totalUsers: allUsers.length,
      premiumUsers: [...entitlements.values()].filter((v) => v.plan === "premium").length,
      cacheEntries: cacheRows.length,
      analytics,
    });
  } catch (err) {
    return res.status(500).json({ error: "خطأ في الخادم" });
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
