---
name: check-arabic endpoint source swap
description: animelek.top is fully dead (connection timeout from both Replit and VPS); the /api/anime/check-arabic gate that decides what shows in "latest episodes today" depended on it and silently returned empty forever.
---

`/api/anime/check-arabic` used to call `searchAnimelek()` to decide whether an airing title has an Arabic source, then gated the homepage "latest episodes" section on the result. animelek.top now times out completely (confirmed via direct curl from the VPS, not just datacenter-IP blocking), so the endpoint always returned `{available: []}` and the homepage section appeared empty/disappeared.

**Fix:** check-arabic now matches titles against the already-working FaselHD-DB GitHub JSON catalog (`faselhdDbFetchSection` + `faselhdStripName` + `similarity`/`asciiSimilarity`, threshold 0.42) instead of animelek. Same in-memory cache (`_arabicCheckCache`, 12h TTL) is reused.

**Why:** any future "X section is empty because check-arabic gates it" report should first verify the underlying source with a direct curl (`curl --max-time 10 <site>`) before assuming a scraper/matching bug — the source itself may simply be dead.

**How to apply:** if FaselHD-DB itself ever dies, swap the matching source in `check-arabic` (anime.ts, GET `/anime/check-arabic`) to another confirmed-working catalog (e.g. witanime_db) rather than reviving animelek.
