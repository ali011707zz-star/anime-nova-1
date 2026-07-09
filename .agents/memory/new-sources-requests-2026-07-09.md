---
name: New source requests pending (2026-07-09)
description: User-requested new backup sources not yet implemented — anime section (AnimeTime, AnimeRoco) and animation section (Akwam, Moviz Time/وقت الأفلام). Research in progress, paused mid-task.
---

## User's request (verbatim intent)
1. **أنمي section**: add "أنمي تايم" (AnimeTime) as a backup source — good ad-free iframe, must have
   the SAME features as the current mega.nz iframe integration (ad-block + prevent leaving the app,
   i.e. sandboxed iframe like the existing `mega.nz/embed` allowlist pattern in `collectSrc`).
2. **أنمي section**: check whether "أنمي روكو" (AnimeRoco) offers an iframe for anime playback —
   NOT YET CONFIRMED. Web search only surfaced "Animerco" (already known CF/Turnstile-blocked per
   `repo-analysis-2026-07.md`) and "RistoAnime" (needs CDP per `lightpanda-deep-dive`), NOT an exact
   "AnimeRoco" domain. Need to ask the user for the exact domain/URL before proceeding — do not
   assume Animerco is the same site.
3. **Animation section**: add "أكوام" (Akwam) as a backup source, shown at the bottom of the source
   list (i.e. low qualityRank / not prioritized).
4. **Animation section**: add "وقت الأفلام" (Moviz Time) with the SAME iframe features as the anime
   section's mega.nz iframe handling.

## Research done so far (this session, not yet implemented)
- `akwam.to` → reachable from VPS, HTTP 200 (curl, plain fetch, no CF challenge hit yet — untested
  for actual episode/embed extraction).
- `moviz-time.cam` → reachable, HTTP 301 (redirect, likely to canonical URL — untested further).
  Also seen: `moviz-time.net` (parking page, avoid), `moviz.pics` (mirror).
- `animetime.xyz` → DNS resolution failed from VPS (curl code 000) — likely wrong/dead domain.
- `anime-time.co` → HTTP 302 redirect (needs to follow to find real target before using).
- Candidates seen for "وقت الأنمي" / AnimeTime brand: `anime-time.pages.dev`, `mitanime.com`,
  `anime-time.co` — none confirmed yet as the exact site the user means.

## Status: PAUSED — not implemented
No code changes were made for any of these 4 sources yet. Before resuming: confirm exact domains
(especially AnimeRoco, and disambiguate which "AnimeTime" domain) with the user, then extend
`anime.ts` (AnimeTime, AnimeRoco) and `animation.ts` (Akwam as low-priority/backup, Moviz Time with
mega-iframe-style sandboxed embed) following the existing `mega.nz/embed` sandboxed-iframe allowlist
pattern (`collectSrc` iframe policy, `VIDMOLY_HOSTS`-style allowlist) so new iframe sources get the
same ad-block/no-app-exit treatment already applied to mega.nz embeds.
