---
name: Animation watch history localStorage
description: Animation watch progress and history storage keys and navigation patterns
---

**Rule:** Animation (TMDB) watch data uses separate localStorage keys from anime (AniList):
- Progress: `anim-wp-{tmdbId}-{type}-{season}-{ep}` → seconds watched (number)
- History: `anim-watch-history` → array of `{tmdbId, type, season, ep, title, poster, timestamp}`

Anime (AniList) uses:
- Progress: `wp-{anilistId}-{ep}` → seconds watched
- History: `watch-history` → array of `{id, ep, title, cover, timestamp}`

**Why:** Separate keys prevent collisions between anime and animation items.

**How to apply:**
- `AnimationWatch.tsx`: `onTimeUpdate` saves progress to `anim-wp-*`; `canplay` restores saved time; save to `anim-watch-history` on first play/timeupdate
- `AnimationDetail.tsx`: reads `anim-watch-history` to find `continueEp`; reads `anim-wp-*` for progress bar display per episode; `useMemo` for `continueEp`
- `Home.tsx`: reads `anim-watch-history` for the "متابعة المشاهدة" section
- `AnimationWatch.tsx` back button: navigate to `/animation/{type}/{tmdbId}` (NOT `window.history.back()` which may exit app)
