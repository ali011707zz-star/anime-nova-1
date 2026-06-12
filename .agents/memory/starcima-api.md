---
name: StarCima hidden API
description: starcima.com Next.js hidden API endpoints for direct HLS + Arabic embeds, fully reverse-engineered
---

## Endpoints

### `/api/vidzee?tmdbId={id}&type={movie|tv}&title={title}&season={s}&episode={ep}`
- **`title` parameter is REQUIRED** — returns empty body without it (especially movies)
- Returns `{servers:[{name, url, type:"hls", quality, provider, isDirect, isMain}], subtitles:[...]}`
- All URLs wrapped via starcima CDN proxy: `https://starcima.com/cdn/?url={encoded_m3u8}&referer={encoded_ref}`
- CDN proxy responds HTTP 200, CORS `*`, accessible from Replit server
- Decode: `new URL(cdnUrl).searchParams.get("url")` → raw m3u8, `.get("referer")` → referer
- Typical referer: `https://player.vidzee.wtf/`
- TV typically gets 3-4 servers (الثريا, الدبران, Najm I, Najm II)
- Animation movies usually get 0 servers (not in their catalog)

### `/api/arabic-sources?title={title}&type={movie|tv}&tmdbId={id}&season={s}&episode={ep}`
- Returns `{servers:[{name, embedUrl, isTopPriority}]}`
- Returns up to **16+ servers** including: vidtube, vidmoly, streamwish, filemoon, streamtape, luluvdo, updown, doodstream, voe, mixdrop, uqload, ok.ru, etc.
- `isTopPriority: true` = extractable by our sendExtracted (streamwish, filemoon, streamtape, vidmoly)
- luluvdo.com and updown.icu = CF-protected (403) — sendExtracted will fail silently, OK
- Code processes ALL servers via `sendExtracted` in parallel

### `/api/showbox?tmdbId={id}&type={movie|tv}&season={s}&episode={ep}`
- Returns `{servers:[], total:0}` for most content (effectively empty / disabled)

## Headers Required
```
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) ...
Referer: https://starcima.com/watch/{tmdbId}?type={type}
Accept: application/json
```

## CDN URL Unwrapping (in animation.ts)
```typescript
if (rawUrl.includes(`${SC_BASE}/cdn/?`)) {
  const pu  = new URL(rawUrl);
  rawUrl    = pu.searchParams.get("url")     || rawUrl;
  referer   = pu.searchParams.get("referer") || SC_REF_HLS;
}
const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(rawUrl)}&ref=${encodeURIComponent(referer)}`;
```

## Subtitle Warning
- vidzee subtitles use `cache.vdrk.site/v2/` and `/v3/` paths — BOTH ARE DEAD (only v1 is live)
- The subtitle filter in subtitle-tracks endpoint already drops v2/v3 URLs
- vidzee-meta, subtitle-tracks, and sources-stream vidzee fetch ALL need `title` param

**Why:** starcima CDN proxy wraps the raw m3u8; title param added in June 2026 and is now required by their API for vidzee.
