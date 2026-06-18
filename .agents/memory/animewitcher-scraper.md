---
name: AnimeWitcher HF Space API
description: New AnimeWitcher API on Hugging Face Space — working as of June 2026; bug fix notes
---

## Status (June 2026)
**HF Space API is LIVE** at `https://1we323-witcher.hf.space`

## Endpoints
- `GET /api/search?q={title}` → `{ hits: [{id, name, type}] }`
- `GET /api/episodes?id={animeId}` → `{ episodes: [{id, name, num}] }`
- `GET /api/servers_resolved?anime={animeId}&ep={epId}` → `{ servers: [{name, url, proxy_url, quality, lang, playable, browser}] }`

## Server Types Confirmed Working
| Type | Method | Notes |
|------|--------|-------|
| PD (Pixeldrain) | video-proxy direct | CORS *, Accept-Ranges, browser:true but works server-side |
| MF (MediaFire) | HF Space proxy_url | CDN URL ip-tied to HF Space server → must route via `AW_HF_BASE + srv.proxy_url` not raw srv.url |
| ST (Streamtape) | parseStreamtape | standard extraction |
| VT (VidTube) | extractVideoDeep | standard extraction |

## Critical Bug Fixed
`titleSimilarity(q, h.name)` was called but never defined → ReferenceError caught by outer try/catch → returned [] for all anime.
**Fix:** Replace with `Math.max(similarity(q, h.name), asciiSimilarity(q, h.name))`

## MF Proxy Pattern
```ts
const mfProxied = srv.proxy_url
  ? `${AW_HF_BASE}${srv.proxy_url.startsWith("/") ? srv.proxy_url : "/" + srv.proxy_url}`
  : srv.url;
const directUrl = `/api/anime/video-proxy?url=${encodeURIComponent(mfProxied)}&ref=...`;
```
HF Space proxy accepts GET+Range, returns 206 with CORS *, HEAD returns 405 (GET only).

## Coverage
Firestore (original app) is locked as of v1.4.4 — HF Space is the replacement API with 1000+ anime.
Works for RECENT/popular anime. Old/classic anime may not be in their DB.

**Why:** Old Firebase credentials from APK analysis are useless (Firestore rules deny all external reads). HF Space is a public scraper API they deployed separately.
**How to apply:** Use `getAnimeWitcherSources` with the HF Space base URL; never attempt Firestore directly.
