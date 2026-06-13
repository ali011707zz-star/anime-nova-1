/**
 * googleAuth.ts
 * ─────────────────────────────────────────────────────
 * تسجيل الدخول بـ Google عبر Supabase OAuth
 * ─────────────────────────────────────────────────────
 * Flow:
 *  1. Frontend يوجّه المستخدم إلى Supabase OAuth URL
 *  2. بعد الموافقة، Supabase يُعيد redirect إلى /auth/callback#access_token=...
 *  3. AuthCallback.tsx يستخرج access_token من الـ hash ويُرسله للـ backend
 *  4. Backend يتحقق من الـ token عبر Supabase Admin API ويحصل على بيانات المستخدم
 *  5. ينشئ/يحدّث المستخدم في جدول users ويُنشئ session
 */
import type { Express, Request, Response } from "express";
import { sbGet, sbInsert, sbUpdate } from "../lib/sb.js";

const SUPABASE_URL = process.env.SUPABASE_URL!;
const SUPABASE_SERVICE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY!;

async function generateUniqueUsername(base: string): Promise<string> {
  const clean = base
    .replace(/[^a-zA-Z0-9_.]/g, "")
    .slice(0, 20)
    .toLowerCase() || "user";
  const rows = await sbGet("users", { username: `eq.${clean}`, select: "id", limit: "1" });
  if (!rows.length) return clean;
  const suffix = Math.floor(100 + Math.random() * 900);
  const candidate = `${clean.slice(0, 17)}${suffix}`;
  const rows2 = await sbGet("users", { username: `eq.${candidate}`, select: "id", limit: "1" });
  if (!rows2.length) return candidate;
  return `${clean.slice(0, 14)}${Date.now() % 10000}`;
}

function userPayload(u: any) {
  return {
    id:              u.id,
    email:           u.email,
    displayName:     u.display_name,
    username:        u.username,
    avatarColor:     u.avatar_color ?? 0,
    profileImageUrl: u.profile_image_custom || u.profile_image_url,
    authType:        "google" as const,
    createdAt:       u.created_at,
  };
}

export function registerGoogleAuthRoutes(app: Express): void {

  /**
   * POST /api/auth/google/token
   * يستقبل { accessToken } من AuthCallback (من hash fragment)
   * يتحقق منه عبر Supabase Admin API ويُنشئ session
   */
  app.post("/api/auth/google/token", async (req: Request, res: Response) => {
    try {
      const { accessToken } = req.body || {};
      if (!accessToken)
        return res.status(400).json({ error: "accessToken مطلوب" });

      /* ── 1. التحقق من الـ token عبر Supabase Admin API ── */
      const userRes = await fetch(`${SUPABASE_URL}/auth/v1/user`, {
        headers: {
          "Authorization": `Bearer ${accessToken}`,
          "apikey":          SUPABASE_SERVICE_KEY,
        },
      });

      if (!userRes.ok) {
        const errText = await userRes.text();
        console.error("[google-auth] user fetch failed:", userRes.status, errText);
        return res.status(401).json({ error: "token غير صالح، حاول مرة أخرى" });
      }

      const supaUser = await userRes.json();

      if (!supaUser?.email) {
        return res.status(401).json({ error: "لم نتمكن من الحصول على بريدك من Google" });
      }

      const email     = supaUser.email.toLowerCase().trim();
      const avatarUrl = supaUser.user_metadata?.avatar_url
                     || supaUser.user_metadata?.picture
                     || null;
      const fullName  = supaUser.user_metadata?.full_name
                     || supaUser.user_metadata?.name
                     || email.split("@")[0];
      const googleId  = supaUser.id || supaUser.sub;

      /* ── 2. البحث عن مستخدم موجود أو إنشاء جديد ── */
      const existing = await sbGet("users", { email: `eq.${email}`, limit: "1" });
      let user: any;

      if (existing.length > 0) {
        user = existing[0];
        /* حدّث الصورة إذا تغيّرت */
        if (avatarUrl && user.profile_image_url !== avatarUrl) {
          const updated = await sbUpdate("users",
            { id: `eq.${user.id}` },
            { profile_image_url: avatarUrl }
          );
          if (updated.length > 0) user = updated[0];
        }
      } else {
        /* مستخدم جديد */
        const username = await generateUniqueUsername(fullName.split(" ")[0]);
        const [created] = await sbInsert("users", {
          email,
          display_name:      fullName.slice(0, 50),
          username,
          email_verified:    true,
          profile_image_url: avatarUrl,
          google_id:         googleId,
          first_name:        fullName.split(" ")[0] || null,
          last_name:         fullName.split(" ").slice(1).join(" ") || null,
        });
        user = created;
      }

      /* ── 3. إنشاء session ── */
      (req.session as any).userId = user.id;
      req.session.cookie.maxAge   = 30 * 24 * 60 * 60 * 1000;

      return res.json(userPayload(user));
    } catch (err: any) {
      console.error("[google-auth] error:", err.message);
      return res.status(500).json({ error: "حدث خطأ، حاول مرة أخرى" });
    }
  });
}
