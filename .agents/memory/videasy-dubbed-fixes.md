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

## Testing Notes

- All 6 "failing" sources (AK, AN, HI, DL, VE, VL) actually work on VPS when called with valid auth token.
- Root cause of apparent failures was the installed APK still having the old `anime-nova.orkestr.run` URL hardcoded.
- videasy_anim (VE) is the only genuinely broken source (returns 0 sources).
- APK rebuild required (eas.json already updated with `animenovaa.duckdns.org`).
