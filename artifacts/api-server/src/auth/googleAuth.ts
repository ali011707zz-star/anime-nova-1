import type { Express, Request, Response } from "express";
import { sbSelect, sbInsert, sbPatch } from "../lib/supabaseClient.js";
import { issueUserToken } from "../lib/security.js";

async function generateUniqueUsername(base: string): Promise<string> {
  const clean = base
    .replace(/[^a-zA-Z0-9_.]/g, "")
    .slice(0, 20)
    .toLowerCase() || "user";
  const rows = await sbSelect("users", { username: `eq.${clean}` }, { limit: 1 });
  if (!rows.length) return clean;
  const suffix = Math.floor(100 + Math.random() * 900);
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
    avatarColor:     u.avatar_color ?? 0,
    profileImageUrl: u.profile_image_custom ?? u.profile_image_url,
    authType:        "google" as const,
    createdAt:       u.created_at,
    plan:            u.plan ?? "free",
    expiresAt:       u.expires_at ?? null,
    authToken:       issueUserToken(String(u.id)).token,
  };
}

export function registerGoogleAuthRoutes(app: Express): void {

  app.post("/api/auth/google/token", async (req: Request, res: Response) => {
    try {
      const { accessToken } = req.body || {};
      if (!accessToken)
        return res.status(400).json({ error: "accessToken مطلوب" });

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

      const existing = await sbSelect("users", { email: `eq.${email}` }, { limit: 1 });
      let user: any;

      if (existing.length > 0) {
        user = existing[0];
        if (avatarUrl && user.profile_image_url !== avatarUrl) {
          const updated = await sbPatch("users", { id: `eq.${user.id}` }, {
            profile_image_url: avatarUrl,
            updated_at:        new Date().toISOString(),
          });
          if (updated) user = updated;
        }
      } else {
        const username = await generateUniqueUsername(fullName.split(" ")[0]);
        user = await sbInsert("users", {
          email,
          display_name:      fullName.slice(0, 50),
          username,
          email_verified:    true,
          profile_image_url: avatarUrl,
          first_name:        fullName.split(" ")[0] || null,
          last_name:         fullName.split(" ").slice(1).join(" ") || null,
        });
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
