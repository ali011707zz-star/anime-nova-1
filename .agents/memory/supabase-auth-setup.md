---
name: Supabase Auth setup
description: How Supabase Auth is wired into the Nova Anime app (frontend + backend)
---

## Pattern
- Frontend: `supabase-client.ts` uses Vite `define` with `__SUPABASE_URL__` / `__SUPABASE_ANON_KEY__` (NOT `import.meta.env.VITE_*`) — injected from `process.env.SUPABASE_URL` / `SUPABASE_ANON_KEY` in `vite.config.ts`
- Backend admin: `supabase-admin.ts` must pass `ws` package as `realtime.transport` — Node.js 20 has no native WebSocket; omitting this crashes the server on startup
- `auth-context.tsx` calls `supabase.auth.*` directly (no REST calls); `changePassword` uses `supabase.auth.updateUser({ password })` 
- `/api/auth/delete-account` DELETE endpoint uses `supabaseAdmin.auth.admin.deleteUser(uid)` — requires service role key
- `/api/auth/user` GET endpoint validates Bearer token via `supabaseAdmin.auth.getUser(token)`
- `hooks/use-auth.ts` is now just a re-export of `useAuth` from `auth-context.tsx`
- Auth.tsx verification flow: shows "check your email" sheet (no OTP input) — Supabase sends email link automatically

**Why:** Supabase replaces old Gmail SMTP OTP system; all auth state lives in Supabase session (localStorage), no cookies/sessions needed server-side.

**How to apply:** When adding protected routes, use `requireAuth` middleware from `supabaseAuth.ts`; extract user via `(req as any).supabaseUser`.
