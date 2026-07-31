import { Router, type Request, type Response } from "express";
import { setConfig, resetTransporter, initEmailService } from "../auth/emailService.js";
import { getEmailUser } from "../auth/emailAuth.js";
import { sbSelect, sbPatch, sbDelete } from "../lib/supabaseClient.js";
import { SETUP_SQL, getTableStatus } from "../lib/supabaseMigrate.js";
import { setDbConfig, clearDbConfigCache } from "../lib/dbConfig.js";
import { checkAppSecret } from "../lib/security.js";

// دالة مساعدة للتحقق من secret أو صلاحيات الأدمن
async function hasRelayAccess(req: Request): Promise<boolean> {
  const provided = (req.headers["x-relay-secret"] as string | undefined) || (req.query.s as string | undefined);
  return checkAppSecret(provided) || (await isAdmin(req));
}

const router = Router();

async function isAdmin(req: Request): Promise<boolean> {
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
    const page = Math.max(0, Number(req.query.page || 0));
    const limit = 50;

    const filter: Record<string, string> = { order: "created_at.desc", offset: String(page * limit) };
    if (q) filter.email = `ilike.*${q}*`;

    const rows = await sbSelect("users",
      filter,
      { limit },
    );

    const users = rows.map((u: any) => ({
      id:          u.id,
      email:       u.email,
      username:    u.username,
      displayName: u.display_name,
      plan:        u.plan ?? "free",
      expiresAt:   u.expires_at ?? null,
      createdAt:   u.created_at,
    }));

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
    const updates: Record<string, any> = {
      plan,
      updated_at: new Date().toISOString(),
    };

    if (plan === "free") {
      updates.expires_at = null;
    } else if (expires_at) {
      updates.expires_at = new Date(expires_at).toISOString();
    } else if (plan === "premium") {
      // افتراضي: اشتراك لمدة شهر
      const d = new Date();
      d.setMonth(d.getMonth() + 1);
      updates.expires_at = d.toISOString();
    } else {
      // admin: لا تنتهي صلاحيته
      updates.expires_at = null;
    }

    const updated = await sbPatch("users", { id: `eq.${id}` }, updates);
    if (!updated) return res.status(404).json({ error: "المستخدم غير موجود" });

    return res.json({
      ok:        true,
      id,
      plan:      updates.plan,
      expiresAt: updates.expires_at,
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
  const { days = 30 } = req.body || {};

  try {
    const d = new Date();
    d.setDate(d.getDate() + Number(days));

    const updated = await sbPatch("users", { id: `eq.${id}` }, {
      plan:       "premium",
      expires_at: d.toISOString(),
      updated_at: new Date().toISOString(),
    });
    if (!updated) return res.status(404).json({ error: "المستخدم غير موجود" });

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

// حالة الخادم للمدير
router.get("/admin/stats", async (req: Request, res: Response) => {
  if (!(await isAdmin(req)))
    return res.status(401).json({ error: "غير مصرّح" });

  try {
    const [allUsers, premiumUsers, cacheRows] = await Promise.allSettled([
      sbSelect("users", { select: "id" }, { limit: 1000 }),
      sbSelect("users", { plan: "eq.premium", select: "id" }, { limit: 1000 }),
      sbSelect("source_cache", { select: "cache_key" }, { limit: 1000 }),
    ]);

    return res.json({
      totalUsers:   allUsers.status === "fulfilled"   ? allUsers.value.length   : "?",
      premiumUsers: premiumUsers.status === "fulfilled" ? premiumUsers.value.length : "?",
      cacheEntries: cacheRows.status === "fulfilled"  ? cacheRows.value.length  : "?",
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

/* GET /api/admin/tg-cache-status — حالة نظام تخزين الحلقات في تيليغرام */
router.get("/admin/tg-cache-status", async (req: Request, res: Response) => {
  if (!(await hasRelayAccess(req)))
    return res.status(401).json({ error: "unauthorized" });

  try {
    const { getTgCacheStatus } = await import("../lib/telegramEpisodeCache.js");
    return res.json({ ok: true, ...getTgCacheStatus() });
  } catch (e: any) {
    return res.status(500).json({ ok: false, error: e.message });
  }
});

/* POST /api/admin/tg-cache-credentials — تعيين TELEGRAM_BOT_TOKEN + TELEGRAM_CACHE_CHANNEL_ID */
router.post("/admin/tg-cache-credentials", async (req: Request, res: Response) => {
  if (!(await hasRelayAccess(req)))
    return res.status(401).json({ error: "unauthorized" });

  const { setDbConfig } = await import("../lib/dbConfig.js");
  const { bot_token, channel_id } = req.body || {};

  if (bot_token) {
    process.env.TELEGRAM_BOT_TOKEN = String(bot_token);
    await setDbConfig("telegram_bot_token", String(bot_token));
  }
  if (channel_id) {
    process.env.TELEGRAM_CACHE_CHANNEL_ID = String(channel_id);
    await setDbConfig("telegram_cache_channel_id", String(channel_id));
  }

  return res.json({
    ok: true,
    hasToken:   !!process.env.TELEGRAM_BOT_TOKEN,
    channelId:  process.env.TELEGRAM_CACHE_CHANNEL_ID || "(من DB)",
  });
});

export default router;
