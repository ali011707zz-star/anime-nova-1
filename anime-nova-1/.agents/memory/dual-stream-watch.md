---
name: Dual stream Watch.tsx
description: Watch.tsx must call BOTH anipub-stream and sources-stream to show all sources including Arabic ones
---

## Rule
Watch.tsx must call **both** endpoints:
1. `GET /api/anime/anipub-stream` (JSON) → AnimeX + AnimePahe + FlixCloud
2. `GET /api/anime/sources-stream` (SSE) → shahiid + animelek + AnimeGG + AnimeBlkom

Without both, Arabic sources never appear in the picker.

**Why:** The two endpoints use completely separate scraper pipelines. anipub-stream was added first for English sources. sources-stream was the original Arabic scraper that was never wired into Watch.tsx.

**How to apply:**
- Open EventSource to sources-stream with same params as anipub-stream
- Filter SSE events: only add if `src.directUrl` is set OR URL matches `.m3u8` — embed URLs with no directUrl won't play
- Use `src.directUrl` as the effective URL (not `src.url`)
- Map `qualityRank >= 3 → "1080p FHD"`, `>= 2 → "720p HD"`, else `"360p SD"`
- Merge SSE servers into primary quality tiers via `useMemo`
- Close SSE after 38 seconds (all scrapers finish by then)
- Cleanup SSE on component unmount via `useEffect(() => () => sseRef.current?.close(), [])`
- Guard phase transition: if player is already playing, don't pull back to picker
