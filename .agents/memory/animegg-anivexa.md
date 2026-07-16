---
name: AnimeGG scraper quirks
description: Critical bugs and URL patterns for the AnimeGG scraper in anime.ts
---

## URL patterns
- Search: `https://www.animegg.org/search/?q=` (trailing slash before `?` required)
- Series: `https://www.animegg.org/series/{slug}`
- Episode: `https://www.animegg.org/{slug}-episode-{N}` (direct construction works)
- Embed: `https://www.animegg.org/embed/{id}` → `var videoSources = [...]`

## Series page pagination bug (FIXED)
Series page `/series/{slug}` only shows the **latest ~15 episodes** in the HTML.
For old episodes (e.g., One Piece ep 1 of 1163), they're not in the initial HTML.

**Fix**: Construct episode URL directly: `/${slug}-episode-${ep}`, verify with
`data-version="subbed"` in response HTML. Fall back to series page scan only for
recent episodes that need exact slug discovery.

## bk field in videoSources (FIXED)
`bk` field decodes to an **embed page URL** (e.g., `https://mp4upload.com/embed-*.html`),
NOT a direct video URL. Using it as `directUrl` breaks video-proxy.

**Fix**: Ignore `bk` entirely. Use `file` field expanded to absolute URL.

**Why**: `atob(bk)` → URL-encoded → `decodeURIComponent()` → HTML embed page

## CDN access
- `file` URLs like `/play/N/video.mp4?for=X` redirect to `https://vidcache.net:8161/...`
- `vidcache.net:8161` IS accessible server-side from Replit (HTTP 200 confirmed via curl)
- Route through `video-proxy` — this works correctly

## HTML structure
- Search results: `<a class="mse" href="/series/{slug}">` (class contains `mse`)
- Episode tabs: `<a data-toggle="tab" data-id='N' data-mirror="Name" data-version="subbed">`
  (single quotes on data-id, double quotes on data-version — both handled by `["']` regex)
- similarity() not titleSimilarity() for series scoring

**Why**: These are the correct selectors confirmed by live HTML inspection.
