---
name: SeePanal scraper
description: panel.seepanel.top API from SeeDrama APK — Arabic dubbed anime catalog; working extractors and catalog coverage
---

## API Details
- Base: `https://panel.seepanel.top/api`
- Key: `4F5A9C3D9A86FA54EACEDDD635185` (hardcoded in APK classes6.dex)
- UUID: `d506abfd-9fe2-4b71-b979-feff21bcad13` (hardcoded in APK)
- Pattern: `{BASE}/{path}/{KEY}/{UUID}/`

## Key Endpoints
- `search/{query}/` → `{ posters: [{id, title, type:"serie"|"movie"}] }`
- `season/by/serie/{id}/` → seasons array (newest-first in some series), each with episodes array
- `movie/by/{id}/` → `{ sources: [{url, quality, premium}] }`

## Video Hosts
| Host | Extractable | Notes |
|------|-------------|-------|
| hlswish.com | ✓ YES | streamwish family → cdn-centaurus.com HLS |
| vidspeed.org | ✓ YES | streamwish CDN → cdnz.quest HLS |
| 1vid.xyz / 1vid1shar.space | ✓ YES | streamwish variant; cdn4.1vid1shar.space may return 0 bytes (rate-limited) |
| bigwarp.io, forafile.com, anafast.com | ✓ YES | streamwish family |
| uqload.is / uqload.co | ✓ YES | via parseStreamwish |
| faselhds.life | ✗ NO | SeePanal's own CDN; app-native WebView only; server → empty |
| vidhideplus.com | ✗ NO | blocked |
| hgcloud.to | ✗ NO | "no video found" |
| vdbtm.shop, goveed1.space | ✗ NO | dead CDNs |
| ok.ru/videoembed | ✗ NO | Russian social media, blocks server |
| wecima.video | ✗ NO | DEAD (301→MPAA) |

## Episode Matching (CRITICAL)
SeePanal stores seasons INCONSISTENTLY — some series (e.g. One Piece ID 911) have seasons sorted
NEWEST FIRST in the API response. Episode titles contain the real number: "الحلقة : 1156" or "الحلقة 800".

**Two-pass matching in `seepanelGetEpSources`:**
1. **Title pass**: extract number from `الحلقة\s*:?\s*(\d+)` → if matches `ep`, use it
2. **Index fallback**: global sequential index sorted by season ID ascending (works for DBZ etc.)

**Movie skip**: when `ep > 1`, skip `poster.type === "movie"` candidates (they only have 1 episode and would return wrong content for series requests).

## Coverage Reality
- **Dragon Ball Z (ID 1180)**: 291/291 episodes — ALL via vidspeed ✅ (seasons sorted oldest-first)
- **One Piece (ID 911)**: eps 1089-1162 reliable (vidspeed/hlswish); eps 100-1088 mostly faselhds/vidhideplus/ok.ru → 0 extractable; title-based matching correctly finds them but sources are dead
- **Animations**: movies work well (Frozen, Kung Fu Panda, Spider-Verse) — all via vidspeed/hlswish/film77.xyz

## Implementation Location
- Function: `getSeepanelSources(title, english, ep)` in `artifacts/api-server/src/routes/anime.ts`
- Animation: `animation.ts` sources-stream SSE block
- Site key: `"seepanel"` / tag `"SP"` in Watch.tsx SCRAPER_DEFS
- SEEPANEL_DEAD_HOSTS: faselhds.life, vidhideplus, hgcloud, goveed1.space, vdbtm.shop, okprime.site, vk.com, mixdrop, wecima.video, dailymotion

**Why:** Arabic dubbed catalog; APK key is public/rate-unlimited; vidspeed+hlswish reliably extractable; faselhds.life is their proprietary CDN (app-only, not extractable server-side).
