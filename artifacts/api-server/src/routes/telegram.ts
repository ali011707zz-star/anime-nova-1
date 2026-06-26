/**
 * telegram.ts — بوت تيليجرام لـ Anime NOVA
 * يستقبل رسائل المستخدمين، يرد عليهم، ويحوّل التقارير للأدمن
 * ويرسل تنبيهات الحلقات الجديدة للقناة تلقائياً
 */

import { Router, type Request, type Response } from "express";
import { sbInsert, sbSelect } from "../lib/supabaseClient.js";
import { getEnvOrDb } from "../lib/dbConfig.js";

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
  await fetch(`https://api.telegram.org/bot${tok}/sendMessage`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ chat_id: chatId, text, parse_mode: "HTML", ...extra }),
    signal: AbortSignal.timeout(8_000),
  }).catch(e => console.warn("[telegram] sendMessage failed:", e.message));
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
) {
  const key = `${anilistId}:${ep}`;
  if (notifiedEpisodes.has(key)) return; // لا تُرسل مرتين
  notifiedEpisodes.add(key);

  const channelId = process.env.TELEGRAM_CHANNEL_ID;
  const tok = await getToken();
  if (!channelId || !tok) return;

  const poster  = await fetchAnimePoster(anilistId);
  const caption =
    `🎬 <b>اسم الأنمي:</b> ${title}\n` +
    `📺 <b>الحلقة:</b> ${ep}\n` +
    `✨ تم إضافة الحلقة الجديدة\n\n` +
    `مشاهدة ممتعة 💙`;

  if (poster) {
    await sendChannelPhoto(poster, caption);
  } else {
    await sendMessage(channelId, caption);
  }
  console.log(`[telegram] ✅ تنبيه الحلقة أُرسل → ${title} ح${ep}`);
}

async function getAdminChatId(): Promise<string | null> {
  return process.env.TELEGRAM_CHAT_ID || null;
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

/* ── بناء رسالة الإشعار ────────────────────────────────────────────────── */

function buildCaption(media: any, ep: number): string {
  const title  = media.title?.english || media.title?.romaji || media.title?.native || "أنمي";
  const genres = (media.genres || []).slice(0, 3).join(" • ");

  return (
    `🎌 <b>حلقة جديدة!</b>\n\n` +
    `🎬 <b>${title}</b>\n` +
    `📺 <b>الحلقة:</b> ${ep}\n` +
    (genres ? `🏷 ${genres}\n` : "")
  ).trimEnd();
}

/* ── حالة الـ scheduler ──────────────────────────────────────────────── */

let schedulerRunning  = false;
let schedulerLastRun  = 0;
let schedulerNextRun  = 0;
let schedulerSentToday = 0;
let schedulerTimer: ReturnType<typeof setTimeout> | null = null;

const INTERVAL_MS = 30 * 60 * 1000; // كل 30 دقيقة

/* ── الدورة الواحدة ────────────────────────────────────────────────────── */

async function runSchedulerCycle(): Promise<void> {
  const tok = await getToken();
  if (!tok || !process.env.TELEGRAM_CHANNEL_ID) return;

  const now  = Math.floor(Date.now() / 1000);
  const from = schedulerLastRun > 0
    ? schedulerLastRun
    : now - (INTERVAL_MS / 1000) - 60; // أول مرة: نفس فترة الـ interval فقط (30 دقيقة)

  schedulerLastRun = now;
  schedulerNextRun = now + INTERVAL_MS / 1000;

  console.log(`[scheduler] 🔍 فحص AiringSchedules من ${new Date(from * 1000).toISOString()} → الآن`);

  const schedules = await fetchAiringSchedules(from - 60, now + 60); // ±60 ثانية هامش

  let sent = 0;
  for (const item of schedules) {
    const media = item.media;
    if (!media) continue;
    if (media.type !== "ANIME") continue;
    if (media.isAdult) continue;

    const anilistId = media.id as number;
    const ep        = item.episode as number;

    if (await wasNotified(anilistId, ep)) continue;

    // فحص توفر المصادر العربية (اختياري — لا يوقف الإرسال عند الفشل)
    const titleToCheck = media.title?.romaji || media.title?.english || "";
    if (titleToCheck) {
      try {
        const PORT = process.env["PORT"] || "8080";
        const checkRes = await fetch(
          `http://localhost:${PORT}/api/anime/check-arabic?t=${encodeURIComponent(titleToCheck)}`,
          { headers: { "x-internal": "1" }, signal: AbortSignal.timeout(6_000) }
        );
        const { available } = await checkRes.json() as { available: string[] };
        if (!available.length) {
          console.log(`[scheduler] ℹ️ لا مصادر عربية حتى الآن: ${titleToCheck} ح${ep} — الإرسال على أي حال`);
        }
      } catch {
        console.log(`[scheduler] ℹ️ فشل فحص المصادر: ${titleToCheck} ح${ep} — الإرسال على أي حال`);
      }
    }

    const poster  = media.coverImage?.extraLarge || media.coverImage?.large || null;
    const caption = buildCaption(media, ep);

    if (poster) {
      await sendChannelPhoto(poster, caption);
    } else {
      await sendMessage(process.env.TELEGRAM_CHANNEL_ID!, caption);
    }

    await markNotified(anilistId, ep);
    sent++;
    schedulerSentToday++;

    const title = media.title?.english || media.title?.romaji || "أنمي";
    console.log(`[scheduler] ✅ أُرسل → ${title} ح${ep}`);

    // تأخير بسيط بين الرسائل لتجنب flood limit
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

/* ── تشغيل الـ scheduler ───────────────────────────────────────────────── */

export function startEpisodeScheduler(): void {
  if (schedulerRunning) return;
  schedulerRunning = true;

  if (!process.env.TELEGRAM_CHANNEL_ID) {
    console.warn("[scheduler] ⚠️ TELEGRAM_CHANNEL_ID غير موجود — الـ scheduler لن يعمل");
    schedulerRunning = false;
    return;
  }

  // نبدأ أول فحص بعد 10 ثوانٍ (يعطي وقتاً لـ getToken() لتحميل التوكن من DB)
  setTimeout(async () => {
    const tok = await getToken();
    if (!tok) {
      console.warn("[scheduler] ⚠️ TELEGRAM_BOT_TOKEN غير موجود في البيئة أو DB — الـ scheduler لن يعمل");
      schedulerRunning = false;
      return;
    }
    console.log(`[scheduler] 🚀 بدأ — يفحص كل ${INTERVAL_MS / 60_000} دقيقة`);
    runSchedulerCycle().catch(e => console.warn("[scheduler] cycle error:", e.message));
    schedulerTimer = setInterval(() => {
      runSchedulerCycle().catch(e => console.warn("[scheduler] cycle error:", e.message));
    }, INTERVAL_MS);
  }, 10_000);
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
      `🌐 الموقع: https://animenova.replit.app\n\n` +
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
