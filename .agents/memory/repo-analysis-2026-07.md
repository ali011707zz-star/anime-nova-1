---
name: 7-Repo Deep Analysis (July 2026)
description: Deep analysis of 7 GitHub repos for new anime/animation stream sources
---

## Results by Repo

1. EncDecEndpoints — enc-dec.app API. New: enc-hexa (rate limited), enc-vidsync, enc-lordflix (CF-blocked). No database endpoint.
2. Debflix-Scraper — WASM+Go binary for VidLink. Not portable without compiled binary.
3. staticine — CF R2+Workers HLS cache. Needs full CF infrastructure.
4. hls-downloader — Browser extension; source files 404 (private branches).
5. stream-api (vyla-entertainment) — Most valuable. Dulo.tv API key confirmed working. Aether/Goated need DC_KEY env var. NekoWatch/Miruro need CF impersonation.
6. Miruro-API — curl_cffi Chrome impersonation. Returns 403 from VPS IP (CF challenge). Not viable.
7. Moviebox-API — Token works (x-user header) but search API 404. Not viable.

## Already Integrated (discovered): anineko, vidfast, vidcore, vixsrc, videasy, vidlink, EzVidAPI

## Only New Working Source: Dulo.tv (vidrock + purstream) — see dulo-integration.md
