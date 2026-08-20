---
name: VPS manual deployment (no CI/CD)
description: How code gets from this Replit repo to the production VPS, and the git-divergence trap to check before overwriting.
---

- The app never runs on Replit — it runs 24/7 on a VPS via pm2 (`anime-nova-api`, `cf-proxy`, `cinepro`, `cinesrc`) behind nginx. Local Replit workflows for this project are expected to stay stopped/failed; that's normal, not a bug to fix.
- There is no CI/CD: deploying means SSH'ing to the VPS, syncing source files (tar+scp, no rsync installed on either side), rebuilding, and `pm2 restart`.
- **Before overwriting any file on the VPS, diff it against the local repo's version first.** The VPS's git history had diverged from this repo's origin (VPS had unpushed local commits + uncommitted edits, e.g. a mobile hidden-WebView resolver) that did NOT exist in this Replit repo. Blindly force-pushing/overwriting risked deleting that unique work.
- When the VPS has newer local commits and the Replit checkout is an older imported snapshot, treat the VPS working tree as the production source of truth for a rebuild; do not overwrite it with the Replit tree just because local files are marked modified.
- **How to check safely:** `diff` the VPS's working copy of each changed file against the local repo's version. If the VPS has 0 unique lines (local is a strict superset), it's safe to overwrite. If the VPS has unique lines not in local, that content must be merged in first, not discarded.
- Frontend (`anime-scraper`) is built with `pnpm run build` (vite) and served as static files by the api-server from `artifacts/anime-scraper/dist/public` (see `app.ts` `express.static`). Backend (`api-server`) is built with `node build.mjs` (esbuild) into `dist/index.mjs`, run by pm2. Both must be rebuilt on the VPS after syncing source — a source-only sync with no rebuild will not change production behavior.
- On August 11, 2026, both package-level `tsc --noEmit` checks hung for more than five minutes on the VPS without diagnostics, while the Vite and esbuild production builds completed successfully. For this project, use the production builds as the deployment gate and investigate `tsc` separately rather than blocking a safe rebuild indefinitely.
- Known pre-existing noise (not caused by deploys): Supabase `source_cache` table upserts log `invalid input syntax for type bigint` 400s because the remote table's `expires_at` column is legacy BIGINT while code sends ISO timestamp strings; code already retries with epoch-ms on this specific error, but the initial failed attempt still gets logged by the low-level `cacheUpsert` helper.
- PM2 error logs are append-only across restarts; after a targeted rebuild, validate the new process PID and fresh stdout timestamps instead of treating old tail entries as current failures.
- When the VPS working tree has unique edits, deploy focused changes with an anchored remote patch plus a VPS backup; do not overwrite whole files from the imported Replit snapshot.
