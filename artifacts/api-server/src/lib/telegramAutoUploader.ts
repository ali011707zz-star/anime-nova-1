import fs from "node:fs";
import path from "node:path";
import { spawn } from "node:child_process";
import { createRequire } from "node:module";
import { pool } from "./db.js";
import { getEnvOrDb } from "./dbConfig.js";
import {
  getSectionDisplayInfo,
  normalizeQuality,
  normalizeMediaTitle,
  type TgAudioLang,
  type TgMediaSection,
} from "./telegramStorageLogic.mjs";
import {
  isSafePublicMediaUrl,
  classifyPullErrorArabic,
  formatReplacementAlertMessage,
  buildReplacementInlineKeyboard,
  extractCandidateEpisodeLinksFromHtml,
  extractDirectMediaFromEpisodeHtml,
  type BatchSessionSpec,
  type LeechJobSpec,
  type ImportRequestSpec,
} from "./telegramAutoUploaderLogic.mjs";
import {
  getMtprotoClient,
  indexRemoteUploadedEpisode,
  hasExistingTelegramEpisode,
  attachPosterToBatchSeries,
  markRemoteUploadInFlight,
  markSelfUploadedMessage,
} from "./telegramStorage.js";

const _req = createRequire(import.meta.url);
const TMP_ROOT = "/tmp/tg-leech";
const MAX_UPLOAD_BYTES = Math.floor(1.95 * 1024 * 1024 * 1024); // 1.95 GB (Telegram MTProto limit is 2 GB)
const MIN_FREE_DISK_BYTES = Math.floor(2.5 * 1024 * 1024 * 1024); // Keep at least 2.5 GB free on VPS
const INTERNAL_API_BASE = `http://127.0.0.1:${process.env.PORT || "5000"}`;

export type AdminNotifier = (
  chatId: string | number,
  htmlText: string,
  replyMarkup?: any
) => Promise<void>;

let _notifier: AdminNotifier | null = null;
let _schemaReady = false;
let _workerRunning = false;
let _stopRequested = false;

export function registerAutoUploaderNotifier(fn: AdminNotifier): void {
  _notifier = fn;
}

async function notifyAdmin(chatId: string | number, htmlText: string, replyMarkup?: any): Promise<void> {
  if (!_notifier) return;
  try {
    await _notifier(chatId, htmlText, replyMarkup);
  } catch (err: any) {
    console.error("[tg-auto] notifyAdmin error:", err?.message || err);
  }
}

export async function ensureAutoUploaderSchema(): Promise<void> {
  if (_schemaReady) return;
  await pool.query(`
    CREATE TABLE IF NOT EXISTS telegram_batch_sessions (
      id SERIAL PRIMARY KEY,
      section TEXT NOT NULL,
      title TEXT NOT NULL,
      season_number INTEGER NOT NULL DEFAULT 1,
      next_episode INTEGER NOT NULL DEFAULT 1,
      quality TEXT NOT NULL DEFAULT '720p',
      explicit_quality BOOLEAN NOT NULL DEFAULT FALSE,
      audio_lang TEXT NOT NULL DEFAULT 'sub',
      uploaded_count INTEGER NOT NULL DEFAULT 0,
      is_active BOOLEAN NOT NULL DEFAULT TRUE,
      started_by TEXT,
      created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
      updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
    );

    CREATE TABLE IF NOT EXISTS telegram_upload_queue (
      id SERIAL PRIMARY KEY,
      admin_chat_id TEXT NOT NULL,
      section TEXT NOT NULL,
      title TEXT NOT NULL,
      season_number INTEGER NOT NULL DEFAULT 1,
      episode_number INTEGER NOT NULL,
      quality TEXT NOT NULL DEFAULT '720p',
      explicit_quality BOOLEAN NOT NULL DEFAULT FALSE,
      audio_lang TEXT NOT NULL DEFAULT 'sub',
      poster_url TEXT,
      source_url TEXT NOT NULL,
      status TEXT NOT NULL DEFAULT 'queued',
      last_error TEXT,
      attempts INTEGER NOT NULL DEFAULT 0,
      uploaded_episode_id INTEGER,
      created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
      updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
    );
    CREATE INDEX IF NOT EXISTS idx_tg_queue_status_id
      ON telegram_upload_queue (status, id ASC);
  `);
  _schemaReady = true;
}

/* ── Plan 1: Batch Upload Session (الرفع الجماعي بدون وصف) ────────────── */

export interface ActiveBatchRow {
  id: number;
  section: TgMediaSection;
  title: string;
  season_number: number;
  next_episode: number;
  quality: string;
  explicit_quality: boolean;
  audio_lang: TgAudioLang;
  uploaded_count: number;
  is_active: boolean;
}

export async function startBatchSession(spec: BatchSessionSpec, startedBy: string): Promise<ActiveBatchRow> {
  await ensureAutoUploaderSchema();
  await pool.query(`UPDATE telegram_batch_sessions SET is_active = FALSE, updated_at = NOW() WHERE is_active = TRUE`);
  const r = await pool.query<ActiveBatchRow>(
    `INSERT INTO telegram_batch_sessions
      (section, title, season_number, next_episode, quality, explicit_quality, audio_lang, uploaded_count, is_active, started_by)
     VALUES ($1,$2,$3,$4,$5,$6,$7,0,TRUE,$8)
     RETURNING *`,
    [
      spec.section,
      spec.title,
      spec.season,
      spec.nextEpisode,
      spec.quality,
      spec.explicitQuality,
      spec.audioLang,
      startedBy,
    ]
  );
  return r.rows[0];
}

export async function getActiveBatchSession(): Promise<ActiveBatchRow | null> {
  await ensureAutoUploaderSchema();
  const r = await pool.query<ActiveBatchRow>(
    `SELECT * FROM telegram_batch_sessions WHERE is_active = TRUE ORDER BY id DESC LIMIT 1`
  );
  return r.rows[0] || null;
}

export async function stopBatchSession(): Promise<ActiveBatchRow | null> {
  await ensureAutoUploaderSchema();
  const r = await pool.query<ActiveBatchRow>(
    `UPDATE telegram_batch_sessions
        SET is_active = FALSE, updated_at = NOW()
      WHERE is_active = TRUE
      RETURNING *`
  );
  return r.rows[0] || null;
}

const SECTION_HASHTAG_MAP: Record<TgMediaSection, string> = {
  anime: "#انمي",
  spacetoon: "#سبيستون",
  animation: "#انميشن",
  aw_animation: "#انميشن_مدبلج",
  cartoon: "#كرتون",
  cartoon2: "#كرتون2",
  dubbed: "#انمي_مدبلج",
  film: "#فيلم",
  manga: "#مانجا",
  manhwa: "#مانهوا",
};

/**
 * Called by telegramStorage.ts when an uncaptioned video/archive arrives in the storage channel.
 * Atomically claims the next episode number and returns a valid structured caption.
 */
export async function consumeActiveBatchCaption(): Promise<{ caption: string; episodeNumber: number; session: ActiveBatchRow } | null> {
  await ensureAutoUploaderSchema();
  const r = await pool.query<ActiveBatchRow>(
    `UPDATE telegram_batch_sessions
        SET next_episode = next_episode + 1,
            uploaded_count = uploaded_count + 1,
            updated_at = NOW()
      WHERE id = (SELECT id FROM telegram_batch_sessions WHERE is_active = TRUE ORDER BY id DESC LIMIT 1)
      RETURNING *`
  );
  const row = r.rows[0];
  if (!row) return null;
  const claimedNum = row.next_episode - 1;
  const tag = SECTION_HASHTAG_MAP[row.section] || "#انمي";
  const langLine =
    row.audio_lang === "dub_en" ? "اللغة: انجليزي" :
    row.audio_lang === "dub_ar" ? "اللغة: عربي" :
    "اللغة: مترجم";
  const isCh = row.section === "manga" || row.section === "manhwa";
  const numLine = isCh ? `الفصل: ${claimedNum}` : `الحلقة: ${claimedNum}`;
  const lines = [
    tag,
    `الاسم: ${row.title}`,
    ...(isCh ? [] : [`الموسم: ${row.season_number}`]),
    numLine,
    ...(!isCh && row.explicit_quality ? [`الجودة: ${row.quality}`] : []),
    ...(isCh ? [] : [langLine]),
  ];
  return {
    caption: lines.join("\n"),
    episodeNumber: claimedNum,
    session: row,
  };
}

export async function tryAttachBatchPosterPhoto(photoFileId: string, photoMessageId: number): Promise<string | null> {
  const active = await getActiveBatchSession();
  if (!active || active.section === "manga" || active.section === "manhwa") return null;
  await attachPosterToBatchSeries(active.section, active.title, photoFileId, photoMessageId);
  return active.title;
}

/* ── Plan 2 & 3: Sequential Queue, Multi-Strategy Puller & MTProto Upload ─ */

export interface QueueRow {
  id: number;
  admin_chat_id: string;
  section: TgMediaSection;
  title: string;
  season_number: number;
  episode_number: number;
  quality: string;
  explicit_quality: boolean;
  audio_lang: TgAudioLang;
  poster_url: string | null;
  source_url: string;
  status: "queued" | "downloading" | "uploading" | "done" | "awaiting_replacement" | "skipped" | "cancelled";
  last_error: string | null;
  attempts: number;
  uploaded_episode_id: number | null;
}

export async function enqueueLeechJob(adminChatId: string | number, job: LeechJobSpec): Promise<{ queuedCount: number; skippedDupCount: number }> {
  await ensureAutoUploaderSchema();
  let queuedCount = 0;
  let skippedDupCount = 0;

  for (const item of job.items) {
    const exists = await hasExistingTelegramEpisode({
      section: job.section,
      title: job.title,
      season: job.season,
      episode: item.episodeNumber,
      audioLang: job.audioLang,
      quality: job.explicitQuality ? job.quality : undefined,
    });
    if (exists) {
      skippedDupCount++;
      continue;
    }
    await pool.query(
      `INSERT INTO telegram_upload_queue
        (admin_chat_id, section, title, season_number, episode_number, quality, explicit_quality, audio_lang, poster_url, source_url, status)
       VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,'queued')`,
      [
        String(adminChatId),
        job.section,
        job.title,
        job.season,
        item.episodeNumber,
        job.quality,
        job.explicitQuality,
        job.audioLang,
        job.posterUrl || null,
        item.url,
      ]
    );
    queuedCount++;
  }

  if (queuedCount > 0) {
    _stopRequested = false;
    void kickQueueWorker();
  }
  return { queuedCount, skippedDupCount };
}

export async function hasAwaitingReplacementItem(): Promise<QueueRow | null> {
  await ensureAutoUploaderSchema();
  const r = await pool.query<QueueRow>(
    `SELECT * FROM telegram_upload_queue WHERE status = 'awaiting_replacement' ORDER BY updated_at DESC LIMIT 1`
  );
  return r.rows[0] || null;
}

export async function applyReplacementLinkToQueue(
  adminChatId: string | number,
  rawText: string
): Promise<{ handled: boolean; messageAr?: string }> {
  const awaiting = await hasAwaitingReplacementItem();
  if (!awaiting) return { handled: false };

  const urlMatch = String(rawText || "").match(/https?:\/\/\S+/i);
  if (!urlMatch) return { handled: false };
  const newUrl = urlMatch[0].trim();

  if (!isSafePublicMediaUrl(newUrl)) {
    return {
      handled: true,
      messageAr: "⚠️ الرابط البديل غير صالح أو محظور أمنياً — أرسل رابط http/https عاماً صحيحاً.",
    };
  }

  await pool.query(
    `UPDATE telegram_upload_queue
        SET source_url = $1,
            status = 'queued',
            last_error = NULL,
            admin_chat_id = $2,
            updated_at = NOW()
      WHERE id = $3`,
    [newUrl, String(adminChatId), awaiting.id]
  );

  _stopRequested = false;
  void kickQueueWorker();

  return {
    handled: true,
    messageAr:
      `🔄 تم استلام الرابط البديل للحلقة <b>${awaiting.episode_number}</b> من <b>${escapeHtml(awaiting.title)}</b> — جارٍ السحب والرفع الآن...`,
  };
}

export async function handleQueueCallback(
  data: string,
  adminChatId?: string | number
): Promise<{ toast: string; messageAr?: string }> {
  await ensureAutoUploaderSchema();
  if (data === "tg_batch_stop") {
    const stopped = await stopBatchSession();
    return {
      toast: stopped ? "تم إنهاء وضع الدفعة" : "لا يوجد وضع دفعة نشط",
      messageAr: stopped
        ? `🛑 تم إنهاء وضع الدفعة لعمل <b>${escapeHtml(stopped.title)}</b> (إجمالي ما تم رفعه: <b>${stopped.uploaded_count}</b>).`
        : "ℹ️ لا يوجد وضع دفعة نشط حالياً.",
    };
  }
  if (data === "tg_q_stop") {
    _stopRequested = true;
    const upd = await pool.query(
      `UPDATE telegram_upload_queue
          SET status = 'cancelled', updated_at = NOW()
        WHERE status IN ('queued', 'awaiting_replacement', 'downloading', 'uploading')`
    );
    return {
      toast: "تم إيقاف الطابور",
      messageAr: `🛑 تم إيقاف الطابور وإلغاء <b>${upd.rowCount || 0}</b> عنصر متبقٍ.`,
    };
  }
  if (data.startsWith("tg_q_retry:")) {
    const id = Number.parseInt(data.slice("tg_q_retry:".length), 10);
    if (Number.isFinite(id) && id > 0) {
      await pool.query(
        `UPDATE telegram_upload_queue SET status = 'queued', last_error = NULL, updated_at = NOW() WHERE id = $1`,
        [id]
      );
      _stopRequested = false;
      void kickQueueWorker();
      return { toast: "🔄 جارٍ إعادة المحاولة...", messageAr: "🔄 جارٍ إعادة محاولة سحب الحلقة..." };
    }
  }
  if (data.startsWith("tg_q_skip:")) {
    const id = Number.parseInt(data.slice("tg_q_skip:".length), 10);
    if (Number.isFinite(id) && id > 0) {
      const r = await pool.query<QueueRow>(
        `UPDATE telegram_upload_queue SET status = 'skipped', updated_at = NOW() WHERE id = $1 RETURNING *`,
        [id]
      );
      _stopRequested = false;
      void kickQueueWorker();
      const row = r.rows[0];
      return {
        toast: "⏭️ تم تخطي الحلقة",
        messageAr: row
          ? `⏭️ تم تخطّي الحلقة <b>${row.episode_number}</b> من <b>${escapeHtml(row.title)}</b> — جارٍ متابعة باقي الطابور...`
          : "⏭️ تم تخطّي الحلقة.",
      };
    }
  }
  return { toast: "تم" };
}

export async function getQueueStatusSummary(): Promise<string> {
  await ensureAutoUploaderSchema();
  const [counts, batch, awaiting] = await Promise.all([
    pool.query<{ status: string; cnt: string }>(
      `SELECT status, COUNT(*)::text AS cnt
         FROM telegram_upload_queue
        WHERE updated_at > NOW() - INTERVAL '24 hours'
        GROUP BY status`
    ),
    getActiveBatchSession(),
    hasAwaitingReplacementItem(),
  ]);
  const map = new Map(counts.rows.map((r) => [r.status, Number(r.cnt)]));
  const queued = map.get("queued") || 0;
  const active = (map.get("downloading") || 0) + (map.get("uploading") || 0);
  const waitCnt = map.get("awaiting_replacement") || 0;
  const done = map.get("done") || 0;

  const lines = ["📊 <b>حالة الرفع التلقائي والطابور (آخر 24 ساعة)</b>", ""];
  if (batch) {
    const secInfo = getSectionDisplayInfo(batch.section, batch.audio_lang);
    lines.push(
      `📦 <b>وضع الدفعة النشط:</b> ${escapeHtml(batch.title)} (${secInfo.labelAr})`,
      `• الحلقة القادمة: <b>${batch.next_episode}</b> · تم رفع: <b>${batch.uploaded_count}</b> · أرسل /انهاء للإيقاف`,
      ""
    );
  } else {
    lines.push("📦 <b>وضع الدفعة:</b> غير نشط", "");
  }
  lines.push(
    `⏳ قيد التنفيذ الآن: <b>${active}</b>`,
    `📋 بالانتظار في الطابور: <b>${queued}</b>`,
    `⚠️ بانتظار رابط بديل: <b>${waitCnt}</b>`,
    `✅ مكتمل (آخر 24 ساعة): <b>${done}</b>`
  );
  if (awaiting) {
    lines.push(
      "",
      `🔔 <b>ينتظر رابطاً بديلاً الآن:</b> ${escapeHtml(awaiting.title)} — الحلقة <b>${awaiting.episode_number}</b> (أرسل الرابط الجديد مباشرة هنا).`
    );
  }
  return lines.join("\n");
}

/* ── Plan 3: Auto-Import Resolver (Built-in App Sources + External URL) ── */

export async function resolveAndEnqueueImport(
  adminChatId: string | number,
  reqSpec: ImportRequestSpec
): Promise<{ ok: boolean; messageAr: string }> {
  await ensureAutoUploaderSchema();
  const secInfo = getSectionDisplayInfo(reqSpec.section, reqSpec.audioLang);

  // Mode A: External Series Page URL
  if (reqSpec.sourceUrl) {
    let html = "";
    try {
      const resp = await fetch(reqSpec.sourceUrl, {
        headers: {
          "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36",
          Accept: "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
          "Accept-Language": "ar,en-US;q=0.9,en;q=0.8",
        },
        signal: AbortSignal.timeout(20000),
      });
      if (!resp.ok) {
        const reason = classifyPullErrorArabic(`HTTP ${resp.status}`);
        return {
          ok: false,
          messageAr:
            `⚠️ <b>فشل السحب التلقائي من هذا الموقع!</b>\n` +
            `🌐 الرابط: <code>${escapeHtml(reqSpec.sourceUrl.slice(0, 140))}</code>\n` +
            `❌ السبب: <b>${escapeHtml(reason)}</b>\n\n` +
            `💡 أرسل رابطاً من موقع آخر، أو استخدم أمر /سحب مع روابط الحلقات المباشرة.`,
        };
      }
      html = await resp.text();
    } catch (err: any) {
      const reason = classifyPullErrorArabic(err?.message || err);
      return {
        ok: false,
        messageAr:
          `⚠️ <b>فشل الاتصال بهذا الموقع!</b>\n` +
          `❌ السبب: <b>${escapeHtml(reason)}</b>\n\n` +
          `💡 أرسل رابطاً من موقع آخر.`,
      };
    }

    if (/just a moment|cf-browser-verification|attention required! \| cloudflare/i.test(html)) {
      return {
        ok: false,
        messageAr:
          `⚠️ <b>فشل السحب من هذا الموقع!</b>\n` +
          `❌ السبب: <b>الموقع محمي بـ Cloudflare ولا يسمح بالسحب التلقائي</b>\n\n` +
          `💡 أرسل رابطاً من موقع آخر، أو انسخ روابط المشغّل/التحميل المباشرة وأرسلها عبر أمر /سحب.`,
      };
    }

    // Grab og:image poster if user didn't pass one
    let posterUrl = reqSpec.posterUrl;
    if (!posterUrl) {
      const ogImg = html.match(/<meta[^>]+property=["']og:image["'][^>]+content=["']([^"']+)["']/i)?.[1];
      if (ogImg && isSafePublicMediaUrl(ogImg)) posterUrl = ogImg;
    }

    let candidates = extractCandidateEpisodeLinksFromHtml(html, reqSpec.sourceUrl);
    if (candidates.length === 0) {
      // Try yt-dlp flat-playlist (handles YouTube playlists, OK.ru playlists, VK, etc.)
      candidates = await extractPlaylistWithYtDlp(reqSpec.sourceUrl);
    }

    if (candidates.length === 0) {
      return {
        ok: false,
        messageAr:
          `⚠️ <b>لم أجد روابط حلقات قابلة للسحب في هذه الصفحة!</b>\n` +
          `🌐 <code>${escapeHtml(reqSpec.sourceUrl.slice(0, 140))}</code>\n\n` +
          `💡 أرسل رابط صفحة من موقع آخر، أو استخدم /سحب مع روابط الحلقات المباشرة.`,
      };
    }

    const mapped: Array<{ episodeNumber: number; url: string }> = [];
    candidates.forEach((c, idx) => {
      const epNum = c.episodeNumber ?? (idx + 1);
      if (epNum >= reqSpec.fromEp && epNum <= reqSpec.toEp) {
        mapped.push({ episodeNumber: epNum, url: c.url });
      }
    });
    const finalItems = mapped.length > 0
      ? mapped.slice(0, 50)
      : candidates.slice(0, Math.min(50, reqSpec.toEp - reqSpec.fromEp + 1)).map((c, idx) => ({
          episodeNumber: reqSpec.fromEp + idx,
          url: c.url,
        }));

    const enq = await enqueueLeechJob(adminChatId, {
      section: reqSpec.section,
      title: reqSpec.title,
      season: reqSpec.season,
      quality: reqSpec.quality,
      explicitQuality: reqSpec.explicitQuality,
      audioLang: reqSpec.audioLang,
      posterUrl,
      items: finalItems,
      skippedInvalidCount: 0,
    });

    return {
      ok: true,
      messageAr:
        `🚀 <b>تم بدء استيراد المسلسل تلقائياً!</b>\n` +
        `🎬 العمل: <b>${escapeHtml(reqSpec.title)}</b> (${secInfo.labelAr})\n` +
        `📋 الحلقات المضافة للطابور: <b>${enq.queuedCount}</b>` +
        (enq.skippedDupCount > 0 ? ` · تم تخطّي <b>${enq.skippedDupCount}</b> مكررة` : "") +
        `\n\n🔔 سيُرفع السيرفر الحلقات واحدة تلو الأخرى بالترتيب، وإذا فشل أي رابط سأنبهك فوراً لإرسال بديل.`,
    };
  }

  // Mode B: Built-in App Sources (Spacetoon / Cartoon / Cartoon2 / Dubbed)
  const resolved = await resolveFromBuiltInAppSource(reqSpec);
  if (!resolved.ok) {
    return { ok: false, messageAr: resolved.errorAr };
  }

  const enq = await enqueueLeechJob(adminChatId, {
    section: reqSpec.section,
    title: reqSpec.title,
    season: reqSpec.season,
    quality: reqSpec.quality,
    explicitQuality: reqSpec.explicitQuality,
    audioLang: reqSpec.audioLang,
    posterUrl: reqSpec.posterUrl || resolved.posterUrl || null,
    items: resolved.items,
    skippedInvalidCount: 0,
  });

  if (enq.queuedCount === 0) {
    return {
      ok: true,
      messageAr: `ℹ️ جميع الحلقات المطلوبة (${reqSpec.fromEp}–${reqSpec.toEp}) من <b>${escapeHtml(reqSpec.title)}</b> موجودة ومرفوعة مسبقاً في NOVA VIP!`,
    };
  }

  return {
    ok: true,
    messageAr:
      `🚀 <b>تم العثور على المسلسل في مصادر التطبيق وبدء الرفع التلقائي!</b>\n` +
      `🎬 العمل: <b>${escapeHtml(reqSpec.title)}</b> (${secInfo.labelAr})\n` +
      `📋 الحلقات في الطابور: <b>${enq.queuedCount}</b> (${enq.queuedCount > 0 ? `من ح${resolved.items[0]?.episodeNumber} إلى ح${resolved.items[resolved.items.length - 1]?.episodeNumber}` : ""})` +
      (enq.skippedDupCount > 0 ? `\n⏭️ تم تخطّي <b>${enq.skippedDupCount}</b> حلقة موجودة مسبقاً` : "") +
      `\n\n🔔 سأرفعها واحدة تلو الأخرى عبر السيرفر وأرسل لك تنبيهاً فورياً إذا فشل أي مصدر.`,
  };
}

async function resolveFromBuiltInAppSource(
  reqSpec: ImportRequestSpec
): Promise<{ ok: true; posterUrl: string | null; items: Array<{ episodeNumber: number; url: string }> } | { ok: false; errorAr: string }> {
  const hdrs = { "x-internal": "1" };
  const q = encodeURIComponent(reqSpec.title);
  const normTarget = normalizeMediaTitle(reqSpec.title);

  try {
    if (reqSpec.section === "spacetoon") {
      const catR = await fetch(`${INTERNAL_API_BASE}/api/dubbed/carateen/catalog?provider=sp&q=${q}&page=1`, { headers: hdrs, signal: AbortSignal.timeout(15000) });
      const cat = catR.ok ? ((await catR.json()) as any) : null;
      const list = (Array.isArray(cat?.results) ? cat.results : []).filter((x: any) => x?.source !== "tg" && Number(x?.id) < 9_000_000_000);
      const best = list.find((x: any) => normalizeMediaTitle(x.title).includes(normTarget)) || list[0];
      if (!best) {
        return { ok: false, errorAr: `⚠️ لم أجد "${escapeHtml(reqSpec.title)}" في مصدر سبيستون الخارجي — أرسل رابط صفحة العمل أو روابط الحلقات عبر /سحب.` };
      }
      const epR = await fetch(`${INTERNAL_API_BASE}/api/dubbed/carateen/episodes?provider=sp&showId=${encodeURIComponent(String(best.id))}`, { headers: hdrs, signal: AbortSignal.timeout(15000) });
      const epData = epR.ok ? ((await epR.json()) as any) : null;
      const eps = Array.isArray(epData?.episodes) ? epData.episodes : [];
      const filtered = eps
        .filter((e: any) => Number(e.number) >= reqSpec.fromEp && Number(e.number) <= reqSpec.toEp)
        .slice(0, 30)
        .map((e: any) => ({
          episodeNumber: Number(e.number),
          url: `nova-internal://sp/${best.id}/${e.epId || e.id}`,
        }));
      if (!filtered.length) {
        return { ok: false, errorAr: `⚠️ لم أجد حلقات في النطاق (${reqSpec.fromEp}–${reqSpec.toEp}) لهذا العمل في سبيستون.` };
      }
      return { ok: true, posterUrl: best.image || null, items: filtered };
    }

    if (reqSpec.section === "cartoon") {
      const catR = await fetch(`${INTERNAL_API_BASE}/api/dubbed/search?q=${q}`, { headers: hdrs, signal: AbortSignal.timeout(15000) });
      const cat = catR.ok ? ((await catR.json()) as any) : null;
      const list = (Array.isArray(cat?.results) ? cat.results : []).filter((x: any) => !String(x?.key || "").startsWith("tg://"));
      const best = list[0];
      const seriesKey = best?.seasons?.[0]?.arabicToonsId || best?.key;
      if (!best || !seriesKey) {
        return { ok: false, errorAr: `⚠️ لم أجد "${escapeHtml(reqSpec.title)}" في مصدر الكرتون — أرسل رابط صفحة العمل أو روابط الحلقات عبر /سحب.` };
      }
      const epR = await fetch(`${INTERNAL_API_BASE}/api/dubbed/episodes?series=${encodeURIComponent(String(seriesKey))}`, { headers: hdrs, signal: AbortSignal.timeout(15000) });
      const epData = epR.ok ? ((await epR.json()) as any) : null;
      const eps = Array.isArray(epData?.episodes) ? epData.episodes : [];
      const filtered = eps
        .filter((e: any) => Number(e.number) >= reqSpec.fromEp && Number(e.number) <= reqSpec.toEp && e.url)
        .slice(0, 30)
        .map((e: any) => ({
          episodeNumber: Number(e.number),
          url: `nova-internal://cartoon/${encodeURIComponent(String(e.url))}`,
        }));
      if (!filtered.length) {
        return { ok: false, errorAr: `⚠️ لم أجد حلقات في النطاق (${reqSpec.fromEp}–${reqSpec.toEp}) في مصدر الكرتون.` };
      }
      return { ok: true, posterUrl: best.poster || best.image || null, items: filtered };
    }

    if (reqSpec.section === "cartoon2") {
      const catR = await fetch(`${INTERNAL_API_BASE}/api/dubbed/sd2/catalog?q=${q}&page=1`, { headers: hdrs, signal: AbortSignal.timeout(15000) });
      const cat = catR.ok ? ((await catR.json()) as any) : null;
      const list = (Array.isArray(cat?.results) ? cat.results : []).filter((x: any) => !String(x?.slug || "").startsWith("tg-sd2-"));
      const best = list[0];
      if (!best?.slug) {
        return { ok: false, errorAr: `⚠️ لم أجد "${escapeHtml(reqSpec.title)}" في مصدر كرتون 2 — أرسل روابط الحلقات عبر /سحب.` };
      }
      const detR = await fetch(`${INTERNAL_API_BASE}/api/dubbed/sd2/detail?slug=${encodeURIComponent(String(best.slug))}`, { headers: hdrs, signal: AbortSignal.timeout(15000) });
      const det = detR.ok ? ((await detR.json()) as any) : null;
      const allEps: any[] = [];
      for (const s of Array.isArray(det?.seasons) ? det.seasons : []) {
        for (const e of Array.isArray(s?.episodes) ? s.episodes : []) allEps.push(e);
      }
      const filtered = allEps
        .filter((e: any) => Number(e.number) >= reqSpec.fromEp && Number(e.number) <= reqSpec.toEp && e.watchUrl)
        .slice(0, 30)
        .map((e: any) => ({
          episodeNumber: Number(e.number),
          url: `nova-internal://sd2/${encodeURIComponent(String(e.watchUrl))}`,
        }));
      if (!filtered.length) {
        return { ok: false, errorAr: `⚠️ لم أجد حلقات في النطاق (${reqSpec.fromEp}–${reqSpec.toEp}) في كرتون 2.` };
      }
      return { ok: true, posterUrl: best.image || null, items: filtered };
    }

    if (reqSpec.section === "dubbed") {
      const catR = await fetch(`${INTERNAL_API_BASE}/api/dubbed/animezid/catalog?q=${q}&page=1`, { headers: hdrs, signal: AbortSignal.timeout(15000) });
      const cat = catR.ok ? ((await catR.json()) as any) : null;
      const list = (Array.isArray(cat?.results) ? cat.results : []).filter((x: any) => !String(x?.slug || "").startsWith("tg-az-"));
      const best = list[0];
      if (!best?.slug) {
        return { ok: false, errorAr: `⚠️ لم أجد "${escapeHtml(reqSpec.title)}" في مصدر الأنمي المدبلج — أرسل روابط الحلقات عبر /سحب.` };
      }
      const detR = await fetch(`${INTERNAL_API_BASE}/api/dubbed/animezid/detail?slug=${encodeURIComponent(String(best.slug))}`, { headers: hdrs, signal: AbortSignal.timeout(15000) });
      const det = detR.ok ? ((await detR.json()) as any) : null;
      const eps = Array.isArray(det?.episodes) ? det.episodes : [];
      const filtered = eps
        .filter((e: any) => Number(e.number) >= reqSpec.fromEp && Number(e.number) <= reqSpec.toEp && e.vid)
        .slice(0, 30)
        .map((e: any) => ({
          episodeNumber: Number(e.number),
          url: `nova-internal://az/${encodeURIComponent(String(e.vid))}`,
        }));
      if (!filtered.length) {
        return { ok: false, errorAr: `⚠️ لم أجد حلقات في النطاق (${reqSpec.fromEp}–${reqSpec.toEp}) في مصدر المدبلج.` };
      }
      return { ok: true, posterUrl: best.image || null, items: filtered };
    }

    return {
      ok: false,
      errorAr:
        `ℹ️ الاستيراد التلقائي بالاسم فقط يدعم حالياً: <b>#سبيستون</b>، <b>#كرتون</b>، <b>#كرتون2</b>، <b>#مدبلج</b>.\n` +
        `للأقسام الأخرى أضف رابط صفحة العمل في الأمر، أو استخدم /سحب مع روابط الحلقات المباشرة.`,
    };
  } catch (err: any) {
    return {
      ok: false,
      errorAr: `⚠️ تعذر البحث في مصدر التطبيق (${escapeHtml(classifyPullErrorArabic(err?.message || err))}) — جرّب إرسال رابط موقع آخر.`,
    };
  }
}

/* ── Sequential Queue Worker (Concurrency = 1, Safe & Self-Cleaning) ──── */

export async function kickQueueWorker(): Promise<void> {
  if (_workerRunning) return;
  _workerRunning = true;
  try {
    await ensureAutoUploaderSchema();
    while (!_stopRequested) {
      // Do not advance past an item waiting for admin replacement so order stays predictable
      const awaiting = await hasAwaitingReplacementItem();
      if (awaiting) break;

      const nextRes = await pool.query<QueueRow>(
        `UPDATE telegram_upload_queue
            SET status = 'downloading',
                attempts = attempts + 1,
                updated_at = NOW()
          WHERE id = (
            SELECT id FROM telegram_upload_queue
             WHERE status = 'queued'
             ORDER BY id ASC
             LIMIT 1
          )
          RETURNING *`
      );
      const item = nextRes.rows[0];
      if (!item) break;

      await processSingleQueueItem(item);
      // Small breathing gap between episodes to respect Telegram rate limits & keep VPS cool
      await new Promise((r) => setTimeout(r, 1500));
    }
  } catch (err: any) {
    console.error("[tg-auto] worker loop error:", err?.message || err);
  } finally {
    _workerRunning = false;
  }
}

function checkFreeDiskOk(): boolean {
  try {
    const st = fs.statfsSync("/tmp");
    const avail = Number(st.bavail) * Number(st.bsize);
    return avail >= MIN_FREE_DISK_BYTES;
  } catch {
    return true;
  }
}

async function processSingleQueueItem(item: QueueRow): Promise<void> {
  const workDir = path.join(TMP_ROOT, `job-${item.id}-${Date.now()}`);
  fs.mkdirSync(workDir, { recursive: true });
  const outMp4 = path.join(workDir, `ep-${item.episode_number}.mp4`);

  try {
    if (!checkFreeDiskOk()) {
      throw new Error("disk_space_low");
    }

    // 1. Download / Pull to local MP4
    const dlResult = await downloadSourceToMp4(item.source_url, outMp4, workDir);
    if (!fs.existsSync(dlResult.filePath)) {
      throw new Error("empty_download_file");
    }
    const stat = fs.statSync(dlResult.filePath);
    if (stat.size < 100 * 1024) {
      throw new Error("not_video_file_too_small");
    }
    if (stat.size > MAX_UPLOAD_BYTES) {
      throw new Error("too_large_exceeds_2gb");
    }

    // 2. Probe real resolution & duration via ffprobe
    const probe = await probeVideoFile(dlResult.filePath);
    const resolvedQuality = item.explicit_quality
      ? item.quality
      : normalizeQuality("", probe.height || 720);

    // 3. Upload via MTProto to Private Storage Channel (supports up to 2 GB!)
    await pool.query(`UPDATE telegram_upload_queue SET status = 'uploading', updated_at = NOW() WHERE id = $1`, [item.id]);

    const storageChannelId = await getEnvOrDb("TELEGRAM_STORAGE_CHANNEL_ID", "telegram_storage_channel_id");
    if (!storageChannelId) {
      throw new Error("storage_channel_not_configured");
    }

    const secTag = SECTION_HASHTAG_MAP[item.section] || "#انمي";
    const caption = [
      secTag,
      `الاسم: ${item.title}`,
      ...(item.section === "film" ? [] : [`الموسم: ${item.season_number}`, `الحلقة: ${item.episode_number}`]),
      `الجودة: ${resolvedQuality}`,
    ].join("\n");

    const uploadRes = await uploadMp4ViaMtproto({
      channelId: storageChannelId,
      filePath: dlResult.filePath,
      caption,
      width: probe.width,
      height: probe.height,
      duration: probe.duration,
      fileName: `${item.title.replace(/[^\p{L}\p{N}_-]+/gu, "_").slice(0, 40)}_S${item.season_number}E${item.episode_number}_${resolvedQuality}.mp4`,
    });

    // 4. Index directly into PostgreSQL so it's live under NOVA VIP immediately!
    const indexed = await indexRemoteUploadedEpisode({
      channelId: storageChannelId,
      messageId: uploadRes.messageId,
      fileId: uploadRes.fileId,
      fileName: uploadRes.fileName,
      mimeType: "video/mp4",
      fileSize: stat.size,
      duration: probe.duration,
      width: probe.width,
      height: probe.height,
      captionRaw: caption,
      section: item.section,
      title: item.title,
      season: item.season_number,
      episode: item.episode_number,
      quality: resolvedQuality,
      audioLang: item.audio_lang,
      posterUrl: item.poster_url,
    });

    await pool.query(
      `UPDATE telegram_upload_queue
          SET status = 'done', uploaded_episode_id = $1, last_error = NULL, updated_at = NOW()
        WHERE id = $2`,
      [indexed.episode.id, item.id]
    );

    const remRes = await pool.query<{ cnt: string }>(
      `SELECT COUNT(*)::text AS cnt FROM telegram_upload_queue WHERE status = 'queued'`
    );
    const remaining = Number(remRes.rows[0]?.cnt || 0);
    const secInfo = getSectionDisplayInfo(item.section, item.audio_lang);
    const sizeMb = (stat.size / (1024 * 1024)).toFixed(1);

    await notifyAdmin(
      item.admin_chat_id,
      `✅ <b>تم السحب والرفع بنجاح (NOVA VIP)!</b>\n` +
        `🎬 <b>${escapeHtml(indexed.series.title)}</b>\n` +
        `📂 القسم: <b>${secInfo.labelAr}</b> · الموسم ${item.season_number} · الحلقة <b>${item.episode_number}</b>\n` +
        `🎞️ الجودة: <b>${resolvedQuality}</b> · الحجم: ${sizeMb} MB` +
        (remaining > 0 ? `\n⏳ متبقٍ في الطابور: <b>${remaining}</b> حلقة` : `\n🎉 <b>اكتمل الطابور بالكامل!</b>`),
      {
        inline_keyboard: [[{ text: "🗑️ حذف الحلقة من التطبيق", callback_data: `tg_del_ep:${indexed.episode.id}` }]],
      }
    );
  } catch (err: any) {
    const rawMsg = err?.message || String(err || "unknown");
    const reasonAr = classifyPullErrorArabic(rawMsg);
    console.error(`[tg-auto] item #${item.id} (${item.title} ep ${item.episode_number}) failed:`, rawMsg);

    await pool.query(
      `UPDATE telegram_upload_queue
          SET status = 'awaiting_replacement', last_error = $1, updated_at = NOW()
        WHERE id = $2`,
      [rawMsg.slice(0, 400), item.id]
    );

    const remRes = await pool.query<{ cnt: string }>(
      `SELECT COUNT(*)::text AS cnt FROM telegram_upload_queue WHERE status = 'queued'`
    );
    const remaining = Number(remRes.rows[0]?.cnt || 0);

    await notifyAdmin(
      item.admin_chat_id,
      formatReplacementAlertMessage(item, reasonAr, remaining),
      buildReplacementInlineKeyboard(item.id)
    );
  } finally {
    // Always wipe temp directory immediately to keep VPS disk spotless
    try {
      fs.rmSync(workDir, { recursive: true, force: true });
    } catch {}
  }
}

/* ── Multi-Strategy Downloader (Internal / Host Resolvers / HLS / Direct / yt-dlp) ── */

async function resolveInternalOrHostUrl(sourceUrl: string): Promise<{ url: string; referer?: string; isHls?: boolean }> {
  // 1. Built-in app sources (nova-internal://...)
  if (sourceUrl.startsWith("nova-internal://")) {
    const hdrs = { "x-internal": "1" };
    const rest = sourceUrl.slice("nova-internal://".length);
    const [kind, ...parts] = rest.split("/");

    if (kind === "sp" && parts.length >= 2) {
      const [showId, epId] = parts;
      const r = await fetch(`${INTERNAL_API_BASE}/api/dubbed/carateen/stream?provider=sp&showId=${encodeURIComponent(showId)}&episodeId=${encodeURIComponent(epId)}`, {
        headers: hdrs,
        signal: AbortSignal.timeout(20000),
      });
      const d = r.ok ? ((await r.json()) as any) : null;
      const streamUrl = String(d?.streamUrl || "").trim();
      if (!streamUrl) throw new Error("source_stream_unavailable");
      return {
        url: streamUrl,
        referer: "https://carateen.tv/",
        isHls: /\.m3u8(?:[?#]|$)|\/hls\//i.test(streamUrl),
      };
    }

    if (kind === "cartoon" && parts[0]) {
      const epUrl = decodeURIComponent(parts.join("/"));
      const r = await fetch(`${INTERNAL_API_BASE}/api/dubbed/watch-src?epUrl=${encodeURIComponent(epUrl)}`, {
        headers: hdrs,
        signal: AbortSignal.timeout(20000),
      });
      const d = r.ok ? ((await r.json()) as any) : null;
      const mediaPath = String(d?.rawUrl || d?.hlsUrl || "").trim();
      if (!mediaPath) throw new Error("source_stream_unavailable");
      const full = mediaPath.startsWith("/") ? `${INTERNAL_API_BASE}${mediaPath}` : mediaPath;
      return { url: full, isHls: d?.type === "hls" || /\.m3u8/i.test(full) };
    }

    if (kind === "sd2" && parts[0]) {
      const watchUrl = decodeURIComponent(parts.join("/"));
      const r = await fetch(`${INTERNAL_API_BASE}/api/dubbed/sd2/watch-src?watchUrl=${encodeURIComponent(watchUrl)}&preferMp4=1`, {
        headers: hdrs,
        signal: AbortSignal.timeout(25000),
      });
      const d = r.ok ? ((await r.json()) as any) : null;
      const mediaPath = String(d?.rawUrl || d?.hlsUrl || "").trim();
      if (!mediaPath) throw new Error("source_stream_unavailable");
      const full = mediaPath.startsWith("/") ? `${INTERNAL_API_BASE}${mediaPath}` : mediaPath;
      return { url: full, isHls: d?.type === "hls" || /\.m3u8/i.test(full) };
    }

    if (kind === "az" && parts[0]) {
      const vid = decodeURIComponent(parts.join("/"));
      const r = await fetch(`${INTERNAL_API_BASE}/api/dubbed/animezid/watch-src?vid=${encodeURIComponent(vid)}`, {
        headers: hdrs,
        signal: AbortSignal.timeout(25000),
      });
      const d = r.ok ? ((await r.json()) as any) : null;
      const mediaPath = String(d?.rawUrl || d?.hlsUrl || "").trim();
      if (!mediaPath) throw new Error("source_stream_unavailable");
      const full = mediaPath.startsWith("/") ? `${INTERNAL_API_BASE}${mediaPath}` : mediaPath;
      return { url: full, isHls: d?.type === "hls" || /\.m3u8/i.test(full) };
    }

    throw new Error("unsupported_internal_source");
  }

  // 2. Popular Direct File Hosts
  // Pixeldrain: https://pixeldrain.com/u/ID -> https://pixeldrain.com/api/file/ID?download
  const pdMatch = sourceUrl.match(/^https?:\/\/(?:www\.)?pixeldrain\.com\/u\/([A-Za-z0-9_-]+)/i);
  if (pdMatch) {
    return { url: `https://pixeldrain.com/api/file/${pdMatch[1]}?download`, referer: "https://pixeldrain.com/" };
  }

  // Google Drive: https://drive.google.com/file/d/ID/...
  const gdMatch = sourceUrl.match(/^https?:\/\/drive\.google\.com\/file\/d\/([A-Za-z0-9_-]+)/i) ||
                  sourceUrl.match(/^https?:\/\/drive\.google\.com\/open\?id=([A-Za-z0-9_-]+)/i);
  if (gdMatch) {
    return {
      url: `https://drive.usercontent.google.com/download?id=${gdMatch[1]}&export=download&confirm=t`,
      referer: "https://drive.google.com/",
    };
  }

  // MediaFire: https://www.mediafire.com/file/ID/...
  if (/^https?:\/\/(?:www\.)?mediafire\.com\/file\//i.test(sourceUrl)) {
    const r = await fetch(sourceUrl, {
      headers: { "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/126.0.0.0 Safari/537.36" },
      signal: AbortSignal.timeout(15000),
    });
    if (!r.ok) throw new Error(`HTTP ${r.status}`);
    const html = await r.text();
    const dlLink = html.match(/href="(https?:\/\/download\d*\.mediafire\.com\/[^"]+)"/i)?.[1];
    if (!dlLink) throw new Error("mediafire_direct_link_not_found");
    return { url: dlLink, referer: "https://www.mediafire.com/" };
  }

  return {
    url: sourceUrl,
    isHls: /\.m3u8(?:[?#]|$)/i.test(sourceUrl),
  };
}

async function downloadSourceToMp4(
  sourceUrl: string,
  outMp4: string,
  workDir: string
): Promise<{ filePath: string }> {
  const resolved = await resolveInternalOrHostUrl(sourceUrl);

  // Strategy A: HLS (.m3u8) -> instant ffmpeg stream-copy to MP4 (zero re-encoding)
  if (resolved.isHls) {
    await runFfmpegHlsToMp4(resolved.url, outMp4, resolved.referer);
    return { filePath: outMp4 };
  }

  // Strategy B: Try direct HTTP(S) video download first
  const directErr = await tryDirectHttpDownload(resolved.url, outMp4, resolved.referer);
  if (directErr === null) {
    return { filePath: outMp4 };
  }

  // If it failed with a fatal HTTP status (404/410/too_large) on a direct file URL, don't waste time on yt-dlp
  if (/404|410|too_large/i.test(directErr) && /\.(mp4|mkv|webm)(?:[?#]|$)/i.test(resolved.url)) {
    throw new Error(directErr);
  }

  // Strategy B.5: If URL returned an HTML watch page (e.g. arabic-toons.com), extract direct MP4 / HLS / host / iframe
  let ytTargetUrl = sourceUrl.startsWith("nova-internal://") ? resolved.url : sourceUrl;
  if (/not_video_html_page/i.test(directErr) && !sourceUrl.startsWith("nova-internal://")) {
    try {
      const pageRes = await fetch(resolved.url, {
        headers: {
          "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36",
          Accept: "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
          "Accept-Language": "ar,en-US;q=0.9,en;q=0.8",
          ...(resolved.referer ? { Referer: resolved.referer } : {}),
        },
        signal: AbortSignal.timeout(20000),
      });
      if (pageRes.ok) {
        const pageHtml = await pageRes.text();
        if (/just a moment|cf-browser-verification|attention required! \| cloudflare/i.test(pageHtml)) {
          throw new Error("cloudflare_403");
        }
        const extracted = extractDirectMediaFromEpisodeHtml(pageHtml, resolved.url);
        if (extracted) {
          if (extracted.kind === "hls") {
            await runFfmpegHlsToMp4(extracted.url, outMp4, resolved.url);
            return { filePath: outMp4 };
          }
          if (extracted.kind === "mp4") {
            const subErr = await tryDirectHttpDownload(extracted.url, outMp4, resolved.url);
            if (subErr === null) return { filePath: outMp4 };
          }
          if (extracted.kind === "host") {
            const hostRes = await resolveInternalOrHostUrl(extracted.url);
            if (hostRes.isHls) {
              await runFfmpegHlsToMp4(hostRes.url, outMp4, hostRes.referer || resolved.url);
              return { filePath: outMp4 };
            }
            const hostErr = await tryDirectHttpDownload(hostRes.url, outMp4, hostRes.referer || resolved.url);
            if (hostErr === null) return { filePath: outMp4 };
          }
          if (extracted.kind === "iframe") {
            ytTargetUrl = extracted.url;
          }
        }
      }
    } catch (htmlErr: any) {
      if (/cloudflare/i.test(String(htmlErr?.message || ""))) {
        throw htmlErr;
      }
    }
  }

  // Strategy C: Fallback to yt-dlp for web video pages / embeds / hosts
  const ytPath = await runYtDlpToMp4(ytTargetUrl, workDir);
  if (ytPath) {
    return { filePath: ytPath };
  }
  if (ytTargetUrl !== sourceUrl && !sourceUrl.startsWith("nova-internal://")) {
    const ytOrig = await runYtDlpToMp4(sourceUrl, workDir);
    if (ytOrig) return { filePath: ytOrig };
  }

  throw new Error(directErr || "unsupported_url");
}

async function tryDirectHttpDownload(url: string, destPath: string, referer?: string): Promise<string | null> {
  const headers: Record<string, string> = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36",
    Accept: "*/*",
  };
  if (referer) headers.Referer = referer;
  if (url.startsWith(INTERNAL_API_BASE)) headers["x-internal"] = "1";

  let resp: globalThis.Response;
  try {
    resp = await fetch(url, { headers, redirect: "follow", signal: AbortSignal.timeout(10 * 60 * 1000) });
  } catch (err: any) {
    return err?.message || "network_timeout";
  }

  if (!resp.ok) {
    return `HTTP ${resp.status}`;
  }

  const ct = String(resp.headers.get("content-type") || "").toLowerCase();
  if (ct.includes("application/vnd.apple.mpegurl") || ct.includes("application/x-mpegurl")) {
    await runFfmpegHlsToMp4(url, destPath, referer);
    return null;
  }
  if (ct.includes("text/html") || ct.includes("text/plain") || ct.includes("application/json")) {
    return "not_video_html_page";
  }

  const contentLen = Number(resp.headers.get("content-length") || 0);
  if (contentLen > MAX_UPLOAD_BYTES) {
    return "too_large_exceeds_2gb";
  }

  if (!resp.body) return "empty_body";

  const outStream = fs.createWriteStream(destPath);
  let total = 0;
  let checkedMagic = false;

  try {
    const reader = resp.body.getReader();
    while (true) {
      const { done, value } = await reader.read();
      if (done) break;
      if (!value || value.length === 0) continue;
      const chunk = Buffer.from(value);

      if (!checkedMagic) {
        checkedMagic = true;
        const headTxt = chunk.subarray(0, 64).toString("utf8").trimStart().toLowerCase();
        if (headTxt.startsWith("<!doctype") || headTxt.startsWith("<html") || headTxt.startsWith("<?xml")) {
          reader.cancel().catch(() => {});
          outStream.destroy();
          try { fs.unlinkSync(destPath); } catch {}
          return "not_video_html_page";
        }
        if (headTxt.startsWith("#extm3u")) {
          reader.cancel().catch(() => {});
          outStream.destroy();
          try { fs.unlinkSync(destPath); } catch {}
          await runFfmpegHlsToMp4(url, destPath, referer);
          return null;
        }
      }

      total += chunk.length;
      if (total > MAX_UPLOAD_BYTES) {
        reader.cancel().catch(() => {});
        outStream.destroy();
        try { fs.unlinkSync(destPath); } catch {}
        return "too_large_exceeds_2gb";
      }

      if (!outStream.write(chunk)) {
        await new Promise<void>((resolve) => outStream.once("drain", resolve));
      }
    }
    await new Promise<void>((resolve, reject) => {
      outStream.on("finish", resolve);
      outStream.on("error", reject);
      outStream.end();
    });
    return total > 100 * 1024 ? null : "not_video_file_too_small";
  } catch (err: any) {
    outStream.destroy();
    try { fs.unlinkSync(destPath); } catch {}
    return err?.message || "download_stream_error";
  }
}

function runProcess(cmd: string, args: string[], timeoutMs: number): Promise<{ code: number; stdout: string; stderr: string }> {
  return new Promise((resolve, reject) => {
    const child = spawn(cmd, args, { stdio: ["ignore", "pipe", "pipe"] });
    let stdout = "";
    let stderr = "";
    const timer = setTimeout(() => {
      child.kill("SIGKILL");
      reject(new Error("timeout"));
    }, timeoutMs);
    child.stdout.on("data", (d) => { if (stdout.length < 200_000) stdout += d.toString("utf8"); });
    child.stderr.on("data", (d) => { if (stderr.length < 50_000) stderr += d.toString("utf8"); });
    child.on("error", (err) => { clearTimeout(timer); reject(err); });
    child.on("close", (code) => {
      clearTimeout(timer);
      resolve({ code: code ?? 1, stdout, stderr });
    });
  });
}

async function runFfmpegHlsToMp4(hlsUrl: string, outMp4: string, referer?: string): Promise<void> {
  const args = ["-y", "-loglevel", "error"];
  if (referer) {
    args.push("-headers", `Referer: ${referer}\r\nUser-Agent: Mozilla/5.0\r\n`);
  }
  if (hlsUrl.startsWith(INTERNAL_API_BASE)) {
    args.push("-headers", "x-internal: 1\r\n");
  }
  args.push(
    "-i", hlsUrl,
    "-c", "copy",
    "-bsf:a", "aac_adtstoasc",
    "-movflags", "+faststart",
    outMp4
  );
  const res = await runProcess("ffmpeg", args, 10 * 60 * 1000);
  if (res.code !== 0) {
    throw new Error(`ffmpeg_failed: ${res.stderr.trim().slice(0, 200)}`);
  }
}

async function runYtDlpToMp4(url: string, workDir: string): Promise<string | null> {
  const outTpl = path.join(workDir, "ytdl.%(ext)s");
  const args = [
    "--no-playlist",
    "--no-warnings",
    "--max-filesize", "1950M",
    "-f", "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best",
    "--merge-output-format", "mp4",
    "-o", outTpl,
    url,
  ];
  const res = await runProcess("/usr/local/bin/yt-dlp", args, 10 * 60 * 1000);
  if (res.code !== 0) {
    throw new Error(`yt-dlp: ${res.stderr.trim().slice(0, 200)}`);
  }
  const files = fs.readdirSync(workDir).filter((f) => f.startsWith("ytdl.") && !f.endsWith(".part"));
  if (!files.length) return null;
  return path.join(workDir, files[0]);
}

async function extractPlaylistWithYtDlp(url: string): Promise<Array<{ url: string; episodeNumber: number | null; kind: "direct" | "host" | "episode_page" }>> {
  try {
    const res = await runProcess(
      "/usr/local/bin/yt-dlp",
      ["--flat-playlist", "--dump-single-json", "--no-warnings", url],
      25000
    );
    if (res.code !== 0 || !res.stdout) return [];
    const data = JSON.parse(res.stdout);
    const entries = Array.isArray(data?.entries) ? data.entries : [];
    return entries
      .map((e: any, idx: number) => {
        const u = String(e?.url || e?.webpage_url || "").trim();
        if (!isSafePublicMediaUrl(u)) return null;
        return { url: u, episodeNumber: idx + 1, kind: "episode_page" as const };
      })
      .filter(Boolean);
  } catch {
    return [];
  }
}

async function probeVideoFile(filePath: string): Promise<{ width: number; height: number; duration: number }> {
  try {
    const res = await runProcess(
      "ffprobe",
      ["-v", "error", "-select_streams", "v:0", "-show_entries", "stream=width,height:format=duration", "-of", "json", filePath],
      15000
    );
    if (res.code === 0 && res.stdout) {
      const data = JSON.parse(res.stdout);
      const stream = Array.isArray(data?.streams) ? data.streams[0] : null;
      return {
        width: Number(stream?.width || 1280),
        height: Number(stream?.height || 720),
        duration: Math.round(Number(data?.format?.duration || 0)),
      };
    }
  } catch {}
  return { width: 1280, height: 720, duration: 0 };
}

async function uploadMp4ViaMtproto(opts: {
  channelId: string;
  filePath: string;
  caption: string;
  width: number;
  height: number;
  duration: number;
  fileName: string;
}): Promise<{ messageId: number; fileId: string; fileName: string }> {
  const client = await getMtprotoClient();
  const { Api } = _req("telegram");
  const entity = await client.getInputEntity(Number(opts.channelId));

  const attrs = [
    new Api.DocumentAttributeVideo({
      duration: Math.max(0, Math.round(opts.duration || 0)),
      w: Math.max(0, Math.round(opts.width || 1280)),
      h: Math.max(0, Math.round(opts.height || 720)),
      supportsStreaming: true,
    }),
    new Api.DocumentAttributeFilename({ fileName: opts.fileName }),
  ];

  markRemoteUploadInFlight(opts.channelId, opts.caption);
  let sent: any = null;
  for (let attempt = 0; attempt < 2; attempt++) {
    try {
      sent = await client.sendFile(entity, {
        file: opts.filePath,
        caption: opts.caption,
        supportsStreaming: true,
        forceDocument: false,
        workers: 4,
        attributes: attrs,
      });
      break;
    } catch (err: any) {
      const waitSec = Number(err?.seconds || 0);
      if (waitSec > 0 && waitSec <= 60 && attempt === 0) {
        await new Promise((r) => setTimeout(r, (waitSec + 2) * 1000));
        continue;
      }
      throw err;
    }
  }

  const messageId = Number(sent?.id || 0);
  if (!messageId) {
    throw new Error("mtproto_upload_no_message_id");
  }
  markSelfUploadedMessage(opts.channelId, messageId, opts.caption);
  return {
    messageId,
    fileId: `mtproto:${opts.channelId}:${messageId}`,
    fileName: opts.fileName,
  };
}

function escapeHtml(s: string): string {
  return String(s || "")
    .replace(/&/g, "&amp;")
    .replace(/</g, "&lt;")
    .replace(/>/g, "&gt;");
}
