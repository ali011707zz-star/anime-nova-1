import { Router, type Request, type Response } from "express";
import { db } from "../lib/db.js";
import { comments, commentLikes } from "@workspace/db";
import { eq, and, inArray, asc, isNull, sql } from "drizzle-orm";

const router = Router();

function getUserId(req: Request): string | null {
  return (req.session as any)?.userId || (req.session as any)?.emailUserId || null;
}

function mapRow(r: any, liked: boolean) {
  return {
    id:              r.id,
    userId:          r.userId   || r.user_id,
    username:        r.username,
    avatarUrl:       r.avatarUrl  || r.avatar_url  || null,
    animeId:         r.animeId   ?? r.anime_id    ?? null,
    tmdbId:          r.tmdbId    ?? r.tmdb_id     ?? null,
    animeType:       r.animeType  || r.anime_type  || "anime",
    episodeNumber:   r.episodeNumber ?? r.episode_number ?? null,
    text:            r.text,
    likes:           r.likes || 0,
    createdAt:       r.createdAt || r.created_at,
    parentId:        r.parentId   || r.parent_id   || null,
    replyToUsername: r.replyToUsername || r.reply_to_username || null,
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
    const tmdbId  = req.query.tmdbId  ? String(req.query.tmdbId) : null;
    const ep      = req.query.ep !== undefined ? Number(req.query.ep) : null;
    const limit   = Math.min(Number(req.query.limit) || 100, 200);
    const offset  = Number(req.query.offset) || 0;
    const userId  = getUserId(req);

    if (!animeId && !tmdbId) return res.status(400).json({ error: "animeId أو tmdbId مطلوب" });

    const conditions: any[] = [];
    if (animeId !== null) conditions.push(eq(comments.animeId, animeId));
    if (tmdbId  !== null) conditions.push(eq(comments.tmdbId, tmdbId));
    if (ep !== null)      conditions.push(eq(comments.episodeNumber, ep));
    else                  conditions.push(isNull(comments.episodeNumber));

    const rows = await db.select().from(comments)
      .where(and(...conditions))
      .orderBy(asc(comments.createdAt))
      .limit(limit)
      .offset(offset);

    let likedIds = new Set<string>();
    if (userId && rows.length > 0) {
      const ids = rows.map((r) => r.id);
      const likeRows = await db.select({ commentId: commentLikes.commentId })
        .from(commentLikes)
        .where(and(eq(commentLikes.userId, userId), inArray(commentLikes.commentId, ids)));
      likedIds = new Set(likeRows.map((l) => l.commentId));
    }

    const result = rows.map((r) => mapRow(r, likedIds.has(r.id)));
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

    const insertData: any = {
      userId,
      username:       username || "مستخدم",
      avatarUrl:      avatarUrl || null,
      animeId:        animeId ? Number(animeId) : null,
      tmdbId:         tmdbId  ? String(tmdbId)  : null,
      episodeNumber:  episodeNumber !== undefined && episodeNumber !== null ? Number(episodeNumber) : null,
      animeType:      animeType || "anime",
      text:           txt.trim(),
      likes:          0,
    };

    if (parentId) {
      insertData.parentId = parentId;
      insertData.replyToUsername = replyToUsername || null;
    }

    const [row] = await db.insert(comments).values(insertData).returning();
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
    await db.delete(comments).where(
      and(eq(comments.id, req.params.id), eq(comments.userId, userId))
    );
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

    const existing = await db.select().from(commentLikes).where(
      and(eq(commentLikes.commentId, commentId), eq(commentLikes.userId, userId))
    );

    let newLikes: number;
    let liked: boolean;

    if (existing.length > 0) {
      await db.delete(commentLikes).where(
        and(eq(commentLikes.commentId, commentId), eq(commentLikes.userId, userId))
      );
      const remaining = await db.select().from(commentLikes).where(eq(commentLikes.commentId, commentId));
      newLikes = Math.max(0, remaining.length);
      const [updated] = await db.update(comments).set({ likes: newLikes }).where(eq(comments.id, commentId)).returning();
      liked = false;
      newLikes = updated?.likes ?? newLikes;
    } else {
      await db.insert(commentLikes).values({ commentId, userId }).onConflictDoNothing();
      const all = await db.select().from(commentLikes).where(eq(commentLikes.commentId, commentId));
      newLikes = all.length;
      const [updated] = await db.update(comments).set({ likes: newLikes }).where(eq(comments.id, commentId)).returning();
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

    const condition = animeId !== null
      ? eq(comments.animeId, animeId)
      : eq(comments.tmdbId, tmdbId!);

    const rows = await db.select({ episodeNumber: comments.episodeNumber }).from(comments).where(condition);
    const counts: Record<string, number> = {};
    for (const row of rows) {
      const key = row.episodeNumber === null ? "anime" : String(row.episodeNumber);
      counts[key] = (counts[key] || 0) + 1;
    }
    return res.json({ counts });
  } catch (err) {
    console.error("[comments] count:", err);
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

export default router;
