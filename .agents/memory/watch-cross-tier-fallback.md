---
name: Watch.tsx cross-tier fallback
description: When all servers in a quality tier fail, tryNextServer must fall back to the next lower tier
---

## Rule
Sources are split across quality tiers based on `qualityRank`:
- `rank >= 3` → "1080p FHD" (e.g., ToonStream qualityRank=10, Anime-Phoenix qualityRank=3)
- `rank >= 2` → "720p HD" (e.g., Shahiid qualityRank=2, AnimeLek qualityRank=2)
- else → "360p SD"

When ToonStream (1080p FHD) is the only source in its tier and fails, the player was NOT automatically trying Shahiid (720p HD). The fix:

```js
function tryNextServer() {
  if (currentServer + 1 < servers.length) {
    setCurrentServer(s => s + 1);
    setRealQuality(null);
  } else {
    // Exhausted current tier — try next lower quality tier
    const currentTierIdx = QUALITY_LABELS.indexOf(quality);
    for (let i = currentTierIdx + 1; i < QUALITY_LABELS.length; i++) {
      if ((allServers[QUALITY_LABELS[i]]?.length || 0) > 0) {
        onChangeQuality(QUALITY_LABELS[i]);
        return;
      }
    }
  }
}
```

**Why:** EpisodePlayer only has `servers` for the CURRENT quality tier. When all fail, it must delegate to the parent via `onChangeQuality` to switch tiers.

**Sendvid fallback confirmed:** Shahiid sendvid URLs via `video-proxy` return HTTP 200 (99MB, video/mp4) through the Vite proxy. The Watch.tsx `isDirectMp4` check correctly detects `sendvid.com` and wraps in `/api/anime/video-proxy`.

**How to apply:** Any time server fallback logic is touched, ensure cross-tier fallback is preserved.
