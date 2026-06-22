---
name: Animation dead sources June 2026
description: Which animation scrapers were found dead/blocked in June 2026 and disabled
---

## Disabled animation scrapers (June 2026)

| site | reason |
|------|--------|
| vidsrc.pro | 301 redirect to embed.su (already handled separately) |
| vidsrc.icu | timeout (000) from Replit datacenter IPs |
| vidsrc.vip | timeout (000) from Replit datacenter IPs |
| vidbinge.com | timeout (000) from Replit datacenter IPs |
| player.smashy.stream | timeout (000) from Replit datacenter IPs |
| moviesapi.club | DEAD domain — redirects to alliance4creativity.com |
| Videasy (joe.goldweather.net / server.digitalsun.app) | CDN blocks datacenter IPs at segment level — hls-proxy also returns 403; not fixable without residential proxy |

## Fixed animation scrapers (June 2026)

| site | fix |
|------|-----|
| VidLink (storm.vodvidl.site) | auth token is IP-bound to server; fix: use hls-proxy with ref=https://vidlink.pro/; confirmed HTTP 200, valid m3u8 with 1080p/720p/360p variants; segment URLs rewritten via seg-proxy |

## Active animation scrapers

- **VidLink** — FIXED: storm.vodvidl.site via `/api/anime/hls-proxy?ref=https://vidlink.pro/`; confirmed working (Toy Story 1:42:33 played at 1080p)
- **aflaam.com** — direct MP4 (af3/af1.downet.net CDN), CORS *, confirmed working
- **StarCima** — vidzee HLS (cdn.1shows.app + s6mb.greenhavenstore.store) confirmed working
- **StarDima** — DooPlay WP theme (may need nonce)
- **AnimeWitcher Dubbed** — Firebase Firestore, ~116 dubbed titles
- **AnimeWitcher (Japanese)** — Firebase Firestore, AniList-based
- **Vyla** — HF Space (missourimonster-vyla.hf.space); CAN return 502 when sleeping/overloaded; added server-side HEAD probe before sendSource to filter dead sources
- **EzVidAPI** — api.ezvidapi.com; vidrock+vidlink work; CEA-708 CC → disable in hls.js config
- **moviz-time.co** — REST API /wp-json/wp/v2/posts search
- **topcinemaa** — WP theme AJAX

## AnimationWatch.tsx auto-play resilience (June 2026)

- `autoPlayAttemptsRef` (max 4) + `autoPlayedRef` reset on failure → tries next source after first fails
- `prefProxy()` helper prefers `/api/` proxy URLs for VidLink/EzVidAPI/StarCima in auto-play (avoids IP-bound raw tokens)
- Auto-play priority: Vyla > VidLink (hls-proxy preferred) > EzVidAPI > aflaam > StarCima > SeePanal > AnimePhoenix > AnimeWitcher

**Why:** All disabled sites either timeout from Replit datacenter IPs or their domains are dead. VidLink was broken because raw auth tokens are IP-bound to server; hls-proxy tunnels all segments through our server (matching IP). Videasy CDN blocks our datacenter IP entirely — sends as hls-proxy but will fail and fall back.
