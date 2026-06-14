# Anime NOVA

تطبيق بث أنمي عربي يجمع مصادر من 4 مصادر متوازية ويُشغّلها في مشغّل داخلي.

المصادر الفعّالة: **shahiid-anime.net (عربي)** · **animelek.top (عربي)** · **animedar.net (عربي)** · **seepanel.top/SeeDrama APK (عربي مدبلج)** · **kawaii-anime.com (ياباني مترجم)** · **AniKoto/megaplay.buzz (ياباني مترجم + ترجمة VTT)** · **AniNeko/anineko.to (ياباني مترجم HLS متعدد الجودات)** · **anime-phoenix.com (1080p MKV مباشر عبر curl_cffi)** · **Videasy/api.videasy.to (TMDB-native متعدد الجودات + ترجمة عربية)** · **VidLink/vidlink.pro via enc-dec.app (TMDB-native HLS)** · **LordFlix/snowhouse.lordflix.club via enc-dec.app (TMDB-native HLS)** · **Vyla/missourimonster-vyla.hf.space (TMDB-native متعدد CDN)** · **StarCima/starcima.com vidzee (TMDB-native HLS مباشر)**

مصادر الأنيميشن: **Videasy (api.videasy.to) — TMDB-native HLS + ترجمة عربية** · **VidLink via enc-dec.app — TMDB-native HLS + ترجمة عربية** · **Vyla · StarCima · aflaam · EzVidAPI · SeePanal · ArabSeed · StarlDima**

## Run & Operate

- `pnpm --filter @workspace/api-server run dev` — run the API server (port 8080)
- `pnpm --filter @workspace/anime-scraper run dev` — run the frontend (dynamic port)
- `pnpm run typecheck` — full typecheck across all packages
- `pnpm run build` — typecheck + build all packages

## Stack

- pnpm workspaces, Node.js 24, TypeScript 5.9
- Frontend: React + Vite + Tailwind CSS + Framer Motion
- API: Express 5, esbuild bundle
- No DB required — all data fetched live from AniList GraphQL + 4 scraper sources

## Where things live

- `artifacts/anime-scraper/src/` — React frontend
  - `pages/Watch.tsx` — main watch page (NativeVideoPlayer + IframePlayer)
- `artifacts/api-server/src/routes/anime.ts` — ALL scraper logic
  - Shahiid-anime.net scraper (search → seasons → episodes → AJAX servers)
  - AnimeLek.top scraper (search → series → episode → `data-embed` servers)
  - AnimeDar.net scraper (search → series page → `ul-server-position` → buildAnimestreamEmbed)
  - Anime-Phoenix.com scraper (search → episodes → `<source src>` or `data-server` base64)
  - AniKoto scraper via megaplay.buzz (AniList ID direct → getSources → HLS + VTT subtitles)
  - AniNeko scraper via anineko.to (search → slug → ep page → data-video embeds → HLS)
  - Video extraction engine (parseVideoUrl, extractVideoDeep, etc.)
  - HLS proxy (`/api/anime/hls-proxy`, `/api/anime/seg-proxy`)
- `scripts/src/scrapers/multi-site-scraper.ts` — original multi-site scraper prototype (not used directly)

## Architecture decisions

- **Quad source**: anime-phoenix.com (direct MKV/MP4) + shahiid-anime.net (Arabic) + animelek.top (Arabic) + animedar.net (Arabic)
- **Parallel scraping** — all 4 scrapers run via `Promise.allSettled` simultaneously
- **Immediate send** — embed URLs sent immediately, deep extraction fires in background
- **Server-side scraping** — API fetches embed pages and extracts direct HLS/MP4 URLs where possible
- **SSE-only** — Watch.tsx uses ONLY `sources-stream` SSE endpoint (no anipub-stream)
- **AJAX server fetch** — shahiid uses `action=codecanal_ajax_request` POST to get iframe URLs per server button
- **extractVideoDeep** — multi-hop iframe follower → extracts real HLS m3u8 / MP4 URL
- **p,a,c,k,e,d unpacker** — server-side JS unpacker for obfuscated player code
- **Cloudflare detection** — only block on `"just a moment"` + `"cf_chl_"`
- **No position fallback** — if episode not found by number in slug → return null (no wrong episode)
- **IframePlayer** — embed-only sources load in sandboxed iframe

## Anime-Phoenix.com scraper flow

1. **Search**: GET `/?s={title}` → parse `href="/animes/{slug}"` + title similarity match
2. **Series**: GET `/animes/{slug}/` → find episode links (numbered)
3. **Episode page**: fetch → parse `<source src="https://*.workers.dev/...mkv">` OR `data-server=base64` → JSON `{type:"direct", link:"..."}`
4. **Result**: directUrl set immediately, qualityRank=3 (highest)

## Shahiid-anime.net scraper flow

1. **Search**: POST `/wp-admin/admin-ajax.php` `action=data_fetch&keyword={title}` → `/series/` or `/anime/` URLs
2. **Seasons URL**: fetch series page → find `href="https://shahiid-anime.net/seasons/{slug}/"` (skip nav links)
3. **Episode list**: fetch `/seasons/{slug}/` — 20 episodes per initial load, match by number in slug
4. **Episode page**: fetch `/episodes/{ep-slug}/` → parse `.buttosn` elements with `data-post`, `data-serv`, `data-frameserver`
5. **Server AJAX**: POST `action=codecanal_ajax_request` → iframe HTML → extract src
6. **Extract video**: `extractVideoDeep(iframeUrl)` → direct HLS/MP4 URL

## Shahiid URL structure

- Series: `https://shahiid-anime.net/series/{slug}/` (old) or `serieses/{slug}/` (new)
- Seasons: `https://shahiid-anime.net/seasons/{slug}/` (old) or `seasonses/{slug}/` (new)
- Episodes: `https://shahiid-anime.net/episodes/{series}-الحلقة-{NN}/` (old) or `episodeses/` (new)
- Movies/OVAs: `https://shahiid-anime.net/anime/{slug}/` (video directly on page)
- Episodes per initial page: ~20 (site uses misha_loadmore AJAX, `posts_per_page: 54`)

## Shahiid critical bugs fixed

- Regex `episodeses?` → `episodes(?:es)?` (was matching wrong URLs)
- Seasons URL regex: skip nav links `/seasons/page/N/`, `/seasons/feed/` — use negative lookahead

## Server button HTML structure

```html
<a class="buttosn" data-serv="_server_movie_41363"
   data-frameserver='D7WXqVhQY0rPt'
   data-post="41363">
```

AJAX response: `<iframe src="https://share4max.com/iframe/D7WXqVhQY0rPt" ...>`

## What CAN be extracted server-side (direct URL)

- **anime-phoenix.com** — direct MKV/MP4 via `<source>` tag or `data-server` base64 JSON
- **streamtape.com** — direct MP4 via parseStreamtape
- **streamwish / filemoon** — HLS m3u8 via parseStreamwish

## What CANNOT be extracted (sends as embed iframe)

- vidbm, uptostream, playerwish, wishfast — block server requests → send as embed
- share4max — blocks extraction → send as embed
- vidmoly.biz / vidmoly.to — Cloudflare Turnstile on all embed pages → embed-only
- asnwish.com — Cloudflare-protected → embed-only
- megamax.me — embed-only

## Dead / Blocked sites (NOT implemented)

- animeblkom.net, anime3rb.com, animeiat.net — 000/403 errors
- witanime.cyou — Cloudflare challenge blocks all server requests
- anime4up.cam — JS challenge, blocks server
- eta.animerco.org — Cloudflare managed challenge on ALL endpoints
- anime-arabe.com — Next.js SPA + Clerk auth on all API routes
- animegg.org — removed (English-only, non-standard CDN ports blocked by Replit)

## API Endpoints

- `GET /api/anime/sources-stream?title=&english=&ep=` — SSE stream of sources (5+ Arabic scrapers)
- `GET /api/anime/probe?url=` — HEAD probe a direct URL
- `GET /api/anime/extract-video?url=` — multi-hop video extraction
- `GET /api/anime/translate?text=&from=&to=` — Google Translate proxy
- `GET /api/anime/test-embed?url=` — test if embed URL has video
- `GET /api/anime/proxy-embed?url=` — server-side embed proxy with ad removal
- `GET /api/anime/hls-proxy?url=&ref=` — HLS manifest proxy (CORS bypass)
- `GET /api/anime/seg-proxy?url=&ref=` — HLS segment proxy
- `GET /api/anime/video-proxy?url=&ref=` — MP4/video proxy (Range support for seeking)

## Watch page URL format

`/watch?anime={anilistId}&ep={N}&title={romaji}&english={english}`

## Gotchas

- shahiid URL pagination (`/page/2/`) returns 301 → only initial 20 eps loaded per season
- Episode number in slug: 1-9 = zero-padded (`01`-`09`), 10+ = plain (`10`, `55`, `100`)
- The `.buttosn` class (typo "buttosn" not "buttons") is the server button selector
- `data-_server_code_` and `data-is_film` are usually absent → send empty string in AJAX
- HLS proxy rewrites segment URLs to `/api/anime/seg-proxy?...`
- seenUrls dedup key = `src.directUrl || src.url` on both server and frontend
- DEAD_FILE_HOSTS includes file-upload.com (returns 404 for all embeds)
- anime-phoenix.com data-server may be plain base64 OR urlencoded+base64 — try both

## User preferences

- Arabic UI throughout (RTL, Cairo font)
- Play ONLY in internal player — no external iframes ever
- Filter non-working/dead servers automatically
