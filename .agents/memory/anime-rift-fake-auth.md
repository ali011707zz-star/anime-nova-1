---
    name: Anime Rift real API + fake integrity auth
    description: gateway.anime-rift.com/api/v4 auth model fully broken - integrity JWT signature unchecked, device registration accepts fabricated info; full curl-only flow confirmed working.
    ---

    ## Real API base
    `https://gateway.anime-rift.com/api/v4` (app is Flutter/Dart, logic compiled to libapp.so, static analysis of Java is useless - use HAR capture instead).

    ## Auth is fake
    - `integrity` header looks like a Play-Integrity/App-Check JWT (HS256, header {alg,typ}, payload {scope,exp,iat}) but the server **never verifies the signature** - any garbage HMAC key works. It only checks the JWT is well-formed and that `scope` matches a per-endpoint string (e.g. `ANIME.LIBRARY.HOME_CONTENT`, `ANIME.LIBRARY.EPISODES.SOURCES.CHECK_AVAILABILITY`, `ANIME.LIBRARY.EPISODES.SOURCES.DIRECT_LINK`, `USER.AUTH.DEVICE.REGISTER`). Scope strings are visible per-request in captured traffic.
    - `authorization: Bearer null` and `x-firebase-app-check: null` (the literal string "null") are accepted as-is - no real Firebase Auth or App Check token needed.
    - `POST /auth/register/device` accepts fully fabricated device_info/deviceId/firebaseInstallationId (tested: fake "Pixel" device, made-up 40-char ID) and returns 201 + a sessionKey immediately. No real Play Integrity attestation enforced.
    - A **random/unregistered** device-id string alone gets rejected with `DEVICE_SUSPENDED` - you must go through `/auth/register/device` first (with any fabricated payload), then reuse that same device-id in subsequent calls.

    ## Required headers (missing any of these causes 403 ACCESS_DENIED / UNSUPPORTED_PLATFORM, independent of the integrity/auth checks above)
    x-platform: Mobile, x-os: android, user-agent: Dart/3.10 (dart:io), x-device-release-version, x-device-timezone (ISO string), x-device-language, x-installation-source: IS_INSTALLED_FROM_PLAY_PACKAGE_INSTALLER, x-device-id, x-firebase-id, content-type: application/json.

    ## Working flow (curl-only, no phone/app/proxy needed)
    1. POST /auth/register/device with fabricated device_info -> sessionKey (not actually used as a bearer token anywhere observed).
    2. GET /library/home_content, /library/details/:id, /library/episodes/:id -> catalog browsing, only needs the header set above + any-shaped integrity JWT.
    3. POST /library/episode/sources {episodeId} -> list of provider/host entries (ANKO/anineko, ANW/animeworld, CR2, DEA/videa, KKFP/krakenfiles_premium, etc.)
    4. POST /library/episode/source/can_play {episodeId, hostId, is_download, event_name} -> returns sessionId (real app-level session, not a security gate - just needs to be reused, not "guessed correctly").
    5. POST /library/episode/source/direct_link {id: hostId, quality, with_internal_player, sessionId} -> real playable videoUrl + http_headers to send (e.g. krakenfiles needs Referer/Origin: https://krakenfiles.com/).

    ## Method used to capture this
    PCAPdroid (no-root Android VPN-based capture with built-in local mitmproxy for TLS decryption) exporting a .har file was far more useful than trying to MITM via reFlutter+external proxy - reFlutter patch worked but the phone's Dart networking stack ignored the manual Wi-Fi proxy setting entirely (known Flutter/Dart quirk: dart:io HttpClient does not respect Android's per-network proxy config unless the app explicitly wires up HttpClient.findProxyFromEnvironment). PCAPdroid's on-device VPN interception bypasses that since it operates below the app's HTTP layer.
    