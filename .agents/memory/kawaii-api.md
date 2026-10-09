---
name: kawaii-anime.com API
description: How to scrape kawaii-anime.com — uses AniList IDs natively, has Arabic subtitles for newer anime
---

## Current API
- Primary: `GET https://kawaiianime.cc/api/miruro?anilistId={id}&ep={episode}`.
- Also try the `anilist_id` / `episode` query-name variant and known domain aliases.
- Responses may put `sources` and subtitles directly at the top level or inside `data`.
- `/api/watch` has returned `APP_KEY_MISSING`; do not include it in automatic fallback chains.
- The playback caller must resolve AniList ID from the title when the incoming numeric ID may be a provider-catalog ID.

## CDN
- Kawaii rotates among `video.kawaii-anime.com`, `cdn.momentoai.dev`, `cdn.mewstream.buzz`, `cdn.imgnex.top`, `cdn.watching.onl`, and `cdn.kryntal.top`.
- Keep the API-provided host allowlist synchronized across web, mobile, and server validation.
- Direct MP4 playback may work in the browser; HLS URLs must use the HLS player path and provider-specific Referer handling.

## Arabic Subtitle Support
- **Newer anime have Arabic subtitles** (2020+): JJK (113415, 145064), Demon Slayer (101922) confirmed ✓
- **Older anime English only**: Naruto (20), One Piece (21), AOT (16498), MHA (21459)
- Subtitle URL pattern: `/subtitle/{anilistId}-ep{N}-Arabic-0.vtt`
- Code must prefer Arabic first: `findSub("arabic") || findSub("arab") || findSub("ar") || findSub("english") || ...`

## Key Points
- Kawaii accepts a real AniList ID directly; a nonzero `anime` / `anilistId` parameter can still be a provider catalog ID on latest-episode links.
- qualityRank = 15 (highest priority, direct MP4)
- Source name label should reflect subtitle language: "كواي أنمي · 1080p · عربي" vs "إنجليزي"
- `lang` vs `label` field inconsistency possible → check both

**Why:** Passing a provider catalog ID to Kawaii can silently produce no source; checking only whether the numeric parameter exists does not prove it is an AniList ID.

**How to apply:** Resolve Kawaii's AniList ID from the title before both availability and click-time fetches, even when a numeric ID was supplied.

## CDN rotation
Kawaii can change media hosts and return either HLS or MP4 URLs without changing its API contract. A host omitted from any one client/server allowlist can make a valid episode disappear or fail only on one platform.

**Why:** The provider has rotated through several unrelated hostnames and both signed and unsigned media URLs.

**How to apply:** Verify each new hostname against a live Kawaii API response, then keep the server trust filter, web player, and mobile normalization in sync. Preserve the correct HLS handling and Referer behavior for that host.

## Temporary API outages
Use the canonical API on the primary alias first, then bounded fallbacks to other aliases. Do not fan out all aliases and query variants on every playback or availability request. Count a response as usable only when it contains a source URL on a trusted Kawaii CDN.

Availability may reuse an episode-keyed cached row only while its signed URL remains safely unexpired. Fresh Kawaii rows should also populate the stable click-time cache so availability scans and playback do not scrape the same episode twice. After every alias fails with transport, rate-limit, or server errors, use a short cooldown and log host/status only; do not cool down for an ordinary empty episode result.

**Why:** Forced refreshes combined with concurrent aliases and retries multiply upstream traffic and can turn a temporary provider response into a source-wide block. Expired signed URLs are not a safe fallback.

**How to apply:** Preserve the source cache's expiry calculation and safety margin; keep requests bounded and fallback-first only after primary failure. Never log signed media URLs or extend a cached URL's lifetime.

**Why:** kawaii's API returns both Arabic and English subtitles for new anime. Old code only looked for English and missed Arabic entirely.

## Mobile download verification
- `/api/anime/download-mp4` is behind the mobile identity and download-token gate; a bare curl returns 403 before Kawaii URL validation.

**Why:** A manual 403 can be mistaken for a broken provider allowlist even when the route is healthy.

**How to apply:** Obtain the short-lived app/download tokens from `/api/auth/anon-token` with the official mobile headers before testing Kawaii download or Range behavior.
