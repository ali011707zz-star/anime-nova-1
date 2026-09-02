/**
 * telegram.ts — بوت تيليجرام لـ Anime NOVA
 * يستقبل رسائل المستخدمين، يرد عليهم، ويحوّل التقارير للأدمن
 * ويرسل تنبيهات الحلقات الجديدة للقناة تلقائياً
 */

import { Router, type Request, type Response } from "express";
import { sbInsert, sbSelect } from "../lib/supabaseClient.js";
import { getEnvOrDb } from "../lib/dbConfig.js";
import { saveNotification } from "./notifications.js";
import { sendNewEpisodePush } from "./push.js";

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

/* ── helpers ──────────────────────────────────────────────────────────── */

async function sendMessage(chatId: number | string, text: string, extra: Record<string, any> = {}) {
  const tok = await getToken();
  if (!tok) return;
  const payload = { chat_id: chatId, text, parse_mode: "HTML", ...extra };
  const response = await fetch(`https://api.telegram.org/bot${tok}/sendMessage`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(payload),
    signal: AbortSignal.timeout(8_000),
  }).catch(e => { console.warn("[telegram] sendMessage failed:", e.message); return null; });
  if (response && !response.ok) {
    const body = await response.json().catch(() => ({})) as any;
    console.warn("[telegram] sendMessage API error:", body?.description);
  }
}

async function sendChannelPhoto(photoUrl: string, caption: string) {
  const channelId = process.env.TELEGRAM_CHANNEL_ID;
  const tok = await getToken();
  if (!channelId || !tok) return;
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
  }).catch(e => { console.warn("[telegram] sendChannelPhoto failed:", e.message); return null; });
  if (r && !r.ok) {
    const body = await r.json().catch(() => ({})) as any;
    console.warn("[telegram] sendChannelPhoto API error:", body?.description);
  }
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

/* ── وظيفة التنبيه الرئيسية (تُستدعى من anime.ts) ──────────────────── */

export async function notifyNewEpisode(
  anilistId: number,
  title: string,
  ep: number,
  posterUrl?: string,
) {
  const key = `${anilistId}:${ep}`;
  if (notifiedEpisodes.has(key)) return; // لا تُرسل مرتين
  notifiedEpisodes.add(key);

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

  await sendNewEpisodePush({
    animeId: anilistId,
    title,
    episode: ep,
    posterUrl: poster ?? undefined,
  }).catch(() => {});

  const channelId = process.env.TELEGRAM_CHANNEL_ID;
  const tok = await getToken();
  if (!channelId || !tok) return;

  const caption =
    `🌸 <b>حلقة جديدة وصلت!</b>\n\n` +
    `✨ <b>${title}</b>\n` +
    `🎬 الحلقة <b>${ep}</b>\n\n` +
    `✅ <b>متاحة الآن للمشاهدة</b> على Anime NOVA 🎮\n\n` +
    `<i>شاهد بجودة عالية · بدون إعلانات 🚀</i>`;

  if (poster) {
    await sendChannelPhoto(poster, caption);
  } else {
    await sendMessage(channelId, caption);
  }
  console.log(`[telegram] ✅ تنبيه الحلقة أُرسل → ${title} ح${ep}`);
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

async function wasNotified(anilistId: number, ep: number): Promise<boolean> {
  const key = `tg_notify:${anilistId}:${ep}`;
  if (notifiedEpisodes.has(key)) return true;
  try {
    const rows = await sbSelect("app_config", { key: `eq.${key}` });
    return Array.isArray(rows) && rows.length > 0;
  } catch { return false; }
}

async function markNotified(anilistId: number, ep: number): Promise<void> {
  const key = `tg_notify:${anilistId}:${ep}`;
  notifiedEpisodes.add(key);
  try {
    await sbInsert("app_config", { key, value: String(Date.now()) });
  } catch { /* silent — in-memory Set is enough */ }
}

/* ── فحص توفر الحلقة في AnimeWitcher ───────────────────────────────────── */

const AW_HF = "https://1we323-witcher.hf.space";
const _awEpCache = new Map<string, { available: boolean; ts: number }>();

async function checkAnimeWitcherEp(title: string, ep: number): Promise<boolean> {
  const cacheKey = `${title.toLowerCase()}:${ep}`;
  const hit = _awEpCache.get(cacheKey);
  if (hit && Date.now() - hit.ts < 10 * 60_000) return hit.available;

  try {
    const searchRes = await fetch(
      `${AW_HF}/api/search?q=${encodeURIComponent(title)}`,
      { headers: { "User-Agent": "NovaBot/1.0", Accept: "application/json" },
        signal: AbortSignal.timeout(8_000) }
    );
    if (!searchRes.ok) { _awEpCache.set(cacheKey, { available: false, ts: Date.now() }); return false; }
    const results: any[] = await searchRes.json().catch(() => []);
    if (!results.length) { _awEpCache.set(cacheKey, { available: false, ts: Date.now() }); return false; }

    // أقرب نتيجة
    const anime = results[0];
    const animeId = anime?.id || anime?.anime_id || "";
    if (!animeId) { _awEpCache.set(cacheKey, { available: false, ts: Date.now() }); return false; }

    const epsRes = await fetch(
      `${AW_HF}/api/episodes?id=${encodeURIComponent(String(animeId))}`,
      { headers: { "User-Agent": "NovaBot/1.0", Accept: "application/json" },
        signal: AbortSignal.timeout(8_000) }
    );
    if (!epsRes.ok) { _awEpCache.set(cacheKey, { available: false, ts: Date.now() }); return false; }
    const episodes: any[] = await epsRes.json().catch(() => []);
    const found = episodes.some((e: any) => {
      const num = parseInt(String(e.episode_number ?? e.ep_num ?? e.number ?? "0"), 10);
      return num === ep;
    });
    _awEpCache.set(cacheKey, { available: found, ts: Date.now() });
    return found;
  } catch {
    _awEpCache.set(cacheKey, { available: false, ts: Date.now() });
    return false;
  }
}

/* ── بناء رسالة الإشعار ────────────────────────────────────────────────── */

function buildCaption(media: any, ep: number): string {
  const title  = media.title?.english || media.title?.romaji || media.title?.native || "أنمي";
  const romaji = media.title?.romaji || "";
  const genres = (media.genres || []).slice(0, 3).join(" · ");

  const lines: string[] = [
    `🌸 <b>حلقة جديدة متاحة الآن!</b>`,
    ``,
    `✨ <b>${title}</b>`,
  ];
  if (romaji && romaji !== title) lines.push(`<i>${romaji}</i>`);
  lines.push(`🎬 الحلقة <b>${ep}</b>`);
  if (genres) lines.push(`🎭 ${genres}`);
  lines.push(``);
  lines.push(`✅ <b>متاحة الآن على Anime NOVA</b> 🎮`);
  lines.push(``);
  lines.push(`🎉 <b>مشاهدة ممتعة!</b> 🌟`);
  return lines.join("\n");
}

/* ── حالة الـ scheduler ──────────────────────────────────────────────── */

let schedulerFirstRun = true;  // أول دورة: بذر الكاش بدون إرسال لتفادي إغراق Telegram
let schedulerRunning  = false;
let schedulerLastRun  = 0;
let schedulerNextRun  = 0;
let schedulerSentToday = 0;
let schedulerTimer: ReturnType<typeof setTimeout> | null = null;

const INTERVAL_MS = 10 * 60 * 1000; // كل 10 دقائق (كان 30)

/* ── polling مباشر لـ AnimeSlayer API (بدون المرور على الـ cached endpoint) ── */
// السبب: الـ endpoint /api/anime/anslayer-latest لديه TTL كاش 15 دقيقة يرجع
// مبكراً بدون فحص الحلقات الجديدة، بينما الـ scheduler يعمل كل 10 دقائق.
// الحل: استدعاء AnimeSlayer API مباشرة + تتبع الإشعارات المرسلة عبر DB.

const ANSLAYER_SCHED_BASE  = "https://anslayer.com/anime/public";
const ANSLAYER_SCHED_CID   = "android-app2";
const ANSLAYER_SCHED_CSEC  = "7befba6263cc14c90d2f1d6da2c5cf9b251bfbbd";

async function pollAnimeSlayerDirect(): Promise<void> {
  try {
    const json = JSON.stringify({ list_type: "latest_updated_episode_new", page: 1 });
    const url  = `${ANSLAYER_SCHED_BASE}/animes/get-published-animes?json=${encodeURIComponent(json)}`;
    const resp = await fetch(url, {
      headers: {
        "Client-Id":     ANSLAYER_SCHED_CID,
        "Client-Secret": ANSLAYER_SCHED_CSEC,
        "User-Agent":    "okhttp/4.12.0",
      },
      signal: AbortSignal.timeout(25_000),
    });
    if (!resp.ok) {
      console.warn(`[scheduler] AnimeSlayer API HTTP ${resp.status}`);
      return;
    }
    const data = await resp.json() as any;
    const list: any[] = data?.response?.data || [];

    if (!list.length) {
      console.log("[scheduler] 🔄 AnimeSlayer: لا بيانات في الرد");
      return;
    }

    // ── أول تشغيل بعد restart: نبذر الكاش فقط بدون إرسال ──────────────────
    // لتفادي إغراق Telegram بكل الحلقات الحالية دفعة واحدة
    if (schedulerFirstRun) {
      schedulerFirstRun = false;
      let seeded = 0;
      for (const item of list) {
        const animeId = parseInt(item.anime_id, 10);
        const epMatch = String(item.latest_episode_name || "").match(/(\d+)/);
        const ep      = epMatch ? parseInt(epMatch[1], 10) : null;
        if (!animeId || !ep) continue;
        if (!(await wasNotified(animeId, ep))) {
          await markNotified(animeId, ep);
          seeded++;
        }
      }
      console.log(`[scheduler] 🌱 AnimeSlayer seed: ${seeded} حلقة موجودة مُسجَّلة (لن تُرسل) — الدورات القادمة ستُرسل الجديد فقط`);
      return;
    }

    let sent = 0;
    for (const item of list) {
      const animeId = parseInt(item.anime_id, 10);
      const epMatch = String(item.latest_episode_name || "").match(/(\d+)/);
      const ep      = epMatch ? parseInt(epMatch[1], 10) : null;
      if (!animeId || !ep) continue;

      // تحقق من DB + ذاكرة العملية — لا ترسل مرتين
      if (await wasNotified(animeId, ep)) continue;

      const name  = item.anime_name  || "أنمي";
      const cover = item.anime_cover_image_url || "";

      console.log(`[scheduler] 🎯 AnimeSlayer جديد: ${name} ح${ep}`);

      try {
        await notifyNewEpisode(animeId, name, ep, cover || undefined);
        sent++;
      } catch (e: any) {
        console.warn(`[scheduler] notify error (${name}): ${e.message}`);
      }

      // فاصل بين الرسائل لتجنب Telegram rate-limit (max ~1 msg/sec)
      await new Promise(r => setTimeout(r, 1_500));
    }

    if (sent > 0) {
      console.log(`[scheduler] 📨 AnimeSlayer: أُرسل ${sent} إشعار`);
    } else {
      console.log("[scheduler] 📭 AnimeSlayer: لا حلقات جديدة");
    }
  } catch (e: any) {
    console.warn("[scheduler] AnimeSlayer direct poll error:", e.message);
  }
}

/* ── الدورة الواحدة ────────────────────────────────────────────────────── */

async function runSchedulerCycle(): Promise<void> {
  const tok = await getToken();
  const telegramReady = Boolean(tok && process.env.TELEGRAM_CHANNEL_ID);
  const pushDevices = await sbSelect("mobile_push_tokens", { disabled_at: "is.null" }, { limit: 1 });
  if (!telegramReady && !pushDevices.length) return;

  // ── 1. فحص AnimeSlayer مباشرة (بدون الـ cached endpoint) ──
  await pollAnimeSlayerDirect();

  // ── 2. فحص AniList airing schedules (انتشار أوسع - لأنمي غير مُدرج في AnimeSlayer) ──
  const now  = Math.floor(Date.now() / 1000);
  const from = schedulerLastRun > 0
    ? schedulerLastRun
    : now - (INTERVAL_MS / 1000) - 60;

  schedulerLastRun = now;
  schedulerNextRun = now + INTERVAL_MS / 1000;

  console.log(`[scheduler] 🔍 فحص AiringSchedules من ${new Date(from * 1000).toISOString()} → الآن`);

  const schedules = await fetchAiringSchedules(from - 60, now + 60);

  let sent = 0;
  for (const item of schedules) {
    const media = item.media;
    if (!media) continue;
    if (media.type !== "ANIME") continue;
    if (media.isAdult) continue;

    const anilistId = media.id as number;
    const ep        = item.episode as number;

    if (await wasNotified(anilistId, ep)) continue;

    const titleToCheck = media.title?.romaji || media.title?.english || "";
    if (!titleToCheck) continue;

    // ── فحص توفر الحلقة في AnimeWitcher مع timeout قصير (5 ثوانٍ فقط) ──
    // إذا فشل الفحص أو انتهت المهلة → أرسل الإشعار مباشرة (لا تتأخر)
    let awAvailable = false;
    try {
      const awPromise = checkAnimeWitcherEp(titleToCheck, ep);
      awAvailable = await Promise.race([
        awPromise,
        new Promise<boolean>(resolve => setTimeout(() => resolve(true), 5_000)), // fallback: أرسل بعد 5s
      ]);
    } catch {
      awAvailable = true; // خطأ → أرسل على أي حال
    }

    if (!awAvailable) {
      console.log(`[scheduler] ⏳ AnimeWitcher لم يُضف بعد: ${titleToCheck} ح${ep} — تخطّي`);
      notifiedEpisodes.delete(`tg_notify:${anilistId}:${ep}`);
      continue;
    }

    console.log(`[scheduler] ✨ إرسال الإشعار: ${titleToCheck} ح${ep}`);

    const poster  = media.coverImage?.extraLarge || media.coverImage?.large || null;
    const caption = buildCaption(media, ep);
    const title   = media.title?.english || media.title?.romaji || "أنمي";
    const titleAr = media.title?.native || title;

    await saveNotification({
      type: "anime_episode",
      title,
      title_ar: titleAr,
      body: `الحلقة ${ep} متاحة الآن`,
      image_url: poster ?? undefined,
      link_path: `/watch?id=${anilistId}&ep=${ep}`,
      anime_id: anilistId,
      episode_num: ep,
    }).catch(() => {});

    await sendNewEpisodePush({
      animeId: anilistId,
      title,
      episode: ep,
      posterUrl: poster ?? undefined,
    }).catch((pushError: any) => {
      console.warn(`[scheduler] mobile push failed: ${pushError?.message || String(pushError)}`);
    });

    if (poster) {
      await sendChannelPhoto(poster, caption);
    } else {
      await sendMessage(process.env.TELEGRAM_CHANNEL_ID!, caption);
    }

    await markNotified(anilistId, ep);
    sent++;
    schedulerSentToday++;

    console.log(`[scheduler] ✅ أُرسل → ${title} ح${ep}`);

    if (sent < schedules.length) {
      await new Promise(r => setTimeout(r, 1_500));
    }
  }

  if (sent === 0) {
    console.log("[scheduler] 📭 لا حلقات جديدة في هذه الدورة");
  } else {
    console.log(`[scheduler] 📨 أُرسلت ${sent} إشعارات`);
  }
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

  // One Piece ح1 كمثال تجريبي
  const testAnilistId = 21;
  const testTitle     = "ون بيس";
  const testEp        = 1;

  const poster  = await fetchAnimePoster(testAnilistId);
  const caption =
    `🎬 <b>اسم الأنمي:</b> ${testTitle}\n` +
    `📺 <b>الحلقة:</b> ${testEp} (تجريبي)\n` +
    `✨ تم إضافة الحلقة الجديدة\n\n` +
    `مشاهدة ممتعة 💙`;

  if (poster) {
    await sendChannelPhoto(poster, caption);
  } else {
    await sendMessage(channelId, caption);
  }

  res.json({ ok: true, channelId, hasPoster: !!poster, caption });
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
