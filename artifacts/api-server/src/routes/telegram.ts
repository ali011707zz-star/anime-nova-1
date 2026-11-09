/**
 * telegram.ts — بوت تيليجرام لـ Anime NOVA
 * يستقبل رسائل المستخدمين، يرد عليهم، ويحوّل التقارير للأدمن
 * ويرسل تنبيهات الحلقات الجديدة للقناة تلقائياً
 */

import { Router, type Request, type Response } from "express";
import { sbInsert, sbSelect } from "../lib/supabaseClient.js";
import { getEnvOrDb } from "../lib/dbConfig.js";
import { saveNotification } from "./notifications.js";
import { sendNewEpisodePushDetailed } from "./push.js";

const router = Router();

// يقرأ من البيئة أولاً، ثم من app_config في قاعدة البيانات
let _cachedToken = "";
let _cachedTokenTs = 0;
async function getToken(): Promise<string> {
  const now = Date.now();
  if (_cachedToken && now - _cachedTokenTs < 60_000) return _cachedToken;
  _cachedToken = await getEnvOrDb("TELEGRAM_BOT_TOKEN", "telegram_bot_token");
  _cachedTokenTs = now;
  return _cachedToken;
}

const TOKEN   = () => process.env.TELEGRAM_BOT_TOKEN || _cachedToken;
const API     = () => `https://api.telegram.org/bot${TOKEN()}`;
const SITE_URL = "https://animenovaa.duckdns.org/";

function internalApiBaseUrl(): string {
  const configured = process.env.NOVA_INTERNAL_API_URL?.trim().replace(/\/+$/, "");
  if (configured) return configured;
  const port = Number.parseInt(process.env.PORT || "5000", 10);
  return `http://127.0.0.1:${Number.isInteger(port) && port > 0 && port <= 65_535 ? port : 5000}`;
}

/* ── helpers ──────────────────────────────────────────────────────────── */

function escapeTelegramHtml(value: unknown): string {
  return String(value ?? "")
    .replace(/&/g, "&amp;")
    .replace(/</g, "&lt;")
    .replace(/>/g, "&gt;")
    .replace(/"/g, "&quot;");
}

function buildEpisodeCaption(title: string, ep: number): string {
  return [
    `🌸 <b>حلقة جديدة وصلت!</b>`,
    ``,
    `✨ ${escapeTelegramHtml(title)}`,
    `🎬 الحلقة ${escapeTelegramHtml(ep)}`,
    ``,
    `✅ متاحة الآن للمشاهدة على Anime NOVA 🎮`,
    ``,
    `شاهد بجودة عالية · بدون إعلانات 🚀`,
    `📲 شاهد الأنمي وحمّل تطبيق Anime NOVA من هنا:`,
    `🔗 ${SITE_URL}`,
  ].join("\n");
}

async function sendMessage(chatId: number | string, text: string, extra: Record<string, any> = {}) {
  const tok = await getToken();
  if (!tok) return false;
  const payload = { chat_id: chatId, text, parse_mode: "HTML", ...extra };
  const response = await fetch(`https://api.telegram.org/bot${tok}/sendMessage`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(payload),
    signal: AbortSignal.timeout(8_000),
  }).catch(() => { console.warn("[telegram] sendMessage request failed"); return null; });
  if (!response) return false;
  const body = await response.json().catch(() => ({})) as any;
  if (!response.ok || body?.ok !== true) {
    console.warn("[telegram] sendMessage API error:", body?.description || response.status);
    return false;
  }
  return true;
}

async function sendChannelPhoto(photoUrl: string, caption: string) {
  const channelId = process.env.TELEGRAM_CHANNEL_ID;
  const tok = await getToken();
  if (!channelId || !tok) return false;
  const r = await fetch(`https://api.telegram.org/bot${tok}/sendPhoto`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({
      chat_id: channelId,
      photo:   photoUrl,
      caption,
      parse_mode: "HTML",
    }),
    signal: AbortSignal.timeout(12_000),
  }).catch(() => { console.warn("[telegram] sendChannelPhoto request failed"); return null; });
  if (!r) return false;
  const body = await r.json().catch(() => ({})) as any;
  if (!r.ok || body?.ok !== true) {
    console.warn("[telegram] sendChannelPhoto API error:", body?.description || r.status);
    return false;
  }
  return true;
}

async function fetchAnimePoster(anilistId: number): Promise<string | null> {
  try {
    const res = await fetch("https://graphql.anilist.co", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
        "Origin": "https://anilist.co",
        "Referer": "https://anilist.co/",
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36",
      },
      body: JSON.stringify({
        query: `query ($id: Int) { Media(id: $id) { coverImage { extraLarge large } } }`,
        variables: { id: anilistId },
      }),
      signal: AbortSignal.timeout(8_000),
    });
    const data = await res.json() as any;
    const img = data?.data?.Media?.coverImage;
    return img?.extraLarge ?? img?.large ?? null;
  } catch { return null; }
}

/* ── تتبّع التنبيهات المُرسَلة (لمنع التكرار) ──────────────────────── */
// المفتاح: "anilistId:ep" — يُحفظ في ذاكرة العملية
const notifiedEpisodes = new Set<string>();
const telegramNotifiedEpisodes = new Set<string>();
const episodeNotificationFlights = new Map<string, Promise<boolean>>();
const telegramSendFlights = new Map<string, Promise<boolean>>();

/* ── وظيفة التنبيه الرئيسية (تُستدعى من anime.ts) ──────────────────── */

export async function notifyNewEpisode(
  anilistId: number,
  title: string,
  ep: number,
  posterUrl?: string,
): Promise<boolean> {
  const key = `${anilistId}:${ep}`;
  if (notifiedEpisodes.has(key)) return true;
  const existingFlight = episodeNotificationFlights.get(key);
  if (existingFlight) return existingFlight;

  const flight = Promise.resolve().then(() =>
    deliverNewEpisodeNotification(anilistId, title, ep, posterUrl),
  );
  episodeNotificationFlights.set(key, flight);
  try {
    return await flight;
  } finally {
    if (episodeNotificationFlights.get(key) === flight) {
      episodeNotificationFlights.delete(key);
    }
  }
}

async function deliverNewEpisodeNotification(
  anilistId: number,
  title: string,
  ep: number,
  posterUrl?: string,
): Promise<boolean> {
  const key = `${anilistId}:${ep}`;
  if (await wasNotified(anilistId, ep)) {
    notifiedEpisodes.add(key);
    return true;
  }

  // Resolve the poster once and reuse it for the in-app record, remote push,
  // and Telegram. The remote push must receive the same image; otherwise the
  // OS can only display the small app icon while the app is closed.
  const poster = posterUrl ?? await fetchAnimePoster(anilistId);

  // حفظ الإشعار في قاعدة البيانات (داخل التطبيق)
  await saveNotification({
    type: "anime_episode",
    title,
    body: `الحلقة ${ep} متاحة الآن`,
    image_url: poster ?? undefined,
    link_path: `/watch?id=${anilistId}&ep=${ep}`,
    anime_id: anilistId,
    episode_num: ep,
  }).catch(() => {});

  const pushResult = await sendNewEpisodePushDetailed({
    animeId: anilistId,
    title,
    episode: ep,
    posterUrl: poster ?? undefined,
  }).catch((error) => {
    console.warn(`[push] episode delivery failed title=${title} episode=${ep}:`, error instanceof Error ? error.message : String(error));
    return null;
  });

  const channelId = process.env.TELEGRAM_CHANNEL_ID;
  const tok = await getToken();
  const caption = buildEpisodeCaption(title, ep);

  let telegramSent = true;
  if (channelId && tok) {
    telegramSent = await sendTelegramEpisodeOnce(anilistId, ep, caption, poster || undefined);
  }

  // Decoupled delivery: Telegram should succeed even if no mobile push tokens are registered yet,
  // and mobile push should succeed even if Telegram channel is unconfigured.
  if (!telegramSent && !pushResult?.queueReady) {
    console.warn(`[scheduler] episode delivery failed telegram=${telegramSent} queueReady=${pushResult?.queueReady ?? false} title=${title} episode=${ep}`);
    return false;
  }

  notifiedEpisodes.add(key);
  await markNotified(anilistId, ep);
  console.log(`[scheduler] ✅ episode delivery complete title=${title} episode=${ep} devices=${pushResult?.targets ?? 0}`);
  return true;
}

let _cachedAdminId = "";
let _cachedAdminIdTs = 0;
async function getAdminChatId(): Promise<string | null> {
  const now = Date.now();
  if (_cachedAdminId && now - _cachedAdminIdTs < 60_000) return _cachedAdminId;
  const val = await getEnvOrDb("TELEGRAM_CHAT_ID", "telegram_chat_id");
  if (val) { _cachedAdminId = val; _cachedAdminIdTs = now; }
  return val || null;
}

/* ── AniList airing schedule query ────────────────────────────────────── */

const AIRING_QUERY = `
query($greater: Int, $lesser: Int) {
  Page(perPage: 50) {
    airingSchedules(
      airingAt_greater: $greater
      airingAt_lesser: $lesser
      sort: [TIME_DESC]
    ) {
      id
      airingAt
      episode
      media {
        id
        type
        isAdult
        title { romaji english native }
        coverImage { extraLarge large }
        genres
        status
        siteUrl
      }
    }
  }
}`;

async function fetchAiringSchedules(fromTs: number, toTs: number): Promise<any[]> {
  try {
    const res = await fetch("https://graphql.anilist.co", {
      method: "POST",
      headers: { "Content-Type": "application/json", Accept: "application/json" },
      body: JSON.stringify({
        query: AIRING_QUERY,
        variables: { greater: fromTs, lesser: toTs },
      }),
      signal: AbortSignal.timeout(15_000),
    });
    const data = await res.json() as any;
    return data?.data?.Page?.airingSchedules ?? [];
  } catch (e: any) {
    console.warn("[scheduler] fetchAiringSchedules error:", e.message);
    return [];
  }
}

/* ── تحقق من DB هل أُرسل هذا التنبيه من قبل ──────────────────────────── */

function normalizeNotifTitleKey(raw: unknown): string {
  return String(raw || "")
    .toLowerCase()
    .replace(/[^a-z0-9\u0600-\u06ff]+/g, "")
    .slice(0, 48);
}

function collectEpisodeIdentityKeys(
  primaryId: number | string,
  ep: number,
  secondaryId?: number | string,
  titles?: string[],
): string[] {
  const keys = new Set<string>();
  if (primaryId) {
    keys.add(`tg_notify:${primaryId}:${ep}`);
    keys.add(`tg_channel:${primaryId}:${ep}`);
  }
  if (secondaryId && String(secondaryId) !== String(primaryId)) {
    keys.add(`tg_notify:${secondaryId}:${ep}`);
    keys.add(`tg_channel:${secondaryId}:${ep}`);
  }
  if (Array.isArray(titles)) {
    for (const t of titles) {
      const norm = normalizeNotifTitleKey(t);
      if (norm.length >= 3) {
        keys.add(`tg_title:${norm}:${ep}`);
      }
    }
  }
  return Array.from(keys);
}

async function wasNotified(
  id: number | string,
  ep: number,
  secondaryId?: number | string,
  titles?: string[],
): Promise<boolean> {
  const keys = collectEpisodeIdentityKeys(id, ep, secondaryId, titles);
  for (const k of keys) {
    if (notifiedEpisodes.has(k) || telegramNotifiedEpisodes.has(k)) return true;
  }
  try {
    for (const k of keys) {
      const rows = await sbSelect("app_config", { key: `eq.${k}` }, { limit: 1 });
      if (Array.isArray(rows) && rows.length > 0) {
        for (const allK of keys) notifiedEpisodes.add(allK);
        return true;
      }
    }
    return false;
  } catch {
    return false;
  }
}

async function markNotified(
  id: number | string,
  ep: number,
  secondaryId?: number | string,
  titles?: string[],
): Promise<void> {
  const keys = collectEpisodeIdentityKeys(id, ep, secondaryId, titles);
  const nowStr = String(Date.now());
  for (const k of keys) {
    notifiedEpisodes.add(k);
    telegramNotifiedEpisodes.add(k);
    try {
      await sbInsert("app_config", { key: k, value: nowStr });
    } catch { /* silent */ }
  }
}

async function sendTelegramEpisodeOnce(
  anilistId: number,
  ep: number,
  caption: string,
  poster?: string,
): Promise<boolean> {
  const channelId = process.env.TELEGRAM_CHANNEL_ID;
  if (!channelId || !(await getToken())) return true;

  const memoryKey = `${anilistId}:${ep}`;
  const dbKey = `tg_channel:${anilistId}:${ep}`;
  if (telegramNotifiedEpisodes.has(memoryKey) || telegramNotifiedEpisodes.has(dbKey)) return true;
  const existingFlight = telegramSendFlights.get(memoryKey);
  if (existingFlight) return existingFlight;

  const flight = Promise.resolve().then(async () => {
    const existing = await sbSelect("app_config", { key: `eq.${dbKey}` }, { limit: 1 });
    if (existing.length) {
      telegramNotifiedEpisodes.add(memoryKey);
      telegramNotifiedEpisodes.add(dbKey);
      return true;
    }

    let sent = poster ? await sendChannelPhoto(poster, caption) : false;
    if (!sent) sent = await sendMessage(channelId, caption);
    if (!sent) return false;

    telegramNotifiedEpisodes.add(memoryKey);
    telegramNotifiedEpisodes.add(dbKey);
    const saved = await sbInsert("app_config", { key: dbKey, value: String(Date.now()) });
    if (!saved) {
      const confirmed = await sbSelect("app_config", { key: `eq.${dbKey}` }, { limit: 1 });
      if (!confirmed.length) console.warn(`[telegram] episode channel marker database write failed episode=${ep}`);
    }
    console.log(`[telegram] ✅ تنبيه الحلقة أُرسل → ${anilistId} ح${ep}`);
    return true;
  });

  telegramSendFlights.set(memoryKey, flight);
  try {
    return await flight;
  } finally {
    if (telegramSendFlights.get(memoryKey) === flight) {
      telegramSendFlights.delete(memoryKey);
    }
  }
}

async function verifyEpisodeHasValidPlayableSources(animeId: number, ep: number, title: string): Promise<boolean> {
  try {
    const params = new URLSearchParams({
      anime: String(animeId),
      ep: String(ep),
      title: title || "",
      mode: "check",
    });
    const resp = await fetch(`${internalApiBaseUrl()}/api/anime/sources-stream?${params.toString()}`, {
      headers: { Accept: "text/event-stream" },
      signal: AbortSignal.timeout(12_000),
    });
    if (!resp.ok) return false;
    const text = await resp.text();
    return text.includes('"available":true');
  } catch {
    return false;
  }
}

/* ── حالة الـ scheduler ──────────────────────────────────────────────── */

let schedulerFirstRun = true;  // أول دورة: بذر الكاش بدون إرسال لتفادي إغراق Telegram
let schedulerRunning  = false;
let schedulerLastRun  = 0;
let schedulerNextRun  = 0;
let schedulerSentToday = 0;
let schedulerTimer: ReturnType<typeof setTimeout> | null = null;

const INTERVAL_MS = 10 * 60 * 1000; // كل 10 دقائق

function isStaleEpisodeDate(item: any): boolean {
  const raw = String(item?.updatedAt ?? item?.updated_at ?? item?.latest_episode_date ?? "").trim();
  if (!raw || raw.toUpperCase() === "NEW") return false;
  if (/^\d{4}-\d{2}-\d{2}$/.test(raw)) {
    const parsed = Date.parse(`${raw}T23:59:59Z`);
    if (Number.isFinite(parsed)) {
      // Any YYYY-MM-DD older than 36 hours is an older catalog item, not a new today release
      return Date.now() - parsed > 36 * 60 * 60 * 1000;
    }
  }
  return false;
}

/* ── poll the same normalized feed shown in the homepage's latest episodes ── */

async function pollAnimeSlayerDirect(): Promise<void> {
  try {
    const resp = await fetch(`${internalApiBaseUrl()}/api/anime/anslayer-latest`, {
      headers: { "User-Agent": "NovaBot/1.0", Accept: "application/json" },
      signal: AbortSignal.timeout(25_000),
    });
    if (!resp.ok) {
      console.warn(`[scheduler] latest episodes feed HTTP ${resp.status}`);
      return;
    }
    const data = await resp.json() as any;
    const list: any[] = Array.isArray(data?.items)
      ? data.items
      : Array.isArray(data)
        ? data
        : [];

    if (!list.length) {
      console.log("[scheduler] 🔄 latest episodes feed: لا بيانات في الرد");
      return;
    }

    // عند تشغيل السيرفر لأول مرة، نبذر جميع عناصر أحدث الحلقات الحالية بجميع معرّفاتها وعناوينها
    // حتى لا نعيد إرسال أي حلقة قديمة عند إعادة تشغيل الخادم.
    if (schedulerFirstRun) {
      schedulerFirstRun = false;
      let seeded = 0;
      for (const item of list) {
        const anilistId = Number(item.animeId || item.anilistId || 0);
        const anslayerId = Number(item.anslayerId || item.sourceId || 0);
        const primaryId = anilistId || anslayerId;
        const ep = Number(item.episode);
        if (!primaryId || !ep) continue;
        const titles = [
          item.name,
          item.romaji,
          item.english,
          item.titleAr,
          ...(Array.isArray(item.titleVariants) ? item.titleVariants : []),
        ].filter(Boolean);
        await markNotified(primaryId, ep, anslayerId !== primaryId ? anslayerId : undefined, titles);
        seeded++;
      }
      console.log(`[scheduler] 🌱 أحدث الحلقات startup: seeded=${seeded}`);
      return;
    }

    let sent = 0;
    for (let idx = 0; idx < list.length; idx++) {
      const item = list[idx];
      const anilistId = Number(item.animeId || item.anilistId || 0);
      const anslayerId = Number(item.anslayerId || item.sourceId || 0);
      const primaryId = anilistId || anslayerId;
      const ep = Number(item.episode);
      if (!primaryId || !ep) continue;

      const titles = [
        item.name,
        item.romaji,
        item.english,
        item.titleAr,
        ...(Array.isArray(item.titleVariants) ? item.titleVariants : []),
      ].filter(Boolean);

      // تحقق من AniList ID + sourceId + العناوين المطبّعة لمنع أي تكرار نهائياً
      if (await wasNotified(primaryId, ep, anslayerId !== primaryId ? anslayerId : undefined, titles)) {
        continue;
      }

      // الحلقات التي تقع في ذيل القائمة (بعد أول 12 عنصر في أحدث الحلقات) أو ذات تاريخ قديم
      // يتم بذرها بصمت ولا يُرسل عنها إشعار؛ الإشعارات مقتصرة فقط على الحلقات الجديدة الظاهرة في مقدمة أحدث الحلقات.
      if (idx >= 12 || isStaleEpisodeDate(item)) {
        await markNotified(primaryId, ep, anslayerId !== primaryId ? anslayerId : undefined, titles);
        continue;
      }

      const name = item.english || item.romaji || item.name || "أنمي";
      const cover = item.cover || "";

      // فحص توفر الحلقة في سيرفرات المشاهدة أولاً قبل الإشعار
      const isAvail = await verifyEpisodeHasValidPlayableSources(primaryId, ep, name);
      if (!isAvail) {
        console.log(`[scheduler] ⏳ لم تتوفر بعد بسيرفرات التطبيق: ${name} ح${ep} — تخطّي الإشعار`);
        continue;
      }

      console.log(`[scheduler] 🎯 حلقة جديدة في أحدث الحلقات (#${idx + 1}): ${name} ح${ep}`);

      try {
        if (await notifyNewEpisode(primaryId, name, ep, cover || undefined)) {
          sent++;
          schedulerSentToday++;
          await markNotified(primaryId, ep, anslayerId !== primaryId ? anslayerId : undefined, titles);
        }
      } catch (e: any) {
        console.warn(`[scheduler] notify error (${name}): ${e.message}`);
      }

      // فاصل بين الرسائل لتجنب Telegram rate-limit
      await new Promise(r => setTimeout(r, 1_500));
    }

    if (sent > 0) {
      console.log(`[scheduler] 📨 أحدث الحلقات: أُرسل ${sent} إشعار`);
    } else {
      console.log("[scheduler] 📭 أحدث الحلقات: لا حلقات جديدة");
    }
  } catch (e: any) {
    console.warn("[scheduler] latest episodes poll error:", e.message);
  }
}

/* ── الدورة الواحدة ────────────────────────────────────────────────────── */

let schedulerCyclePromise: Promise<void> | null = null;

function runSchedulerCycle(): Promise<void> {
  if (schedulerCyclePromise) return schedulerCyclePromise;
  schedulerCyclePromise = runSchedulerCycleInner().finally(() => {
    schedulerCyclePromise = null;
  });
  return schedulerCyclePromise;
}

async function runSchedulerCycleInner(): Promise<void> {
  const tok = await getToken();
  const telegramReady = Boolean(tok && process.env.TELEGRAM_CHANNEL_ID);
  const pushDevices = await sbSelect("mobile_push_tokens", { disabled_at: "is.null" }, { limit: 1 });
  if (!telegramReady && !pushDevices.length) return;

  const now = Math.floor(Date.now() / 1000);
  schedulerLastRun = now;
  schedulerNextRun = now + INTERVAL_MS / 1000;

  // المصدر الوحيد للإشعارات هو قسم "أحدث الحلقات" (/api/anime/anslayer-latest)
  // لضمان تطابق 100% بين ما يصل في تيليجرام وما يظهر للمستخدم في مقدمة أحدث الحلقات بالتطبيق.
  await pollAnimeSlayerDirect();
}

/* ── إرسال تنبيه للأدمن (يُستخدم من app.ts لأخطاء 500) ──────────────── */

export async function sendAdminAlert(text: string): Promise<void> {
  try {
    const adminId = await getAdminChatId();
    if (!adminId) return;
    await sendMessage(adminId, text);
  } catch {
    // silent — لا نريد أن يسبب إرسال التنبيه خطأ آخر
  }
}

/* ── تشغيل الـ scheduler ───────────────────────────────────────────────── */

export function startEpisodeScheduler(): void {
  if (schedulerRunning) return;
  schedulerRunning = true;

  // نبدأ بعد 15 ثانية لإتاحة وقت كافٍ لـ config-sync يسترجع TELEGRAM_CHANNEL_ID من DB
  setTimeout(async () => {
    // استرجع channel ID من DB إن لم يكن في البيئة بعد
    const channelId = process.env.TELEGRAM_CHANNEL_ID
      || await getEnvOrDb("TELEGRAM_CHANNEL_ID", "telegram_channel_id");

    // اضبط في البيئة للاستخدام اللاحق
    if (channelId && !process.env.TELEGRAM_CHANNEL_ID) {
      process.env.TELEGRAM_CHANNEL_ID = channelId;
    }

    const tok = await getToken();
    const pushDevices = await sbSelect("mobile_push_tokens", { disabled_at: "is.null" }, { limit: 1 });
    if (!tok && !pushDevices.length) {
      console.warn("[scheduler] لا يوجد Telegram أو أجهزة Push مسجلة — الـ scheduler لن يعمل");
      schedulerRunning = false;
      return;
    }
    console.log(`[scheduler] 🚀 بدأ — يفحص كل ${INTERVAL_MS / 60_000} دقيقة (Telegram=${Boolean(tok && channelId)}, Push=${pushDevices.length > 0})`);
    runSchedulerCycle().catch(e => console.warn("[scheduler] cycle error:", e.message));
    schedulerTimer = setInterval(() => {
      runSchedulerCycle().catch(e => console.warn("[scheduler] cycle error:", e.message));
    }, INTERVAL_MS);
  }, 15_000);
}

/* ── تسجيل الـ webhook ────────────────────────────────────────────────── */

export async function registerTelegramWebhook(domain: string) {
  const tok = await getToken();
  if (!tok) {
    console.warn("[telegram] ❌ TELEGRAM_BOT_TOKEN غير موجود في البيئة أو DB");
    return;
  }
  const url = `https://${domain}/api/telegram/webhook`;
  try {
    const res  = await fetch(`https://api.telegram.org/bot${tok}/setWebhook`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ url, allowed_updates: ["message", "callback_query"] }),
      signal: AbortSignal.timeout(10_000),
    });
    const data = await res.json() as any;
    if (data.ok) {
      console.log(`[telegram] ✅ Webhook مُسجَّل → ${url}`);
    } else {
      console.warn("[telegram] ⚠️ setWebhook:", data.description);
    }
  } catch (e: any) {
    console.warn("[telegram] ⚠️ setWebhook error:", e.message);
  }

  // تفعيل أوامر البوت
  await fetch(`${API()}/setMyCommands`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({
      commands: [
        { command: "start",   description: "ابدأ هنا" },
        { command: "help",    description: "المساعدة" },
        { command: "today",   description: "حلقات اليوم 📅" },
        { command: "report",  description: "إبلاغ عن مشكلة" },
        { command: "chatid",  description: "احصل على Chat ID الخاص بك" },
      ]
    }),
    signal: AbortSignal.timeout(8_000),
  }).catch(() => {});
}

/* ── معالج رسائل البوت ────────────────────────────────────────────────── */

async function handleUpdate(update: any) {
  const msg  = update.message;
  if (!msg) return;

  const chatId   = msg.chat.id;
  const text     = (msg.text || "").trim();
  const from     = msg.from;
  const userName = from?.first_name || from?.username || "مستخدم";
  const adminId  = await getAdminChatId();

  /* /start */
  if (text === "/start" || text.startsWith("/start ")) {
    await sendMessage(chatId,
      `👋 أهلاً <b>${userName}</b> في بوت <b>Anime NOVA</b>!\n\n` +
      `🎌 منصة بث أنمي عربي تجمع أفضل المصادر\n\n` +
      `📌 الأوامر المتاحة:\n` +
      `• /report — أرسل لنا بلاغاً أو اقتراحاً\n` +
      `• /help — المساعدة\n` +
      `• /chatid — Chat ID الخاص بك\n\n` +
      `💬 أو أرسل رسالتك مباشرة وسنردّ عليك!`
    );
    return;
  }

  /* /help */
  if (text === "/help") {
    await sendMessage(chatId,
      `🆘 <b>المساعدة</b>\n\n` +
      `🌐 الموقع: ${(() => { const d = process.env.APP_DOMAIN; return d ? (d.startsWith("http") ? d : `https://${d}`) : "https://anime-nova.app"; })()}\n\n` +
      `📝 للإبلاغ عن مشكلة: /report ثم اكتب المشكلة\n` +
      `💡 اقتراحات؟ أرسلها مباشرة!\n` +
      `🔧 مشاكل تقنية؟ اوصف المشكلة وسنتواصل معك`
    );
    return;
  }

  /* /today — حلقات اليوم */
  if (text === "/today" || text === "/اليوم") {
    await sendMessage(chatId, `⏳ <b>جاري جلب حلقات اليوم...</b>`);
    const now   = Math.floor(Date.now() / 1000);
    const since = now - 24 * 3600;
    const schedules = await fetchAiringSchedules(since, now + 3600);
    const items = schedules.filter((item: any) =>
      item.media?.type === "ANIME" && !item.media?.isAdult
    );
    if (items.length === 0) {
      await sendMessage(chatId, `📭 لا توجد حلقات عُرضت اليوم`);
    } else {
      const lines = items.map((item: any) => {
        const m = item.media;
        const title = m?.title?.english || m?.title?.romaji || "أنمي";
        const ep    = item.episode;
        return `🎌 <b>${title}</b> · ح${ep}`;
      });
      // إرسال على شكل مجموعات (10 لكل رسالة)
      const CHUNK = 10;
      await sendMessage(chatId, `📅 <b>حلقات اليوم (${items.length} حلقة)</b>`);
      for (let i = 0; i < lines.length; i += CHUNK) {
        const chunk = lines.slice(i, i + CHUNK).join("\n\n");
        await sendMessage(chatId, chunk);
        if (i + CHUNK < lines.length) await new Promise(r => setTimeout(r, 500));
      }
    }
    return;
  }

  /* /chatid — مفيد للأدمن */
  if (text === "/chatid") {
    await sendMessage(chatId,
      `🆔 <b>Chat ID الخاص بك:</b>\n<code>${chatId}</code>\n\n` +
      `اضغط على الرقم لنسخه — أضفه في <code>TELEGRAM_CHAT_ID</code> ليصلك التنبيهات`
    );
    return;
  }

  /* /report */
  if (text === "/report" || text.startsWith("/report ")) {
    const reportText = text.replace(/^\/report\s*/, "").trim();
    if (!reportText) {
      await sendMessage(chatId,
        `📝 اكتب مشكلتك بعد الأمر مباشرة:\n` +
        `<code>/report الفيديو لا يعمل في حلقة 5 من One Piece</code>`
      );
      return;
    }

    try {
      await sbInsert("reports", {
        type:              "bug",
        message:           reportText,
        page:              "telegram",
        user_display_name: `${userName} (TG:${chatId})`,
      });
    } catch { /* silent */ }

    await sendMessage(chatId,
      `✅ <b>تم استلام بلاغك!</b>\n\n` +
      `📝 ${reportText}\n\n` +
      `سنعمل على حلّه قريباً شكراً لك 🙏`
    );

    if (adminId && String(adminId) !== String(chatId)) {
      await sendMessage(adminId,
        `📨 <b>بلاغ جديد من تيليجرام</b>\n\n` +
        `👤 <b>المرسل:</b> ${userName} (<code>${chatId}</code>)\n` +
        `📝 <b>الرسالة:</b>\n${reportText}\n\n` +
        `🕐 ${new Date().toLocaleString("ar-SA", { timeZone: "Asia/Riyadh" })}`
      );
    }
    return;
  }

  /* رسالة عادية → أرسلها للأدمن وردّ على المستخدم */
  try {
    await sbInsert("reports", {
      type:              "other",
      message:           text || "[رسالة بدون نص]",
      page:              "telegram",
      user_display_name: `${userName} (TG:${chatId})`,
    });
  } catch { /* silent */ }

  await sendMessage(chatId,
    `💬 شكراً <b>${userName}</b>، وصلتنا رسالتك!\n\n` +
    `سنردّ عليك قريباً. يمكنك أيضاً:\n` +
    `• /report — للإبلاغ عن مشكلة تقنية\n` +
    `• /help — للمساعدة`
  );

  if (adminId && String(adminId) !== String(chatId)) {
    await sendMessage(adminId,
      `💬 <b>رسالة جديدة من تيليجرام</b>\n\n` +
      `👤 <b>المرسل:</b> ${userName} (<code>${chatId}</code>)\n` +
      `📝 <b>الرسالة:</b>\n${text}\n\n` +
      `🕐 ${new Date().toLocaleString("ar-SA", { timeZone: "Asia/Riyadh" })}`
    );
  }
}

/* ── Webhook endpoint ─────────────────────────────────────────────────── */

router.post("/api/telegram/webhook", async (req: Request, res: Response) => {
  res.sendStatus(200);
  try {
    await handleUpdate(req.body);
  } catch (e: any) {
    console.error("[telegram] webhook error:", e.message);
  }
});

/* ── Status endpoint ──────────────────────────────────────────────────── */

router.get("/api/telegram/status", async (_req: Request, res: Response) => {
  const tok = await getToken();
  if (!tok) {
    res.json({ ok: false, error: "TELEGRAM_BOT_TOKEN غير موجود — أضفه عبر /api/admin/setup" });
    return;
  }
  try {
    const r    = await fetch(`https://api.telegram.org/bot${tok}/getMe`, { signal: AbortSignal.timeout(8_000) });
    const data = await r.json() as any;
    const webhookR = await fetch(`https://api.telegram.org/bot${tok}/getWebhookInfo`, { signal: AbortSignal.timeout(8_000) });
    const webhook  = await webhookR.json() as any;
    res.json({
      ok:               data.ok,
      bot:              data.result,
      telegramError:    data.ok ? undefined : (data.description || "unknown"),
      errorCode:        data.ok ? undefined : data.error_code,
      webhook:          webhook.result,
      adminConfigured:  !!(await getAdminChatId()),
      channelConfigured: !!process.env.TELEGRAM_CHANNEL_ID,
      channelId:        process.env.TELEGRAM_CHANNEL_ID || null,
    });
  } catch (e: any) {
    res.status(500).json({ ok: false, error: e.message });
  }
});

/* ── Test episode notification ────────────────────────────────────────── */

router.post("/api/telegram/notify-test", async (_req: Request, res: Response) => {
  const channelId = process.env.TELEGRAM_CHANNEL_ID;
  if (!channelId) {
    res.status(400).json({
      ok:    false,
      error: "TELEGRAM_CHANNEL_ID غير مضبوط — أضفه في Secrets",
    });
    return;
  }
  const tok2 = await getToken();
  if (!tok2) {
    res.status(400).json({ ok: false, error: "TELEGRAM_BOT_TOKEN غير موجود — أضفه عبر /api/admin/setup" });
    return;
  }

  // Goodbye, Lara — عينة الاختبار تطابق المثال الذي طلبه المستخدم.
  const testAnilistId = 177637;
  const testTitle     = "Sayonara Lara";
  const testEp        = 4;

  const poster  = await fetchAnimePoster(testAnilistId);
  const caption = buildEpisodeCaption(testTitle, testEp);

  const photoSent = poster ? await sendChannelPhoto(poster, caption) : false;
  const sent = photoSent || await sendMessage(channelId, caption);
  if (!sent) {
    res.status(502).json({
      ok: false,
      error: "تعذر إرسال الاختبار إلى القناة. تحقق من صلاحية البوت ورابط البوستر.",
      channelId,
      photoSent: false,
      posterAvailable: !!poster,
    });
    return;
  }

  res.json({ ok: true, channelId, hasPoster: photoSent, posterAvailable: !!poster, caption });
});

/* ── Scheduler status & manual trigger ───────────────────────────────── */

router.get("/api/telegram/scheduler", (_req: Request, res: Response) => {
  res.json({
    running:    schedulerRunning,
    intervalMin: INTERVAL_MS / 60_000,
    lastRun:    schedulerLastRun ? new Date(schedulerLastRun * 1000).toISOString() : null,
    nextRun:    schedulerNextRun ? new Date(schedulerNextRun * 1000).toISOString() : null,
    sentToday:  schedulerSentToday,
    tokenOk:    !!(process.env.TELEGRAM_BOT_TOKEN || _cachedToken),
    channelOk:  !!process.env.TELEGRAM_CHANNEL_ID,
  });
});

router.post("/api/telegram/scheduler/run-now", async (_req: Request, res: Response) => {
  const runTok = await getToken();
  if (!runTok || !process.env.TELEGRAM_CHANNEL_ID) {
    res.status(400).json({ ok: false, error: "token أو channel غير مضبوط" });
    return;
  }
  res.json({ ok: true, message: "تشغيل الدورة يدوياً..." });
  runSchedulerCycle().catch(e => console.warn("[scheduler] manual run error:", e.message));
});

export default router;
