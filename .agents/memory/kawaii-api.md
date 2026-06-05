---
name: kawaii-anime.com API
description: How to scrape kawaii-anime.com — uses AniList IDs natively, has a clean JSON API
---

## API Endpoint
`GET https://www.kawaii-anime.com/api/watch?anilistId={anilistId}&ep={episodeNumber}`

## Response
```json
{
  "source": "cache",
  "sources": [{"url": "https://video.kawaii-anime.com/video/21-ep1", "quality": "1080p", "isM3U8": false, "type": "mp4"}],
  "subtitles": [{"url": "...", "lang": "English"}],
  "headers": {"Referer": "https://www.kawaii-anime.com/"},
  "intro": {"start": 31, "end": 111},
  "outro": {"start": 1376, "end": 1447}
}
```

## CDN
- Base: `video.kawaii-anime.com`
- URL pattern: `/video/{anilistId}-ep{epNum}` (e.g., `/video/21-ep1`)
- CORS: `access-control-allow-origin: *`
- Auth: None required
- Range: `accept-ranges: bytes` (seeking works)

## Key Points
- **AniList IDs are used natively** — the anilistId we already have from the watch URL matches exactly
- No slug lookup needed — pass anilistId directly
- Works for all anime that have AniList IDs (which is all of them)
- qualityRank = 14 (highest priority, direct MP4)
- SSE endpoint needs `req.query.anime` extracted as anilistId and passed to the scraper
- Watch.tsx fetch-source calls need `anime: String(animeId || 0)` in URLSearchParams

**Why:** kawaii's Next.js App Router uses client-side search (module 913 / cd() function) that hits their internal API. Watch URL format is `/watch/{animeId}?ep={episodeId}&num={epNum}` but the server-side API `/api/watch` accepts anilistId+ep directly.
