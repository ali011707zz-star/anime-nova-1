---
name: New sources implementation July 2026
description: nekowatch + xyra + notorrent added and tested on VPS — all working, raw audio, no hardcoded subs
---

## Implemented & tested (2026-07-08 on VPS 95.182.93.105)

### nekowatch (anime.ts)
- Function: `getNekowatchSources(title, english, ep, anilistId?)`
- Requires anilistId — returns empty if missing
- API: `nekowatch.xyz/api/anime/watch/anineko/{anilistId}/sub/anineko-{ep}`
- Filter: `isActive=true AND type="hls"` (only 1-3 active HLS per episode)
- Streams: vivibebe.site CDN M3U8 → wrapped in hls-proxy
- Registered: `scrapeCached("nekowatch", ..., false, 18000)` + fetch-source switch
- Test: AoT anilist:16498 ep1 → 1 HLS ✅

### xyra (anime.ts + animation.ts)
- anime.ts: `getXyraAnimeSources(title, english, ep, anilistId?)` — uses `fetchAnimeTmdbId`
- animation.ts: `scrapeAnimCached("xyra", ...)` — uses existing `tmdbId` from route params
- API: `api.xyra.stream/v1/streamhub/streams?api_key=freekey&tmdb_id={id}&type=series|movie&season={s}&episode={e}`
- Streams: pre-sorted 4K→1080p, includes 4KHDHub + NoTorrent + hubcloud providers
- No auth needed (freekey), direct CDN MP4 or HLS
- Both HLS and MP4 streams wrapped correctly; referer fallback = `https://xyra.stream/`
- Test anime: AoT anilist:16498 ep1 → 5 streams (1080p) ✅
- Test animation movie: Avengers tmdb:299534 → 5 streams ✅
- Test animation TV: Simpsons tmdb:456 s1e1 → Xyra sources appear ✅

### notorrent (animation.ts only)
- `scrapeAnimCached("notorrent", ...)` — requires `imdbId` (pre-fetched in sources-stream)
- API: `addon-osvh.onrender.com/stream/{movie/{imdb}.json | series/{imdb}:{season}:{ep}.json}`
- Cold start up to 15-30s on onrender.com → timeout = 35_000ms
- Returns: English Original + Latino + Castellano audio streams (raw, no hardcoded subs)
- Format: mp4 + HLS (M3U8 from hostingersite + notorrent2.workers.dev + Cloudflare)
- Test: Simpsons s1e1 (tt0096697) → 4+ streams ✅

## Code quality fixes applied (code review)
- Strict URL validation: `new URL(s.url)` + protocol check (https: | http:)
- Non-OK HTTP logging: `console.warn("[Xyra/anim] HTTP ${r.status}")` etc.
- Xyra anime.ts referer fallback: always sends `Referer: https://xyra.stream/` even when upstream headers empty

**Why skipped spencerdevs:** requires `decryptSnoopdog()` (PBKDF2+AES-256-CBC with custom binary encoding) — source code in vyla-entertainment/stream-api/spencerdevs.js not copied to project, implement separately.
