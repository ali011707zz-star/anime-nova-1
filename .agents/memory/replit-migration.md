---
name: Replit migration — Supabase to PostgreSQL
description: Key decisions from migrating Nova Anime from Replit Agent (Supabase REST) to Replit environment (native PostgreSQL)
---

## What changed

- `artifacts/api-server/src/lib/supabaseClient.ts` — replaced Supabase REST API client with a direct `pg.Pool` using `DATABASE_URL` (Replit provisioned PostgreSQL). All function signatures preserved as drop-in replacements (`sbSelect`, `sbInsert`, `sbUpsert`, `sbPatch`, `sbDelete`, `checkSupabase`).
- DB migrations applied via `psql $DATABASE_URL -f supabase/migrations/001_all_tables.sql` etc. The `users` table was created manually with all needed columns (password_hash, plan, expires_at, profile_image_custom, etc.) since 004_profiles.sql referenced `ALTER TABLE users` which assumed it existed.
- No auth system changes — the app uses its own custom email/password + Google/GitHub OAuth (not Supabase Auth), so no Replit Auth migration was needed.

## Workflows

- **"API Server"** — `PORT=8080 node --enable-source-maps artifacts/api-server/dist/index.mjs`, console output, port 8080
- **"Start application"** — `PORT=5000 pnpm --filter @workspace/anime-scraper run dev`, webview output, port 5000
- The Vite dev server already proxies `/api` → `http://localhost:8080` (see `vite.config.ts`)

**Why:** Port 5000 with webview output type is required for Replit's preview pane. The API server must run on a separate port (8080) as a console workflow.

## Build

- API server: `cd artifacts/api-server && node ./build.mjs` → outputs `dist/index.mjs`
- Always rebuild after changes to `artifacts/api-server/src/**`

## Environment variables needed

- `DATABASE_URL` — auto-set by Replit PostgreSQL provisioning
- `SESSION_SECRET` — for express-session (currently falls back to hardcoded default)
- `SMTP_USER`, `SMTP_PASS`, `SMTP_HOST`, `SMTP_PORT` — for email verification (already works with Gmail via env vars)
- `GOOGLE_CLIENT_ID`, `GOOGLE_CLIENT_SECRET` — for Google OAuth
- `GITHUB_CLIENT_ID`, `GITHUB_CLIENT_SECRET` — for GitHub OAuth
- `TELEGRAM_BOT_TOKEN`, `TELEGRAM_CHAT_ID` — for report notifications

## Filter syntax note

The `supabaseClient.ts` replacement parses PostgREST-style filter values (e.g., `"eq.foo"`, `"lt.date"`, `"is.null"`, `"ilike.*foo*"`) into SQL. When adding new filter operators, add them to the `parseFilter()` switch in that file.
