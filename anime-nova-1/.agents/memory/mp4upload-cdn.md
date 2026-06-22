---
name: mp4upload CDN direct play
description: How to handle mp4upload CDN URLs (non-standard port 183) in DEAD_FILE_HOSTS and Watch.tsx
---

## Rule
`DEAD_FILE_HOSTS` entry must be `"//www.mp4upload.com"` (not `"mp4upload.com"`) so that CDN subdomain URLs like `https://a3.mp4upload.com:183/d/.../video.mp4` pass through the filter.

In Watch.tsx playback handler, detect CDN URLs with:
```typescript
src.includes("mp4upload.com") && !src.includes("www.mp4upload.com")
```
Route them to DIRECT playback (same pattern as AnimeGG/vidcache), NOT video-proxy.

**Why:** Port 183 is blocked from Replit server-side but accessible from browser. video-proxy would fail. The `www.mp4upload.com` embed page URL must remain blocked (it's an HTML page, not a video).

**How to apply:** Any scraper extracting mp4upload embed pages to get CDN direct URLs benefits automatically. AnimeLek and mitanime both use this pipeline.
