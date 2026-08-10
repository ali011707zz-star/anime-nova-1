---
name: kawaii-anime.com API
description: How to scrape kawaii-anime.com — uses AniList IDs natively, has Arabic subtitles for newer anime
---

## API Endpoint
`GET https://www.kawaii-anime.com/api/watch?anilistId={anilistId}&ep={episodeNumber}`

## Response
```json
{
  "source": "cache",
  "sources": [{"url": "https://video.kawaii-anime.com/video/21-ep1", "quality": "1080p", "isM3U8": false, "type": "mp4"}],
  "subtitles": [
    {"url": "https://video.kawaii-anime.com/subtitle/113415-ep1-Arabic-0.vtt", "lang": "Arabic"},
    {"url": "https://video.kawaii-anime.com/subtitle/113415-ep1-English-1.vtt", "lang": "English"}
  ],
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

## Arabic Subtitle Support
- **Newer anime have Arabic subtitles** (2020+): JJK (113415, 145064), Demon Slayer (101922) confirmed ✓
- **Older anime English only**: Naruto (20), One Piece (21), AOT (16498), MHA (21459)
- Subtitle URL pattern: `/subtitle/{anilistId}-ep{N}-Arabic-0.vtt`
- Code must prefer Arabic first: `findSub("arabic") || findSub("arab") || findSub("ar") || findSub("english") || ...`

## Key Points
- **AniList IDs are used natively** — no slug lookup needed
- qualityRank = 15 (highest priority, direct MP4)
- Source name label should reflect subtitle language: "كواي أنمي · 1080p · عربي" vs "إنجليزي"
- SSE endpoint needs `req.query.anime` extracted as anilistId
- `lang` vs `label` field inconsistency possible → check both

## CDN rotation
The API may return HLS URLs on `cdn.mewstream.buzz` (for example, One Piece episode 1173), in addition to the older `cdn.momentoai.dev` and `video.kawaii-anime.com` hosts. The scraper must allowlist the hostname and send the URL through the VPS HLS proxy with the Kawaii referer.

**Why:** Kawaii's API can rotate its media CDN without changing the API contract; filtering only the old hosts makes an otherwise valid episode disappear and also breaks conversion downloads.

**How to apply:** When Kawaii returns a new CDN, verify the hostname is trusted before adding it to the server-side Kawaii host allowlist. Keep the proxy path and referer handling unchanged.

**Why:** kawaii's API returns both Arabic and English subtitles for new anime. Old code only looked for English and missed Arabic entirely.
