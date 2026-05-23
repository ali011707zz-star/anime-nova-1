# Nova Anime

تطبيق بث أنمي عربي يجمع مصادر من موقع shahiid-anime.net ويُشغّلها في مشغّل داخلي فقط (HLS/MP4 native).

## Run & Operate

- `pnpm --filter @workspace/api-server run dev` — run the API server (port 8080)
- `pnpm --filter @workspace/anime-scraper run dev` — run the frontend (dynamic port)
- `pnpm run typecheck` — full typecheck across all packages
- `pnpm run build` — typecheck + build all packages

## Stack

- pnpm workspaces, Node.js 24, TypeScript 5.9
- Frontend: React + Vite + Tailwind CSS + Framer Motion
- API: Express 5, esbuild bundle
- No DB required — all data fetched live from AniList GraphQL + shahiid-anime.net

## Where things live

- `artifacts/anime-scraper/src/` — React frontend
  - `pages/Watch.tsx` — main watch page with NativeVideoPlayer + EmbedPlayer
- `artifacts/api-server/src/routes/anime.ts` — ALL scraper logic (~730 lines)
  - Shahiid-anime.net scraper (search → seasons → episodes → AJAX servers)
  - Video extraction engine (parseVideoUrl, extractVideoDeep, etc.)
  - HLS proxy (`/api/anime/hls-proxy`, `/api/anime/seg-proxy`)

## Architecture decisions

- **Single source: shahiid-anime.net** — Arabic anime site with series/episodes
- **Server-side scraping** — API fetches embed pages and extracts direct HLS/MP4 URLs where possible
- **AJAX server fetch** — shahiid uses `action=codecanal_ajax_request` POST to get iframe URLs per server button
- **extractVideoDeep** — multi-hop iframe follower → extracts real HLS m3u8 / MP4 URL
- **p,a,c,k,e,d unpacker** — server-side JS unpacker for obfuscated player code
- **Cloudflare detection** — only block on `"just a moment"` + `"cf_chl_"`, NOT `"challenge-platform"` or `"ray id:"`
- **No position fallback** — if episode not found by number in slug → return null (no wrong episode)

## Shahiid-anime.net scraper flow

1. **Search**: POST `/wp-admin/admin-ajax.php` `action=data_fetch&keyword={title}` → `/series/` or `/anime/` URLs
2. **Seasons URL**: replace `/series/` with `/seasons/` (or fetch series page to find link)
3. **Episode list**: fetch `/seasons/{slug}/` — 20 episodes per initial load, match by number in slug
4. **Episode page**: fetch `/episodes/{ep-slug}/` → parse `.buttosn` elements with `data-post`, `data-serv`, `data-frameserver`
5. **Server AJAX**: POST `action=codecanal_ajax_request` → iframe HTML → extract src
6. **Extract video**: `extractVideoDeep(iframeUrl)` → direct HLS/MP4 URL

## Shahiid URL structure

- Series: `https://shahiid-anime.net/series/{slug}/`
- Seasons: `https://shahiid-anime.net/seasons/{slug}/`
- Episodes: `https://shahiid-anime.net/episodes/{series}-الحلقة-{NN}-{suffix}/`
- Movies/OVAs: `https://shahiid-anime.net/anime/{slug}/` (video directly on page)
- Episodes per initial page: ~20 (site uses misha_loadmore AJAX, `posts_per_page: 54`)

## Server button HTML structure

```html
<a class="buttosn" data-serv="_server_movie_41363"
   data-frameserver='D7WXqVhQY0rPt'
   data-post="41363">
```

AJAX response: `<iframe src="https://share4max.com/iframe/D7WXqVhQY0rPt" ...>`

## What CAN be extracted server-side (direct URL)

- **sendvid.com** — direct MP4 via parseMegamax patterns
- **streamtape.com** — direct MP4 via parseStreamtape
- **streamwish / filemoon** — HLS m3u8 via parseStreamwish

## What CANNOT be extracted (sends as embed iframe)

- vidbm, uptostream, playerwish, wishfast — block server requests → send as embed
- share4max — blocks extraction → send as embed

## eta.animerco.org — BLOCKED

- Cloudflare managed challenge on ALL endpoints (search, RSS, WP JSON)
- Cannot be scraped server-side without Puppeteer/FlareSolverr
- Not implemented

## API Endpoints

- `GET /api/anime/sources-stream?title=&english=&ep=` — SSE stream of sources from shahiid
- `GET /api/anime/probe?url=` — HEAD probe a direct URL
- `GET /api/anime/extract-video?url=` — multi-hop video extraction
- `GET /api/anime/search?q=` — AllAnime search (metadata)
- `GET|POST /api/anime/resolve?title=` — AllAnime title resolution
- `GET /api/anime/translate?text=&from=&to=` — Google Translate proxy
- `GET /api/anime/test-embed?url=` — test if embed URL has video
- `GET /api/anime/proxy-embed?url=` — server-side embed proxy with ad removal
- `GET /api/anime/hls-proxy?url=&ref=` — HLS manifest proxy (CORS bypass)
- `GET /api/anime/seg-proxy?url=&ref=` — HLS segment proxy

## Gotchas

- shahiid URL pagination (`/page/2/`) returns 301 → only initial 20 eps loaded per season
- Episode number in slug: 1-9 = zero-padded (`01`-`09`), 10+ = plain (`10`, `55`, `100`)
- The `.buttosn` class (typo "buttosn" not "buttons") is the server button selector
- `data-_server_code_` and `data-is_film` are usually absent → send empty string in AJAX
- HLS proxy rewrites segment URLs to `/api/anime/seg-proxy?...`

## User preferences

- Arabic UI throughout (RTL, Cairo font)
- Play ONLY in internal player — no external iframes ever
- Filter non-working/dead servers automatically
