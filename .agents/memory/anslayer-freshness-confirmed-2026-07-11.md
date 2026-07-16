---
name: AnimeSlayer confirmed working end-to-end (supersedes "0/10" pessimism)
description: Re-verification proves the AnimeSlayer integration pipeline itself has no bug — link liveness is purely per-title/per-episode freshness
---

Earlier sessions tested a handful of older/random titles (Naruto Shippuuden, One Piece, Bleach,
etc.) and found 0/10 playable — leading to the conclusion "AnimeSlayer's embed links are
systematically dead." That conclusion was too broad.

**Re-tested 2026-07-11 against fresh/recently-updated catalog entries** (pulled from
`list_type: "latest_updated_episode_new"`, not guessed titles) and confirmed multiple
`mediafire.com/file_premium/...` links are alive end-to-end, including through the live deployed
`sources-stream` API (`getAnimeSlayerSources` → `extractMediafireDirect` → real
`download*.mediafire.com/.../*.mp4` with HTTP 200 `video/mp4`).

**Root cause of the earlier "always empty" perception**: the specific titles tested were either
old back-catalog entries (whose original embed links have since rotted — normal for any
scraped source) or, in one direct API test, the auto-picked "best match" (e.g. "Chainsaw Man"
main series vs. "Chainsaw Man Recap") happened to be the specific entry whose links were dead,
while a same-day fresh catalog entry for the same franchise was alive.

**Verified NOT a bug**: `extractMediafireDirect`'s regex-based scraping already correctly handles
both the older `/file/{id}` and newer `/file_premium/{hash}/{name}/file` MediaFire URL shapes, and
already filters out dead links (302→error.php, ok.ru "unavailable" pages) before they reach the
client — confirmed by reading the source and reproducing failures/successes directly.

**How to apply**: don't re-litigate "is AnimeSlayer broken" with a small sample of old titles.
It is fundamentally a freshness-dependent source like any other embed aggregator — recently
updated episodes are frequently alive, older back-catalog episodes are frequently dead. No code
changes needed unless a *new* embed host type appears in `muilt` responses (currently only
mediafire/ok.ru/streamtape/mixdrop/filemoon/fembed have been observed).
