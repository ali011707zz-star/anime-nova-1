import session from "express-session";
import connectPg from "connect-pg-simple";
import type { Express } from "express";

export function setupSession(app: Express) {
  app.set("trust proxy", 1);
  const PgStore = connectPg(session);
  const store = new PgStore({
    conString: process.env.DATABASE_URL,
    createTableIfMissing: true,
    ttl: 30 * 24 * 60 * 60,
    tableName: "sessions",
  });
  app.use(
    session({
      secret: process.env.SESSION_SECRET || "nova-anime-2024",
      store,
      resave: false,
      rolling: true,
      saveUninitialized: false,
      cookie: {
        httpOnly: true,
        secure: true,
        sameSite: "none",
        maxAge: 30 * 24 * 60 * 60 * 1000,
      },
    })
  );
}
