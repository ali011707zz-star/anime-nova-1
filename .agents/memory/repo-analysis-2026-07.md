---
name: 8-repo deep analysis (July 2026)
description: Deep test results for 8 GitHub repos on VPS 95.182.93.105 for anime/animation streaming sources + subtitle/audio analysis
---

## Repos tested (July 3, 2026)

1. smy778/EncDecEndpoints
2. abhaycaya6188-droid/Debflix-Scraper
3. nhatphatt/staticine
4. Shaku-Med/hls-downloader
5. vyla-entertainment/stream-api
6. walterwhite-69/Miruro-API
7. walterwhite-69/Moviebox-API
8. solo12345689/mxplayer-api (new)

---

## Subtitle & Audio Analysis

### ani.pm — Subtitles & Audio
- **Hard sub** (21 sources): TS stream with subtitles **burned into the video** (max 720p)
- **Soft sub** (13 sources): TS stream + external VTT via `ani.pm/api/anime/src/vtt?t=...` → WEBVTT, English captions ✅
  - `tracks: [{url: "/api/anime/src/vtt?t=...", label: "English", default: true}]`
- **MP4** (1 source): Direct video file
- **Dub** (13 sources): Separate audio — genuine English dub
  - Cobalt: up to 1080p ✅
  - Orion: 360p/720p/1080p with separate `AUDIO="group_audio"` track ✅
  - Lyra: 480p/360p (limited for older episodes)
- **Summary**: ani.pm provides both external VTT subtitles AND real English dub audio ✅

### anineko.to — Subtitles & Audio
- **Subtitles**: External VTT from `cdn.anizara.store/subtitles/...` (WEBVTT verified) ✅
  - Passed as `?sub=https://cdn.anizara.store/...` parameter in embed URL
- **Dub**: Separate CDN stream IDs (e.g. d093226ba58e8224 dub vs 41341f86a5e87571 sub) — real separate audio ✅
- **Segments**: PNG-wrapped MPEG-TS — CDN stores segments as image/png but actual TS starts at **byte offset 252** (consistent across all segments)
  - Standard hls.js CANNOT play without custom segment loader (strips first 252 bytes)
  - vivibebe.site JWPlayer has built-in custom loader
  - For Anime NOVA integration: video-proxy must strip first 252 bytes before serving

---

## Results

### ✅ ani.pm (via stream-api/anipm.js)
**EXCELLENT — Best new anime source**
- Endpoint: `GET https://ani.pm/api/anime/src/servers?title=...&ep=...&anilistId=...&malId=...`
- Returns 17–37 sub + 10–15 dub sources per episode (HLS + MP4)
- HLS: `/api/anime/src/hls?t=...` → 200 OK, multi-quality
- VTT: `/api/anime/src/vtt?t=...` → WEBVTT verified
- Works from **both Replit and VPS**
- Verified: Naruto (37/13), Demon Slayer (23/12), AoT (19/15), One Piece (36/12), Your Name (22/13), Spirited Away (17/10), Dragon Ball Z (24/13)
- Implementation: search catalog → `fetchServers(entry, ep)` → resolve relative URLs

### ✅ anineko.to (via stream-api/anineko.js) — with caveat
**GOOD — Multi-quality M3U8, but PNG-wrapped segments**
- Flow: `/browser?keyword=...` → slug → `/watch/{slug}/ep-{N}` → parse `data-video` from `nv-server-grid` panels
- Returns 9–14 sub + 4–5 dub embeds per episode
- External VTT from cdn.anizara.store (verified working)
- ⚠️ Segments stored as PNG on CDN — TS starts at byte 252 (consistent)
- To integrate: need custom HLS segment proxy that strips first 252 bytes

### ❌ solo12345689/mxplayer-api
**GEO-RESTRICTED — India only**
- MX Player (mxplayer.in) requires Indian IP
- VPS returns 403 (IP blocked)
- Replit returns 400 with empty sections[] (geo-locked)
- Has anime content (Re:Zero, Demon Slayer in README examples) but unreachable
- NOT usable from current VPS/Replit

### ⚠️ walterwhite-69/Moviebox-API — PARTIAL (catalog works, streams don't)
- `h5-api.aoneroom.com/wefeed-h5api-bff/home` ✅ works
- "Top Anime" section found with 20 Hindi-dub anime:
  FMA Brotherhood, My Hero Academia, Haikyu, Frieren, Captain Tsubasa, Invincible, etc.
- `subject/play?...&se=1&ep=1` → streams=[], hasResource=false
- Multiple stream endpoint variations → 404 or empty
- The API finds catalog but cannot get stream URLs
- NOT usable for actual streaming

### ❌ Miruro-API (walterwhite-69)
- VPS IP blocked by CF WAF (403 even with curl_cffi)

### ❌ Debflix-Scraper / Videasy
- api.videasy.to CF-blocked from VPS

### ❌ EncDecEndpoints
- AnimeKai domains dead, CDN mirrors timeout

### ❌ 123animehub.cc / nekowatch.xyz (from stream-api)
- 123anime: echovideo getSources empty
- nekowatch: 500/400 errors

### ⛔ staticine / hls-downloader
- Irrelevant to server-side streaming

---

## Integration recommendation

**Add to Anime NOVA:**
1. **ani.pm** — primary anime source, excellent reliability, soft VTT subs + English dub
2. **anineko.to** — secondary source, needs custom 252-byte segment strip in video-proxy

**MovieBox "Top Anime"** — Hindi dub catalog discovered but no stream access yet.
**MX Player** — India-only, cannot access from VPS.
