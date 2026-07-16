---
name: Practical resolver tests — July 12 2026 batch
description: Live test results (not just static analysis) for sharoon7171 resolver repos and related tools requested by user.
---

Tested by cloning + running each repo on the VPS (`/root/repo-audit/`) and hitting its real API with live TMDB/video IDs — not just reading code.

- **ok.ru-direct-resolver**: WORKS. POST `/api/resolve` `{videoId}` returns real direct HLS master + per-quality progressive MP4-style URLs from okcdn.ru, no embed iframe, no burned-in subtitles. Best candidate of the batch for direct-link ok.ru extraction.
- **vidfast-pro-stream-resolver**: FAILS in practice. Reaches vidfast.pro and gets title/year meta, but the server-list resolution stage throws inside its own async generator (uncaught error surfaces as `ERR_HTTP_HEADERS_SENT` because the route's error handler tries to write headers a second time) — never returns a playable link. Bug is in the repo's own error handling, not just a network block.
- **cinesrc-stream-resolver**: FAILS in practice. First provider ("nebula") errors with its own bug (`SubtleCrypto.importKey` called with the wrong argument type — a bug in the repo). Remaining providers (surge, spark, flux, rush...) all hit 15s timeouts one after another with no success — provider fetches never complete from this VPS IP.
- **movie-tracker-native, universal-embed-player, hlsproxy, kinopub-gui, live-api-streampk**: not live-tested — confirmed by static read to be not applicable as new piracy sources (TMDB-only tracker, generic embed player, generic local proxy with no site logic, paid Russian service, sports-only embeds). See `important-repos-2026-07.md` for the static rationale.

**Why this matters:** repos with clean READMEs and mermaid diagrams can still be broken/abandoned; always run them against a real ID before considering integration, not just read the code.
