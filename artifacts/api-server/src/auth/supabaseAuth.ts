import type { Express, Request, Response, NextFunction } from "express";
import { supabaseAdmin } from "../lib/supabase-admin";

export function registerSupabaseAuthRoutes(app: Express): void {

  app.get("/api/auth/user", async (req: Request, res: Response) => {
    try {
      const token = extractToken(req);
      if (!token) return res.status(401).json({ message: "Unauthorized" });

      const { data, error } = await supabaseAdmin.auth.getUser(token);
      if (error || !data.user) return res.status(401).json({ message: "Unauthorized" });

      const u = data.user;
      const m = u.user_metadata || {};
      return res.json({
        id: u.id,
        email: u.email,
        displayName: m.display_name || m.full_name || m.name || null,
        username: m.username || null,
        firstName: m.first_name || null,
        lastName: m.last_name || null,
        profileImageUrl: m.profile_image_custom || m.avatar_url || null,
        authType: "supabase",
      });
    } catch {
      return res.status(500).json({ message: "Server error" });
    }
  });

  app.delete("/api/auth/delete-account", async (req: Request, res: Response) => {
    try {
      const token = extractToken(req);
      if (!token) return res.status(401).json({ error: "غير مصرّح" });

      const { data, error: userError } = await supabaseAdmin.auth.getUser(token);
      if (userError || !data.user) return res.status(401).json({ error: "غير مصرّح" });

      const { error } = await supabaseAdmin.auth.admin.deleteUser(data.user.id);
      if (error) return res.status(500).json({ error: "فشل حذف الحساب" });

      return res.json({ ok: true });
    } catch {
      return res.status(500).json({ error: "حدث خطأ، حاول مرة أخرى" });
    }
  });
}

export const requireAuth = async (req: Request, res: Response, next: NextFunction) => {
  try {
    const token = extractToken(req);
    if (!token) return res.status(401).json({ message: "Unauthorized" });

    const { data, error } = await supabaseAdmin.auth.getUser(token);
    if (error || !data.user) return res.status(401).json({ message: "Unauthorized" });

    (req as any).supabaseUser = data.user;
    next();
  } catch {
    return res.status(401).json({ message: "Unauthorized" });
  }
};

function extractToken(req: Request): string | null {
  const auth = req.headers["authorization"];
  if (auth?.startsWith("Bearer ")) return auth.slice(7);
  return null;
}
