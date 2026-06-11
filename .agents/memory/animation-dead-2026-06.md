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
| vidlink.pro API | Returns 0 bytes (empty) from Replit IPs — server IP blocked |

## Active animation scrapers

- **aflaam.com** — direct MP4 (af3/af1.downet.net CDN), CORS *, confirmed working
- **StarCima** — vidzee HLS (cdn.1shows.app + s6mb.greenhavenstore.store) confirmed working
- **StarDima** — DooPlay WP theme (may need nonce)
- **AnimeWitcher Dubbed** — Firebase Firestore, ~116 dubbed titles
- **AnimeWitcher (Japanese)** — Firebase Firestore, AniList-based
- **Vyla** — HF Space (sleeps — needs health check before use)
- **moviz-time.co** — REST API /wp-json/wp/v2/posts search
- **topcinemaa** — WP theme AJAX

**Why:** All disabled sites either timeout from Replit datacenter IPs or their domains are dead. They were replaced with Promise.resolve() to avoid wasting the 30s hard deadline on dead requests.
