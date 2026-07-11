---
name: TimeMovies MITM capture plan
description: Chosen no-root approach for capturing TimeMovies app network traffic on the user's Android phone; status and next steps if resumed later.
---

**Context:** User wants to reverse-engineer TimeMovies (tmovies.app) API by capturing its network traffic. No rooted device/emulator available; only a real Android phone + a Linux computer with no root access.

**Decision:** Use HTTP Toolkit (https://httptoolkit.com) on the Linux computer with a manual Wi-Fi proxy + CA cert install on the Android phone — no ADB/root required as a baseline. This is the standard non-rooted interception path.

**Why:** ADB/rooted MITM setups (Frida, magisk CA injection) aren't available given the constraints. Manual system-proxy + user-installed CA cert works for any app that doesn't do certificate pinning; if TimeMovies pins certs, capture will fail and the fallback is Frida-based unpinning (requires root) or static APK analysis instead (already partially done — see timemovies-apk-analysis.md).

**How to apply / steps given to user:**
1. Install HTTP Toolkit on the Linux computer (AppImage or .deb from the download page).
2. Launch it, choose "Android device via Wi-Fi" (or ADB if a cable + USB debugging becomes available later) — it shows a proxy IP:port and a CA-cert install link/QR.
3. On the phone: connect to the same Wi-Fi as the computer, open Wi-Fi settings → edit network → advanced → manual proxy → enter the IP:port HTTP Toolkit shows.
4. Visit the CA cert URL HTTP Toolkit provides in the phone's browser, download and install the certificate (Android requires a lock-screen PIN/pattern set first to install a user CA cert).
5. Open the TimeMovies app and use it normally; traffic appears live in HTTP Toolkit on the computer.
6. If requests show as failed/blocked (cert pinning), this baseline method won't work — needs Frida + root, or fall back to static analysis of the APK.

**Status as of 2026-07-11:** Plan given to user, not yet executed/verified. Resume by asking whether step 2-4 worked and what showed up in HTTP Toolkit's traffic list.
