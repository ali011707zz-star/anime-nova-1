/**
 * sessionAuth.ts — إعداد الـ session مع PostgreSQL store
 * يستخدم connect-pg-simple لحفظ الجلسات في قاعدة البيانات
 */
import session from "express-session";
import connectPg from "connect-pg-simple";
import type { Express } from "express";
import { randomBytes } from "node:crypto";

const SESSION_TTL = 30 * 24 * 60 * 60 * 1000; // 30 days

export function setupSession(app: Express) {
  app.set("trust proxy", 1);

  const configuredSecret = process.env.SESSION_SECRET?.trim();
  if (process.env.NODE_ENV === "production" && !configuredSecret) {
    throw new Error("[session] SESSION_SECRET must be configured in production");
  }
  const secret = configuredSecret || `nova-anime-dev-${randomBytes(32).toString("hex")}`;

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
