---
name: Hexa animation source
description: hexa.su / flixer.su — TMDB-native HLS source via enc-dec.app, confirmed working in animation.ts
---

## Integration

- **Site**: hexa.su (also flixer.su — same site)
- **TMDB-native**: movie and TV both supported
- **CDN**: `nxt.cfw69.workers.dev` / `pjd.cfw69.workers.dev` (Cloudflare Workers) — CORS * — accessible from Replit with no blocking
- **Auth**: Challenge token from `enc-dec.app/api/enc-hexa` + random 32-byte hex key
- **Decrypt**: POST `enc-dec.app/api/dec-hexa` with `{text, key}` — must include `key` field or returns 400

## Flow

1. Generate random 32-byte hex key: `randomBytes(32).toString("hex")`
2. GET `enc-dec.app/api/enc-hexa` with headers including `X-Api-Key: <key>`, `X-Fingerprint-Lite: e9136c41504646444` → `{result: {token}}`
3. Add `X-Cap-Token: <token>` to headers
4. GET `theemoviedb.hexa.su/api/tmdb/movie/{tmdbId}/images` OR `...tv/{tmdbId}/season/{s}/episode/{ep}/images` → encrypted text
5. POST `enc-dec.app/api/dec-hexa` with `{text: encrypted, key}` → `{result: {sources: [{server, url}]}}`
6. Sources have HLS `.m3u8` URLs from Cloudflare Workers CDN

## Result structure

```json
{"sources": [{"server": "charlie", "url": "https://nxt.cfw69.workers.dev/s/...m3u8"}, ...]}
```

No subtitles in response (just sources array).

## Integration in animation.ts

- Site key: `"hexa"` in scrapeAnimCached
- Wraps each source URL with hls-proxy (needed for relative segment resolution)
- Ref: `https://hexa.su/`
- `randomBytes` import added from `node:crypto`
- Returns 2–3 servers per request (charlie, foxtrot, etc.)

## Confirmed working (tested 2026-06-20)

- Spy x Family Movie (TMDB 976823) → 2 HLS sources
- Attack on Titan S1E1 (TMDB 1429) → 3 HLS sources

**Why:** New reliable TMDB-native source adding redundancy to animation section alongside VidLink/Videasy/Vyla/StarCima.
