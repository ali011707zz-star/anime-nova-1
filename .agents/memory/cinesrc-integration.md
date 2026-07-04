---
name: CineSrc integration
description: cinesrc.st microservice integration into animation.ts and anime.ts; VPS deployment notes and known limitations
---

# CineSrc Integration

## What was done
- Added `scrapeAnimCached("cinesrc", ...)` to `animation.ts` (after superembed, before `]);`)
- Added `getCineSrcAnimeSources()` function + `scrapeCached("cinesrc_anim")` + switch case to `anime.ts`
- VPS: cloned cinesrc repo to `/opt/cinesrc-resolver`, patched `host.js` for SubtleCrypto proxy issue, running as PM2 fork service on port 13004
- `CINESRC_BASE=http://localhost:13004` in `/opt/anime-nova/.env`

## SubtleCrypto patch (host.js)
cinesrc uses happy-dom for the embed page; happy-dom's typed arrays are ES Proxy objects, which Node.js `crypto.subtle.importKey` rejects:
- `raw` format: fix with `Buffer.from(keyData.buffer, keyData.byteOffset, keyData.byteLength)`
- `spki` format: fix with `new Uint8Array(keyData)` (V8 TypedArray constructor resolves proxied ArrayBuffer)

## Known limitation: VPS IP blocking
- cinesrc.st blocks VPS IPs for server-action POST requests (`listProviders`/`fetchStream`)
- Bundle fetching (action ID discovery) works from VPS but actual content requests return empty
- Integration silently skips (`if (!CINESRC_BASE) return`) — no user-visible error
- **Why:** cinesrc.st applies CF/IP-based blocking on server actions but not on static bundle CDN

## Reliable test path
- From Replit IP (non-VPS), the service works: run `node` from `/tmp/test-scrapers/cinesrc`, `discoverServerActions` returns IDs, and `surge` provider returns valid HLS
- HLS format: 720p + 1080p, H.264, AAC, single audio track (original language), **no subtitles/Arabic dub**

## Content notes
- Provider `surge` is reliable; `nebula` returns `no_streams` for anime
- qualityRank: 12 (TMDB-native, same tier as dulo/superembed)
- Label in UI: "CineSrc · {provider name}" — original language only, no Arabic

## How to apply
- If cinesrc ever works from a non-VPS proxy/Replit-hosted microservice, set CINESRC_BASE to that URL
- Both animation.ts and anime.ts have the integration code; just change the env var
- Array.isArray guard on `catalog.providers` prevents runtime errors on unexpected API shape
