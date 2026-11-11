import { Router, type Request, type Response } from "express";
import { sbInsert, sbUpsert } from "../lib/supabaseClient.js";
import { getMobileUserId } from "../lib/security.js";

const router = Router();
const PLATFORMS = new Set(["web", "mobile"]);

function platformOf(value: unknown): "web" | "mobile" | null {
  const platform = String(value || "").trim().toLowerCase();
  return PLATFORMS.has(platform) ? platform as "web" | "mobile" : null;
}

function visitorOf(req: Request, value: unknown): string {
  const header = req.headers["x-nova-device"];
  const fromHeader = Array.isArray(header) ? header[0] : header;
  return String(value || fromHeader || "anonymous").slice(0, 160);
}

function optionalInt(value: unknown): number | null {
  const n = Number(value);
  return Number.isInteger(n) && n >= 0 ? n : null;
}

function riyadhDateKey(ts = Date.now()): string {
  return new Date(ts + 3 * 3600_000).toISOString().slice(0, 10);
}

router.post("/analytics/heartbeat", async (req: Request, res: Response) => {
  const platform = platformOf(req.body?.platform);
  if (!platform) return res.status(400).json({ error: "platform يجب أن يكون web أو mobile" });

  const visitorId = visitorOf(req, req.body?.visitorId);
  const userId = getMobileUserId(req) || (req.session as any)?.userId || (req.session as any)?.emailUserId || null;
  const sessionKey = `${platform}:${visitorId}`;
  const isWatching = req.body?.watching !== false && Boolean(req.body?.animeId);
  try {
    const saved = await sbUpsert("analytics_sessions", {
      session_key: sessionKey,
      platform,
      visitor_id: visitorId,
      user_id: userId,
      anime_id: isWatching ? (String(req.body?.animeId || "").slice(0, 80) || null) : null,
      episode_number: isWatching ? optionalInt(req.body?.episode) : null,
      anime_title: isWatching ? (String(req.body?.title || "").slice(0, 240) || null) : null,
      source: isWatching ? (String(req.body?.source || "").slice(0, 80) || null) : null,
      last_seen_at: new Date().toISOString(),
    }, "session_key");
    if (!saved) return res.status(503).json({ error: "جدول الإحصائيات غير مهيأ على الخادم" });
    return res.json({ ok: true });
  } catch (err) {
    console.error("[analytics/heartbeat]", err);
    return res.status(503).json({ error: "تعذر تسجيل الجلسة" });
  }
});

router.post("/analytics/episode-view", async (req: Request, res: Response) => {
  const platform = platformOf(req.body?.platform);
  if (!platform) return res.status(400).json({ error: "platform يجب أن يكون web أو mobile" });
  const animeId = String(req.body?.animeId || "").slice(0, 80);
  const episode = optionalInt(req.body?.episode);
  if (!animeId || episode === null) return res.status(400).json({ error: "animeId و episode مطلوبان" });

  const visitorId = visitorOf(req, req.body?.visitorId);
  const userId = getMobileUserId(req) || (req.session as any)?.userId || (req.session as any)?.emailUserId || null;
  const dayKey = riyadhDateKey();
  const eventKey = String(req.body?.eventKey || `${platform}:${visitorId}:${animeId}:${episode}:${dayKey}`).slice(0, 240);
  const nowIso = new Date().toISOString();
  const animeTitle = String(req.body?.title || "").slice(0, 240) || null;
  const source = String(req.body?.source || "").slice(0, 80) || null;
  try {
    const [saved] = await Promise.all([
      sbUpsert("analytics_episode_views", {
        event_key: eventKey,
        platform,
        visitor_id: visitorId,
        user_id: userId,
        anime_id: animeId,
        episode_number: episode,
        anime_title: animeTitle,
        source,
        viewed_at: nowIso,
      }, "event_key"),
      sbUpsert("analytics_sessions", {
        session_key: `${platform}:${visitorId}`,
        platform,
        visitor_id: visitorId,
        user_id: userId,
        anime_id: animeId,
        episode_number: episode,
        anime_title: animeTitle,
        source,
        last_seen_at: nowIso,
      }, "session_key").catch(() => null),
    ]);
    if (!saved) return res.status(503).json({ error: "جدول الإحصائيات غير مهيأ على الخادم" });
    return res.json({ ok: true });
  } catch (err) {
    console.error("[analytics/episode-view]", err);
    return res.status(503).json({ error: "تعذر تسجيل مشاهدة الحلقة" });
  }
});

export default router;