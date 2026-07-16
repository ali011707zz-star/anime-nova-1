---
name: Dulo.tv Integration
description: Dulo.tv multi-provider HLS aggregator — API key, confirmed providers, session cache pattern
---

## Dulo.tv Source Integration

**Base URL:** https://dulo.tv  
**API Key:** configured via hardcoded constant in anime.ts/animation.ts (sourced from public stream-api repo)

### Confirmed Working Providers (tested VPS 2026-07-03):
- `vidrock` — works for TV anime (tested Demon Slayer S3E1, JJK S2E1)
- `purstream` — works for TV anime (same tests)

### NOT Working:
- event-edge, uniquestream, videasy, vixsrc, vidnest, xpass — all return empty

### Session Pattern:
- GET /api/session → Set-Cookie header → reuse for 7h (server TTL is 8h)
- anime.ts: module-level `_duloCookie` + `getDuloSession()`
- animation.ts: module-level `_duloAnimCookie` + `duloGetSession()` (separate same pattern)

### API Pattern:
GET /api/sources/call?type=tv&provider={prov}&tmdb={tmdbId}&season={s}&episode={e}
Headers: X-API-Key, Authorization: Bearer {key}, Cookie: {session}
Response: { sources: [{ url, type, title }] }

**Why:** Only new confirmed-working source found across all 7 repos analyzed.
