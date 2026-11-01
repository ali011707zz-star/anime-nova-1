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

function escapeTelegramHtml(value: unknown): string {
  return String(value ?? "")
    .replace(/&/g, "&amp;")
    .replace(/</g, "&lt;")
    .replace(/>/g, "&gt;")
    .replace(/"/g, "&quot;");
}

function cleanSynopsis(value: unknown): string {
  return String(value ?? "")
    .replace(/<br\s*\/?\s*>/gi, " ")
    .replace(/<\/(?:p|div|li)>/gi, " ")
    .replace(/<[^>]*>/g, " ")
    .replace(/\[([^\]]+)\]\([^)]+\)/g, "$1")
    .replace(/&nbsp;/gi, " ")
    .replace(/&amp;/gi, "&")
    .replace(/&quot;/gi, '"')
    .replace(/&#39;|&#039;/gi, "'")
    .replace(/\s+/g, " ")
    .trim();
}

function truncateSynopsis(value: string, maxChars = 400): string {
  const text = cleanSynopsis(value);
  if (text.length <= maxChars) return text;
  const excerpt = text.slice(0, maxChars - 1);
  const boundary = excerpt.lastIndexOf(" ");
  return `${(boundary > maxChars * 0.65 ? excerpt.slice(0, boundary) : excerpt).trim()}…`;
}

const synopsisTranslationCache = new Map<string, { value: string | null; expiresAt: number }>();

async function translateSynopsisToArabic(value: unknown): Promise<string | null> {
  const source = cleanSynopsis(value);
  if (!source) return null;
  if (/[\u0600-\u06FF]/.test(source)) return truncateSynopsis(source);

  const key = source.slice(0, 3000);
  const cached = synopsisTranslationCache.get(key);
  if (cached && cached.expiresAt > Date.now()) return cached.value;
  if (cached) synopsisTranslationCache.delete(key);

  try {
    const port = Number(process.env.PORT) || 5000;
    const url = new URL(`/api/anime/translate`, `http://127.0.0.1:${port}`);
    url.searchParams.set("text", key);
    url.searchParams.set("from", "en");
    url.searchParams.set("to", "ar");
    url.searchParams.set("kind", "synopsis");
    const response = await fetch(url, {
      headers: { "X-Internal": "1" },
      signal: AbortSignal.timeout(12_000),
    });
    if (!response.ok) throw new Error(`synopsis translation HTTP ${response.status}`);
    const payload = await response.json() as any;
    const translated = cleanSynopsis(payload?.translated);
    const result = /[\u0600-\u06FF]/.test(translated) ? truncateSynopsis(translated) : null;
    synopsisTranslationCache.set(key, {
      value: result,
      expiresAt: Date.now() + (result ? 30 * 24 * 60 * 60_000 : 5 * 60_000),
    });
    while (synopsisTranslationCache.size > 300) {
      const oldest = synopsisTranslationCache.keys().next().value;
      if (oldest === undefined) break;
      synopsisTranslationCache.delete(oldest);
    }
    return result;
  } catch {
    synopsisTranslationCache.set(key, { value: null, expiresAt: Date.now() + 5 * 60_000 });
    return null;
  }
}

function buildEpisodeCaption(title: string, ep: number, synopsis?: string | null): string {
  const summary = synopsis ? truncateSynopsis(synopsis) : "";
  return [
    `🌸 <b>حلقة جديدة وصلت!</b>`,
    ``,
    `✨ ${escapeTelegramHtml(title)}`,
    `🎬 الحلقة ${escapeTelegramHtml(ep)}`,
    ...(summary ? [``, `📖 <b>القصة:</b> ${escapeTelegramHtml(summary)}`] : []),
    ``,
    `✅ متاحة الآن للمشاهدة على Anime NOVA 🎮`,
    ``,
    `شاهد بجودة عالية · بدون إعلانات 🚀`,
    `🔗 ${SITE_URL}`,
  ].join("\n");
}

/* ── helpers ──────────────────────────────────────────────────────────── */

async function sendMessage(chatId: number | string, text: string, extra: Record<string, any> = {}): Promise<boolean> {
  const tok = await getToken();
  if (!tok) return false;
  const payload = { chat_id: chatId, text, parse_mode: "HTML", ...extra };
  const response = await fetch(`https://api.telegram.org/bot${tok}/sendMessage`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(payload),
    signal: AbortSignal.timeout(8_000),
  }).catch(e => { console.warn("[telegram] sendMessage failed:", e.message); return null; });
  if (!response) return false;
  const body = await response.json().catch(() => ({})) as any;
  if (!response.ok || body?.ok !== true) {
    console.warn("[telegram] sendMessage API error:", body?.description || response.status);
    return false;
  }
  return true;
}

async function sendChannelPhoto(photoUrl: string, caption: string): Promise<boolean> {
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
  }).catch(e => { console.warn("[telegram] sendChannelPhoto failed:", e.message); return null; });
  if (!r) return false;
  const body = await r.json().catch(() => ({})) as any;
  if (!r.ok || body?.ok !== true) {
    console.warn("[telegram] sendChannelPhoto API error:", body?.description || r.status);
    return false;
  }
  return true;
}

type AniListNotificationMetadata = {
  titles: string[];
  coverUrl: string | null;
  synopsis: string | null;
};

const aniListNotificationMetadataCache = new Map<number, {
  expiresAt: number;
  value: AniListNotificationMetadata | null;
}>();

async function fetchAniListNotificationMetadata(anilistId: number): Promise<AniListNotificationMetadata | null> {
  if (!Number.isSafeInteger(anilistId) || anilistId <= 0) return null;
  const cached = aniListNotificationMetadataCache.get(anilistId);
  if (cached && cached.expiresAt > Date.now()) return cached.value;
  if (cached) aniListNotificationMetadataCache.delete(anilistId);

  let value: AniListNotificationMetadata | null = null;
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
        query: `query ($id: Int) { Media(id: $id, type: ANIME) { title { romaji english native } coverImage { extraLarge large } description(asHtml: false) } }`,
        variables: { id: anilistId },
      }),
      signal: AbortSignal.timeout(8_000),
    });
    if (res.ok) {
      const data = await res.json() as any;
      const media = data?.data?.Media;
      if (media) {
        const cover = media.coverImage;
        value = {
          titles: [media.title?.english, media.title?.romaji, media.title?.native]
            .filter((item: unknown): item is string => typeof item === "string" && item.trim().length > 0),
          coverUrl: cover?.extraLarge ?? cover?.large ?? null,
          synopsis: typeof media.description === "string" ? media.description : null,
        };
      }
    }
  } catch {}

  aniListNotificationMetadataCache.set(anilistId, {
    expiresAt: Date.now() + (value ? 24 * 60 * 60_000 : 5 * 60_000),
    value,
  });
  while (aniListNotificationMetadataCache.size > 300) {
    const oldest = aniListNotificationMetadataCache.keys().next().value;
    if (oldest === undefined) break;
    aniListNotificationMetadataCache.delete(oldest);
  }
  return value;
}

function notificationTitleMatches(title: string, candidates: string[]): boolean {
  const normalize = (value: string) => value.normalize("NFKD").toLocaleLowerCase()
    .replace(/[^\p{L}\p{N}]+/gu, "");
  const target = normalize(title);
  if (!target) return false;
  for (const candidate of candidates) {
    const normalized = normalize(candidate);
    if (normalized && (normalized === target || normalized.includes(target) || target.includes(normalized))) return true;
  }
  const tokens = (value: string) => new Set(
    value.normalize("NFKD").toLocaleLowerCase().match(/[\p{L}\p{N}]+/gu) || [],
  );
  const targetTokens = tokens(title);
  if (!targetTokens.size) return false;
  return candidates.some(candidate => {
    const candidateTokens = tokens(candidate);
    if (!candidateTokens.size) return false;
    const overlap = [...targetTokens].filter(token => candidateTokens.has(token)).length;
    return overlap / Math.max(targetTokens.size, candidateTokens.size) >= 0.68;
  });
}

async function fetchAnimePoster(anilistId: number): Promise<string | null> {
  return (await fetchAniListNotificationMetadata(anilistId))?.coverUrl ?? null;
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
  synopsis?: string,
): Promise<boolean> {
  const key = `${anilistId}:${ep}`;
  if (notifiedEpisodes.has(key)) return true; // لا تُرسل مرتين
  notifiedEpisodes.add(key);

  // Keep the existing poster for in-app records and push notifications.
  // Telegram can independently prefer a title-verified AniList extra-large cover.
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
    console.warn(`[scheduler] episode push queue failed title=${title} episode=${ep}:`, error instanceof Error ? error.message : String(error));
    return null;
  });
  if (!pushResult?.queueReady) {
    notifiedEpisodes.delete(key);
    console.warn(`[scheduler] episode push queue unavailable title=${title} episode=${ep}`);
    return false;
  }
  await markNotified(anilistId, ep);

  const channelId = process.env.TELEGRAM_CHANNEL_ID;
  const tok = await getToken();
  if (!channelId || !tok) return true;

  const metadata = await fetchAniListNotificationMetadata(anilistId);
  const matchingMetadata = metadata && notificationTitleMatches(title, metadata.titles) ? metadata : null;
  const telegramPoster = matchingMetadata?.coverUrl || poster;
  const arabicSynopsis = await translateSynopsisToArabic(synopsis || matchingMetadata?.synopsis);
  const caption = buildEpisodeCaption(title, ep, arabicSynopsis);

  let telegramSent = telegramPoster ? await sendChannelPhoto(telegramPoster, caption) : false;
  if (!telegramSent) telegramSent = await sendMessage(channelId, caption);
  if (!telegramSent) console.warn(`[telegram] episode channel send failed title=${title} episode=${ep}`);
  console.log(`[scheduler] ✅ episode broadcast queued title=${title} episode=${ep} devices=${pushResult.targets} accepted=${pushResult.delivered} pending=${pushResult.pending} failed=${pushResult.failed}`);
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
        description(asHtml: false)
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

/* ── حالة الـ scheduler ──────────────────────────────────────────────── */

let schedulerFirstRun = true;  // أول دورة: بذر الكاش بدون إرسال لتفادي إغراق Telegram
let schedulerRunning  = false;
let schedulerLastRun  = 0;
let schedulerNextRun  = 0;
let schedulerSentToday = 0;
let schedulerTimer: ReturnType<typeof setTimeout> | null = null;

const INTERVAL_MS = 10 * 60 * 1000; // كل 10 دقائق (كان 30)

/* ── poll the normalized AnimeSlayer latest feed ── */

async function pollAnimeSlayerDirect(): Promise<void> {
  try {
    const resp = await fetch(`${SITE_URL}api/anime/anslayer-latest`, {
      headers: { "User-Agent": "NovaBot/1.0", Accept: "application/json" },
      signal: AbortSignal.timeout(25_000),
    });
    if (!resp.ok) {
      console.warn(`[scheduler] latest episodes feed HTTP ${resp.status}`);
      return;
    }
    const data = await resp.json() as any;
    const list: any[] = Array.isArray(data?.items) ? data.items : [];
    if (!list.length) {
      console.log("[scheduler] AnimeSlayer latest feed returned no episodes");
      return;
    }

    if (schedulerFirstRun) {
      schedulerFirstRun = false;
      let seeded = 0;
      for (const item of list) {
        const animeId = Number(item.animeId || item.anilistId || item.anslayerId);
        const ep = Number(item.episode);
        if (!animeId || !ep) continue;
        if (!(await wasNotified(animeId, ep))) {
          await markNotified(animeId, ep);
          seeded++;
        }
      }
      console.log(`[scheduler] AnimeSlayer seed: ${seeded} existing episodes recorded without sending`);
      return;
    }

    let sent = 0;
    for (const item of list) {
      const animeId = Number(item.animeId || item.anilistId || item.anslayerId);
      const ep = Number(item.episode);
      if (!animeId || !ep || await wasNotified(animeId, ep)) continue;

      const name = item.english || item.romaji || item.name || "أنمي";
      const cover = item.cover || "";
      console.log(`[scheduler] AnimeSlayer new episode: ${name} ep${ep}`);
      try {
        if (await notifyNewEpisode(animeId, name, ep, cover || undefined)) sent++;
      } catch (error: any) {
        console.warn(`[scheduler] notify error (${name}): ${error.message}`);
      }
      await new Promise(resolve => setTimeout(resolve, 1_500));
    }

    if (sent > 0) {
      schedulerSentToday += sent;
      console.log(`[scheduler] AnimeSlayer sent ${sent} notifications`);
    } else {
      console.log("[scheduler] AnimeSlayer: no new episodes");
    }
  } catch (error: any) {
    console.warn("[scheduler] AnimeSlayer feed poll error:", error.message);
  }
}
/* ── الدورة الواحدة ────────────────────────────────────────────────────── */

async function runSchedulerCycle(): Promise<void> {
  const tok = await getToken();
  const telegramReady = Boolean(tok && process.env.TELEGRAM_CHANNEL_ID);
  const pushDevices = await sbSelect("mobile_push_tokens", { disabled_at: "is.null" }, { limit: 1 });
  if (!telegramReady && !pushDevices.length) return;

  const now = Math.floor(Date.now() / 1000);
  schedulerLastRun = now;
  schedulerNextRun = now + INTERVAL_MS / 1000;
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
