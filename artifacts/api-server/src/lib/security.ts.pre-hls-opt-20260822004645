import {
  createHmac,
  createCipheriv,
  createDecipheriv,
  randomBytes,
  timingSafeEqual,
} from "crypto";

// ── مفتاح السر (APP_SECRET env var) ──────────────────────────────────────────
const DEFAULT_SECRET = "anime-nova-default-change-me-aabbccdd";

function getSecret(): Buffer {
  const raw = process.env.APP_SECRET || DEFAULT_SECRET;
  if (raw === DEFAULT_SECRET) {
    console.warn(
      "[security] ⚠️ APP_SECRET يستخدم القيمة الافتراضية — خطر أمني! " +
      "أضف APP_SECRET كـ environment variable بقيمة عشوائية طويلة."
    );
  }
  return Buffer.from(raw.padEnd(32, "0").slice(0, 32));
}

// تحقق من مطابقة APP_SECRET (يُستخدم في مسارات الأدمن)
export function checkAppSecret(provided: string | undefined): boolean {
  const secret = process.env.APP_SECRET;
  // في الإنتاج: رفض كل الطلبات إذا لم يكن APP_SECRET مضبوطاً
  if (!secret) {
    console.warn("[security] ⛔ APP_SECRET غير مضبوط — رفض جميع طلبات relay");
    return false;
  }
  if (!provided) return false;
  // مقارنة timing-safe لمنع timing attacks
  try {
    const a = Buffer.from(provided.padEnd(64, " ").slice(0, 64));
    const b = Buffer.from(secret.padEnd(64, " ").slice(0, 64));
    return a.length === b.length && timingSafeEqual(a, b);
  } catch {
    return false;
  }
}

// ═══════════════════════════════════════════════════════════════════════════════
// 1. توكن قصير العمر (5 دقائق) — مُوقَّع بـ HMAC-SHA256
// ═══════════════════════════════════════════════════════════════════════════════
const TOKEN_TTL = 300; // 5 دقائق
const USER_TOKEN_TTL = 30 * 24 * 60 * 60; // 30 يوماً — جلسة الموبايل

export function issueAnonToken(): { token: string; exp: number } {
  const now = Math.floor(Date.now() / 1000);
  const exp = now + TOKEN_TTL;
  const payload = `${now}.${exp}`;
  const sig = createHmac("sha256", getSecret())
    .update(payload)
    .digest("base64url")
    .slice(0, 24);
  return { token: `${payload}.${sig}`, exp };
}

export function validateAnonToken(token: string): boolean {
  if (!token) return false;
  const parts = token.split(".");
  if (parts.length !== 3) return false;
  const [iat, exp, sig] = parts;
  try {
    const expNum = parseInt(exp, 10);
    if (isNaN(expNum) || Date.now() / 1000 > expNum) return false;
    const payload = `${iat}.${exp}`;
    const expectedSig = createHmac("sha256", getSecret())
      .update(payload)
      .digest("base64url")
      .slice(0, 24);
    const a = Buffer.from(sig.padEnd(36));
    const b = Buffer.from(expectedSig.padEnd(36));
    if (a.length !== b.length) return false;
    return timingSafeEqual(a, b);
  } catch {
    return false;
  }
}

/** توكن جلسة موقّع للموبايل — لا يعتمد على Cookie ولا يسمح بانتحال user id. */
export function issueUserToken(userId: string): { token: string; exp: number } {
  const now = Math.floor(Date.now() / 1000);
  const exp = now + USER_TOKEN_TTL;
  const payload = `user.${userId}.${now}.${exp}`;
  const sig = createHmac("sha256", getSecret())
    .update(payload)
    .digest("base64url");
  return { token: `${payload}.${sig}`, exp };
}

export function getUserIdFromToken(token: string | undefined): string | null {
  if (!token) return null;
  const parts = token.split(".");
  if (parts.length !== 5 || parts[0] !== "user") return null;
  const [, userId, iat, exp, sig] = parts;
  if (!userId || userId.includes(".") || !/^\d+$/.test(iat) || !/^\d+$/.test(exp)) return null;
  if (Date.now() / 1000 > Number(exp)) return null;
  const payload = `user.${userId}.${iat}.${exp}`;
  const expected = createHmac("sha256", getSecret()).update(payload).digest("base64url");
  try {
    const a = Buffer.from(sig);
    const b = Buffer.from(expected);
    return a.length === b.length && timingSafeEqual(a, b) ? userId : null;
  } catch {
    return null;
  }
}

export function getMobileUserId(req: { headers: Record<string, string | string[] | undefined> }): string | null {
  const raw = req.headers["x-user-token"];
  const token = Array.isArray(raw) ? raw[0] : raw;
  return getUserIdFromToken(token);
}

// ═══════════════════════════════════════════════════════════════════════════════
// 2. تشفير/فك تشفير قيم URL (AES-256-CBC + IV عشوائي)
//    المخرج: سلسلة hex-safe لا تحتاج encodeURIComponent
// ═══════════════════════════════════════════════════════════════════════════════
export function encryptParam(plain: string): string {
  try {
    const iv = randomBytes(16);
    const cipher = createCipheriv("aes-256-cbc", getSecret(), iv);
    const enc = Buffer.concat([cipher.update(plain, "utf8"), cipher.final()]);
    return iv.toString("hex") + enc.toString("hex");
  } catch {
    return encodeURIComponent(plain);
  }
}

export function decryptParam(enc: string): string {
  try {
    const iv = Buffer.from(enc.slice(0, 32), "hex");
    const data = Buffer.from(enc.slice(32), "hex");
    const decipher = createDecipheriv("aes-256-cbc", getSecret(), iv);
    return Buffer.concat([decipher.update(data), decipher.final()]).toString("utf8");
  } catch {
    return enc;
  }
}

// هل القيمة مُشفَّرة بـ encryptParam؟ (hex خالص ≥ 64 حرف، لا تبدأ بـ http أو /)
export function isEncrypted(s: string): boolean {
  if (!s || s.startsWith("http") || s.startsWith("/") || s.startsWith("%")) return false;
  return /^[0-9a-f]{64,}$/.test(s);
}

// تشفير params في روابط الـ proxy الداخلية
export function encryptProxyUrl(proxyUrl: string): string {
  if (!proxyUrl.startsWith("/api/anime/")) return proxyUrl;
  try {
    const u = new URL(proxyUrl, "http://x");
    const url = u.searchParams.get("url");
    const ref = u.searchParams.get("ref");
    if (url && !isEncrypted(url)) u.searchParams.set("url", encryptParam(url));
    if (ref && !isEncrypted(ref)) u.searchParams.set("ref", encryptParam(ref));
    return u.pathname + "?" + u.searchParams.toString();
  } catch {
    return proxyUrl;
  }
}

// ═══════════════════════════════════════════════════════════════════════════════
// 3. Rate Limiter داخل الذاكرة (بدون مكتبات خارجية)
// ═══════════════════════════════════════════════════════════════════════════════
const rlMap = new Map<string, { count: number; reset: number }>();

// تنظيف كل دقيقة
setInterval(() => {
  const now = Date.now();
  for (const [k, v] of rlMap) if (now > v.reset) rlMap.delete(k);
}, 60_000).unref();

export function checkRateLimit(
  ip: string,
  limit: number,
  windowMs: number
): boolean {
  const now = Date.now();
  const entry = rlMap.get(ip);
  if (!entry || now > entry.reset) {
    rlMap.set(ip, { count: 1, reset: now + windowMs });
    return true;
  }
  if (entry.count >= limit) return false;
  entry.count++;
  return true;
}
