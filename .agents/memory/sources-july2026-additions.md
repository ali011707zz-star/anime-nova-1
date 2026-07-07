---
name: Sources July 2026 additions
description: 4 sources added/fixed — ani.pm new scraper, WeCima my_player, FaselHD fallbacks
---

## Changes (2026-07-07)

### 1. ani.pm — New scraper in anime.ts
- Function: `getAniPmSources(title, english, ep, anilistId?)`
- API: `GET https://ani.pm/api/anime/src/servers?title=...&ep=...&anilistId=...`
- Returns 17-37 sub + dub sources per episode (HLS + MP4)
- HLS relative URLs resolved: `/api/anime/src/hls?t=TOKEN` → prepend `https://ani.pm`
- English VTT subtitles piped through translate-vtt for Arabic
- Registered in `scrapeCached("anipm", ...)` + `case "anipm"` in fetch-source
- Works from both VPS and Replit IPs (no proxy needed)

### 2. WeCima `my_player` fix in anime.ts
- `decodeMyCimaWrap`: added `u.searchParams.get("my_player")` as 3rd fallback param
- WeCima movies use `?my_player=BASE64` instead of `?mycimafsd=BASE64` in /افلام/ pages
- animation.ts WeCima auto-fixed (delegates to internal API which uses anime.ts)

### 3. FaselHD video_player fallback in animation.ts
- After direct fetch fails (< 500 chars or CF challenge): `cfProxyGet`
- After cfProxy returns 32 bytes / CF challenge: `orkestDirectGet(playerUrl, 10_000)` 
- Condition: `!vpHtml || vpHtml.length < 100 || isCfBlocked(vpHtml)`

### 4. FaselHD direct fetch fallback in anime.ts (getFaselhdDbSources)
- Series page: cfProxyGet → if < 1000 chars → direct `fetch(best.link)` with UA+Referer
- Episode page: cfProxyGet → if < 1000 chars → direct `fetch(target.url)` with UA+Referer
- fasel-hd.cam is not CF-blocked from VPS (200 OK direct)

**Why:** cfProxy was returning 32-byte error responses for FaselHD player pages. ani.pm confirmed by repo-analysis as best new anime source (37 sources/ep). WeCima movies use my_player= not mycimafsd= in /افلام/ pages.
