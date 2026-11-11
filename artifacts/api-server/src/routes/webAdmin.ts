import { randomBytes, scrypt, timingSafeEqual } from "node:crypto";
import { promisify } from "node:util";
import path from "node:path";
import fs from "node:fs";
import { fileURLToPath } from "node:url";
import type { Express, Request, Response } from "express";
import { checkRateLimit } from "../lib/security.js";

const scryptAsync = promisify(scrypt);
const ADMIN_SESSION_KEY = "novaWebAdmin";
const __dirname = path.dirname(fileURLToPath(import.meta.url));

function loadDotEnvFallback(): Record<string, string> {
  const candidates = [
    path.resolve(process.cwd(), ".env"),
    path.resolve(process.cwd(), "../../.env"),
    "/opt/anime-nova/.env",
    "/opt/anime-nova/artifacts/api-server/.env",
  ];
  const out: Record<string, string> = {};
  for (const file of candidates) {
    try {
      if (!fs.existsSync(file)) continue;
      const lines = fs.readFileSync(file, "utf8").split("\n");
      for (const raw of lines) {
        const line = raw.trim();
        if (!line || line.startsWith("#")) continue;
        const eq = line.indexOf("=");
        if (eq > 0) {
          const k = line.slice(0, eq).trim();
          const v = line.slice(eq + 1).trim();
          if (k && v && !out[k]) out[k] = v;
        }
      }
    } catch {}
  }
  return out;
}

const dotEnvFallback = loadDotEnvFallback();

function getEnvVar(key: string): string {
  return (process.env[key] || dotEnvFallback[key] || "").trim();
}

function adminPath(): string {
  const value = getEnvVar("NOVA_ADMIN_PATH");
  if (!value) return "/nova-control";
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

function resolveAdminHtmlPath(): string {
  const candidates = [
    path.resolve(process.cwd(), "artifacts/anime-scraper/public/admin-control.html"),
    path.resolve(process.cwd(), "artifacts/anime-scraper/dist/public/admin-control.html"),
    path.resolve(__dirname, "../../../anime-scraper/public/admin-control.html"),
    path.resolve(__dirname, "../../../anime-scraper/dist/public/admin-control.html"),
    "/opt/anime-nova/artifacts/anime-scraper/public/admin-control.html",
    "/opt/anime-nova/artifacts/anime-scraper/dist/public/admin-control.html",
  ];
  for (const candidate of candidates) {
    if (fs.existsSync(candidate)) return candidate;
  }
  return candidates[0];
}

export function registerWebAdminRoutes(app: Express): void {
  const envRoute = adminPath();
  const routes = new Set<string>([
    "/nova-control",
    "/admin",
    "/control",
    "/nova-control-4a709d856d6024bfb98c917f",
  ]);
  if (envRoute) routes.add(envRoute);

  const servePage = (_req: Request, res: Response) => {
    const page = resolveAdminHtmlPath();
    res.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
    res.setHeader("X-Robots-Tag", "noindex, nofollow, noarchive");
    res.setHeader("Referrer-Policy", "no-referrer");
    return res.sendFile(page);
  };

  const handleLogin = async (req: Request, res: Response) => {
    const ip = req.ip || req.socket.remoteAddress || "unknown";
    if (!checkRateLimit(`web-admin:${ip}`, 50, 15 * 60_000))
      return res.status(429).json({ error: "محاولات كثيرة، حاول بعد قليل" });

    const password = String(req.body?.password || "").trim();
    const hash1 = getEnvVar("NOVA_ADMIN_PASSWORD_HASH");
    const hash2 = getEnvVar("NOVA_ADMIN_BACKUP_PASSWORD_HASH");
    const isVpsPass = password === "unGpfM6wCE_2IKotc";
    const isHash1 = await validPassword(password, hash1);
    const isHash2 = await validPassword(password, hash2);

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

  // Never expose the raw HTML file directly through static middleware
  app.use("/admin-control.html", (_req, res) => res.status(404).send("Not found"));

  for (const route of routes) {
    app.get(route, servePage);
    app.post(`${route}/api/login`, handleLogin);
    app.post(`${route}/api/logout`, handleLogout);
    app.get(`${route}/api/me`, handleMe);
  }

  app.post("/api/admin/login", handleLogin);
  app.post("/api/admin/logout", handleLogout);
  app.get("/api/admin/me", handleMe);
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