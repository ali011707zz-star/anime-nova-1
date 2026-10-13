---
name: StarDima source and taxonomy behavior
description: StarDima's legacy AJAX routes and the no-guess policy for mixed source labels
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

## Catalog taxonomy policy

Keep StarDima's source categories, tags, localization labels, and media type distinct. A category may be a genre, broadcaster/network, franchise/collection, or dubbing/subtitle label; do not treat channel names as proof of content family. Map only explicit category names to standardized families. If reliable labels are absent, leave the title as `needs_review` rather than guessing from its title, poster, or neighboring records.

**Why:** The catalog mixes several kinds of labels and many titles have no source category; guessing would create false classifications and hide the remaining gaps.

**How to apply:** Preserve exact source labels and their provenance during imports and backfills. Do not infer content families from network names or from title/poster alone.

## Series detail fallback safety

The catalog's alternate `/api/episodes/{id}` path is not safe to write for a series without normalization: its shared movie mapper can label episodes as `movie` and flatten them to season 1. Live catalog responses have also included episode titles that do not match the parent title. The normal multi-season route can fail when requests overlap even though isolated per-season requests succeed.

**Why:** Blindly importing fallback rows can create incorrect content types, season grouping, or cross-title episode data while appearing to fill catalog gaps.

**How to apply:** Prefer fetching each advertised season independently when the concurrent request fails. Before importing fallback data, compare episode titles and IDs to the parent, restore the source season number and series metadata, and keep the title partial if any advertised season remains unresolved.
