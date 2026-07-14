---
name: Lazy source loading
description: Web + Mobile lazy picker pattern — user picks scraper first, only that scraper fetches, auto-plays, then background-loads rest.
---

## Pattern (Web — Watch.tsx)

- `showPicker` default = `true` — picker shown immediately on load, no auto-fetch
- `handleFetchSite(site, bgLoad=false)`:
  - `bgLoad=false` (user tapped): fetch → auto-play first result → background-load rest via `handleFetchSite(def.site, true)` with staggered setTimeout
  - `bgLoad=true`: background-loading, no auto-play
- No auto-fetch useEffect, no auto-play useEffect
- Quick-resume useEffect only auto-plays if savedProgress > 30s (via `handlePlaySrc`)
- `autoPlayReady` state removed entirely

## Pattern (Mobile — watch.tsx)

- Initial `screen = "picker"`, `loading = false`
- `handlePickSite(site, autoPlayResult=true)`:
  - Guard: `inFlightSitesRef` (concurrent) + `fetchedSitesRef` (completed successes only)
  - On success: marks `fetchedSitesRef.current.add(site)` → prevents re-fetch
  - On failure: does NOT add to `fetchedSitesRef` → user can retry from picker
  - On auto-play: tracks background timers in `bgTimersRef` for cancellation
- `refreshAllSources()`: cancels bgTimers, resets all refs/state, then fires all sites with staggered setTimeout
- `goEp()`: cancels bgTimers before navigation to prevent stale fetches
- `useEffect([anime, ep])` cleanup: cancels bgTimers on unmount/episode-change

**Why:**
- Old pattern fetched all 28 scrapers simultaneously → high VPS bandwidth + auto-played worst source
- Lazy pattern: user picks → only 1 fetch → play → rest loads quietly in picker

## witanime_db re-enabled (2026-07-07)

- Re-enabled in SSE stream (`sources-stream`) and in `fetch-source` per-site handler
- Provides ~2154 dubbed Arabic anime entries
- Tag: "WD" in SITE_TAG; added to ANIME_SITES list
