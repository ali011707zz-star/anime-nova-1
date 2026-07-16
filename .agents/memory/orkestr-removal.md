---
name: Orkestr removal 2026-07
description: Orkestr external relay removed — all calls now go through cf_proxy.py (localhost:8000)
---

## Rule
All functions that previously called `ORKESTR_URL/api/anime/proxy-text?url=...` now call `http://localhost:${CF_PROXY_PORT}/fetch?url=...` (cf_proxy.py) directly.

## Functions changed
- `animation.ts::cfOrOrkestGet` → pure cfProxyGet, no Orkestr fallback
- `animation.ts::orkestDirectGet` → now calls cfProxy directly (same interface)
- `animation.ts::cfOrOrkestPost` → now calls cfProxy POST directly
- `anime.ts::orkestGet` → now calls cfProxy, ignores referer param (cfProxy doesn't support per-request referer), returns null on failure

## HLS proxy URLs
Previously built as `${ORKESTR}/api/anime/hls-proxy?url=...` — now use `wrapHls(url, referer)` which builds encrypted local paths.

## Environment
- `ORKESTR_URL`, `ORKESTR_BASE`, `ORKESTR_API_KEY` env vars removed from all code
- `CF_PROXY_PORT=8000` must be set in ecosystem.config.cjs (it is)
- `CINESRC_BASE=http://localhost:13004` added to ecosystem.config.cjs — was missing, caused CineSrc to silently skip

## Why
Orkestr was pointing to animenovaa.duckdns.org (the VPS itself) which made it a self-loop through nginx. Replaced with the cf_proxy.py service running locally which uses curl_cffi to bypass Cloudflare challenges.

## Other fixes in same session
- EzVidAPI (2embed) disabled — api.ezvidapi.com returns Bad Gateway
- VidSrc.cc routed through cfProxy (VPS datacenter IP blocked directly)
- SuperEmbed routed through cfProxy + extra regex patterns
- Icefy/Nebula/VixSrc HLS URLs now use wrapHls() instead of external ORKESTR hls-proxy
