---
name: Bandwidth proxy removal
description: VPS was consuming excessive bandwidth (14GB) because seg-proxy and video-proxy were piping video through the server. Fixed by converting to 307 redirects + explicit header propagation.
---

## The Problem
VPS consumed ~14GB unexpectedly. Three endpoints were streaming video through the server:
- `seg-proxy`: piped every HLS .ts segment (2–10MB × ~720 segs/episode) — **main culprit**
- `video-proxy` (web mode): piped entire MP4 files
- `hls-proxy` (web mode): used `directSegs=false` → rewrote segment URLs through `seg-proxy`

## The Fix

### anime.ts
- `seg-proxy` → 307 redirect to CDN (no server bandwidth for segments)
- `video-proxy` → always 307 redirect (removed mobile vs web split — both redirect now)
- `hls-proxy` web mode: changed `directSegs=false` → `directSegs=true` (segments go directly to CDN in manifest)
- `UnifiedSource` type: added `headers?: Record<string, string>` field
- `sendSrc()`: now extracts `{Referer, Origin}` from the `ref=` param of proxy URLs and includes them in the SSE response

### animation.ts
- `sendSource()`: same headers extraction — reads `ref=` from `proxyUrl` or `directUrl` and includes `headers` in the SSE event

### Mobile (nova-mobile)
- `Src` and `AnimSrc` types: added `headers` field
- `watch.tsx` riftSources: uses `s.headers || extractProxyHeaders(url)` (explicit headers first, proxy fallback)
- `animation/watch.tsx`: added `extractHeadersFromProxy()` helper + uses `s.headers || extractHeadersFromProxy(url)`

## Why Headers Matter
- Mobile (ExoPlayer/AVPlayer via expo-video): player receives `{ uri, headers }` → sends Referer/Origin on ALL requests including CDN segment fetches → CDN accepts
- Web (hls.js): browser can't set custom Referer/Origin on cross-origin segment fetches → CDN without CORS will reject. This is unavoidable without proxying. User explicitly requested no proxying.

## Remaining pipe() in app.ts
`proxyRes.pipe(res)` at line 165 of app.ts is for `/nova-mobile/*` static file serving only — not video. This is intentional and acceptable.

**Why:** The only way to eliminate bandwidth is to not pipe data. 307 redirects let the CDN serve directly to the client.
**How to apply:** Any new video/HLS source added must return the raw CDN URL + required headers in the source response, not create a new piping proxy endpoint.
