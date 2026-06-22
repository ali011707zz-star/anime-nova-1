---
name: Subtitle APIs status
description: Which subtitle APIs work/fail for the Nova Anime project
---

## Dead / Gated APIs (as of 2026-05)

- **rest.opensubtitles.org** — returns HTTP 302 to `https://_/search/...` (broken redirect). Deprecated.
- **subdl.com** — returns 403 "Not Authorized" with `api_key=demo`. Requires real API key (free to register but not built-in).
- **jimaku.cc** — returns `{"error":"unauthorized","code":7}`. Requires auth token.

## Current behavior

The `/api/anime/subtitles` endpoint returns `{lang: null, content: null}` when no subtitle source responds. The frontend Watch.tsx shows "لا توجد ترجمة متاحة لهذه الحلقة" (subtitle panel) gracefully without crashing.

## If subtitles need to be re-enabled

Options (in order of ease):
1. Register a free subdl.com API key and set it as an env secret
2. Register a free OpenSubtitles.com v3 API key
3. Scrape kitsunekko.net for Japanese anime subtitle files (no API, HTML scraping)
