---
name: CinePro self-hosted service (install/usage reference)
description: How CinePro (cinepro-org/core) is installed and run as a local pm2 service on the VPS, kept for reference after removing it as an active animation source.
---

## What it is
`cinepro-org/core` (`@cinepro/core`) — OMSS-compliant Node.js 20+ scraping backend, TMDB-native.
Aggregates ~14+ providers (VidSrc, VidApi, Icefy, FshareTV, VixSrc, etc.) for movie/TV streams — not anime-specific.

## Install (on VPS)
```bash
git clone https://github.com/cinepro-org/core /opt/cinepro
cd /opt/cinepro
npm install
```
`.env` (in `/opt/cinepro/.env`):
```
PORT=3000
HOST=0.0.0.0
NODE_ENV=production
CORS_ORIGIN=*
STREMIO_ADDON=false
MCP_ENABLED=false
INTERNAL_DEBUG=false
TMDB_API_KEY=<tmdb_v3_key>
TMDB_CACHE_TTL=86400
CACHE_TYPE=memory
```
Build + run: `npm run build` (tsc → `dist/server.js`), then run via pm2:
```bash
pm2 start dist/server.js --name cinepro --cwd /opt/cinepro
pm2 save
```

## API shape (as consumed by animation.ts before removal)
- Movie: `GET http://localhost:3000/v1/movies/{tmdbId}`
- TV:    `GET http://localhost:3000/v1/tv/{tmdbId}/seasons/{season}/episodes/{epNum}`
- Response: `{ sources: [{ provider, quality, url }], subtitles: [...] }`
- Some `url` values are internally proxied as `/v1/proxy?data=<json-encoded-{url}>` — must be decoded to get the real URL.
- VidApi-provided URLs are HLS (`.m3u8`) but use non-standard paths (`/pl/`, `/playlist/`) — detect by provider name, not just URL extension.

## Why it was removed as an active source (2026-07)
Removed by user request from the animation section's live scraping list (`scrapeAnimCached("cinepro", …)` in `animation.ts`). The pm2 process (`cinepro`, `/opt/cinepro`) is still running on the VPS but no longer called by the app — kept only for potential future reintegration. Delete/stop the pm2 process separately if VPS resources need reclaiming.
