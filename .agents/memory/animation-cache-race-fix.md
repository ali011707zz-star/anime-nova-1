---
name: animation.ts scrapeAnimCached AsyncLocalStorage fix
description: Race condition fix for animation SSE cache capture
---

# scrapeAnimCached AsyncLocalStorage Fix

**Problem**: `_captureKey` was a shared mutable variable across concurrent async scrapers. When Promise.allSettled runs 10+ scrapers simultaneously, one scraper's sendSource() would write to another scraper's cache bucket (classic JS async race condition with shared closure state).

**Effect**: Some scrapers' sources were stored in wrong cache keys → stale/empty cache results on subsequent requests → animation SSE returned 0 sources on cache hits.

**Fix**: Replaced `_captureKey`/`_capturedSources` with `AsyncLocalStorage<any[]>` from `node:async_hooks`. Each `scrapeAnimCached` call runs its scraper inside `captureStorage.run(localArr, () => scrape())` — Node.js automatically propagates the array through the entire async call tree for that context only.

**Result**: After fix, animation SSE via `_tok` URL param returns 12+ sources in 4.7s for popular movies (was returning 0 due to cache corruption).

**How to apply:** If you ever see scrapeAnimCached returning 0 despite sources being available, check that `captureStorage` is properly using AsyncLocalStorage and not a shared variable.
