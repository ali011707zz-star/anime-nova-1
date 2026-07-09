---
name: SAnime + Notorrent fixes
description: SAnime romaji search fix; MXPlayer disabled; Notorrent added to anime.ts with animeapi.my.id IMDB lookup; hubcloud dead host
---

## SAnime search query — use romaji title first
SAnime (app.sanime.net) stores anime by Japanese romanized names (e.g. "Shingeki no Kyojin"), NOT English ("Attack on Titan").
The search query must be `encodeURIComponent(title || english || "")` — romaji first.
With English title, similarity score ~0.21 (below 0.42 threshold). With romaji, score = 1.00.

**Why:** SAnime database has ~289 anime all indexed by their Japanese romanized names only.

## MXPlayer disabled
`getMXPlayerSources()` has early `return []` because the local MXPlayer service (port 8002, `MXP_SERVICE_PORT`) is not running on the VPS.

## Notorrent in anime.ts — IMDB lookup via animeapi.my.id
`getNotorrentAnimeSources(anilistId, ep)` uses `animeapi.my.id/anilist/{anilistId}` to get IMDB ID directly.
This is the only working method from VPS — both AniList GraphQL and arm.haglund.dev return 403 from datacenter IP.
animeapi.my.id returns `{imdb: "tt2560140", ...}` for anime with AniList ID.

**Timeouts:**
- animeapi.my.id: 8s
- addon-osvh.onrender.com stream fetch: 22s
- scrapeCached race: 27s (fits within 28s SSE hard-close)
- fetch-source lazy switch race: 35s (no SSE limit on this path)

**Cache:** success=4h TTL, empty/failed=2min TTL (retry quickly after transient errors)

**Why:** AniList GraphQL and arm.haglund.dev both blocked (403) from VPS datacenter IP. animeapi.my.id works and returns direct IMDB field.

## hubcloud.cx — dead, added to DEAD_FILE_HOSTS
hubcloud.cx URLs from Xyra redirect to `telegram.dog/Hubcloudx` (Telegram channel), not playable video.
Added: `"hubcloud.cx","hubcloud.co","hubcloud.fun"` to DEAD_FILE_HOSTS array.

## Routing: /api/ prefix required
All API routes are mounted at `/api/` in Express. Correct path: `/api/anime/fetch-source` not `/anime/fetch-source`.
Protected path requires `x-internal: 1` header for localhost calls OR valid `x-app-token`.

## VPS APIs blocked from datacenter IP (403)
- AniList GraphQL (graphql.anilist.co)
- arm.haglund.dev
- Jikan sometimes (504)
- All require residential/proxy IP or have datacenter blocks
