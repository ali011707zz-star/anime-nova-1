---
name: Moviz-Time integration
description: moviz-time.vip added as a new anime+animation source; page-structure quirks and the button-regex technique used to extract episode servers.
---

Moviz-Time (moviz-time.vip, WordPress "pinthis"-style theme) was added as a
new scraper in both `anime.ts` (`getMovizTimeSources`, `site: "moviz_time"`)
and `animation.ts` (`moviz_time_anim`, calling the anime-side function via
internal `/api/anime/fetch-source?site=moviz_time`). Added to
`HIDDEN_RESOLVE_EMBED_SITES` in `anime.ts` since its embed hosts
(mystream.to, vidbob.com, openload.co, ya.kooora.best, etc.) are never
mega/vidmoly — passthrough relies on the site-based allowlist, same mechanism
as mycima. Also added to `animation.ts`'s `ANIM_SOURCE_ALLOWLIST`.

**Two very different page structures — do not assume one applies to both:**
- **Movies**: single WP post; servers are `<div class="single_tab"
  data-tab-id="server_00N" is-iframe="true"><iframe data-src="URL">` blocks —
  extract via `<iframe[^>]*\sdata-src="([^"]+)"` regex, no episode numbering
  needed (grab all, cap at ~6).
- **TV/anime series**: no per-episode API. A show's "hub" page and its
  numbered season-ish pages are found via HTML search (`/?s=title`), but the
  the site paginates *very* long series into 2-3 "part" pages that are named
  like seasons in the URL slug (e.g. "الموسم-الأول" vs "الموسم-الاول" — a
  single diacritic/hamza difference) yet actually correspond to arbitrary,
  **non-overlapping episode-number ranges** (confirmed for Bleach: one page
  slug covers ep 1-122, another covers 123-244, the "base" hub page covers
  245-366). **A similarity-based "pick the single best-matching link" search
  strategy will silently fail for ~2/3 of episodes** — the implementation
  must try every scored candidate link (sorted by title-similarity) until one
  page's episode-button set contains the target episode number.
- Each TV page's episode buttons follow: `<button class='ep-item'
  onclick="...href='URL';...">\s*الحلقة\s*(\d+)` — this regex was verified
  against real captured HTML (242 button matches spanning eps 123-244 on one
  test page).

**Confirmed working end-to-end 2026-07-13** via `sources-stream` (not
`fetch-source`, which has its own temporary site allowlist unrelated to
Moviz-Time's own gating — see below) for: Bleach movie (3 embed servers) and
Bleach ep123 (1 server via the correct "part" page after trying candidates).

**Gotcha:** `/api/anime/fetch-source` (the on-demand single-scraper endpoint)
has its own separate `ANIME_SOURCE_ALLOWLIST` temporary restriction (set
2026-07-13, currently `kawaii/anslayer/anineko/anikoto/hianime/animewitcher/
animeify` only) that silently returns `{sources:[]}` for any other site,
including moviz_time — this is unrelated to whether a scraper itself works.
Always test new anime-section scrapers via `/api/anime/sources-stream`
(the parallel all-scrapers endpoint) rather than `fetch-source` unless the
site is in that allowlist too.
