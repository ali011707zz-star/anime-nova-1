---
name: aflaam.com scraper
description: aflaam.com MP4 scraper added to animation.ts — direct MP4 from af3/af1.downet.net CDN
---

## aflaam.com scraper

**Status:** Active — added to `animation.ts` in `Promise.allSettled` block.

**Flow:**
1. Search: `GET /search?q={title}` → parse `href="/movie/{id}/{slug}"` or `href="/series/{id}/{slug}"`
2. Movie: `GET /movie/{id}/{slug}` → watch IDs → `GET /watch/{watchId}/...` → `<source src="..." size="...">`
3. Series: `GET /series/{id}/{slug}` → episode list `/episode/{ep_id}/{series_slug}/{ep_name}` → match ep by number → watch page → sources
4. CDN: `af3.downet.net` / `af1.downet.net` — HTTP 200, CORS `*`, `Accept-Ranges: bytes`

**Quality labels:** size="1080"→FHD, size="720"→HD, size="480"→SD

**Helper functions in animation.ts:** `aflaamSearch`, `parseAflaamMp4s`, `aflaamWatchSources`, `scrapeAflaamMovie`, `scrapeAflaamSeries`

**Title matching:** uses `titleSim()` on slug (hyphens → spaces). For TV series, season>1 adds +0.3 bonus when slug ends with `-{season}`.

**Proxy:** all URLs wrapped with `wrapMp4(url, "https://aflaam.com/")` → video-proxy.

**CDN details:** URLs are time-based tokens (`/download/{timestamp}/{hash}/{filename}.mp4`) — fetch fresh per request; tokens valid for the session.

## f2h7y.sbs

**Status: DEAD** — redirects to `tv8.egydead.live` which has CF Managed Challenge on ALL endpoints. Blocks Replit datacenter IPs (35.244.x.x). Not implemented.

**Why:** CF Managed Challenge cannot be bypassed from server-side without CAPTCHA solving or residential proxy.
