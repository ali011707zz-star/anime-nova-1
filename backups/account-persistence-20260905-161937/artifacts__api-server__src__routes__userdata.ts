import { Router, type Request, type Response } from "express";
import { sbSelect, sbInsert, sbUpsert, sbDelete } from "../lib/supabaseClient.js";
import { getMobileUserId } from "../lib/security.js";

const router = Router();

function getUserId(req: Request): string | null {
  return (
    (req.session as any)?.userId ||
    (req.session as any)?.emailUserId ||
    getMobileUserId(req) ||
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

    const rows = await sbSelect("watch_history",
      { user_id: `eq.${userId}`, order: "watched_at.desc" },
      { limit: limit + offset },
    );
    return res.json({ history: rows.slice(offset, offset + limit) });
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

    // حذف المدخل القديم لنفس المجموعة
    await sbDelete("watch_history", {
      user_id:        `eq.${userId}`,
      anime_id:       `eq.${Number(animeId)}`,
      episode_number: `eq.${Number(episodeNumber)}`,
      season_number:  `eq.${season}`,
    });

    const row = await sbInsert("watch_history", {
      user_id:        userId,
      anime_id:       Number(animeId),
      anime_title:    animeTitle || null,
      anime_cover:    animeCover || null,
      anime_type:     animeType || "anime",
      episode_number: Number(episodeNumber),
      season_number:  season,
      tmdb_id:        tmdbId ? String(tmdbId) : null,
      media_type:     mediaType || null,
    });

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
    await sbDelete("watch_history", { id: `eq.${req.params.id}`, user_id: `eq.${userId}` });
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
    await sbDelete("watch_history", { user_id: `eq.${userId}` });
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
    const rows = await sbSelect("favorites",
      { user_id: `eq.${userId}`, order: "added_at.desc" },
    );
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
    const rows = await sbSelect("favorites", { user_id: `eq.${userId}` });
    return res.json({ ids: rows.map((r: any) => r.anime_id) });
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

    const existing = await sbSelect("favorites", {
      user_id:  `eq.${userId}`,
      anime_id: `eq.${Number(animeId)}`,
    }, { limit: 1 });

    if (existing.length > 0) {
      return res.status(201).json({ entry: existing[0], already: true });
    }

    const row = await sbInsert("favorites", {
      user_id:    userId,
      anime_id:   Number(animeId),
      anime_title: animeTitle || null,
      anime_cover: animeCover || null,
      anime_type:  animeType || "anime",
      tmdb_id:     tmdbId ? String(tmdbId) : null,
      media_type:  mediaType || null,
    });

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
    await sbDelete("favorites", {
      user_id:  `eq.${userId}`,
      anime_id: `eq.${Number(req.params.animeId)}`,
    });
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
    const rows = await sbSelect("watch_progress",
      { user_id: `eq.${userId}`, order: "updated_at.desc" },
    );
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

    const rows = await sbSelect("watch_progress", {
      user_id:        `eq.${userId}`,
      anime_id:       `eq.${animeId}`,
      episode_number: `eq.${ep}`,
      season_number:  `eq.${season}`,
    }, { limit: 1 });

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

    const ep     = Number(episodeNumber) || 1;
    const season = Number(seasonNumber) || 1;

    const row = await sbUpsert("watch_progress", {
      user_id:          userId,
      anime_id:         Number(animeId),
      anime_type:       animeType || "anime",
      episode_number:   ep,
      season_number:    season,
      tmdb_id:          tmdbId ? String(tmdbId) : null,
      progress_seconds: Number(progressSeconds),
      duration_seconds: Number(durationSeconds) || 0,
      updated_at:       new Date().toISOString(),
    }, "user_id,anime_id,episode_number,season_number");

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
    const rows = await sbSelect("watch_progress",
      { user_id: `eq.${userId}`, order: "updated_at.desc" },
      { limit: 20 },
    );

    const active = rows.filter((r: any) =>
      (r.progress_seconds || 0) > 30 &&
      (r.duration_seconds === 0 || (r.progress_seconds || 0) < ((r.duration_seconds ?? 0) * 0.95))
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
      sbSelect("watch_history",  { user_id: `eq.${userId}` }),
      sbSelect("favorites",      { user_id: `eq.${userId}` }),
      sbSelect("watch_progress", { user_id: `eq.${userId}` }),
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
