---
name: Anime/Animation source cleanup 2026-07-09
description: Removed several fully-dead scraper sources from both frontend and backend so the new auto-fetch-all Watch page doesn't waste round-trips.
---

## What changed
- Anime section: removed `ristoanime` (RS), `animephoenix` (PH), `mitanime` (MT), `videasy_anim` (VE),
  `vidlink_anim` (VL) from the active scraper cycle (both `SCRAPER_DEFS` in `Watch.tsx` and the
  `scrapeCached`/`switch` orchestration in `anime.ts`) — all were dead/disabled and, since Watch.tsx
  now auto-fetches every `SCRAPER_DEFS` entry on mount, each dead entry cost a wasted round-trip.
- `animetime` (AT) and `notorrent` (NO) were deleted entirely (function bodies, caches, orchestrator
  calls, `SCRAPER_DEFS` entries) per explicit user request, not just disabled.
- Animation section: CinePro (CP) removed entirely (video source + its subtitle-scraping block +
  the "CP" tag mapping in `AnimationWatch.tsx`). Its self-hosted install/API details are preserved in
  `cinepro-self-hosted.md` for potential future reintegration — the VPS pm2 process (`cinepro`,
  `/opt/cinepro`) is still running but no longer called by the app.
- Dulo.tv (`dulo_anim`, tag DL) now has `audioLang: "en"` in `SCRAPER_DEFS` since it intermittently
  serves English/Japanese audio instead of Arabic — this was previously missing, so the UI never
  flagged it as needing translation. It was already in `PROVIDER_WANTS_SMART_SUB`, so the flag makes
  the existing smart-subtitle-discovery path apply consistently.

**Why:** the Watch.tsx mount-time auto-fetch-all effect (see `anime-watch-autofetch.md`) means every
`SCRAPER_DEFS` entry is called on every episode view — leaving dead entries in that list is a
guaranteed wasted network round-trip per episode load, not a theoretical cost.

**How to apply:** when disabling a source going forward, remove it from `SCRAPER_DEFS` (frontend) and
the backend orchestrator call/switch-case in the same change — don't just make the backend function
early-return `[]`, since the frontend will still pay the round-trip cost.

## Build/deploy note (VPS)
`api-server`'s build is `esbuild`-based (transpile-only, no type-check gate) — `tsc --noEmit` on this
codebase reports 100+ pre-existing type errors unrelated to any given change (implicit `unknown`,
missing `Request.query` typings, etc.). Don't block a deploy on those; only check that the specific
lines you touched aren't among the new errors. Always confirm with `pnpm run build` (esbuild) succeeding,
not `tsc`.
