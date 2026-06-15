import {
  createHmac,
  createCipheriv,
  createDecipheriv,
  randomBytes,
  timingSafeEqual,
} from "crypto";

// ── مفتاح السر (APP_SECRET env var) ──────────────────────────────────────────
function getSecret(): Buffer {
  const raw = process.env.APP_SECRET || "anime-nova-default-change-me-aabbccdd";
  return Buffer.from(raw.padEnd(32, "0").slice(0, 32));
}

// ═══════════════════════════════════════════════════════════════════════════════
// 1. توكن قصير العمر (5 دقائق) — مُوقَّع بـ HMAC-SHA256
// ═══════════════════════════════════════════════════════════════════════════════
const TOKEN_TTL = 300; // 5 دقائق

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
// 3. التحقق من معرّف العميل (X-Nova-Client header)
// ═══════════════════════════════════════════════════════════════════════════════
const VALID_CLIENT_IDS = new Set([
  "nova-anime-mobile-v1",
  "nova-anime-web-v1",
]);

export function validateClientId(clientId: string): boolean {
  if (!clientId) return false;
  return VALID_CLIENT_IDS.has(clientId.trim());
}

// ═══════════════════════════════════════════════════════════════════════════════
// 4. Rate Limiter داخل الذاكرة (بدون مكتبات خارجية)
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
