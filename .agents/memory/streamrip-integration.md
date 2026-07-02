---
name: Streamrip integration
description: How Streamrip download API is integrated into Nova Anime's animation sources-stream, and the MovieBox proxy approach.
---

## What was done
- Streamrip (`streamrip-website-production.up.railway.app`) added as a source in `/api/animation/sources-stream` (animation.ts).
- Calls `/api/download/movie/{tmdbId}` or `/api/download/tv/{tmdbId}` with a 12s timeout.
- Filters English-only using lowercase `.includes("english")`, excluding hindi/telugu/norwegian.
- Labels each source `Streamrip · {quality}p` — label-based quality tier detection in the web/mobile already maps these correctly (1080 → FHD, 720 → HD via video-proxy path, 360 → SD).
- Mobile `getAnimTag()` maps `streamrip` prefix → "SR" tag.

## MovieBox headers requirement
MovieBox CDN (`hakunaymatata.com`) requires both `Referer: https://fmoviesunblocked.net/` AND `Origin: https://fmoviesunblocked.net` — without them, returns 403.

**Solution**: `/api/anime/video-proxy` was extended with an optional `&origin=` query param. The param overrides the default `new URL(url).origin` value used as the `Origin` header.

**Why:** The CDN origin-checks against fmoviesunblocked.net, not the CDN's own domain. The video-proxy previously always derived Origin from the target URL, which was wrong.

## video-proxy origin security rule
The `&origin=` param is validated:
- Must parse as a valid `new URL()` — invalid strings are silently ignored.
- Protocol must be `http:` or `https:`.
- Private/internal IP ranges (`localhost`, `127.x`, `10.x`, `192.168.x`, `172.16-31.x`) are rejected.
- Falls back to `new URL(url).origin` if invalid.

**Why:** The proxy route is CORS-open and publicly callable; unvalidated origin override would enable arbitrary header-forging.

## GIF loading screen (nekos.best)
- Not yet integrated into the loading UI (deferred).
- Preview page: `scripts/nekos_gif_preview.html` — shows all ~50 categories in a player mockup.
- API: `https://nekos.best/api/v2/{category}?amount=3` — free, no auth, returns `{ url, anime_name, artist_name }`.
- Recommended categories for loading states: `punch` (loading), `dance` (success), `cry` (error), `spin` (buffering), `tableflip` (frustration).
