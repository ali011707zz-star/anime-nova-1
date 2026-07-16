---
name: EncDecEndpoints research results 2026-06
description: Research results for smy778/EncDecEndpoints repo — what works vs blocked for anime+animation integration
---

## Sources Tested (June 2026)

### ✅ WORKING — Integrated

- **Hexa** (hexa.su/flixer.su): TMDB-native, CDN CORS *, Cloudflare Workers — see hexa-source.md

### ❌ BLOCKED — CDN IP-blocks Replit server

- **AnimeKai** (animekai.to): enc-dec.app/db/kai gives AniList→episode mapping (works), but ALL CDN mirrors blocked:
  - megaup.nl, megaup.live → 502 Bad Gateway
  - rapidshare.work, rapidshare.cc → 502 Bad Gateway
  - CF proxy (curl_cffi) also returns 502 (origin-side block, not CF challenge)
  - softsub = external VTT (translatable), sub = hardcoded EN — would have been ideal

### ❌ API BROKEN — stream endpoint issues

- **VidFast** (vidfast.pro): page fetch OK (200), servers list OK, but `POST stream/{data}` → 404 (route changed)
- **VidCore** (vidcore.net): same flow as VidFast, same issue

### ❌ REQUIRES BROWSER — token generation needs browser env

- **VidSync** (vidsync.xyz): `enc-vidsync` always returns 500 "InitTabs2 must be called before generating a token" — requires Cloudflare browser challenge

### ❌ COMPLEX CHALLENGE — not practical

- **CineSrc** (cinesrc.st): proof-of-work challenge with SHA-256 + JWT stages

### ❌ NO SEARCH API — content IDs only

- **OneTouchTV** (api3.devcorp.me): returns HLS + VTT subtitles when given internal slug, but no search/TMDB mapping endpoint
- **Abyss** (playhydrax.com): returns direct MP4 files when given content ID `?v=ID`, but no search API

### ℹ️ NOT RELEVANT

- **anicli-api** (vypivshiy/anicli-api): Russian anime sites only (anilibria, animego, etc.) — zero relevance for Arabic platform
- **kisskh** (kisskh.do): Korean drama only
- **yflix/1movies** (yflix.to): Similar CDN to AnimeKai (rapidshare), likely blocked

**Why:** Saved for reference to avoid re-researching the same sources in future sessions.
