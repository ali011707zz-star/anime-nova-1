---
name: FaselHD scraper fix
description: FaselHD scraper updated to use www.fasel-hd.cam + GitHub JSON data for slug lookup; EgyDead re-enabled with Orkestr relay
---

## FaselHD (www.fasel-hd.cam)

**Correct domain:** `www.fasel-hd.cam` (NOT faselhds.biz / faselhd.club — those are dead/wrong)

**Key discovery:** Episode pages at `fasel-hd.cam/anime-episodes/...` are NOT CF-blocked from Replit (200 OK direct). Only the search page `/?s=...` is CF-blocked.

**GitHub pre-scraped JSON:** `https://raw.githubusercontent.com/Ahmd3301/faselhd-db/main/output/`
- `anime.json` — 1864 anime series items
- `anime-movies.json` — 392 anime movie items
- Each item: `{ slug, name, link }` where `link` is the full URL with correct path

**URL patterns:**
- Series page: `https://www.fasel-hd.cam/anime/{encodedSlug}`
- Movie page: `https://www.fasel-hd.cam/anime-movies/{encodedSlug}`
- Episode URL: `https://www.fasel-hd.cam/anime-episodes/{encodedSlug}-الحلقة-{N}` (الحلقة encoded as `%d8%a7%d9%84%d8%ad%d9%84%d9%82%d8%a9`)

**Video extraction:**
- iframe uses `data-src` (NOT `src`) — lazy loading
- `/video_player?player_token=...` page is accessible directly but uses heavily obfuscated JS — no server-side video extraction possible
- Download links from `downloadLinks` div → `t7meel.site` (403 from Replit, needs cfProxy)

**Strategy:**
1. GitHub JSON → find slug by titleSim (threshold 0.42, guard empty enTitlePrefetched)
2. For movies: use `best.link` directly as targetUrl (has correct `/anime-movies/` path)  
3. For series: construct episode URL `{encodedSlug}-الحلقة-{N}`, fallback to series page + epAll extraction
4. Fetch episode page directly (no proxy needed)
5. Extract `data-src` from `player_iframe`, fetch video_player for any clear-text sources
6. Try download links via cfProxyGet

**Why:** Old domain (faselhds.biz) was wrong. Episode pages are now accessible without CF proxy. GitHub JSON avoids CF-blocked search endpoint.

## EgyDead (tv9.egydead.live)

**Status:** Accessible via Orkestr EU relay (not CF-blocked via Orkestr), but video servers (`data-link` attributes) are loaded via JS client-side only — NOT present in static HTML.

**Re-enabled:** Uses orkestDirectGet for both search and episode pages. Tries to extract `data-link` and non-YouTube iframes. In practice returns nothing until site adds static server links.

**Threshold:** 0.4 (was 0.3 — too low, caused false positives with empty enTitlePrefetched)
