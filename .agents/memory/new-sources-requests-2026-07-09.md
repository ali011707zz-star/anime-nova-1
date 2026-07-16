---
name: New source requests 2026-07-09 — resolved
description: Outcome of investigating AnimeTime/AnimeRoco/Akwam/MovizTime candidate domains for mega.nz-style ad-free iframes; Akwam implemented as direct-MP4 backup.
---

## Outcome
- **Akwam** — IMPLEMENTED. Real live domain is `akwam.it` (akwam.to is now a parked domain-sale
  page; `ak.sv` 301→`akwam.it`). No mega.nz/iframe — it serves direct MP4 download links via
  `*.downet.net`. Added to `animation.ts` as `scrapeAnimCached("akwam", ...)`: search →
  first movie match → download page → `downet.net` mp4 links. Movies only (series need a
  different URL scheme, not yet mapped). Deployed + verified live on VPS.
- **MovizTime** (`moviz-time.vip`/`.org`) — already integrated; confirmed `.vip` is a live mirror
  of `.org` (same content, includes an `/anime/` section too). Uses `vidhls.com` custom JW-player
  iframe (anti-devtools/right-click-block script, ad overlay `div.rek`), **not mega.nz** — does not
  meet the user's "ad-free like mega.nz" requirement.
- **AnimeTime candidate `anime-time.live`** — checked one full anime post page: also uses
  `vidhls.com` player (same anti-devtools/ad pattern as MovizTime), not mega.nz. Does not meet
  the ad-free requirement as specified. Not added.
- **AnimeRoco** — still unconfirmed exact domain; `eta.animerco.org` returns HTTP 403 from the VPS
  (same CF block as known Animerco/Animerco.org per repo-analysis-2026-07). Not added.
- Other domains from the user's batch list (anime-phoenix.com, animedar.net, animelek.top,
  shahiid-anime.net, witanime.life, anime3rb.com, ristoanime.co→.me) were already integrated
  in `anime.ts`/`extractors.ts` prior to this session; Animedar's extractor already emits a
  genuine `mega.nz/embed#!...` source (type `"mega"` in `extractDirectAnimedar`), so that
  ad-free requirement is already satisfied there.
- `4h.y9x3c6v.shop` is a shortlink → `w1.anime4up.rest` (Anime4up, already covered).

## If resuming ad-free-iframe search later
No new mega.nz source was found beyond the existing Animedar one. If the user still wants an
AnimeTime/AnimeRoco-equivalent, either accept the vidhls.com player (ads/anti-devtools) as a
fallback source, or get the exact intended domain from the user directly — web search keeps
surfacing similarly-named but different sites.
