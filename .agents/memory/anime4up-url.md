---
name: Anime4up URL construction
description: w1.anime4up.rest episode URL patterns and scraper strategy for full episode coverage
---

## Rules

**Episode URL formats:**
- Recent (last ~3): `/episode/انمي-{arabic}-{romaji}-الحلقة-{N}-مترجمة/`
- Middle range: `/episode/انمي-{arabic}-{romaji}-الحلقة-{N}-{random-hash}/`
- Old format (ALL episodes): `/episode/{romaji-slug}-الحلقة-{N}/` ← confirmed working for eps 1, 5, 50, 100, 500

**Series page:** taxonomy page (`tax-anime term-{slug} term-{id}`) — shows only 48 most recent episodes. No AJAX endpoint (404 at Ajaxt/Single/Episodes.php; it's a taxonomy, not a post).

**Strategy:**
1. Fetch series page → get 48 visible episode links
2. Match target episode from visible list by `الحلقة-{N}` in decoded slug
3. If not found → extract romaji slug from old-format visible ep (strip `الحلقة-N...` suffix)
4. Fallback: derive slug from english title → toSlug()
5. Construct: `{A4UP_BASE}/episode/{encodeURIComponent(romajiSlug + "-الحلقة-" + N)}/`
6. HEAD probe to confirm → fetch if 200

**Video sources on episode page** (extracted via `src=` or `data-src=`):
- mega.nz/embed → passes as isEmbed=true (MegaEmbedPlayer) ✅
- rubyvidhub → tries HLS extraction → sometimes works
- share4max → Inertia.js extraction → sometimes works
- voe.sx, videa.hu → EMBED_ONLY_HOSTS → dropped
- mp4upload → DEAD_FILE_HOSTS → dropped

**Why:** Site AJAX endpoint only works for post-type series pages, not taxonomy (category) pages. The old URL format (`{romaji}-الحلقة-{N}/`) exists for all episodes on the site and returns 200 reliably.

**How to apply:** Always try URL construction when episode not found in visible 48. qualityRank=10.
