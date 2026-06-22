---
name: StarDima AJAX correct path
description: StarDima uses /watch/ subpath for all WP admin; DooPlayer v2 REST API is cookie-nonce protected
---

## Rule
`SD_AJAX` must be `https://watch.stardima.com/watch/wp-admin/admin-ajax.php` — NOT `https://watch.stardima.com/wp-admin/admin-ajax.php` (returns nginx 404).

## DooPlayer v2 REST API
- URL pattern: `/watch/wp-json/dooplayer/v2/{postId}/{num}`
- Returns 403 `rest_cookie_invalid_nonce` — requires an active browser session cookie nonce, not the HTML `data-nonce`
- Cannot be called server-side without authentication

## DooPlay AJAX embed_url empty
- Some StarDima movies have no servers configured → AJAX returns `{"embed_url":"","type":null}`
- No iframes appear on these movie pages either
- This is a data gap on StarDima's side, not a code bug

**Why:** The WP site root is at `/watch/` (e.g. `https://watch.stardima.com/watch/`), so all WP admin paths are under `/watch/wp-admin/`.
