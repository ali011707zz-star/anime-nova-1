---
name: Videasy CDN Referer fix
description: joe.goldweather.net CDN is Referer-protected (not IP-blocked); correct approach for Videasy playback
---

# Videasy CDN Referer Protection

## The Rule
Videasy CDN (joe.goldweather.net) is protected by Cloudflare **Referer check**, NOT IP blocking.

| Referer | Result |
|---|---|
| `https://player.videasy.to/` | **200** ✅ |
| None | 403 ❌ |
| Wrong domain | 403 ❌ |

**Why:** CDN validates that requests come from the official player at player.videasy.to

## Correct Implementation
In animation.ts SSE scraper: send CDN URLs through hls-proxy with ref param:
```
/api/anime/hls-proxy?url={CDN_URL}&ref=https%3A%2F%2Fplayer.videasy.to%2F
```
- hls-proxy fetches CDN with `Referer: https://player.videasy.to/` → 200
- Segments are rewritten to seg-proxy with same ref → segments work
- No redirect/freshUrl needed — direct proxy is more reliable

## Previous (Wrong) Approach
- Used `Referer: https://player.videasy.net/` (`.net` not `.to`) → CDN generated invalid token URLs
- Used `vtype=mp4` (missing `.m3u8` extension) → Chrome native `<video>` can't decode HLS → black screen
- Used 302 redirect to browser → browser sent wrong Referer to CDN → 403

## EncDecEndpoints (github.com/smy778/EncDecEndpoints)
- Correct Referer/Origin: `https://player.videasy.to/` (`.to` NOT `.net`)
- Double URL-encode the title: `encodeURIComponent(encodeURIComponent(title))`
- Available servers: `mb-flix`, `cdn` (4K), `downloader2`, `1movies`, `m4uhd`, `hdmovie`, `lamovie`, `superflix`
- Decrypt via: `POST https://enc-dec.app/api/dec-videasy` with `{text, id: tmdbId}`
- VidLink: `GET enc-dec.app/api/enc-vidlink?text={tmdbId}` → encrypted → `vidlink.pro/api/b/{type}/{enc}/{season}/{ep}`
- Also has: lordflix, cinesrc, animekai, megaup, rapidshare, kisskh scrapers

## How to Apply
Any time Videasy CDN URL is obtained: wrap in hls-proxy with ref=player.videasy.to. Never send raw CDN URL to browser without this ref (browser sends wrong Referer when following redirects).
