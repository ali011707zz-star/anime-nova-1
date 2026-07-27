---
name: Anime NOVA startup fix
description: Critical startup order fix for the Backend API workflow to avoid port-open timeout.
---

The original `index.ts` ran `await runSupabaseMigration()` before calling `app.listen()`. This caused the Replit workflow system (which waits for port 8080 to open) to time out because the DB migration (even when fast) delayed the port binding.

**Fix:** Moved `runSupabaseMigration()` into a non-blocking async IIFE inside the `app.listen()` callback, so the port opens immediately and migration runs in the background.

**Why:** Replit workflow port-open detection has a hard timeout. Any async work before `app.listen()` risks exceeding it, even if the work is fast.

**How to apply:** Always call `app.listen()` as early as possible; do background work (migrations, config sync) inside the listen callback as non-blocking fire-and-forget promises.
