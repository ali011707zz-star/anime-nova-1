# Anime NOVA

An Arabic-language anime streaming platform that aggregates content from multiple sources. Users can browse anime, watch episodes, leave comments, manage favorites, and track watch history.

## Architecture

This is a **pnpm monorepo** with three main applications:

- **`artifacts/anime-scraper`** — React + Vite frontend (runs on port 5000)
- **`artifacts/api-server`** — Node.js + Express backend API (runs on port 8080)
- **`artifacts/nova-mobile`** — Expo (React Native) mobile app
- **`lib/db`** — Shared Drizzle ORM schema and PostgreSQL connection
- **`lib/api-spec`** — OpenAPI spec (used for code generation)
- **`lib/api-client-react`** — Generated React Query hooks

## Running the App

Two workflows run in parallel:
- **Start application** — Frontend dev server: `PORT=5000 pnpm --filter @workspace/anime-scraper run dev`
- **Backend API** — Express API server: `PORT=8080 pnpm --filter @workspace/api-server run dev`

The frontend proxies `/api/*` requests to the backend at `localhost:8080`.

## Database

Uses Replit's built-in PostgreSQL. The schema is auto-migrated on backend startup via `supabaseMigrate.ts`. Tables include: `users`, `sessions`, `comments`, `comment_likes`, `watch_history`, `favorites`, `watch_progress`, `ratings`, `source_cache`, `subtitle_cache`, `cdn_cache`, `translations_cache`, `anime_meta_ar`, `app_config`, `reports`.

## Environment Variables / Secrets

- `DATABASE_URL` — Auto-provided by Replit PostgreSQL
- `SESSION_SECRET` — For express-session (auto-generated if not set)
- `SMTP_USER`, `SMTP_PASS`, `SMTP_HOST`, `SMTP_PORT` — Gmail SMTP for email verification
- `GOOGLE_CLIENT_ID`, `GOOGLE_CLIENT_SECRET` — For Google OAuth login
- `GITHUB_CLIENT_ID`, `GITHUB_CLIENT_SECRET` — For GitHub OAuth login
- `TELEGRAM_BOT_TOKEN`, `TELEGRAM_CHANNEL_ID`, `TELEGRAM_CHAT_ID` — Optional Telegram bot

## Auth

Custom email/password auth with verification codes, plus Google and GitHub OAuth via Passport.js. Sessions stored in PostgreSQL (`sessions` table). Replit OIDC auth code is also present in `replitAuth.ts` for future use.

## User Preferences

- Use pnpm (not npm or yarn) — enforced by preinstall script
- Arabic RTL UI — the app is designed for Arabic-speaking users
