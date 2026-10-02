import { Router } from "express";
import { issueAnonToken, checkRateLimit } from "../lib/security.js";

const router = Router();

// POST /api/auth/anon-token — يصدر توكن قصير العمر (5 دقائق)
// Rate limit: 20 طلب/دقيقة لكل IP
router.post("/api/auth/anon-token", (req, res) => {
  const ip =
    (req.headers["x-forwarded-for"] as string)?.split(",")[0].trim() ||
    req.socket.remoteAddress ||
    "unknown";

  if (!checkRateLimit(`tok:${ip}`, 20, 60_000)) {
    res.status(429).json({ error: "Too many requests. Try again later." });
    return;
  }

  const { token, exp } = issueAnonToken();
  res.json({ token, exp, ttl: 300 });
});

// GET fallback (بعض العملاء يستخدمون GET)
router.get("/api/auth/anon-token", (req, res) => {
  const ip =
    (req.headers["x-forwarded-for"] as string)?.split(",")[0].trim() ||
    req.socket.remoteAddress ||
    "unknown";

  if (!checkRateLimit(`tok:${ip}`, 20, 60_000)) {
    res.status(429).json({ error: "Too many requests. Try again later." });
    return;
  }

  const { token, exp } = issueAnonToken();
  res.json({ token, exp, ttl: 300 });
});

export default router;
