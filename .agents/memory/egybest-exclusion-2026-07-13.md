---
name: EgyBest exclusion
description: EgyBest scraper disabled/commented out (not deleted) in anime.ts and animation.ts by explicit user request.
---

EgyBest (egytbest.live) was deliberately excluded from both `anime.ts`'s active
scraper list and `animation.ts`'s `egybest_anim` registration on 2026-07-13, by
explicit user instruction — not because it was broken.

**Why:** speed-tested at ~8.0s per call (WP-JSON search alone took ~5.9s),
much slower than most other sources (WitAnime ~1.9s, Moviz-Time ~1.0s). The
extraction logic itself (WP-JSON search → `data-embed-url` servers via
`parseStreamwish`) is confirmed working, just deprioritized for speed/quality.

**How to apply:** the `getEgyBestSources` function and its helpers are left
intact in `anime.ts`; only the `scrapeCached("egybest", ...)` call in the
active list and the `case "egybest":` switch entry were left as dead code /
commented per this decision. In `animation.ts`, `egybest_anim`'s whole
registration block was commented out (it was already inert anyway via
`ANIM_SOURCE_ALLOWLIST`, which never included it). To re-enable: uncomment
`scrapeCached("egybest", ...)` in `anime.ts`'s active list — no other rewiring
needed.
