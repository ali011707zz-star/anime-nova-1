import { Router, type Request, type Response } from "express";
import { sbSelect, sbInsert, sbDelete, sbPatch } from "../lib/supabaseClient.js";

const router = Router();

function getUserId(req: Request): string | null {
  return (req.session as any)?.userId || (req.session as any)?.emailUserId || null;
}

function mapRow(r: any, liked: boolean) {
  return {
    id:              r.id,
    userId:          r.user_id,
    username:        r.username,
    avatarUrl:       r.avatar_url   || null,
    animeId:         r.anime_id     ?? null,
    tmdbId:          r.tmdb_id      ?? null,
    animeType:       r.anime_type   || "anime",
    episodeNumber:   r.episode_number ?? null,
    text:            r.text,
    likes:           r.likes || 0,
    createdAt:       r.created_at,
    parentId:        r.parent_id    || null,
    replyToUsername: r.reply_to_username || null,
    liked,
  };
}

/* ─────────────────────────────────────────
   GET /api/comments?animeId=&ep=&limit=&offset=
   GET /api/comments?tmdbId=&ep=&limit=&offset=
───────────────────────────────────────── */
router.get("/comments", async (req: Request, res: Response) => {
  try {
    const animeId = req.query.animeId ? Number(req.query.animeId) : null;
    const tmdbId  = req.query.tmdbId  ? String(req.query.tmdbId)  : null;
    const ep      = req.query.ep !== undefined ? Number(req.query.ep) : null;
    const limit   = Math.min(Number(req.query.limit) || 100, 200);
    const offset  = Number(req.query.offset) || 0;
    const userId  = getUserId(req);

    if (!animeId && !tmdbId) return res.status(400).json({ error: "animeId أو tmdbId مطلوب" });

    const filter: Record<string, string> = { order: "created_at.asc" };
    if (animeId !== null)     filter["anime_id"]       = `eq.${animeId}`;
    if (tmdbId  !== null)     filter["tmdb_id"]        = `eq.${tmdbId}`;
    if (ep !== null)          filter["episode_number"] = `eq.${ep}`;
    else                      filter["episode_number"] = "is.null";

    const rows = await sbSelect("comments", filter, { limit: limit + offset });
    const page = rows.slice(offset, offset + limit);

    let likedIds = new Set<string>();
    if (userId && page.length > 0) {
      const ids = page.map((r) => r.id).join(",");
      const likeRows = await sbSelect("comment_likes", {
        user_id:    `eq.${userId}`,
        comment_id: `in.(${ids})`,
      });
      likedIds = new Set(likeRows.map((l: any) => l.comment_id));
    }

    const result = page.map((r) => mapRow(r, likedIds.has(r.id)));
    return res.json({ comments: result, total: result.length });
  } catch (err) {
    console.error("[comments] GET:", err);
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

/* ─────────────────────────────────────────
   POST /api/comments
───────────────────────────────────────── */
router.post("/comments", async (req: Request, res: Response) => {
  const userId = getUserId(req);
  if (!userId) return res.status(401).json({ error: "يجب تسجيل الدخول للتعليق" });

  try {
    const {
      animeId, tmdbId, episodeNumber, text: txt,
      username, avatarUrl, animeType,
      parentId, replyToUsername,
    } = req.body;

    if ((!animeId && !tmdbId) || !txt?.trim())
      return res.status(400).json({ error: "animeId أو tmdbId + النص مطلوبان" });
    if (txt.trim().length > 1000)
      return res.status(400).json({ error: "التعليق طويل جداً (الحد 1000 حرف)" });

    const row = await sbInsert("comments", {
      user_id:         userId,
      username:        username || "مستخدم",
      avatar_url:      avatarUrl || null,
      anime_id:        animeId ? Number(animeId) : null,
      tmdb_id:         tmdbId  ? String(tmdbId)  : null,
      episode_number:  episodeNumber !== undefined && episodeNumber !== null ? Number(episodeNumber) : null,
      anime_type:      animeType || "anime",
      text:            txt.trim(),
      likes:           0,
      parent_id:        parentId || null,
      reply_to_username: replyToUsername || null,
    });

    return res.status(201).json({ comment: mapRow(row, false) });
  } catch (err) {
    console.error("[comments] POST:", err);
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

/* ─────────────────────────────────────────
   DELETE /api/comments/:id
───────────────────────────────────────── */
router.delete("/comments/:id", async (req: Request, res: Response) => {
  const userId = getUserId(req);
  if (!userId) return res.status(401).json({ error: "غير مصرّح" });

  try {
    await sbDelete("comments", { id: `eq.${req.params.id}`, user_id: `eq.${userId}` });
    return res.json({ ok: true });
  } catch (err) {
    console.error("[comments] DELETE:", err);
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

/* ─────────────────────────────────────────
   POST /api/comments/:id/like — toggle
───────────────────────────────────────── */
router.post("/comments/:id/like", async (req: Request, res: Response) => {
  const userId = getUserId(req);
  if (!userId) return res.status(401).json({ error: "يجب تسجيل الدخول" });

  try {
    const commentId = req.params.id;

    const existing = await sbSelect("comment_likes", {
      comment_id: `eq.${commentId}`,
      user_id:    `eq.${userId}`,
    }, { limit: 1 });

    let liked: boolean;

    if (existing.length > 0) {
      await sbDelete("comment_likes", { comment_id: `eq.${commentId}`, user_id: `eq.${userId}` });
      liked = false;
    } else {
      await sbInsert("comment_likes", { comment_id: commentId, user_id: userId });
      liked = true;
    }

    // احسب عدد الإعجابات الجديد
    const allLikes = await sbSelect("comment_likes", { comment_id: `eq.${commentId}` });
    const newLikes = allLikes.length;
    await sbPatch("comments", { id: `eq.${commentId}` }, { likes: newLikes });

    return res.json({ liked, likes: newLikes });
  } catch (err) {
    console.error("[comments] like:", err);
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

/* ─────────────────────────────────────────
   GET /api/comments/count?animeId=&tmdbId=
───────────────────────────────────────── */
router.get("/comments/count", async (req: Request, res: Response) => {
  try {
    const animeId = req.query.animeId ? Number(req.query.animeId) : null;
    const tmdbId  = req.query.tmdbId  ? String(req.query.tmdbId)  : null;
    if (!animeId && !tmdbId) return res.status(400).json({ error: "animeId أو tmdbId مطلوب" });

    const filter: Record<string, string> = {};
    if (animeId !== null) filter["anime_id"] = `eq.${animeId}`;
    else                  filter["tmdb_id"]  = `eq.${tmdbId!}`;

    const rows = await sbSelect("comments", filter);
    const counts: Record<string, number> = {};
    for (const row of rows) {
      const key = row.episode_number === null ? "anime" : String(row.episode_number);
      counts[key] = (counts[key] || 0) + 1;
    }
    return res.json({ counts });
  } catch (err) {
    console.error("[comments] count:", err);
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

export default router;
