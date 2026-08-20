import { createHmac, randomBytes, scrypt, timingSafeEqual } from "node:crypto";
import { promisify } from "node:util";
import path from "node:path";
import type { Express, Request, Response } from "express";
import { checkRateLimit } from "../lib/security.js";

const scryptAsync = promisify(scrypt);
const ADMIN_SESSION_KEY = "novaWebAdmin";

function adminPath(): string {
  const value = (process.env.NOVA_ADMIN_PATH || "").trim();
  return value.startsWith("/") ? value.replace(/\/+$/, "") : `/${value}`;
}

function base32Decode(value: string): Buffer {
  const alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567";
  const clean = value.toUpperCase().replace(/[\s=-]/g, "");
  let bits = "";
  for (const char of clean) {
    const index = alphabet.indexOf(char);
    if (index < 0) throw new Error("Invalid TOTP secret");
    bits += index.toString(2).padStart(5, "0");
  }
  const bytes: number[] = [];
  for (let i = 0; i + 8 <= bits.length; i += 8) bytes.push(Number.parseInt(bits.slice(i, i + 8), 2));
  return Buffer.from(bytes);
}

function totp(secret: string, counter: number): string {
  const key = base32Decode(secret);
  const message = Buffer.alloc(8);
  message.writeBigUInt64BE(BigInt(counter));
  const digest = createHmac("sha1", key).update(message).digest();
  const offset = digest[digest.length - 1] & 0x0f;
  const code = ((digest[offset] & 0x7f) << 24) |
    ((digest[offset + 1] & 0xff) << 16) |
    ((digest[offset + 2] & 0xff) << 8) |
    (digest[offset + 3] & 0xff);
  return String(code % 1_000_000).padStart(6, "0");
}

function validTotp(secret: string, provided: string): boolean {
  if (!/^\d{6}$/.test(provided)) return false;
  const now = Math.floor(Date.now() / 1000 / 30);
  for (const drift of [-1, 0, 1]) {
    const expected = Buffer.from(totp(secret, now + drift));
    const actual = Buffer.from(provided);
    if (expected.length === actual.length && timingSafeEqual(expected, actual)) return true;
  }
  return false;
}

async function validPassword(password: string, stored: string): Promise<boolean> {
  try {
    const [hashHex, salt] = stored.split(".");
    if (!hashHex || !salt) return false;
    const actual = (await scryptAsync(password, salt, 64)) as Buffer;
    const expected = Buffer.from(hashHex, "hex");
    return actual.length === expected.length && timingSafeEqual(actual, expected);
  } catch {
    return false;
  }
}

function configured(): boolean {
  return Boolean(process.env.NOVA_ADMIN_PATH && process.env.NOVA_ADMIN_PASSWORD_HASH && process.env.NOVA_ADMIN_TOTP_SECRET);
}

function authenticated(req: Request): boolean {
  return (req.session as any)?.[ADMIN_SESSION_KEY] === true;
}

export function registerWebAdminRoutes(app: Express): void {
  if (!process.env.NOVA_ADMIN_PATH?.trim()) return;
  const route = adminPath();
  const page = path.resolve(process.cwd(), "artifacts/anime-scraper/dist/public/admin-control.html");

  app.get(route, (_req, res) => {
    if (!configured()) return res.status(404).send("Not found");
    res.setHeader("Cache-Control", "no-store");
    res.setHeader("X-Robots-Tag", "noindex, nofollow, noarchive");
    res.setHeader("Referrer-Policy", "no-referrer");
    return res.sendFile(page);
  });

  app.post(`${route}/api/login`, async (req, res) => {
    const ip = req.ip || req.socket.remoteAddress || "unknown";
    if (!checkRateLimit(`web-admin:${ip}`, 8, 15 * 60_000))
      return res.status(429).json({ error: "محاولات كثيرة، حاول بعد قليل" });
    if (!configured()) return res.status(404).json({ error: "لوحة الإدارة غير مفعّلة" });
    const password = String(req.body?.password || "");
    const code = String(req.body?.code || "").replace(/\s/g, "");
    const passwordOk = await validPassword(password, process.env.NOVA_ADMIN_PASSWORD_HASH || "");
    const codeOk = validTotp(process.env.NOVA_ADMIN_TOTP_SECRET || "", code);
    if (!passwordOk || !codeOk) return res.status(401).json({ error: "كلمة المرور أو رمز المصادقة غير صحيح" });
    (req.session as any)[ADMIN_SESSION_KEY] = true;
    req.session.cookie.maxAge = 8 * 60 * 60 * 1000;
    return res.json({ ok: true });
  });

  app.post(`${route}/api/logout`, (req, res) => {
    (req.session as any)[ADMIN_SESSION_KEY] = false;
    return res.json({ ok: true });
  });

  app.get(`${route}/api/me`, (req, res) => {
    return res.json({ authenticated: authenticated(req) });
  });
}

export function isWebAdmin(req: Request): boolean {
  return authenticated(req);
}

/** Used only by the VPS setup script/tests to make a password hash. */
export async function hashWebAdminPassword(password: string): Promise<string> {
  const salt = randomBytes(16).toString("hex");
  const hash = (await scryptAsync(password, salt, 64)) as Buffer;
  return `${hash.toString("hex")}.${salt}`;
}