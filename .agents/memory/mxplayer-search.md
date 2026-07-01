---
name: MXPlayer service search approach
description: How mxplayer_service.py searches for anime/animation content on MX Player
---

## Rule
Use `/search/result?query=...` endpoint (NOT `/search/suggest` which returns autocomplete query strings, not content).

## API Facts
- `/search/result` returns `{sections: [{items: [...]}]}` — tvshow/movie items with IDs
- TV shows: `stream: null` at show level → need to resolve seasons → episodes chain:
  - Seasons: `GET /detail/tab/tvshowseasons?type=tvshow&id={show_id}&sortOrder=0` → `.items[]`
  - Episodes: `GET /detail/tab/tvshowepisodes?type=season&id={season_id}&sortOrder=0` → `.items[]`
  - Episodes have `.stream.hls.high` / `.stream.dash.high` as relative paths
  - Prefix relative paths with `https://isa-1.mxplay.com/`
- Movies: stream present directly in search result item
- Skip DRM items: `stream.drmProtect: true`
- `/detail/video?type=tvshow` returns 400 — use tvshowseasons endpoint instead

## Anime Confirmed on MXPlayer (Hindi + Japanese audio)
- Re:Zero, Jujutsu Kaisen, Goblin Slayer — verified returning HLS URLs in tests

## Replit IP Limitations (in test/dev environment only)
- `enc-dec.app` (Videasy decrypt relay) returns 403 from Replit datacenter → works in production
- `anime4up.cam` returns JS redirect (bot protection) without CF proxy → works with CF proxy

**Why:** Discovered during live API testing July 2026.
**How to apply:** Any future mxplayer_service.py work must use /search/result. The correct chain is: search → tvshow seasons → episodes → stream.hls/dash.
