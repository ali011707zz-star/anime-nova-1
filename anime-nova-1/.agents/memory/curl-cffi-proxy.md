---
name: curl_cffi CF Proxy
description: Python Flask proxy on port 8000 using curl_cffi Chrome136 to bypass Cloudflare JS challenges; used by cfProxyGet() in anime.ts
---

# curl_cffi CF Proxy

**Rule:** Use `cfProxyGet()` (not `cfGet()`) for any site that blocks Node.js fetch but allows real Chrome TLS fingerprinting.

**Why:** Node.js's built-in `fetch` (undici) has a distinctive TLS fingerprint that Cloudflare detects and blocks. `curl_cffi` impersonates Chrome 136 at the TLS handshake level, bypassing JS challenges that don't require actual JS execution.

**How to apply:**
- Proxy runs as a separate workflow: "CF Proxy" (`scripts/cf_proxy.py`, port 8000)
- `cfProxyGet(url, referer?, timeoutMs?)` in `anime.ts` calls `http://localhost:8000/fetch?url=...&ref=...&timeout=...`
- Health-checked every 60s; falls back to `cfGet()` if proxy is down
- Response header `x-cf-blocked: 1` means CF is still blocking (hard IP block — curl_cffi can't help)

**Sites confirmed working with curl_cffi:**
- anime-phoenix.com ✅ (1080p x265 MKV, multiple workers.dev CDN mirrors)
- anime4up.cam ✅ (HTTP 200 but has JWT redirect in JS — complex to scrape)
- animelek.me ✅ (HTTP 200)
- anime-time.live ✅ (HTTP 200)
- arabseed.ink ✅ (HTTP 200)

**Sites still hard IP-blocked (curl_cffi cannot help — actual IP-level 403):**
- witanime.life / witanime.cyou — CF Managed Challenge + IP block
- anime3rb.com — CF Managed Challenge + IP block
- animerco.org — IP 403
- animeblkom.net — IP 403

**anime-phoenix.com scraper flow:**
1. `searchAnimePhoenix()` → tries direct slug `/animes/{slug}` (fast path) then search
2. `getAnimePhoenixSources()` → fetches `/episodes/{slug}-episode-{N}/` via `cfProxyGet()`
3. `parseAnimePhoenixVideo()` → extracts `<source src="*.workers.dev/...mkv">` + `data-server` base64 JSON
4. Wraps with `/api/anime/video-proxy?url=...&ref=...` for Range support (MKV seeking)
5. qualityRank=13, quality="1080p", site="animephoenix"
