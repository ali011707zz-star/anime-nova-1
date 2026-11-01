/**
 * reportRelay.ts — يُراقب تقارير Orkestr الخارجية كل دقيقة ويُرسلها لـ Telegram
 * يعمل على Replit ويقرأ من Supabase عبر db-relay على Orkestr
 */

const ORKESTR_URL    = "https://animenovaa.duckdns.org";
const RELAY_SECRET   = process.env.APP_SECRET || "";
const POLL_INTERVAL  = 60_000;          // كل دقيقة
const LOOKBACK_MS    = 12 * 60_000;     // آخر 12 دقيقة (ضعف الـ interval للأمان)

const _sentIds = new Set<string>();
let   _lastPoll = Date.now() - LOOKBACK_MS;

const TYPE_LABEL: Record<string, string> = {
  bug:        "🐛 خلل تقني",
  suggestion: "💡 اقتراح",
  content:    "🎬 محتوى مفقود",
  other:      "💬 أخرى",
};

async function sendTelegramMsg(token: string, chatId: string, text: string) {
  await fetch(`https://api.telegram.org/bot${token}/sendMessage`, {
    method:  "POST",
    headers: { "Content-Type": "application/json" },
    body:    JSON.stringify({ chat_id: chatId, text, parse_mode: "Markdown" }),
    signal:  AbortSignal.timeout(8_000),
  });
}

async function pollOrkestrReports() {
  const botToken = process.env.TELEGRAM_BOT_TOKEN;
  const chatId   = process.env.TELEGRAM_CHAT_ID;
  if (!botToken || !chatId || !RELAY_SECRET) return;

  try {
    const since = new Date(_lastPoll).toISOString();
    const qs    = `created_at=gte.${encodeURIComponent(since)}&order=created_at.asc&limit=20`;
    const res   = await fetch(`${ORKESTR_URL}/api/db-relay/reports?${qs}`, {
      headers: { "x-relay-secret": RELAY_SECRET },
      signal:  AbortSignal.timeout(12_000),
    });
    if (!res.ok) {
      console.warn(`[report-relay] db-relay returned ${res.status}`);
      return;
    }

    const reports: any[] = await res.json();
    if (!Array.isArray(reports) || reports.length === 0) return;

    let newCount = 0;
    for (const r of reports) {
      if (!r.id || _sentIds.has(r.id)) continue;
      _sentIds.add(r.id);
      newCount++;

      const typeLabel = TYPE_LABEL[r.type] ?? "💬 أخرى";
      const lines = [
        `📨 *رسالة من Anime NOVA* _(Orkestr)_`,
        ``,
        `📋 *النوع:* ${typeLabel}`,
        r.user_display_name ? `👤 *المرسل:* ${r.user_display_name}` : "",
        r.page              ? `📍 *الصفحة:* ${r.page}` : "",
        ``,
        `📝 *الرسالة:*`,
        String(r.message || "").trim(),
        ``,
        `🕐 ${new Date(r.created_at).toLocaleString("ar-SA", { timeZone: "Asia/Riyadh" })}`,
      ].filter(l => l !== "").join("\n");

      await sendTelegramMsg(botToken, chatId, lines);
      console.log(`[report-relay] ✅ sent report ${r.id} to Telegram`);
    }

    if (newCount > 0) console.log(`[report-relay] relayed ${newCount} report(s) from Orkestr`);
  } catch (e: any) {
    console.warn("[report-relay] poll error:", e.message);
  } finally {
    _lastPoll = Date.now() - 5_000; // طفيف خلف الوقت الحالي للأمان
  }
}

export function startReportRelay() {
  const botToken = process.env.TELEGRAM_BOT_TOKEN;
  if (!botToken) {
    console.warn("[report-relay] ⚠️ TELEGRAM_BOT_TOKEN غير موجود — relay لن يبدأ");
    return;
  }
  console.log("[report-relay] ✅ بدأ مراقبة تقارير Orkestr كل 60 ثانية");
  pollOrkestrReports();
  setInterval(pollOrkestrReports, POLL_INTERVAL);
}
