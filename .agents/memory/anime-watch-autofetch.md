---
name: Anime Watch auto-fetch-all
description: Watch.tsx (anime section) fetches every SCRAPER_DEFS entry on mount instead of waiting for a manual tap.
---

## What changed (2026-07)
`Watch.tsx` used to be "lazy": show a grid of scraper names and only fetch the one the user tapped.
Per user request it now mirrors `AnimationWatch.tsx`: on mount it stagger-fetches **every** entry in
`SCRAPER_DEFS` (70ms apart) and auto-plays the first source that resolves. The full "مصادر المشاهدة"
numbered server list is shown once sources arrive / after exiting the player.

**Why:** matches the animation section's UX (no more "choose a source name" screen before playback).

**How to apply / gotcha:** because *every* `SCRAPER_DEFS` entry now gets fetched on every episode view,
any site left in the list that is dead/disabled server-side wastes a full round-trip (up to its timeout,
often 15–28s) for nothing. Before adding/re-enabling a site in `SCRAPER_DEFS`, confirm the backend
scraper for it is actually live — and when a backend scraper is disabled/removed, remove its
`SCRAPER_DEFS` entry (and any matching frontend entry in AnimationWatch's equivalent list) in the same
change, not just the backend function.
