/**
 * comments.ts — API التعليقات عبر Supabase REST مباشرة
 * يستخدم Supabase كـ primary store (لا Drizzle / لا قاعدة محلية)
 */
import { Router, type Request, type Response } from "express";

const router = Router();

const SUPA_URL = process.env["SUPABASE_URL"]              ?? "";
const SUPA_KEY = process.env["SUPABASE_SERVICE_ROLE_KEY"] ?? "";
const USE_SUPA = !!(SUPA_URL && SUPA_KEY);

const SH: Record<string, string> = {
  "apikey":         SUPA_KEY,
  "Authorization":  `Bearer ${SUPA_KEY}`,
  "Content-Type":   "application/json",
};

function getUserId(req: Request): string | null {
  return (req.session as any)?.userId || (req.session as any)?.emailUserId || null;
}

async function supaFetch(path: string, init: RequestInit = {}): Promise<Response> {
  return fetch(`${SUPA_URL}/rest/v1${path}`, {
    ...init,
    headers: { ...SH, ...(init.headers as Record<string, string> || {}) },
    signal: AbortSignal.timeout(8000),
  });
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

    if (!USE_SUPA) return res.json({ comments: [], total: 0 });

    // بناء filter
    let filter = animeId ? `anime_id=eq.${animeId}` : `tmdb_id=eq.${tmdbId}`;
    if (ep !== null) {
      filter += `&episode_number=eq.${ep}`;
    } else {
      filter += `&episode_number=is.null`;
    }

    const r = await supaFetch(
      `/comments?${filter}&order=created_at.desc&limit=${limit}&offset=${offset}&select=*`
    );
    if (!r.ok) {
      const err = await r.text();
      console.error("[comments] GET Supabase error:", r.status, err);
      return res.json({ comments: [], total: 0 });
    }
    const rows: any[] = await r.json();

    // جلب الإعجابات إذا كان المستخدم مسجل
    let likedIds = new Set<string>();
    if (userId && rows.length > 0) {
      const ids = rows.map(r => r.id);
      const likeR = await supaFetch(
        `/comment_likes?user_id=eq.${encodeURIComponent(userId)}&comment_id=in.(${ids.join(",")})&select=comment_id`
      );
      if (likeR.ok) {
        const likes: any[] = await likeR.json();
        likedIds = new Set(likes.map(l => l.comment_id));
      }
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
  if (!USE_SUPA) return res.status(503).json({ error: "Supabase غير متصل" });

  try {
    const { animeId, tmdbId, episodeNumber, text: txt, username, avatarUrl, animeType } = req.body;
    if ((!animeId && !tmdbId) || !txt?.trim())
      return res.status(400).json({ error: "animeId أو tmdbId + النص مطلوبان" });
    if (txt.trim().length > 1000)
      return res.status(400).json({ error: "التعليق طويل جداً (الحد 1000 حرف)" });

    const payload: Record<string, any> = {
      user_id:    userId,
      username:   username || "مستخدم",
      avatar_url: avatarUrl || null,
      anime_type: animeType || "anime",
      text:       txt.trim(),
    };
    if (animeId)          payload.anime_id        = Number(animeId);
    if (tmdbId)           payload.tmdb_id         = String(tmdbId);
    if (episodeNumber !== undefined && episodeNumber !== null)
                          payload.episode_number  = Number(episodeNumber);

    const r = await supaFetch("/comments?select=*", {
      method: "POST",
      headers: { "Prefer": "return=representation" },
      body: JSON.stringify(payload),
    });

    if (!r.ok) {
      const err = await r.text();
      console.error("[comments] POST Supabase error:", r.status, err);
      return res.status(500).json({ error: "فشل حفظ التعليق" });
    }
    const rows: any[] = await r.json();
    return res.status(201).json({ comment: { ...rows[0], liked: false } });

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
  if (!USE_SUPA) return res.status(503).json({ error: "Supabase غير متصل" });

  try {
    // يحذف فقط إذا كان المستخدم هو صاحب التعليق
    const r = await supaFetch(
      `/comments?id=eq.${req.params.id}&user_id=eq.${encodeURIComponent(userId)}`,
      { method: "DELETE" }
    );
    if (!r.ok) {
      const err = await r.text();
      console.error("[comments] DELETE Supabase error:", r.status, err);
      return res.status(500).json({ error: "فشل الحذف" });
    }
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
  if (!USE_SUPA) return res.status(503).json({ error: "Supabase غير متصل" });

  try {
    const commentId = req.params.id;

    // تحقق من وجود إعجاب
    const checkR = await supaFetch(
      `/comment_likes?comment_id=eq.${commentId}&user_id=eq.${encodeURIComponent(userId)}&limit=1`
    );
    const existing: any[] = checkR.ok ? await checkR.json() : [];

    if (existing.length > 0) {
      // إزالة الإعجاب
      await supaFetch(
        `/comment_likes?comment_id=eq.${commentId}&user_id=eq.${encodeURIComponent(userId)}`,
        { method: "DELETE" }
      );
      // تحديث العداد
      const updR = await supaFetch(
        `/comments?id=eq.${commentId}`,
        {
          method: "PATCH",
          headers: { "Prefer": "return=representation" },
          body: JSON.stringify({ likes: { __sql: "GREATEST(0, likes - 1)" } }),
        }
      );
      // fallback: قرأ القيمة الحالية وأنقصها
      const cur = await supaFetch(`/comments?id=eq.${commentId}&select=likes`);
      const curData: any[] = cur.ok ? await cur.json() : [];
      const currentLikes = curData[0]?.likes ?? 0;
      await supaFetch(`/comments?id=eq.${commentId}`, {
        method: "PATCH",
        headers: { "Prefer": "return=minimal" },
        body: JSON.stringify({ likes: Math.max(0, currentLikes - 1) }),
      });
      const newLikes = Math.max(0, currentLikes - 1);
      return res.json({ liked: false, likes: newLikes });
    } else {
      // إضافة إعجاب
      await supaFetch("/comment_likes", {
        method: "POST",
        headers: { "Prefer": "return=minimal" },
        body: JSON.stringify({ comment_id: commentId, user_id: userId }),
      });
      const cur = await supaFetch(`/comments?id=eq.${commentId}&select=likes`);
      const curData: any[] = cur.ok ? await cur.json() : [];
      const currentLikes = curData[0]?.likes ?? 0;
      await supaFetch(`/comments?id=eq.${commentId}`, {
        method: "PATCH",
        headers: { "Prefer": "return=minimal" },
        body: JSON.stringify({ likes: currentLikes + 1 }),
      });
      return res.json({ liked: true, likes: currentLikes + 1 });
    }
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
    if (!USE_SUPA) return res.json({ counts: {} });

    const filter = animeId ? `anime_id=eq.${animeId}` : `tmdb_id=eq.${tmdbId}`;
    const r = await supaFetch(`/comments?${filter}&select=episode_number`);
    if (!r.ok) return res.json({ counts: {} });

    const rows: any[] = await r.json();
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
