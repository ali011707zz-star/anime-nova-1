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
- `season/by/serie/{id}/` → seasons array (newest-first), each with episodes array
- `movie/by/{id}/` → `{ sources: [{url, quality, premium}] }`
- `subtitles/by/episode/{id}/`, `subtitles/by/movie/{id}/` → subtitle tracks

## Video Hosts
| Host | Extractable | Notes |
|------|-------------|-------|
| hlswish.com | ✓ YES | streamwish family → cdn-centaurus.com HLS; 9/9 success |
| vidspeed.org | ✓ YES | streamwish CDN → cdnz.quest HLS; URL pattern /embed-{token}.html |
| vidhideplus.com | ✗ NO | parseMegamax fails; /embed/ format not handled |
| hgcloud.to | ✗ NO | "no video found" consistently |
| forafile.com | ? | untested |
| vdbtm.shop | ? | CDN subdomain for vdbtm |
| 1vid1shar.space | ? | CDN subdomain for 1vid.xyz |
| bigwarp.io | ? | untested |
| uqload.is | SKIP | in EMBED_ONLY_HOSTS |
| ok.ru | SKIP | in EMBED_ONLY_HOSTS |
| wecima.video | SKIP | DEAD (301→MPAA) |

## Critical Bugs Fixed
1. **Empty season bug**: API returns seasons newest-first including "قريبا" (coming soon) placeholder seasons with empty sources. Must sort by ID ascending AND filter out seasons with title containing "قريبا" AND filter episodes with no sources.
2. **Global episode index**: Correctly maps AniList global ep number to season+episode by ID-sorted season flattening.

## Catalog Coverage (~75% success on popular anime)
- ✓ One Piece, Attack on Titan, Demon Slayer, Naruto, Dragon Ball Daima (ep1 only), Kimetsu no Yaiba
- ✓ HxH exists in catalog but all hgcloud/vidhideplus → no extractable streams
- ✗ Tokyo Ghoul, Fullmetal Alchemist Brotherhood, SAO (only GGO variant) → NOT in catalog

## Implementation Location
- Function: `getSeepanelSources(title, english, ep)` in `artifacts/api-server/src/routes/anime.ts`
- Site key: `"seepanel"` / tag `"SP"` in Watch.tsx SCRAPER_DEFS
- useExtract: true (default) — extractAndCollect handles hlswish/vidspeed extraction

**Why:** Hardcoded API key+UUID in APK (public, rate-unlimited); Arabic dubbed catalog not available elsewhere; 15/20 test success rate with hlswish+vidspeed active hosts.
