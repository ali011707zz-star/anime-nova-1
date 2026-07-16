---
name: ArabSeed WP search blocked
description: m.asd.ink WP REST API search= param always returns [] from Replit datacenter IPs; only category-based fetching works
---

## Rule
NEVER use `search=` param in m.asd.ink WP REST API calls — it returns `[]` from Replit server IPs.

**Why:** ArabSeed blocks keyword search queries from datacenter IP ranges. Only `categories=X&per_page=100` (without search) returns real results.

**How to apply:**
- `/kartoon/episodes`: use `fetchAllByCategory(cat, maxPages)` → filter by title in JS
- `/kartoon/browse`: already uses category-only fetch (no search)
- `findEpUrl`: same approach — fetch all posts from category, filter by series name + episode number
- For `search=` UI feature: pass it to browse as a JS-side filter after the category fetch
- Zamaan (cat=230926): 3 pages max (~300 posts), regular cartoons (cat=2496): 5 pages max (~500 posts)
- Both `سوبر هنيدي 2007` (cat=2496) and `ميراكيولوس` (cat=230926) confirmed working with sources in <10s
