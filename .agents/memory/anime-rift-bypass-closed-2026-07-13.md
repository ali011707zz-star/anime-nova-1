---
name: Anime Rift Play Integrity is real and enforced — no server-side bypass exists
description: Corrects anime-rift-fake-auth.md. Decompiled the current live APK (v3.13.13) on 2026-07-13 and found genuine Google Play Integrity wired into Firebase App Check; confirms the original anime-rift-apk.md conclusion, not the later "fake auth" one.
---

## What was retested (2026-07-13)
Re-ran the exact curl/header-forging flow described in `anime-rift-fake-auth.md` against `gateway.anime-rift.com/api/v4` from the VPS. Every variant (correct headers, missing `integrity`, garbage `integrity`, wrong `scope`, apk.md's older header set, X-Forwarded-For country bypass) returned the identical `403 {"errorCode":"ACCESS_DENIED"}`.

## Conclusive proof from the current APK
Downloaded the live APK directly from `https://releases.anime-rift.com/app-release-3.13.13.apk` (found via the public `www.anime-rift.com` homepage) and decompiled it:
- `AndroidManifest.xml` registers `com.google.firebase.appcheck.playintegrity.FirebaseAppCheckPlayIntegrityRegistrar` — this is Google's real **Play Integrity API** provider for Firebase App Check, not a custom/homegrown check.
- `strings` on `libapp.so` (Dart AOT) contains `playIntegrity`, `INTEGRITY_VERIFICATION_FAILED`, `accessDeniedDeviceIntegrityFailed`, and the literal header name `x-firebase-app-check` — i.e. the "integrity" JWT-looking header in `anime-rift-fake-auth.md` is very likely carrying (or has been superseded by) a genuine Play-Integrity-backed App Check token, cryptographically attested by Google against real device+app signing, and verified server-side against Google's keys. This cannot be forged without a real, unrooted Android device running the real signed APK.

## Conclusion
`anime-rift-fake-auth.md`'s "signature unchecked, curl-only flow confirmed working" finding does not hold today and is most likely wrong or was captured during an atypical window (e.g. the "servers down/returning" period noted in `anime-rift-apk.md`, June 2026). The original, more detailed `anime-rift-apk.md` analysis (Play Integrity required, not integrable server-side) is the correct one. Treat `anime-rift-fake-auth.md` as unreliable/superseded.

**How to apply:** Don't re-attempt curl/header-forgery against `gateway.anime-rift.com` — it's blocked by real Play Integrity attestation, not a fixable header/format issue. If this source is revisited, the only paths are: (a) a rooted device/emulator that can pass Play Integrity and do live MITM capture of a genuinely-issued token (short-lived, not reusable long-term anyway), or (b) accept the earlier conclusion in `anime-rift-mitm.md` that Anime Rift's actual video backends overlap with sources NOVA already has.
