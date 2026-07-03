---
name: Anime Rift APK reverse-engineering via MITM
description: What was learned trying to capture the Anime Rift app's authenticated API traffic, and why the effort stopped
---

# Anime Rift MITM capture attempt

**Why:** User wanted to recover the API/backend structure of their previous app "Anime Rift" (Flutter) to see if it had sources worth porting into Anime NOVA.

## Static analysis (via `strings` on `libapp.so`) got us the route map
Since it's a Flutter app, the Dart code is AOT-compiled — no readable source without deeper decompilation tooling. But `strings` on `libapp.so` recovered the API base (`gateway.anime-rift.com/api/v4`) and route names (search, episode sources, favorites, watch history), all listed in `replit.md`.

## Live capture (mitmproxy) hit a hard wall: Android system CA trust
Routed the user's phone through `mitmdump` on the VPS via manual Wi-Fi proxy. Traffic reached the proxy, but every TLS handshake failed — Android 7+ requires the MITM CA to be trusted at the **system** level, not just "user credentials," which needs root/Magisk. The phone was not rooted, so authenticated request/response bodies for the auth-gated `gateway.anime-rift.com` endpoints (favorites/watch-history/account) could never be captured this way.

**How to apply:** If a future MITM-capture request comes up against a non-rooted Android device, don't spend more than one retry cycle on it — the system-CA-trust wall is not solvable without root. Either ask for a rooted device/emulator, or fall back to what unencrypted metadata (domain names in the failed-handshake log) reveals.

## What the failed-handshake domain list still told us
Even without decrypting payloads, the *domains* the app attempted to reach were visible in the proxy log. This showed Anime Rift resolves playback through the same public TMDB+vidsrc/embed.su ecosystem (`vidsrc.cc`, `vidsrc.pro`, `vidsrc.me`, `embed.su`, `api.themoviedb.org`) that Anime NOVA's `animation.ts` scraper already has code for (some enabled, some disabled due to Replit-datacenter IP blocks — see `web-mobile-source-sync.md`). Conclusion: no unique/proprietary video backend to port over; not worth further pursuit.
