import { Router, type Request, type Response } from "express";
import { sbSelect, sbInsert, sbDelete, sbPatch } from "../lib/supabaseClient.js";
import { getMobileUserId } from "../lib/security.js";
import { sendMobilePush } from "./push.js";

const router = Router();

async function getUserId(req: Request): Promise<string | null> {
  const sessionId = (req.session as any)?.userId || (req.session as any)?.emailUserId || null;
  if (sessionId) return sessionId;

  const mobileUserId = getMobileUserId(req);
  if (mobileUserId) {
    try {
      const rows = await sbSelect("users", { id: `eq.${mobileUserId}` }, { limit: 1 });
      if (rows.length > 0) return mobileUserId;
    } catch { /* ignore */ }
  }
  return null;
}

function mapRow(r: any, liked: boolean, profile?: any) {
  return {
    id:              r.id,
    userId:          r.user_id,
    username:        r.username,
    displayName:     profile?.display_name || null,
    userHandle:      r.user_handle  || null,
    avatarUrl:       profile?.profile_image_custom || r.avatar_url || null,
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

export async function notifyCommentTargets(input: {
  comment: any;
  actorUserId: string;
  actorName: string;
  allowSelfNotify?: boolean;
  directTargetUserId?: string | null;
  animeTitle?: string | null;
  isAdminReply?: boolean;
}): Promise<{ targetUsers: number; delivered: number }> {
  const targetIds = new Set<string>();
  const parentId = input.comment?.parent_id;

  if (input.directTargetUserId) {
    const directId = String(input.directTargetUserId).trim();
    if (
      directId &&
      directId !== "admin" &&
      (input.allowSelfNotify || directId !== String(input.actorUserId))
    ) {
      targetIds.add(directId);
    }
  }

  if (parentId) {
    const parents = await sbSelect("comments", { id: `eq.${parentId}` }, { limit: 1 });
    const parentUserId = parents[0]?.user_id;
    if (
      parentUserId &&
      String(parentUserId) !== "admin" &&
      (input.allowSelfNotify || String(parentUserId) !== String(input.actorUserId))
    ) {
      targetIds.add(String(parentUserId));
    }
  }

  const handles = new Set<string>();
  const text = String(input.comment?.text || "");
  const mentionPattern = /@([a-zA-Z0-9_.]{3,32})/g;
  let match: RegExpExecArray | null;
  while ((match = mentionPattern.exec(text)) !== null) handles.add(match[1].toLowerCase());

  for (const username of handles) {
    const users = await sbSelect("users", { username: `eq.${username}` }, { limit: 1 });
    const mentionedUserId = users[0]?.id;
    if (
      mentionedUserId &&
      String(mentionedUserId) !== "admin" &&
      (input.allowSelfNotify || String(mentionedUserId) !== String(input.actorUserId))
    ) {
      targetIds.add(String(mentionedUserId));
    }
  }

  if (!targetIds.size) {
    console.info(`[comments] notifyCommentTargets: no target userIds for comment=${input.comment?.id}`);
    return { targetUsers: 0, delivered: 0 };
  }

  const snippet = text.trim().slice(0, 120);
  const titlePrefix = input.animeTitle ? `${input.animeTitle}` : "";
  const epLabel = input.comment?.episode_number != null ? ` · الحلقة ${input.comment.episode_number}` : "";
  const notificationTitle = input.isAdminReply
    ? `💬 رد من إدارة Anime NOVA${titlePrefix ? ` (${titlePrefix}${epLabel})` : ""}`
    : (parentId || input.directTargetUserId ? "💬 رد جديد على تعليقك" : "💬 تم ذكرك في تعليق");
  const notificationBody = snippet
    ? `${input.actorName || "مستخدم"}: ${snippet}`
    : `${input.actorName || "مستخدم"} أرسل لك إشعارًا في التعليقات`;

  const counts = await Promise.all([...targetIds].map((userId) =>
    sendMobilePush({
      userId,
      eventKey: `comment:${String(input.comment?.id || Date.now())}:${userId}`,
      title: notificationTitle,
      body: notificationBody,
      data: {
        type: parentId || input.directTargetUserId ? "comment-reply" : "comment-mention",
        commentId: String(input.comment?.id || ""),
        animeId: input.comment?.anime_id ?? null,
        tmdbId: input.comment?.tmdb_id ?? null,
        episode: input.comment?.episode_number ?? null,
      },
    }).catch((error: any) => {
      console.warn(`[comments] push failed: ${error?.message || String(error)}`);
      return 0;
    }),
  ));

  const delivered = counts.reduce((sum, n) => sum + (Number(n) || 0), 0);
  console.info(`[comments] notifyCommentTargets comment=${input.comment?.id} targets=${targetIds.size} delivered=${delivered}`);
  return { targetUsers: targetIds.size, delivered };
}

/* ─────────────────────────────────────────
   GET /api/comments/mine?limit=&offset=
   Authenticated profile feed. The user ID always comes from the session/token,
   never from a client-supplied query parameter.
───────────────────────────────────────── */
router.get("/comments/mine", async (req: Request, res: Response) => {
  const userId = await getUserId(req);
  if (!userId) return res.status(401).json({ error: "يجب تسجيل الدخول" });

  try {
    const parsedLimit = Number.parseInt(String(req.query.limit || "50"), 10);
    const parsedOffset = Number.parseInt(String(req.query.offset || "0"), 10);
    const limit = Math.min(Math.max(Number.isFinite(parsedLimit) ? parsedLimit : 50, 1), 100);
    const offset = Math.max(Number.isFinite(parsedOffset) ? parsedOffset : 0, 0);
    const rows = await sbSelect("comments", {
      user_id: `eq.${userId}`,
      order: "created_at.desc",
    }, { limit: Math.min(limit + offset, 500) });
    const comments = rows.slice(offset, offset + limit).map((row) => mapRow(row, false));
    return res.json({ comments, total: rows.length });
  } catch (err) {
    console.error("[comments] mine:", err);
    return res.status(500).json({ error: "تعذّر تحميل تعليقات الحساب" });
  }
});

/* ─────────────────────────────────────────
   GET /api/comments?animeId=&ep=&limit=&offset=
   GET /api/comments?tmdbId=&ep=&limit=&offset=
───────────────────────────────────────── */
router.get("/comments", async (req: Request, res: Response) => {
  try {
    const rawAnimeId = req.query.animeId;
    const animeId = (rawAnimeId && rawAnimeId !== "null") ? Number(rawAnimeId) : null;
    const rawTmdbId = req.query.tmdbId;
    const tmdbId  = (rawTmdbId && rawTmdbId !== "null") ? String(rawTmdbId) : null;
    const ep      = req.query.ep !== undefined ? Number(req.query.ep) : null;
    const limit   = Math.min(Number(req.query.limit) || 100, 200);
    const offset  = Number(req.query.offset) || 0;
    const userId  = await getUserId(req);

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

    const userIds = Array.from(new Set(page.map((r) => r.user_id).filter(Boolean)));
    let profiles = new Map<string, any>();
    if (userIds.length > 0) {
      const users = await sbSelect("users", { id: `in.(${userIds.join(",")})` }, { limit: userIds.length });
      profiles = new Map(users.map((u: any) => [String(u.id), u]));
    }
    const result = page.map((r) => mapRow(r, likedIds.has(r.id), profiles.get(String(r.user_id))));
    return res.json({ comments: result, total: result.length });
  } catch (err) {
    console.error("[comments] GET:", err);
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

const COMMENT_TITLES_CONFIG_KEY = "comment_anime_titles";
const commentTitlesMemCache = new Map<string, string>();
let commentTitlesLoaded = false;

export async function getCachedCommentAnimeTitles(): Promise<Map<string, string>> {
  if (!commentTitlesLoaded) {
    commentTitlesLoaded = true;
    try {
      const rows = await sbSelect("app_config", { key: `eq.${COMMENT_TITLES_CONFIG_KEY}` }, { limit: 1 });
      if (rows[0]?.value) {
        const parsed = JSON.parse(String(rows[0].value));
        if (parsed && typeof parsed === "object") {
          for (const [k, v] of Object.entries(parsed)) {
            if (typeof v === "string" && v.trim()) commentTitlesMemCache.set(k, v.trim());
          }
        }
      }
    } catch { /* ignore */ }
  }
  return commentTitlesMemCache;
}

export async function rememberCommentAnimeTitle(key: string | number | null | undefined, title: string | null | undefined): Promise<void> {
  const k = String(key || "").trim();
  const t = String(title || "").trim();
  if (!k || !t || t === "التعليقات" || t === "أنمي") return;
  await getCachedCommentAnimeTitles();
  if (commentTitlesMemCache.get(k) === t) return;
  commentTitlesMemCache.set(k, t);
  try {
    const { setDbConfig } = await import("../lib/dbConfig.js");
    await setDbConfig(COMMENT_TITLES_CONFIG_KEY, JSON.stringify(Object.fromEntries(commentTitlesMemCache)));
  } catch { /* ignore */ }
}

/* ─────────────────────────────────────────
   POST /api/comments
───────────────────────────────────────── */
router.post("/comments", async (req: Request, res: Response) => {
  const userId = await getUserId(req);
  if (!userId) return res.status(401).json({ error: "يجب تسجيل الدخول للتعليق" });

  try {
    const {
      animeId, tmdbId, episodeNumber, text: txt,
      username, userHandle, avatarUrl, animeType,
      parentId, replyToUsername, animeTitle,
    } = req.body;

    if ((!animeId && !tmdbId) || !txt?.trim())
      return res.status(400).json({ error: "animeId أو tmdbId + النص مطلوبان" });
    if (txt.trim().length > 1000)
      return res.status(400).json({ error: "التعليق طويل جداً (الحد 1000 حرف)" });

    if (animeTitle) {
      void rememberCommentAnimeTitle(animeId || tmdbId, String(animeTitle));
    }

    const baseRow = {
      user_id:           userId,
      username:          username || "مستخدم",
      avatar_url:        avatarUrl || null,
      anime_id:          animeId ? Number(animeId) : null,
      tmdb_id:           tmdbId  ? String(tmdbId)  : null,
      episode_number:    episodeNumber !== undefined && episodeNumber !== null ? Number(episodeNumber) : null,
      anime_type:        animeType || "anime",
      text:              txt.trim(),
      likes:             0,
      parent_id:         parentId || null,
      reply_to_username: replyToUsername || null,
    };

    let row = await sbInsert("comments", { ...baseRow, user_handle: userHandle || null });

    // إذا فشل الإدراج (مثلاً عمود user_handle ناقص في Supabase القديم) — أعد المحاولة بدونه
    if (!row) {
      console.warn("[comments] sbInsert with user_handle failed — retrying without it");
      row = await sbInsert("comments", baseRow);
    }

    if (!row) {
      console.error("[comments] POST: sbInsert returned null after retry");
      return res.status(500).json({ error: "فشل إنشاء التعليق في قاعدة البيانات" });
    }

    void notifyCommentTargets({
      comment: row,
      actorUserId: userId,
      actorName: username || "مستخدم",
    }).catch((error: any) => {
      console.warn(`[comments] target notification failed: ${error?.message || String(error)}`);
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
  const userId = await getUserId(req);
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
  const userId = await getUserId(req);
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
    const rawAnimeId2 = req.query.animeId;
    const animeId = (rawAnimeId2 && rawAnimeId2 !== "null") ? Number(rawAnimeId2) : null;
    const rawTmdbId2 = req.query.tmdbId;
    const tmdbId  = (rawTmdbId2 && rawTmdbId2 !== "null") ? String(rawTmdbId2) : null;
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
