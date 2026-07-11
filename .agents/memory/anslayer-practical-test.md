---
name: AnimeSlayer practical playback test
description: Real-episode testing of the AnimeSlayer (anslayer.com) source — API works but embed hosts are dead in practice
---

Tested 10 popular titles (One Piece, Jujutsu Kaisen, Demon Slayer, Spy x Family, Solo Leveling,
Dandadan, Frieren, Chainsaw Man, MHA, Bleach) end-to-end against the live deployed VPS API.

**Result: 0/10 yielded a playable source**, even though the AnimeSlayer API itself works correctly
(search matching, episode listing, and the "muilt" endpoint that returns embed links all responded
with valid data). The failure is entirely on the embed-host side:
- `mixdrop.co` — domain has been sold/parked (Sedo placeholder page), no longer the mixdrop service.
- `ok.ru` — blocks datacenter/VPS IPs for video metadata even with valid session cookies (same
  limitation already known from the disabled "Apps Anime" source).
- `mediafire.com` links — expired/404 in the sample tested.
- `streamtape.to` — links 404 (dead IDs or wrong domain).
- `filemoon.sx` — domain has been repurposed into an unrelated React SPA ("Byse Frontend"), no
  longer serves the classic JWPlayer embed our extractor expects.

**Why:** AnimeSlayer's own catalog/episode API is fine, but its episode embed links are stale and
depend on third-party embed hosts that have died, rebranded, or block datacenter IPs — a source
data-quality problem, not an integration bug.

**How to apply:** don't invest further extraction work on AnimeSlayer's current embed set. If
revisiting, re-check whether newer episodes carry different/fresher hosts before wiring more
extractors. An OK.ru extractor (`extractOkRuVideo`) was already wired into `getAnimeSlayerSources`
for future-proofing, but is not expected to work from VPS IPs.
