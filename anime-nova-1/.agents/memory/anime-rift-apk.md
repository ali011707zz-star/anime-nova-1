---
name: Anime Rift APK reverse engineering
description: Findings from reversing anime-rift.com Android APK (June 2026) — not integrable as a scraper
---

## Conclusion
**NOT integrable** as a server-side scraper. Firebase App Check (Play Integrity) requires a real Android device.

## Firebase Config
- Project: `anime-rift-4142e`, Number: `536921039715`
- Android App ID: `1:536921039715:android:78825c96b74de921b8e956`
- API Key: `AIzaSyBiLkiGEm7ruugny3tDFHEZvqli8yv1k7I` (Remote Config only, no API bypass)

## API Structure
- Base URL: `https://gateway.anime-rift.com/api/v4`
- Country bypass: `X-Forwarded-For: 41.65.80.1` (Egyptian IP)
- Platform: `x-platform: mobile` (only valid value)
- Required headers: `x-device-id`, `x-device-os-id: 34`, `x-device-release-version: 3.12.1`, `x-device-language: ar`, `x-device-timezone: Africa/Cairo`, `x-installation-source: com.android.vending`, `x-firebase-app-check: <JWT>`, `User-Agent: Dart/3.0 (dart:io)`

## Key Endpoints
- `GET /library/search?q=` — search anime
- `GET /library/episodes/{anime_id}` — episode list
- `GET /library/episode/sources?episode_id=` — video sources (returns video_url, server_key, quality, is_hls, stream_type)
- `GET /library/episode/source/direct_link` — direct link
- `POST /auth/register/device` — device reg (requires App Check)
- `GET /auth/sign-in/google` — Google sign-in only (no email/password)

## Episode Sources JSON Keys
`video_url`, `download_url`, `server_key`, `server_name`, `back_up_server`, `is_hls`, `is_premium`, `is_unlocked`, `quality`, `stream_type`, `server_working`, `video_id`

## Streaming Providers
- Streamtape (explicit: `https://api.streamtape.com/file/dl`)
- HLS streams (master.m3u8) via their CDN

## App Check Flow
- v4: Firebase App Check required → `ACCESS_DENIED` without token
- v3: No App Check but `DEVICE_SUSPENDED` when servers down
- Play Integrity: NOT registered for this app
- SafetyNet: attestation fails (token must be real)
- FIA token (Firebase Installation Auth): NOT a valid App Check substitute
- Debug token `9909c4fc...` (SHA-256, NOT a UUID): not registered

## Status (June 2026)
Servers intentionally shut down since ~June 13; return June 16. Reason: can't sustain ad-free model.

**Why not integrable:** Firebase App Check requires real Android device Play Integrity attestation — fundamentally impossible from a server without actual Android hardware.
