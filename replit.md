# Nova Anime

تطبيق بث أنمي عربي يجمع مصادر من مواقع متعددة ويُشغّلها في مشغّل داخلي فقط (HLS/MP4 native).

## Run & Operate

- `pnpm --filter @workspace/api-server run dev` — run the API server (port 8080)
- `pnpm --filter @workspace/anime-scraper run dev` — run the frontend (dynamic port)
- `pnpm run typecheck` — full typecheck across all packages
- `pnpm run build` — typecheck + build all packages

## Stack

- pnpm workspaces, Node.js 24, TypeScript 5.9
- Frontend: React + Vite + Tailwind CSS + Framer Motion
- API: Express 5, esbuild bundle
- No DB required — all data fetched live from AniList GraphQL + Arabic anime sites

## Where things live

- `artifacts/anime-scraper/src/` — React frontend
  - `pages/Watch.tsx` — main watch page with NativeVideoPlayer + EmbedPlayer
- `artifacts/api-server/src/routes/anime.ts` — ALL scraper logic (2300+ lines)
  - AnimeLek, MitAnime scrapers + video extractor
  - HLS proxy (`/api/anime/hls-proxy`, `/api/anime/seg-proxy`)

## Architecture decisions

- **No external iframes ever** — all episodes play via native `<video>` element with HLS.js or MP4 src
- **Server-side scraping** — API fetches embed pages and extracts direct HLS/MP4 URLs
- **p,a,c,k,e,d unpacker** — server-side JS unpacker for obfuscated player code (uqload, etc.)
- **HLS Proxy** — `/api/anime/hls-proxy?url=&ref=` fetches m3u8 server-side + rewrites all segment URLs to `/api/anime/seg-proxy`. Browser NEVER touches CDN → CORS completely bypassed.
- **Segment Proxy** — `/api/anime/seg-proxy?url=&ref=` proxies TS segments + nested m3u8 to browser.
- **Cloudflare detection fix** — only block on `"just a moment"` + `"cf_chl_"`, NOT `"challenge-platform"` or `"ray id:"`
- **Multi-source fallback** — auto-play tries all sources sequentially; dead/incompatible sources marked visually
- **EmbedPlayer** — full-screen iframe + overlay controls for sources that block server-side extraction

## Product

- Homepage with trending anime from AniList
- Arabic anime search
- Details page with episode list
- Watch page: fetches sources from AnimeLek + MitAnime in parallel
- Native video player with HLS/MP4 via server proxy; auto-play tries servers one by one
- Server status badges (testing/ok/dead/incompatible)

## User preferences

- Arabic UI throughout (RTL, Cairo font)
- Play ONLY in internal player — no external iframes ever
- Filter non-working/dead servers automatically

## What CAN be extracted server-side (direct URL)

- **uqload.net** — p,a,c,k,e,d packed JS → HLS m3u8 on strm2.uqload.is
- **yourupload** — direct MP4 on vidcache.net

## What CANNOT be extracted (blocks server requests → EmbedPlayer iframe)

- uptostream, vidbm, vadbam, playerwish, megamax — block all server-side requests
- AllAnime API — now returns `NEED_CAPTCHA` for episode sources
- mp4upload — files frequently deleted from server

## Gotchas

- AnimeLek uses `challenge-platform` Cloudflare JSD script on ALL pages — do NOT use it as a CF block indicator
- AnimeLek episode URL format: `${ALEK_BASE}/episode/${slug}-${ep}-الحلقة/`
- AnimeLek movie URL: `${slug}-الفيلم` or `/anime/${slug}/`
- HLS proxy rewrites segment URLs to root-relative `/api/anime/seg-proxy?...` — HLS.js resolves against manifest origin
- AniList API used for anime metadata, cover images, episode counts
- Slug resolution: use romaji title (from AniList) for best slug matching on Arabic sites

## Pointers

- See the `pnpm-workspace` skill for workspace structure, TypeScript setup, and package details
