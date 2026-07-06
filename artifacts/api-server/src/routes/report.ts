import { Router, type Request } from "express";
import { sbInsert, sbSelect } from "../lib/supabaseClient.js";
import { getEnvOrDb } from "../lib/dbConfig.js";
import { getEmailUser } from "../auth/emailAuth.js";
import { checkRateLimit } from "../lib/security.js";

const router = Router();

const getBotToken = async () => getEnvOrDb("TELEGRAM_BOT_TOKEN", "telegram_bot_token");
const getChatId   = async () => process.env.TELEGRAM_CHAT_ID || await getEnvOrDb("TELEGRAM_CHAT_ID", "telegram_chat_id");

router.post("/api/report", async (req, res) => {
  // Rate limit: 5 تقارير/دقيقة لكل IP
  const ip =
    (req.headers["x-forwarded-for"] as string)?.split(",")[0].trim() ||
    req.socket.remoteAddress || "unknown";
  if (!checkRateLimit(`report:${ip}`, 5, 60_000)) {
    res.status(429).json({ ok: false, error: "طلبات كثيرة جداً، انتظر قليلاً" });
    return;
  }

  const { message, type, page, userDisplayName } = req.body as {
    message?: string;
    type?: string;
    page?: string;
    userDisplayName?: string;
  };

  if (!message?.trim()) {
    res.status(400).json({ ok: false, error: "الرسالة فارغة" });
    return;
  }

  // ── 1. حفظ في Supabase (اختياري — لا يوقف العملية إن فشل) ──────────────────
  try {
    await sbInsert("reports", {
      type:              type || "other",
      message:           message.trim(),
      page:              page || null,
      user_display_name: userDisplayName || null,
    });
  } catch (dbErr) {
    console.warn("[report] Supabase unavailable — continuing without DB save:", (dbErr as Error)?.message);
    // لا نوقف العملية — يكفي إرسال Telegram
  }

  // ── 2. إرسال Telegram اختياري ─────────────────────────────────────────────
  const botToken = await getBotToken();
  const chatId   = await getChatId();
  if (botToken && chatId) {
    const typeLabel: Record<string, string> = {
      bug:        "🐛 خلل تقني",
      suggestion: "💡 اقتراح",
      content:    "🎬 محتوى مفقود",
      other:      "💬 أخرى",
    };

    const lines: string[] = [
      `📨 *رسالة جديدة من Anime NOVA*`,
      ``,
      `📋 *النوع:* ${typeLabel[type || "other"] ?? "💬 أخرى"}`,
      userDisplayName ? `👤 *المرسل:* ${userDisplayName}` : "",
      page           ? `📍 *الصفحة:* ${page}` : "",
      ``,
      `📝 *الرسالة:*`,
      message.trim(),
      ``,
      `🕐 ${new Date().toLocaleString("ar-SA", { timeZone: "Asia/Riyadh" })}`,
    ].filter(l => l !== "");

    fetch(
      `https://api.telegram.org/bot${botToken}/sendMessage`,
      {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          chat_id:    chatId,
          text:       lines.join("\n"),
          parse_mode: "Markdown",
        }),
        signal: AbortSignal.timeout(8_000),
      }
    ).catch(err => console.warn("[report] Telegram send failed (non-fatal):", err));
  }

  res.json({ ok: true });
});

// ── قراءة التقارير (أدمن فقط) ────────────────────────────────────────────────
router.get("/api/report/list", async (req: Request, res) => {
  const eu = await getEmailUser(req);
  if (eu?.plan !== "admin") {
    res.status(401).json({ ok: false, error: "غير مصرّح — مطلوب صلاحيات المدير" });
    return;
  }
  try {
    const rows = await sbSelect("reports", { order: "created_at.desc" }, { limit: 100 });
    res.json({ ok: true, reports: rows });
  } catch (err) {
    console.error("[report] list error:", err);
    res.status(500).json({ ok: false, error: "فشل جلب التقارير" });
  }
});

export default router;
