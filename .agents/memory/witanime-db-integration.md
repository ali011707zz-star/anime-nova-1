---
name: WITanime-DB integration
description: Arabic dubbed anime database from GitHub releases (mhmod3/WITanime-DB); hlswish → cdn-centaurus.com HLS
---

## Implementation

- **Source**: `https://api.github.com/repos/mhmod3/WITanime-DB/releases/latest` → ZIP asset → unzip CLI → in-memory map
- **Cache**: 24h in-process (`witDB` Map<malId, WitEntry>)
- **ID lookup**: AniList ID → ARM API (`arm.haglund.dev/api/v2/ids?source=anilist&id={id}`) → `myanimelist` field
- **Data format**: `{animeName: {mal_id, anime_url, type, 1: {streaming_links:[{url, quality}]}}}`
- **Extractable hosts** (`WIT_EXTRACTABLE_HOSTS`): hlswish.com, luluvdo.com, darkibox.com, hydracker.com, mp4upload.com
- **Extraction**: parallel `Promise.allSettled` (up to 4 links × 10s each) via `extractVideoDeep`
- **CDN**: `cdn-centaurus.com` HLS — returns 403 WITHOUT query params but 200 with signed token params (`t=`, `s=`, `e=`, `asn=` etc.)
- **Proxy**: hls-proxy with ref=witanime.you; works from Replit IP when full signed URL used
- **qualityRank**: 13 (same as top Arabic sources), tag "WIT", isArabic: true
- **scrapeCached**: `useExtract=false` (extraction already done inside function)

## Key gotcha: 403 vs 200

The CDN URL MUST include all query parameters (`?t=...&s=...&e=...`). Testing the base CDN URL without params returns 403 — this is expected. The full signed URL returns 200 with HLS content.

**Why:** centaurus.com CDN uses JWT-style signed tokens with IP+ASN binding. Replit's IP is fine (ASN is included in the token). The 36h TTL (`e=129600`) means users get a fresh token per request.

## luluvdo / darkibox

- `luluvdo.com` returns ~1203 bytes (JS-only page from Replit) — extraction fails server-side
- `darkibox.com` fetches correctly (393KB response), has packed JS — extraction may work
- Both added to `WIT_EXTRACTABLE_HOSTS` anyway (fallback if hlswish fails)

## Files

- `artifacts/api-server/src/routes/anime.ts`: `fetchWitanimeDB()`, `getWitanimeDBSources()`, `witanime_db` in Promise.allSettled
- `artifacts/anime-scraper/src/pages/Watch.tsx`: SCRAPER_DEFS entry `{ site:"witanime_db", name:"ويتانيم DB", tag:"WIT", isArabic:true }`
