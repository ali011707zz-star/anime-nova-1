---
name: StarCima hidden API
description: starcima.com Next.js hidden API endpoints for direct HLS + Arabic embeds, fully reverse-engineered
---

## Endpoints

### `/api/vidzee?tmdbId={id}&type={movie|tv}&season={s}&episode={ep}`
- Returns `{servers:[{name, url, type:"hls", quality, provider, isDirect, isMain}], subtitles:[...]}`
- All URLs wrapped via starcima CDN proxy: `https://starcima.com/cdn/?url={encoded_m3u8}&referer={encoded_ref}`
- CDN proxy responds HTTP 200, CORS `*`, accessible from Replit server
- Decode: `new URL(cdnUrl).searchParams.get("url")` → raw m3u8, `.get("referer")` → referer
- Typical referer: `https://player.vidzee.wtf/`
- 3 servers per content (الثريا=main, Najm I, Najm II)
- Also returns Arabic + multilingual `.vtt` subtitles from `cache.vdrk.site`

### `/api/arabic-sources?title={title}&type={movie|tv}&tmdbId={id}&season={s}&episode={ep}`
- Returns `{servers:[{name, embedUrl, isTopPriority}]}`
- Sources: streamwish, filemoon, vidmoly, streamtape, dood, luluvdo, updown, mixdrop, etc.
- `isTopPriority: true` = extractable by our sendExtracted (streamwish, filemoon, dood, streamtape)
- Process priority first, then rest, up to 10 total

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

**Why:** starcima CDN proxy wraps the raw m3u8 but by decoding we get the real URL with correct referer, making our hls-proxy chain work correctly.

**How to apply:** Always unwrap the `/cdn/?url=` format before wrapping with hls-proxy. Raw CDN URLs confirmed HTTP 200 from Replit server.
