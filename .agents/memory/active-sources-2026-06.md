---
name: Active anime sources June 2026
description: Which scrapers are active/disabled in sources-stream and why, as of June 2026
---

## Active (in sources-stream + SCRAPER_DEFS)

| site | type | notes |
|------|------|-------|
| shahiid | Arabic dubbed/sub | working |
| animelek | Arabic dubbed/sub | working |
| animedar | Arabic sub | working |
| okanime | Arabic sub | working |
| ristoanime | Arabic sub | working |
| animeify | Arabic · MediaFire MP4 | working |
| kawaii | JP sub, AniList ID | 1080p MP4, works well |
| anikoto | JP sub, AniList ID | HLS megaplay.buzz |
| miruro | JP sub, AniList ID | AnimePahe HLS |
| animewitcher | JP sub, AniList ID | Firestore, small library |
| anineko | JP sub, title search | HLS vibeplayer/bibiemb |
| mitanime | JP sub, title search | RSC endpoint, mega/videa |

## Disabled and why

- **animephoenix** — site timeout from Replit datacenter IPs (dead)
- **witanime** — CF Managed Challenge blocks ALL datacenter IPs
- **anime3rb** — CF Managed Challenge blocks ALL datacenter IPs
- **toonstream** — animation-only site, not suitable for anime
- **animetime** — all CDN links dead
- **animehub** — English subs hardcoded in video (not separate)
- **animegg** — disabled by user request
- **allmanga** — clock.json→500, fast4speed→401 (auth required)
- **reanime** — FlixCloud CDN blocks Replit datacenter IPs

**Why:** Disabled scrapers were consuming 12s timeout slots in allSettled without returning results, slowing down the stream for every episode request.
