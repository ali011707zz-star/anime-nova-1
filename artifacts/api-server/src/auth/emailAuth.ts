import type { Express, Request, Response } from "express";
import { db, users } from "@workspace/db";
import { eq } from "drizzle-orm";
import { scrypt, randomBytes, timingSafeEqual } from "node:crypto";
import { promisify } from "node:util";
import { sendVerificationEmail } from "../lib/emailSender";

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

function generateCode(): string {
  return String(Math.floor(100000 + Math.random() * 900000));
}

export function registerEmailAuthRoutes(app: Express): void {

  // ── Sign Up ──────────────────────────────────────────────────────────────
  app.post("/api/auth/email-signup", async (req: Request, res: Response) => {
    try {
      const { email, password, name } = req.body || {};
      if (!email || !password) {
        return res.status(400).json({ error: "البريد الإلكتروني وكلمة المرور مطلوبان" });
      }
      if (typeof email !== "string" || !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
        return res.status(400).json({ error: "بريد إلكتروني غير صالح" });
      }
      if (typeof password !== "string" || password.length < 6) {
        return res.status(400).json({ error: "كلمة المرور يجب أن تكون 6 أحرف على الأقل" });
      }

      const existing = await db.select({ id: users.id }).from(users).where(eq(users.email, email)).limit(1);
      if (existing.length > 0) {
        return res.status(409).json({ error: "هذا البريد الإلكتروني مسجّل مسبقاً" });
      }

      const passwordHash = await hashPassword(password);
      const displayName = typeof name === "string" && name.trim() ? name.trim() : email.split("@")[0];
      const nameParts = displayName.split(" ");
      const code = generateCode();

      const [user] = await db.insert(users).values({
        email,
        passwordHash,
        displayName,
        firstName: nameParts[0] || null,
        lastName: nameParts.slice(1).join(" ") || null,
        emailVerified: false,
        verificationCode: code,
      }).returning();

      (req.session as any).pendingVerifyId = user.id;

      const sent = await sendVerificationEmail(user.email!, code);

      return res.json({
        requiresVerification: true,
        emailSent: sent,
        email: user.email,
      });
    } catch (err: any) {
      console.error("email-signup error:", err);
      return res.status(500).json({ error: "حدث خطأ، حاول مرة أخرى" });
    }
  });

  // ── Verify Email ─────────────────────────────────────────────────────────
  app.post("/api/auth/verify-email", async (req: Request, res: Response) => {
    try {
      const userId = (req.session as any).pendingVerifyId;
      if (!userId) return res.status(400).json({ error: "جلسة التحقق منتهية" });

      const { code } = req.body || {};
      if (!code) return res.status(400).json({ error: "رمز التحقق مطلوب" });

      const [user] = await db.select().from(users).where(eq(users.id, userId)).limit(1);
      if (!user) return res.status(404).json({ error: "المستخدم غير موجود" });

      if (String(user.verificationCode) !== String(code).trim()) {
        return res.status(400).json({ error: "رمز التحقق غير صحيح" });
      }

      await db.update(users).set({ emailVerified: true, verificationCode: null, updatedAt: new Date() }).where(eq(users.id, userId));

      delete (req.session as any).pendingVerifyId;
      (req.session as any).emailUserId = userId;

      return res.json({
        id: user.id,
        email: user.email,
        displayName: user.displayName,
        username: user.username,
        firstName: user.firstName,
        lastName: user.lastName,
        profileImageUrl: user.profileImageCustom || user.profileImageUrl,
      });
    } catch (err) {
      console.error("verify-email error:", err);
      return res.status(500).json({ error: "حدث خطأ، حاول مرة أخرى" });
    }
  });

  // ── Resend Code ───────────────────────────────────────────────────────────
  app.post("/api/auth/resend-code", async (req: Request, res: Response) => {
    try {
      const userId = (req.session as any).pendingVerifyId;
      if (!userId) return res.status(400).json({ error: "جلسة التحقق منتهية" });

      const code = generateCode();
      await db.update(users).set({ verificationCode: code, updatedAt: new Date() }).where(eq(users.id, userId));

      const [user] = await db.select({ email: users.email }).from(users).where(eq(users.id, userId)).limit(1);
      if (user?.email) await sendVerificationEmail(user.email, code);

      return res.json({ ok: true });
    } catch (err) {
      console.error("resend-code error:", err);
      return res.status(500).json({ error: "حدث خطأ، حاول مرة أخرى" });
    }
  });

  // ── Sign In ──────────────────────────────────────────────────────────────
  app.post("/api/auth/email-signin", async (req: Request, res: Response) => {
    try {
      const { email, password } = req.body || {};
      if (!email || !password) {
        return res.status(400).json({ error: "البريد الإلكتروني وكلمة المرور مطلوبان" });
      }

      const [user] = await db.select().from(users).where(eq(users.email, email)).limit(1);
      if (!user || !user.passwordHash) {
        return res.status(401).json({ error: "بريد إلكتروني أو كلمة مرور غير صحيحة" });
      }

      const valid = await verifyPassword(String(password), user.passwordHash);
      if (!valid) {
        return res.status(401).json({ error: "بريد إلكتروني أو كلمة مرور غير صحيحة" });
      }

      if (user.emailVerified === false) {
        const code = generateCode();
        await db.update(users).set({ verificationCode: code, updatedAt: new Date() }).where(eq(users.id, user.id));
        (req.session as any).pendingVerifyId = user.id;
        if (user.email) await sendVerificationEmail(user.email, code);
        return res.json({
          requiresVerification: true,
          emailSent: true,
          email: user.email,
        });
      }

      (req.session as any).emailUserId = user.id;

      return res.json({
        id: user.id,
        email: user.email,
        displayName: user.displayName,
        username: user.username,
        firstName: user.firstName,
        lastName: user.lastName,
        profileImageUrl: user.profileImageCustom || user.profileImageUrl,
      });
    } catch (err) {
      console.error("email-signin error:", err);
      return res.status(500).json({ error: "حدث خطأ، حاول مرة أخرى" });
    }
  });

  // ── Profile Update ────────────────────────────────────────────────────────
  app.patch("/api/auth/profile", async (req: Request, res: Response) => {
    try {
      const userId = (req.session as any).emailUserId || (req.user as any)?.claims?.sub;
      if (!userId) return res.status(401).json({ error: "غير مصرّح" });

      const { displayName, username, profileImageCustom } = req.body || {};
      const updates: Record<string, any> = { updatedAt: new Date() };

      if (typeof displayName === "string" && displayName.trim()) {
        updates.displayName = displayName.trim().slice(0, 50);
        const parts = updates.displayName.split(" ");
        updates.firstName = parts[0];
        if (parts.length > 1) updates.lastName = parts.slice(1).join(" ");
      }
      if (typeof username === "string") {
        const cleaned = username.replace(/[^a-zA-Z0-9_\u0600-\u06FF]/g, "").slice(0, 20);
        if (cleaned) updates.username = cleaned;
      }
      if (typeof profileImageCustom === "string") {
        updates.profileImageCustom = profileImageCustom.slice(0, 500_000);
      }
      if (profileImageCustom === null) {
        updates.profileImageCustom = null;
      }

      const [updated] = await db.update(users).set(updates).where(eq(users.id, userId)).returning();
      if (!updated) return res.status(404).json({ error: "المستخدم غير موجود" });

      return res.json({
        id: updated.id,
        email: updated.email,
        displayName: updated.displayName,
        username: updated.username,
        firstName: updated.firstName,
        lastName: updated.lastName,
        profileImageUrl: updated.profileImageCustom || updated.profileImageUrl,
      });
    } catch (err) {
      console.error("profile update error:", err);
      return res.status(500).json({ error: "حدث خطأ، حاول مرة أخرى" });
    }
  });

  // ── Change Password ───────────────────────────────────────────────────────
  app.post("/api/auth/change-password", async (req: Request, res: Response) => {
    try {
      const userId = (req.session as any).emailUserId;
      if (!userId) return res.status(401).json({ error: "غير مصرّح" });

      const { currentPassword, newPassword } = req.body || {};
      if (!currentPassword || !newPassword) return res.status(400).json({ error: "جميع الحقول مطلوبة" });
      if (typeof newPassword !== "string" || newPassword.length < 6)
        return res.status(400).json({ error: "كلمة المرور يجب أن تكون 6 أحرف على الأقل" });

      const [user] = await db.select().from(users).where(eq(users.id, userId)).limit(1);
      if (!user || !user.passwordHash) return res.status(401).json({ error: "المستخدم غير موجود" });

      const valid = await verifyPassword(String(currentPassword), user.passwordHash);
      if (!valid) return res.status(401).json({ error: "كلمة المرور الحالية غير صحيحة" });

      const newHash = await hashPassword(newPassword);
      await db.update(users).set({ passwordHash: newHash, updatedAt: new Date() }).where(eq(users.id, userId));

      return res.json({ ok: true });
    } catch (err) {
      console.error("change-password error:", err);
      return res.status(500).json({ error: "حدث خطأ، حاول مرة أخرى" });
    }
  });

  // ── Email Sign Out ────────────────────────────────────────────────────────
  app.post("/api/auth/email-signout", (req: Request, res: Response) => {
    delete (req.session as any).emailUserId;
    req.session.destroy(() => res.json({ ok: true }));
  });
}

// ── Get email-authed user from session ────────────────────────────────────
export async function getEmailUser(req: Request): Promise<any | null> {
  const emailUserId = (req.session as any)?.emailUserId;
  if (!emailUserId) return null;
  try {
    const [user] = await db.select().from(users).where(eq(users.id, emailUserId)).limit(1);
    if (!user) return null;
    return {
      id: user.id,
      email: user.email,
      displayName: user.displayName,
      username: user.username,
      firstName: user.firstName,
      lastName: user.lastName,
      profileImageUrl: user.profileImageCustom || user.profileImageUrl,
      authType: "email",
    };
  } catch {
    return null;
  }
}
