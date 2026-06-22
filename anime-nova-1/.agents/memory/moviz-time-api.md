---
name: moviz-time REST API search
description: moviz-time.co search works via WordPress REST API not /?s= HTML scraping
---

**Rule:** Use `/wp-json/wp/v2/posts?search={title}&per_page=8&_fields=id,link,title` for moviz-time.co search. The `/?s=` endpoint returns JS-rendered pages with no results in static HTML.

**Why:** The site is a WordPress DooPlay installation where the search page requires JavaScript to populate results. The REST API is publicly accessible and returns clean JSON.

**How to apply:** In animation.ts, `scrapeMovizTime()` function: after getting posts, match against title similarity. Extract post slug from the `link` field (last path segment) and construct episode URL using `/wp-json/wp/v2/posts?slug=` for AJAX lookup.

**Also:** moviesapi.club is DEAD — it redirects to alliance4creativity.com (a copyright protection site). Replaced in animation.ts with vidsrc.me embeds.
