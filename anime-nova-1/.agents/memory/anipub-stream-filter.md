---
name: anipub-stream extraction filter
description: How anipub-stream endpoint filters Arabic sources to only return extractable direct URLs
---

**Problem:** Arabic sources (shahiid, animelek) return embed URLs (megamax, dood, voe, anime7u, wishfast) that are broken/dead. Previously these were all passed to the frontend causing wasted time.

**Solution:** `anipub-stream` endpoint runs `tryExtractDirect()` on all Arabic raw sources:
1. If source already has `directUrl` → use it
2. If source URL is in `SKIP_EXTRACT_HOSTS` (embed-only, can't extract) → drop it
3. If URL has `.m3u8` or `.mp4` → use directly  
4. Otherwise → run `extractVideoDeep` with 6s timeout + `probeDirectUrl` check
5. Only sources that pass step 2/3/4 are added to the result

**Result:** Dead embeds (megamax, dood, voe, anime7u, wishfast) never appear in results.
Working sources (streamtape, sendvid extracted from shahiid) DO appear as "مصدر مباشر".

**Timeout budget:** SCRAPER_MS=14000 (scrapers), EXTRACT_MS=6000 (extraction). Total ~20s max.
Arabic phase runs after scrapers complete with remaining time.

**AllAnime:** Added as 5th parallel scraper. Gives direct CDN URLs for some anime, gogoanime streaming.php (which fails the filter) for others. No extraction is run on AllAnime sources.

**Why:** Better to show 5 working sources than 16 broken embeds.
