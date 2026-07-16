---
name: آخر الأخبار section
description: News section added to Nova Mobile with comments support, using MAL RSS feed.
---

## Route: GET /api/news

- File: `artifacts/api-server/src/routes/news.ts`
- Registered in `artifacts/api-server/src/app.ts` as `app.use("/api", newsRouter)`
- Source: MyAnimeList RSS `https://myanimelist.net/rss/news.xml` (200 from Replit IPs)
- ANN (animenewsnetwork.com) returns 403 from Replit datacenter IPs — listed as fallback only
- MAL RSS format: `<media:thumbnail>URL</media:thumbnail>` (content tag, NOT attribute) — regex fixed
- 20 articles returned per page; in-memory cache 5 min TTL
- Returns: `{ articles, total, page, limit }` where article = `{ id, title, description, url, thumbnail, publishedAt, category }`
- Article `id` = numeric slug extracted from MAL URL path (e.g. "74411300")

## Comments integration

- Uses existing `CommentsSheet` component with `tmdbId = "news-{article.id}"`
- No DB migration needed — comments table `tmdb_id` is a string field
- Comment counts fetched in batch via `GET /api/comments/count?tmdbId=news-{id}`

## Nova Mobile screen

- File: `artifacts/nova-mobile/app/(tabs)/news.tsx`
- Added 4th tab "آخر الأخبار" (default tab on open)
- AniList tabs (يُبث الآن / قريباً / تريندنج) lazy-load only when first visited
- News cards: thumbnail (90×68) + category badge + timestamp + title + description + comment button + open button
- Pagination via `onEndReached` → `loadNews(newsPage + 1)`
- CommentsSheet opens on comment button tap; count refreshes on sheet close

**Why:** MAL is the only reliable anime news RSS source from Replit IPs.
