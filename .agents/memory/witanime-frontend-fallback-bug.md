---
name: WitAnime frontend fallback filter bug
description: Watch.tsx (anime section) hid all witanime/mycima sources even though backend fetched them correctly — root cause and fix.
---

## Bug
Backend `case "witanime"` in anime.ts correctly scrapes and returns embed sources (yonaplay.net/videa.hu/wishonly.site — hosts rotate per episode). Backend allows these through `collectSrc` because `HIDDEN_RESOLVE_EMBED_SITES = ["mycima","witanime"]` (anime.ts line ~115).

But the web frontend (Watch.tsx) has two client-side filters:
- `shouldShowSrc()` hides ANY `isEmbed:true` source from the main list (by design — embeds are meant to show only as fallback).
- `isEmbedFallback()` only whitelisted `mega.nz`/`mega.co.nz`/`vidmoly` hosts for that fallback list.

Since witanime/mycima never use those 3 hosts, their sources were fetched successfully by the backend and then silently dropped by the frontend — invisible in both the main list AND the "سيرفرات احتياطية" (backup) list. This looked like "witanime never returns results" but the backend was fine the whole time.

## Fix
Added `if (src.site === "witanime" || src.site === "mycima") return true;` inside `isEmbedFallback()` in `artifacts/anime-scraper/src/pages/Watch.tsx`, so their embeds show as fallback iframes just like mega/vidmoly. Deployed to VPS (scp + `pnpm --filter @workspace/anime-scraper run build`, no pm2 restart needed since it's a static frontend build served by Nginx).

**Why this matters:** any site added to backend's `HIDDEN_RESOLVE_EMBED_SITES` allowlist must ALSO be added to the frontend's `isEmbedFallback()` allowlist (Watch.tsx) or its sources will be fetched but never rendered anywhere — a silent 3rd gate matching the pattern already documented in hidden-resolve-embed-sites.md (mobile WEBVIEW_RESOLVE_SITES is the mobile equivalent of this web-side gate).

**How to apply:** whenever adding a new isEmbed-only scraper (no direct/extractable stream, only rotating embed hosts) to the Anime section (Watch.tsx), check both `shouldShowSrc`/`isEmbedFallback` (web) and the mobile WEBVIEW_RESOLVE_SITES Set — all relevant gates must list the site.

## Related findings from the same investigation (2026-07-13)
- Animation section (AnimationWatch.tsx) does NOT filter isEmbed sources at all — it pushes them straight to the picker as raw iframes. This is why FaselHD (`faselhd_db`, isEmbed:true, fasel-hd.cam player) shows as an unwanted raw iframe in the Animation section instead of a resolved direct stream — no hidden-extraction step exists there yet.
- The "AK" tag seen failing in the Animation section is NOT AnimeKai — `getAnimTag()` in AnimationWatch.tsx only maps "anikoto" → "AK" explicitly; Akwam has no explicit mapping and falls through to the generic first-2-letters-of-label fallback, which also produces "AK" for "Akwam". A fresh test found Akwam returns no result at all for some titles (e.g. Despicable Me 2) — a previously good Akwam link probably got source-cached and kept being served/failing after going stale, not a live scraping bug.
