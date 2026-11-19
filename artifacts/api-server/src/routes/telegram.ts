import { recordDubbedRecentRelease } from "./dubbed.js";
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

async function sendChannelPhoto(photoUrl: string, caption: string, hint?: TelegramPosterHint) {
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
  const epLine = isMovie ? "🎞️ فيلم كامل متاح الآن" : `🎬 الحلقة ${escapeTelegramHtml(epNum)}`;
  return [
    `🔊 <b>إصدار مدبلج جديد وصل!</b>`,
    `${sectionBadge}`,
    ``,
    `✨ <b>${escapeTelegramHtml(title)}</b>`,
    epLine,
    ``,
    `✅ متاح الآن للمشاهدة على Anime NOVA 🎮`,
    `📲 حمّل تطبيق Anime NOVA من هنا:`,
    `🔗 ${SITE_URL}`,
  ].join("\n");
}

function buildMangaCaption(item: any, story: string): string {
  const isManhwa = item?.source === "manhwa" || item?.typeLabel === "مانهوا";
  const typeBadge = isManhwa ? "🇰🇷 مانهوا" : "🇯🇵 مانجا";
  const titleAr = String(item?.arabicTitle || item?.title || "عمل جديد").trim();
  const titleEn = String(item?.englishTitle || "").trim();
  const chNum = Number(item?.latestChapter || 0);
  const isChapterUpdate = Number.isFinite(chNum) && chNum > 0;
  const headline = isChapterUpdate
    ? `📖 <b>فصل جديد وصل!</b>`
    : `📚 <b>عمل جديد أُضيف الآن!</b>`;

  const lines: string[] = [
    headline,
    `${typeBadge}`,
    ``,
    `✨ <b>${escapeTelegramHtml(titleAr)}</b>`,
  ];
  if (titleEn && titleEn.toLowerCase() !== titleAr.toLowerCase()) {
    lines.push(`🏷️ ${escapeTelegramHtml(titleEn)}`);
  }
  if (isChapterUpdate) {
    lines.push(`📑 الفصل ${escapeTelegramHtml(chNum)}`);
  }
  const excerpt = truncateStoryForTelegram(story, 270);
  if (excerpt) {
    lines.push(``);
    lines.push(`📝 <b>القصة:</b> ${escapeTelegramHtml(excerpt)}`);
  }
  lines.push(``);
  lines.push(`✅ متاح الآن للقراءة على Anime NOVA 🎮`);
  lines.push(`🔗 ${SITE_URL}`);
  return lines.join("\n");
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
    const tok = await getToken();
    if (!channelId || !tok) return;

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
      const photoSent = await sendChannelPhoto(poster, caption, { title: String(item?.english || item?.name || ""), englishTitle: String(item?.titleAr || ""), type: "ANIME" });
      const delivered = photoSent || await sendMessage(channelId, caption);
      // سجل الحلقة المدبلجة الجديدة في قائمة أحدث الحلقات (آخر 14 يوماً) حتى تظهر للمستخدمين
      await recordDubbedRecentRelease(item).catch(() => {});
      if (delivered) {
        await markNotifKeys(keys);
        sent++;
        schedulerSentToday++;
        await saveNotification({
          type: "dubbed_episode",
          title: String(item?.titleAr || item?.name || "عمل مدبلج"),
          body: item?.isMovie ? `${item?.sectionLabel || "مدبلج"} · فيلم متاح الآن` : `${item?.sectionLabel || "مدبلج"} · الحلقة ${item?.episode || 1}`,
          image_url: poster || undefined,
          episode_num: Number(item?.episode || 1),
        }).catch(() => {});
        console.log(`[scheduler] 🎙️ أُرسل إشعار مدبلج → ${item?.sectionLabel} · ${item?.titleAr || item?.name} ح${item?.episode || 1}`);
        await new Promise((r) => setTimeout(r, 1_500));
      }
      if (sent >= 5) break;
    }
  } catch (e: any) {
    console.warn("[scheduler] dubbed latest poll error:", e?.message || String(e));
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

function buildNewsCaption(article: any): string {
  const title = escapeHtmlBasic(String(article?.title || "خبر أنمي جديد").trim());
  const descRaw = String(article?.description || "").trim();
  const desc = descRaw ? escapeHtmlBasic(descRaw.slice(0, 440) + (descRaw.length > 440 ? "..." : "")) : "";
  const cat = escapeHtmlBasic(String(article?.category || "أخبار الأنمي").trim());
  const lines = [
    `📰 <b>${cat} · خبر جديد!</b>`,
    "",
    `✨ <b>${title}</b>`,
  ];
  if (desc) {
    lines.push("", `📝 <b>التفاصيل:</b> ${desc}`);
  }
  lines.push("", "🎬 <i>تابع آخر الأخبار والتفاصيل والنقاش داخل تطبيق Anime NOVA</i>");
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

    const channelId = process.env.TELEGRAM_CHANNEL_ID;
    const tok = await getToken();
    if (!channelId || !tok) return;

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

      const caption = buildNewsCaption(art);
      const thumb = typeof art?.thumbnail === "string" && /^https?:\/\//i.test(art.thumbnail) ? art.thumbnail : "";
      const photoSent = await sendChannelPhoto(thumb, caption, {
        title: String(art?.originalTitle || art?.title || ""),
        type: "ANIME",
      });
      const delivered = photoSent || await sendMessage(channelId, caption);

      if (delivered) {
        await markNotifKeys(keys);
        sent++;
        schedulerSentToday++;
        await saveNotification({
          type: "anime_news",
          title: String(art?.title || "خبر أنمي جديد").slice(0, 140),
          body: String(art?.description || "خبر جديد في عالم الأنمي").slice(0, 220),
          image_url: thumb || undefined,
          link_path: "/news",
        }).catch(() => {});
        console.log(`[scheduler] 📰 أُرسل خبر أنمي → ${String(art?.title || "").slice(0, 60)}`);
        await new Promise((r) => setTimeout(r, 1_500));
      }
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
