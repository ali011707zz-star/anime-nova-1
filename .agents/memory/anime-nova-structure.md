---
name: Anime NOVA project structure
description: Key architecture facts for the Anime NOVA monorepo on Replit.
---

- pnpm monorepo: `artifacts/api-server` (Express/Node ESM) + `artifacts/anime-scraper` (React/Vite).
- Build command: `pnpm install --no-frozen-lockfile && pnpm --filter @workspace/anime-scraper run build && pnpm --filter @workspace/api-server run build`
- Runtime: `PORT=5000 node --enable-source-maps artifacts/api-server/dist/index.mjs`
- Workflow "Start application" runs the full build + start on port 5000 (webview).
- Auth is custom email/password — no Supabase Auth. `replitAuth.ts` exists but is unused in `app.ts`.
- DB: Replit PostgreSQL (DATABASE_URL auto-set). `supabaseMigrate.ts` auto-runs migrations on startup.
- Supabase credentials injected from Orkestr API at bootstrap if SUPABASE_URL is not set.
- All secrets (SESSION_SECRET, DATABASE_URL, SMTP_PASS, etc.) already configured in Replit Secrets.

**Why:** Needed during migration to understand how build/run works without re-exploring.
**How to apply:** Use these commands when restarting or debugging the workflow.
