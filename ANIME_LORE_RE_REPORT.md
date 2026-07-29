# Anime Lore v1.1.6 — Reverse Engineering Report
**Date:** 2026-07-29  
**APK:** `Anime Lore_1.1.6.apks` → `base.apk` (27MB) + `split_config.arm64_v8a.apk`  
**Tools:** apktool 2.11.1, jadx 1.5.0, python3 binary analysis  

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

---

## 2. Firebase Configuration

| Field | Value |
|-------|-------|
| Project ID | `anime-lore-4f382` |
| API Key | `AIzaSyBVm91VIO6qtLAB9GryX6YrDwsjepg3ZOo` |
| App ID | `1:569295781584:android:3801e93d787488c007a8d5` |
| Sender ID | `569295781584` |
| Storage Bucket | `anime-lore-4f382.firebasestorage.app` |

### Firebase Remote Config (fetched live)
```json
{
  "anime_anili_new":   "true",   // AniList new source
  "anime_holakos":     "true",   // "holakos" video source
  "anime_key_anili":   "true",   // AniList API key source
  "anime_lore_mode":   "true",   // app-mode feature
  "anime_newer":       "true",   // newer anime source
  "anime_sdr":         "true",   // SDR streaming source
  "anime_subs":        "true",   // subtitles feature
  "anime_tersana":     "true",   // "tersana" source
  "shorebird_enabled": "true",   // OTA patch updates via Shorebird
  "showTelegram":      "false"
}
```
**→ Accessible without auth via:**  
`POST https://firebaseremoteconfig.googleapis.com/v1/projects/anime-lore-4f382/namespaces/firebase:fetch?key=AIzaSyBVm91VIO6qtLAB9GryX6YrDwsjepg3ZOo`

---

## 3. Data Sources

### Primary: AniList GraphQL
- **URL:** `https://graphql.anilist.co`
- Public API, no auth required
- Used for: anime info, cover images, character details, ratings

### Secondary: Custom Backend (API base URL)
- The base URL is **NOT stored as a plain string** in the binary
- It appears to be fetched dynamically at runtime (via `refreshApiUrl` mechanism)
- Likely stored in Firebase Remote Config (not visible in public fetch) or SharedPreferences
- Developer domain: `elsoukauto.com` (Tunisian car marketplace — same developer)
- `animelore.com` is a GoDaddy **parked domain** (redirects to /lander)

---

## 4. Community/Social API Paths (relative)

These PHP-style paths are hardcoded in the binary — they use a separate `communityApi` base:

```
# Direct Messages
/animer/api/dm
conversations.php
history.php?conversation_id=
fetch.php?conversation_id=
send.php
typing.php
read.php
start.php
delete.php
presence.php
block.php?target_user_id=

# Follow System
/animer/api/follow/feed.php?page=
/animer/api/follow/status.php?target_user_id=
/animer/api/follow/toggle.php

# Users
/animer/api/users/report.php
```

---

## 5. REST API Endpoints (from Dart getter names)

### Auth
```
authLoginPath        → /login (or similar)
authRegisterPath
authLogoutPath
authDeletePath
authProfilePath
authUpdatePath
authChallenge        → challenge/CAPTCHA mechanism
```

### Anime Catalog
```
animeBrowseAllPath
animeSearchPath
animeSearchAdvancedV2
animeMoviesPath
animeQueryPath
animeCharactersPath
animeDetailCachedPath
animeEpisodesCachedPath
animeListCachedPath
animeRelatedMoviesPath
animeSeasonsCachedPath
animeSyncPath
animeRequestUrl      → request anime to be added
```

### Community
```
commentsAddPath
commentsDeletePath
commentsGetPath
commentsMyPath
commentsReportPath
commentsVotePath
communityApi         → separate base URL for community features
```

### Users & Social
```
usersBadgesPath
usersBadgesPath
usersLeaderboardPath
usersPubCommentsPath
usersPubProfilePath
usersPubRatingsPath
usersPubStatsPath
avatarsListPath
adminManageCharactersPath
messagesInboxPath
messagesMarkReadPath
messagesReplyPath
```

### Premium / Subscription
```
premiumCheckPath
premiumDevicePath
premiumDeviceSyncPath
premiumSyncPath
hasPremium
purchaseStream
```
**In-App Purchase IDs:**
- `anime_lore_premium_monthly`
- `anime_lore_premium_yearly`
- `anime_lore_premium_lifetime`
- `anime_lore_premium_lifetime2`
- `animelorex3`
- `animeloreyearly1dollar`
- `animeloreyearly2dollar`

### Other
```
quizI18nPath
quizLeaderPath
quizSubmitPath
ratingsGetPath
ratingsMyCountPath
ratingsRatePath
schedulePath
statsLogWatchPath
generateUrlEndpoint  → likely generates video stream URLs
reportContentUrl
```

---

## 6. Video Streaming

### Architecture
- **`StreamingCodeService`** — main service for video URL generation
- **`generateUrlEndpoint`** — endpoint that returns stream URLs
- Supports HLS (`#EXT-X-STREAM-INF`, `/index.m3u8`, `#EXT-X-TARGETDURATION:`)
- Supports MP4 direct links (`/videos/` path)
- Uses **Dio** HTTP client with interceptors
- Has `getMediaUrl` function for URL resolution

### Source Flags (from Remote Config)
| Flag | Likely Meaning |
|------|----------------|
| `anime_holakos` | holakos.com or similar streaming embed |
| `anime_sdr` | SDR (Standard Dynamic Range) CDN source |
| `anime_tersana` | tersana CDN/embed source |
| `anime_anili_new` | AniList-based source (newer) |
| `anime_newer` | newer stream source |

---

## 7. Navigation Routes (obfuscated)

Short Dart routes found in binary:
```
/3yn  /fE9  /jzJ  /l4d  /meD  /mQ0
/Nrp  /OOl  /ofs  /oxj  /t7J  /tC7  /trk
```
Named routes:
```
/login
/home/
/ad_widget
/videos/
```

---

## 8. Authentication Mechanism

- `_authenticate@17463476` — HTTP Digest-style auth
- `_shouldAuthenticate@17463476`
- `_authSuffix@652139171` — adds auth suffix to URLs
- `authChallenge` — challenge-response mechanism
- Bearer token: `Bearer ` prefix found
- `proxy-authorization` header support
- Google OAuth (third-party sign-in)

---

## 9. OTA Update: Shorebird

- `shorebirdEnabled = true` (from Remote Config)
- Shorebird is a Flutter OTA patch system
- App can receive code patches without Play Store update
- Shorebird app ID: not found in binary (may be in shorebird.yaml — not present in APK)

---

## 10. Third-Party SDKs

| SDK | Purpose |
|-----|---------|
| Google Mobile Ads | AdMob ads |
| Facebook Audience Network | `assets/audience_network.dex` |
| Firebase Analytics | User analytics |
| Firebase App Measurement | `https://app-measurement.com/a` |
| Vungle Ads | `https://adx.ads.vungle.com/api/ads` |
| In-App Billing | Google Play Billing v2 |
| Sqflite | Local SQLite database |
| Dio | HTTP client |
| `url_launcher_android` | Opens external URLs |
| `flutter_timezone` | Timezone detection |

---

## 11. Useful for Anime NOVA

### ✅ Directly usable
1. **AniList GraphQL** (`https://graphql.anilist.co`) — same API we already use
2. **Firebase Remote Config pattern** — can fetch feature flags without auth using known API key
3. **`generateUrlEndpoint` pattern** — the app has a server-side URL generator; suggests similar architecture is viable

### ℹ️ Informational
- App is multilingual (EN/AR/FR) — similar to our scope
- Uses PHP backend for social features (`presence.php`, `typing.php`, etc.)
- AniList is the primary data source — confirms our approach is correct
- In-app purchase uses Play Billing — for future monetization reference

### ❌ Not extractable
- API base URL (dynamically loaded/runtime)
- Video streaming source URLs (encrypted/obfuscated in backend)
- Authentication tokens

---

## 12. Summary of Key Unknowns

| Unknown | Likely Method to Resolve |
|---------|--------------------------|
| API base URL | Traffic capture (mitmproxy/Charles on real device) |
| Video source domains | Same: intercept network on real device |
| Shorebird app ID | Shorebird patch metadata (need real device) |
| Auth token format | Run app + intercept HTTP |

---

*Report generated by static analysis of libapp.so + apktool + Firebase Remote Config probe.*
