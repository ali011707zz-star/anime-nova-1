---
name: Lightpanda deep-dive follow-up — July 9 2026
description: Continuation of lightpanda-sources-research.md TODOs — fastvip/FaselHD fully solved, PHOENIX direct source found but CF-blocked, RISTO/ANIMEDAR/imovietime/AKWAM still open.
---

# Follow-up to lightpanda-sources-research.md

## ✅ SOLVED: FaselHD → WeCima → fastvip.space chain (TODO #1 + #2)
Full working chain confirmed on VPS:
1. WeCima episode page → `mycimafsd=` param → base64-decode → `https://fastvip.space/e/{id}`
   (NOT `/stream/{id}` — that page is just a StreamHG info/download page with no source).
2. `GET /e/{id}` (with or without Referer, both work) → HTML contains a Dean-Edwards-packed
   `eval(function(p,a,c,k,e,d){...})('...')` block.
3. Unpack with Node `new Function('return (' + inner + ')')()` (balanced-paren extraction of the
   `eval(...)` argument, not naive regex — packed string itself contains parens/quotes).
4. Unpacked JS contains a jwplayer-style config with `cdn-centaurus.com` HLS URLs:
   `https://{randomsubdomain}.cdn-centaurus.com/hls2/.../{id}_n/master.m3u8?t=...&s=...&e=...&srv=...`
5. **Both master.m3u8 and sub-playlists (index-v1-a1.m3u8) returned HTTP 200 with or without
   Referer** in this test — contradicts the earlier note that sub-playlists need
   `Referer: fasel-hd.cam` via hls-proxy. The auth is fully baked into the signed query string
   (t/s/e/srv/asn params), not the Referer header. Re-verify if 403s reappear — may be IP/time-window
   dependent.

**Why:** the fastvip embed itself was the missing piece, not the WeCima wrapper.
**How to apply:** implement fastvip's `/e/{id}` unpacker (Node vm-based, balanced-paren extraction)
as its own scraper function; feed it either the WeCima `mycimafsd` id or any other fastvip embed id.

## ✅ FOUND (blocked): PHOENIX (anime-phoenix.com) direct source
The `<video>` source is not loaded via API — it's server-rendered inside a `<template
id="player-html-template">` tag (invisible to normal DOM serialization; must inject a script that
copies `template.innerHTML` into a live `<div>` to see it). Contains a direct file URL:
`https://{worker}.phoenixpr.workers.dev/0:/Server/[Anime-Phoenix]/.../{episode}.mkv`
(direct MKV via a Cloudflare Worker acting as a file-share proxy).

**Blocked:** the Worker returns Cloudflare 403 to the VPS IP even with a proper Referer header —
likely Cloudflare Access/WAF rule or geo/ASN block, not a missing-header issue. Untested from a
residential IP; worth retrying via the CF Worker proxy pattern (see `cf-worker-deployment.md`) or a
different egress IP before writing off this source.

## ❌ STILL OPEN (not solved this session)
- **RISTO** (ristoanime.co) — actually 301-redirects to `ristoanime.me/anime4up/` (i.e. it's a
  anime4up-family rebrand, not an independent site). The `/anime4up/` listing page (476KB) has no
  anchor tags matching `/anime/{slug}/` or `-episode-N` patterns via regex — likely rendered via a
  JS grid/AJAX call after page load that Lightpanda's static dump doesn't capture. Needs CDP-mode
  with a wait-for-selector, or manual discovery of the AJAX/API endpoint the theme uses.
- **ANIMEDAR** (animedar.net) — anime detail page has zero episode links and zero mp4upload embeds
  in the static HTML (only a-ads.com ad iframe). Confirmed WordPress theme "animestream" — episode
  list is almost certainly injected via an AJAX call (common for this theme family) after page load,
  not present in the initial HTML at all.
- **imovietime.bond** — not retested this session (blocked from VPS previously; untested from
  alternate IP).
- **AKWAM SPA** — not retested; still needs CDP serve-mode with JS-completion wait, Lightpanda's
  plain fetch mode won't execute a full SPA render.
- **4XANIME / ANIMERCO** — still Turnstile-gated, needs nodriver/real Chrome, out of scope for
  Lightpanda.

**Why:** ristoanime.co and animedar.net both moved their episode listings to AJAX/JS-rendered grids
since the original research pass — static HTML fetch (even via Lightpanda's non-CDP dump mode) no
longer contains the links. This is a structural site change, not a scraping technique gap.
**How to apply:** for these two, the next step is Lightpanda's CDP serve mode (`lightpanda serve
--port 9222`) with explicit navigation-complete/network-idle wait, or capturing the underlying
XHR/fetch call directly (inspect Network tab equivalent) rather than parsing rendered HTML.

## Re-check round 2 (same session) — imovietime.bond + AKWAM
- **imovietime.bond** — `SslConnectError` from the VPS on the bare domain (`play.imovietime.bond/`)
  — TLS handshake itself fails, not a 403/Turnstile. Either the cert is misconfigured, the VPS IP is
  network-level blocked (not just CF), or the domain is dead. Needs testing from a non-VPS IP to
  distinguish "domain dead" from "VPS blocked at TLS layer."
- **AKWAM (as.akwam.tube)** — confirmed real SPA: home page (93KB) has zero `/api/` string hints and
  loads via `mv-boost` JS bundle (jsdelivr) + Google Analytics/ads scripts only — no inline API calls
  visible in static markup. Lightpanda's plain `fetch --dump html` mode renders the shell but not the
  post-mount data (same limitation as RISTO/ANIMEDAR). All three need the same fix: CDP serve mode
  with network-idle wait, or manually watch the site's real browser Network tab once to find the API
  endpoint, then hit that endpoint directly forever after (no need for headless browser per-request).
- **4XANIME / ANIMERCO** — unchanged, still Cloudflare Turnstile-gated; confirmed out of reach for
  both Lightpanda and plain HTTP — genuinely needs a real Chrome + nodriver/patchright, which is a
  different tool entirely, not a Lightpanda config issue.

**Summary of all 9 originally-open items:** FaselHD/fastvip chain ✅ solved and verified end-to-end.
PHOENIX ⚠️ source found, delivery blocked by Cloudflare (untested from non-VPS IP). RISTO, ANIMEDAR,
AKWAM ❌ all converged on the same root cause — JS-rendered/AJAX content Lightpanda's static dump
mode can't see — solvable with the same CDP-mode fix, not three separate investigations. imovietime
❌ TLS-level failure, likely IP-blocked or dead. 4XANIME/ANIMERCO ❌ need real Chrome, not Lightpanda.
