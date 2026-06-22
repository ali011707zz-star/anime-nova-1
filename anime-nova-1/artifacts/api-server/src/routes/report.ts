import { Router } from "express";
import { sbInsert, sbSelect } from "../lib/supabaseClient.js";

const router = Router();

const BOT_TOKEN = process.env.TELEGRAM_BOT_TOKEN || "";
const CHAT_ID   = process.env.TELEGRAM_CHAT_ID   || "";

router.post("/api/report", async (req, res) => {
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

  // ── 1. حفظ في Supabase دائماً ────────────────────────────────────────────
  try {
    await sbInsert("reports", {
      type:              type || "other",
      message:           message.trim(),
      page:              page || null,
      user_display_name: userDisplayName || null,
    });
  } catch (dbErr) {
    console.error("[report] Supabase error:", dbErr);
    res.status(500).json({ ok: false, error: "فشل حفظ التقرير في قاعدة البيانات" });
    return;
  }

  // ── 2. إرسال Telegram اختياري ─────────────────────────────────────────────
  if (BOT_TOKEN && CHAT_ID) {
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
      `https://api.telegram.org/bot${BOT_TOKEN}/sendMessage`,
      {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          chat_id:    CHAT_ID,
          text:       lines.join("\n"),
          parse_mode: "Markdown",
        }),
        signal: AbortSignal.timeout(8_000),
      }
    ).catch(err => console.warn("[report] Telegram send failed (non-fatal):", err));
  }

  res.json({ ok: true });
});

// ── قراءة التقارير ────────────────────────────────────────────────────────────
router.get("/api/report/list", async (_req, res) => {
  try {
    const rows = await sbSelect("reports", { order: "created_at.desc" }, { limit: 100 });
    res.json({ ok: true, reports: rows });
  } catch (err) {
    console.error("[report] list error:", err);
    res.status(500).json({ ok: false, error: "فشل جلب التقارير" });
  }
});

export default router;
