---
name: HLS EXT-X-MEDIA audio URI rewriting
description: rewriteM3u8 must rewrite URI in #EXT-X-MEDIA and #EXT-X-I-FRAME-STREAM-INF lines or hls.js gets CORS errors
---

## Rule
The `rewriteM3u8` function must rewrite `URI=` attributes in `#EXT-X-MEDIA` and `#EXT-X-I-FRAME-STREAM-INF` lines, in addition to bare segment URLs and `#EXT-X-KEY` URIs.

**Bug:** Original code only handled `#EXT-X-KEY` URI and non-comment lines (actual segment URLs). `#EXT-X-MEDIA` lines were left unchanged.

**Effect:** When a master HLS playlist has multiple audio tracks (e.g., ToonStream/as-cdn21.top has jpn/eng/tel/tam/hin tracks), hls.js tries to fetch audio sub-playlists directly from the CDN origin. This fails with a CORS error because the CDN doesn't allow browser-origin requests.

**Fix:** Added `#EXT-X-MEDIA` and `#EXT-X-I-FRAME-STREAM-INF` to the URI-rewriting branch:
```js
if ((trimmed.startsWith("#EXT-X-KEY") || trimmed.startsWith("#EXT-X-MEDIA") || trimmed.startsWith("#EXT-X-I-FRAME-STREAM-INF")) && trimmed.includes('URI="')) {
  return trimmed.replace(/URI="([^"]+)"/g, (_, uri) => `URI="${toProxy(uri)}"`);
}
```

**Why:** hls.js requests ALL resources referenced in the master playlist — audio tracks, I-frame streams, encryption keys. All must go through seg-proxy to avoid direct CDN access from the browser.

**How to apply:** Any time rewriteM3u8 is modified, ensure ALL URI-bearing HLS tag types are handled.
