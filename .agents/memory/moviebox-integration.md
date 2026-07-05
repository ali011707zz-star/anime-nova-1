---
name: MovieBox integration
description: How MovieBox (h5-api.aoneroom.com) is integrated as a direct MP4 source in anime.ts and animation.ts
---

## Auth flow
- POST `https://h5-api.aoneroom.com/wefeed-h5api-bff/subject/search-suggest` with `{"keyword":"avatar","perPage":0}` → `x-user` header has JWT (valid 90 days); set-cookie contains `token` cookie
- JWT cached in memory for 7 days with in-flight promise guard to avoid concurrent fetch races
- Two parallel state vars: `_mbxAuth` in anime.ts, `_mbxAuthAnim` in animation.ts

## API endpoints
- Search: POST `/wefeed-h5api-bff/subject/search` with `{"keyword":title,"page":1,"perPage":12,"subjectType":0}`
- Download: GET `/wefeed-h5api-bff/subject/download?subjectId={id}&se={season}&ep={ep}&detailPath={detailPath}`
  - For movies/anime-movies: `se=0&ep=0`
  - For TV/anime-series: `se={seasonNum}&ep={episodeNum}`

## Response format
- `data.downloads`: `[{id, url, resolution, size}]` — direct MP4 files, NO hardcoded subs
- `data.captions`: external subtitle files (not used — user wants raw audio/no subs)
- CDN: `bcdnxw.hakunaymatata.com` — URLs include `&t=Unix-timestamp` → they expire!

## Cache TTL
- `moviebox` and `moviebox_anim` registered in `sourceCache.ts` SITE_TTL with **10 minutes**
- This is intentional — signed URLs with `&t=` expire quickly

## Dubbed filtering
- Pattern: `/(?:\[\s*|\b)(?:hindi|arabic|tamil|telugu|spanish|french|portuguese|korean|turkish|urdu|norwegian|italian|german|dual[\s-]?audio|dubbed|dub)(?:\s*\]|\b)/i`
- Handles both bracketed `[Hindi]` and unbracketed `Hindi Dubbed` / `Dual Audio` forms

**Why:** User requested raw audio (Japanese/original) with no hardcoded subtitles. MovieBox MP4s are clean; subtitles are in separate `captions` files which are not attached.
