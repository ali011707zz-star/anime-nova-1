---
name: AnimeLek search URL
description: AnimeLek uses ?s= for WordPress search, not ?search_term_string=
---

## Rule
AnimeLek (animelek.top) uses the standard WordPress search parameter `?s=` for search queries.

**Wrong:** `https://animelek.top/?search_term_string={title}`
**Correct:** `https://animelek.top/?s={title}`

Additionally, the direct slug is also tried: `https://animelek.top/anime/{slug}/`

Before returning a slug as a match, verify it has actual `/episode/` links on its series page — otherwise it may be a different anime with the same name.

**Why:** `?search_term_string=` returned trending/popular results unrelated to the query. `?s=` returns actually-matched results.

**How to apply:** Any change to AnimeLek search must use `?s=` parameter. The verification step (checking for `/episode/` links) prevents returning wrong anime slugs.
