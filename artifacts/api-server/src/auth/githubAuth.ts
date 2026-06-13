/**
 * githubAuth.ts
 * ─────────────────────────────────────────────────────
 * تسجيل الدخول بـ GitHub OAuth — بديل مجاني بدون Google Cloud
 * ─────────────────────────────────────────────────────
 * الخطوات:
 * 1. المتصفح يُحوّل المستخدم إلى GitHub OAuth Authorization
 * 2. GitHub يُعيد توجيه المستخدم إلى /auth/callback?code=...&state=github
 * 3. المتصفح يُرسل { code, redirectUri } إلى POST /api/auth/github/token
 * 4. الخادم يستبدل الـ code بـ access_token ثم يجلب بيانات المستخدم
 * ─────────────────────────────────────────────────────
 */
import type { Express, Request, Response } from "express";
import { db } from "../lib/db.js";
import { users } from "@workspace/db";
import { eq } from "drizzle-orm";

async function generateUniqueUsername(base: string): Promise<string> {
  const clean = base
    .replace(/[^a-zA-Z0-9_.]/g, "")
    .slice(0, 20)
    .toLowerCase() || "user";
  const rows = await db.select({ id: users.id }).from(users).where(eq(users.username, clean)).limit(1);
  if (!rows.length) return clean;
  const suffix = Math.floor(100 + Math.random() * 900);
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
    authType:        "github" as const,
    createdAt:       u.created_at ?? u.createdAt,
  };
}

export function registerGithubAuthRoutes(app: Express): void {

  /**
   * POST /api/auth/github/token
   * يستقبل { code, redirectUri } من AuthCallback
   * يستبدل الكود بـ access_token ثم يجلب بيانات المستخدم من GitHub API
   */
  app.post("/api/auth/github/token", async (req: Request, res: Response) => {
    try {
      const { code, redirectUri } = req.body || {};
      if (!code) return res.status(400).json({ error: "code مطلوب" });

      const clientId     = process.env["GITHUB_CLIENT_ID"];
      const clientSecret = process.env["GITHUB_CLIENT_SECRET"];

      if (!clientId || !clientSecret) {
        return res.status(503).json({ error: "GitHub OAuth غير مُهيَّأ — يرجى إضافة GITHUB_CLIENT_ID وGITHUB_CLIENT_SECRET في متغيرات البيئة" });
      }

      /* ── استبدال الكود بـ access_token ── */
      const tokenRes = await fetch("https://github.com/login/oauth/access_token", {
        method : "POST",
        headers: {
          "Content-Type": "application/json",
          "Accept"       : "application/json",
        },
        body: JSON.stringify({
          client_id    : clientId,
          client_secret: clientSecret,
          code,
          redirect_uri : redirectUri || "",
        }),
        signal: AbortSignal.timeout(12_000),
      });

      if (!tokenRes.ok) {
        return res.status(502).json({ error: "فشل الاتصال بـ GitHub" });
      }

      const tokenData = await tokenRes.json() as any;

      if (tokenData.error) {
        const msg = tokenData.error_description || tokenData.error;
        console.error("[github-auth] token error:", msg);
        return res.status(401).json({ error: `GitHub رفض الكود: ${msg}` });
      }

      const accessToken = tokenData.access_token;
      if (!accessToken) {
        return res.status(401).json({ error: "لم يصل access_token من GitHub" });
      }

      /* ── جلب بيانات المستخدم ── */
      const [userRes, emailRes] = await Promise.all([
        fetch("https://api.github.com/user", {
          headers: {
            "Authorization": `Bearer ${accessToken}`,
            "Accept"        : "application/vnd.github+json",
            "User-Agent"    : "AnimeNova/1.0",
          },
          signal: AbortSignal.timeout(10_000),
        }),
        fetch("https://api.github.com/user/emails", {
          headers: {
            "Authorization": `Bearer ${accessToken}`,
            "Accept"        : "application/vnd.github+json",
            "User-Agent"    : "AnimeNova/1.0",
          },
          signal: AbortSignal.timeout(10_000),
        }),
      ]);

      if (!userRes.ok) {
        return res.status(401).json({ error: "فشل جلب بيانات المستخدم من GitHub" });
      }

      const ghUser  = await userRes.json() as any;
      const ghEmails: Array<{ email: string; primary: boolean; verified: boolean }> =
        emailRes.ok ? await emailRes.json() : [];

      /* نختار البريد الأساسي المُتحقق منه أولاً، ثم أي بريد مُتحقق، ثم ما في الملف العام */
      const primaryEmail =
        ghEmails.find(e => e.primary && e.verified)?.email ||
        ghEmails.find(e => e.verified)?.email ||
        ghUser.email ||
        null;

      if (!primaryEmail) {
        return res.status(401).json({
          error: "حساب GitHub ليس فيه بريد إلكتروني عام أو مُتحقق منه. يرجى التحقق من إعدادات الخصوصية في GitHub أو استخدام تسجيل الدخول بالبريد الإلكتروني.",
        });
      }

      const email     = primaryEmail.toLowerCase().trim();
      const avatarUrl = ghUser.avatar_url || null;
      const fullName  = ghUser.name || ghUser.login || email.split("@")[0];
      const login     = ghUser.login || "";

      /* ── البحث عن مستخدم موجود أو إنشاء جديد ── */
      const existing = await db.select().from(users).where(eq(users.email, email)).limit(1);
      let user: any;

      if (existing.length > 0) {
        user = existing[0];
        /* تحديث الصورة عند الدخول إن تغيّرت */
        if (avatarUrl && user.profileImageUrl !== avatarUrl) {
          const updated = await db.update(users)
            .set({ profileImageUrl: avatarUrl, updatedAt: new Date() })
            .where(eq(users.id, user.id))
            .returning();
          if (updated.length > 0) user = updated[0];
        }
      } else {
        const username = await generateUniqueUsername(login || fullName.split(" ")[0]);
        const [created] = await db.insert(users).values({
          email,
          displayName    : fullName.slice(0, 50),
          username,
          emailVerified  : true,
          profileImageUrl: avatarUrl,
          firstName      : fullName.split(" ")[0] || null,
          lastName       : fullName.split(" ").slice(1).join(" ") || null,
        }).returning();
        user = created;
      }

      (req.session as any).userId  = user.id;
      req.session.cookie.maxAge    = 30 * 24 * 60 * 60 * 1000;

      return res.json(userPayload(user));
    } catch (err: any) {
      console.error("[github-auth] error:", err.message);
      return res.status(500).json({ error: "حدث خطأ، حاول مرة أخرى" });
    }
  });
}
