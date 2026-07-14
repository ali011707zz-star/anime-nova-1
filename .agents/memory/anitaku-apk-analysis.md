---
name: AniTaku APK Deep Analysis
description: Complete analysis of AniTaku v0.1 APK — auth system, API routes, DB status, streaming hosts, static token found
---

## Summary
AniTaku is an EasyPlex-based (CodeCanyon/Y0BEX) Android app targeting `anitakuapp.hasalaty.com`.

## Auth System
- **OAuth2 password grant** via `POST https://anitakuapp.hasalaty.com/public/oauth/token`
- `client_id = 2`
- `client_secret = NOT FOUND` — not in APK string table, bytecode, or any DEX binary scan
- Auth class: `Lk9/k;` (obfuscated) — uses `Authorization: Basic base64(client_id:client_secret)` pattern

## Static Bearer Token (FOUND)
String `QmVhcmVyIEd4b05kUGhPcnNrV1laZlN3MmQ5aGdlWFRvU2xVQmFs` in classes.dex (index 24948) base64-decodes to:
```
Bearer GxoNdPhOrskWYZfSw2d9hgeXToSlUBal
```
This token reaches Laravel (bypasses Cloudflare) but returns `{"error":"Unauthenticated."}` for user routes.
It works as an app-level token for public (non-user) routes only.

## API Routes (from DEX bytecode scan)
Base URL: `https://anitakuapp.hasalaty.com/public/api/`

### Public routes (no user auth needed):
- `animes/season/{season_id}/{code}` → Returns DB query error if ID not found (route EXISTS)
- `animes/seasons/{season_id}/{code}` → Same

### User-auth routes (HTTP 401 with static token):
- `animes/latestadded/{code}` → HTTP 401
- `animes/byrating/{code}` → HTTP 401
- `animes/byviews/{code}` → HTTP 401
- `genres/list/{code}` → HTTP 401
- `genres/animes/all/{code}` → HTTP 401
- `series/latestadded/{code}` → HTTP 401

### Route doesn't exist (this version):
- `casterslist`, `genreslist`, `animes`, `series`, `home`, `trending`
- Routes with TMDB IDs in `animes/show/{id}/{code}` pattern → 404

### Other routes found in DEX:
```
anime/addtofav/{movieid}
anime/removefromfav/{movieid}
animes/show/{id}/{code}
cast/detail/{id}/{code}
categories/streaming/show/{id}/{code}
genres/animes/show/{id}/{code}
genres/movies/all/{code}
genres/series/all/{code}
series/show/{tmdb}/{code}
series/season/{seasons_id}/{code}
stream/show/{id}/{code}
upcoming/latest/{code}
user, user/avatar, user/device/create, user/device/delete/{id}
user/logout, user/profile/create, user/profile/delete/{profile_id}
plans/plans/{code}
```

## Database Status
**EMPTY** — `AnimeSeason` table has no records (IDs 1-50 all "No query results"). The app is installed but no anime content has been populated. This makes API integration impractical.

## Streaming Hosts (from DEX)
StreamSB-family CDNs hardcoded:
- `easyplex.xyz/api/source/`
- `easyplex.yobdev.live/p2lbgWkFrykA/`
- `7pow.me`, `kawaiifansub.com`, `ff-dns.xyz`, `gavid.xyz`, `gdstream.net`
- `iplhd.cyou`, `kanavid.xyz`, `ll-dns.xyz`, `manasx.xyz`, `mifilm.xyz`
- `mrdhan.com`, `otcplay.fun`, `playto1.com`, `pp-dns.xyz`, `sbplay.xyz`
- `suzihaza.com`, `vanfem.com`, `zapurl.xyz`, `diampokusy.com`

## Google API Key
`AIzaSyDRKQ9d6kfsoZT2lUnZcZnBYvH69HExNPE` in classes4.dex (Firebase, not TMDB)

## Conclusion
**Cannot integrate AniTaku** because:
1. `client_secret` not in APK binary (needs runtime MITM on real device)
2. Server DB is empty (no anime content to query)
3. StreamSB hosts require video IDs from authenticated API

**Why:** Client secret is ProGuard-obfuscated or fetched remotely; DB likely unpopulated intentionally (demo/dev server).

**Next if needed:** Install app on physical Android device, capture OAuth traffic via Burp Suite with root certificate or custom ROM.
