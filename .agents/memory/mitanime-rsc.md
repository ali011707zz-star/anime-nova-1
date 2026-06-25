---
name: Mitanime RSC scraper
name: How mitanime.com works and what content is actually extractable
---

## Rule
mitanime.com is a Next.js RSC app. Fetch `GET /watch/{slug}/{ep}` with headers `Rsc: 1` to get JSON-embedded server list without running JS.

Server array shape: `{"name":"mp4upload","quality":"HD","url":"https://www.mp4upload.com/abc","isLocked":false}`

Filter: `isLocked === false` AND `url !== "premium"` AND `url.startsWith("http")`.

Slug resolution: try `toSlug(english)` / `toSlug(title)` directly first; fallback to `/search?q=...` RSC response (extract ASCII-only slugs via `/"slug":"([a-z0-9][a-z0-9-]*)"/g`).

## Content availability reality (as of 2026-06)
- **Older anime** (One Piece, Tensei Slime, etc.): free servers exist but are MEGA.NZ, DRIVE.GOOGLE, MY.MAIL.RU, videa, 4SHARED — all JS-only/blocked
- **Newer/airing anime** (Jigokuraku, etc.): servers are `isLocked: true` (premium required)
- **mp4upload** as a free server: present for some anime; extract via embed page `/embed-{id}.html` → `src: "https://a*.mp4upload.com:183/.../video.mp4"`

## mp4upload extraction
Parse embed HTML with: `html.match(/\bsrc\s*:\s*["'](https?:\/\/[^"']+\.mp4[^"']*)["']/i)`

**Why:** The scraper is implemented and correct. It just won't find sources for most anime because mitanime monetizes behind a paywall. Sources appear when mp4upload is offered free.

**How to apply:** Scraper sends sources directly via `sendSrc` (not `extractAndCollect`) since directUrl is pre-set from embed extraction.
