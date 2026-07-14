---
name: Akwam scraper only exists for animation, not anime
description: "akwam" appears in nova-mobile's anime ANIME_SITES list, but there is no matching scraper case in the anime.ts backend route — only animation.ts implements it. Don't assume a site listed in a frontend picker has a working backend counterpart in the same section.
---

## Finding (2026-07-14)

`artifacts/nova-mobile/app/watch.tsx` (the **anime** watch screen) lists `"akwam"` in `ANIME_SITES` and
gives it a tag/label (`AQ` / "Akwam"). But `artifacts/api-server/src/routes/anime.ts` has no Akwam
scraper at all — Akwam (`akwam.it`, direct MP4 via a `downet.net` download page) is only implemented in
`artifacts/api-server/src/routes/animation.ts`, gated as a low-priority backup source for
movies/cartoons.

**Why this matters:** the mobile anime picker calling `site=akwam` against `/api/anime/fetch-source`
will just return an empty source list forever — not because of an allowlist block, but because the
route has no handling for that site id at all. This looks identical to "source not appearing" bugs
caused by allowlist gating, but the fix is different (the scraper doesn't exist here, it would need to
be ported/implemented in anime.ts, not just un-gated).

**How to apply:** when a source shows up in a frontend list but never returns results, check the
*correct* backend file for its section (anime.ts vs animation.ts) before assuming it's a domain/
allowlist/cache issue — verify the scraper function itself exists for that route.
