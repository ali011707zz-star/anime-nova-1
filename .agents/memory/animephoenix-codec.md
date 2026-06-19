---
name: Anime-Phoenix x265 MKV codec
description: anime-phoenix.com MKV files and playback compatibility
---

# Anime-Phoenix.com — MKV/x265 Sources

All anime-phoenix.com files are x265/HEVC MKV format.

**Platform compatibility:**
- Windows Chrome + HEVC codec pack: ✅ plays
- macOS Safari / Chrome: ✅ plays  
- Android modern browsers: ✅ plays
- Linux Chrome (Replit preview): ❌ cannot decode HEVC
- iOS Safari: ✅ (HEVC hardware decode)

**Previous bug**: Line 1869 in anime.ts was SKIPPING all `.mkv` files, causing animephoenix to ALWAYS return 0 sources. FIXED June 2026 — MKV files now proxied through video-proxy with label "Phoenix · MKV 1080p".

**Coverage**: NOT all anime are on the site. Confirmed working: Hunter x Hunter (5 sources), Bleach (5 sources). NOT available: Naruto, One Piece, FMA Brotherhood, Dragon Ball Z (these popular titles not in their library).

**Why:** anime-phoenix.com is a smaller Arabic dubbed anime site — specialized catalog, not exhaustive.

**How to apply:** Don't add the MKV skip back. Let the browser try HEVC. The video-proxy handles range requests for seeking.
