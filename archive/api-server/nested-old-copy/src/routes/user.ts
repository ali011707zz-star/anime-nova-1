import { Router, type Request, type Response } from "express";
import { sbSelect, sbInsert, sbDelete, sbUpsert } from "../lib/supabaseClient.js";
import { getEmailUser } from "../auth/emailAuth.js";

const router = Router();

async function getUserId(req: Request): Promise<string | null> {
  if ((req as any).isAuthenticated?.() && (req.user as any)?.claims?.sub)
    return (req.user as any).claims.sub;
  const eu = await getEmailUser(req);
  return eu?.id || null;
}

router.get("/user/history", async (req: Request, res: Response) => {
  const uid = await getUserId(req);
  if (!uid) return res.status(401).json({ error: "غير مصرّح" });
  try {
    const rows = await sbSelect("watch_history",
      { user_id: `eq.${uid}`, order: "watched_at.desc" },
      { limit: 100 },
    );
    return res.json(rows);
  } catch (e) { return res.status(500).json({ error: String(e) }); }
});

router.post("/user/history", async (req: Request, res: Response) => {
  const uid = await getUserId(req);
  if (!uid) return res.status(401).json({ error: "غير مصرّح" });
  const { content_id, content_type = "anime", title = "", poster, episode, season } = req.body || {};
  if (!content_id) return res.status(400).json({ error: "content_id مطلوب" });
  try {
    await sbUpsert("watch_history", {
      user_id:      uid,
      content_id,
      content_type,
      title,
      poster:       poster ?? null,
      episode:      episode ?? null,
      season:       season ?? null,
      watched_at:   new Date().toISOString(),
    }, "user_id,content_id,content_type,episode,season");
    return res.json({ ok: true });
  } catch (e) { return res.status(500).json({ error: String(e) }); }
});

router.delete("/user/history/:contentId", async (req: Request, res: Response) => {
  const uid = await getUserId(req);
  if (!uid) return res.status(401).json({ error: "غير مصرّح" });
  try {
    await sbDelete("watch_history", { user_id: `eq.${uid}`, content_id: `eq.${req.params.contentId}` });
    return res.json({ ok: true });
  } catch (e) { return res.status(500).json({ error: String(e) }); }
});

router.delete("/user/history", async (req: Request, res: Response) => {
  const uid = await getUserId(req);
  if (!uid) return res.status(401).json({ error: "غير مصرّح" });
  try {
    await sbDelete("watch_history", { user_id: `eq.${uid}` });
    return res.json({ ok: true });
  } catch (e) { return res.status(500).json({ error: String(e) }); }
});

router.get("/user/favorites", async (req: Request, res: Response) => {
  const uid = await getUserId(req);
  if (!uid) return res.status(401).json({ error: "غير مصرّح" });
  try {
    const rows = await sbSelect("favorites",
      { user_id: `eq.${uid}`, order: "added_at.desc" },
    );
    return res.json(rows);
  } catch (e) { return res.status(500).json({ error: String(e) }); }
});

router.post("/user/favorites", async (req: Request, res: Response) => {
  const uid = await getUserId(req);
  if (!uid) return res.status(401).json({ error: "غير مصرّح" });
  const { content_id, content_type = "anime", title = "", poster } = req.body || {};
  if (!content_id) return res.status(400).json({ error: "content_id مطلوب" });
  try {
    await sbUpsert("favorites", {
      user_id:      uid,
      content_id,
      content_type,
      title,
      poster:       poster ?? null,
    }, "user_id,content_id,content_type");
    return res.json({ ok: true });
  } catch (e) { return res.status(500).json({ error: String(e) }); }
});

router.delete("/user/favorites/:contentId", async (req: Request, res: Response) => {
  const uid = await getUserId(req);
  if (!uid) return res.status(401).json({ error: "غير مصرّح" });
  try {
    await sbDelete("favorites", { user_id: `eq.${uid}`, content_id: `eq.${req.params.contentId}` });
    return res.json({ ok: true });
  } catch (e) { return res.status(500).json({ error: String(e) }); }
});

router.get("/user/favorites/:contentId", async (req: Request, res: Response) => {
  const uid = await getUserId(req);
  if (!uid) return res.json({ isFavorite: false });
  try {
    const rows = await sbSelect("favorites", {
      user_id:    `eq.${uid}`,
      content_id: `eq.${req.params.contentId}`,
    }, { limit: 1 });
    return res.json({ isFavorite: rows.length > 0 });
  } catch { return res.json({ isFavorite: false }); }
});

router.get("/user/progress/:contentId", async (req: Request, res: Response) => {
  const uid = await getUserId(req);
  if (!uid) return res.json(null);
  try {
    const rows = await sbSelect("watch_progress", {
      user_id:    `eq.${uid}`,
      content_id: `eq.${req.params.contentId}`,
    }, { limit: 1 });
    return res.json(rows[0] || null);
  } catch { return res.json(null); }
});

router.post("/user/progress", async (req: Request, res: Response) => {
  const uid = await getUserId(req);
  if (!uid) return res.status(401).json({ error: "غير مصرّح" });
  const {
    content_id, content_type = "anime",
    episode = 1, season = 1,
    position_sec = 0, duration_sec = 0,
  } = req.body || {};
  if (!content_id) return res.status(400).json({ error: "content_id مطلوب" });
  try {
    await sbUpsert("watch_progress", {
      user_id:      uid,
      content_id,
      content_type,
      episode,
      season,
      position_sec,
      duration_sec,
      updated_at:   new Date().toISOString(),
    }, "user_id,content_id,content_type");
    return res.json({ ok: true });
  } catch (e) { return res.status(500).json({ error: String(e) }); }
});

router.get("/user/continue-watching", async (req: Request, res: Response) => {
  const uid = await getUserId(req);
  if (!uid) return res.json([]);
  try {
    const rows = await sbSelect("watch_progress",
      { user_id: `eq.${uid}`, order: "updated_at.desc" },
      { limit: 20 },
    );
    const active = rows.filter((r: any) =>
      (r.position_sec || 0) > 30 &&
      (r.duration_sec === 0 || (r.position_sec || 0) < ((r.duration_sec ?? 0) * 0.95))
    );
    return res.json(active);
  } catch (e) { return res.status(500).json({ error: String(e) }); }
});

export default router;
