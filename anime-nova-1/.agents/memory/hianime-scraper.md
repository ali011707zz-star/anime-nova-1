---
name: HiAnime.ad custom scraper
description: Custom HTML scraper for hianime.ad — replaces broken aniwatch npm package; uses vibeplayer.site+bibiemb.xyz for Japanese audio HLS with English→Arabic subtitle translation
---

## Rule
Use custom HTML parsing for hianime.ad, NOT the `aniwatch` npm package.

**Why:** hianime.ad AJAX endpoints (`/ajax/v2/episode/list/`) all return soft 404. The site uses a completely different URL structure from hianime.to. The `aniwatch` package is incompatible.

## How to apply
The scraper flow:
1. Search: `GET https://hianime.ad/filter?keyword={title}` → parse `href="/anime/{slug}"` links
2. Slug matching: use `similarity(slug.replace(/-/g," "), title)` + `asciiSimilarity(slug, title)`, threshold 0.30
3. Watch page: `GET https://hianime.ad/watch/{slug}/ep-{N}` — returns ~72-800KB HTML
4. Parse `data-video="..."` attributes — filter HSUB servers (those with `?sub=` or `?caption_1=` params)
5. Extract subtitle VTT URL from the `?sub=` query param (accessible from cdn.anizara.store)
6. For vibeplayer.site: token from URL → `/public/stream/{token}/master.m3u8` (direct, no extra fetch)
7. For bibiemb.xyz: fetch embed page → extract m3u8 from HTML (workers.dev CDN, CORS *)
8. Route HLS through hls-proxy, subtitle through proxy-text → translate-vtt (English→Arabic)

## Confirmed working (tested Jun 2026)
- vibeplayer.site m3u8: HTTP 200, 360p/720p/1080p variants
- bibiemb.xyz workers.dev CDN: HTTP 200, CORS *, 360p/720p/1080p
- cdn.anizara.store subtitle VTT: HTTP 200, 17KB
- hianime.ad /filter + /watch pages: HTTP 200 from Replit IPs (no block!)
- aniwatch package: REMOVED from import and package.json banner

## Watch URL structure
- `https://hianime.ad/watch/{slug}/ep-{N}` — slug from /filter search, N is episode number
- HSUB tab servers have English VTT subtitles → translate to Arabic
- SUB tab servers have no subtitles (fallback)
- DUB tab is skipped (English audio)

## Source ranking
- qualityRank: 9 (same as AniNeko)
- site: "hianime"
- TTL in sourceCache.ts: 5 hours
