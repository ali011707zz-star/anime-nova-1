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

## Update — same day, after a real PCAPdroid HAR capture from the user's own (unrooted) phone
The user captured genuine live traffic (PCAPdroid HAR, `x-device-os-id`/`x-firebase-id`/`integrity` headers visible). Key format correction found: the real `integrity` header value is `Bearer <JWT>` (with the `Bearer ` prefix) — my earlier forged requests omitted that prefix, which explains why every variant (missing/garbage/wrong-scope integrity) produced the byte-identical `ACCESS_DENIED`: the server's `Bearer `-prefix extraction was already failing before it even looked at JWT content, so all my variants took the same "no token" code path.

Retested with the corrected `Bearer <forged-JWT>` format, matching the real capture's other headers 1:1 (`x-device-os-id`, `accept-encoding`, `accept`, exact header casing/values) — **still `403 ACCESS_DENIED`**. This rules out format as the remaining blocker. The real captured `integrity` JWT is HS256-signed by a secret we don't have, and — per the Play Integrity evidence above — is only issued by the server *after* it verifies a genuine Play Integrity attestation from a real device. A self-signed forged JWT with a guessed/garbage HMAC key will never match that signature.

**Conclusion stands, now on stronger evidence**: not bypassable via curl/header forgery, format bugs ruled out, real Play Integrity + real server-side signature verification confirmed empirically against a known-good captured request as ground truth.
