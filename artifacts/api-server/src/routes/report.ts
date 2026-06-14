import { Router } from "express";

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

  if (!BOT_TOKEN || !CHAT_ID) {
    res.status(503).json({ ok: false, error: "خدمة الإبلاغ غير مُهيَّأة بعد" });
    return;
  }

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
  ].filter(l => l !== undefined);

  const text = lines.join("\n");

  try {
    const tgRes = await fetch(
      `https://api.telegram.org/bot${BOT_TOKEN}/sendMessage`,
      {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          chat_id:    CHAT_ID,
          text,
          parse_mode: "Markdown",
        }),
        signal: AbortSignal.timeout(10_000),
      }
    );

    const tgData = await tgRes.json() as { ok: boolean; description?: string };

    if (!tgData.ok) {
      console.error("[report] Telegram error:", tgData.description);
      res.status(502).json({ ok: false, error: "فشل إرسال الرسالة" });
      return;
    }

    res.json({ ok: true });
  } catch (err) {
    console.error("[report] fetch error:", err);
    res.status(500).json({ ok: false, error: "خطأ في الاتصال" });
  }
});

export default router;
