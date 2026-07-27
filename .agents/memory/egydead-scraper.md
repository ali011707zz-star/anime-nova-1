---
name: EgyDead scraper
description: EgyDead (tv9.egydead.live) scraper in animation.ts — CF blocking, site structure, AJAX servers limitation
---

## Key facts

**CF Blocking:** egydead.live blocks ALL Replit datacenter IPs AND cfProxy (curl_cffi) — both return 5KB CF challenge. Must use `orkestDirectGet()` (Orkestr EU relay) for all requests.

**Site structure:**
- Search: `/?s={query}` returns individual episode pages (not series pages)
- Episode URL pattern: `/episode/{animeslug}-e{N}/` (e.g. `/episode/one-piece-e1167/`)
- Also variants: `/episode/{slug}-e{N}-1/`, zero-padded numbers
- Search results: `<li class="movieItem"><a href="{url}">...<h1 class="BottomTitle">{title}</h1>`

**Critical limitation:** Video servers are loaded via JavaScript AJAX (`$('.serversList li:first-child').data('link')`). Static HTML has NO `data-link` attributes and NO server links. Only a YouTube trailer iframe is in the HTML. Admin-ajax.php also blocked from Replit.

**Approach implemented:**
1. `orkestDirectGet()` helper added to animation.ts (skips cfProxy entirely)
2. Search → parse movieItem results → extract slug from episode URL pattern
3. Construct target episode URL: `/episode/{slug}-e{epNum}/` (try 3 variants)
4. `fetchEpSources()` helper: tries data-link, non-YT iframes, ser-link anchors, direct mp4/m3u8 hrefs — all empty due to AJAX loading
5. Returns diagnostic status: "لا مصادر ثابتة للحلقة N (AJAX-only)"

**Why:** CF blocks prevent any server-side AJAX calls to admin-ajax.php. Static HTML extraction yields nothing. Scraper is correctly structured and will activate if egydead.live ever serves static links.

**How to apply:** If EgyDead ever changes to include `data-link` in HTML or adds downloadable links, the existing parser handles them. For now, returns empty silently with diagnostic status.
