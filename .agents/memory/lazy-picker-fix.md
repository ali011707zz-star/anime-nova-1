---
name: Lazy picker stuck-loading fix
description: Bug where anime episodes show infinite loading screen due to lazy-loading + wrong allDone logic in ScraperPicker
---

## The Bug
With `showPicker=true` (lazy loading default introduced in July 2026), ScraperPicker was rendered immediately on anime watch page. Inside ScraperPicker:
- `EMPTY_SLOTS` initializes all scrapers to "idle"
- `allDone = SCRAPER_DEFS.every(d => status === "ready" || "failed")` → false (all "idle")
- `if (!allDone && !hasSources)` → loading screen shown
- No scrapers auto-run in lazy mode → loading screen stuck forever
- `onFetchSite` prop was passed to ScraperPicker but never called inside it (no scraper buttons existed)

## The Fix (applied to VPS /opt/anime-nova)
Three changes in `artifacts/anime-scraper/src/pages/Watch.tsx` (ScraperPicker component):

1. Fixed allDone logic:
```typescript
const anyFetching     = SCRAPER_DEFS.some(d => slotStatus[d.site] === "fetching");
const allScrapersIdle = SCRAPER_DEFS.every(d => slotStatus[d.site] === "idle");
const allDone = !anyFetching;  // idle = not running, not "done"
```

2. Fixed loading screen condition:
```typescript
if (anyFetching && !hasSources && !hasBackupSources) {  // was: !allDone
```

3. Added scraper selection grid (replaces "no sources" error when all idle):
```typescript
) : allScrapersIdle ? (
  // Grid of SCRAPER_DEFS buttons, each onClick={() => onFetchSite(d.site)}
  // Shows spinner badge when "fetching", "فشل" badge when "failed"
) : anyFetching ? (
  // Minimal spinner — some scrapers running but no results yet
) : (
  // Original error "الحلقة X غير متوفرة بعد" — all scrapers finished but found nothing
)
```

**Why:** The lazy loading flow (user picks scraper → auto-play) requires scraper buttons in the picker. The original ScraperPicker was designed for the old auto-fetch flow where sources-stream ran all scrapers before the picker was shown.

**How to apply:** Whenever changing showPicker initial state or the source-loading strategy, verify ScraperPicker's allDone/loading-screen conditions match. The scraper grid must call onFetchSite(site) with bgLoad=false so handleFetchSite auto-plays the first result.

## VPS Deploy Commands
After editing Watch.tsx on VPS:
```bash
cd /opt/anime-nova
pnpm --filter @workspace/anime-scraper run build
node artifacts/api-server/build.mjs
pm2 restart anime-nova-api
```
