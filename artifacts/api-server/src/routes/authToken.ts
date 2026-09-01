import { Router, type Request } from "express";
import {
  issueAnonToken,
  issueDownloadToken,
  checkRateLimit,
  validateMobileAppIdentity,
  MOBILE_CLIENT_ID,
} from "../lib/security.js";

const router = Router();

function mobileDownloadLease(req: Request) {
  const clientId = Array.isArray(req.headers["x-nova-client"])
    ? req.headers["x-nova-client"][0]
    : req.headers["x-nova-client"];
  return clientId === MOBILE_CLIENT_ID && validateMobileAppIdentity(req.headers).ok
    ? issueDownloadToken()
    : null;
}

function tokenResponse(req: Request) {
  const { token, exp } = issueAnonToken();
  const download = mobileDownloadLease(req);
  return {
    token,
    exp,
    ttl: 300,
    ...(download ? { downloadToken: download.token, downloadExp: download.exp } : {}),
  };
}

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

  res.json(tokenResponse(req));
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

  res.json(tokenResponse(req));
});

export default router;
