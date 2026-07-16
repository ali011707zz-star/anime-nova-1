---
name: Source playback fixes — DU AK AN HI SC AT
description: Root causes and fixes for 6 broken mobile sources (parseVidHls, dulo probe, anineko fallback, starcima expiry)
---

## Root Causes Confirmed (July 2026)

### AT (animetime / vidhls.com)
**Bug**: `parseVidHls` regex `{[\s\S]+?}` was non-greedy → stopped at first `}` inside nested JSON hostList → JSON.parse failed → extractVideoDeep returned null → source pushed with bare embed URL → native player failed.
**Fix**: Replaced regex with JSON-aware bracket scanner that tracks `inStr` and `escNext` state so `}` inside quoted strings is ignored. Also: animetime no longer pushes sources without `directUrl`.
**Key**: The FirePlayer config `videoUrl` is `/cdn/hls/HASH/master.txt` (note `/cdn/` prefix, not `/hls/` directly).

### DU (dulo.tv CDN)
**Bug**: nakastream.tv CDN returns HTTP 403 from VPS IP. hls-proxy was always used without checking CDN accessibility → proxy failed silently.
**Fix**: Added CDN probe via `http://127.0.0.1:PORT/api/anime/hls-proxy?url=...`. If probe returns non-200/non-206, switch to raw CDN URL (mobile phone IP can access CDN directly).
**Why**: zebi.senpai-stream.club CDN returns 200 from VPS (works with proxy). nakastream.tv returns 403 (raw URL needed). Probe is per-source.
**Also**: Removed vidrock from animation.ts DULO providers — consistently returns 0 results from VPS.

### SC (starcima / animation)
**Bug**: vidzee API returns empty servers for TV anime (content-dependent). For movies works but can return time-limited URLs with already-expired tokens (e.g. `?e=1765241578` expired 200+ days ago) due to long source cache.
**Fix**: Added `isTokenExpired()` helper in starcima probe code — checks `?e`, `?expires`, `?exp` params vs current Unix timestamp. Skip sending expired-token sources.
**Note**: SC simply doesn't appear for TV anime (vidzee returns 0 servers). This is content availability, not a scraper bug.

### AN (anineko)
**Bug**: `orkestGet` for episode page returns empty HTML sometimes (relay instability). Scraper returned [] immediately.
**Fix**: Added direct fetch fallback in `getAninekoSources`: if orkestr returns empty, try direct fetch from VPS to anineko.to (VPS IP is not blocked by anineko).

### AK (anikoto) + HI (hianime)
**Status**: mewstream.buzz (AK) and hianime.ad (HI) both return HTTP 200 from VPS. These sources should work — issue may be content-dependent (not all anime have AK/HI content).

## VPS Deployment Notes
- Build: `cd /opt/anime-nova/artifacts/api-server && node build.mjs`
- Restart: `pm2 restart anime-nova-api`
- Port: 5000 (proxied via nginx HTTPS → animenovaa.duckdns.org)
- The self-probe pattern (`http://127.0.0.1:PORT/api/...`) is safe — host is fixed, not user-controlled.
- Source cache TTL = 1 hour (ANIM_SUB_TTL). After deploys, old cached broken URLs persist until expiry.
