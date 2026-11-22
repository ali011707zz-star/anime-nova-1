import { recordDubbedRecentRelease } from "./dubbed.js";
/**
 * telegram.ts — بوت تيليجرام لـ Anime NOVA
 * يستقبل رسائل المستخدمين، يرد عليهم، ويحوّل التقارير للأدمن
 * ويرسل تنبيهات الحلقات الجديدة للقناة تلقائياً
 */

import { createHmac, timingSafeEqual } from "node:crypto";
import { Router, type Request, type Response } from "express";
import { checkAppSecret } from "../lib/security.js";
import { getEmailUser } from "../auth/emailAuth.js";
import { isWebAdmin } from "./webAdmin.js";
import { sbInsert, sbSelect , sbUpsert } from "../lib/supabaseClient.js";
import { getEnvOrDb } from "../lib/dbConfig.js";
import { saveNotification } from "./notifications.js";
import { sendNewEpisodePushDetailed, sendSubscribedAlertPush } from "./push.js";
import { detectNewEpisodesByWatermark, parseCartoonAlertKey } from "../lib/pushAlertsLogic.mjs";
import { formatTemplatesMessage } from "../lib/telegramStorageLogic.mjs";
import {
  handleStorageChannelPost,
  isStorageChannel,
  softDeleteTelegramEpisode,
  setPendingAdminPromptMsgId,
  hasPendingAdminUpload,
  applyAdminReplyToPending,
  applyAdminCallbackToPending,
  getLatestPendingSummary,
  cancelLatestPendingUpload,
  type ChannelIngestResult,
} from "../lib/telegramStorage.js";

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

const APK_DOWNLOAD_URL = "https://animenovaa.duckdns.org/Anime-Nova.apk";
const TV_DOWNLOADER_CODE = "2576388";

type TelegramInlineMarkup = {
  inline_keyboard: Array<Array<{ text: string; url: string }>>;
};

type EpisodeWatchMeta = {
  romaji?: string;
  english?: string;
  anslayerId?: number;
  site?: string;
  cover?: string;
};

function buildEpisodeWatchUrl(anilistId: number, ep: number, meta?: EpisodeWatchMeta): string {
  const base = SITE_URL.replace(/\/+$/, "");
  if (Number.isFinite(anilistId) && anilistId > 0) {
    const safeEp = Math.max(1, ep);
    const qs = new URLSearchParams({
      anime: String(anilistId),
      anilistId: String(anilistId),
      ep: String(safeEp),
      totalEps: String(safeEp),
      fromLatest: "1",
    });
    if (meta?.anslayerId && meta.anslayerId > 0) qs.set("anslayerId", String(meta.anslayerId));
    const titleVal = (meta?.romaji || meta?.english || "").trim();
    const engVal = (meta?.english || "").trim();
    if (titleVal) qs.set("title", titleVal);
    if (engVal) qs.set("english", engVal);
    if (meta?.site) qs.set("site", meta.site);
    return `${base}/watch?${qs.toString()}`;
  }
  return base;
}

function buildEpisodeMarkup(anilistId: number, ep: number, meta?: EpisodeWatchMeta): TelegramInlineMarkup {
  return {
    inline_keyboard: [
      [
        { text: "▶️ شاهد الحلقة الآن", url: buildEpisodeWatchUrl(anilistId, ep, meta) },
        { text: "📲 تحميل التطبيق", url: APK_DOWNLOAD_URL },
      ],
    ],
  };
}

function buildEpisodeCaption(title: string, ep: number, anilistId = 0, meta?: EpisodeWatchMeta): string {
  const watchUrl = buildEpisodeWatchUrl(anilistId, ep, {
    ...meta,
    romaji: meta?.romaji || title,
    english: meta?.english || title,
  });
  return [
    `🍿 <b>حان وقت المتعة! حلقة جديدة من أنميك المفضل أصبحت متاحة الآن على نوفا 🔥</b>`,
    ``,
    `🎬 <b>${escapeTelegramHtml(title)}</b>`,
    `🎞️ <b>الحلقة ${escapeTelegramHtml(ep)}</b> · مترجمة بأعلى جودة وبدون إعلانات`,
    ``,
    `▶️ <b>شاهد الحلقة مباشرة:</b> <a href="${escapeTelegramHtml(watchUrl)}">اضغط هنا لفتح الحلقة ${escapeTelegramHtml(ep)}</a>`,
    ``,
    `━━━━━━━━━━━━━━━`,
    `📱 <b>تطبيق الهاتف (APK):</b> <a href="${APK_DOWNLOAD_URL}">تحميل مباشر</a>`,
    `📺 <b>كود التلفاز (Downloader):</b> <code>${TV_DOWNLOADER_CODE}</code>`,
  ].join("\n");
}

async function sendMessageDetailed(chatId: number | string, text: string, extra: Record<string, any> = {}): Promise<{ ok: boolean; messageId?: number }> {
  const tok = await getToken();
  if (!tok) return { ok: false };
  const payload = { chat_id: chatId, text, parse_mode: "HTML", ...extra };
  const response = await fetch(`https://api.telegram.org/bot${tok}/sendMessage`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(payload),
    signal: AbortSignal.timeout(8_000),
  }).catch(() => { console.warn("[telegram] sendMessage request failed"); return null; });
  if (!response) return { ok: false };
  const body = await response.json().catch(() => ({})) as any;
  if (!response.ok || body?.ok !== true) {
    console.warn("[telegram] sendMessage API error:", body?.description || response.status);
    return { ok: false };
  }
  return { ok: true, messageId: typeof body?.result?.message_id === "number" ? body.result.message_id : undefined };
}

async function sendMessage(chatId: number | string, text: string, extra: Record<string, any> = {}) {
  const res = await sendMessageDetailed(chatId, text, extra);
  return res.ok;
}

interface TelegramPosterHint {
  anilistId?: number;
  title?: string;
  englishTitle?: string;
  type?: "ANIME" | "MANGA";
}

const anilistSearchPosterCache = new Map<string, { url: string | null; at: number }>();
const ANILIST_POSTER_SEARCH_TTL = 6 * 60 * 60 * 1000;

async function searchAniListPosterHD(title: string, type: "ANIME" | "MANGA"): Promise<string | null> {
  const cleaned = String(title || "")
    .replace(/\((?:dub|sub|ar|arabic|مدبلج|مترجم)\)/gi, "")
    .replace(/\s+(?:season|part|cour|الموسم|الجزء)\s*\d+.*$/i, "")
    .replace(/\s+/g, " ")
    .trim();
  if (!cleaned || cleaned.length < 2) return null;
  const cacheKey = `${type}:${cleaned.toLowerCase()}`;
  const cached = anilistSearchPosterCache.get(cacheKey);
  if (cached && Date.now() - cached.at < ANILIST_POSTER_SEARCH_TTL) return cached.url;
  try {
    const res = await fetch("https://graphql.anilist.co", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Accept: "application/json",
        Origin: "https://anilist.co",
        Referer: "https://anilist.co/",
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36",
      },
      body: JSON.stringify({
        query: `query ($search: String, $type: MediaType) { Media(search: $search, type: $type) { coverImage { extraLarge large } } }`,
        variables: { search: cleaned, type },
      }),
      signal: AbortSignal.timeout(8_000),
    });
    const data = (await res.json().catch(() => ({}))) as any;
    const img = data?.data?.Media?.coverImage;
    const url = (img?.extraLarge || img?.large || null) as string | null;
    anilistSearchPosterCache.set(cacheKey, { url, at: Date.now() });
    return url;
  } catch {
    return null;
  }
}

function expandHighResPosterCandidates(rawUrl: string): string[] {
  const out: string[] = [];
  const push = (u?: string | null) => {
    const s = String(u || "").trim();
    if (!s || !/^https?:\/\//i.test(s)) return;
    if (!out.includes(s)) out.push(s);
  };
  let unwrapped = rawUrl.trim();
  // Unwrap local VPS proxy URLs to get direct upstream originals
  try {
    const u = new URL(unwrapped);
    if (/\/api\/(?:dubbed\/(?:animezid|carateen|sd2)\/poster|manga\/image)$/i.test(u.pathname)) {
      const inner = u.searchParams.get("url");
      if (inner && /^https?:\/\//i.test(inner)) unwrapped = inner.trim();
    }
    const localTmdb = u.pathname.match(/\/api\/source-catalog\/tmdb-poster\/(?:w\d+|original)\/([A-Za-z0-9_-]+\.(?:jpe?g|png|webp))$/i);
    if (localTmdb) {
      push(`https://image.tmdb.org/t/p/original/${localTmdb[1]}`);
      push(`https://image.tmdb.org/t/p/w780/${localTmdb[1]}`);
    }
  } catch {}

  // Upgrade direct TMDB URLs to full resolution
  const tmdbDirect = unwrapped.match(/^https?:\/\/image\.tmdb\.org\/t\/p\/(w\d+|original)\/([A-Za-z0-9_-]+\.(?:jpe?g|png|webp))(.*)$/i);
  if (tmdbDirect) {
    push(`https://image.tmdb.org/t/p/original/${tmdbDirect[2]}`);
    push(`https://image.tmdb.org/t/p/w780/${tmdbDirect[2]}`);
  }

  // Strip WordPress / Madara thumbnail resize suffixes like -193x278.jpg or -300x430.webp
  const wpStripped = unwrapped.replace(/-\d{2,4}x\d{2,4}(?=\.(?:jpe?g|png|webp)(?:[?#]|$))/i, "");
  if (wpStripped !== unwrapped) {
    push(wpStripped);
  }

  // Upgrade AniList medium/large URLs to extraLarge when possible
  if (/s4\.anilist\.co\/file\/anilistcdn\/media\/(?:anime|manga)\/cover\/(?:small|medium)\//i.test(unwrapped)) {
    push(unwrapped.replace(/\/cover\/(?:small|medium)\//i, "/cover/large/"));
  }

  push(unwrapped);
  push(rawUrl);
  return out;
}

function inferImageReferer(targetUrl: string): string | undefined {
  try {
    const host = new URL(targetUrl).hostname.toLowerCase();
    if (host.includes("mangalik")) return "https://mangalik.net/";
    if (host.includes("azorafly") || host.includes("azora")) return "https://azorafly.com/";
    if (host.includes("animezid")) return "https://animezid.org/";
    if (host.includes("carateen")) return "https://carateen.tv/";
    if (host.includes("spacetoongo")) return "https://spacetoongo.com/";
    if (host.includes("stardima")) return "https://watch-79.stardima.com.im/";
    if (host.includes("anilist")) return "https://anilist.co/";
    return `https://${host}/`;
  } catch {
    return undefined;
  }
}

interface DownloadedPoster {
  buffer: Buffer;
  contentType: string;
  url: string;
  isWebp: boolean;
}

async function fetchImageCandidate(url: string): Promise<DownloadedPoster | null> {
  try {
    const referer = inferImageReferer(url);
    const headers: Record<string, string> = {
      "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36",
      Accept: "image/jpeg,image/png,image/webp,image/*,*/*;q=0.8",
    };
    if (referer) headers.Referer = referer;
    const r = await fetch(url, { headers, signal: AbortSignal.timeout(12_000) });
    if (!r.ok) return null;
    const ctRaw = (r.headers.get("content-type") || "").split(";")[0].trim().toLowerCase();
    const buf = Buffer.from(await r.arrayBuffer());
    if (buf.length < 2_500 || buf.length > 9_500_000) return null;
    const headStr = buf.subarray(0, 64).toString("utf8").trim().toLowerCase();
    if (headStr.startsWith("<!doctype") || headStr.startsWith("<html") || ctRaw.includes("text/html")) return null;
    // Detect magic bytes for JPEG / PNG / WebP
    const isJpeg = buf[0] === 0xff && buf[1] === 0xd8;
    const isPng = buf[0] === 0x89 && buf[1] === 0x50 && buf[2] === 0x4e && buf[3] === 0x47;
    const isWebp = buf.subarray(0, 4).toString("ascii") === "RIFF" && buf.subarray(8, 12).toString("ascii") === "WEBP";
    const contentType = isJpeg ? "image/jpeg" : isPng ? "image/png" : isWebp ? "image/webp" : (ctRaw.startsWith("image/") ? ctRaw : "image/jpeg");
    return { buffer: buf, contentType, url, isWebp };
  } catch {
    return null;
  }
}

async function resolveHighResPosterForTelegram(
  photoUrl: string,
  hint?: TelegramPosterHint,
): Promise<{ downloaded: DownloadedPoster | null; fallbackUrl: string }> {
  const candidates: string[] = [];
  const add = (u?: string | null) => {
    const s = String(u || "").trim();
    if (s && /^https?:\/\//i.test(s) && !candidates.includes(s)) candidates.push(s);
  };

  // For Anime with known AniList ID, prefer AniList extraLarge first
  if (hint?.anilistId && hint.anilistId > 0) {
    const aniPoster = await fetchAnimePoster(hint.anilistId);
    add(aniPoster);
  }

  for (const c of expandHighResPosterCandidates(photoUrl)) add(c);

  let best: DownloadedPoster | null = null;
  const pickBetter = (cand: DownloadedPoster | null) => {
    if (!cand) return;
    if (!best) { best = cand; return; }
    // Strongly prefer crisp JPEG/PNG over WebP for Telegram sendPhoto
    if (best.isWebp && !cand.isWebp && cand.buffer.length >= 25_000) {
      best = cand;
      return;
    }
    if (!best.isWebp && cand.isWebp && best.buffer.length >= 25_000) return;
    if (cand.buffer.length > best.buffer.length) best = cand;
  };

  for (const url of candidates) {
    const dl = await fetchImageCandidate(url);
    pickBetter(dl);
    // Fast-path: already have a crisp non-WebP HD poster (>= 90 KB)
    if (best && !best.isWebp && best.buffer.length >= 90_000) break;
  }

  // If image is still small (< 65 KB), missing, or WebP, try AniList extraLarge by title!
  if ((!best || best.isWebp || best.buffer.length < 65_000) && hint?.type && (hint.title || hint.englishTitle)) {
    const queries = Array.from(new Set([hint.title, hint.englishTitle].filter(Boolean) as string[]));
    for (const q of queries) {
      const aniUrl = await searchAniListPosterHD(q, hint.type);
      if (aniUrl && !candidates.includes(aniUrl)) {
        const dl = await fetchImageCandidate(aniUrl);
        pickBetter(dl);
        if (best && !best.isWebp && best.buffer.length >= 65_000) break;
      }
    }
  }

  return { downloaded: best, fallbackUrl: best?.url || candidates[0] || photoUrl };
}

async function sendChannelPhoto(photoUrl: string, caption: string, hint?: TelegramPosterHint, replyMarkup?: TelegramInlineMarkup) {
  const channelId = process.env.TELEGRAM_CHANNEL_ID;
  const tok = await getToken();
  if (!channelId || !tok) return false;

  const { downloaded, fallbackUrl } = await resolveHighResPosterForTelegram(photoUrl, hint);

  // Primary path: upload HD binary via multipart/form-data (bypasses hotlink Referer & preserves crisp HD!)
  if (downloaded && !downloaded.isWebp) {
    try {
      const ext = downloaded.contentType === "image/png" ? "png" : "jpg";
      const form = new FormData();
      form.append("chat_id", channelId);
      form.append("caption", caption);
      form.append("parse_mode", "HTML");
      if (replyMarkup) form.append("reply_markup", JSON.stringify(replyMarkup));
      form.append("photo", new Blob([new Uint8Array(downloaded.buffer)], { type: downloaded.contentType }), `poster.${ext}`);

      const r = await fetch(`https://api.telegram.org/bot${tok}/sendPhoto`, {
        method: "POST",
        body: form,
        signal: AbortSignal.timeout(20_000),
      });
      const body = (await r.json().catch(() => ({}))) as any;
      if (r.ok && body?.ok === true) {
        console.log(`[telegram] 🖼️ HD photo uploaded (${Math.round(downloaded.buffer.length / 1024)} KB) from ${downloaded.url.slice(0, 80)}`);
        return true;
      }
      console.warn("[telegram] sendChannelPhoto multipart error:", body?.description || r.status);
    } catch (e: any) {
      console.warn("[telegram] sendChannelPhoto multipart failed:", e?.message || String(e));
    }
  }

  // Fallback path: URL mode (using the highest-res resolved URL)
  const targetUrl = fallbackUrl || photoUrl;
  if (!targetUrl) return false;
  const r = await fetch(`https://api.telegram.org/bot${tok}/sendPhoto`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({
      chat_id: channelId,
      photo:   targetUrl,
      caption,
      parse_mode: "HTML",
      ...(replyMarkup ? { reply_markup: replyMarkup } : {}),
    }),
    signal: AbortSignal.timeout(15_000),
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
  meta?: EpisodeWatchMeta,
): Promise<boolean> {
  const key = `${anilistId}:${ep}`;
  if (notifiedEpisodes.has(key)) return true;
  const existingFlight = episodeNotificationFlights.get(key);
  if (existingFlight) return existingFlight;

  const flight = Promise.resolve().then(() =>
    deliverNewEpisodeNotification(anilistId, title, ep, posterUrl, meta),
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
  meta?: EpisodeWatchMeta,
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
    link_path: `/watch?anime=${anilistId}&anilistId=${anilistId}&ep=${ep}&totalEps=${ep}&title=${encodeURIComponent(meta?.romaji || title)}&english=${encodeURIComponent(meta?.english || title)}&fromLatest=1`,
    anime_id: anilistId,
    episode_num: ep,
  }).catch(() => {});

  const bellResult = await sendSubscribedAlertPush({
    contentKind: "anime",
    contentKey: String(anilistId),
    animeId: anilistId,
    title,
    titleAr: title,
    english: meta?.english || meta?.romaji || title,
    episode: ep,
    posterUrl: poster ?? undefined,
    eventKey: `anime:${anilistId}:${ep}`,
    routeData: {
      animeId: anilistId,
      episode: ep,
      romaji: meta?.romaji || title,
      english: meta?.english || title,
    },
  }).catch((error) => {
    console.warn(`[push] bell alert failed title=${title} episode=${ep}:`, error instanceof Error ? error.message : String(error));
    return { matchedTokens: [] as string[], summary: null };
  });

  const pushResult = await sendNewEpisodePushDetailed({
    animeId: anilistId,
    title,
    episode: ep,
    posterUrl: poster ?? undefined,
    excludeTokens: bellResult.matchedTokens.length ? new Set(bellResult.matchedTokens) : undefined,
  }).catch((error) => {
    console.warn(`[push] episode delivery failed title=${title} episode=${ep}:`, error instanceof Error ? error.message : String(error));
    return null;
  });

  const channelId = process.env.TELEGRAM_CHANNEL_ID;
  const tok = await getToken();
  const watchMeta: EpisodeWatchMeta = {
    romaji: meta?.romaji || title,
    english: meta?.english || title,
    anslayerId: meta?.anslayerId,
    site: meta?.site,
    cover: poster || meta?.cover,
  };
  const caption = buildEpisodeCaption(title, ep, anilistId, watchMeta);

  let telegramSent = true;
  if (channelId && tok) {
    telegramSent = await sendTelegramEpisodeOnce(anilistId, ep, caption, poster || undefined, watchMeta);
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
  meta?: EpisodeWatchMeta,
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

    let sent = (poster || anilistId > 0) ? await sendChannelPhoto(poster || "", caption, { anilistId, type: "ANIME" }) : false;
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
        if (await notifyNewEpisode(primaryId, name, ep, cover || undefined, {
          romaji: item.romaji || item.name || name,
          english: item.english || item.name || name,
          anslayerId: anslayerId || undefined,
          site: item.source || undefined,
          cover: cover || undefined,
        })) {
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


/* ── إشعارات الأقسام المدبلجة + المانجا والمانهوا (بلا تكرار نهائياً) ──── */

let dubbedSchedulerFirstRun = true;
let mangaSchedulerFirstRun = true;
let newsSchedulerFirstRun = true;

async function hasAnyNotifKeys(keys: string[]): Promise<boolean> {
  for (const k of keys) {
    if (notifiedEpisodes.has(k) || telegramNotifiedEpisodes.has(k)) return true;
  }
  try {
    for (const k of keys) {
      const rows = await sbSelect("app_config", { key: `eq.${k}` }, { limit: 1 });
      if (Array.isArray(rows) && rows.length > 0) {
        for (const allK of keys) {
          notifiedEpisodes.add(allK);
          telegramNotifiedEpisodes.add(allK);
        }
        return true;
      }
    }
    return false;
  } catch {
    return false;
  }
}

async function markNotifKeys(keys: string[]): Promise<void> {
  const nowStr = String(Date.now());
  for (const k of keys) {
    notifiedEpisodes.add(k);
    telegramNotifiedEpisodes.add(k);
    try {
      await sbInsert("app_config", { key: k, value: nowStr });
    } catch { /* silent */ }
  }
}

function truncateStoryForTelegram(raw: unknown, maxChars = 270): string {
  const clean = String(raw || "")
    .replace(/<[^>]+>/g, " ")
    .replace(/\s+/g, " ")
    .trim();
  if (!clean) return "";
  if (clean.length <= maxChars) return clean;
  const cut = clean.slice(0, maxChars);
  const lastSpace = cut.lastIndexOf(" ");
  return `${(lastSpace > maxChars * 0.65 ? cut.slice(0, lastSpace) : cut).trim()}...`;
}

function buildDubbedEpisodeCaption(item: any): string {
  const kind = String(item?.dubbedKind || "");
  const sectionBadge =
    kind === "dubbed-anime"
      ? "🎙️ أنمي مدبلج"
      : kind === "aw-dubbed"
        ? "🎬 أنيميشن مدبلج"
        : "📺 كرتون مدبلج 2";
  const title = String(item?.titleAr || item?.name || "عمل مدبلج").trim();
  const isMovie = Boolean(item?.isMovie);
  const epNum = Number(item?.episode || 1);
  const epLine = isMovie
    ? "🎞️ <b>فيلم كامل</b> · دبلجة عربية عالية الجودة وبدون إعلانات"
    : `🎬 <b>الحلقة ${escapeTelegramHtml(epNum)}</b> · دبلجة عربية عالية الجودة وبدون تقطيع`;
  return [
    `🍿 <b>حان وقت المتعة! إصدار مدبلج جديد أصبح متاحاً الآن على نوفا 🔥</b>`,
    `🏷️ <b>${sectionBadge}</b>`,
    ``,
    `✨ <b>${escapeTelegramHtml(title)}</b>`,
    epLine,
    ``,
    `━━━━━━━━━━━━━━━`,
    `📱 <b>تطبيق الهاتف (APK):</b> <a href="${APK_DOWNLOAD_URL}">تحميل مباشر</a>`,
    `📺 <b>كود التلفاز (Downloader):</b> <code>${TV_DOWNLOADER_CODE}</code>`,
    `🌐 <b>الموقع:</b> ${SITE_URL}`,
  ].join("\n");
}

function buildDubbedMarkup(): TelegramInlineMarkup {
  return {
    inline_keyboard: [
      [
        { text: "📲 تحميل التطبيق", url: APK_DOWNLOAD_URL },
        { text: "🌐 فتح الموقع", url: SITE_URL },
      ],
    ],
  };
}

function buildMangaCaption(item: any, story: string): string {
  const isManhwa = item?.source === "manhwa" || item?.typeLabel === "مانهوا";
  const typeBadge = isManhwa ? "🇰🇷 مانهوا ملونة" : "🇯🇵 مانجا مترجمة";
  const titleAr = String(item?.arabicTitle || item?.title || "عمل جديد").trim();
  const titleEn = String(item?.englishTitle || "").trim();
  const chNum = Number(item?.latestChapter || 0);
  const isChapterUpdate = Number.isFinite(chNum) && chNum > 0;
  const headline = isChapterUpdate
    ? `⚡ <b>فصل جديد متاح الآن.. استعد لأحداث مشوّقة! 🔥</b>`
    : `📚 <b>عمل جديد ينضم لمكتبة نوفا الآن! 🔥</b>`;

  const lines: string[] = [
    headline,
    `<b>${typeBadge}</b>`,
    ``,
    `✨ <b>${escapeTelegramHtml(titleAr)}</b>`,
  ];
  if (titleEn && titleEn.toLowerCase() !== titleAr.toLowerCase()) {
    lines.push(`🏷️ ${escapeTelegramHtml(titleEn)}`);
  }
  if (isChapterUpdate) {
    lines.push(`📑 <b>الفصل ${escapeTelegramHtml(chNum)}</b> · متاح الآن للقراءة بجودة عالية وبدون إنترنت`);
  }
  const excerpt = truncateStoryForTelegram(story, 260);
  if (excerpt) {
    lines.push(``);
    lines.push(`📖 <b>لمحة عن القصة:</b>`);
    lines.push(`${escapeTelegramHtml(excerpt)}`);
  }
  lines.push(``);
  lines.push(`🔒 <b>حصرياً داخل تطبيق Anime NOVA</b> (يدعم التحميل والقراءة أوفلاين!)`);
  lines.push(`━━━━━━━━━━━━━━━`);
  lines.push(`📱 <b>حمّل التطبيق الآن:</b> <a href="${APK_DOWNLOAD_URL}">تحميل مباشر (APK)</a>`);
  lines.push(`📺 <b>كود التلفاز (Downloader):</b> <code>${TV_DOWNLOADER_CODE}</code>`);
  return lines.join("\n");
}

function buildAppOnlyMarkup(label = "📲 تحميل تطبيق Anime NOVA"): TelegramInlineMarkup {
  return {
    inline_keyboard: [[{ text: label, url: APK_DOWNLOAD_URL }]],
  };
}

function collectDubbedKeys(item: any): string[] {
  const kind = String(item?.dubbedKind || item?.source || "dubbed").trim();
  const keyRaw = String(item?.dubbedSlug || item?.awKey || item?.sd2Slug || item?.id || "").trim().toLowerCase();
  const ep = Math.max(1, Number(item?.episode || 1) || 1);
  const keys = new Set<string>();
  if (keyRaw) keys.add(`tg_dubbed:${kind}:${keyRaw}:${ep}`);
  for (const t of [item?.titleAr, item?.name, item?.english]) {
    const norm = normalizeNotifTitleKey(t);
    if (norm.length >= 3) keys.add(`tg_dubbed_t:${kind}:${norm}:${ep}`);
  }
  return Array.from(keys);
}

function collectMangaKeys(item: any): string[] {
  const id = String(item?.id || item?.slug || "").trim().toLowerCase();
  const chNum = Number(item?.latestChapter || 0);
  const chTag = Number.isFinite(chNum) && chNum > 0 ? `ch${chNum}` : "new";
  const keys = new Set<string>();
  if (id) keys.add(`tg_manga:${id}:${chTag}`);
  for (const t of [item?.arabicTitle, item?.englishTitle, item?.title]) {
    const norm = normalizeNotifTitleKey(t);
    if (norm.length >= 3) keys.add(`tg_manga_t:${norm}:${chTag}`);
  }
  return Array.from(keys);
}

async function pollDubbedLatest(): Promise<void> {
  try {
    const resp = await fetch(`${internalApiBaseUrl()}/api/dubbed/latest-episodes?mode=all`, {
      headers: { "User-Agent": "NovaBot/1.0", Accept: "application/json" },
      signal: AbortSignal.timeout(25_000),
    });
    if (!resp.ok) return;
    const data = (await resp.json()) as any;
    const list: any[] = Array.isArray(data?.items) ? data.items : [];
    if (!list.length) return;

    // أول دورة: بذر جميع العناصر الحالية بدون إرسال لتجنب إغراق القناة
    if (dubbedSchedulerFirstRun) {
      dubbedSchedulerFirstRun = false;
      for (const item of list) {
        const keys = collectDubbedKeys(item);
        if (keys.length) await markNotifKeys(keys);
      }
      console.log(`[scheduler] 🌱 dubbed latest startup: seeded=${list.length}`);
      return;
    }

    const channelId = process.env.TELEGRAM_CHANNEL_ID;
    const tok = await getToken().catch(() => null);

    let sent = 0;
    for (let idx = 0; idx < list.length; idx++) {
      const item = list[idx];
      const keys = collectDubbedKeys(item);
      if (!keys.length) continue;
      if (await hasAnyNotifKeys(keys)) continue;

      // أرسل فقط لأحدث العناصر في المقدمة، وبذر البقية بصمت
      if (idx >= 12) {
        await markNotifKeys(keys);
        continue;
      }

      const caption = buildDubbedEpisodeCaption(item);
      const poster = typeof item?.cover === "string" && /^https?:\/\//i.test(item.cover) ? item.cover : "";
      const photoSent = (channelId && tok) ? await sendChannelPhoto(poster, caption, { title: String(item?.english || item?.name || ""), englishTitle: String(item?.titleAr || ""), type: "ANIME" }) : false;
      const delivered = photoSent || ((channelId && tok) ? await sendMessage(channelId, caption) : false);
      // سجل الحلقة المدبلجة الجديدة في قائمة أحدث الحلقات (آخر 14 يوماً) حتى تظهر للمستخدمين
      await recordDubbedRecentRelease(item).catch(() => {});
      const dubbedKindRaw = String(item?.dubbedKind || item?.source || "dubbed").trim().toLowerCase();
      const alertContentKind =
        dubbedKindRaw === "dubbed-anime"
          ? "dubbed-anime"
          : dubbedKindRaw === "aw-dubbed"
            ? "aw-dubbed"
            : "dubbed";
      const alertContentKey =
        alertContentKind === "dubbed-anime"
          ? String(item?.dubbedSlug || item?.id || "").trim()
          : alertContentKind === "aw-dubbed"
            ? String(item?.awKey || item?.awSeries || item?.id || "").trim()
            : item?.sd2Slug
              ? `sd2:${String(item.sd2Slug).trim()}`
              : String(item?.id || item?.titleAr || item?.name || "").trim();
      const epNum = Math.max(1, Number(item?.episode || 1) || 1);
      const bellPush = await sendSubscribedAlertPush({
        contentKind: alertContentKind,
        contentKey: alertContentKey,
        title: String(item?.titleAr || item?.name || "عمل مدبلج"),
        titleAr: String(item?.titleAr || item?.name || ""),
        english: String(item?.english || item?.name || ""),
        episode: epNum,
        isMovie: Boolean(item?.isMovie),
        posterUrl: poster || undefined,
        eventKey: `dubbed:${alertContentKind}:${alertContentKey || "item"}:${epNum}`,
        sectionLabel: String(item?.sectionLabel || "مدبلج"),
        routeData: {
          ...(item?.dubbedSlug ? { slug: String(item.dubbedSlug) } : {}),
          ...(item?.awKey ? { awKey: String(item.awKey) } : {}),
          ...(item?.sd2Slug ? { sd2Slug: String(item.sd2Slug) } : {}),
          ...(item?.isMovie ? { isMovie: "1" } : {}),
        },
      }).catch((err) => {
        console.warn("[push] dubbed bell push failed:", err instanceof Error ? err.message : String(err));
        return { matchedTokens: [] as string[], summary: null };
      });
      if (delivered || bellPush.matchedTokens.length > 0) {
        await markNotifKeys(keys);
        sent++;
        schedulerSentToday++;
        await saveNotification({
          type: "dubbed_episode",
          title: String(item?.titleAr || item?.name || "عمل مدبلج"),
          body: item?.isMovie ? `${item?.sectionLabel || "مدبلج"} · فيلم متاح الآن` : `${item?.sectionLabel || "مدبلج"} · الحلقة ${epNum}`,
          image_url: poster || undefined,
          episode_num: epNum,
        }).catch(() => {});
        console.log(`[scheduler] 🎙️ أُرسل إشعار مدبلج → ${item?.sectionLabel} · ${item?.titleAr || item?.name} ح${epNum} (bell=${bellPush.matchedTokens.length})`);
        await new Promise((r) => setTimeout(r, 1_500));
      }
      if (sent >= 5) break;
    }
  } catch (e: any) {
    console.warn("[scheduler] dubbed latest poll error:", e?.message || String(e));
  }
}


async function pollSubscribedCartoonAlerts(): Promise<void> {
  try {
    const alertRows = await sbSelect<{
      content_kind: string;
      content_key: string;
      title: string;
      title_ar?: string | null;
      poster_url?: string | null;
    }>("mobile_episode_alerts", { content_kind: "eq.dubbed" }, { limit: 500 });
    if (!alertRows.length) return;

    const uniqueShows = new Map<string, {
      provider: "sp" | "carateen";
      showId: string;
      contentKey: string;
      title: string;
      titleAr: string;
      posterUrl: string;
    }>();

    for (const row of alertRows) {
      const parsed = parseCartoonAlertKey(row.content_key);
      if (!parsed || (parsed.provider !== "sp" && parsed.provider !== "carateen")) continue;
      const mapKey = `${parsed.provider}:${parsed.showId}`;
      if (!uniqueShows.has(mapKey)) {
        uniqueShows.set(mapKey, {
          provider: parsed.provider,
          showId: parsed.showId,
          contentKey: mapKey,
          title: String(row.title_ar || row.title || mapKey).trim(),
          titleAr: String(row.title_ar || row.title || "").trim(),
          posterUrl: String(row.poster_url || "").trim(),
        });
      }
    }

    if (!uniqueShows.size) return;

    for (const show of uniqueShows.values()) {
      try {
        const resp = await fetch(
          `${internalApiBaseUrl()}/api/dubbed/carateen/episodes?provider=${encodeURIComponent(show.provider)}&showId=${encodeURIComponent(show.showId)}&refresh=1`,
          { headers: { "User-Agent": "NovaBot/1.0", Accept: "application/json" }, signal: AbortSignal.timeout(15_000) },
        );
        if (!resp.ok) continue;
        const json = await resp.json().catch(() => null) as { episodes?: Array<{ epId?: string; number?: number; title?: string; thumbnail?: string }> } | null;
        const episodes = Array.isArray(json?.episodes) ? json.episodes : [];
        if (!episodes.length) continue;

        const wmKey = `bell_wm:dubbed:${show.contentKey}`;
        const wmRows = await sbSelect<{ value: string }>("app_config", { key: `eq.${wmKey}` }, { limit: 1 });
        let prevState: { knownIds?: string[]; maxNumber?: number; count?: number } | null = null;
        if (wmRows[0]?.value) {
          try { prevState = JSON.parse(wmRows[0].value); } catch { prevState = null; }
        }

        const diff = detectNewEpisodesByWatermark(prevState, episodes);
        await sbUpsert("app_config", { key: wmKey, value: JSON.stringify(diff.nextState) }, "key").catch(() => {});

        if (diff.isSeed) {
          console.log(`[scheduler] 🌱 seeded cartoon bell watermark ${show.contentKey} (${show.title}) episodes=${episodes.length}`);
          continue;
        }
        if (!diff.newEpisodes.length) continue;

        // Send alert for the latest newly added episode (max 2 per show per cycle to avoid spam)
        for (const ep of diff.newEpisodes.slice(-2)) {
          const poster = ep.thumbnail || show.posterUrl || undefined;
          const bellPush = await sendSubscribedAlertPush({
            contentKind: "dubbed",
            contentKey: show.contentKey,
            title: show.title,
            titleAr: show.titleAr || show.title,
            episode: ep.number,
            posterUrl: poster,
            eventKey: `cartoon:${show.contentKey}:${ep.epId || ep.number}`,
            sectionLabel: show.provider === "sp" ? "سبيستون / كرتون" : "كرتون",
            routeData: {
              provider: show.provider,
              showId: show.showId,
            },
          });
          console.log(`[scheduler] 🔔 cartoon bell push ${show.contentKey} ep=${ep.number} subscribers=${bellPush.matchedTokens.length} delivered=${bellPush.summary?.delivered ?? 0}`);
        }
      } catch (showErr: any) {
        console.warn(`[scheduler] cartoon bell check failed for ${show.contentKey}:`, showErr?.message || String(showErr));
      }
    }
  } catch (err: any) {
    console.warn("[scheduler] pollSubscribedCartoonAlerts error:", err?.message || String(err));
  }
}

async function resolveMangaStory(item: any): Promise<string> {
  const existing = String(item?.description || "").trim();
  if (existing.length >= 25) return existing;
  try {
    const id = String(item?.id || "").trim();
    if (!id) return existing;
    const res = await fetch(
      `${internalApiBaseUrl()}/api/manga/detail?id=${encodeURIComponent(id)}&source=${encodeURIComponent(String(item?.source || "manga"))}`,
      { headers: { Accept: "application/json" }, signal: AbortSignal.timeout(12_000) },
    );
    if (!res.ok) return existing;
    const detail = (await res.json()) as any;
    return String(detail?.description || existing || "").trim();
  } catch {
    return existing;
  }
}

async function pollMangaLatest(): Promise<void> {
  try {
    const resp = await fetch(`${internalApiBaseUrl()}/api/manga/latest-updates`, {
      headers: { "User-Agent": "NovaBot/1.0", Accept: "application/json" },
      signal: AbortSignal.timeout(25_000),
    });
    if (!resp.ok) return;
    const data = (await resp.json()) as any;
    const list: any[] = Array.isArray(data?.items) ? data.items : [];
    if (!list.length) return;

    // أول دورة: بذر جميع العناصر الحالية بدون إرسال لتجنب التكرار وإغراق القناة
    if (mangaSchedulerFirstRun) {
      mangaSchedulerFirstRun = false;
      for (const item of list) {
        const keys = collectMangaKeys(item);
        if (keys.length) await markNotifKeys(keys);
      }
      console.log(`[scheduler] 🌱 manga/manhwa latest startup: seeded=${list.length}`);
      return;
    }

    const channelId = process.env.TELEGRAM_CHANNEL_ID;
    const tok = await getToken();
    if (!channelId || !tok) return;

    let sent = 0;
    for (let idx = 0; idx < list.length; idx++) {
      const item = list[idx];
      const keys = collectMangaKeys(item);
      if (!keys.length) continue;
      if (await hasAnyNotifKeys(keys)) continue;

      if (idx >= 12) {
        await markNotifKeys(keys);
        continue;
      }

      const story = await resolveMangaStory(item);
      const caption = buildMangaCaption(item, story);
      const poster = typeof item?.poster === "string" && /^https?:\/\//i.test(item.poster) ? item.poster : "";
      const photoSent = await sendChannelPhoto(poster, caption, { title: String(item?.title || ""), englishTitle: String(item?.arabicTitle || ""), type: "MANGA" });
      const delivered = photoSent || await sendMessage(channelId, caption);
      if (delivered) {
        await markNotifKeys(keys);
        sent++;
        schedulerSentToday++;
        const chNum = Number(item?.latestChapter || 0);
        await saveNotification({
          type: "manga_chapter",
          title: String(item?.arabicTitle || item?.title || "مانجا"),
          body: chNum > 0 ? `${item?.typeLabel || "مانجا"} · الفصل ${chNum} متاح الآن` : `${item?.typeLabel || "مانجا"} · عمل جديد متاح الآن`,
          image_url: poster || undefined,
          link_path: `/manga/${encodeURIComponent(String(item?.id || ""))}`,
          episode_num: chNum > 0 ? chNum : undefined,
        }).catch(() => {});
        console.log(`[scheduler] 📖 أُرسل إشعار مانجا/مانهوا → ${item?.arabicTitle || item?.title} (${item?.latestChapterLabel})`);
        await new Promise((r) => setTimeout(r, 1_500));
      }
      if (sent >= 5) break;
    }
  } catch (e: any) {
    console.warn("[scheduler] manga latest poll error:", e?.message || String(e));
  }
}

function collectNewsKeys(article: any): string[] {
  const keys: string[] = [];
  const id = String(article?.id || "").trim();
  if (id) keys.push(`news_tg:id:${id.slice(0, 120)}`);
  const orig = String(article?.originalTitle || article?.title || "").trim().toLowerCase().replace(/[^a-z0-9\u0600-\u06FF]/g, "").slice(0, 72);
  if (orig) keys.push(`news_tg:t:${orig}`);
  return keys;
}

function escapeHtmlBasic(str: string): string {
  return String(str || "")
    .replace(/&/g, "&amp;")
    .replace(/</g, "&lt;")
    .replace(/>/g, "&gt;");
}

function polishAndSummarizeNewsForTelegram(raw: string, maxChars = 250): string {
  let clean = String(raw || "")
    .replace(/<[^>]*>/g, " ")
    .replace(/\(\s*(?:في الصورة|pictured|in picture)\s*\)/gi, "")
    .replace(/مرئي\s+رئيسي|صورة\s+مرئية\s+رئيسية|المرئي\s+الرئيسي/g, "البوستر الرسمي")
    .replace(/أول\s+فيديو\s+ترويجي|فيديو\s+ترويجي\s+أول/g, "العرض التشويقي الأول")
    .replace(/فيديو\s+ترويجي/g, "العرض التشويقي")
    .replace(/أغاني\s+مميزة|أغاني\s+رئيسية/g, "أغاني الشارة")
    .replace(/طاقم\s+عمل\s+إضافي|طاقم\s+إضافي/g, "مؤدو أصوات جدد")
    // Strip noisy cast dumps and Japanese local channel schedules
    .replace(/(?:\s+|^)(?:الممثلون|طاقم التمثيل|الأصوات|Cast\s*:)\s*[\s\S]*$/i, "")
    .replace(/الساعة\s+\d{1,2}:\d{2}[^.،]*?(?:Tokyo\s*MX|BS11|AT-X|MBS|TBS|TV\s*Tokyo)[^.]*/gi, "")
    .replace(/\s{2,}/g, " ")
    .replace(/\s+([،.؛!؟])/g, "$1")
    .trim();

  if (!clean) return "";

  // Split into complete sentences and take 1-2 clean sentences without cutting mid-sentence!
  const sentences = clean
    .split(/(?<=[.!؟])\s+/)
    .map((s) => s.trim())
    .filter((s) => s.length >= 12);

  if (sentences.length > 0) {
    let acc = sentences[0];
    if (sentences.length > 1 && acc.length + 1 + sentences[1].length <= maxChars) {
      acc = `${acc} ${sentences[1]}`;
    }
    if (acc.length <= maxChars + 40) return acc;
    clean = acc;
  }

  if (clean.length <= maxChars) return clean;
  const cut = clean.slice(0, maxChars);
  const lastPeriod = Math.max(cut.lastIndexOf("."), cut.lastIndexOf("؟"), cut.lastIndexOf("!"));
  if (lastPeriod >= Math.floor(maxChars * 0.55)) {
    return cut.slice(0, lastPeriod + 1).trim();
  }
  const lastSpace = cut.lastIndexOf(" ");
  return (lastSpace > 40 ? cut.slice(0, lastSpace) : cut).trim() + "…";
}

function buildNewsCaption(article: any): string {
  const titlePolished = String(article?.title || "خبر أنمي جديد")
    .replace(/مرئي\s+رئيسي/g, "البوستر الرسمي")
    .replace(/أغاني\s+مميزة|أغاني\s+رئيسية/g, "أغاني الشارة")
    .replace(/طاقم\s+عمل\s+إضافي|طاقم\s+إضافي/g, "مؤدو أصوات جدد")
    .replace(/فيديو\s+ترويجي/g, "العرض التشويقي")
    .replace(/\s{2,}/g, " ")
    .trim();
  const title = escapeHtmlBasic(titlePolished);
  const summary = polishAndSummarizeNewsForTelegram(String(article?.description || ""), 250);
  const isMovie = Boolean(article?.isMovieNews) || String(article?.category || "").includes("أفلام");
  const header = isMovie ? "🎬 <b>عاجل في عالم أفلام الأنمي!</b>" : "📰 <b>عاجل في عالم الأنمي!</b>";

  const lines = [
    header,
    "",
    `✨ <b>${title}</b>`,
  ];
  if (summary) {
    lines.push("", "📌 <b>ملخص الخبر:</b>", escapeHtmlBasic(summary));
  }
  lines.push(
    "",
    "💬 <i>شاركنا رأيك وتابع بقية الأخبار والتفاصيل داخل تطبيق Anime NOVA!</i>",
    "━━━━━━━━━━━━━━━",
    `📱 <b>تحميل التطبيق:</b> <a href="${APK_DOWNLOAD_URL}">تحميل مباشر (APK)</a>`,
    `📺 <b>كود التلفاز (Downloader):</b> <code>${TV_DOWNLOADER_CODE}</code>`,
  );
  return lines.join("\n");
}

async function pollNewsLatest(): Promise<void> {
  try {
    const resp = await fetch(`${internalApiBaseUrl()}/api/news?limit=12&hasImage=1`, {
      headers: { "User-Agent": "NovaBot/1.0", Accept: "application/json" },
      signal: AbortSignal.timeout(25_000),
    });
    if (!resp.ok) return;
    const data = (await resp.json()) as any;
    const list: any[] = Array.isArray(data?.articles) ? data.articles : [];
    if (!list.length) return;

    // أول دورة: بذر الأخبار الحالية بصمت لمنع إرسال أخبار قديمة وإغراق القناة
    if (newsSchedulerFirstRun) {
      newsSchedulerFirstRun = false;
      for (const art of list) {
        const keys = collectNewsKeys(art);
        if (keys.length) await markNotifKeys(keys);
      }
      console.log(`[scheduler] 🌱 anime news startup: seeded=${list.length}`);
      return;
    }

    // إرسال أخبار الأنمي إلى قناة تليجرام موقوف — يتم فقط حفظ الإشعار داخل التطبيق (والحلقات/المدبلج/المانجا مستمرة في تليجرام)
    let sent = 0;
    for (let idx = 0; idx < list.length; idx++) {
      const art = list[idx];
      const keys = collectNewsKeys(art);
      if (!keys.length) continue;
      if (await hasAnyNotifKeys(keys)) continue;

      if (idx >= 6) {
        await markNotifKeys(keys);
        continue;
      }

      const thumb = typeof art?.thumbnail === "string" && /^https?:\/\//i.test(art.thumbnail) ? art.thumbnail : "";
      await markNotifKeys(keys);
      sent++;
      await saveNotification({
        type: "anime_news",
        title: String(art?.title || "خبر أنمي جديد").slice(0, 140),
        body: String(art?.description || "خبر جديد في عالم الأنمي").slice(0, 220),
        image_url: thumb || undefined,
        link_path: "/news",
      }).catch(() => {});
      console.log(`[scheduler] 📰 حُفظ إشعار خبر أنمي للتطبيق فقط (تليجرام موقوف) → ${String(art?.title || "").slice(0, 60)}`);
      if (sent >= 3) break;
    }
  } catch (e: any) {
    console.warn("[scheduler] anime news poll error:", e?.message || String(e));
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

  // فحص أحدث الحلقات (الأنمي المترجم + الأقسام المدبلجة) وأحدث فصول المانجا والمانهوا
  // مع بذر أول دورة ومنع التكرار نهائياً عبر app_config.
  await pollAnimeSlayerDirect();
  await pollDubbedLatest();
  await pollSubscribedCartoonAlerts();
  await pollMangaLatest();
  await pollNewsLatest();
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


function getTelegramWebhookSecret(): string | null {
  const explicit = process.env.TELEGRAM_WEBHOOK_SECRET?.trim();
  if (explicit) return explicit;
  const appSecret = process.env.APP_SECRET?.trim();
  if (!appSecret) return null;
  return createHmac("sha256", appSecret).update("nova-telegram-webhook-v1").digest("hex").slice(0, 48);
}

function isValidTelegramWebhookRequest(req: Request): boolean {
  const expected = getTelegramWebhookSecret();
  if (!expected) return false;
  const provided = req.headers["x-telegram-bot-api-secret-token"];
  const token = Array.isArray(provided) ? provided[0] : provided;
  if (!token || token.length !== expected.length) return false;
  try {
    return timingSafeEqual(Buffer.from(token, "utf8"), Buffer.from(expected, "utf8"));
  } catch {
    return false;
  }
}

async function hasTelegramAdminAccess(req: Request): Promise<boolean> {
  const provided = (req.headers["x-relay-secret"] as string | undefined) || (req.query.s as string | undefined);
  if (checkAppSecret(provided)) return true;
  if (isWebAdmin(req)) return true;
  const eu = await getEmailUser(req);
  return eu?.plan === "admin";
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
      body: JSON.stringify({
        url,
        allowed_updates: ["message", "callback_query", "channel_post", "edited_channel_post"],
        ...(getTelegramWebhookSecret() ? { secret_token: getTelegramWebhookSecret() } : {}),
      }),
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
        { command: "templates", description: "صيغ رفع الحلقات 📋" },
      ]
    }),
    signal: AbortSignal.timeout(8_000),
  }).catch(() => {});
}

/* ── معالج رسائل البوت ────────────────────────────────────────────────── */

async function answerCallbackQuery(callbackQueryId: string, text: string) {
  const tok = await getToken();
  if (!tok || !callbackQueryId) return;
  await fetch(`https://api.telegram.org/bot${tok}/answerCallbackQuery`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ callback_query_id: callbackQueryId, text, show_alert: false }),
    signal: AbortSignal.timeout(6_000),
  }).catch(() => {});
}

async function dispatchIngestResultToAdmin(
  targetChatId: number | string,
  result: ChannelIngestResult,
  isEdit = false
) {
  if (!result.handled || !result.summary) return;
  let text = result.summary;
  if (result.kind !== "needs_fix" && (result.remainingPendingCount || 0) > 0) {
    text += `\n\n📌 لديك ${result.remainingPendingCount} حلقة أخرى بانتظار الإكمال — أرسل /معلق لعرضها.`;
  }
  const extra: Record<string, any> = result.replyMarkup
    ? { reply_markup: result.replyMarkup }
    : result.episodeId
      ? {
          reply_markup: {
            inline_keyboard: [[{ text: "🗑️ حذف الحلقة من التطبيق", callback_data: `tg_del_ep:${result.episodeId}` }]],
          },
        }
      : {};

  const sent = await sendMessageDetailed(targetChatId, text, extra);
  if (result.kind === "needs_fix" && result.pendingId && sent.messageId) {
    await setPendingAdminPromptMsgId(result.pendingId, sent.messageId);
  }

  // Only trigger subscriber bell push once episode is COMPLETE and published
  if (!isEdit && result.kind === "episode" && result.series && result.episode) {
    const s = result.series;
    const e = result.episode;
    const isDubbed = s.section === "cartoon" || s.section === "dubbed";
    if (!isDubbed && s.anilist_id) {
      void sendSubscribedAlertPush({
        mediaType: "anime",
        mediaId: String(s.anilist_id),
        title: s.title,
        episode: e.episode_number,
        poster: s.poster_url || undefined,
        anilistId: s.anilist_id,
      }).catch(() => {});
    }
  }
}

async function handleUpdate(update: any) {
  // ── 1. Handle admin callback buttons (delete episode OR fix pending upload) ──
  if (update.callback_query) {
    const cq = update.callback_query;
    const data = String(cq.data || "");
    const fromId = String(cq.from?.id || "");
    const adminId = String((await getAdminChatId()) || "");
    const allowedAdmins = new Set([adminId, "5477879129", "7881366553"].filter(Boolean));
    if (data.startsWith("tg_del_ep:") && allowedAdmins.has(fromId)) {
      const epId = Number.parseInt(data.slice("tg_del_ep:".length), 10);
      if (Number.isFinite(epId) && epId > 0) {
        const ok = await softDeleteTelegramEpisode(epId);
        await answerCallbackQuery(cq.id, ok ? "🗑️ تم حذف الحلقة من التطبيق بنجاح" : "الحلقة محذوفة مسبقاً");
        if (ok && cq.message?.chat?.id) {
          await sendMessage(cq.message.chat.id, `🗑️ تم حذف الحلقة #${epId} من فهرس التطبيق.`);
        }
        return;
      }
    }
    if (data.startsWith("tg_pend_") && allowedAdmins.has(fromId)) {
      try {
        const cbRes = await applyAdminCallbackToPending(data);
        await answerCallbackQuery(cq.id, cbRes.callbackToast);
        if (cbRes.result && cq.message?.chat?.id) {
          await dispatchIngestResultToAdmin(cq.message.chat.id, cbRes.result, false);
        }
      } catch (err: any) {
        console.error("[tg-storage] pending callback error:", err?.message || err);
        await answerCallbackQuery(cq.id, "حدث خطأ أثناء المعالجة");
      }
      return;
    }
    await answerCallbackQuery(cq.id, "تم");
    return;
  }

  // ── 2. Handle Private Storage Channel posts (new / edited episodes & posters) ──
  const chPost = update.channel_post || update.edited_channel_post;
  if (chPost && isStorageChannel(chPost.chat?.id)) {
    const isEdit = Boolean(update.edited_channel_post);
    try {
      const result = await handleStorageChannelPost(chPost, isEdit);
      if (result.handled && result.summary) {
        const adminId = await getAdminChatId();
        if (adminId) {
          await dispatchIngestResultToAdmin(adminId, result, isEdit);
        }
      }
    } catch (err: any) {
      console.error("[tg-storage] channel_post ingest error:", err?.message || err);
    }
    return;
  }

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

  const allowedAdminIds = new Set([String(adminId || ""), "5477879129", "7881366553"].filter(Boolean));
  const isAdminSender = allowedAdminIds.has(String(chatId));

  /* /صيغ أو /templates — صيغ رفع الحلقات لقناة التخزين */
  if (text === "/templates" || text === "/صيغ" || text === "/الصيغ" || text.startsWith("/templates ")) {
    await sendMessage(chatId, formatTemplatesMessage());
    return;
  }

  /* /معلق أو /pending — عرض الحلقات التي تنتظر إكمال البيانات */
  if (isAdminSender && (text === "/pending" || text === "/معلق" || text === "/المعلق")) {
    const res = await getLatestPendingSummary();
    await dispatchIngestResultToAdmin(chatId, res, false);
    return;
  }

  /* /الغاء أو /cancel — إلغاء آخر حلقة معلّقة */
  if (isAdminSender && (text === "/cancel" || text === "/الغاء" || text === "/إلغاء")) {
    const cancelled = await cancelLatestPendingUpload();
    await sendMessage(
      chatId,
      cancelled.ok
        ? "❌ تم إلغاء آخر حلقة معلّقة — لن يتم نشرها في التطبيق."
        : "ℹ️ لا توجد أي حلقة معلّقة لإلغائها حالياً."
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

  /* لو المرسل هو الأدمن ولديه حلقة معلّقة تنتظر إكمال الخانات الناقصة → طبّق التصحيح مباشرة */
  if (isAdminSender && text && !text.startsWith("/")) {
    const replyToId = typeof msg.reply_to_message?.message_id === "number" ? msg.reply_to_message.message_id : undefined;
    if (await hasPendingAdminUpload(replyToId)) {
      try {
        const res = await applyAdminReplyToPending(text, replyToId);
        if (res.handled) {
          await dispatchIngestResultToAdmin(chatId, res, false);
          return;
        }
      } catch (err: any) {
        console.error("[tg-storage] admin pending reply error:", err?.message || err);
      }
    }
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
  if (!isValidTelegramWebhookRequest(req)) {
    res.sendStatus(401);
    return;
  }
  res.sendStatus(200);
  try {
    await handleUpdate(req.body);
  } catch (e: any) {
    console.error("[telegram] webhook error:", e.message);
  }
});

/* ── Status endpoint ──────────────────────────────────────────────────── */

router.get("/api/telegram/status", async (req: Request, res: Response) => {
  if (!(await hasTelegramAdminAccess(req))) {
    res.status(401).json({ ok: false, error: "unauthorized" });
    return;
  }
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

router.post("/api/telegram/notify-test", async (req: Request, res: Response) => {
  if (!(await hasTelegramAdminAccess(req))) {
    res.status(401).json({ ok: false, error: "unauthorized" });
    return;
  }
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

  const photoSent = await sendChannelPhoto(poster || "", caption, { anilistId: testAnilistId, type: "ANIME" });
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

router.get("/api/telegram/scheduler", async (req: Request, res: Response) => {
  if (!(await hasTelegramAdminAccess(req))) {
    res.status(401).json({ ok: false, error: "unauthorized" });
    return;
  }
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

router.post("/api/telegram/scheduler/run-now", async (req: Request, res: Response) => {
  if (!(await hasTelegramAdminAccess(req))) {
    res.status(401).json({ ok: false, error: "unauthorized" });
    return;
  }
  const runTok = await getToken();
  if (!runTok || !process.env.TELEGRAM_CHANNEL_ID) {
    res.status(400).json({ ok: false, error: "token أو channel غير مضبوط" });
    return;
  }
  res.json({ ok: true, message: "تشغيل الدورة يدوياً..." });
  runSchedulerCycle().catch(e => console.warn("[scheduler] manual run error:", e.message));
});

export default router;
