---
name: AnimeWitcher v1.4.4 APK Analysis
description: Full findings from APK reverse engineering — Firestore locked, BunnyCDN found, scraper disabled
---

## Status (June 2026)
**Firestore is COMPLETELY LOCKED** as of v1.4.4. No public read, no anonymous auth, no registered-user access. The existing scraper returns 0 sources.

## Firebase Credentials (found but useless — Firestore locked)
- Project ID: `animewitcher-1c66d`
- API Key: `AIzaSyAcbWRwfFNnCpoydDXlEALWnM_TYVcJOMU`
- App ID: `1:861470152250:android:bd3e0dd41508f61b094703`
- Anonymous auth: DISABLED (ADMIN_ONLY_OPERATION)
- Registered user auth: works but Firestore rules deny ALL reads (PERMISSION_DENIED)
- RTDB: not used (404)

## New Infrastructure Found in v1.4.4
- **BunnyCDN Stream**: `bunny_server` (library_id) + `bunny_video_id` stored per server in Firestore
  - Embed URL would be: `https://iframe.mediadelivery.net/embed/{bunny_server}/{bunny_video_id}`
  - Both IDs are in locked Firestore → cannot use
- **Algolia Search**: `ALGOLIA_APPLICATION_ID` + `ALGOLIA_API_KEY` constants exist; credentials stored in Firestore at `Settings/servers/servers` → cannot access
- **vidtube.one**: XVideoSharing embed platform; video IDs from Firestore → cannot use

## Firestore Collection Structure (from DEX analysis)
- Top-level: `MAIN_COLLECTION` constant (OLD code used `anime_list` — might have changed)
- Per-anime subcollections: `/episodes`, `/servers`, `/servers2`
- Config: `Settings/servers/servers` (search service config)
- User collections: `/continue_watching`, `/episodes_watched`, `/user_anime`, `/fav_characters`
- Social: `/comments`, `/reviews`, `/ratings`, `/replies`

## Server Model (ServerWords)
Fields: `Link`, `bunny_server`, `bunny_video_id`, `name`, `quality`, `visible`
Quality values: `240p`, `360p`, `480p`, `720p`, `1080p`
Server types found: `PD` (Pixeldrain), `ST` (Streamtape), `VT` (VidTube), `MF` (MediaFire), BunnyCDN

## Why Disabled
Firestore rules updated in v1.4.4 deny all external reads. Without valid admin Firebase credentials or Algolia credentials (stored in locked Firestore), there is no way to access anime or episode data.

**How to apply:** Keep `getAnimeWitcherSources` code but remove from `Promise.allSettled` parallel scrapers and from SSE route switch case.
