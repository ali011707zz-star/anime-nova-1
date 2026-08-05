/**
 * crashReport.ts — استقبال أعطال Nova Mobile وحفظها في السيرفر
 * GET  /api/crash-report         → آخر 200 خطأ (للمطور فقط)
 * POST /api/crash-report         → إضافة خطأ جديد من الموبايل
 * DELETE /api/crash-report        → مسح كل السجلات
 */
import { Router } from "express";
import { logger } from "../lib/logger.js";

const router = Router();

interface CrashEntry {
  ts: number;
  type: string;
  message: string;
  stack?: string;
  context?: string;
  isFatal?: boolean;
  platform?: string;
  version?: string | number;
}

// حد أقصى 500 خطأ في الذاكرة
const MAX = 500;
const crashLog: CrashEntry[] = [];

/* POST /api/crash-report — استقبال خطأ جديد */
router.post("/", (req, res) => {
  try {
    const entry = req.body as CrashEntry;
    if (!entry?.message) { res.status(400).json({ ok: false }); return; }

    crashLog.unshift({ ...entry, ts: entry.ts || Date.now() });
    if (crashLog.length > MAX) crashLog.splice(MAX);

    // طباعة في سجلات السيرفر للرؤية الفورية
    const prefix = entry.isFatal ? "🔴 FATAL" : "🟡";
    logger.warn(
      `[crash-report] ${prefix} [${entry.platform ?? "?"}] [${entry.type}] ${entry.message?.slice(0, 200)}`
    );

    res.json({ ok: true });
  } catch {
    res.status(500).json({ ok: false });
  }
});

/* GET /api/crash-report — عرض السجلات */
router.get("/", (_req, res) => {
  res.json({ count: crashLog.length, entries: crashLog.slice(0, 200) });
});

/* DELETE /api/crash-report — مسح */
router.delete("/", (_req, res) => {
  crashLog.splice(0);
  res.json({ ok: true });
});

export default router;
