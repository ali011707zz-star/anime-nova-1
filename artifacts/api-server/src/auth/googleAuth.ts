/**
 * googleAuth.ts
 * ─────────────────────────────────────────────────────
 * تسجيل الدخول بـ Google — يتحقق من access_token عبر Google API مباشرة
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
    authType:        "google" as const,
    createdAt:       u.created_at ?? u.createdAt,
  };
}

export function registerGoogleAuthRoutes(app: Express): void {

  /**
   * POST /api/auth/google/token
   * يستقبل { accessToken } من AuthCallback
   * يتحقق منه عبر Google API مباشرة ويُنشئ session
   */
  app.post("/api/auth/google/token", async (req: Request, res: Response) => {
    try {
      const { accessToken } = req.body || {};
      if (!accessToken)
        return res.status(400).json({ error: "accessToken مطلوب" });

      /* ── التحقق من الـ token عبر Google API ── */
      const userRes = await fetch("https://www.googleapis.com/oauth2/v3/userinfo", {
        headers: { "Authorization": `Bearer ${accessToken}` },
      });

      if (!userRes.ok) {
        console.error("[google-auth] Google userinfo failed:", userRes.status);
        return res.status(401).json({ error: "token غير صالح، حاول مرة أخرى" });
      }

      const googleUser = await userRes.json() as any;

      if (!googleUser?.email) {
        return res.status(401).json({ error: "لم نتمكن من الحصول على بريدك من Google" });
      }

      const email     = googleUser.email.toLowerCase().trim();
      const avatarUrl = googleUser.picture || null;
      const fullName  = googleUser.name || email.split("@")[0];

      /* ── البحث عن مستخدم موجود أو إنشاء جديد ── */
      const existing = await db.select().from(users).where(eq(users.email, email)).limit(1);
      let user: any;

      if (existing.length > 0) {
        user = existing[0];
        if (avatarUrl && user.profileImageUrl !== avatarUrl) {
          const updated = await db.update(users)
            .set({ profileImageUrl: avatarUrl, updatedAt: new Date() })
            .where(eq(users.id, user.id))
            .returning();
          if (updated.length > 0) user = updated[0];
        }
      } else {
        const username = await generateUniqueUsername(fullName.split(" ")[0]);
        const [created] = await db.insert(users).values({
          email,
          displayName:     fullName.slice(0, 50),
          username,
          emailVerified:   true,
          profileImageUrl: avatarUrl,
          firstName:       fullName.split(" ")[0] || null,
          lastName:        fullName.split(" ").slice(1).join(" ") || null,
        }).returning();
        user = created;
      }

      (req.session as any).userId = user.id;
      req.session.cookie.maxAge   = 30 * 24 * 60 * 60 * 1000;

      return res.json(userPayload(user));
    } catch (err: any) {
      console.error("[google-auth] error:", err.message);
      return res.status(500).json({ error: "حدث خطأ، حاول مرة أخرى" });
    }
  });
}
