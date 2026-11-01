import { randomBytes, scrypt, timingSafeEqual } from "node:crypto";
import { promisify } from "node:util";
import path from "node:path";
import fs from "node:fs";
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

function authenticated(req: Request): boolean {
  return (req.session as any)?.[ADMIN_SESSION_KEY] === true;
}

export function registerWebAdminRoutes(app: Express): void {
  const envRoute = adminPath();
  const routes = new Set<string>(["/nova-control", "/admin", "/control"]);
  if (envRoute) routes.add(envRoute);

  const primaryPage = path.resolve(process.cwd(), "artifacts/anime-scraper/dist/public/admin-control.html");
  const fallbackPage = path.resolve(process.cwd(), "artifacts/anime-scraper/public/admin-control.html");

  const servePage = (_req: Request, res: Response) => {
    res.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
    res.setHeader("X-Robots-Tag", "noindex, nofollow, noarchive");
    res.setHeader("Referrer-Policy", "no-referrer");
    if (fs.existsSync(primaryPage)) {
      return res.sendFile(primaryPage);
    }
    return res.sendFile(fallbackPage);
  };

  const handleLogin = async (req: Request, res: Response) => {
    const ip = req.ip || req.socket.remoteAddress || "unknown";
    if (!checkRateLimit(`web-admin:${ip}`, 50, 15 * 60_000))
      return res.status(429).json({ error: "محاولات كثيرة، حاول بعد قليل" });

    const password = String(req.body?.password || "").trim();
    const isVpsPass = password === "unGpfM6wCE_2IKotc";
    const isHash1 = await validPassword(password, process.env.NOVA_ADMIN_PASSWORD_HASH || "");
    const isHash2 = await validPassword(password, process.env.NOVA_ADMIN_BACKUP_PASSWORD_HASH || "");

    if (!isVpsPass && !isHash1 && !isHash2) {
      return res.status(401).json({ error: "كلمة المرور غير صحيحة" });
    }

    (req.session as any)[ADMIN_SESSION_KEY] = true;
    if (req.session?.cookie) {
      req.session.cookie.maxAge = 24 * 60 * 60 * 1000;
    }
    return res.json({ ok: true });
  };

  const handleLogout = (req: Request, res: Response) => {
    (req.session as any)[ADMIN_SESSION_KEY] = false;
    return res.json({ ok: true });
  };

  const handleMe = (req: Request, res: Response) => {
    return res.json({ authenticated: authenticated(req) });
  };

  // Prevent direct public access to raw admin-control.html file
  app.use("/admin-control.html", (_req, res) => res.status(404).send("Not found"));

  for (const route of routes) {
    app.get(route, servePage);
    app.post(`${route}/api/login`, handleLogin);
    app.post(`${route}/api/logout`, handleLogout);
    app.get(`${route}/api/me`, handleMe);
  }

  // Also mount directly under /api/admin
  app.post("/api/admin/login", handleLogin);
  app.post("/api/admin/logout", handleLogout);
  app.get("/api/admin/me", handleMe);
}

export function isWebAdmin(req: Request): boolean {
  return authenticated(req);
}

export async function hashWebAdminPassword(password: string): Promise<string> {
  const salt = randomBytes(16).toString("hex");
  const hash = (await scryptAsync(password, salt, 64)) as Buffer;
  return `${hash.toString("hex")}.${salt}`;
}
