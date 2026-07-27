---
name: EzVidAPI animation source
description: api.ezvidapi.com free HLS streaming API — endpoints, working providers, segment verification, CORS status, subtitle availability
---

## API Base
- **REAL base**: `https://api.ezvidapi.com` (NOT `ezvidapi.com` — no server-side routes)
- **Endpoints**: `GET /list`, `GET /movie/{provider}/{tmdbId}`, `GET /tv/{provider}/{tmdbId}?season=N&episode=N`
- **No API key required**

## Providers (8 total)
| Provider | TV | Movie | Subtitles | Notes |
|---|---|---|---|---|
| vidnest | ✅ | ❌ (timeout) | ✅ (cc.boopigcdn.com) | Works for TV only |
| vidlink | ✅ | ✅ | ❌ (no Arabic) | Both types |
| vidrock | ✅ | ✅ | ✅ (cache.vdrk.site/v2) | Arabic sub included |
| vidsrc/vidzee/icefy/vixsrc/popr | ❌ | ❌ | — | Return "stream not found" |

## Stream URL Format
- Response JSON: `{ provider, stream_url }`
- stream_url: `https://api.ezvidapi.com/proxy/master/{base64token}.m3u8` OR `/proxy/playlist/{base64token}.m3u8`
- All manifest paths end in `.m3u8` → hls.js detects as HLS natively
- Relative segment paths in manifest: `/proxy/segment/{token}` → resolved against `api.ezvidapi.com`
- Relative subtitle paths: `/proxy/sub/{token}.m3u8`

## Verified Working
- Segments return `Content-Type: video/mp2t` (HTTP 200 via GET) ✅
- CORS `access-control-allow-origin: *` on ALL endpoints ✅
- No hls-proxy needed — browser can fetch directly ✅
- HEAD returns 405 on proxy endpoints — skip HEAD probe, trust API response

## Arabic Subtitles (vidrock)
- Embedded in manifest as `#EXT-X-MEDIA:TYPE=SUBTITLES`
- Real VTT also available directly: `cache.vdrk.site/v2/tv/{tmdbId}/{s}/{e}/Arabic.vtt`
- cache.vdrk.site/v2 returns HTTP 200 (confirmed June 2026) — memory entry for "v1 only" is stale

## Integration in animation.ts
- Added to `sources-stream` SSE endpoint in `Promise.allSettled`
- All 3 providers run in PARALLEL (`Promise.allSettled`) — sequential was too slow for 30s deadline
- vidrock also sends `subtitleUrl: cache.vdrk.site/v2/...Arabic.vtt` for SubPanel

**Why:** Free, no auth, CORS *, multi-quality (1080p/720p/360p), 20+ subtitle languages embedded in manifest.
