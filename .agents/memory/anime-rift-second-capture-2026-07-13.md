---
name: Anime Rift — second real capture, same structural dead end confirmed
description: User re-captured fresh PCAPdroid HAR from Anime Rift 2026-07-13 (frieren s2 ep3). Confirms anime-rift-bypass-closed-2026-07-13.md; adds the concrete provider list behind one real episode.
---

Fresh capture from the user's real device (not a forgery attempt) shows the exact same shape as before: every `integrity` header is a `Bearer <HS256 JWT>` with `exp - iat == 10` seconds, minted only after a real Play-Integrity-backed device passes `/auth/register/device`. No new auth weakness found. Do not re-attempt curl/header-forging — see `anime-rift-bypass-closed-2026-07-13.md` for the full evidence chain; this capture adds no counter-evidence, it reconfirms it.

**Real actionable value of this capture**: the `/library/episode/sources` response for one real episode lists the actual backing providers Rift aggregates, which is what's worth chasing directly instead of Rift's gateway:
- `anineko_realtime` (ANKO) — NOVA already scrapes this natively.
- `animeworld_realtime` (ANW) — still zero NOVA coverage (confirmed gap, same as prior finding).
- `krakenfiles_premium_realtime` (KKFP) — NOVA's existing KrakenFiles code path is dead (`playable=false` from its own API, per code comment), but this capture's `direct_link` call returned a **real, currently-working** `phs3.krakencloud.net/play/video/...` URL with the exact headers needed (`Referer/Origin: https://krakenfiles.com`, custom UA) — useful as a fresh reference sample if krakenfiles support is revisited, though the URL itself is short-lived/session-bound.
- `cr2`, `videa_realtime`, `mediafire`, `streamtape` — all providers NOVA already has scrapers for.
- `rift-streamer` (server_name `VRV`) — a provider name not seen before in any prior Rift capture; likely a Rift-proprietary CDN, not a third-party embed. No direct_link sample was captured for it in this session — worth targeting specifically in a future capture if this source is revisited again, since it wouldn't require reproducing Rift's auth to scrape a third party.

**How to apply:** If asked to revisit Anime Rift yet again, don't restart the curl/forgery investigation — it's closed. Instead, either (a) build a direct `animeworld` scraper (still the one clean gap), or (b) if a future capture includes a `rift-streamer`/VRV `direct_link` call, inspect whether that URL is itself a public/unauthenticated CDN link (it may not require Rift's gateway at all once you have one real sample URL+headers).
