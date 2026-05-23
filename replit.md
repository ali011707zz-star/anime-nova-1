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

- **Clean iframe player** — all sources play inside a fullscreen unrestricted iframe. No sandbox, no referrer restrictions. Each site uses its own native player. Controls auto-hide after 4s.
- **Server-side scraping** — API fetches embed pages and extracts direct HLS/MP4 URLs where possible
- **p,a,c,k,e,d unpacker** — server-side JS unpacker for obfuscated player code (uqload, etc.)
- **HLS Proxy** — `/api/anime/hls-proxy` + `/api/anime/seg-proxy` still exist in API but not used by frontend
- **Cloudflare detection fix** — only block on `"just a moment"` + `"cf_chl_"`, NOT `"challenge-platform"` or `"ray id:"`
- **Multi-source fallback** — maga/megamax prioritized first, then Phoenix (9), uqload (8), etc.
- **Source priority**: megamax/maga (10) → animePhoenix (9) → uqload (8) → anime7u/d000d (7) → voe (6) → wishfast (5)

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
