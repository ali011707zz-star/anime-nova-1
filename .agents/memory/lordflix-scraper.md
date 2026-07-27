---
name: LordFlix scraper
description: Integration with snowhouse.lordflix.club via enc-dec.app — both TV and movies confirmed working
---

# LordFlix Scraper

## The Rule
LordFlix uses enc-dec.app encryption (enc-lordflix / dec-lordflix). CDN requires Referer: lordflix.org/ with no CORS — always use hls-proxy.

## API Flow
1. Build URL: `https://snowhouse.lordflix.club/?title={encTitle}&type={movie|series}&year=&imdb=&tmdb={tmdbId}&server=Orion&[season=&episode=]`
2. GET `https://enc-dec.app/api/enc-lordflix?url={url}` → `{ url: signedUrl, sign }`
3. GET signedUrl with `Origin/Referer: https://lordflix.org/` → encrypted text
4. POST `https://enc-dec.app/api/dec-lordflix` with `{text, sign}` → `{ stream: [{id, type:"hls", playlist, captions}] }`
5. Wrap playlist in hls-proxy with `ref=https://lordflix.org/`

## CDN Details
- CDN domain: `ok.horseapples.cc`
- Requires Referer: `https://lordflix.org/` → 200 ✅; without → 403 ❌
- No CORS headers → must use hls-proxy (never send raw URL to browser)
- hls-proxy fetches m3u8 server-side with correct Referer, seg-proxy handles segments

## Coverage
- Movies: confirmed (Inception, etc.) ✅
- TV shows: confirmed (Cyberpunk Edgerunners s1e1) ✅
- Server "Orion" works reliably; other servers: Aqua, Draco, Berlin (Berlin had "no stream" for some movies)

## Other EncDecEndpoints Samples (reviewed but not added)
- hexa.su: TV works (2 sources alpha/echo), movies return 400; CDN ske.cfw69.workers.dev CORS *, but coverage is inconsistent
- vidsync.xyz: enc-vidsync returns status 500 (CF token generation failure)
- vidfast.pro: got server list but individual stream decryption fails (dec-vidfast decryption error)
- yflix.to/1movies: DNS blocked from Replit (ENOTFOUND)
- kisskh, abyss: need slug/content-ID lookup, not TMDB-native

**Why:** LordFlix is the only EncDecEndpoints source confirmed to deliver complete working HLS for both movies and TV via TMDB ID.

## Anime sources confirmed working (TMDB-native → anime.ts)
- Videasy: Attack on Titan TMDB ID 1429 → 9+ sources (360p/480p/720p/1080p)
- VidLink enc-dec: storm.vodvidl.site HLS → 1 source
- LordFlix: ok.horseapples.cc → 1 source per show
- Vyla: missourimonster-vyla.hf.space TV SSE → multiple CDN sources
- StarCima vidzee: workers.dev + cdn.1shows.app + hlcxm.com → 4-5 sources

## fetchAnimeTmdbId
- TMDB_KEY: public demo `8265bd1679663a7ea12ac168da84d2e8`
- Searches `/3/search/tv?query=` with English title first, romaji fallback
- Cache TTL: 6h in-memory Map (animeTmdbCache)
- Always uses season=1, ep=N for anime (each AniList entry = one season)
