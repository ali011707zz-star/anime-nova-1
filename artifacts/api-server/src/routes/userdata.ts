import { Router, type Request, type Response } from "express";
import { sbSelect, sbInsert, sbUpsert, sbDelete } from "../lib/supabaseClient.js";
import { getMobileUserId } from "../lib/security.js";

const router = Router();

function getUserId(req: Request): string | null {
  // A mobile user token is the account identity. Prefer it over a stale
  // session cookie so a reused WebView cannot write to the previous account.
  const mobileUserId = getMobileUserId(req);
  if (mobileUserId) return mobileUserId;
  return (
    (req.session as any)?.userId ||
    (req.session as any)?.emailUserId ||
    null
  );
}

/* ═══════════════════════════════════════════
   WATCH HISTORY
═══════════════════════════════════════════ */

const NOVA_META_DELIMITER = "#__nova_meta__=";

interface PackedHistoryMeta {
  animeType?: string;
  position?: number;
  duration?: number;
  totalEps?: number;
  titleAr?: string;
  english?: string;
}

function packHistoryCover(
  rawCover: string | null | undefined,
  fullAnimeType: string,
  extra: Omit<PackedHistoryMeta, "animeType">,
): string | null {
  const cleanCover = String(rawCover || "").split(NOVA_META_DELIMITER)[0] || "";
  const meta: PackedHistoryMeta = {};
  if (fullAnimeType && fullAnimeType !== "anime") meta.animeType = fullAnimeType;
  if (typeof extra.position === "number" && extra.position > 0) meta.position = Math.floor(extra.position);
  if (typeof extra.duration === "number" && extra.duration > 0) meta.duration = Math.floor(extra.duration);
  if (typeof extra.totalEps === "number" && extra.totalEps > 0) meta.totalEps = extra.totalEps;
  if (typeof extra.titleAr === "string" && extra.titleAr.trim()) meta.titleAr = extra.titleAr.trim();
  if (typeof extra.english === "string" && extra.english.trim()) meta.english = extra.english.trim();
  if (Object.keys(meta).length === 0) return cleanCover || null;
  return `${cleanCover}${NOVA_META_DELIMITER}${encodeURIComponent(JSON.stringify(meta))}`;
}

function unpackHistoryRow(row: any): any {
  if (!row || typeof row !== "object") return row;
  const rawCover = typeof row.anime_cover === "string" ? row.anime_cover : "";
  let cleanCover = rawCover;
  let meta: PackedHistoryMeta = {};
  const idx = rawCover.indexOf(NOVA_META_DELIMITER);
  if (idx !== -1) {
    cleanCover = rawCover.slice(0, idx);
    try {
      meta = JSON.parse(decodeURIComponent(rawCover.slice(idx + NOVA_META_DELIMITER.length))) || {};
    } catch {}
  }
  const resolvedType = meta.animeType || row.anime_type || "anime";
  const resolvedTitle = row.anime_title || "";
  return {
    ...row,
    anime_cover: cleanCover || null,
    anime_type: resolvedType,
    position: meta.position ?? row.position ?? undefined,
    duration: meta.duration ?? row.duration ?? undefined,
    total_eps: meta.totalEps ?? row.total_eps ?? undefined,
    title_ar: meta.titleAr ?? row.title_ar ?? undefined,
    english_title: meta.english ?? row.english_title ?? resolvedTitle,
    // CamelCase aliases for web db.ts compatibility
    animeId: row.anime_id,
    animeTitle: resolvedTitle,
    animeCover: cleanCover || null,
    animeType: resolvedType,
    episodeNumber: row.episode_number,
    seasonNumber: row.season_number,
    watchedAt: row.watched_at,
    totalEps: meta.totalEps ?? row.total_eps ?? undefined,
    titleAr: meta.titleAr ?? row.title_ar ?? undefined,
    english: meta.english ?? row.english_title ?? resolvedTitle,
  };
}

router.get("/user/history", async (req: Request, res: Response) => {
  const userId = getUserId(req);
  if (!userId) return res.status(401).json({ error: "غير مصرّح" });
  try {
    const limit  = Math.min(Number(req.query.limit) || 60, 100);
    const offset = Number(req.query.offset) || 0;
    const rows = await sbSelect("watch_history",
      { user_id: `eq.${userId}`, order: "watched_at.desc" },
      { limit: limit + offset, strict: true },
    );
    const unpacked = rows.map(unpackHistoryRow);
    // Deduplicate by (anime_id, episode_number, season_number) keeping the newest first
    const seen = new Set<string>();
    const deduped = unpacked.filter((r: any) => {
      const key = `${r.anime_id}:${r.episode_number}:${r.season_number || 1}`;
      if (seen.has(key)) return false;
      seen.add(key);
      return true;
    });
    return res.json({ history: deduped.slice(offset, offset + limit) });
  } catch (err) {
    console.error("[userdata] history GET:", err);
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

router.post("/user/history", async (req: Request, res: Response) => {
  const userId = getUserId(req);
  if (!userId) return res.status(401).json({ error: "غير مصرّح" });
  try {
    const {
      animeId, animeTitle, animeCover, animeType, episodeNumber, seasonNumber,
      tmdbId, mediaType, position, duration, totalEps, titleAr, english,
    } = req.body;
    if (!animeId || !episodeNumber) return res.status(400).json({ error: "animeId و episodeNumber مطلوبان" });
    const season = Number(seasonNumber) || 1;
    const fullAnimeType = String(animeType || "anime").trim() || "anime";
    // Supabase watch_history.anime_type is VARCHAR(16); keep column <= 16 chars
    // and store full composite type + progress metadata in packed anime_cover.
    const shortAnimeType = fullAnimeType.split(":")[0].slice(0, 16) || "anime";
    const packedCover = packHistoryCover(animeCover, fullAnimeType, {
      position: Number(position) || undefined,
      duration: Number(duration) || undefined,
      totalEps: Number(totalEps) || undefined,
      titleAr: typeof titleAr === "string" ? titleAr : undefined,
      english: typeof english === "string" ? english : undefined,
    });
    const safeMediaType = mediaType ? String(mediaType).slice(0, 8) : null;

    // أدرج السجل الجديد أولاً قبل حذف القديم لضمان عدم ضياع السجل عند أي خطأ شبكي
    const row = await sbInsert("watch_history", {
      user_id:        userId,
      anime_id:       Number(animeId),
      anime_title:    animeTitle || null,
      anime_cover:    packedCover,
      anime_type:     shortAnimeType,
      episode_number: Number(episodeNumber),
      season_number:  season,
      tmdb_id:        tmdbId ? String(tmdbId).slice(0, 32) : null,
      ...(safeMediaType ? { media_type: safeMediaType } : {}),
    });
    if (!row) {
      return res.status(500).json({ error: "تعذر حفظ سجل المشاهدة" });
    }
    if (row.id) {
      await sbDelete("watch_history", {
        user_id:        `eq.${userId}`,
        anime_id:       `eq.${Number(animeId)}`,
        episode_number: `eq.${Number(episodeNumber)}`,
        season_number:  `eq.${season}`,
        id:             `neq.${row.id}`,
      }).catch(() => {});
    }
    return res.status(201).json({ entry: unpackHistoryRow(row) });
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

// Mobile history is displayed and removed by anime, not by the database row id.
// Keep this separate from /user/history/:id so the UUID row-delete endpoint
// remains backwards compatible with existing clients.
router.delete("/user/history/anime/:animeId", async (req: Request, res: Response) => {
  const userId = getUserId(req);
  if (!userId) return res.status(401).json({ error: "غير مصرّح" });

  try {
    await sbDelete("watch_history", {
      user_id: `eq.${userId}`,
      anime_id: `eq.${Number(req.params.animeId)}`,
    });
    return res.json({ ok: true });
  } catch (err) {
    console.error("[userdata] history DELETE anime:", err);
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
      { strict: true },
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
    const rows = await sbSelect("favorites", { user_id: `eq.${userId}` }, { strict: true });
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
      anime_type:       String(animeType || "anime").split(":")[0].slice(0, 16) || "anime",
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
