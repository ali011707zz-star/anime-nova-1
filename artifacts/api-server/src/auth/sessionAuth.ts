/**
 * sessionAuth.ts — إعداد الـ session مع PostgreSQL store
 * يستخدم connect-pg-simple لحفظ الجلسات في قاعدة البيانات
 */
import session from "express-session";
import connectPg from "connect-pg-simple";
import type { Express } from "express";

const SESSION_TTL = 30 * 24 * 60 * 60 * 1000; // 30 days

export function setupSession(app: Express) {
  app.set("trust proxy", 1);

  const secret = process.env.SESSION_SECRET || "nova-anime-2024-secure";

  let store: session.Store | undefined;

  if (process.env.DATABASE_URL) {
    try {
      const PgStore = connectPg(session);
      store = new PgStore({
        conString: process.env.DATABASE_URL,
        createTableIfMissing: true,
        ttl: SESSION_TTL / 1000,
        tableName: "sessions",
      });
    } catch (e) {
      console.warn("[session] PgStore init failed, falling back to MemoryStore:", e);
    }
  } else {
    console.warn("[session] DATABASE_URL not set — using MemoryStore (not suitable for production)");
  }

  app.use(
    session({
      secret,
      store,
      resave:            false,
      rolling:           true,
      saveUninitialized: false,
      cookie: {
        httpOnly: true,
        secure:   true,
        sameSite: "none",
        maxAge:   SESSION_TTL,
      },
    })
  );
}
