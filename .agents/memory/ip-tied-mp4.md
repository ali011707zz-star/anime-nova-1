---
name: IP-tied MP4 proxy
description: sendvid/streamtape directUrls are IP-tied to the server IP; must always use video-proxy
---

## Rule
shahiid-anime.net scraped directUrls contain `ip=35.234.223.23` (the Replit server IP). Browser requests fail because user IP differs.

**Always route through `/api/anime/video-proxy?url=<directUrl>&ref=<embedUrl>`** — never attempt to play directly from the browser.

## Why
sendvid token format: `?validfrom=...&validto=...&rate=200k&ip=35.234.223.23&hash=...`
The hash is tied to the specific IP. Requests from any other IP get 403.
video-proxy makes the request from the same server IP that generated the token → works.

## video-proxy HEAD optimization
When browser sends HEAD (video element probing), video-proxy must do HEAD upstream too (not GET).
Otherwise: video element aborts after 10-12s timeout; video fails to load.
Fix: check `req.method === "HEAD"` at top of handler and do HEAD + res.end() immediately.

## How to apply
In Watch.tsx `VideoPlayer`:
```typescript
const playUrl = src.directUrl
  ? isHls
    ? `/api/anime/hls-proxy?url=...&ref=...`
    : `/api/anime/video-proxy?url=...&ref=...`
  : "";
```
No "attempt" state — no direct-first fallback. Always proxy from first play attempt.
