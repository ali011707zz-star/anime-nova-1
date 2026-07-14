---
name: Source fixes 2026-07-08
description: Disabled/fixed scrapers on 2026-07-08 — CinePro VidApi routing, Hexa, VidLink (enc-dec.app)
---

## Changes made 2026-07-08

### CinePro — VidApi isHls detection (animation.ts)
**Rule:** VidApi streams ARE M3U8 but their URLs may not contain `.m3u8`, `/pl/`, or `/playlist/`. Added `provLower.includes("vidapi")` to the `isHls` check in `scrapeAnimCached("cinepro")`.
**Why:** VidApi URL patterns changed — they no longer always expose canonical HLS path segments, causing them to route through `video-proxy` instead of `hls-proxy`.

### Hexa disabled (animation.ts)
`enc-dec.app/api/enc-hexa` returns HTTP 500 consistently as of 2026-07-08.
Added early `return;` inside `scrapeAnimCached("hexa")`.

### VidLink disabled (animation.ts + anime.ts)
`enc-dec.app/api/enc-vidlink` suspended as of 2026-07-08.
- animation.ts: `scrapeAnimCached("vidlink_encdec")` — early `return;`
- anime.ts: `getVidLinkAnimeSources()` — early `return []`

**How to re-enable:** Remove the early return statements when enc-dec.app service recovers.

## Already confirmed working (no change needed)
- Moviz (MO): domain already `moviz-time.org` ✅
- RistoAnime (RS): `RISTOANIME_DISABLED = true` already set ✅
- Videasy (VE): already returns `[]` ✅
- orkestGet: already uses CF proxy (localhost:8000) ✅

## Deployment
Files: `artifacts/api-server/src/routes/animation.ts`, `artifacts/api-server/src/routes/anime.ts`
VPS: `/opt/anime-nova/`, build via `node ./build.mjs`, restart via `pm2 restart anime-nova-api`
