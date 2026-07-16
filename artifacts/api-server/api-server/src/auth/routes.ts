import type { Express, Request, Response } from "express";
import { authStorage } from "./storage";
import { getEmailUser } from "./emailAuth";

// Register auth-specific routes
export function registerAuthRoutes(app: Express): void {
  // Get current authenticated user — supports both Replit OAuth and Email auth
  app.get("/api/auth/user", async (req: Request, res: Response) => {
    try {
      // 1. Check Replit OIDC session
      if ((req as any).isAuthenticated?.() && (req.user as any)?.claims?.sub) {
        const userId = (req.user as any).claims.sub;
        const user = await authStorage.getUser(userId);
        if (user) {
          return res.json({
            id: user.id,
            email: user.email,
            displayName: user.displayName || [user.firstName, user.lastName].filter(Boolean).join(" ") || null,
            username: user.username || null,
            firstName: user.firstName,
            lastName: user.lastName,
            profileImageUrl: user.profileImageCustom || user.profileImageUrl,
            authType: "replit",
          });
        }
      }
      // 2. Check email session
      const emailUser = await getEmailUser(req);
      if (emailUser) return res.json(emailUser);

      return res.status(401).json({ message: "Unauthorized" });
    } catch (error) {
      console.error("Error fetching user:", error);
      res.status(500).json({ message: "Failed to fetch user" });
    }
  });
}
