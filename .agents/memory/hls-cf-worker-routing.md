---
name: HLS CF Worker routing
description: Architecture change — hls-proxy now does 307 redirect to CF Worker which handles manifest fetch + segment rewriting
---

# HLS CF Worker Routing Architecture

## Rule
`hls-proxy` is now a pure 307 redirect (like `video-proxy`). CF Worker handles everything:
1. Fetches M3U8 manifest from CDN (with proper Referer/Origin)
2. Rewrites all segment/playlist/key URLs to point back to CF Worker with encrypted tokens
3. Client fetches segments directly from CF Worker — zero VPS video bandwidth

**Why:** VPS was fetching HLS manifests (consuming bandwidth). Now VPS only issues 307 redirects.

## How to apply
- Any change to `hls-proxy` endpoint in `anime.ts` must keep it as a 307 redirect — no fetching on VPS
- CF Worker (`cf-worker/worker.js`) does the HLS rewriting via `rewriteM3u8()` function
- Segment token TTL = 6h (appropriate for live sessions)
- Manifests get the standard token from VPS `encryptCfToken()` (same TTL as usual)

## Verified working (July 2026)
- HiAnime, AniNeko, AniKoto, Dulo, Kawaii, VidLink, AnimeWitcher, MitAnime, AnimePhoenix
- Naruto: 20/24 via CF Worker | One Piece: 28/31 via CF Worker
- CF Worker M3U8 rewriting confirmed: all variants → `nova-cdn-proxy.ali011707zz.workers.dev?t=<token>`

## Remaining exceptions (intentional)
- `BYPASS_CF_HOSTS` (pixeldrain) → direct CDN redirect (pixeldrain requires residential IP or direct access)
- `NO_HLS_PROXY_HOSTS` (yaviidcdn, vidcache) → raw HLS URL (rare, these hosts don't block VPS)
- mega.nz/filemoon embeds → always CDN direct (embed iframes)
