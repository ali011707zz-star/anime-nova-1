---
    name: APK reverse-engineering playbook (generalized)
    description: step-by-step method proven on Anime Rift for extracting a real API + testing whether its "security" (integrity/App Check JWTs, device attestation) is actually enforced or just cosmetic. Reuse for the next queued app.
    ---

    ## Step order (cheapest -> most invasive)
    1. **Try the obvious first**: download official APK, decompile with jadx/apktool, grep strings for API base URLs, static keys, endpoint paths. Works great for native apps with a static key (see direct-api-key-vs-oauth-apps.md). Fails for Flutter apps - logic is compiled into libapp.so, Java decompile is just the shell/plugin glue.
    2. **Direct curl test** of any discovered base URL from an allowed IP (VPS, not Replit sandbox - Replit IP is often geo/cloud-blocked). If it 200s cleanly, you may be done already.
    3. **If blocked by "integrity"/App-Check/attestation-looking headers**: don't assume it's real. Get one genuine captured request (see capture method below) and test whether the server actually verifies the signature:
     - Forge a JWT with the same header/payload shape but a garbage HMAC key (or tamper the exp far into the future). Replay it.
     - If it still 200s, the "security" is cosmetic - the server only checks shape/scope, not the cryptographic signature. This was true for Anime Rift's HS256 "integrity" header.
     - Systematically re-test with headers/fields removed one at a time to find which ones are *actually* checked (often it's mundane stuff like x-platform/x-installation-source/x-device-timezone presence, not the crypto).
     - Also test whether "device registration" endpoints accept fully fabricated device info (fake model/IDs) - if yes, you can mint unlimited "devices" server-side with zero real hardware/Play Integrity involvement.
    4. **If you need a live capture and the app is Flutter (TLS pinning via BoringSSL, not the OS trust store)**: patching libflutter.so's cert verification (reFlutter tool) works, but plan for the fact that Flutter's dart:io HttpClient **ignores the Android system/per-Wi-Fi HTTP proxy setting** entirely - a manual Wi-Fi proxy will capture nothing even after the pin-bypass patch. Use a no-root on-device VPN capture tool instead (PCAPdroid: enable "TLS تعمية/decryption" + "Mitm إعداد/setup" + set dump mode to HAR or PCAP) - it intercepts at the IP layer below the app's HTTP stack, so it works regardless of the app's proxy-awareness. Export as **HAR** (not just a keylog file alone - a keylog needs the matching pcap to be useful, so if the tool offers both, prefer the combined HAR/decrypted export).
    5. Once you have one real captured request per endpoint (with real headers + a real sessionId/session chain if present), replay each with curl from the VPS, swapping only the "security" fields for forged ones, to map out the *real* minimum required fields per endpoint.

    ## Why this matters
    Many of these "attestation" headers are copy-pasted boilerplate from a template/course and never wired up to real server-side verification. Assuming they're real costs hours of unnecessary native reverse engineering (BoringSSL hooking, Frida, etc.) that turns out to be unnecessary once you just test the forgery.
    