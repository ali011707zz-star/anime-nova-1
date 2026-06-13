import { Router, type Request, type Response } from "express";
import { db } from "../lib/db.js";
import { watchHistory, favorites, watchProgress } from "@workspace/db";
import { eq, desc, and } from "drizzle-orm";

const router = Router();

function getUserId(req: Request): string | null {
  return (
    (req.session as any)?.userId ||
    (req.session as any)?.emailUserId ||
    null
  );
}

/* ═══════════════════════════════════════════
   WATCH HISTORY
═══════════════════════════════════════════ */

router.get("/user/history", async (req: Request, res: Response) => {
  const userId = getUserId(req);
  if (!userId) return res.status(401).json({ error: "غير مصرّح" });

  try {
    const limit  = Math.min(Number(req.query.limit) || 60, 100);
    const offset = Number(req.query.offset) || 0;

    const rows = await db.select().from(watchHistory)
      .where(eq(watchHistory.userId, userId))
      .orderBy(desc(watchHistory.watchedAt))
      .limit(limit)
      .offset(offset);

    return res.json({ history: rows });
  } catch (err) {
    console.error("[userdata] history GET:", err);
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

router.post("/user/history", async (req: Request, res: Response) => {
  const userId = getUserId(req);
  if (!userId) return res.status(401).json({ error: "غير مصرّح" });

  try {
    const { animeId, animeTitle, animeCover, animeType, episodeNumber, seasonNumber, tmdbId, mediaType } = req.body;
    if (!animeId || !episodeNumber) return res.status(400).json({ error: "animeId و episodeNumber مطلوبان" });

    const season = Number(seasonNumber) || 1;

    // Delete existing entry for same combo
    await db.delete(watchHistory).where(
      and(
        eq(watchHistory.userId, userId),
        eq(watchHistory.animeId, Number(animeId)),
        eq(watchHistory.episodeNumber, Number(episodeNumber)),
        eq(watchHistory.seasonNumber, season),
      )
    );

    const [row] = await db.insert(watchHistory).values({
      userId,
      animeId:       Number(animeId),
      animeTitle:    animeTitle || null,
      animeCover:    animeCover || null,
      animeType:     animeType || "anime",
      episodeNumber: Number(episodeNumber),
      seasonNumber:  season,
      tmdbId:        tmdbId ? String(tmdbId) : null,
      mediaType:     mediaType || null,
    }).returning();

    return res.status(201).json({ entry: row });
  } catch (err) {
    console.error("[userdata] history POST:", err);
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

router.delete("/user/history/:id", async (req: Request, res: Response) => {
  const userId = getUserId(req);
  if (!userId) return res.status(401).json({ error: "غير مصرّح" });

  try {
    await db.delete(watchHistory).where(
      and(eq(watchHistory.id, req.params.id), eq(watchHistory.userId, userId))
    );
    return res.json({ ok: true });
  } catch (err) {
    console.error("[userdata] history DELETE:", err);
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

router.delete("/user/history", async (req: Request, res: Response) => {
  const userId = getUserId(req);
  if (!userId) return res.status(401).json({ error: "غير مصرّح" });

  try {
    await db.delete(watchHistory).where(eq(watchHistory.userId, userId));
    return res.json({ ok: true });
  } catch (err) {
    console.error("[userdata] history DELETE all:", err);
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

/* ═══════════════════════════════════════════
   FAVORITES
═══════════════════════════════════════════ */

router.get("/user/favorites", async (req: Request, res: Response) => {
  const userId = getUserId(req);
  if (!userId) return res.status(401).json({ error: "غير مصرّح" });

  try {
    const rows = await db.select().from(favorites)
      .where(eq(favorites.userId, userId))
      .orderBy(desc(favorites.addedAt));
    return res.json({ favorites: rows });
  } catch (err) {
    console.error("[userdata] favorites GET:", err);
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

router.get("/user/favorites/ids", async (req: Request, res: Response) => {
  const userId = getUserId(req);
  if (!userId) return res.json({ ids: [] });

  try {
    const rows = await db.select({ animeId: favorites.animeId }).from(favorites)
      .where(eq(favorites.userId, userId));
    return res.json({ ids: rows.map((r) => r.animeId) });
  } catch (err) {
    console.error("[userdata] favorites/ids GET:", err);
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

router.post("/user/favorites", async (req: Request, res: Response) => {
  const userId = getUserId(req);
  if (!userId) return res.status(401).json({ error: "غير مصرّح" });

  try {
    const { animeId, animeTitle, animeCover, animeType, tmdbId, mediaType } = req.body;
    if (!animeId) return res.status(400).json({ error: "animeId مطلوب" });

    const existing = await db.select().from(favorites).where(
      and(eq(favorites.userId, userId), eq(favorites.animeId, Number(animeId)))
    );

    if (existing.length > 0) {
      return res.status(201).json({ entry: existing[0], already: true });
    }

    const [row] = await db.insert(favorites).values({
      userId,
      animeId:    Number(animeId),
      animeTitle: animeTitle || null,
      animeCover: animeCover || null,
      animeType:  animeType || "anime",
      tmdbId:     tmdbId ? String(tmdbId) : null,
      mediaType:  mediaType || null,
    }).returning();

    return res.status(201).json({ entry: row || null, already: false });
  } catch (err) {
    console.error("[userdata] favorites POST:", err);
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

router.delete("/user/favorites/:animeId", async (req: Request, res: Response) => {
  const userId = getUserId(req);
  if (!userId) return res.status(401).json({ error: "غير مصرّح" });

  try {
    await db.delete(favorites).where(
      and(eq(favorites.userId, userId), eq(favorites.animeId, Number(req.params.animeId)))
    );
    return res.json({ ok: true });
  } catch (err) {
    console.error("[userdata] favorites DELETE:", err);
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

/* ═══════════════════════════════════════════
   WATCH PROGRESS
═══════════════════════════════════════════ */

router.get("/user/progress/all", async (req: Request, res: Response) => {
  const userId = getUserId(req);
  if (!userId) return res.json({ progress: [] });

  try {
    const rows = await db.select().from(watchProgress)
      .where(eq(watchProgress.userId, userId))
      .orderBy(desc(watchProgress.updatedAt));
    return res.json({ progress: rows });
  } catch (err) {
    console.error("[userdata] progress/all GET:", err);
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

router.get("/user/progress/:animeId/:ep", async (req: Request, res: Response) => {
  const userId = getUserId(req);
  if (!userId) return res.json({ progress: null });

  try {
    const animeId = Number(req.params.animeId);
    const ep      = Number(req.params.ep);
    const season  = Number(req.query.season) || 1;

    const rows = await db.select().from(watchProgress).where(
      and(
        eq(watchProgress.userId, userId),
        eq(watchProgress.animeId, animeId),
        eq(watchProgress.episodeNumber, ep),
        eq(watchProgress.seasonNumber, season),
      )
    ).limit(1);

    return res.json({ progress: rows[0] || null });
  } catch (err) {
    console.error("[userdata] progress GET:", err);
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

router.post("/user/progress", async (req: Request, res: Response) => {
  const userId = getUserId(req);
  if (!userId) return res.status(401).json({ error: "غير مصرّح" });

  try {
    const { animeId, animeType, episodeNumber, seasonNumber, tmdbId, progressSeconds, durationSeconds } = req.body;
    if (!animeId || progressSeconds == null) return res.status(400).json({ error: "animeId و progressSeconds مطلوبان" });

    const ep = Number(episodeNumber) || 1;
    const season = Number(seasonNumber) || 1;

    const [row] = await db.insert(watchProgress).values({
      userId,
      animeId:         Number(animeId),
      animeType:       animeType || "anime",
      episodeNumber:   ep,
      seasonNumber:    season,
      tmdbId:          tmdbId ? String(tmdbId) : null,
      progressSeconds: Number(progressSeconds),
      durationSeconds: Number(durationSeconds) || 0,
      updatedAt:       new Date(),
    }).onConflictDoUpdate({
      target: [watchProgress.userId, watchProgress.animeId, watchProgress.episodeNumber, watchProgress.seasonNumber],
      set: {
        progressSeconds: Number(progressSeconds),
        durationSeconds: Number(durationSeconds) || 0,
        updatedAt:       new Date(),
      }
    }).returning();

    return res.status(201).json({ entry: row });
  } catch (err) {
    console.error("[userdata] progress POST:", err);
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

router.get("/user/continue-watching", async (req: Request, res: Response) => {
  const userId = getUserId(req);
  if (!userId) return res.json([]);

  try {
    const rows = await db.select().from(watchProgress)
      .where(eq(watchProgress.userId, userId))
      .orderBy(desc(watchProgress.updatedAt))
      .limit(20);

    const active = rows.filter((r) =>
      (r.progressSeconds || 0) > 30 &&
      (r.durationSeconds === 0 || (r.progressSeconds || 0) < ((r.durationSeconds ?? 0) * 0.95))
    );

    return res.json(active);
  } catch (err) {
    console.error("[userdata] continue-watching:", err);
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

/* ═══════════════════════════════════════════
   USER STATS
═══════════════════════════════════════════ */

router.get("/user/stats", async (req: Request, res: Response) => {
  const userId = getUserId(req);
  if (!userId) return res.json({ watchedCount: 0, favoritesCount: 0, progressCount: 0 });

  try {
    const [histRows, favRows, progRows] = await Promise.all([
      db.select({ id: watchHistory.id }).from(watchHistory).where(eq(watchHistory.userId, userId)),
      db.select({ id: favorites.id }).from(favorites).where(eq(favorites.userId, userId)),
      db.select({ id: watchProgress.id }).from(watchProgress).where(eq(watchProgress.userId, userId)),
    ]);

    return res.json({
      watchedCount:   histRows.length,
      favoritesCount: favRows.length,
      progressCount:  progRows.length,
    });
  } catch (err) {
    console.error("[userdata] stats:", err);
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

export default router;
