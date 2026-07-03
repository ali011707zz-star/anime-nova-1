---
name: 7-repo deep analysis (July 2026)
description: Deep test results for 7 GitHub repos on VPS 95.182.93.105 for anime/animation streaming sources
---

## Repos tested (July 3, 2026)

1. https://github.com/smy778/EncDecEndpoints
2. https://github.com/abhaycaya6188-droid/Debflix-Scraper
3. https://github.com/nhatphatt/staticine
4. https://github.com/Shaku-Med/hls-downloader
5. https://github.com/vyla-entertainment/stream-api
6. https://github.com/walterwhite-69/Miruro-API
7. https://github.com/walterwhite-69/Moviebox-API

---

## Results

### ✅ ani.pm (via stream-api/anipm.js)
**EXCELLENT — Best new anime source**
- Endpoint: `GET https://ani.pm/api/anime/src/servers?title=...&ep=...&anilistId=...&malId=...`
- Returns 17–37 sub + 10–15 dub sources per episode (HLS + MP4)
- HLS: `/api/anime/src/hls?t=...` → `application/vnd.apple.mpegurl`, 200 OK
- MP4: `/api/anime/src/file?t=...` → `video/mp4`, 200 OK
- Works from **both Replit and VPS**
- Verified: Naruto (37/13), Demon Slayer (23/12), AoT (19/15), One Piece (36/12), Your Name (22/13), Spirited Away (17/10), Dragon Ball Z (24/13)
- Implementation: search catalog → `fetchServers(entry, ep)` → resolve relative URLs

### ✅ anineko.to (via stream-api/anineko.js)
**GOOD — Anime source with multiple qualities**
- Flow: `GET /browser?keyword=...` → slug → `GET /watch/{slug}/ep-{N}` → parse `data-video` attrs from `nv-server-grid` panels
- Returns 9–14 sub + 4–5 dub embeds per anime
- Embed extraction: fetch embed URL, regex for M3U8
- Verified M3U8 at 360p/720p from vivibebe.site and 1080p from vibevibe.workers.dev
- Works from **VPS** (and likely Replit — 200 on browse)
- Verified: Your Name (10 sub), Spirited Away (9 sub), Naruto (14 sub), AoT S2 (10 sub)

### ❌ Miruro-API (walterwhite-69/Miruro-API)
- **CF-blocked 403 from VPS IP** (95.182.93.105 is a datacenter IP)
- curl_cffi with Chrome impersonation still returns 403
- README says residential/VPS needed but this VPS IP is blacklisted
- NOT usable

### ❌ Debflix-Scraper / Videasy (abhaycaya6188-droid)
- `api.videasy.to` — blocked from VPS with CF challenge page
- `cdn` endpoint: timeout (HTTP 000)
- `downloader2`: 500 "Unable to load media sources"
- `mb-flix`: 404 Not Found
- NOT usable

### ❌ EncDecEndpoints (smy778/EncDecEndpoints)
- `enc-dec.app` API itself ✅ works (enc-kai, parse-html endpoints OK)
- `enc-dec.app/db/kai/` DB has 13,608 entries — but:
  - ALL AnimeKai domains dead: animekai.to/.fi/.fo/.gs + anikai.to → DNS failure (000)
  - megaup.nl CDN mirror → 000 (timeout) from VPS
  - rapidshare.work → 000 (timeout) from VPS
  - DB search returns truncated JSON (gzip compression bug)
- NOT usable for actual streaming

### ❌ Moviebox-API (walterwhite-69/Moviebox-API)
- Home endpoint returns token fine (200 OK)
- ALL search/browse paths return 404:
  `/search`, `/v2/search`, `/subject/search`, `/v1/subject/search`, etc.
- The upstream `h5-api.aoneroom.com` API appears to have changed its routing
- NOT usable currently

### ❌ 123animehub.cc (via stream-api/123anime.js)
- Search: ✅ works (returns correct slugs)
- Episode info: ✅ returns `target` echovideo embed URL
- echovideo embed `getSources`: returns `{"status": ..., "response": ..., "sources": []}` (empty)
- NOT usable currently

### ❌ nekowatch.xyz (via stream-api/nekowatch.js)
- Site loads (200) but `/api/anime/watch/{provider}/{anilistId}/{audio}/{slug}` returns 500/400
- NOT usable

### ⛔ staticine (nhatphatt/staticine)
- Static-first movie catalog builder (Cloudflare Worker + R2 storage)
- NOT a stream source API — it's a framework to build your own catalog
- Irrelevant

### ⛔ hls-downloader (Shaku-Med/hls-downloader)
- Chrome browser extension + Python native messaging host
- NOT a server API — downloads to local disk via ffmpeg/yt-dlp
- Irrelevant

---

## Integration recommendation

**Add to Anime NOVA:**
1. **ani.pm** as primary new anime source — use TMDB→AniList mapping via `api.ani.zip/mappings`, then `/api/anime/src/servers`
2. **anineko.to** as secondary — title-based search, watch page scraping, embed extraction

**stream-api** (vyla-entertainment) already has anineko.js and anipm.js — the whole stream-api repo can be deployed or its source logic ported.
