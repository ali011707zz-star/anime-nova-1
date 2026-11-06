import { Router, type Request, type Response } from "express";
import { createHash } from "node:crypto";
import { sbUpsert } from "../lib/supabaseClient.js";
import { checkRateLimit, getMobileUserId } from "../lib/security.js";

const router = Router();
const PLATFORMS = new Set(["web", "mobile"]);

function platformOf(value: unknown): "web" | "mobile" | null {
  const platform = String(value || "").trim().toLowerCase();
  return PLATFORMS.has(platform) ? platform as "web" | "mobile" : null;
}

function visitorOf(req: Request, value: unknown): string {
  const header = req.headers["x-nova-device"];
  const fromHeader = Array.isArray(header) ? header[0] : header;
  return String(value || fromHeader || "anonymous").trim().slice(0, 160);
}

function optionalInt(value: unknown): number | null {
  const n = Number(value);
  return Number.isInteger(n) && n >= 0 ? n : null;
}

function riyadhDateKey(date = new Date()): string {
  const parts = new Intl.DateTimeFormat("en-CA", {
    timeZone: "Asia/Riyadh",
    year: "numeric",
    month: "2-digit",
    day: "2-digit",
  }).formatToParts(date);
  const part = (type: string) => parts.find((item) => item.type === type)?.value || "";
  return `${part("year")}-${part("month")}-${part("day")}`;
}

router.post("/analytics/heartbeat", async (req: Request, res: Response) => {
  const platform = platformOf(req.body?.platform);
  if (!platform) return res.status(400).json({ error: "platform يجب أن يكون web أو mobile" });

  const visitorId = visitorOf(req, req.body?.visitorId);
  const userId = getMobileUserId(req) || (req.session as any)?.userId || (req.session as any)?.emailUserId || null;
  const watching = req.body?.watching === true;
  const sessionKey = `${platform}:${visitorId}`;
  try {
    const saved = await sbUpsert("analytics_sessions", {
      session_key: sessionKey,
      platform,
      visitor_id: visitorId,
      user_id: userId,
      anime_id: watching ? String(req.body?.animeId || "").slice(0, 80) || null : null,
      episode_number: watching ? optionalInt(req.body?.episode) : null,
      anime_title: watching ? String(req.body?.title || "").slice(0, 240) || null : null,
      source: watching ? String(req.body?.source || "").slice(0, 80) || null : null,
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
  const playedSeconds = Number(req.body?.playedSeconds);
  if (!animeId || episode === null || episode < 1) {
    return res.status(400).json({ error: "animeId و episode صحيحان مطلوبان" });
  }
  if (!Number.isFinite(playedSeconds) || playedSeconds < 10 || playedSeconds > 3600) {
    return res.status(400).json({ error: "لا تُسجّل المشاهدة إلا بعد تقدم الفيديو 10 ثوانٍ على الأقل" });
  }
  const ip = req.ip || req.socket.remoteAddress || "unknown";
  if (!checkRateLimit(`analytics-view:${ip}`, 60, 60_000)) {
    return res.status(429).json({ error: "طلبات تسجيل المشاهدة كثيرة، حاول بعد قليل" });
  }

  const visitorId = visitorOf(req, req.body?.visitorId);
  if (!visitorId || visitorId === "anonymous") {
    return res.status(400).json({ error: "معرّف الجهاز مطلوب لتسجيل المشاهدة" });
  }
  const userId = getMobileUserId(req) || (req.session as any)?.userId || (req.session as any)?.emailUserId || null;
  const identityKey = userId ? `user:${userId}` : `visitor:${platform}:${visitorId}`;
  const eventKey = createHash("sha256")
    .update(`playback-v2:${identityKey}:${animeId}:${episode}:${riyadhDateKey()}`)
    .digest("hex");
  try {
    const saved = await sbUpsert("analytics_episode_views", {
      event_key: eventKey,
      platform,
      visitor_id: visitorId,
      user_id: userId,
      anime_id: animeId,
      episode_number: episode,
      anime_title: String(req.body?.title || "").slice(0, 240) || null,
      source: "playback-v2",
      viewed_at: new Date().toISOString(),
    }, "event_key");
    if (!saved) return res.status(503).json({ error: "جدول الإحصائيات غير مهيأ على الخادم" });
    return res.json({ ok: true });
  } catch (err) {
    console.error("[analytics/episode-view]", err);
    return res.status(503).json({ error: "تعذر تسجيل مشاهدة الحلقة" });
  }
});

export default router;