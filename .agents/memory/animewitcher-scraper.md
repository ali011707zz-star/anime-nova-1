---
name: AnimeWitcher HF Space API
description: New AnimeWitcher API on Hugging Face Space — working as of June 2026; bug fix notes and catalog build
---

## Status (June 2026)
**HF Space API is LIVE** at `https://1we323-witcher.hf.space`

## Endpoints
- `GET /api/search?q={title}` → `{ hits: [{id, name, type}] }`
- `GET /api/episodes?id={animeId}` → `{ episodes: [{id, name, num}] }`
- `GET /api/servers_resolved?anime={animeId}&ep={epId}` → `{ servers: [{name, url, proxy_url, quality, lang, playable, browser}] }`
- **NO `/api/catalog` endpoint** → returns {"detail":"Not Found"}

## Server Types Confirmed Working
| Type | Method | Notes |
|------|--------|-------|
| PD (Pixeldrain) | video-proxy direct | CORS *, Accept-Ranges |
| MF (MediaFire) | HF Space proxy_url | CDN URL ip-tied to HF Space → route via `AW_HF_BASE + srv.proxy_url` |
| ST (Streamtape) | parseStreamtape | standard extraction |
| VT (VidTube) | extractVideoDeep | standard extraction |

## Critical Bug Fixed
`titleSimilarity(q, h.name)` was called but never defined → returned [] for all anime.
**Fix:** Replace with `Math.max(similarity(q, h.name), asciiSimilarity(q, h.name))`

## MF Proxy Pattern
```ts
const mfProxied = srv.proxy_url
  ? `${AW_HF_BASE}${srv.proxy_url.startsWith("/") ? srv.proxy_url : "/" + srv.proxy_url}`
  : srv.url;
```

## Catalog Build (fetchAWCatalog)
- Old Firestore (`AW_FS_BASE/anime_list`) is LOCKED/blocked — always returns 0 documents
- New approach: `buildAWCatalog()` searches a-z + common Japanese words via HF Space `/api/search`
- Triggered automatically at server startup in background
- Builds ~1156 unique anime; takes ~20-30s; cached 1 hour
- `fetchAWCatalog()` returns empty array immediately, triggers background build, fills cache

## Coverage
~1156 unique titles: مسلسل + فيلم + أوفا + خاصة + اونا. All Japanese anime only, no cartoons.
Works for recent/popular. Old/classic may not be in their DB.

**Why:** Old Firebase credentials useless (Firestore rules deny external reads). HF Space is a public API they deployed separately with no `/catalog` endpoint.
**How to apply:** Use `getAnimeWitcherSources` with HF Space base URL; for catalog use `buildAWCatalog()` multi-search approach.
