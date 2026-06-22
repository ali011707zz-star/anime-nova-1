---
name: Dead Arabic anime sites
description: Status of Arabic anime sites as of May 2026 — which are accessible from Replit servers
---

As of May 2026, tested from Replit server environment:

**Dead / Inaccessible:**
- `anime4up.cam` → 302 redirect to survey-smiles.com (spam, completely dead)
- `animerco.org` → 301 → eta.animerco.org → 403
- `animeblkom.net` → 403
- `animeiat.cc` → 000 (connection refused)
- `anime-arabic.com` → 000
- `ww.animerco.org` → 000
- `animepahe.ru` → empty response (IP-blocked from Replit)

**Working:**
- `shahiid-anime.net` → accessible, extracts streamtape/sendvid direct URLs ✓
- `animelek.top` → accessible, extracts streamwish/filemoon HLS when available ✓

**Embed-only (no server-side extraction possible):**
- megamax.me, leech.megamax.me → Cloudflare Turnstile
- dood.wf/wc — JS challenge
- voe.sx — blocked
- anime7u.com — JS challenge
- wishfast.top — blocked

**Why:** Most Arabic sites either moved, died, or added Cloudflare challenges that block server-side fetching from Replit IPs. Only shahiid and animelek remain reliable sources with partial extraction capability.

**How to apply:** Don't waste time trying to add new Arabic scrapers without first testing with `curl` from the Replit terminal. Assume anything not already working is dead.
