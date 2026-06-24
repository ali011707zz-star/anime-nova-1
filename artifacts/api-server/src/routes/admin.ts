import { Router, type Request, type Response } from "express";
import { setConfig, resetTransporter, initEmailService } from "../auth/emailService.js";
import { getEmailUser } from "../auth/emailAuth.js";
import { sbSelect, sbPatch, sbDelete } from "../lib/supabaseClient.js";

const router = Router();

async function isAdmin(req: Request): Promise<boolean> {
  const eu = await getEmailUser(req);
  return eu?.plan === "admin";
}

// ── Env Relay — يُرجع المفاتيح لخوادم Replit الفرعية ───────────────────────

/* GET /api/admin/env-relay — يُرجع SUPABASE + SMTP vars محمية بـ APP_SECRET */
router.get("/admin/env-relay", async (req: Request, res: Response) => {
  const appSecret = process.env.APP_SECRET || "anime-nova-default-change-me-aabbccdd";
  const provided  = (req.headers["x-relay-secret"] as string | undefined) || req.query.s;
  if (provided !== appSecret) {
    return res.status(401).json({ error: "unauthorized" });
  }
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

/* تشخيص SMTP — بدون مصادقة للاختبار السريع */
router.get("/admin/smtp-ping", async (_req: Request, res: Response) => {
  try {
    resetTransporter();
    await initEmailService();
    return res.json({
      ok:       true,
      smtpUser: process.env.SMTP_USER || "غير مضبوط",
      hasPass:  !!process.env.SMTP_PASS,
      nodeEnv:  process.env.NODE_ENV,
    });
  } catch (err: any) {
    return res.status(500).json({ ok: false, error: err.message });
  }
});

router.post("/admin/smtp-config", async (req: Request, res: Response) => {
  if (!(await isAdmin(req)))
    return res.status(401).json({ error: "غير مصرّح — مطلوب صلاحيات المدير" });

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

export default router;
