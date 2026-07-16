---
name: Source picker 1-source fix
description: Why cancelRemainingScrapers must not abort in-flight requests
---

## Rule
`cancelRemainingScrapers()` must only clear `pendingTimeoutsRef` (queued, not-yet-started fetches). It must NOT call `.abort()` on `fetchControllersRef` entries.

**Why:** The two-phase scraper fires priority sites first. As soon as the first site returns a source, autoplay fires and calls `cancelRemainingScrapers()`. If in-flight requests are aborted at this point, only 1 source appears in the picker — all other priority scrapers (hianime, anineko, etc.) are cut off before they can return results.

**How to apply:** When autoplay triggers, stop the *second wave timer* (restDefs scheduled fetch) but let the *first wave* in-flight requests complete naturally. They add their sources to `slotSources` and the picker accumulates them even after the player starts.
