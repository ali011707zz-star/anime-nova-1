---
name: topcinemaa post ID via REST API
description: topcinemaa.com requires real WordPress post ID for AJAX; HTML parse unreliable
---

**Rule:** Get topcinemaa.com post IDs via `/wp-json/wp/v2/posts?slug={urlSlug}&_fields=id` instead of parsing `postid-XXXXX` CSS class from HTML.

**Why:** The HTML `postid-` class is sometimes absent or the page structure varies. The REST API endpoint reliably returns the post ID when given the slug.

**How to apply:** In `scrapeTopCinemaa()` in animation.ts:
1. Derive slug from the matched page URL (last path segment, strip trailing slash)
2. Call `GET /wp-json/wp/v2/posts?slug={slug}&_fields=id`
3. Use `data[0].id` as the post ID for the AJAX request
4. AJAX: `POST /wp-admin/admin-ajax.php` with `action=doo_player_ajax&post_id={id}&num={server}`
