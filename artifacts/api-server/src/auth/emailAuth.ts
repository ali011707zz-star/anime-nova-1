import type { Express, Request, Response } from "express";
import { scrypt, randomBytes, timingSafeEqual } from "node:crypto";
import { promisify } from "node:util";
import { sendVerifyEmail, sendPasswordResetEmail } from "./emailService.js";
import { db, pool } from "../lib/db.js";
import { users } from "@workspace/db";
import { eq } from "drizzle-orm";

/* ══ كودات التحقق — مخزّنة في PostgreSQL (تبقى عبر إعادة تشغيل السيرفر) ══ */
const CODE_TTL_MS        = 10 * 60 * 1000;
const MAX_ATTEMPTS       = 5;
const RESEND_COOLDOWN_MS = 60 * 1000;

function generateCode(): string {
  return String(Math.floor(100_000 + Math.random() * 900_000));
}

async function setPendingCode(email: string, code: string, type: "signup" | "reset"): Promise<void> {
  const expiresAt = new Date(Date.now() + CODE_TTL_MS).toISOString();
  await pool.query(
    `INSERT INTO pending_verifications(email, code, type, expires_at, attempts, sent_at)
     VALUES($1,$2,$3,$4,0,NOW())
     ON CONFLICT(email) DO UPDATE
       SET code=$2, type=$3, expires_at=$4, attempts=0, sent_at=NOW()`,
    [email, code, type, expiresAt]
  );
}

async function getPendingCode(email: string): Promise<{ code: string; type: string; expiresAt: Date; attempts: number } | null> {
  const r = await pool.query(
    `SELECT code, type, expires_at, attempts FROM pending_verifications WHERE email=$1`,
    [email]
  );
  if (!r.rows.length) return null;
  const row = r.rows[0];
  return { code: row.code, type: row.type, expiresAt: new Date(row.expires_at), attempts: row.attempts };
}

async function incrementAttempts(email: string): Promise<number> {
  const r = await pool.query(
    `UPDATE pending_verifications SET attempts=attempts+1 WHERE email=$1 RETURNING attempts`,
    [email]
  );
  return r.rows[0]?.attempts ?? MAX_ATTEMPTS + 1;
}

async function deletePendingCode(email: string): Promise<void> {
  await pool.query(`DELETE FROM pending_verifications WHERE email=$1`, [email]);
}

async function getSentAt(email: string): Promise<Date | null> {
  const r = await pool.query(
    `SELECT sent_at FROM pending_verifications WHERE email=$1`,
    [email]
  );
  return r.rows[0]?.sent_at ? new Date(r.rows[0].sent_at) : null;
}

async function cleanupExpiredCodes(): Promise<void> {
  await pool.query(`DELETE FROM pending_verifications WHERE expires_at < NOW()`).catch(() => {});
}

const scryptAsync = promisify(scrypt);

async function hashPassword(password: string): Promise<string> {
  const salt = randomBytes(16).toString("hex");
  const buf  = (await scryptAsync(password, salt, 64)) as Buffer;
  return `${buf.toString("hex")}.${salt}`;
}

async function verifyPassword(password: string, hash: string): Promise<boolean> {
  try {
    const [hashHex, salt] = hash.split(".");
    const buf     = (await scryptAsync(password, salt, 64)) as Buffer;
    const hashBuf = Buffer.from(hashHex, "hex");
    return timingSafeEqual(buf, hashBuf);
  } catch { return false; }
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
  const rows = await db.select({ id: users.id }).from(users).where(eq(users.username, clean)).limit(1);
  if (!rows.length) return clean;
  const suffix    = Math.floor(100 + Math.random() * 900);
  const candidate = `${clean.slice(0, 17)}${suffix}`;
  const rows2 = await db.select({ id: users.id }).from(users).where(eq(users.username, candidate)).limit(1);
  if (!rows2.length) return candidate;
  return `${clean.slice(0, 14)}${Date.now() % 10000}`;
}

function userPayload(u: any) {
  return {
    id:              u.id,
    email:           u.email,
    displayName:     u.display_name ?? u.displayName,
    username:        u.username,
    avatarColor:     u.avatar_color ?? u.avatarColor ?? 0,
    profileImageUrl: u.profile_image_custom ?? u.profileImageCustom ?? u.profile_image_url ?? u.profileImageUrl,
    authType:        "email" as const,
    createdAt:       u.created_at ?? u.createdAt,
  };
}

export function registerEmailAuthRoutes(app: Express): void {

  /* ── Send verification code ─────────────────────────────────── */
  app.post("/api/auth/send-verify-code", async (req: Request, res: Response) => {
    try {
      await cleanupExpiredCodes();
      const { email, type = "signup" } = req.body || {};
      if (!email || !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(String(email)))
        return res.status(400).json({ error: "بريد إلكتروني غير صالح" });

      const emailKey = String(email).toLowerCase().trim();

      // Cooldown: check last sent time from DB
      const sentAt = await getSentAt(emailKey);
      if (sentAt && Date.now() - sentAt.getTime() < RESEND_COOLDOWN_MS) {
        const wait = Math.ceil((RESEND_COOLDOWN_MS - (Date.now() - sentAt.getTime())) / 1000);
        return res.status(429).json({ error: `انتظر ${wait} ثانية قبل إعادة الإرسال` });
      }

      const existing = await db.select({ id: users.id }).from(users).where(eq(users.email, emailKey)).limit(1);

      if (type === "signup" && existing.length > 0)
        return res.status(409).json({ error: "هذا البريد الإلكتروني مسجّل مسبقاً" });
      if (type === "reset" && existing.length === 0)
        return res.status(404).json({ error: "لا يوجد حساب بهذا البريد الإلكتروني" });

      const code = generateCode();
      await setPendingCode(emailKey, code, type as "signup" | "reset");

      const result = type === "reset"
        ? await sendPasswordResetEmail(emailKey, code)
        : await sendVerifyEmail(emailKey, code);

      if (!result.ok)
        return res.status(500).json({ error: "فشل إرسال البريد، حاول مرة أخرى" });

      const resp: Record<string, any> = { sent: true };
      if (result.previewUrl) resp.previewUrl = result.previewUrl;
      // وضع التطوير: لا يوجد SMTP حقيقي → أرسل الكود مباشرة ليُعرض في الواجهة
      if (!process.env.SMTP_USER) resp.devCode = code;
      return res.json(resp);
    } catch (err) {
      console.error("[send-verify-code]", err);
      return res.status(500).json({ error: "حدث خطأ، حاول مرة أخرى" });
    }
  });

  /* ── Sign Up ─────────────────────────────────────────────────── */
  app.post("/api/auth/signup", async (req: Request, res: Response) => {
    try {
      const { email, password, displayName: rawName, verifyCode } = req.body || {};
      if (!email || !password)
        return res.status(400).json({ error: "البريد الإلكتروني وكلمة المرور مطلوبان" });
      if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(String(email)))
        return res.status(400).json({ error: "بريد إلكتروني غير صالح" });
      if (String(password).length < 6)
        return res.status(400).json({ error: "كلمة المرور يجب أن تكون 6 أحرف على الأقل" });

      const emailKey = String(email).toLowerCase().trim();

      if (!verifyCode)
        return res.status(400).json({ error: "كود التحقق مطلوب" });

      const pending = await getPendingCode(emailKey);
      if (!pending || pending.type !== "signup")
        return res.status(400).json({ error: "لم يُرسَل كود تحقق لهذا البريد، أرسل الكود أولاً" });
      if (Date.now() > pending.expiresAt.getTime()) {
        await deletePendingCode(emailKey);
        return res.status(400).json({ error: "انتهت صلاحية الكود، أرسل كوداً جديداً" });
      }
      const attempts = await incrementAttempts(emailKey);
      if (attempts > MAX_ATTEMPTS) {
        await deletePendingCode(emailKey);
        return res.status(429).json({ error: "تجاوزت عدد المحاولات، أرسل كوداً جديداً" });
      }
      if (String(verifyCode).trim() !== pending.code)
        return res.status(400).json({ error: `الكود غير صحيح (${MAX_ATTEMPTS - attempts + 1} محاولات متبقية)` });

      await deletePendingCode(emailKey);

      const already = await db.select({ id: users.id }).from(users).where(eq(users.email, emailKey)).limit(1);
      if (already.length > 0)
        return res.status(409).json({ error: "هذا البريد الإلكتروني مسجّل مسبقاً" });

      const passwordHash  = await hashPassword(String(password));
      const displayName   = typeof rawName === "string" && rawName.trim()
        ? rawName.trim().slice(0, 50)
        : emailKey.split("@")[0];
      const username = await generateUniqueUsername(emailKey.split("@")[0]);

      const [user] = await db.insert(users).values({
        email:          emailKey,
        passwordHash,
        displayName,
        username,
        emailVerified:  true,
        firstName:      displayName.split(" ")[0] || null,
        lastName:       displayName.split(" ").slice(1).join(" ") || null,
      }).returning();

      (req.session as any).userId = user.id;
      req.session.cookie.maxAge   = 30 * 24 * 60 * 60 * 1000;

      return res.status(201).json(userPayload(user));
    } catch (err: any) {
      console.error("[signup]", err);
      return res.status(500).json({ error: "حدث خطأ، حاول مرة أخرى" });
    }
  });

  /* ── Reset Password ──────────────────────────────────────────── */
  app.post("/api/auth/reset-password", async (req: Request, res: Response) => {
    try {
      const { email, verifyCode, newPassword } = req.body || {};
      if (!email || !verifyCode || !newPassword)
        return res.status(400).json({ error: "جميع الحقول مطلوبة" });
      if (String(newPassword).length < 6)
        return res.status(400).json({ error: "كلمة المرور يجب أن تكون 6 أحرف على الأقل" });

      const emailKey = String(email).toLowerCase().trim();
      const pending  = await getPendingCode(emailKey);

      if (!pending || pending.type !== "reset")
        return res.status(400).json({ error: "لم يُرسَل كود إعادة تعيين لهذا البريد" });
      if (Date.now() > pending.expiresAt.getTime()) {
        await deletePendingCode(emailKey);
        return res.status(400).json({ error: "انتهت صلاحية الكود، أرسل كوداً جديداً" });
      }
      const attempts = await incrementAttempts(emailKey);
      if (attempts > MAX_ATTEMPTS) {
        await deletePendingCode(emailKey);
        return res.status(429).json({ error: "تجاوزت عدد المحاولات، أرسل كوداً جديداً" });
      }
      if (String(verifyCode).trim() !== pending.code)
        return res.status(400).json({ error: `الكود غير صحيح (${MAX_ATTEMPTS - attempts + 1} محاولات متبقية)` });

      await deletePendingCode(emailKey);

      const userRows = await db.select().from(users).where(eq(users.email, emailKey)).limit(1);
      if (!userRows.length) return res.status(404).json({ error: "المستخدم غير موجود" });

      const newHash = await hashPassword(String(newPassword));
      await db.update(users)
        .set({ passwordHash: newHash, updatedAt: new Date() })
        .where(eq(users.id, userRows[0].id));

      return res.json({ ok: true });
    } catch (err) {
      console.error("[reset-password]", err);
      return res.status(500).json({ error: "حدث خطأ، حاول مرة أخرى" });
    }
  });

  /* ── Sign In ─────────────────────────────────────────────────── */
  app.post("/api/auth/signin", async (req: Request, res: Response) => {
    try {
      const { email, password } = req.body || {};
      if (!email || !password)
        return res.status(400).json({ error: "البريد الإلكتروني وكلمة المرور مطلوبان" });

      const rows = await db.select().from(users).where(eq(users.email, String(email).toLowerCase().trim())).limit(1);
      const user = rows[0];

      if (!user || !user.passwordHash)
        return res.status(401).json({ error: "بريد إلكتروني أو كلمة مرور غير صحيحة" });

      const valid = await verifyPassword(String(password), user.passwordHash);
      if (!valid)
        return res.status(401).json({ error: "بريد إلكتروني أو كلمة مرور غير صحيحة" });

      (req.session as any).userId = user.id;
      req.session.cookie.maxAge   = 30 * 24 * 60 * 60 * 1000;

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
      const rows = await db.select().from(users).where(eq(users.id, userId)).limit(1);
      if (!rows.length) {
        req.session.destroy(() => {});
        return res.status(401).json({ error: "غير مصرّح" });
      }
      return res.json(userPayload(rows[0]));
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
        const dn = displayName.trim().slice(0, 50);
        updates.displayName = dn;
        updates.firstName   = dn.split(" ")[0];
        updates.lastName    = dn.split(" ").slice(1).join(" ") || null;
      }
      if (typeof username === "string") {
        const cleaned = sanitizeUsername(username);
        if (!cleaned)
          return res.status(400).json({ error: "اسم المستخدم يجب أن يحتوي على أحرف إنجليزية أو أرقام" });
        if (cleaned.length < 3)
          return res.status(400).json({ error: "اسم المستخدم يجب أن يكون 3 أحرف على الأقل" });
        const existing = await db.select({ id: users.id }).from(users).where(eq(users.username, cleaned)).limit(1);
        if (existing.length && existing[0].id !== userId)
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

      const rows = await db.update(users).set(updates).where(eq(users.id, userId)).returning();
      if (!rows.length) return res.status(404).json({ error: "المستخدم غير موجود" });
      return res.json(userPayload(rows[0]));
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

      const rows = await db.select().from(users).where(eq(users.id, userId)).limit(1);
      const user = rows[0];
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
    const userId  = (req.session as any)?.userId;
    const cleaned = sanitizeUsername(req.params.username);
    if (!cleaned || cleaned.length < 3)
      return res.json({ available: false, reason: "قصير جداً" });
    try {
      const existing = await db.select({ id: users.id }).from(users).where(eq(users.username, cleaned)).limit(1);
      const available = !existing.length || existing[0].id === userId;
      return res.json({ available, username: cleaned });
    } catch {
      return res.json({ available: false });
    }
  });
}

/* ── Get authed user from session ────────────────────────────── */
export async function getEmailUser(req: Request): Promise<any | null> {
  const userId = (req.session as any)?.userId || (req.session as any)?.emailUserId;
  if (!userId) return null;
  try {
    const rows = await db.select().from(users).where(eq(users.id, userId)).limit(1);
    if (!rows.length) return null;
    const u = rows[0];
    return {
      id:              u.id,
      email:           u.email,
      displayName:     u.displayName,
      username:        u.username,
      avatarColor:     u.avatarColor ?? 0,
      profileImageUrl: u.profileImageCustom || u.profileImageUrl,
      authType:        "email" as const,
      createdAt:       u.createdAt,
    };
  } catch { return null; }
}
