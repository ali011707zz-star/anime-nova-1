---
name: AnimeSlayer retest with catalog-verified title
description: Confirms AniSlayer's cracked-auth API works but its actual embed links are dead, even for a title/episode pulled directly from its own catalog
---

Earlier work (a prior session) reverse-engineered AnimeSlayer's (anslayer.com) Android app auth
(`Client-Id: android-app2` / `Client-Secret` header pair) and confirmed the API *authenticates*
correctly and returns valid JSON (search, episode list, "muilt" endpoint) — that success was about
the auth/API-shape being cracked, not about video playback actually working.

To settle a user dispute ("AnimeSlayer works, look at yesterday's proof"), retested using a title
pulled directly from AnimeSlayer's own `top_anime` catalog response (Naruto: Shippuuden, anime_id
2024, episode 1) — not a guessed title — using the exact same credentials already in
`getAnimeSlayerSources` in `artifacts/api-server/src/routes/anime.ts`. Result: the `muilt` endpoint
returned 2 links (`ok.ru/video/...`, `mediafire.com/file/...`); mediafire redirected to
`error.php?errno=320` (dead), and the ok.ru page rendered an "not available"/error state.

**Why this matters:** the cracked-auth API integration is correct and still working; the failure is
entirely upstream — AnimeSlayer's own episode_urls point to embed hosts whose specific files have
rotted/expired. This is not fixable by better scraping; it would require them refreshing their own
catalog links, or us discovering an alternate more-alive server slot in `episode_urls`
(`episode_server_name` values seen so far: "cdn" and "muilt" only — "cdn" via `vq.php` was already
known to 404).

**How to apply:** don't reopen "AnimeSlayer is broken" as an integration bug — it's a source-data
freshness problem. If asked to re-verify, test 3-5 titles pulled fresh from `top_anime` /
`latest_updated_episode_new` catalogs (not hardcoded guesses) before concluding either way.
