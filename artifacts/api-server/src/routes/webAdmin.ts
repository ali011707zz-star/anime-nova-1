import { randomBytes, scrypt, timingSafeEqual } from "node:crypto";
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
  return Boolean(process.env.NOVA_ADMIN_PATH && process.env.NOVA_ADMIN_PASSWORD_HASH);
}

function authenticated(req: Request): boolean {
  return (req.session as any)?.[ADMIN_SESSION_KEY] === true;
}

export function registerWebAdminRoutes(app: Express): void {
  if (!process.env.NOVA_ADMIN_PATH?.trim()) return;
  const route = adminPath();
  const page = path.resolve(process.cwd(), "artifacts/anime-scraper/dist/public/admin-control.html");

  // Never expose the admin page through the frontend's static-file handler.
  app.use("/admin-control.html", (_req, res) => res.status(404).send("Not found"));

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
    const passwordOk =
      await validPassword(password, process.env.NOVA_ADMIN_PASSWORD_HASH || "") ||
      await validPassword(password, process.env.NOVA_ADMIN_BACKUP_PASSWORD_HASH || "");
    if (!passwordOk) return res.status(401).json({ error: "كلمة المرور غير صحيحة" });
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

  // Do not let the frontend SPA fallback turn typos or guessed subpaths into
  // a successful-looking response under the private admin URL.
  app.use((req, res, next) => {
    if (req.path === route || req.path.startsWith(`${route}/`))
      return res.status(404).send("Not found");
    return next();
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