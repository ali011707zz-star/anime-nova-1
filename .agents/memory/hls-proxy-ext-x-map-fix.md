---
name: HLS Proxy EXT-X-MAP relative URI bug
description: rewriteM3u8 skipped #EXT-X-MAP tag causing black screen on fMP4 HLS streams in mobile (ExoPlayer) — fixed July 2026
---

## The Bug
`rewriteM3u8()` in `artifacts/api-server/src/routes/anime.ts` processed `#EXT-X-KEY`, `#EXT-X-MEDIA`, and `#EXT-X-I-FRAME-STREAM-INF` tags to rewrite URI values, but NOT `#EXT-X-MAP`. All other `#`-prefixed lines fell through to `return line` unchanged.

This means `#EXT-X-MAP:URI="init.mp4"` stayed as a relative URI. When `mobile=1` (directSegs mode) was active, ExoPlayer got the manifest with:
- Segment lines: `https://cdn.example.com/video/00001.m4s` ← absolute CDN ✓
- MAP line: `#EXT-X-MAP:URI="init.mp4"` ← relative to proxy server ✗

ExoPlayer tried to fetch `init.mp4` from `https://VPS/api/anime/hls-proxy/init.mp4` → 404 → black screen.

## Fix Applied
```typescript
if ((trimmed.startsWith("#EXT-X-KEY") || trimmed.startsWith("#EXT-X-MEDIA") || trimmed.startsWith("#EXT-X-MAP") || ...
```
Added `#EXT-X-MAP` to the URI-rewriting block. Confirmed working — init.mp4 now shows as absolute CDN URL.

**Why:** fMP4 (fragmented MP4) HLS streams (used by Dulo.tv, SeePanal, CinePro, etc.) have `#EXT-X-MAP:URI="init.mp4"` for the initialization segment. If this stays relative, the entire stream fails to play (black screen, no error visible to user).

**How to apply:** Any time hls-proxy directSegs mode breaks for fMP4 streams (video starts then goes black, or shows buffering forever), check if `#EXT-X-MAP` URIs are being absolutized correctly.
