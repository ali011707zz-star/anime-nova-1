---
name: Videasy disable + Dubbed foupix fix
description: Why videasy_anim was disabled, and the architectural root cause of dubbed streaming 403
---

## Videasy (videasy_anim) — Disabled 2026-07-04

**Status**: Disabled via early `return []` in `getVideasyAnimeSources()`.

**Why**: `api.videasy.to` changed its encryption API. Both endpoints fail:
- `/mb-flix/sources-with-title` → 404
- `/cdn/sources-with-title` → `{"error":"STREAMCRYPTO_SEED_INVALID"}`
- `enc-dec.app/api/dec-videasy` → 400 "bad payload"

**How to re-enable**: Remove the `return []` line at the top of `getVideasyAnimeSources`. But first find the new STREAMCRYPTO seed (likely fetched dynamically from the videasy player page at https://player.videasy.to/).

---

## Dubbed foupix CDN 403 — Architectural Root Cause

**Symptom**: `/api/anime/video-proxy?url=foupix...` always returns 403.

**Root cause**: foupix CDN (stream.foupix.com:8443) **blocks datacenter/hosting IPs from streaming video**. This applies to both the VPS (95.182.93.105 / OVH SAS) and Replit IPs — both are datacenter IPs.

**The `ips` parameter** in foupix URLs is a constant tied to the content file, NOT an IP hash of the requesting client. It is identical across different sessions and IPs.

**Confirmed by**: Testing rawUrl with both VPS IP and Replit IP — both return 403.

**Fix applied**: Changed `dubbed/watch.tsx` to use `d.rawUrl` (direct foupix URL) for playback instead of the proxied `d.hlsUrl`. This allows mobile devices on residential IPs to stream directly from foupix CDN without going through the VPS proxy.

**Why this works**: Mobile devices are on residential ISP IPs, which foupix CDN allows. The VPS proxy was the blocker.

**Fallback**: If `rawUrl` is null, falls back to `proxyUrl` (the video-proxy route).

---

## SSRF Fix in watch-src

The `/api/dubbed/watch-src?epUrl=` endpoint had a substring check (`includes("arabic-toons.com")`) which is bypassable (e.g., `https://evil.com/arabic-toons.com`). Fixed with strict URL parsing and hostname allowlist:
```
ALLOWED_DUBBED_HOSTNAMES = {"www.arabic-toons.com", "arabic-toons.com"}
```
Also enforces `https:` protocol only.

---

## WebView Removal (2026-07-04)

All three mobile watch screens now have NO WebView for native (iOS/Android):
- `nova-mobile/app/dubbed/watch.tsx` — WebView import removed; all fallback paths now show error UI + retry
- `nova-mobile/app/animation/watch.tsx` — WebView embed block replaced with info card (with Linking.openURL for embed sources)
- `nova-mobile/app/watch.tsx` — WebView embed block replaced with info card

**Why:** arabic-toons.com episode pages don't render in WebView (blank white screen). vidmoly/mega embed sources genuinely can't play natively — better to show info card than blank WebView.

**How to apply:** Never use WebView as a video fallback in mobile watch screens. Show explicit error state instead.

## streamUrl Fix in dubbed/watch.tsx

Changed `const streamUrl = proxyUrl ?? rawUrl!` → `const streamUrl = rawUrl ?? proxyUrl!`.

**Why:** proxyUrl goes through VPS which is blocked by foupix CDN. rawUrl goes directly from mobile (residential IP) to foupix CDN — which works. The old code always used proxy, causing 403 errors.

## Testing Notes

- All 6 "failing" sources (AK, AN, HI, DL, VE, VL) actually work on VPS when called with valid auth token.
- Root cause of apparent failures was the installed APK still having the old `anime-nova.orkestr.run` URL hardcoded.
- videasy_anim (VE) is the only genuinely broken source (returns 0 sources).
- APK rebuild required (eas.json already updated with `animenovaa.duckdns.org`).
