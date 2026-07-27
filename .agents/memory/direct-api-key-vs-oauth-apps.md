---
name: Direct-API-key pattern vs true external-player/OAuth apps
description: Why some reverse-engineered third-party apps could be scraped by calling their API directly, and why others can't (yet).
---

Some reverse-engineered Arabic streaming apps expose their entire catalog+source API behind a single **static API key baked into the APK** (not per-device/per-user auth). For those, we don't need to "impersonate an external player" — we just call the same public endpoints directly with that key, exactly like the app itself does. This pattern is confirmed working for:
- **DramaWorld** (`dwapp.arabypros.com`, key `4F5A9C3D.../d506abfd`) — integrated in `artifacts/api-server/src/routes/animation.ts` as the `dramaworld` scraper; catalog+mirror fetch verified live on the VPS (`[dramaworld] sendExtracted ... -> true` in pm2 logs).
- **SAnime** (`server.sanime.net` / `h10.php?page=`) — already implemented as a scraper.
- **Animatoo** — open Supabase with a public anon key, used for tmdb_id→slug lookups feeding the anime3rb scraper.

**Why it doesn't generalize to every reverse-engineered app:**
- **Anime Rift** (`gateway.anime-rift.com`) requires a real `Authorization: Bearer <token>` obtained via Google Sign-In per user/device — there is no shared static key to reuse. Acting as "their external player" would require a real login flow (OAuth), not just replaying a captured request.
- **AniTaku** — a static token was found in the APK, but the `client_secret` was not, and its DB endpoint returned empty; unclear if catalog access actually works with just the token.
- **TimeMovies** — Virbox-protected APK, real API base URL still undiscovered; blocked pending a proper on-device MITM capture (plan exists, not yet executed).
- **Anime Arab** — real backend (Firebase RTDB) confirmed permanently deactivated; dead end, investigation closed.

**How to apply:** before assuming a newly-analyzed app can be scraped like DramaWorld, check specifically whether its content API accepts a fixed/shared key with no per-user token — if it requires a real login/OAuth flow, the "just call the API" shortcut does not apply and a genuine auth flow (or MITM capture of a logged-in session) is needed instead.
