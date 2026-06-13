import { Router, type Request, type Response } from "express";
import { db, comments, commentLikes } from "@workspace/db";
import { eq, and, desc, sql } from "drizzle-orm";

const router = Router();

function getUserId(req: Request): string | null {
  return (req.session as any)?.userId || (req.session as any)?.emailUserId || null;
}

/* ─────────────────────────────────────────
   GET /api/comments?animeId=&ep=&limit=&offset=
   Public — no auth required for reading
───────────────────────────────────────── */
router.get("/comments", async (req: Request, res: Response) => {
  try {
    const animeId = req.query.animeId ? Number(req.query.animeId) : null;
    const ep = req.query.ep !== undefined ? Number(req.query.ep) : null;
    const limit = Math.min(Number(req.query.limit) || 50, 100);
    const offset = Number(req.query.offset) || 0;
    const userId = getUserId(req);

    if (!animeId) return res.status(400).json({ error: "animeId مطلوب" });

    const rows = await db
      .select()
      .from(comments)
      .where(
        ep !== null
          ? and(eq(comments.animeId, animeId), eq(comments.episodeNumber, ep))
          : and(eq(comments.animeId, animeId), sql`${comments.episodeNumber} IS NULL`)
      )
      .orderBy(desc(comments.createdAt))
      .limit(limit)
      .offset(offset);

    let likedIds = new Set<string>();
    if (userId && rows.length > 0) {
      const ids = rows.map(r => r.id);
      const liked = await db
        .select()
        .from(commentLikes)
        .where(and(eq(commentLikes.userId, userId), sql`${commentLikes.commentId} = ANY(${sql.raw(`ARRAY['${ids.join("','")}']::uuid[]`)})`));
      likedIds = new Set(liked.map(l => l.commentId));
    }

    const result = rows.map(r => ({ ...r, liked: likedIds.has(r.id) }));

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
    const { animeId, episodeNumber, text: txt, username, avatarUrl, animeType, tmdbId } = req.body;
    if (!animeId || !txt?.trim()) return res.status(400).json({ error: "animeId والنص مطلوبان" });
    if (txt.trim().length > 1000) return res.status(400).json({ error: "التعليق طويل جداً (الحد 1000 حرف)" });

    const [row] = await db
      .insert(comments)
      .values({
        userId,
        username: username || "مستخدم",
        avatarUrl: avatarUrl || null,
        animeId: Number(animeId),
        episodeNumber: episodeNumber !== undefined ? Number(episodeNumber) : null,
        animeType: animeType || "anime",
        tmdbId: tmdbId ? String(tmdbId) : null,
        text: txt.trim(),
      })
      .returning();

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
    await db
      .delete(comments)
      .where(and(eq(comments.id, req.params.id), eq(comments.userId, userId)));
    return res.json({ ok: true });
  } catch (err) {
    console.error("[comments] DELETE:", err);
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

/* ─────────────────────────────────────────
   POST /api/comments/:id/like  — toggle like
───────────────────────────────────────── */
router.post("/comments/:id/like", async (req: Request, res: Response) => {
  const userId = getUserId(req);
  if (!userId) return res.status(401).json({ error: "يجب تسجيل الدخول" });

  try {
    const commentId = req.params.id;

    const existing = await db
      .select()
      .from(commentLikes)
      .where(and(eq(commentLikes.commentId, commentId), eq(commentLikes.userId, userId)))
      .limit(1);

    if (existing.length > 0) {
      await db.delete(commentLikes)
        .where(and(eq(commentLikes.commentId, commentId), eq(commentLikes.userId, userId)));
      await db.update(comments)
        .set({ likes: sql`GREATEST(0, ${comments.likes} - 1)` })
        .where(eq(comments.id, commentId));
      const [updated] = await db.select().from(comments).where(eq(comments.id, commentId));
      return res.json({ liked: false, likes: updated?.likes ?? 0 });
    } else {
      await db.insert(commentLikes).values({ commentId, userId });
      await db.update(comments)
        .set({ likes: sql`${comments.likes} + 1` })
        .where(eq(comments.id, commentId));
      const [updated] = await db.select().from(comments).where(eq(comments.id, commentId));
      return res.json({ liked: true, likes: updated?.likes ?? 0 });
    }
  } catch (err) {
    console.error("[comments] like:", err);
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

/* ─────────────────────────────────────────
   GET /api/comments/count?animeId=&ep=
   Returns counts per episode for an anime
───────────────────────────────────────── */
router.get("/comments/count", async (req: Request, res: Response) => {
  try {
    const animeId = req.query.animeId ? Number(req.query.animeId) : null;
    if (!animeId) return res.status(400).json({ error: "animeId مطلوب" });

    const rows = await db
      .select({
        episodeNumber: comments.episodeNumber,
        count: sql<number>`cast(count(*) as int)`,
      })
      .from(comments)
      .where(eq(comments.animeId, animeId))
      .groupBy(comments.episodeNumber);

    const counts: Record<string, number> = {};
    for (const r of rows) {
      counts[r.episodeNumber === null ? "anime" : String(r.episodeNumber)] = r.count;
    }
    return res.json({ counts });
  } catch (err) {
    console.error("[comments] count:", err);
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

export default router;
