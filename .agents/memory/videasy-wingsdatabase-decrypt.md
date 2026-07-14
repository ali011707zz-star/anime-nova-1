---
name: Videasy/Vidking real backend + native decrypt
description: How to find and decrypt the current Videasy-family "STREAMCRYPTO" source API without any third-party decryptor service.
---

- `api.videasy.to` (the old endpoint) is dead — it now redirects to an unrelated TMDB readme-docs page. The real backend moved to `api.wingsdatabase.com`, same `/{server}/sources-with-title` route shape as before, plus a new `/seed?mediaId=` step.
- Found by inspecting `vidking.net` (an official Videasy sub-brand — its page loads `users.videasy.to/api/script.js`). Its Vite JS bundle (`assets/VideoPlayer-*.js`) ships the *entire* decrypt algorithm in plain minified JS (not WASM) — always check official sub-brands/embeddable-player sites of a target, not just the original domain, when a domain's API disappears.
- Algorithm: fetch a short-lived seed, then decrypt the ciphertext with a custom PRNG-based XOR stream cipher (RC4 KSA when the seed string length is odd, otherwise a bespoke 61-slot generator seeded by FNV-1a(seed) XOR golden-ratio-mixed mediaId), verified by a 4-byte `"mvm1"` magic prefix on the decrypted JSON. Fully reimplemented natively in `anime.ts` (`wc*` helper functions) — zero dependency on `enc-dec.app` or any other third-party decrypt-as-a-service.
- Requires `Referer`/`Origin: https://www.vidking.net/` headers on `api.wingsdatabase.com` requests or it 403s, even from the VPS IP — this is a header/bot-check gate, not an IP block (unlike most other providers in this project).
- Of the 5 known servers (Hydrogen/cdn, Titanium/tejo, Oxygen/neon2, Lithium/downloader2, Helium/1movies), only Hydrogen and Lithium were live when tested (2026-07-12); Titanium/Oxygen/Helium gave 500/524/404 — treat per-server failures as normal upstream churn, not an algorithm bug.
- **Why this matters:** "STREAMCRYPTO_SEED_INVALID"-type failures on this app family mean the API *moved*, not that the crypto key rotated — always re-discover the current base URL from a live official site before assuming the encryption itself needs new reverse-engineering.
