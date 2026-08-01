/**
 * telegramEpisodeCache.ts — نظام تخزين الحلقات في تيليغرام
 *
 * الدور:
 *  1. استقبال مصادر MP4 عربية مباشرة وإضافتها لقائمة انتظار
 *  2. التحقق من الرابط بـ ffprobe قبل أي شيء
 *  3. تحميل الحلقة بـ ffmpeg (stream copy — بدون إعادة ترميز)
 *  4. رفعها لقناة تيليغرام خاصة مع caption منظَّم
 *  5. حفظ file_id في DB للاسترجاع الفوري لاحقاً
 *
 * قواعد:
 *  - المصادر العربية أولاً (قائمة TG_ARABIC_SITES)
 *  - جودة واحدة فقط per episode (أول مصدر عربي يصل لكل جودة يفوز)
 *  - لا حفظ بدون التحقق من صلاحية الرابط أولاً
 *  - التسمية: tg:{animeId}:ep{ep:03d}:{quality}:{site}
 */

import { spawn }                  from "child_process";
import { existsSync, statSync, unlinkSync } from "fs";
import { tmpdir }                 from "os";
import { join }                   from "path";
import { sbSelect, sbUpsert }     from "./supabaseClient.js";
import { getEnvOrDb }             from "./dbConfig.js";

// ── مصادر الأولوية للتخزين (AW → AF → FX → SA) ────────────────────────
// ملاحظة: animefay + anifox ستُفعَّل تلقائياً حين تُضاف scrapers-ها
export const TG_PRIORITY_SITES = ["animewitcher", "animefay", "anifox", "sanime"] as const;
export const TG_PRIORITY_SET   = new Set<string>(TG_PRIORITY_SITES);

// ── مصدر الـ fallback (KW = kawaii مع حقن ترجمة عربية) ──────────────────
export const TG_FALLBACK_SITE = "kawaii";

// ── جميع المواقع المقبولة (Priority + Fallback) ──────────────────────────
export const TG_ALLOWED_SITES = new Set<string>([...TG_PRIORITY_SITES, TG_FALLBACK_SITE]);

// ── أنواع قابلة للتخزين (MP4 مباشر فقط — HLS يُضاف لاحقاً) ────────────
const CACHEABLE_TYPES = new Set<string>(["mp4"]);

// ── الجودات المسموح بتخزينها: 3 سيرفرات فقط لكل حلقة ───────────────────
// أي جودة أخرى (480p، 240p، HD غير محدد…) تُرفض تلقائياً
const TG_QUALITY_MAP: Record<string, string> = {
  "1080": "1080p", "1080p": "1080p", "fhd": "1080p",
  "720":  "720p",  "720p":  "720p",
  "360":  "360p",  "360p":  "360p",
};

/**
 * يُعيد الجودة المُعيَّرة (1080p / 720p / 360p) أو null إن لم تكن مقبولة.
 * مثال: "1080 HD" → "1080p" | "480p" → null | "HD" → null
 */
export function normalizeTgQuality(quality: string): string | null {
  const q = (quality || "").toLowerCase().replace(/[^a-z0-9]/g, "");
  if (q.includes("1080")) return "1080p";
  if (q.includes("720"))  return "720p";
  if (q.includes("360"))  return "360p";
  return TG_QUALITY_MAP[q] ?? null;
}

// ── Types ────────────────────────────────────────────────────────────────

export interface TgCacheJob {
  animeId:        number;
  ep:             number;
  title:          string;
  quality:        string;
  site:           string;
  sourceUrl:      string;  // raw (un-encrypted) directUrl
  injectSubtitle?: boolean; // true لـ kawaii — يحقن ترجمة عربية من vdrk.site
  tmdbId?:        string;  // TMDB ID للحصول على الترجمة
}

interface TgCacheRow {
  id:           string;
  anime_id:     number;
  ep:           number;
  title:        string | null;
  quality:      string;
  site:         string;
  file_id:      string;
  file_size:    number | null;
  duration_sec: number | null;
  status:       "pending" | "downloading" | "ready" | "failed";
  source_url:   string | null;
  caption:      string | null;
  created_at:   string;
  updated_at:   string;
}

// ── حالة الـ worker في الذاكرة ──────────────────────────────────────────
const _pendingKeys  = new Set<string>(); // جودات قيد المعالجة أو في القائمة
const _jobQueue: TgCacheJob[] = [];
let   _workerRunning = false;

// كاش Telegram file URLs (30 دقيقة) — getFile تستغرق 200-500ms
const _urlCache = new Map<string, { url: string; expiresAt: number }>();

// عداد الحلقات المرفوعة منذ بدء التشغيل
let _totalUploaded = 0;
let _totalFailed   = 0;

// ── مساعدات التسمية ──────────────────────────────────────────────────────

/** مفتاح DB منظَّم: tg:{animeId}:ep{ep:03d}:{quality}:{site} */
export function makeTgId(animeId: number, ep: number, quality: string, site: string): string {
  const epStr = String(ep).padStart(3, "0");
  const q     = (normalizeTgQuality(quality) || quality || "hd").replace(/[^a-z0-9]/gi, "").toLowerCase() || "hd";
  return `tg:${animeId}:ep${epStr}:${q}:${site}`;
}

/** مفتاح الـ pending set: {animeId}:{ep}:{quality} — يمنع تخزين نفس الجودة مرتين */
function makePendingKey(animeId: number, ep: number, quality: string): string {
  const q = normalizeTgQuality(quality) || quality || "hd";
  return `${animeId}:${ep}:${q.toLowerCase()}`;
}

/** Caption يُرسل مع الفيديو على تيليغرام */
function makeCaption(title: string, ep: number, quality: string, site: string): string {
  const epStr = String(ep).padStart(3, "0");
  return `[NOVA] ${title || "أنمي"} | ح${epStr} | ${quality} | ${site}`;
}

// ── DB helpers ───────────────────────────────────────────────────────────

async function dbGetReady(animeId: number, ep: number): Promise<TgCacheRow[]> {
  try {
    const rows = await sbSelect("telegram_episode_cache", {
      anime_id: `eq.${animeId}`,
      ep:       `eq.${ep}`,
      status:   "eq.ready",
    });
    return Array.isArray(rows) ? (rows as TgCacheRow[]) : [];
  } catch { return []; }
}

async function dbQualityExists(animeId: number, ep: number, quality: string): Promise<boolean> {
  const q = (quality || "hd").replace(/[^a-z0-9]/gi, "").toLowerCase() || "hd";
  try {
    const rows = await sbSelect("telegram_episode_cache", {
      anime_id: `eq.${animeId}`,
      ep:       `eq.${ep}`,
    });
    if (!Array.isArray(rows)) return false;
    return rows.some((r: any) =>
      (r.quality || "").toLowerCase() === q &&
      (r.status === "ready" || r.status === "downloading" || r.status === "pending")
    );
  } catch { return false; }
}

async function dbUpsert(row: Partial<TgCacheRow> & { id: string }): Promise<void> {
  try {
    await sbUpsert("telegram_episode_cache", {
      ...row,
      updated_at: new Date().toISOString(),
    });
  } catch (e: any) {
    console.warn("[tgCache] DB upsert error:", e.message);
  }
}

// ── إشعارات الأدمن ─────────────────────────────────────────────────────

/**
 * يرسل رسالة نصية للأدمن عبر TELEGRAM_CHAT_ID
 * لا ينتظر — لا يؤثر على pipeline الرفع
 */
function sendAdminNotif(text: string): void {
  const token  = process.env.TELEGRAM_BOT_TOKEN || process.env.TELEGRAM_CACHE_BOT_TOKEN;
  const chatId = process.env.TELEGRAM_CHAT_ID;
  if (!token || !chatId) return;

  fetch(`https://api.telegram.org/bot${token}/sendMessage`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({
      chat_id:    chatId,
      text,
      parse_mode: "HTML",
      disable_web_page_preview: true,
    }),
    signal: AbortSignal.timeout(10_000),
  }).catch(() => {}); // تجاهل أخطاء الإشعار — لا تؤثر على العملية
}

// ── Telegram helpers ─────────────────────────────────────────────────────

async function getTgToken(): Promise<string> {
  // TELEGRAM_CACHE_BOT_TOKEN: بوت مخصص للرفع (يختلف عن بوت الإشعارات)
  // يرجع إلى TELEGRAM_BOT_TOKEN إن لم يكن CACHE_BOT_TOKEN موجوداً
  return (
    process.env.TELEGRAM_CACHE_BOT_TOKEN ||
    (await getEnvOrDb("TELEGRAM_CACHE_BOT_TOKEN", "telegram_cache_bot_token")) ||
    (await getEnvOrDb("TELEGRAM_BOT_TOKEN", "telegram_bot_token")) ||
    ""
  );
}

async function getTgChannelId(): Promise<string> {
  // قناة مخصصة للتخزين (تختلف عن قناة الإشعارات)
  return (
    process.env.TELEGRAM_CACHE_CHANNEL_ID ||
    (await getEnvOrDb("TELEGRAM_CACHE_CHANNEL_ID", "telegram_cache_channel_id")) ||
    ""
  );
}

/** جلب URL مؤقت من file_id (مُكاش 30 دقيقة) */
async function getFileUrl(fileId: string, token: string): Promise<string | null> {
  const hit = _urlCache.get(fileId);
  if (hit && Date.now() < hit.expiresAt) return hit.url;

  try {
    const r = await fetch(
      `https://api.telegram.org/bot${token}/getFile?file_id=${encodeURIComponent(fileId)}`,
      { signal: AbortSignal.timeout(10_000) },
    );
    const d = await r.json() as any;
    if (!d.ok || !d.result?.file_path) return null;
    const url = `https://api.telegram.org/file/bot${token}/${d.result.file_path}`;
    _urlCache.set(fileId, { url, expiresAt: Date.now() + 28 * 60_000 });
    return url;
  } catch { return null; }
}

// ── ffprobe: التحقق من صلاحية الرابط ─────────────────────────────────────

interface ProbeResult { ok: boolean; duration: number; width: number; height: number }

async function probeUrl(url: string, timeoutMs = 20_000): Promise<ProbeResult> {
  return new Promise(resolve => {
    const child = spawn("ffprobe", [
      "-v", "quiet",
      "-print_format", "json",
      "-show_streams",
      "-show_format",
      "-user_agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36",
      url,
    ], { stdio: ["ignore", "pipe", "ignore"] });

    let out = "";
    child.stdout.on("data", (d: Buffer) => { out += d.toString(); });

    const timer = setTimeout(() => {
      child.kill("SIGKILL");
      resolve({ ok: false, duration: 0, width: 0, height: 0 });
    }, timeoutMs);

    child.on("close", () => {
      clearTimeout(timer);
      try {
        const parsed   = JSON.parse(out);
        const vStream  = parsed.streams?.find((s: any) => s.codec_type === "video");
        const duration = parseFloat(parsed.format?.duration || "0");
        if (vStream && duration > 10) {
          resolve({ ok: true, duration: Math.round(duration), width: vStream.width || 0, height: vStream.height || 0 });
        } else {
          resolve({ ok: false, duration: 0, width: 0, height: 0 });
        }
      } catch { resolve({ ok: false, duration: 0, width: 0, height: 0 }); }
    });
  });
}

// ── vdrk.site: جلب ترجمة عربية VTT ──────────────────────────────────────

async function fetchArabicVtt(tmdbId: string, ep: number): Promise<string | null> {
  // جرّب v2 أولاً ثم v3 (v1 ميت منذ 2026-06)
  for (const v of ["v2", "v3"]) {
    try {
      const url = `https://cache.vdrk.site/${v}/tv/${tmdbId}/1/${ep}/Arabic.vtt`;
      const r = await fetch(url, { signal: AbortSignal.timeout(12_000) });
      if (r.ok) {
        const text = await r.text();
        if (text.trim().startsWith("WEBVTT") && text.length > 100) return text;
      }
    } catch { /* جرّب التالي */ }
  }
  return null;
}

// ── ffmpeg: تحميل فيديو + حقن ترجمة (لـ KW fallback) ────────────────────

async function downloadVideoWithSub(
  videoUrl:  string,
  vttText:   string,
  outPath:   string,
  timeoutMs = 14 * 60_000,
): Promise<boolean> {
  // احفظ VTT في ملف مؤقت
  const { writeFileSync } = await import("fs");
  const vttPath = outPath.replace(".mp4", "_sub.vtt");
  try { writeFileSync(vttPath, vttText, "utf-8"); } catch { return false; }

  return new Promise(resolve => {
    const args = [
      "-y",
      "-user_agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36",
      "-headers", "Referer: https://www.google.com/\r\n",
      "-i", videoUrl,
      // حقن VTT: burn-in نص الترجمة العربية مباشرة
      "-vf", `subtitles=${vttPath}:charenc=UTF-8:force_style='FontName=DejaVu Sans,FontSize=24,PrimaryColour=&H00ffffff,OutlineColour=&H00000000,BorderStyle=3,Outline=2'`,
      "-c:v", "libx264",
      "-preset", "veryfast",
      "-crf", "23",
      "-c:a", "aac",
      "-b:a", "128k",
      "-movflags", "+faststart",
      outPath,
    ];

    const child = spawn("ffmpeg", args, { stdio: ["ignore", "ignore", "pipe"] });
    let errTail = "";
    child.stderr.on("data", (d: Buffer) => {
      errTail = (errTail + d.toString()).slice(-600);
    });

    const timer = setTimeout(() => {
      child.kill("SIGKILL");
      console.warn("[tgCache] ⏱ ffmpeg+sub timeout بعد", Math.round(timeoutMs / 60_000), "دقيقة");
      try { unlinkSync(vttPath); } catch {}
      resolve(false);
    }, timeoutMs);

    child.on("close", code => {
      clearTimeout(timer);
      try { unlinkSync(vttPath); } catch {}
      const size = existsSync(outPath) ? statSync(outPath).size : 0;
      if (code === 0 && size > 100_000) {
        resolve(true);
      } else {
        console.warn(`[tgCache] ❌ ffmpeg+sub exit=${code} size=${size} | ${errTail.slice(-200)}`);
        resolve(false);
      }
    });
  });
}

// ── ffmpeg: تحميل الفيديو ─────────────────────────────────────────────────

async function downloadVideo(url: string, outPath: string, timeoutMs = 10 * 60_000): Promise<boolean> {
  return new Promise(resolve => {
    const args = [
      "-y",
      "-user_agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36",
      "-headers", "Referer: https://www.google.com/\r\n",
      "-i", url,
      "-c", "copy",           // stream copy — بدون إعادة ترميز (سريع)
      "-movflags", "+faststart", // faststart لتشغيل مباشر من الويب
      outPath,
    ];

    const child = spawn("ffmpeg", args, { stdio: ["ignore", "ignore", "pipe"] });
    let  errTail = "";
    child.stderr.on("data", (d: Buffer) => {
      const chunk = d.toString();
      errTail = (errTail + chunk).slice(-600);
    });

    const timer = setTimeout(() => {
      child.kill("SIGKILL");
      console.warn("[tgCache] ⏱ ffmpeg timeout بعد", Math.round(timeoutMs / 60_000), "دقيقة");
      resolve(false);
    }, timeoutMs);

    child.on("close", code => {
      clearTimeout(timer);
      const size = existsSync(outPath) ? statSync(outPath).size : 0;
      if (code === 0 && size > 100_000) {
        resolve(true);
      } else {
        console.warn(`[tgCache] ❌ ffmpeg exit=${code} size=${size} | ${errTail.slice(-200)}`);
        resolve(false);
      }
    });
  });
}

// ── Telegram upload: رفع الفيديو ──────────────────────────────────────────

async function uploadVideo(
  filePath: string,
  channelId: string,
  caption: string,
  token: string,
): Promise<string | null> {
  try {
    const { readFileSync } = await import("fs");
    const fileData  = readFileSync(filePath);
    const fileName  = filePath.split("/").pop() || "video.mp4";

    const form = new FormData();
    form.append("chat_id", channelId);
    form.append("caption", caption);
    form.append("parse_mode", "HTML");
    form.append("supports_streaming", "true");
    form.append("video", new Blob([fileData], { type: "video/mp4" }), fileName);

    const r = await fetch(`https://api.telegram.org/bot${token}/sendVideo`, {
      method: "POST",
      body:   form,
      signal: AbortSignal.timeout(15 * 60_000), // 15 دقيقة لرفع حلقة كاملة
    });
    const d = await r.json() as any;

    if (d.ok && d.result?.video?.file_id) {
      return d.result.video.file_id;
    }
    console.warn("[tgCache] ❌ Telegram upload error:", d.description);
    return null;
  } catch (e: any) {
    console.warn("[tgCache] ❌ Telegram upload exception:", e.message);
    return null;
  }
}

// ── processJob: معالجة وظيفة واحدة ──────────────────────────────────────

async function processJob(job: TgCacheJob): Promise<void> {
  const { animeId, ep, title, quality, site, sourceUrl } = job;
  const id      = makeTgId(animeId, ep, quality, site);
  const epStr   = String(ep).padStart(3, "0");
  const qLabel  = quality || "HD";
  const caption = makeCaption(title, ep, qLabel, site);
  const queueRemaining = _jobQueue.length; // عدد المتبقّي بعد هذه الوظيفة

  console.log(`[tgCache] 🎬 معالجة: ${title} ح${ep} | ${qLabel} | ${site}${job.injectSubtitle ? " + ترجمة" : ""}`);

  // ── إشعار: بدء المعالجة ────────────────────────────────────────────
  sendAdminNotif(
    `🎬 <b>بدأ تحميل حلقة</b>\n` +
    `📺 ${title || "أنمي"} | ح${epStr} | ${qLabel}\n` +
    `🌐 المصدر: ${site}\n` +
    `📋 المتبقّي في القائمة: ${queueRemaining} حلقة`,
  );

  // تسجيل "قيد التحميل" في DB
  await dbUpsert({ id, anime_id: animeId, ep, title: title || null, quality: qLabel, site, source_url: sourceUrl, caption, status: "downloading", file_id: "" });

  // اسم ملف مؤقت منظَّم: nova_{tg}_{animeId}_ep{ep:03d}_{quality}_{site}.mp4
  const safeId  = id.replace(/[:/]/g, "_");
  const tmpFile = join(tmpdir(), `nova_${safeId}.mp4`);

  try {
    // ── الخطوة 1: التحقق من الرابط قبل أي شيء ──────────────────────
    console.log(`[tgCache] 🔍 ffprobe: ${sourceUrl.slice(0, 100)}…`);
    const probe = await probeUrl(sourceUrl);
    if (!probe.ok) {
      console.warn("[tgCache] ❌ الرابط لا يحتوي فيديو صالح — تخطّي");
      await dbUpsert({ id, anime_id: animeId, ep, quality: qLabel, site, status: "failed", file_id: "" });
      _totalFailed++;
      sendAdminNotif(
        `❌ <b>فشل التحقق من الرابط</b>\n` +
        `📺 ${title || "أنمي"} | ح${epStr} | ${qLabel} | ${site}\n` +
        `⚠️ الرابط لا يحتوي فيديو صالح\n` +
        `📊 إجمالي اليوم: ✅ ${_totalUploaded} مرفوعة | ❌ ${_totalFailed} فشلت`,
      );
      return;
    }
    const durationMin = Math.floor(probe.duration / 60);
    const durationSec = probe.duration % 60;
    console.log(`[tgCache] ✅ الرابط يعمل | ${probe.duration}s | ${probe.width}x${probe.height}`);

    // ── الخطوة 2: التحميل (مع حقن ترجمة لـ KW أو بدونها) ─────────────
    console.log(`[tgCache] ⬇️ تحميل → ${tmpFile}`);
    let downloaded = false;

    if (job.injectSubtitle && job.tmdbId) {
      // KW fallback: جلب ترجمة عربية من vdrk.site ثم burn-in
      console.log(`[tgCache] 🔤 جلب ترجمة عربية (tmdbId=${job.tmdbId})…`);
      const vttText = await fetchArabicVtt(job.tmdbId, ep);
      if (vttText) {
        console.log(`[tgCache] ✅ ترجمة عربية موجودة (${vttText.length} bytes) — burn-in مع ffmpeg`);
        sendAdminNotif(`🔤 ترجمة عربية موجودة — جارٍ الدمج مع الفيديو…\n📺 ${title} ح${epStr}`);
        downloaded = await downloadVideoWithSub(sourceUrl, vttText, tmpFile);
      } else {
        console.warn("[tgCache] ⚠️ لا توجد ترجمة عربية في vdrk.site — تحميل بدون ترجمة");
        downloaded = await downloadVideo(sourceUrl, tmpFile);
      }
    } else {
      // Priority sites (AW/AF/FX/SA): stream copy مباشر
      downloaded = await downloadVideo(sourceUrl, tmpFile);
    }

    if (!downloaded) {
      console.warn("[tgCache] ❌ فشل تحميل الفيديو");
      await dbUpsert({ id, anime_id: animeId, ep, quality: qLabel, site, status: "failed", file_id: "" });
      _totalFailed++;
      sendAdminNotif(
        `❌ <b>فشل تحميل الفيديو</b>\n` +
        `📺 ${title || "أنمي"} | ح${epStr} | ${qLabel} | ${site}\n` +
        `⏱ المدة: ${durationMin}:${String(durationSec).padStart(2,"0")}\n` +
        `📊 إجمالي اليوم: ✅ ${_totalUploaded} مرفوعة | ❌ ${_totalFailed} فشلت`,
      );
      return;
    }
    const fileSize = statSync(tmpFile).size;
    const fileMB   = (fileSize / 1024 / 1024).toFixed(1);
    console.log(`[tgCache] ✅ تم التحميل | ${fileMB} MB`);

    // ── الخطوة 3: الرفع إلى تيليغرام ─────────────────────────────────
    const tok = await getTgToken();
    const cid = await getTgChannelId();
    if (!tok || !cid) {
      console.warn("[tgCache] ❌ TELEGRAM_BOT_TOKEN أو TELEGRAM_CACHE_CHANNEL_ID غير موجود");
      await dbUpsert({ id, anime_id: animeId, ep, quality: qLabel, site, status: "failed", file_id: "" });
      _totalFailed++;
      sendAdminNotif(`❌ توكن البوت أو ID القناة غير موجود — تحقق من الإعدادات`);
      return;
    }

    // ── إشعار: بدء الرفع ──────────────────────────────────────────────
    sendAdminNotif(
      `⬆️ <b>جارٍ الرفع إلى تيليغرام</b>\n` +
      `📺 ${title || "أنمي"} | ح${epStr} | ${qLabel}\n` +
      `📦 الحجم: ${fileMB} MB | ⏱ ${durationMin}:${String(durationSec).padStart(2,"0")} دقيقة\n` +
      `🌐 المصدر: ${site}`,
    );

    console.log(`[tgCache] ⬆️ رفع إلى تيليغرام: ${caption}`);
    const fileId = await uploadVideo(tmpFile, cid, caption, tok);
    if (!fileId) {
      console.warn("[tgCache] ❌ فشل الرفع إلى تيليغرام");
      await dbUpsert({ id, anime_id: animeId, ep, quality: qLabel, site, status: "failed", file_id: "" });
      _totalFailed++;
      sendAdminNotif(
        `❌ <b>فشل الرفع إلى تيليغرام</b>\n` +
        `📺 ${title || "أنمي"} | ح${epStr} | ${qLabel} | ${site}\n` +
        `📊 إجمالي اليوم: ✅ ${_totalUploaded} مرفوعة | ❌ ${_totalFailed} فشلت`,
      );
      return;
    }

    // ── الخطوة 4: الحفظ في DB ─────────────────────────────────────────
    await dbUpsert({
      id, anime_id: animeId, ep,
      title:        title || null,
      quality:      qLabel,
      site,
      file_id:      fileId,
      file_size:    fileSize,
      duration_sec: probe.duration,
      source_url:   sourceUrl,
      caption,
      status:       "ready",
    });

    _totalUploaded++;
    console.log(`[tgCache] 🎉 تم الحفظ: ${title} ح${ep} | ${qLabel} | file_id=${fileId.slice(0, 20)}…`);

    // ── إشعار: اكتمال الرفع ────────────────────────────────────────────
    sendAdminNotif(
      `✅ <b>اكتمل الرفع بنجاح!</b>\n` +
      `📺 ${title || "أنمي"} | ح${epStr} | ${qLabel} | ${site}\n` +
      `📦 ${fileMB} MB | ⏱ ${durationMin}:${String(durationSec).padStart(2,"0")}\n` +
      `🆔 file_id: <code>${fileId.slice(0, 30)}…</code>\n` +
      `📋 المتبقّي في القائمة: ${_jobQueue.length} حلقة\n` +
      `📊 إجمالي اليوم: ✅ ${_totalUploaded} مرفوعة | ❌ ${_totalFailed} فشلت`,
    );

  } finally {
    // تنظيف الملف المؤقت دائماً
    try { if (existsSync(tmpFile)) unlinkSync(tmpFile); } catch {}
  }
}

// ── Worker loop ──────────────────────────────────────────────────────────

async function runWorker(): Promise<void> {
  if (_workerRunning) return;
  _workerRunning = true;

  while (_jobQueue.length > 0) {
    const job = _jobQueue.shift()!;
    const pk  = makePendingKey(job.animeId, job.ep, job.quality);
    try {
      await processJob(job);
    } catch (e: any) {
      console.warn("[tgCache] ⚠️ worker exception:", e.message);
    } finally {
      _pendingKeys.delete(pk);
    }
  }

  _workerRunning = false;
}

// ════════════════════════════════════════════════════════════════════════════
//  Public API
// ════════════════════════════════════════════════════════════════════════════

/**
 * هل يجب تخزين هذا المصدر؟
 * Priority:  animewitcher → animefay → anifox → sanime
 * Fallback:  kawaii (مع حقن ترجمة)
 * شرط:       directType === "mp4" + رابط خارجي
 */
export function isTgCacheable(site: string, directType?: string, directUrl?: string, quality?: string): boolean {
  if (!TG_ALLOWED_SITES.has(site))            return false;
  if (directType !== "mp4")                    return false;
  if (!directUrl)                              return false;
  if (directUrl.startsWith("/api/"))           return false; // proxy داخلي — لا يُخزَّن
  if (!normalizeTgQuality(quality || ""))      return false; // فقط 1080p / 720p / 360p
  return true;
}

/**
 * أضف مصدراً لقائمة انتظار التخزين.
 * آمن للاستدعاء من sendSrc — لا ينتظر، لا يؤثر على الأداء.
 */
export function enqueueTgDownload(job: TgCacheJob): void {
  if (!job.animeId || !job.sourceUrl) return;
  if (_jobQueue.length >= 8)          return; // لا نُثقل الـ VPS

  const pk = makePendingKey(job.animeId, job.ep, job.quality);
  if (_pendingKeys.has(pk)) return; // هذه الجودة قيد المعالجة بالفعل

  // تحقق سريع من DB (async, لا ينتظر)
  dbQualityExists(job.animeId, job.ep, job.quality).then(exists => {
    if (exists) return; // موجودة بالفعل في DB
    if (_pendingKeys.has(pk)) return;
    _pendingKeys.add(pk);
    _jobQueue.push(job);
    console.log(`[tgCache] 📥 قائمة انتظار: ${job.title} ح${job.ep} | ${job.quality} | ${job.site}`);
    setImmediate(() => runWorker().catch(() => {}));
  }).catch(() => {});
}

/**
 * جلب المصادر المُخزَّنة من تيليغرام لحلقة معينة.
 * يُستدعى في بداية sources-stream لتقديم النتائج فوراً.
 */
export async function getTgCachedSources(
  animeId: number,
  ep:      number,
): Promise<any[]> {
  if (!animeId) return [];

  const rows = await dbGetReady(animeId, ep);
  if (!rows.length) return [];

  const tok  = await getTgToken();
  if (!tok) return [];

  const sources: any[] = [];
  for (const row of rows) {
    const url = await getFileUrl(row.file_id, tok);
    if (!url) continue;

    const quality = row.quality || "HD";
    const qRank   = quality.includes("1080") ? 20
                  : quality.includes("720")  ? 19
                  : quality.includes("480")  ? 18
                  : quality.includes("360")  ? 17
                  : 16; // HD/SD generic

    sources.push({
      name:       `💾 ${quality} [Cache • ${row.site}]`,
      url,
      quality,
      qualityRank: qRank,
      site:        `tg_${row.site}`,
      directUrl:   url,
      directType:  "mp4" as const,
      isEmbed:     false,
    });
  }
  return sources;
}

/**
 * حالة النظام (للأدمن)
 */
export function getTgCacheStatus() {
  return {
    queueLength:    _jobQueue.length,
    pendingKeys:    [..._pendingKeys],
    workerRunning:  _workerRunning,
    urlCacheSize:   _urlCache.size,
    totalUploaded:  _totalUploaded,
    totalFailed:    _totalFailed,
  };
}

/**
 * تنظيف الوظائف المعلَّقة (pending/downloading قديمة > 2 ساعة)
 * يُستدعى عند بدء تشغيل التطبيق
 */
export async function cleanupStaleTgJobs(): Promise<void> {
  try {
    const twoHoursAgo = new Date(Date.now() - 2 * 60 * 60_000).toISOString();
    // نحدّث الـ stale jobs إلى failed
    const stale = await sbSelect("telegram_episode_cache", {
      status: "in.(pending,downloading)",
    });
    if (!Array.isArray(stale)) return;
    for (const row of stale as TgCacheRow[]) {
      if (row.updated_at < twoHoursAgo) {
        await dbUpsert({ id: row.id, anime_id: row.anime_id, ep: row.ep, quality: row.quality, site: row.site, status: "failed", file_id: row.file_id || "" });
      }
    }
    if (stale.length > 0) console.log(`[tgCache] 🧹 نظّفنا ${stale.length} وظيفة معلّقة قديمة`);
  } catch {}
}
