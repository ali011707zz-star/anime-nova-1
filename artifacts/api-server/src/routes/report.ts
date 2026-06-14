import { Router } from "express";
import { pool } from "../lib/db.js";

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

  // ── 1. حفظ في قاعدة البيانات دائماً (الطريقة الأساسية) ─────────────────
  try {
    await pool.query(
      `INSERT INTO reports (type, message, page, user_display_name)
       VALUES ($1, $2, $3, $4)`,
      [type || "other", message.trim(), page || null, userDisplayName || null]
    );
  } catch (dbErr) {
    console.error("[report] DB error:", dbErr);
    res.status(500).json({ ok: false, error: "فشل حفظ التقرير في قاعدة البيانات" });
    return;
  }

  // ── 2. إرسال Telegram اختياري — لا يُفشل الطلب إن لم يكن مُهيَّأ ───────
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

// ── قراءة التقارير (للمراجعة الداخلية) ─────────────────────────────────────
router.get("/api/report/list", async (req, res) => {
  try {
    const { rows } = await pool.query(
      `SELECT id, type, message, page, user_display_name, created_at
       FROM reports ORDER BY created_at DESC LIMIT 100`
    );
    res.json({ ok: true, reports: rows });
  } catch (err) {
    console.error("[report] list error:", err);
    res.status(500).json({ ok: false, error: "فشل جلب التقارير" });
  }
});

export default router;
