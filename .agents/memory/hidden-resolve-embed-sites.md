---
name: Hidden-resolve embed sites — isEmbed + site allowlist gotcha
description: Two separate gates control whether a scraped anime/animation source reaches the mobile hidden-WebView resolver instead of misplaying or vanishing.
---

# Hidden-resolve embed sites

**The rule:** for a scraped source whose URL is an iframe/server page (not a raw video
file), two things must both be true or it silently breaks:
1. Backend (`anime.ts`/`animation.ts`): the `UnifiedSource` must have `isEmbed: true`.
   Without it, the mobile client's `isDirectPlayable()` treats the iframe URL as a raw
   video file and feeds it straight to the native player (silent black-screen failure).
2. Backend SSE filter (`sendSrc` in `anime.ts`, 3 duplicated call sites): sources with
   `isEmbed:true` are dropped unless their hostname matches `HIDDEN_RESOLVE_EMBED_HOSTS`
   OR their `site` key matches `HIDDEN_RESOLVE_EMBED_SITES`. Sites whose embed links come
   from many different third-party CDN domains (mycima → mp4plus/anafast/vidoba/vidspeed;
   witanime → yonaplay/videa.hu/playerwish/...) can't be hostname-matched, so they need a
   `site`-based entry in `HIDDEN_RESOLVE_EMBED_SITES` or they vanish from the stream
   entirely even after `isEmbed:true` is set.
3. Mobile client (`app/watch.tsx`, `app/animation/watch.tsx`): the source's `site` key
   must also be listed in that screen's own `WEBVIEW_RESOLVE_SITES` Set, or
   `needsHiddenResolve()` returns false and the embed falls through to the generic
   "needs original app" placeholder card instead of the hidden `HiddenResolverWebView`.

**Why:** discovered while wiring witanime/witanime_db/mycima into the same hidden-browser
extraction flow already used for FaselHD/anime3rb — the sources were present server-side
but never reached the client because step 2's allowlist silently dropped them after
`isEmbed` was correctly set.

**How to apply:** when adding a new scraper site to the hidden-resolve flow, update all
three: the source's `isEmbed` flag at creation, the SSE allowlist (host or site-based), and
the mobile screen's `WEBVIEW_RESOLVE_SITES` Set (anime and animation screens have
independent sets — adding a site to one does not add it to the other). `HiddenResolverWebView`
itself (position:absolute off-screen, opacity 0, pointerEvents none) was already correct and
did not need changes.
