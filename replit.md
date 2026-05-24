# Nova Anime

تطبيق بث أنمي عربي يجمع مصادر من 3 مصادر متوازية ويُشغّلها في مشغّل داخلي.

المصادر الفعّالة: shahiid-anime.net (عربي) · animelek.top (عربي) · AnimeGG (إنجليزي) · animedar.net (عربي)

## Run & Operate

- `pnpm --filter @workspace/api-server run dev` — run the API server (port 8080)
- `pnpm --filter @workspace/anime-scraper run dev` — run the frontend (dynamic port)
- `pnpm run typecheck` — full typecheck across all packages
- `pnpm run build` — typecheck + build all packages

## Stack

- pnpm workspaces, Node.js 24, TypeScript 5.9
- Frontend: React + Vite + Tailwind CSS + Framer Motion
- API: Express 5, esbuild bundle
- No DB required — all data fetched live from AniList GraphQL + shahiid-anime.net + animegg.org

## Where things live

- `artifacts/anime-scraper/src/` — React frontend
  - `pages/Watch.tsx` — main watch page with NativeVideoPlayer + EmbedPlayer
- `artifacts/api-server/src/routes/anime.ts` — ALL scraper logic (~2200 lines)
  - Shahiid-anime.net scraper (search → seasons → episodes → AJAX servers)
  - AnimeGG scraper (search → episode page → embed extraction → direct MP4)
  - AnimeLek.top scraper (search → series → episode → `data-embed` servers)
  - AnimeDar.net scraper (search → series page → `ul-server-position` → buildAnimestreamEmbed)
  - AllAnime episode video sources (GraphQL → base64-decoded URLs)
  - Anime4up.info scraper (search → episode page → iframe extraction)
  - AnimePhoenix.io scraper (search → episode page → iframe extraction)
  - MyAnime.fan scraper (search → episode page → iframe extraction)
  - AnimeKayan.com scraper (JSON API search → episode sources)
  - Video extraction engine (parseVideoUrl, extractVideoDeep, etc.)
  - HLS proxy (`/api/anime/hls-proxy`, `/api/anime/seg-proxy`)
- `scripts/src/scrapers/multi-site-scraper.ts` — original multi-site scraper prototype (6 sources, not used directly)

## Architecture decisions

- **Dual source**: shahiid-anime.net (Arabic dub/sub) + AnimeGG (global)
- **Parallel scraping** — both scrapers run via `Promise.allSettled` simultaneously
- **Immediate send** — embed URLs sent immediately, deep extraction fires in background
- **Server-side scraping** — API fetches embed pages and extracts direct HLS/MP4 URLs where possible
- **AJAX server fetch** — shahiid uses `action=codecanal_ajax_request` POST to get iframe URLs per server button
- **extractVideoDeep** — multi-hop iframe follower → extracts real HLS m3u8 / MP4 URL
- **p,a,c,k,e,d unpacker** — server-side JS unpacker for obfuscated player code
- **Cloudflare detection** — only block on `"just a moment"` + `"cf_chl_"`, NOT `"challenge-platform"` or `"ray id:"`
- **No position fallback** — if episode not found by number in slug → return null (no wrong episode)

## AnimeGG scraper flow

1. **Search**: GET `/search/?q={title}` → extract series slug from `href="/series/{slug}"` + title similarity match
2. **Episode URL**: try `/{slug}-episode-{N}` first
3. **Prefix fallback**: if 404/no embeds, fetch `/series/{slug}` page → extract all `/{prefix}-episode-N` patterns → try each prefix for target episode (handles cases like AoT where sub uses "shingeki-no-kyojin" vs series slug "attack-on-titan")
4. **Embed extraction**: fetch `/embed/{id}` → parse `videoSources` JS array → extract direct MP4 URL
5. **Labels**: first embed = "مدبلج" (dubbed), second = "مترجم" (subbed)

## AnimeGG gotchas

- Episode slug prefix ≠ series slug for some anime (e.g. AoT: sub at `/shingeki-no-kyojin-episode-N`)
- Direct MP4 URL (`/play/{id}/video.mp4?for=...`) may be IP-tied → embed fallback always included
- Typically 2 embeds per episode page (dubbed + subbed)
- `videoSources` JS array: `var videoSources = [{file: "/play/.../video.mp4?for=...", label: "480p"}]`

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

- **AnimeGG** — direct MP4 via `videoSources` JS array
- **sendvid.com** — direct MP4 via parseMegamax patterns
- **streamtape.com** — direct MP4 via parseStreamtape
- **streamwish / filemoon** — HLS m3u8 via parseStreamwish

## What CANNOT be extracted (sends as embed iframe)

- vidbm, uptostream, playerwish, wishfast — block server requests → send as embed
- share4max — blocks extraction → send as embed
- vidmoly.biz / vidmoly.to — Cloudflare Turnstile on all embed pages → embed-only
- asnwish.com — Cloudflare-protected → embed-only

## animedar.net scraper flow

1. **Search**: GET `/?s={query}` → parse `<a itemprop="url" title="{title}">` anchors → similarity match
2. **Series page**: fetch `/{slug}/` → parse `<ul class="ul-server-position{N}">` per episode
3. **Episode index**: divv11/ul-server-position index = episode N-1 (0-based); check `#IDSB1` label to detect descending order
4. **Server button**: `<li source="ani" type="{type}" data="{id}" quality-data="{q}">`
5. **URL build**: `buildAnimestreamEmbed(type, data)` → embed URL by type

## animestream server type → embed URL mapping

- `vidmoly` → `https://vidmoly.biz/embed-{id}.html` (embed-only, Turnstile)
- `asnwish` → `https://asnwish.com/embed/{id}` (embed-only)
- `streamwish` → `https://streamwish.to/e/{id}` (extractable via parseStreamwish)
- `filemoon` → `https://filemoon.sx/e/{id}` (extractable via parseStreamwish)
- `vidhide` → `https://vidhide.com/e/{id}` (extractable via parseMegamax)
- `streamlare` → `https://streamlare.com/v/{id}` (embed-only)
- Dead (skip): `mega`, `4shared`, `drive`, `ok`, `uqload`, `fembed`, `videa`, `doodstream`, `mailru`, `yourupload`

## eta.animerco.org — BLOCKED

- Cloudflare managed challenge on ALL endpoints (search, RSS, WP JSON)
- Cannot be scraped server-side without Puppeteer/FlareSolverr
- Not implemented

## anime-arabe.com — NOT SCRAPABLE

- Next.js SPA + Clerk authentication on all API routes
- Requires browser execution (Playwright) to access content
- Not implemented

## API Endpoints

- `GET /api/anime/sources-stream?title=&english=&ep=` — SSE stream of sources from shahiid + AnimeGG in parallel
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
- seenUrls dedup key = `src.directUrl || src.url` on both server and frontend

## User preferences

- Arabic UI throughout (RTL, Cairo font)
- Play ONLY in internal player — no external iframes ever
- Filter non-working/dead servers automatically
