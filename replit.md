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
  - `pages/Watch.tsx` — main watch page with native HLS/MP4 player
  - `pages/Home.tsx`, `Search.tsx`, `Details.tsx` — other pages
- `artifacts/api-server/src/routes/anime.ts` — ALL scraper logic (1200+ lines)
  - AnimeLek, MitAnime scrapers + video extractor

## Architecture decisions

- **No external iframes ever** — all episodes play via native `<video>` element with HLS.js or MP4 src
- **Server-side scraping** — API fetches embed pages and extracts direct HLS/MP4 URLs
- **p,a,c,k,e,d unpacker** — server-side JS unpacker for obfuscated player code (uqload, etc.)
- **Cloudflare detection fix** — only block on `"just a moment"` + `"cf_chl_"`, NOT `"challenge-platform"` or `"ray id:"` (those appear on ALL CF-proxied pages)
- **Multi-source fallback** — auto-play tries all sources sequentially; dead/incompatible sources marked visually

## Product

- Homepage with trending anime from AniList
- Arabic anime search
- Details page with episode list
- Watch page: fetches sources from AnimeLek + MitAnime in parallel (19+ sources for popular anime)
- Native video player with HLS/MP4 support; auto-play tries servers one by one
- Server status badges (testing/ok/dead/incompatible)

## User preferences

- Arabic UI throughout (RTL, Cairo font)
- Play ONLY in internal player — no external iframes ever
- Filter non-working/dead servers automatically

## Gotchas

- AnimeLek uses `challenge-platform` Cloudflare JSD script on ALL pages — do NOT use it as a CF block indicator
- AnimeLek episode URL format: `${ALEK_BASE}/episode/${slug}-${ep}-الحلقة/`
- MitAnime, WitAnime (403 server-side), anime4up, animeblkom also scraped but WitAnime blocks server-side
- Most embed players (ok.ru, megamax, uptostream, vidbm) use client-side JS — can't extract server-side
- uqload and similar packed sites CAN be extracted via `unpackPacked()` (p,a,c,k,e,d format)
- AniList API used for anime metadata, cover images, episode counts
- Slug resolution: use romaji title (from AniList) for best slug matching on Arabic sites

## Pointers

- See the `pnpm-workspace` skill for workspace structure, TypeScript setup, and package details
