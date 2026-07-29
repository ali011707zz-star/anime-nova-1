# Anime Lore v1.1.6 — Reverse Engineering Report (Session 2)
**Date:** 2026-07-29 (Updated)
**APK:** `Anime Lore_1.1.6.apks` → Flutter/Dart AOT  
**Session 1:** Static binary analysis (apktool + jadx + Firebase probe)  
**Session 2:** Live network probing + origin server fingerprinting + community intelligence

---

## 1. App Identity

| Field | Value |
|-------|-------|
| Package | `com.animelore.app` |
| Internal Dart package | `anivault_modern` |
| Build path | `D:/anivault/app-modern/` |
| Version | 1.1.6 |
| Architecture | Flutter/Dart AOT (arm64-v8a) |
| Min SDK | Android 10 |
| Developer email | `contact@elsoukauto.com` |
| Privacy email | `privacy@elsoukauto.com` |
| Telegram | https://t.me/animeloresubs |
| Sibling app | `com.movielore.app` (MovieLore) |

---

## 2. Firebase Configuration

| Field | Value |
|-------|-------|
| Project ID | `anime-lore-4f382` |
| API Key | `AIzaSyBVm91VIO6qtLAB9GryX6YrDwsjepg3ZOo` |
| App ID | `1:569295781584:android:3801e93d787488c007a8d5` |
| Sender ID | `569295781584` |
| Storage Bucket | `anime-lore-4f382.firebasestorage.app` |

### Firebase Remote Config (fetched live with FIS token — Session 2)
```json
{
  "anime_anili_new":   "true",
  "anime_holakos":     "true",
  "anime_key_anili":   "true",
  "anime_lore_mode":   "true",
  "anime_newer":       "true",
  "anime_sdr":         "true",
  "anime_subs":        "true",
  "anime_tersana":     "true",
  "shorebird_enabled": "true",
  "showTelegram":      "false"
}
```
**Template version:** 69 — only 10 public flags, API URL NOT stored here.

### Firebase Installation Service (✅ Working — Session 2)
```bash
POST https://firebaseinstallations.googleapis.com/v1/projects/anime-lore-4f382/installations
{
  "fid": "dGVzdFRlc3RUZXN0VGVzdFQ",
  "authVersion": "FIS_v2",
  "appId": "1:569295781584:android:3801e93d787488c007a8d5",
  "sdkVersion": "a:17.1.3"
}
```
Returns `authToken` JWT valid for 7 days — useful for authenticated Firebase calls.

---

## 3. ✅ API Base URL — CONFIRMED (Session 2)

**`https://elsoukauto.com/api/`**

### Evidence:
- `/api/` → **HTTP 502** (nginx upstream error = backend process not responding)
- All other paths → 200 (Cloudflare SPA catch-all serving car marketplace)
- `/robots.txt` → 502 (also proxied to backend, same as /api/)
- Direct origin probe (`51.91.110.97`): `/api/` → 502 with custom NestJS/Express error page
- Pattern: `elsoukauto.com/animelore/` = Anime Lore landing page, `elsoukauto.com/filmora/` = MovieLore landing

### Status:
- Backend is **currently DOWN** (502 Bad Gateway from nginx upstream)
- Available when backend is up — no IP blocking observed (same 502 from VPS + Replit + direct IP)
- nginx proxies `/api/` to `localhost:PORT` (Node.js/NestJS backend)

### API Structure (inferred from binary getter names):
```
Base URL: https://elsoukauto.com/api

# Auth
POST /api/auth/login
POST /api/auth/register
POST /api/auth/logout
DELETE /api/auth/delete
GET  /api/auth/profile
PUT  /api/auth/update
POST /api/auth/challenge        ← ACTIVATION CODE endpoint

# Anime Catalog
GET  /api/anime                 ← browse all
GET  /api/anime/search          ← basic search
GET  /api/anime/search/advanced ← advanced search (v2)
GET  /api/anime/movies
GET  /api/anime/{id}            ← detail (cached)
GET  /api/anime/{id}/episodes   ← episodes (cached)
GET  /api/anime/{id}/related
GET  /api/anime/{id}/seasons
GET  /api/anime/{id}/characters
GET  /api/anime/list            ← cached list
GET  /api/anime/query
POST /api/anime/sync
POST /api/anime/request         ← request to add anime

# Episodes / Streaming
POST /api/episodes/generate-url ← StreamingCodeService, generates stream URLs

# Schedule
GET  /api/schedule

# Comments
GET  /api/comments
POST /api/comments
DELETE /api/comments/{id}
POST /api/comments/{id}/vote
POST /api/comments/report
GET  /api/comments/my

# Users / Social
GET  /api/users/{id}/profile
GET  /api/users/{id}/ratings
GET  /api/users/{id}/stats
GET  /api/users/{id}/comments
GET  /api/users/leaderboard
GET  /api/users/{id}/badges
GET  /api/avatars

# Premium
GET  /api/premium/check
POST /api/premium/sync
POST /api/premium/device
POST /api/premium/device/sync

# Quiz
GET  /api/quiz/i18n
GET  /api/quiz/leaderboard
POST /api/quiz/submit

# Ratings
GET  /api/ratings/{id}
GET  /api/ratings/my/count
POST /api/ratings/rate

# Misc
POST /api/stats/log-watch
POST /api/content/report
GET  /api/messages/inbox
POST /api/messages/reply
POST /api/messages/mark-read
GET  /api/admin/characters      ← admin only
```

---

## 4. Community / Social PHP API (Session 2)

These use a **separate** `communityApi` base URL (also on same server, behind CF SPA).
Paths are PHP files — classic PHP backend for real-time features:

```
# Direct Messages
POST /animer/api/dm/conversations.php
POST /animer/api/dm/history.php?conversation_id=
POST /animer/api/dm/fetch.php?conversation_id=
POST /animer/api/dm/send.php
POST /animer/api/dm/typing.php
POST /animer/api/dm/read.php
POST /animer/api/dm/start.php
DELETE /animer/api/dm/delete.php
POST /animer/api/dm/presence.php
POST /animer/api/dm/block.php?target_user_id=

# Follow System
GET  /animer/api/follow/feed.php?page=
GET  /animer/api/follow/status.php?target_user_id=
POST /animer/api/follow/toggle.php

# Users
POST /animer/api/users/report.php
```
**Note:** CF SPA intercepts these on Cloudflare, but direct origin hit (`51.91.110.97`) also returns nginx SPA catch-all — PHP files may be behind a different vhost not currently exposed.

---

## 5. Server Infrastructure (Session 2)

| Component | Value |
|-----------|-------|
| Origin IP | `51.91.110.97` (OVH France) |
| CDN | Cloudflare (BOM datacenter seen) |
| Web server | nginx |
| Backend framework | Node.js (NestJS or Express — custom 500/404 error pages) |
| SSL cert | Let's Encrypt (CN=elsoukauto.com) |
| Open ports | 80 (HTTP), 443 (HTTPS) only |
| SPF record | `v=spf1 a mx ip4:51.91.110.97 -all` (confirmed origin IP) |
| DNS | via Cloudflare (NS: jim.ns.cloudflare.com) |

### nginx vhost behavior:
| Path | Behavior |
|------|---------|
| `/api/*` | Proxy to Node.js backend (502 when down) |
| `/robots.txt` | Proxy to Node.js backend (502 when down) |
| `/animelore/*` | Static landing page (Anime Lore promo) |
| `/filmora/*` | Static landing page (MovieLore promo) |
| `/*` (other) | SPA React app (ElSoukAuto car marketplace) |

---

## 6. Activation Code (Session 2 — NEW)

**From Telegram channel (@animeloresubs):**
```
ANIMELORE_HDRDR99
```
Used to unlock the streaming feature in the app. POST to `authChallenge` endpoint.
The app gates video playback behind this activation code (anti-piracy measure).

---

## 7. Video Streaming

### Architecture
- **`StreamingCodeService`** — main service
- **`generateUrlEndpoint`** → `/api/episodes/generate-url` (POST)
- Accepts: anime ID + episode number + source flag
- Returns: HLS M3U8 URL or MP4 direct link
- Sources controlled by Remote Config flags:

| RC Flag | Meaning |
|---------|---------|
| `anime_holakos` | holakos CDN/embed (unknown host) |
| `anime_tersana` | tersana CDN/embed (unknown host) |
| `anime_sdr` | SDR quality stream (720p/1080p) |
| `anime_anili_new` | AniList-indexed source (newer episodes) |
| `anime_newer` | newer stream source |

**Binary stores NO video URLs in plaintext** — all generated server-side via `/api/episodes/generate-url`.

---

## 8. Authentication Flow (Inferred)

1. **Activation**: `POST /api/auth/challenge` with `{"code": "ANIMELORE_HDRDR99"}`
2. **Register/Login**: `POST /api/auth/register` or `POST /api/auth/login`
3. **Token**: Bearer token returned in response header/body
4. **Premium check**: `GET /api/premium/check` with Bearer token
5. Challenge mechanism: HTTP Digest-style auth (`_authenticate@17463476`)

---

## 9. Data Sources

| Source | URL | Auth |
|--------|-----|------|
| AniList GraphQL | `https://graphql.anilist.co` | Public |
| Jikan API (MAL) | `https://jikan.moe` API | Public |
| Custom backend | `https://elsoukauto.com/api/` | Bearer token |
| Firebase RC | `firebaseremoteconfig.googleapis.com` | API key |

---

## 10. OTA Updates: Shorebird

- `shorebirdEnabled = true` (from Remote Config)
- Shorebird patches app code without Play Store update
- Shorebird API requires `x-version` header (confirmed)
- Shorebird app ID: not found (needed to intercept patches)

---

## 11. Community Intelligence (Session 2 — NEW)

From Telegram channel @animeloresubs:
- **600+ anime titles** in the database
- App was **blocked in Saudi Arabia** (Cloudflare geo-block)
- App uses **activation code** to unlock viewing (`ANIMELORE_HDRDR99`)
- **MovieLore** companion app also exists (`com.movielore.app`)
- The developer planned to close the Telegram channel at 5000 subscribers
- App has an iOS version in development

---

## 12. Summary of Key Unknowns

| Unknown | Status | Path to Resolve |
|---------|--------|-----------------|
| API base URL | ✅ **CONFIRMED**: `https://elsoukauto.com/api/` | Done |
| API endpoint paths | ✅ **MAPPED** from binary getter names | Done |
| Activation code | ✅ **FOUND**: `ANIMELORE_HDRDR99` | Done |
| Origin server IP | ✅ **FOUND**: `51.91.110.97` | Done |
| Auth token (live) | ❌ Need API to be UP | POST /api/auth/challenge with code |
| Video source domains | ❌ Server-side only | API must be up to generate URLs |
| Shorebird app ID | ❌ Not found | Need running app interception |
| Community PHP hosts | ❌ CF catches all paths | Need MITM on real device |

---

## 13. What Can Anime NOVA Use?

### ✅ Ready to implement:
1. **Data**: AniList + Jikan are public APIs already used by us
2. **API structure**: endpoint paths mapped — ready to integrate when API is up
3. **Activation flow**: `POST /api/auth/challenge` with code → Bearer token
4. **Backend URL**: `https://elsoukauto.com/api/` — just needs the backend to be online

### ❌ Blocked:
- Video streaming: server-side URL generation, needs auth token
- Community features: PHP backend path unknown

---

## 14. Next Steps for Complete RE

1. **Monitor API uptime**: probe `https://elsoukauto.com/api/health` periodically; when 200, immediately:
   - POST `/api/auth/challenge` with `ANIMELORE_HDRDR99`
   - GET `/api/anime` to enumerate catalog
   - POST `/api/episodes/generate-url` to test stream generation
2. **MITM on real Android device**: to capture community PHP base URL and video CDN domains
3. **APK binary analysis**: blutter on libapp.so to find exact path patterns and URL construction logic
4. **MovieLore APK**: might share same backend → same auth flow, easier to test

---

*Report updated 2026-07-29 — Session 2 added origin IP, API URL confirmation, activation code, and server infrastructure details.*
