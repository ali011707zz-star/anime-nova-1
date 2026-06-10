import { Router, type Request, type Response } from "express";
import { db } from "@workspace/db";
import { sql } from "drizzle-orm";
import { getEmailUser } from "../auth/emailAuth.js";

const router = Router();

async function getUserId(req: Request): Promise<string | null> {
  if ((req as any).isAuthenticated?.() && (req.user as any)?.claims?.sub)
    return (req.user as any).claims.sub;
  const eu = await getEmailUser(req);
  return eu?.id || null;
}

// ══════════════════════════════════════════════════
// WATCH HISTORY
// ══════════════════════════════════════════════════

router.get("/user/history", async (req: Request, res: Response) => {
  const uid = await getUserId(req);
  if (!uid) return res.status(401).json({ error: "غير مصرّح" });
  try {
    const rows = await db.execute(sql`
      SELECT content_id, content_type, title, poster, episode, season, watched_at
      FROM watch_history
      WHERE user_id = ${uid}
      ORDER BY watched_at DESC
      LIMIT 100
    `);
    return res.json(rows.rows);
  } catch (e) { return res.status(500).json({ error: String(e) }); }
});

router.post("/user/history", async (req: Request, res: Response) => {
  const uid = await getUserId(req);
  if (!uid) return res.status(401).json({ error: "غير مصرّح" });
  const { content_id, content_type = "anime", title = "", poster, episode, season } = req.body || {};
  if (!content_id) return res.status(400).json({ error: "content_id مطلوب" });
  try {
    await db.execute(sql`
      INSERT INTO watch_history (user_id, content_id, content_type, title, poster, episode, season, watched_at)
      VALUES (${uid}, ${content_id}, ${content_type}, ${title}, ${poster ?? null}, ${episode ?? null}, ${season ?? null}, NOW())
      ON CONFLICT (user_id, content_id, content_type, episode, season)
      DO UPDATE SET watched_at = NOW(), title = EXCLUDED.title, poster = EXCLUDED.poster
    `);
    return res.json({ ok: true });
  } catch (e) { return res.status(500).json({ error: String(e) }); }
});

router.delete("/user/history/:contentId", async (req: Request, res: Response) => {
  const uid = await getUserId(req);
  if (!uid) return res.status(401).json({ error: "غير مصرّح" });
  try {
    await db.execute(sql`DELETE FROM watch_history WHERE user_id = ${uid} AND content_id = ${req.params.contentId}`);
    return res.json({ ok: true });
  } catch (e) { return res.status(500).json({ error: String(e) }); }
});

router.delete("/user/history", async (req: Request, res: Response) => {
  const uid = await getUserId(req);
  if (!uid) return res.status(401).json({ error: "غير مصرّح" });
  try {
    await db.execute(sql`DELETE FROM watch_history WHERE user_id = ${uid}`);
    return res.json({ ok: true });
  } catch (e) { return res.status(500).json({ error: String(e) }); }
});

// ══════════════════════════════════════════════════
// FAVORITES
// ══════════════════════════════════════════════════

router.get("/user/favorites", async (req: Request, res: Response) => {
  const uid = await getUserId(req);
  if (!uid) return res.status(401).json({ error: "غير مصرّح" });
  try {
    const rows = await db.execute(sql`
      SELECT content_id, content_type, title, poster, added_at
      FROM favorites WHERE user_id = ${uid}
      ORDER BY added_at DESC
    `);
    return res.json(rows.rows);
  } catch (e) { return res.status(500).json({ error: String(e) }); }
});

router.post("/user/favorites", async (req: Request, res: Response) => {
  const uid = await getUserId(req);
  if (!uid) return res.status(401).json({ error: "غير مصرّح" });
  const { content_id, content_type = "anime", title = "", poster } = req.body || {};
  if (!content_id) return res.status(400).json({ error: "content_id مطلوب" });
  try {
    await db.execute(sql`
      INSERT INTO favorites (user_id, content_id, content_type, title, poster)
      VALUES (${uid}, ${content_id}, ${content_type}, ${title}, ${poster ?? null})
      ON CONFLICT (user_id, content_id, content_type) DO NOTHING
    `);
    return res.json({ ok: true });
  } catch (e) { return res.status(500).json({ error: String(e) }); }
});

router.delete("/user/favorites/:contentId", async (req: Request, res: Response) => {
  const uid = await getUserId(req);
  if (!uid) return res.status(401).json({ error: "غير مصرّح" });
  try {
    await db.execute(sql`DELETE FROM favorites WHERE user_id = ${uid} AND content_id = ${req.params.contentId}`);
    return res.json({ ok: true });
  } catch (e) { return res.status(500).json({ error: String(e) }); }
});

router.get("/user/favorites/:contentId", async (req: Request, res: Response) => {
  const uid = await getUserId(req);
  if (!uid) return res.json({ isFavorite: false });
  try {
    const rows = await db.execute(sql`
      SELECT 1 FROM favorites WHERE user_id = ${uid} AND content_id = ${req.params.contentId} LIMIT 1
    `);
    return res.json({ isFavorite: rows.rows.length > 0 });
  } catch { return res.json({ isFavorite: false }); }
});

// ══════════════════════════════════════════════════
// WATCH PROGRESS (آخر لحظة مشاهدة)
// ══════════════════════════════════════════════════

router.get("/user/progress/:contentId", async (req: Request, res: Response) => {
  const uid = await getUserId(req);
  if (!uid) return res.json(null);
  try {
    const rows = await db.execute(sql`
      SELECT content_id, content_type, episode, season, position_sec, duration_sec, updated_at
      FROM watch_progress
      WHERE user_id = ${uid} AND content_id = ${req.params.contentId}
      LIMIT 1
    `);
    return res.json(rows.rows[0] || null);
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
    await db.execute(sql`
      INSERT INTO watch_progress (user_id, content_id, content_type, episode, season, position_sec, duration_sec, updated_at)
      VALUES (${uid}, ${content_id}, ${content_type}, ${episode}, ${season}, ${position_sec}, ${duration_sec}, NOW())
      ON CONFLICT (user_id, content_id, content_type)
      DO UPDATE SET episode = EXCLUDED.episode, season = EXCLUDED.season,
        position_sec = EXCLUDED.position_sec, duration_sec = EXCLUDED.duration_sec,
        updated_at = NOW()
    `);
    return res.json({ ok: true });
  } catch (e) { return res.status(500).json({ error: String(e) }); }
});

router.get("/user/continue-watching", async (req: Request, res: Response) => {
  const uid = await getUserId(req);
  if (!uid) return res.json([]);
  try {
    const rows = await db.execute(sql`
      SELECT wp.content_id, wp.content_type, wp.episode, wp.season,
             wp.position_sec, wp.duration_sec, wp.updated_at,
             wh.title, wh.poster
      FROM watch_progress wp
      LEFT JOIN watch_history wh ON wh.user_id = wp.user_id
        AND wh.content_id = wp.content_id AND wh.content_type = wp.content_type
        AND wh.episode = wp.episode AND COALESCE(wh.season, 1) = wp.season
      WHERE wp.user_id = ${uid}
        AND wp.position_sec > 30
        AND (wp.duration_sec = 0 OR wp.position_sec < wp.duration_sec * 0.95)
      ORDER BY wp.updated_at DESC
      LIMIT 20
    `);
    return res.json(rows.rows);
  } catch (e) { return res.status(500).json({ error: String(e) }); }
});

export default router;
