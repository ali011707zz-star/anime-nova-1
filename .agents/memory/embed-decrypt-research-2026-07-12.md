---
name: Native embed-decryption research — method + status (2026-07-12)
description: The reverse-engineering method used to crack embed providers natively, current status per provider, and the queue of providers not yet examined.
---

## Method (repeat this for every new provider)
1. Go to the provider's **own official embed page** (not GitHub tools, not third-party decryptor APIs, not other apps' bundled copies). Fetch it with a real browser `User-Agent` via curl/cfProxy.
2. List every JS bundle it loads. For Next.js sites, check the numbered `_next/static/chunks/*.js` files. For Vite sites, check `assets/*.js` — and follow `import("./Chunk-hash.js")` references inside the entry bundle to reach lazy-loaded chunks (the real player logic is usually in a separate lazy chunk, not the entry file).
3. In each chunk, grep for: the real backend hostname (`grep -oE 'https?://[a-zA-Z0-9._-]+'`), and decryption keywords (`decrypt`, `atob`, `CryptoJS`, `crypto.subtle`, `AES`, `secretstream`, `.wasm`, `xor`).
4. If you find a **plain-JS custom cipher** (not a real crypto primitive) — it is almost always portable verbatim into Node: copy the minified functions, rename to avoid collisions, replace `atob`/browser APIs with Node equivalents (`Buffer.from(..., "base64")`), and test end-to-end with a real TMDB id before wiring into the app.
5. If the site uses **WASM** or a real algorithm (`crypto_secretstream_xchacha20poly1305`, actual AES-GCM via `crypto.subtle`) for a step, check first whether that WASM/crypto call is protecting the actual video sources or just ancillary stuff (ad-network script loaders, anti-sandbox checks, analytics) — don't assume WASM = video DRM without confirming what data flows through it.
6. Test the discovered API directly with curl/node from the VPS (not just Replit — some providers gate on browser-like headers `Referer`/`Origin` rather than IP, so try both before concluding it's IP-blocked).

## Status per provider (this research thread)

- **Vidking / Videasy** — ✅ DONE. Real backend is `api.wingsdatabase.com` (found via vidking.net, a Videasy sub-brand). Custom PRNG-XOR cipher, plain JS, fully reimplemented natively in `anime.ts` (see `videasy-wingsdatabase-decrypt.md`). Wired in as `videasy_anim`, confirmed working end-to-end on VPS 2026-07-12 (Hydrogen + Lithium servers return real HLS/MP4 + Arabic subtitle URLs).
- **VidLink (vidlink.pro)** — 🔄 IN PROGRESS, not yet cracked. Findings so far: it's a Next.js app; `/api/mercury` and `/api/venus` are just ad-network (Adcash/PopAds) script proxies, not video-related. Real movie metadata comes from `/api/b/movie/{id}?multiLang=` — returns JSON directly via `JSON.parse` with **no visible decrypt step in that fetch wrapper itself** (module `20162` in the page bundle), which either means (a) that endpoint is already plaintext, or (b) decryption happens later when `stream` data merges with `data` inside the player component. There IS a `/fu.wasm` WebAssembly module loaded via `window.sodium` (libsodium.js) + a custom `Dm` class as `importObject`, loaded specifically before/around stream rendering — this is the prime suspect for real stream decryption and has NOT yet been dug into (need to actually pull `/fu.wasm` and analyze it, or trace what buffer gets passed into it, e.g. via a live Playwright/browser network capture since static grep can't see WASM internals). Next step: capture a live request in a real browser (network tab) for a `/movie/{id}` page to see the actual `stream` payload shape and whether it's ciphertext needing the wasm module, or already-plain source URLs.
- **VidFast (vidfast.pro)** — ⏸️ NOT YET RE-VERIFIED against its live official site this round. Already integrated in `anime.ts`/`animation.ts` via `vfGetProbe`/`vfPostStream`/`vfDecJson` from earlier work — still needs a fresh check against the *current* vidfast.pro to confirm the algorithm hasn't moved (same class of risk as Videasy: endpoint churn without any actual crypto change).

## Queue — embed providers not yet examined at all (start here next)
Common free/ad-supported embed providers seen across similar Arabic/English streaming apps, not yet individually reverse-engineered in this project:
- vidsrc.to / vidsrc.me / vidsrc.icu (distinct from the already-integrated vidsrc.cc)
- embed.su
- 2embed.cc / 2embed.skin
- autoembed.co / autoembed.cc
- moviesapi.club
- smashystream.top
- primewire.tf (embed variant)
- vidplay.site / vidplay.online (mcloud family — often shares tech with filemoon)
- filemoon.sx
- streamwish.to (already used indirectly via `parseStreamwish` for EgyBest — could be worth a dedicated direct integration)
- mixdrop.co / mixdrop.ag
- doodstream.com (dood.to/dood.li mirrors)
- uqload.is (already appears as a raw link inside DramaWorld's mirror list — not independently integrated)
- gomo.to
- nontongo.win
- vidsrc.stream / vidsrc.wtf (newer vidsrc forks — check if distinct from vidsrc.cc)
- whvx.net

**Note:** do not blindly trust this list — many of these rotate domains or die quickly. Before investing reverse-engineering time in any of them, do a quick liveness check (does the official domain resolve and serve a real embed page for a known TMDB id?) before going deep on chunk analysis.
