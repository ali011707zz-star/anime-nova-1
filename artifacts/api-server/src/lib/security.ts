import {
  createHmac,
  createCipheriv,
  createDecipheriv,
  randomBytes,
  timingSafeEqual,
} from "crypto";
import { isIP } from "node:net";

export const MOBILE_CLIENT_ID = "nova-anime-mobile-v1";
export const MOBILE_PACKAGE_NAME = "com.nova.anime";
export const DEFAULT_MIN_MOBILE_VERSION = "1.0.0";
export const TV_CLIENT_ID = "nova-anime-tv-kotlin-v1";
export const TV_PACKAGE_NAME = "com.nova.anime.tv";
export const DEFAULT_MIN_TV_VERSION = "1.0.0";

/** Reject proxy targets that point back at this host or an internal network. */
export function isSafeExternalUrl(raw: string): boolean {
  let parsed: URL;
  try {
    parsed = new URL(raw);
  } catch {
    return false;
  }
  if (parsed.protocol !== "http:" && parsed.protocol !== "https:") return false;

  const host = parsed.hostname.toLowerCase().replace(/\.$/, "");
  if (
    host === "localhost" ||
    host.endsWith(".localhost") ||
    host.endsWith(".local") ||
    host === "0.0.0.0" ||
    host === "::" ||
    host === "::1"
  ) {
    return false;
  }

  const ipVersion = isIP(host);
  if (ipVersion === 4) {
    const octets = host.split(".").map(Number);
    const [a, b] = octets;
    if (
      a === 10 ||
      a === 127 ||
      (a === 169 && b === 254) ||
      (a === 172 && b >= 16 && b <= 31) ||
      (a === 192 && b === 168) ||
      (a === 100 && b >= 64 && b <= 127) ||
      (a === 198 && b >= 18 && b <= 19)
    ) {
      return false;
    }
  }
  if (ipVersion === 6 && (host === "::1" || host.startsWith("fc") || host.startsWith("fd") || host.startsWith("fe8") || host.startsWith("fe9") || host.startsWith("fea") || host.startsWith("feb"))) {
    return false;
  }
  return true;
}

// ── مفتاح السر (APP_SECRET env var) ──────────────────────────────────────────
// لا يوجد fallback ثابت في الإنتاج. أي fallback ثابت يمكن استخراجه من الكود
// واستخدامه لتوقيع توكنات وروابط بروكسي مزورة.
const DEFAULT_SECRET = "anime-nova-default-change-me-aabbccdd";
let devSecret: Buffer | null = null;

function getSecret(): Buffer {
  const raw = process.env.APP_SECRET?.trim();
  if (!raw || raw === DEFAULT_SECRET) {
    if (process.env.NODE_ENV === "production") {
      throw new Error("[security] APP_SECRET must be configured in production");
    }
    // التطوير المحلي لا يحتاج سراً ثابتاً، ولا ينبغي أن نضع واحداً في المصدر.
    devSecret ??= randomBytes(32);
    return devSecret;
  }
  return Buffer.from(raw.padEnd(32, "0").slice(0, 32));
}

/** Fail closed before serving requests when the production signing key is missing. */
export function assertSecurityConfig(): void {
  const raw = process.env.APP_SECRET?.trim();
  if (
    process.env.NODE_ENV === "production" &&
    (!raw || raw === DEFAULT_SECRET || raw.length < 32)
  ) {
    throw new Error(
      "[security] APP_SECRET is missing or too short; refusing to start in production",
    );
  }
}

function versionParts(value: string): number[] {
  return value
    .trim()
    .replace(/^v/i, "")
    .split(".")
    .map(part => Number.parseInt(part, 10))
    .map(part => (Number.isFinite(part) && part >= 0 ? part : 0));
}

function versionAtLeast(current: string, minimum: string): boolean {
  const a = versionParts(current);
  const b = versionParts(minimum);
  for (let i = 0; i < Math.max(a.length, b.length); i++) {
    const currentPart = a[i] ?? 0;
    const minimumPart = b[i] ?? 0;
    if (currentPart !== minimumPart) return currentPart > minimumPart;
  }
  return true;
}

export type MobileAppCheck =
  | { ok: true }
  | { ok: false; code: "INVALID_CLIENT" | "INVALID_PACKAGE" | "APP_UPDATE_REQUIRED" };

/** Validate the non-secret release identity sent by the official mobile client. */
export function validateMobileAppIdentity(
  headers: Record<string, string | string[] | undefined>,
): MobileAppCheck {
  const header = (name: string): string => {
    const value = headers[name];
    return Array.isArray(value) ? value[0] ?? "" : value ?? "";
  };
  if (header("x-nova-client") !== MOBILE_CLIENT_ID) return { ok: false, code: "INVALID_CLIENT" };
  if (header("x-nova-package") !== MOBILE_PACKAGE_NAME) return { ok: false, code: "INVALID_PACKAGE" };
  const minimum = process.env.NOVA_MIN_MOBILE_VERSION?.trim() || DEFAULT_MIN_MOBILE_VERSION;
  if (!versionAtLeast(header("x-nova-version"), minimum)) {
    return { ok: false, code: "APP_UPDATE_REQUIRED" };
  }
  return { ok: true };
}

/** Validate the separate native Android TV release without changing mobile rules. */
export function validateNovaAppIdentity(
  headers: Record<string, string | string[] | undefined>,
): MobileAppCheck {
  const header = (name: string): string => {
    const value = headers[name];
    return Array.isArray(value) ? value[0] ?? "" : value ?? "";
  };
  const client = header("x-nova-client");
  if (client === MOBILE_CLIENT_ID) return validateMobileAppIdentity(headers);
  if (client !== TV_CLIENT_ID) return { ok: false, code: "INVALID_CLIENT" };
  if (header("x-nova-package") !== TV_PACKAGE_NAME) return { ok: false, code: "INVALID_PACKAGE" };
  const minimum = process.env.NOVA_MIN_TV_VERSION?.trim() || DEFAULT_MIN_TV_VERSION;
  if (!versionAtLeast(header("x-nova-version"), minimum)) {
    return { ok: false, code: "APP_UPDATE_REQUIRED" };
  }
  return { ok: true };
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
    const iatNum = Number(iat);
    const expNum = parseInt(exp, 10);
    const now = Math.floor(Date.now() / 1000);
    if (
      !Number.isSafeInteger(iatNum) ||
      !Number.isSafeInteger(expNum) ||
      iatNum > now + 30 ||
      expNum <= iatNum ||
      expNum - iatNum > TOKEN_TTL ||
      now > expNum
    ) {
      return false;
    }
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
  const now = Math.floor(Date.now() / 1000);
  if (Number(iat) > now + 30 || Number(exp) <= Number(iat) || now > Number(exp)) return null;
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
// 2. تشفير/فك تشفير قيم URL
//    g2 = AES-256-GCM (سرية + تحقق من سلامة القيمة)
//    الصيغة: g2:<iv hex>.<tag hex>.<ciphertext hex>
//    تُقبل الصيغة hex القديمة للروابط المخزنة مسبقاً فقط أثناء الانتقال.
// ═══════════════════════════════════════════════════════════════════════════════
const GCM_PREFIX = "g2:";
const GCM_AAD = Buffer.from("anime-nova-proxy-v2", "utf8");

export function encryptParam(plain: string): string {
  const iv = randomBytes(12);
  const cipher = createCipheriv("aes-256-gcm", getSecret(), iv);
  cipher.setAAD(GCM_AAD);
  const enc = Buffer.concat([cipher.update(plain, "utf8"), cipher.final()]);
  const tag = cipher.getAuthTag();
  return `${GCM_PREFIX}${iv.toString("hex")}.${tag.toString("hex")}.${enc.toString("hex")}`;
}

export function decryptParam(enc: string): string {
  if (enc.startsWith(GCM_PREFIX)) {
    const parts = enc.slice(GCM_PREFIX.length).split(".");
    if (parts.length !== 3) throw new Error("invalid encrypted parameter");
    const [ivHex, tagHex, dataHex] = parts;
    const iv = Buffer.from(ivHex, "hex");
    const tag = Buffer.from(tagHex, "hex");
    const data = Buffer.from(dataHex, "hex");
    if (iv.length !== 12 || tag.length !== 16 || data.length === 0) {
      throw new Error("invalid encrypted parameter");
    }
    const decipher = createDecipheriv("aes-256-gcm", getSecret(), iv);
    decipher.setAAD(GCM_AAD);
    decipher.setAuthTag(tag);
    return Buffer.concat([decipher.update(data), decipher.final()]).toString("utf8");
  }

  // Legacy AES-CBC values remain readable so cached source rows do not all
  // break at once. New values are always GCM and therefore authenticated.
  if (/^[0-9a-f]{64,}$/i.test(enc)) {
    const iv = Buffer.from(enc.slice(0, 32), "hex");
    const data = Buffer.from(enc.slice(32), "hex");
    if (iv.length !== 16 || data.length === 0) throw new Error("invalid encrypted parameter");
    const decipher = createDecipheriv("aes-256-cbc", getSecret(), iv);
    return Buffer.concat([decipher.update(data), decipher.final()]).toString("utf8");
  }
  throw new Error("invalid encrypted parameter");
}

// هل القيمة مُشفَّرة بـ encryptParam؟ (hex خالص ≥ 64 حرف، لا تبدأ بـ http أو /)
export function isEncrypted(s: string): boolean {
  if (!s || s.startsWith("http") || s.startsWith("/") || s.startsWith("%")) return false;
  return s.startsWith(GCM_PREFIX) || /^[0-9a-f]{64,}$/i.test(s);
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
