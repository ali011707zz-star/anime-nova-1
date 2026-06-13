import type { Express, Request, Response } from "express";
import { db, users } from "@workspace/db";
import { eq, sql } from "drizzle-orm";
import { scrypt, randomBytes, timingSafeEqual } from "node:crypto";
import { promisify } from "node:util";

const scryptAsync = promisify(scrypt);

async function hashPassword(password: string): Promise<string> {
  const salt = randomBytes(16).toString("hex");
  const buf = (await scryptAsync(password, salt, 64)) as Buffer;
  return `${buf.toString("hex")}.${salt}`;
}

async function verifyPassword(password: string, hash: string): Promise<boolean> {
  try {
    const [hashHex, salt] = hash.split(".");
    const buf = (await scryptAsync(password, salt, 64)) as Buffer;
    const hashBuf = Buffer.from(hashHex, "hex");
    return timingSafeEqual(buf, hashBuf);
  } catch {
    return false;
  }
}

function sanitizeUsername(raw: string): string {
  return raw
    .replace(/^@/, "")
    .replace(/[^a-zA-Z0-9_.]/g, "")
    .slice(0, 20)
    .toLowerCase();
}

async function generateUniqueUsername(base: string): Promise<string> {
  const clean = sanitizeUsername(base) || "user";
  const [existing] = await db
    .select({ id: users.id })
    .from(users)
    .where(eq(users.username, clean))
    .limit(1);
  if (!existing) return clean;
  const suffix = Math.floor(100 + Math.random() * 900);
  const candidate = `${clean.slice(0, 17)}${suffix}`;
  const [e2] = await db
    .select({ id: users.id })
    .from(users)
    .where(eq(users.username, candidate))
    .limit(1);
  if (!e2) return candidate;
  return `${clean.slice(0, 14)}${Date.now() % 10000}`;
}

function userPayload(user: any) {
  return {
    id: user.id,
    email: user.email,
    displayName: user.displayName,
    username: user.username,
    avatarColor: user.avatarColor ?? 0,
    profileImageUrl: user.profileImageCustom || user.profileImageUrl,
    authType: "email" as const,
    createdAt: user.createdAt,
  };
}

export function registerEmailAuthRoutes(app: Express): void {

  /* ── Sign Up (direct, no email verification) ───────────────────── */
  app.post("/api/auth/signup", async (req: Request, res: Response) => {
    try {
      const { email, password, displayName: rawName } = req.body || {};
      if (!email || !password)
        return res.status(400).json({ error: "البريد الإلكتروني وكلمة المرور مطلوبان" });
      if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(String(email)))
        return res.status(400).json({ error: "بريد إلكتروني غير صالح" });
      if (String(password).length < 6)
        return res.status(400).json({ error: "كلمة المرور يجب أن تكون 6 أحرف على الأقل" });

      const existing = await db
        .select({ id: users.id })
        .from(users)
        .where(eq(users.email, String(email)))
        .limit(1);
      if (existing.length > 0)
        return res.status(409).json({ error: "هذا البريد الإلكتروني مسجّل مسبقاً" });

      const passwordHash = await hashPassword(String(password));
      const displayName = typeof rawName === "string" && rawName.trim()
        ? rawName.trim().slice(0, 50)
        : String(email).split("@")[0];

      const baseUsername = String(email).split("@")[0];
      const username = await generateUniqueUsername(baseUsername);

      const [user] = await db
        .insert(users)
        .values({
          email: String(email),
          passwordHash,
          displayName,
          username,
          emailVerified: true,
          firstName: displayName.split(" ")[0] || null,
          lastName: displayName.split(" ").slice(1).join(" ") || null,
        } as any)
        .returning();

      (req.session as any).userId = user.id;
      req.session.cookie.maxAge = 30 * 24 * 60 * 60 * 1000;

      return res.status(201).json(userPayload(user));
    } catch (err: any) {
      console.error("[signup]", err);
      return res.status(500).json({ error: "حدث خطأ، حاول مرة أخرى" });
    }
  });

  /* ── Sign In ──────────────────────────────────────────────────── */
  app.post("/api/auth/signin", async (req: Request, res: Response) => {
    try {
      const { email, password } = req.body || {};
      if (!email || !password)
        return res.status(400).json({ error: "البريد الإلكتروني وكلمة المرور مطلوبان" });

      const [user] = await db
        .select()
        .from(users)
        .where(eq(users.email, String(email)))
        .limit(1);

      if (!user || !user.passwordHash)
        return res.status(401).json({ error: "بريد إلكتروني أو كلمة مرور غير صحيحة" });

      const valid = await verifyPassword(String(password), user.passwordHash);
      if (!valid)
        return res.status(401).json({ error: "بريد إلكتروني أو كلمة مرور غير صحيحة" });

      (req.session as any).userId = user.id;
      req.session.cookie.maxAge = 30 * 24 * 60 * 60 * 1000;

      return res.json(userPayload(user));
    } catch (err) {
      console.error("[signin]", err);
      return res.status(500).json({ error: "حدث خطأ، حاول مرة أخرى" });
    }
  });

  /* ── Sign Out ────────────────────────────────────────────────── */
  app.post("/api/auth/signout", (req: Request, res: Response) => {
    req.session.destroy(() => res.json({ ok: true }));
  });

  /* ── Get current user ────────────────────────────────────────── */
  app.get("/api/auth/me", async (req: Request, res: Response) => {
    const userId = (req.session as any)?.userId;
    if (!userId) return res.status(401).json({ error: "غير مصرّح" });
    try {
      const [user] = await db
        .select()
        .from(users)
        .where(eq(users.id, userId))
        .limit(1);
      if (!user) {
        req.session.destroy(() => {});
        return res.status(401).json({ error: "غير مصرّح" });
      }
      return res.json(userPayload(user));
    } catch {
      return res.status(500).json({ error: "خطأ في الخادم" });
    }
  });

  /* ── Update Profile ──────────────────────────────────────────── */
  app.patch("/api/auth/profile", async (req: Request, res: Response) => {
    const userId = (req.session as any)?.userId;
    if (!userId) return res.status(401).json({ error: "غير مصرّح" });
    try {
      const { displayName, username, profileImageCustom, avatarColor } = req.body || {};
      const updates: Record<string, any> = { updatedAt: new Date() };

      if (typeof displayName === "string" && displayName.trim()) {
        updates.displayName = displayName.trim().slice(0, 50);
        updates.firstName = updates.displayName.split(" ")[0];
        updates.lastName = updates.displayName.split(" ").slice(1).join(" ") || null;
      }
      if (typeof username === "string") {
        const cleaned = sanitizeUsername(username);
        if (!cleaned)
          return res.status(400).json({ error: "اسم المستخدم يجب أن يحتوي على أحرف إنجليزية أو أرقام" });
        if (cleaned.length < 3)
          return res.status(400).json({ error: "اسم المستخدم يجب أن يكون 3 أحرف على الأقل" });
        const [existing] = await db
          .select({ id: users.id })
          .from(users)
          .where(eq(users.username, cleaned))
          .limit(1);
        if (existing && existing.id !== userId)
          return res.status(409).json({ error: "اسم المستخدم مستخدم مسبقاً" });
        updates.username = cleaned;
      }
      if (typeof profileImageCustom === "string") {
        updates.profileImageCustom = profileImageCustom.slice(0, 500_000);
      } else if (profileImageCustom === null) {
        updates.profileImageCustom = null;
      }
      if (typeof avatarColor === "number" && avatarColor >= 0 && avatarColor <= 7) {
        updates.avatarColor = avatarColor;
      }

      const [updated] = await db
        .update(users)
        .set(updates)
        .where(eq(users.id, userId))
        .returning();

      if (!updated) return res.status(404).json({ error: "المستخدم غير موجود" });
      return res.json(userPayload(updated));
    } catch (err) {
      console.error("[profile]", err);
      return res.status(500).json({ error: "حدث خطأ، حاول مرة أخرى" });
    }
  });

  /* ── Change Password ─────────────────────────────────────────── */
  app.post("/api/auth/change-password", async (req: Request, res: Response) => {
    const userId = (req.session as any)?.userId;
    if (!userId) return res.status(401).json({ error: "غير مصرّح" });
    try {
      const { currentPassword, newPassword } = req.body || {};
      if (!currentPassword || !newPassword)
        return res.status(400).json({ error: "جميع الحقول مطلوبة" });
      if (String(newPassword).length < 6)
        return res.status(400).json({ error: "كلمة المرور يجب أن تكون 6 أحرف على الأقل" });

      const [user] = await db
        .select()
        .from(users)
        .where(eq(users.id, userId))
        .limit(1);
      if (!user?.passwordHash)
        return res.status(401).json({ error: "المستخدم غير موجود" });

      const valid = await verifyPassword(String(currentPassword), user.passwordHash);
      if (!valid)
        return res.status(401).json({ error: "كلمة المرور الحالية غير صحيحة" });

      const newHash = await hashPassword(String(newPassword));
      await db.update(users).set({ passwordHash: newHash, updatedAt: new Date() }).where(eq(users.id, userId));
      return res.json({ ok: true });
    } catch (err) {
      console.error("[change-password]", err);
      return res.status(500).json({ error: "حدث خطأ، حاول مرة أخرى" });
    }
  });

  /* ── Delete Account ──────────────────────────────────────────── */
  app.delete("/api/auth/account", async (req: Request, res: Response) => {
    const userId = (req.session as any)?.userId;
    if (!userId) return res.status(401).json({ error: "غير مصرّح" });
    try {
      await db.delete(users).where(eq(users.id, userId));
      req.session.destroy(() => {});
      return res.json({ ok: true });
    } catch (err) {
      console.error("[delete-account]", err);
      return res.status(500).json({ error: "حدث خطأ، حاول مرة أخرى" });
    }
  });

  /* ── Check username availability ─────────────────────────────── */
  app.get("/api/auth/check-username/:username", async (req: Request, res: Response) => {
    const userId = (req.session as any)?.userId;
    const cleaned = sanitizeUsername(req.params.username);
    if (!cleaned || cleaned.length < 3)
      return res.json({ available: false, reason: "قصير جداً" });
    try {
      const [existing] = await db
        .select({ id: users.id })
        .from(users)
        .where(eq(users.username, cleaned))
        .limit(1);
      const available = !existing || existing.id === userId;
      return res.json({ available, username: cleaned });
    } catch {
      return res.json({ available: false });
    }
  });
}

/* ── Get authed user from session ────────────────────────────── */
export async function getEmailUser(req: Request): Promise<any | null> {
  const userId = (req.session as any)?.userId
    || (req.session as any)?.emailUserId;
  if (!userId) return null;
  try {
    const [user] = await db.select().from(users).where(eq(users.id, userId)).limit(1);
    if (!user) return null;
    return {
      id: user.id,
      email: user.email,
      displayName: user.displayName,
      username: user.username,
      avatarColor: (user as any).avatarColor ?? 0,
      profileImageUrl: user.profileImageCustom || user.profileImageUrl,
      authType: "email" as const,
      createdAt: user.createdAt,
    };
  } catch {
    return null;
  }
}
