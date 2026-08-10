import type { Express, Request, Response } from "express";
import { scrypt, randomBytes, timingSafeEqual } from "node:crypto";
import { promisify } from "node:util";
import { sendVerifyEmail, sendPasswordResetEmail } from "./emailService.js";
import { sbSelect, sbInsert, sbUpsert, sbDelete, sbPatch } from "../lib/supabaseClient.js";
import { getMobileUserId, issueUserToken } from "../lib/security.js";

const CODE_TTL_MS        = 10 * 60 * 1000;
const MAX_ATTEMPTS       = 5;
const RESEND_COOLDOWN_MS = 60 * 1000;

function generateCode(): string {
  return String(Math.floor(100000 + Math.random() * 900000));
}

async function setPendingCode(email: string, code: string, type: "signup" | "reset"): Promise<void> {
  const expiresAt = new Date(Date.now() + CODE_TTL_MS).toISOString();
  await sbUpsert("pending_verifications", {
    email,
    code,
    type,
    expires_at: expiresAt,
    attempts:   0,
    sent_at:    new Date().toISOString(),
  }, "email");
}

async function getPendingCode(email: string): Promise<{ code: string; type: string; expiresAt: Date; attempts: number } | null> {
  const rows = await sbSelect("pending_verifications", { email: `eq.${email}` }, { limit: 1 });
  if (!rows.length) return null;
  const row = rows[0];
  return { code: row.code, type: row.type, expiresAt: new Date(row.expires_at), attempts: row.attempts };
}

async function incrementAttempts(email: string): Promise<number> {
  const rows = await sbSelect("pending_verifications", { email: `eq.${email}` }, { limit: 1 });
  const current = rows[0]?.attempts ?? 0;
  const next = current + 1;
  await sbPatch("pending_verifications", { email: `eq.${email}` }, { attempts: next });
  return next;
}

async function deletePendingCode(email: string): Promise<void> {
  await sbDelete("pending_verifications", { email: `eq.${email}` });
}

async function getSentAt(email: string): Promise<Date | null> {
  const rows = await sbSelect("pending_verifications", { email: `eq.${email}` }, { limit: 1 });
  return rows[0]?.sent_at ? new Date(rows[0].sent_at) : null;
}

async function cleanupExpiredCodes(): Promise<void> {
  try {
    await sbDelete("pending_verifications", { expires_at: `lt.${new Date().toISOString()}` });
  } catch { /* silent */ }
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
  const rows = await sbSelect("users", { username: `eq.${clean}` }, { limit: 1 });
  if (!rows.length) return clean;
  const suffix    = Math.floor(100 + Math.random() * 900);
  const candidate = `${clean.slice(0, 17)}${suffix}`;
  const rows2 = await sbSelect("users", { username: `eq.${candidate}` }, { limit: 1 });
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
    plan:            u.plan ?? "free",
    expiresAt:       u.expires_at ?? null,
  };
}

function authenticatedPayload(u: any) {
  return { ...userPayload(u), authToken: issueUserToken(String(u.id)).token };
}

export function registerEmailAuthRoutes(app: Express): void {

  app.post("/api/auth/send-verify-code", async (req: Request, res: Response) => {
    try {
      await cleanupExpiredCodes();
      const { email, type = "signup" } = req.body || {};
      if (!email || !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(String(email)))
        return res.status(400).json({ error: "بريد إلكتروني غير صالح" });

      const emailKey = String(email).toLowerCase().trim();

      const sentAt = await getSentAt(emailKey);
      if (sentAt && Date.now() - sentAt.getTime() < RESEND_COOLDOWN_MS) {
        const wait = Math.ceil((RESEND_COOLDOWN_MS - (Date.now() - sentAt.getTime())) / 1000);
        return res.status(429).json({ error: `انتظر ${wait} ثانية قبل إعادة الإرسال` });
      }

      const existing = await sbSelect("users", { email: `eq.${emailKey}` }, { limit: 1 });

      if (type === "signup" && existing.length > 0)
        return res.status(409).json({ error: "هذا البريد الإلكتروني مسجّل مسبقاً" });
      if (type === "reset" && existing.length === 0)
        return res.status(404).json({ error: "لا يوجد حساب بهذا البريد الإلكتروني" });

      const code = generateCode();
      const result = type === "reset"
        ? await sendPasswordResetEmail(emailKey, code)
        : await sendVerifyEmail(emailKey, code);

      if (!result.ok) {
        console.error("[send-verify-code] email delivery failed:", result.error || "EMAIL_DELIVERY_FAILED");
        return res.status(502).json({
          error: "تعذر إرسال رسالة التحقق حالياً. حاول مرة أخرى لاحقاً.",
        });
      }

      // لا نحجز البريد لمدة دقيقة إذا فشل SMTP؛ احفظ الكود فقط بعد نجاح الإرسال.
      await setPendingCode(emailKey, code, type as "signup" | "reset");

      // نُرجع devCode فقط في بيئة التطوير (NODE_ENV !== "production")
      // في الـ production لا يُرسَل الكود في الاستجابة أبداً لأسباب أمنية
      const devPayload: Record<string, unknown> = { sent: true };
      if (process.env.NODE_ENV !== "production") {
        devPayload.devCode = code;
      }
      return res.json(devPayload);
    } catch (err) {
      console.error("[send-verify-code]", err);
      return res.status(500).json({ error: "حدث خطأ، حاول مرة أخرى" });
    }
  });

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

      const already = await sbSelect("users", { email: `eq.${emailKey}` }, { limit: 1 });
      if (already.length > 0)
        return res.status(409).json({ error: "هذا البريد الإلكتروني مسجّل مسبقاً" });

      const passwordHash  = await hashPassword(String(password));
      const displayName   = typeof rawName === "string" && rawName.trim()
        ? rawName.trim().slice(0, 50)
        : emailKey.split("@")[0];
      const username = await generateUniqueUsername(emailKey.split("@")[0]);

      const user = await sbInsert("users", {
        email:          emailKey,
        password_hash:  passwordHash,
        display_name:   displayName,
        username,
        email_verified: true,
        first_name:     displayName.split(" ")[0] || null,
        last_name:      displayName.split(" ").slice(1).join(" ") || null,
      });

      (req.session as any).userId = user.id;
      req.session.cookie.maxAge   = 30 * 24 * 60 * 60 * 1000;

      return res.status(201).json(authenticatedPayload(user));
    } catch (err: any) {
      console.error("[signup]", err);
      return res.status(500).json({ error: "حدث خطأ، حاول مرة أخرى" });
    }
  });

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

      const userRows = await sbSelect("users", { email: `eq.${emailKey}` }, { limit: 1 });
      if (!userRows.length) return res.status(404).json({ error: "المستخدم غير موجود" });

      const newHash = await hashPassword(String(newPassword));
      await sbPatch("users", { id: `eq.${userRows[0].id}` }, {
        password_hash: newHash,
        updated_at:    new Date().toISOString(),
      });

      return res.json({ ok: true });
    } catch (err) {
      console.error("[reset-password]", err);
      return res.status(500).json({ error: "حدث خطأ، حاول مرة أخرى" });
    }
  });

  app.post("/api/auth/signin", async (req: Request, res: Response) => {
    try {
      const { email, password } = req.body || {};
      if (!email || !password)
        return res.status(400).json({ error: "البريد الإلكتروني وكلمة المرور مطلوبان" });

      const rows = await sbSelect("users", { email: `eq.${String(email).toLowerCase().trim()}` }, { limit: 1 });
      const user = rows[0];

      if (!user || !user.password_hash)
        return res.status(401).json({ error: "بريد إلكتروني أو كلمة مرور غير صحيحة" });

      const valid = await verifyPassword(String(password), user.password_hash);
      if (!valid)
        return res.status(401).json({ error: "بريد إلكتروني أو كلمة مرور غير صحيحة" });

      (req.session as any).userId = user.id;
      req.session.cookie.maxAge   = 30 * 24 * 60 * 60 * 1000;

      return res.json(authenticatedPayload(user));
    } catch (err) {
      console.error("[signin]", err);
      return res.status(500).json({ error: "حدث خطأ، حاول مرة أخرى" });
    }
  });

  app.post("/api/auth/signout", (req: Request, res: Response) => {
    req.session.destroy(() => res.json({ ok: true }));
  });

  app.get("/api/auth/me", async (req: Request, res: Response) => {
    const userId = (req.session as any)?.userId || getMobileUserId(req);

    if (!userId) return res.status(401).json({ error: "غير مصرّح" });
    try {
      const rows = await sbSelect("users", { id: `eq.${userId}` }, { limit: 1 });
      if (!rows.length) {
        if ((req.session as any)?.userId) req.session.destroy(() => {});
        return res.status(401).json({ error: "غير مصرّح" });
      }
      /* تجديد الجلسة للمتصفح عند الحاجة */
      if (!(req.session as any)?.userId) {
        (req.session as any).userId = rows[0].id;
        req.session.cookie.maxAge = 30 * 24 * 60 * 60 * 1000;
      }
      return res.json(userPayload(rows[0]));
    } catch {
      return res.status(500).json({ error: "خطأ في الخادم" });
    }
  });

  app.patch("/api/auth/profile", async (req: Request, res: Response) => {
    const userId = (req.session as any)?.userId || getMobileUserId(req);
    if (!userId) return res.status(401).json({ error: "غير مصرّح" });
    try {
      const { displayName, username, profileImageCustom, avatarColor } = req.body || {};
      const updates: Record<string, any> = { updated_at: new Date().toISOString() };

      if (typeof displayName === "string" && displayName.trim()) {
        const dn = displayName.trim().slice(0, 50);
        updates.display_name = dn;
        updates.first_name   = dn.split(" ")[0];
        updates.last_name    = dn.split(" ").slice(1).join(" ") || null;
      }
      if (typeof username === "string") {
        const cleaned = sanitizeUsername(username);
        if (!cleaned)
          return res.status(400).json({ error: "اسم المستخدم يجب أن يحتوي على أحرف إنجليزية أو أرقام" });
        if (cleaned.length < 3)
          return res.status(400).json({ error: "اسم المستخدم يجب أن يكون 3 أحرف على الأقل" });
        const existing = await sbSelect("users", { username: `eq.${cleaned}` }, { limit: 1 });
        if (existing.length && existing[0].id !== userId)
          return res.status(409).json({ error: "اسم المستخدم مستخدم مسبقاً" });
        updates.username = cleaned;
      }
      if (typeof profileImageCustom === "string") {
        updates.profile_image_custom = profileImageCustom.slice(0, 2_000_000);
      } else if (profileImageCustom === null) {
        updates.profile_image_custom = null;
      }
      if (typeof avatarColor === "number" && avatarColor >= 0 && avatarColor <= 7) {
        updates.avatar_color = avatarColor;
      }

      const updated = await sbPatch("users", { id: `eq.${userId}` }, updates);
      if (!updated) return res.status(404).json({ error: "المستخدم غير موجود" });
      return res.json(userPayload(updated));
    } catch (err) {
      console.error("[profile]", err);
      return res.status(500).json({ error: "حدث خطأ، حاول مرة أخرى" });
    }
  });

  app.post("/api/auth/change-password", async (req: Request, res: Response) => {
    const userId = (req.session as any)?.userId || getMobileUserId(req);
    if (!userId) return res.status(401).json({ error: "غير مصرّح" });
    try {
      const { currentPassword, newPassword } = req.body || {};
      if (!currentPassword || !newPassword)
        return res.status(400).json({ error: "جميع الحقول مطلوبة" });
      if (String(newPassword).length < 6)
        return res.status(400).json({ error: "كلمة المرور يجب أن تكون 6 أحرف على الأقل" });

      const rows = await sbSelect("users", { id: `eq.${userId}` }, { limit: 1 });
      const user = rows[0];
      if (!user?.password_hash)
        return res.status(401).json({ error: "المستخدم غير موجود" });

      const valid = await verifyPassword(String(currentPassword), user.password_hash);
      if (!valid)
        return res.status(401).json({ error: "كلمة المرور الحالية غير صحيحة" });

      const newHash = await hashPassword(String(newPassword));
      await sbPatch("users", { id: `eq.${userId}` }, {
        password_hash: newHash,
        updated_at:    new Date().toISOString(),
      });
      return res.json({ ok: true });
    } catch (err) {
      console.error("[change-password]", err);
      return res.status(500).json({ error: "حدث خطأ، حاول مرة أخرى" });
    }
  });

  app.delete("/api/auth/account", async (req: Request, res: Response) => {
    const userId = (req.session as any)?.userId || getMobileUserId(req);
    if (!userId) return res.status(401).json({ error: "غير مصرّح" });
    try {
      await sbDelete("users", { id: `eq.${userId}` });
      req.session.destroy(() => {});
      return res.json({ ok: true });
    } catch (err) {
      console.error("[delete-account]", err);
      return res.status(500).json({ error: "حدث خطأ، حاول مرة أخرى" });
    }
  });

  app.get("/api/auth/check-username/:username", async (req: Request, res: Response) => {
    const userId  = (req.session as any)?.userId;
    const cleaned = sanitizeUsername(req.params.username);
    if (!cleaned || cleaned.length < 3)
      return res.json({ available: false, reason: "قصير جداً" });
    try {
      const existing = await sbSelect("users", { username: `eq.${cleaned}` }, { limit: 1 });
      const available = !existing.length || existing[0].id === userId;
      return res.json({ available, username: cleaned });
    } catch {
      return res.json({ available: false });
    }
  });
}

export async function getEmailUser(req: Request): Promise<any | null> {
  const userId = (req.session as any)?.userId || (req.session as any)?.emailUserId || getMobileUserId(req);
  if (!userId) return null;
  try {
    const rows = await sbSelect("users", { id: `eq.${userId}` }, { limit: 1 });
    if (!rows.length) return null;
    const u = rows[0];

    // تحقق من انتهاء صلاحية الاشتراك تلقائياً
    let plan: string = u.plan ?? "free";
    if (plan === "premium" && u.expires_at && new Date(u.expires_at) < new Date()) {
      try {
        await sbPatch("users", { id: `eq.${u.id}` }, { plan: "free", expires_at: null });
      } catch { /* silent */ }
      plan = "free";
    }

    return {
      id:              u.id,
      email:           u.email,
      displayName:     u.display_name,
      username:        u.username,
      avatarColor:     u.avatar_color ?? 0,
      profileImageUrl: u.profile_image_custom || u.profile_image_url,
      authType:        "email" as const,
      createdAt:       u.created_at,
      plan,
      expiresAt:       plan === "free" ? null : u.expires_at ?? null,
    };
  } catch { return null; }
}
