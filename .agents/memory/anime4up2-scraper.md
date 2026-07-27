---
name: Anime4up2 scraper quirks
description: w1.anime4up.rest scraper — HTTP 404 quirk, card HTML structure, episode URL patterns, fast-path strategy
---

## HTTP 404 for valid pages (critical)
w1.anime4up.rest returns **HTTP 404** for all episode pages even when content is correct (240KB+ with data-watch). `cfProxyGet` returns `null` when `!r.ok`, so normal `cfProxyGet` always fails. Fix: custom `a4up2Fetch` that calls CF proxy directly and accepts any status code (only rejects `x-cf-blocked: 1` header).

**Why:** WordPress quirk where episode URLs don't match WP routing rules but custom template renders them anyway.

## Card HTML structure
Search results use `<a href="URL" class="overlay" aria-label="Title">` — title is in `aria-label` attribute, NOT in a `<h3>` inside the `<a>`. Wrong regex: `inner.includes("<h3")`. Correct regex: `/<a[^>]*href="...anime\/[^"]+"[^>]*aria-label="([^"]+)"/gi`.

## Episode URL patterns
Two formats coexist on the same site:
- **Old**: `/episode/{english-slug}-الحلقة-{N}/` (e.g. `one-piece-الحلقة-1127/`) — 200 OK
- **New**: `/episode/انمي-{ar-slug}-{en-slug}-الحلقة-{N}-مترجمة/` — 404 with valid content

## Fast-path strategy (reduces 3 requests → 1)
Try direct URL construction in parallel first (using `toSlug(english/title)`) before doing search+series+episode. This cuts cold-start from 30s to 4-5s, fitting within the 7s SSE scraper timeout. Parallel `Promise.allSettled` on 6 candidates.

## Server list structure
Episode pages have `<li data-watch="EMBED_URL" class="ISActive">` inside `<ul id="episode-servers">`. Each `<li>` has label inside `<a>` tag (may contain nested `<span>` and `<noscript>`). Most servers are embeds (share4max, mega.nz, voe.sx, videa.hu). Only mega.nz/embed passes the iframe policy filter.

## Confirmed working (2026-06)
One Piece ep 1166 → 4 sources: 3× mega.nz/embed (HD/FHD/SD) + 1× Streamruby HLS via hls-proxy.
