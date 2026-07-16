---
name: WitAnime mega/direct-only filter
description: witanime removed from HIDDEN_RESOLVE_EMBED_SITES in anime.ts — now mostly returns zero results, by design.
---

By explicit user request (2026-07-13), WitAnime was tightened to only surface
either (a) a successfully-extracted direct video URL, or (b) an iframe embed
hosted on mega.nz/mega.co.nz or vidmoly — never arbitrary third-party iframe
hosts. Implemented by removing `"witanime"` from `HIDDEN_RESOLVE_EMBED_SITES`
in `anime.ts` (the array that lets a scraper's `isEmbed:true` sources bypass
the mega/vidmoly host check entirely).

**Why:** WitAnime's iframe embeds were being shown for arbitrary hosts
(yonaplay, yourupload, videa.hu, app.videas.fr, hgcloud.to, ok.ru) which are
mostly low quality / already on the `EMBED_ONLY_HOSTS` blacklist elsewhere in
the file (ok.ru, videa.hu, yourupload.com are explicitly "cannot extract,
not allowed as embed → skip entirely").

**Important practical consequence — tested and confirmed 2026-07-13:**
`getWitanimeSources` always returns `isEmbed:true` for every server it finds
(no per-host extraction attempted — see `extractAndCollect`'s
`if (s.isEmbed) { collect(s); return; }` shortcut, which skips extraction
entirely for embed-flagged sources). Sampled real episodes (One Piece 1169,
and others found via taxonomy search) never had a mega.nz/vidmoly server
among their results — only yonaplay/ok.ru/videa.hu/hgcloud.to/app.videas.fr.
**Net effect: WitAnime now returns zero sources for most/all tested titles**
under this filter, since it has no real extraction path and rarely/never
surfaces a mega link. This is the direct, faithful result of the user's
literal request, not a bug — but it likely makes WitAnime go silent in
practice until/unless mega.nz servers start appearing on the site, or unless
per-host extractors are written for yonaplay/hgcloud.to (not yet attempted).

**How to apply:** if the user wants WitAnime to actually produce visible
results again, either (a) restore `"witanime"` to `HIDDEN_RESOLVE_EMBED_SITES`
(reverts to allowing any host, relying on mobile hidden-WebView resolution),
or (b) invest in real per-host extraction (mega/vidmoly-equivalent quality)
for yonaplay/hgcloud.to specifically, since those appeared most often.
