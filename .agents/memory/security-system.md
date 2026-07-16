---
name: Security system (token auth + URL encryption)
description: Multi-layer security protecting API endpoints and video URLs from scrapers/bots
---

## Architecture

### Layer 1: Token Authentication (blocks bots)
- `POST /api/auth/anon-token` → issues 5-min HMAC-signed token `{iat}.{exp}.{sig}`
- Token required on: `/api/anime/fetch-source` + `/api/animation/sources-stream`
- Frontend: `getAppToken()` in `src/lib/appToken.ts` — fetches + caches token, auto-refreshes
- Watch.tsx: adds `X-App-Token` header to all fetch-source calls
- AnimationWatch.tsx: adds `_tok` query param to EventSource URL (headers not supported)
- Rate limit on token endpoint: 20/min per IP
- Rate limit on protected endpoints: 120/min per IP

### Layer 2: URL Encryption (hides CDN URLs)
- All proxy URL params (`url`, `ref`) encrypted with AES-256-CBC before sending to browser
- Encryption: `encryptParam(plain) → hex string (IV + ciphertext, 64+ hex chars)`
- Decryption: `decryptParam(hex) → plain URL`
- `isEncrypted(s)`: returns true if string is 64+ hex chars NOT starting with http or /
- `encryptProxyUrl(proxyUrl)`: encrypts `url` and `ref` params in `/api/anime/*` proxy URLs
- Applied in: `sendSrc()` (SSE stream) + `fetch-source` responses
- Decoded in: `hls-proxy`, `video-proxy`, `seg-proxy` handlers at start
- `rewriteM3u8` also encrypts seg-proxy URLs

### Key files
- `artifacts/api-server/src/lib/security.ts` — all crypto primitives + rate limiter
- `artifacts/api-server/src/routes/authToken.ts` — token endpoint
- `artifacts/api-server/src/app.ts` — protection middleware (after authToken router)
- `artifacts/anime-scraper/src/lib/appToken.ts` — frontend token manager

### APP_SECRET
- Stored as env var `APP_SECRET` (shared environment)
- 64-char hex string; padded/sliced to 32 bytes for AES key
- Never exposed to browser

### Backwards compatibility
- Proxy handlers accept both plain AND encrypted `url`/`ref` params
- Cached sources with plain URLs (from before this change) still work
- `isEncrypted()` check before decryption prevents double-decryption

**Why:** Prevents bots/scrapers from calling the API directly and stealing video CDN URLs.
**How to apply:** Any new protected endpoint → add to PROTECTED_PATHS in app.ts; any new proxy URL construction → call encryptProxyUrl() before sending via SSE/JSON response.
