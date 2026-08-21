import { Router } from "express";
import { sbSelect, sbUpsert } from "../lib/supabaseClient.js";
import { getDbConfig, setDbConfig } from "../lib/dbConfig.js";
import { getEmailUser } from "../auth/emailAuth.js";
import { isWebAdmin } from "./webAdmin.js";

const router = Router();
const REMOTE_CONFIG_KEY = "remote_config";

const DEFAULT_CONFIG = {
  version: "1.0.0",
  maintenanceMode: false,
  maintenanceMessage: "",
  sources: {
    shahiid:      true,
    animelek:     true,
    animedar:     true,
    okanime:      true,
    animeify:     true,
    kawaii:       true,
    anikoto:      true,
    animepahe:    true,
    animewitcher: true,
    animekai:      true,
    anivexa_re:    false,
    seepanel:     true,
    arabseed:     true,
    animephoenix: true,
    starcima:     true,
    videasy:      true,
    vidlink:      true,
    lordflix:     true,
    vyla:         true,
    aflaam:       true,
    stardima:     true,
    consumet_gogo: true,
    consumet_world: true,
    consumet_reanime: false,
    consumet_miruro: true,
    consumet_saturn: true,
    consumet_anikoto: true,
    anivexa_anibd: true,
  },
  announcements: [] as {
    id: string;
    message: string;
    type: "info" | "warning" | "success";
    link?: string;
  }[],
  features: {
    comments:         true,
    watchHistory:     true,
    subscriptions:    true,
    downloads:        false,
    animationSection: true,
  },
  limits: {
    downloadLimit: 4,
    watchAccessMinutes: 60,
  },
};

function mergeConfig(value: any) {
  return {
    ...DEFAULT_CONFIG,
    ...(value && typeof value === "object" ? value : {}),
    sources: { ...DEFAULT_CONFIG.sources, ...(value?.sources || {}) },
    features: { ...DEFAULT_CONFIG.features, ...(value?.features || {}) },
    limits: { ...DEFAULT_CONFIG.limits, ...(value?.limits || {}) },
  };
}

async function isAdmin(req: any): Promise<boolean> {
  if (isWebAdmin(req)) return true;
  const user = await getEmailUser(req);
  return user?.plan === "admin";
}

/* ── GET /api/config ── public remote configuration ── */
router.get("/config", async (_req, res) => {
  try {
    const remoteRaw = await getDbConfig(REMOTE_CONFIG_KEY);
    const remote = remoteRaw ? JSON.parse(remoteRaw) : {};
    const rows = await sbSelect("app_config", { key: "eq.announcements" }, { limit: 1 });
    const announcements = rows.length > 0 && rows[0].value
      ? JSON.parse(rows[0].value)
      : [];
    return res.json({
      ...mergeConfig(remote),
      announcements: Array.isArray(announcements) ? announcements : [],
    });
  } catch {
    /* fall through to default */
  }
  return res.json(DEFAULT_CONFIG);
});

/* ── GET/PATCH /api/admin/remote-config ── protected remote control ── */
router.get("/admin/remote-config", async (req, res) => {
  if (!(await isAdmin(req))) return res.status(401).json({ error: "غير مصرّح" });
  const raw = await getDbConfig(REMOTE_CONFIG_KEY);
  return res.json(mergeConfig(raw ? JSON.parse(raw) : {}));
});

router.patch("/admin/remote-config", async (req, res) => {
  if (!(await isAdmin(req))) return res.status(401).json({ error: "غير مصرّح" });
  const currentRaw = await getDbConfig(REMOTE_CONFIG_KEY);
  const current = currentRaw ? JSON.parse(currentRaw) : {};
  const incoming = req.body && typeof req.body === "object" ? req.body : {};
  const next = mergeConfig({
    ...current,
    ...incoming,
    sources: { ...(current.sources || {}), ...(incoming.sources || {}) },
    features: { ...(current.features || {}), ...(incoming.features || {}) },
    limits: { ...(current.limits || {}), ...(incoming.limits || {}) },
  });
  if (typeof next.maintenanceMode !== "boolean") {
    return res.status(400).json({ error: "maintenanceMode يجب أن يكون true أو false" });
  }
  if (!Number.isInteger(next.limits.downloadLimit) || next.limits.downloadLimit < 0 || next.limits.downloadLimit > 100) {
    return res.status(400).json({ error: "limits.downloadLimit غير صالح" });
  }
  if (!Number.isInteger(next.limits.watchAccessMinutes) || next.limits.watchAccessMinutes < 1 || next.limits.watchAccessMinutes > 1440) {
    return res.status(400).json({ error: "limits.watchAccessMinutes غير صالح" });
  }
  await setDbConfig(REMOTE_CONFIG_KEY, JSON.stringify(next));
  return res.json({ ok: true, config: next });
});

/* ── GET /api/config/announcements ── list current announcements ── */
router.get("/config/announcements", async (_req, res) => {
  try {
    const rows = await sbSelect("app_config", { key: "eq.announcements" }, { limit: 1 });
    const list = rows.length > 0 ? JSON.parse(rows[0].value || "[]") : [];
    return res.json({ announcements: list });
  } catch {
    return res.json({ announcements: [] });
  }
});

/* ── POST /api/config/announcements ── add/replace announcements ── */
/* Body: { announcements: [{id,message,type,link?}] }               */
router.post("/config/announcements", async (req, res) => {
  const userId = (req.session as any)?.userId || (req.session as any)?.emailUserId;
  if (!userId) return res.status(401).json({ error: "يجب تسجيل الدخول" });

  try {
    const { announcements } = req.body as { announcements: any[] };
    if (!Array.isArray(announcements))
      return res.status(400).json({ error: "announcements يجب أن تكون مصفوفة" });

    await sbUpsert("app_config", { key: "announcements", value: JSON.stringify(announcements) }, "key");
    return res.json({ ok: true, count: announcements.length });
  } catch (err) {
    console.error("[config] POST announcements:", err);
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

/* ── DELETE /api/config/announcements/:id ── remove one by id ── */
router.delete("/config/announcements/:id", async (req, res) => {
  const userId = (req.session as any)?.userId || (req.session as any)?.emailUserId;
  if (!userId) return res.status(401).json({ error: "يجب تسجيل الدخول" });

  try {
    const rows = await sbSelect("app_config", { key: "eq.announcements" }, { limit: 1 });
    const list: any[] = rows.length > 0 ? JSON.parse(rows[0].value || "[]") : [];
    const filtered = list.filter((a: any) => a.id !== req.params.id);
    await sbUpsert("app_config", { key: "announcements", value: JSON.stringify(filtered) }, "key");
    return res.json({ ok: true });
  } catch (err) {
    console.error("[config] DELETE announcement:", err);
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

export default router;
