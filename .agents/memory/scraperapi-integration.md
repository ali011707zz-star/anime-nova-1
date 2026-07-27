---
name: ScraperAPI integration
description: How ScraperAPI is wired into the anime scraper as a last-resort proxy fallback.
---

## Rule
`scraperApiGet` is the 4th and final fallback in the proxy chain:
`cfGet → cfProxyGet → orkestGet → scraperApiGet`

**Why:** ScraperAPI uses a residential proxy pool that bypasses Cloudflare and IP blocks that defeat all self-hosted proxies. It costs per-request so it must be a last resort, not the first try.

## Integration points (anime.ts)
- `searchWitanime`: `cfGet(search_url) ?? scraperApiGet(search_url)`
- `findWitaEpisodeUrl`: `cfGet(seriesUrl) ?? scraperApiGet(seriesUrl)`
- `fetchWitaServerUrls`: `cfGet(epUrl) ?? scraperApiGet(epUrl)`
- `getRistoAnimeSources` series fetch: `orkestGet ?? cfProxyGet ?? scraperApiGet`
- `getRistoAnimeSources` episode fetch: `orkestGet ?? cfProxyGet ?? scraperApiGet`

## Config
- Env var: `SCRAPERAPI_KEY` (shared env var, set via Replit)
- Endpoint: `https://api.scraperapi.com/?api_key=KEY&url=TARGET&render=false`
- Timeout: 30s (ScraperAPI is slower than direct fetch)
- Returns null if key missing, status non-2xx, CF block detected, or text < 50 chars
