---
name: AnimeSlayer direct-id lookup + tag collision
description: getAnimeSlayerSources supports a direct anime_id bypass; anslayer/arabseed short tags used to collide
---

`getAnimeSlayerSources(title, english, ep, directAnimeId?)` now accepts an optional 4th arg. When
provided (e.g. from the homepage "أحدث الحلقات" section, which is sourced straight from anslayer's
own `list_type=latest_updated_episode_new` catalog and already knows the exact `anime_id`), it
skips the fuzzy `similarity()` title search entirely and uses that id directly — more reliable than
name-matching, and the pattern (skip search, plug in catalog id) is reusable for any other feature
that lists directly from one scraper's own catalog rather than cross-referencing via AniList.

`/api/anime/fetch-source` accepts this as `anslayerId=<id>` query param; `/api/anime/anslayer-latest`
is the new endpoint serving that catalog list.

**Tag collision fixed 2026-07-11:** `arabseed` and `anslayer` both used the short UI tag "AS" at
one point (one had 3 letters "ASL" that got shortened to 2, colliding with the other's existing
"AS"). Resolved: `arabseed` → "AR", `anslayer` → "AS". If adding/renaming any SCRAPER_DEFS/SITE_TAG
short code again (web `Watch.tsx` + mobile `watch.tsx`, kept in sync), grep both files for the
target 2-letter code first to avoid a repeat collision.
