---
name: MyCima/StarCima.cc/FaselHD mirror domain checks
description: Confirms 3 user-flagged "new" domains are all already-integrated backends under different aliases, not new sources.
---

Checked 2026-07-13 after user flagged three domains as possibly new/different:

- **MyCima**: `mycima.gripe` and `wecima.gold` both live (200 OK, no CF
  block). `MYCIMA_BASE` in `anime.ts` already points to `https://wecima.gold`
  — already current, no domain-rot fix needed.

- **StarCima.cc** (`starcima.cc`, user claimed "new sources" vs the
  integrated `starcima.com`): confirmed **same backend, not a distinct
  site**. `.cc`'s own `/api/vidzee?...` endpoint returned real HLS data, but
  the URL inside it proxies through `starcima.com/cdn/?url=...` (shares the
  same CDN/vidzee.wtf pipeline as `.com`). The `.cc` homepage itself is a
  near-empty shell (~38KB) whose only real link points back to
  `https://starcima.com`. Conclusion: `.cc` is a lightweight
  alias/redirect frontend for the same StarCima backend already integrated
  via `SC_BASE = "https://starcima.com"` — no separate scraper needed.

- **FaselHD mirror** `https://web71318x.faselhdx.top/main`: redirects to
  `https://www.fasel-hd.cam/main`, which **is** the exact domain already
  configured as `FASELHD_DB_BASE`/`FASEL_BASE` in both `anime.ts` and
  `animation.ts`. No CF challenge present. Just confirms the existing
  integration's domain is currently reachable — not a new site.

**Why this matters:** when a user reports a "new" domain for an
already-integrated source, always check whether the domain (a) redirects to
the existing configured base, or (b) shares the same backend API/CDN chain
before writing a new scraper — these three all turned out to be the same
already-integrated backends.
