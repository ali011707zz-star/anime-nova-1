---
name: AniVault scraper
description: AniVault Railway API integration — Japanese raw audio sources (senshi/miruro/animeheaven) using AniList IDs
---

## Rule
Use `https://anivault-scraper.up.railway.app/api/watch/{source}/{anilistId}/{ep}/sub` for Japanese raw audio.

**Sources confirmed working (Jun 2026):**
- `senshi` → ninstream.com HLS (CDN blocks Replit directly → use `hlsProxyUrl` from response)
- `miruro` → uwucdn.top HLS (CDN blocks Replit directly → use `hlsProxyUrl` from response)
- `animeheaven` → co.animeheaven.me / rt.animeheaven.me MP4 (200 from Replit, ~17s latency)
- `dao` / `wave` → iframe only (key rotated), skip them

**CDN proxy chain:**
- HLS: `hls-proxy?url={hlsProxyUrl}&ref=https://anivault-scraper.up.railway.app/` (double-proxy: ours → AniVault → CDN)
- MP4: `video-proxy?url={rawStreamUrl}&ref=https://animeheaven.me/`

**Audio:** Single `mp4a.40.2` track = Japanese only, NO `EXT-X-MEDIA` audio groups = pure Japanese raw audio.

**Why:** CDN (ninstream/uwucdn) blocks datacenter IPs. AniVault's own hlsProxyUrl fetches successfully (200). Our hls-proxy can then wrap the AniVault proxy URL.

**How to apply:** site key = `"anivault"`, tag = `"AV"`, qualityRank HLS=15, MP4=14, useExtract=false (probe-only).
