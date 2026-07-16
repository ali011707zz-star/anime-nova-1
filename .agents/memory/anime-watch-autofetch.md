---
name: Anime Watch auto-fetch-all (SUPERSEDED)
description: Historical note on Watch.tsx fetch behavior — corrected 2026-07-14, do not trust the "auto-fetch-all" claim below without checking current code.
---

## Status: superseded 2026-07-14

The "auto-fetch-all on mount" behavior described below was a VPS-local reversion that predated a
GitHub merge. The merge (`a2547e7`) resolved this conflict in favor of **origin/main's picker-first
lazy behavior**: `nova-mobile/app/watch.tsx` defaults `screen` to `"picker"` — the user taps a source
before it fetches, it does not stagger-fetch every `SCRAPER_DEFS`/`ANIME_SITES` entry on mount.

**How to apply:** don't assume either behavior — grep the current `screen` default / mount effect in
`Watch.tsx` (web) and `app/watch.tsx` (mobile) before reasoning about fetch timing or timeout costs.

---

## Original note (2026-07, now stale)
`Watch.tsx` used to be "lazy": show a grid of scraper names and only fetch the one the user tapped.
Per a since-superseded user request it mirrored `AnimationWatch.tsx`: on mount it stagger-fetched
**every** entry in `SCRAPER_DEFS` (70ms apart) and auto-played the first source that resolved.

If auto-fetch-all is ever reintroduced: any site left in the list that is dead/disabled server-side
wastes a full round-trip (up to its timeout, often 15–28s) for nothing. Before adding/re-enabling a
site in `SCRAPER_DEFS`, confirm the backend scraper for it is actually live.
