---
name: Source fixes July 2026
description: Fixes applied for broken web sources AF/AW/AT/SC/MO/SP and root causes
---

# Source Fixes — July 2026

## Rule
When a source tag appears broken in the web picker, check BOTH the external API accessibility AND how the source label maps to the tag in getAnimTag/SCRAPER_DEFS.

**Why:** SC arabic-sources was working but labels were "الثريا · ..." instead of "StarCima · ..." — picker showed SC as empty because getAnimTag looks for "starcima" prefix.

**How to apply:** Whenever adding a new source to animation.ts arabic-sources path, ensure the label prefix matches what getAnimTag expects in AnimationWatch.tsx:1540-1577.

## Source Status (as of 2026-07-06)
- **AW (AnimeWitcher)** — HF space `1we323-witcher.hf.space` sleeps. Wake-up takes 15-30s. Fixed by:
  - Inner fetch timeouts → 25000ms (anime.ts lines ~5896, 5913, 5927)
  - Outer scrapeCached timeout → 28000ms (anime.ts line ~8833)
  - Outer fetch-source race → 28000ms (anime.ts line ~8985)
- **SC (StarCima vidzee)** — returns `{servers:[]}` (dead). arabic-sources works. Fixed label from "الثريا · " to "StarCima · " in animation.ts line ~2175.
- **SP (SeePanal)** — `panel.seepanel.top/api` returns 404. Disabled with `Promise.resolve() ||` in animation.ts ~2731.
- **MO (MovieBox)** — `h5-api.aoneroom.com` returns 404. Disabled with `Promise.resolve() ||` in animation.ts ~3741.
- **AF (animeify)** — API works with correct POST params (UserId,Language,FilterType,FilterData,Type,From,Token). Credentials from `api.ani-cli-arabic.dev/credentials`.
- **AF (aflaam)** — aflaam.com returns 200 from VPS. Scraper functional.
- **AT (animetime)** — vidhls.com embed extraction works. Episode button pattern: `onclick="...iframe_area.location.href='https://vidhls.com/player/index.php?data=HASH'..."`.
