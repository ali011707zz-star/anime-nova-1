---
name: API Security Architecture
description: Multi-layer API security setup for Nova Anime — tokens, client ID, rate limiting
---

# Nova Anime API Security

## Architecture (3 layers)

### Layer 1 — Helmet (HTTP headers)
- `helmet({ contentSecurityPolicy: false, crossOriginEmbedderPolicy: false })`
- Added in `app.ts` before CORS

### Layer 2 — Rate Limiting (in-memory, no external package)
- All `/api/anime/` + `/api/animation/` + proxy routes: 300 req/min per IP
- Protected sensitive routes: 80 req/min per IP (stricter)
- Token endpoint: 20 req/min per IP
- `checkRateLimit()` in `lib/security.ts`

### Layer 3 — Token + Client-ID (sensitive routes only)
Protected: `sources-stream`, `fetch-source`, `extract-video`, `animation/sources-stream`
NOT protected (video player calls directly): `hls-proxy`, `seg-proxy`, `video-proxy`

**Client-ID validation (`X-Nova-Client` header OR `_client` query param):**
- `nova-anime-mobile-v1` — Expo mobile app
- `nova-anime-web-v1` — web frontend
- Validated in `lib/security.ts` `validateClientId()`

**Token flow:**
1. App calls `POST /api/auth/anon-token` → gets HMAC-SHA256 signed token (5-min TTL)
2. Token sent as `X-App-Token` header or `_tok` query param (for SSE/EventSource)
3. Server validates with `validateAnonToken()` — timing-safe comparison

## APP_SECRET
- Stored as `APP_SECRET` env var (shared environment)
- Used for HMAC-SHA256 token signing + AES-256-CBC URL encryption
- Fallback in code: `"anime-nova-default-change-me-aabbccdd"` — MUST set env var

## Mobile App (nova-mobile)
- `utils/secureApi.ts` — `secureFetch()` + `secureStreamFetch()`
- Token cached in `expo-secure-store` (native) / `AsyncStorage` (web)
- Pre-warmed on app start in `AppContext.tsx`

## Web Frontend (anime-scraper)
- `lib/appToken.ts` — `getAppToken()`, `authHeaders()`, `authQueryParam()`
- EventSource SSE passes `_tok` + `_client` as query params
- fetch calls use `authHeaders()` which includes both headers

**Why:** Prevent unauthorized scraping of the API; add friction for reverse engineers; protect scraper logic without breaking video playback.
**How to apply:** Any new protected route → add to `PROTECTED_PATHS` in `app.ts`.
