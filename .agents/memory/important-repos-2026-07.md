---
name: Important GitHub repos — July 2026 batch
description: Repos with useful stream resolvers and CF bypass tools analyzed July 12 2026; defer integration to later session.
---

# Important Repos — July 2026 Analysis Batch

## HIGH PRIORITY — Stream Resolvers

### vidfast-pro-stream-resolver (sharoon7171)
- **URL**: https://github.com/sharoon7171/vidfast-pro-stream-resolver
- **What**: Resolves vidfast.pro HLS server-side — loads webpack bundle in `happy-dom + node:vm`, calls `__playerDecrypt` from the real bundle. No Playwright.
- **Why important**: Current VidFast in anime.ts uses hardcoded AES keys that rotate. This approach extracts keys dynamically from the live bundle → more resilient.
- **Key files**: `src/vidfast/page.js`, `src/player/runtime.js`, `src/player/sandbox.js`, `src/resolve/stream.js`
- **API**: GET `/api/resolve?type=movie&id={tmdbId}` → NDJSON stream of sources
- **Deps**: happy-dom, hls.js, dashjs (no Playwright)

### cinesrc-stream-resolver (sharoon7171)
- **URL**: https://github.com/sharoon7171/cinesrc-stream-resolver
- **What**: Resolves cinesrc.st — discovers Next.js server-action IDs dynamically from bundles, runs two-stage JSDOM PoW challenge, forges per-provider tokens, decrypts r1 responses.
- **Why important**: Current CineSrc microservice (localhost:13004) hits PoW challenge. This resolver handles it natively.
- **Stars**: 1

### ok.ru-direct-resolver (sharoon7171)
- **URL**: https://github.com/sharoon7171/ok.ru-direct-resolver
- **What**: HTTP/2 embed fetch → brace-balance JSON decode → parallel okcdn.ru mirror race → HLS qualities. Zero npm runtime dependencies.
- **Why important**: Current ok.ru extraction depends on `apps-player.com/getData.php` for cookies. This works standalone.
- **Key logic**: `src/embed.js` (metadata decode), `src/hls.js` (mirror race), `src/http/client.js` (HTTP/2 + Chrome UA)

### live-api-streampk (vyla-entertainment)
- **URL**: https://github.com/vyla-entertainment/live-api-streampk
- **What**: Resolves and proxies HLS from streamed.pk / embed.st (sports/golf embeds). Node.js. By sharoon7171 originally.
- **Why important**: streamed.pk not currently in Anime NOVA but useful for live sports/events section if added later.
- **Stars**: 2, Dockerfile included

## HIGH PRIORITY — CF Bypass Tools

### trawl (germondai) ⭐330
- **URL**: https://github.com/germondai/trawl
- **What**: Self-hosted FlareSolverr v2 replacement. Camoufox Firefox (patched at C++ level). 4-tier: plain HTTP → Redis cached session → fresh CF solve → residential proxy.
- **RAM requirement**: mem_limit 3GB (prod), BROWSER_POOL_SIZE=3 default. Needs 4GB VPS minimum.
- **Speed**: Tier1 <100ms, Tier2 ~500ms (cached), Tier3 4-15s, Tier4 15-45s
- **Why important**: Better than current captcha-solver-global (CloakBrowser/JS patches). Camoufox patches at C++ = undetectable.
- **Docker**: `docker-compose.yml` ready, Redis required. Port 8191.
- **Caveat**: Needs VPS RAM upgrade to 4GB before installing.

### chromiumfish (arman-bd) ⭐91
- **URL**: https://github.com/arman-bd/chromiumfish
- **What**: Stealth Chromium fork with fingerprint patches at C++ (not JS). Drop-in Playwright replacement. AI agent + MCP server mode.
- **Binary size**: 168MB compressed / ~500MB installed (Linux x64)
- **Install**: `pip install chromiumfish` or `npm install chromiumfish`
- **Why important**: Drop-in replacement for CloakBrowser in captcha-solver-global. Harder to detect than JS-patched Chromium.
- **No built-in pool/server** — needs custom pool code to use as a microservice.

## MEDIUM — Universal Player

### universal-embed-player (abdul-karim-mia)
- **URL**: https://github.com/abdul-karim-mia/universal-embed-player
- **What**: Dependency-free embed resolver + player. Supports YouTube, Vimeo, Wistia, Cloudflare Stream, FastPix, JW Player, HLS, DASH, MP4. React + Vue adapters.
- **Why important**: Useful for animation section (YouTube trailers, platform-hosted content). Not useful for piracy sources.
- **Install**: `npm install universal-embed-player`

## SKIP

- `alirezaghnz/movie-tracker-native` (IronBranch) — Expo app, TMDB only, no new sources
- `ZioSHik/kinopub-gui` — Russian kino.pub, requires paid subscription, unrelated
- `Johell1NS/browser-search` — AI agent skill (Camoufox+SearXNG), not a CF bypass service
- `strzero/anime-live-db` — Chinese concert events DB, unrelated to anime streaming
