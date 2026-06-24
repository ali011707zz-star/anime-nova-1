/**
 * sessionAuth.ts — إعداد الـ session بدون قاعدة بيانات خارجية
 * يستخدم MemoryStore (sessions محفوظة في ذاكرة الخادم)
 */
import session from "express-session";
import type { Express } from "express";

export function setupSession(app: Express) {
  app.set("trust proxy", 1);
  app.use(
    session({
      secret:           process.env.SESSION_SECRET || "nova-anime-2024-secure",
      resave:           false,
      rolling:          true,
      saveUninitialized: false,
      cookie: {
        httpOnly: true,
        secure:   true,
        sameSite: "none",
        maxAge:   30 * 24 * 60 * 60 * 1000,
      },
    })
  );
}
