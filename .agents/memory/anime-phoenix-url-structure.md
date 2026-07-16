---
name: Anime-Phoenix URL structure
description: anime-phoenix.com changed its URL structure — search broken, direct slug construction is the only reliable method
---

## The rule
`searchAnimePhoenix` must construct the slug directly via `toSlug(english/title)` and verify with `html.includes(\`/episodes/${slug}-episode-\`)`, NOT use `/?s=` search (dead) or `/search/` (returns no animes/ links).

**Why:** The site migrated from WordPress `/?s=` search to a custom `/search/` endpoint that does NOT embed `/animes/{slug}` links in the HTML. Simultaneously, episode URLs changed from `/animes/{slug}/episodes/{slug}-{N}/` to `/episodes/{slug}-episode-{N}`.

**How to apply:**
- `searchAnimePhoenix`: try `toSlug(english)` then `toSlug(romaji)` as `/animes/{slug}` — accept only if `html.includes(\`/episodes/${slug}-episode-\`)` (slug-specific check). WordPress soft-404 returns the homepage (200) with episode links of OTHER anime — `html.includes("episode")` alone is NOT sufficient.
- Episode URL candidates: put `${APH_BASE}/episodes/${slug}-episode-${ep}` FIRST, before old patterns.
- Series pages use slug derived from English title (e.g. `one-piece`, `shingeki-no-kyojin`). Romaji Japanese titles may differ from site slug.
- AnimeDar servers for most anime are dead (mega, ok.ru, drive, uqload). Only streamwish/filemoon/vidhide types on AnimeDar are extractable.
