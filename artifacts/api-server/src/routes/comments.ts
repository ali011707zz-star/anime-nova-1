import { Router, type Request, type Response } from "express";
import { sbGet, sbInsert, sbInsertIgnore, sbUpdate, sbDelete } from "../lib/sb.js";

const router = Router();

function getUserId(req: Request): string | null {
  return (req.session as any)?.userId || (req.session as any)?.emailUserId || null;
}

/* ─────────────────────────────────────────
   GET /api/comments?animeId=&ep=&limit=&offset=
   GET /api/comments?tmdbId=&ep=&limit=&offset=
───────────────────────────────────────── */
router.get("/comments", async (req: Request, res: Response) => {
  try {
    const animeId = req.query.animeId ? Number(req.query.animeId) : null;
    const tmdbId  = req.query.tmdbId  ? String(req.query.tmdbId) : null;
    const ep      = req.query.ep !== undefined ? Number(req.query.ep) : null;
    const limit   = Math.min(Number(req.query.limit) || 50, 100);
    const offset  = Number(req.query.offset) || 0;
    const userId  = getUserId(req);

    if (!animeId && !tmdbId) return res.status(400).json({ error: "animeId أو tmdbId مطلوب" });

    const params: Record<string, string> = {
      order: "created_at.desc",
      limit: String(limit),
      offset: String(offset),
    };
    if (animeId !== null) params["anime_id"] = `eq.${animeId}`;
    if (tmdbId !== null)  params["tmdb_id"]  = `eq.${tmdbId}`;
    if (ep !== null)      params["episode_number"] = `eq.${ep}`;
    else                  params["episode_number"] = "is.null";

    const rows = await sbGet("comments", params);

    let likedIds = new Set<string>();
    if (userId && rows.length > 0) {
      const ids = rows.map((r: any) => r.id);
      const likeRows = await sbGet("comment_likes", {
        "user_id": `eq.${userId}`,
        "comment_id": `in.(${ids.join(",")})`,
        "select": "comment_id",
      });
      likedIds = new Set(likeRows.map((l: any) => l.comment_id));
    }

    const result = rows.map((r: any) => ({ ...r, liked: likedIds.has(r.id) }));
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
    const { animeId, tmdbId, episodeNumber, text: txt, username, avatarUrl, animeType } = req.body;
    if ((!animeId && !tmdbId) || !txt?.trim())
      return res.status(400).json({ error: "animeId أو tmdbId + النص مطلوبان" });
    if (txt.trim().length > 1000)
      return res.status(400).json({ error: "التعليق طويل جداً (الحد 1000 حرف)" });

    const [row] = await sbInsert("comments", {
      user_id:        userId,
      username:       username || "مستخدم",
      avatar_url:     avatarUrl || null,
      anime_id:       animeId ? Number(animeId) : null,
      tmdb_id:        tmdbId  ? String(tmdbId)  : null,
      episode_number: episodeNumber !== undefined && episodeNumber !== null ? Number(episodeNumber) : null,
      anime_type:     animeType || "anime",
      text:           txt.trim(),
      likes:          0,
    });

    return res.status(201).json({ comment: { ...row, liked: false } });
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

    const existing = await sbGet("comment_likes", {
      comment_id: `eq.${commentId}`,
      user_id:    `eq.${userId}`,
    });

    let newLikes: number;
    let liked: boolean;

    if (existing.length > 0) {
      // unlike
      await sbDelete("comment_likes", {
        comment_id: `eq.${commentId}`,
        user_id:    `eq.${userId}`,
      });
      // count remaining likes
      const remaining = await sbGet("comment_likes", { comment_id: `eq.${commentId}` });
      newLikes = Math.max(0, remaining.length);
      const [updated] = await sbUpdate("comments", { id: `eq.${commentId}` }, { likes: newLikes });
      liked = false;
      newLikes = updated?.likes ?? newLikes;
    } else {
      // like
      await sbInsertIgnore("comment_likes", { comment_id: commentId, user_id: userId });
      const all = await sbGet("comment_likes", { comment_id: `eq.${commentId}` });
      newLikes = all.length;
      const [updated] = await sbUpdate("comments", { id: `eq.${commentId}` }, { likes: newLikes });
      liked = true;
      newLikes = updated?.likes ?? newLikes;
    }

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
    const tmdbId  = req.query.tmdbId  ? String(req.query.tmdbId) : null;
    if (!animeId && !tmdbId) return res.status(400).json({ error: "animeId أو tmdbId مطلوب" });

    const params: Record<string, string> = { select: "episode_number" };
    if (animeId !== null) params["anime_id"] = `eq.${animeId}`;
    else                  params["tmdb_id"]  = `eq.${tmdbId!}`;

    const rows = await sbGet("comments", params);
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
