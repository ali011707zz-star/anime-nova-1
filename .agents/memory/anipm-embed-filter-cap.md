---
name: AniPm source filtering (embed exclusion + cap)
description: AniPm (ani.pm) server list mixes direct-playable and iframe-only "embed" entries; user wants only direct, capped at 5
---

`ani.pm`'s `/api/anime/src/servers` response returns entries with `kind`: `"hls"`, `"file"`, or
`"embed"`. The `"embed"` kind (e.g. `ok.ru/videoembed/...`, `vivibebe.site/...`) are NOT
direct-playable video files — they require loading in an iframe/embed page. Earlier code lumped
these in with real direct sources under `directType: "mp4"`, which produced broken/blank playback
for those entries. The user identified this as "ifrom" (iframe) servers polluting the PM source list.

**Decision:** `getAniPmSources` now filters out `kind === "embed"` entirely and caps total returned
sources (sub+dub combined) at 5, sorted by `priority` descending (ani.pm gives direct hls/file
entries priority ≥104, embed-only entries priority ≤9, so this filter+sort naturally keeps only the
best direct links).

**Why:** user explicitly asked for "max 5 servers, no iframe-only sources, only direct links."

**How to apply:** if ani.pm changes its response schema again, re-verify the `kind` field values and
priority ranges before assuming the same filter still separates direct vs iframe-only correctly.
Deployed and confirmed on VPS (`pm2 restart anime-nova-api`) — log line `[AniPm] ... → N/5 direct
sources (... embed-filtered)` confirms it's active.
