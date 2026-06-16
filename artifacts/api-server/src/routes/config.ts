import { Router } from "express";
import { sbSelect, sbUpsert } from "../lib/supabaseClient.js";

const router = Router();

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
};

/* ── GET /api/config ── dynamic announcements from Supabase ── */
router.get("/config", async (_req, res) => {
  try {
    const rows = await sbSelect("app_config", { key: "eq.announcements" }, { limit: 1 });
    if (rows.length > 0 && rows[0].value) {
      const parsed = JSON.parse(rows[0].value);
      return res.json({ ...DEFAULT_CONFIG, announcements: Array.isArray(parsed) ? parsed : [] });
    }
  } catch {
    /* fall through to default */
  }
  return res.json(DEFAULT_CONFIG);
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
