---
name: Direct MP4 player in Watch.tsx
description: How Watch.tsx handles direct MP4 URLs (streamtape, sendvid) from Arabic extraction
---

**Problem:** Arabic extraction gives direct MP4 URLs (streamtape, sendvid) but Watch.tsx only had NativeHLSPlayer (for HLS m3u8) and IframePlayer (for embeds). Direct MP4 URLs ended up in IframePlayer which can't play video files.

**Solution:**
1. `getServerInfo()` detects `streamtape.com` and `sendvid.com` URLs → returns `isHls: true, isDirect: true`
   - Label: "مصدر مباشر", sublabel: "عربي · تشغيل مباشر"
   - Shows "HLS مدمج" badge (reuses existing HLS styling)
2. `NativeHLSPlayer.loadSource()` detects these URLs via `isDirectMp4` flag → wraps in `/api/anime/video-proxy?url=...`
3. Sets `video.src = proxyUrl` directly (native `<video>` playback, not HLS.js)

**Key detail:** Sendvid/Streamtape URLs are IP-tied to the Replit server that extracted them.
Video-proxy routes requests through the same server → IP matches → CDN serves the file.
Streamtape tokens expire quickly (~minutes) so they work only if clicked soon after loading.

**video-proxy endpoint:** `GET /api/anime/video-proxy?url=ENCODED&ref=ENCODED`
- Proxies video data from server → browser (CORS bypass + IP bypass)
- Supports Range requests for seek operations
- HEAD method mirrored for browser probing

**How to apply:** When adding new Arabic sources that extract to direct MP4, ensure:
1. `getServerInfo()` catches the host pattern → returns `isDirect: true`
2. `NativeHLSPlayer.isDirectMp4` includes the host pattern
3. URL must be extractable and not expired by play time
