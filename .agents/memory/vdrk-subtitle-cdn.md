---
name: vdrk.site subtitle CDN versions
description: Which cache.vdrk.site path versions are live vs dead — confirmed June 2026
---

## Rule
- `/v2/movie/{tmdbId}/Arabic.vtt` → **200 ✅** (live)
- `/v3/movie/{tmdbId}/Arabic.vtt` → **200 ✅** (live)
- `/v1/movie/{tmdbId}/Arabic.vtt` → **404 ❌** (dead)
- Same for TV: `/v2/tv/{id}/{s}/{e}/Arabic.vtt` → 200 ✅; `/v1/tv/...` → 404 ❌
- `/v1/vtt/tv/{id}/{s}/{e}/Arabic.vtt` → **200 ✅** (Vyla subtitle API uses this path — different from the direct /v1/movie/ structure; works for TV, varies for movies)

## What changed
Old memory said "only v1 is live" — that was wrong as of June 2026. v1 is now dead; v2 and v3 are live.

## How to apply
- subtitle-tracks CDN candidates: use `/v2/` and `/v3/` (already fixed in code)
- vidzee subtitle filter: allow v2/v3 URLs (already fixed — only block v1)
- EzVidAPI vidrock subtitle: already uses `/v2/` → correct
- Vyla subtitle API returns `/v1/vtt/` paths — these are a different URL structure (not `/v1/movie/`) and ARE live; do not filter them
