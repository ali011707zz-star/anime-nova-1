---
name: WitAnime (witanime.you) scraper fixes
description: Bugs found and fixed in the WI scraper; what to know for future work.
---

## Fixes applied

### 1. WP REST API parameter ambiguity (WP 6.x)
`?anime=${id}` throws HTTP 400 "ambiguous parameter" in WordPress 6.x.
Fix: use `?anime[]=${id}` (array bracket notation). Works without encoding `[]`.

### 2. cfProxy chrome130 not supported
curl_cffi on VPS didn't support chrome130 despite it being in CURL_IMPERSONATES.
Fix: replaced single-attempt with a retry loop over all profiles (`random.sample` + for loop with break on success).

### 3. Sequential page scan = timeout
Original code scanned 6 pages × 10s each = 60s (now extended to 13 pages = 130s).
Timeout was 22s → entire scan killed before finding the episode URL.
Fix: parallel fetch of all pages (`Promise.allSettled`), plus a direct `?search=الحلقة {ep}` fast-path first.
Also added a helper `extractWitaEpNum(slug, label)` for consistent episode number extraction.

### 4. Timeout raised 22s → 45s
Both `scrapeCached` and single-site `race()` for witanime now use 45s.

### 5. Testing from VPS shell requires x-internal header
`/api/anime/fetch-source` is in `PROTECTED_PATHS` and requires either:
- `x-internal: 1` header + localhost IP, OR
- valid `x-app-token` / `_tok` query param
Without this, localhost curl gets 403 immediately — the scraper code is never reached.
**Always add `-H "x-internal: 1"` when testing fetch-source from VPS shell.**

## Current behavior (verified)
- Recent episodes (e.g. ep 931): 12 servers decoded → 3 mega.nz/embed pass through as isEmbed ✓
- Old episodes (e.g. ep 1): 3 servers (yonaplay, yourupload, videa.hu) — these are dead/unextractable; returns 0. This is a site-data issue, not a code bug.
- X-WP-TotalPages = 12 for One Piece (1189 eps, per_page=100).

## Why
**Why:** WP 6.x made `anime` parameter ambiguous (matches term_id AND taxonomy); cfProxy needed retry for unsupported profiles; sequential scan couldn't finish within timeout; PROTECTED_PATHS gate confused testing.
