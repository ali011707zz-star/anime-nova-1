---
name: Videasy + VidLink enc-dec integration
description: animation.ts Videasy/VidLink scraper via enc-dec.app free decryption API; CDN IP-block pattern and Arabic subtitle handling
---

## Pattern (confirmed working Jun 2026)

### enc-dec.app API (free, no auth)
- `POST https://enc-dec.app/api/dec-videasy` with `{text: blob, id: tmdbId}` → `{status:200, result:{sources,subtitles}}`
- `GET https://enc-dec.app/api/enc-vidlink?text={tmdbId}` → `{status:200, result: encryptedId}`

### Videasy (api.videasy.to)
- Servers: `mb-flix` (3 sources, 8KB blob), `cdn` (4 sources incl. 4K, 101KB blob), `downloader2` (3 MP4s, 27KB)
- Title must be **double URL-encoded**: `encodeURIComponent(encodeURIComponent(title))`
- Headers: `Origin: https://player.videasy.net`, `Referer: https://player.videasy.net/`
- Arabic subtitle lang code: `"ara"` (not `"ar"`) from `cc.boopigcdn.com` (HTTP 200, publicly accessible WEBVTT)
- Dead servers: `1movies` (225 bytes = too short), `superflix` (207 bytes = too short)
- CDN domains `joe.goldweather.net` and `server.digitalsun.app` → 403 from Replit datacenter IPs → send raw URL to browser (hls.js plays from user IP)

### VidLink via enc-dec.app
1. Encrypt TMDB ID: `GET enc-dec.app/api/enc-vidlink?text={tmdbId}`
2. Fetch: `GET vidlink.pro/api/b/movie/{encrypted}` or `.../tv/{encrypted}/{season}/{ep}`
3. Response: `{stream: {playlist: "https://storm.vodvidl.site/proxy/...", flags:["cors-allowed"], captions:[...]}}`
4. `storm.vodvidl.site` proxy is also 403 from server → send raw URL to browser (cors-allowed flag = browser can access)
5. Arabic caption lang code: `"ara"` from same `cc.boopigcdn.com`

**Why:** Both Videasy CDNs and VidLink proxy block Replit datacenter IPs (35.200.x.x range). Browser access from user's home IP works since CORS headers are present.

**How to apply:** In animation.ts, `sendSource(rawUrl, label, rawUrl, rawUrl, {subtitleUrl: araSub.url})` — no hls-proxy wrapping. The browser's hls.js fetches segments directly.
