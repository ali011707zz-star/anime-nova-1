---
name: Animation no-iframe policy
description: Animation section uses internal player only; sendExtracted never falls back to embed; Home lazy-loaded for performance
---

User requirement: animation section must NEVER show iframes. Internal player (mp4/m3u8) only.

**Rule:**
- `sendExtracted` in animation.ts removes the as-is fallback — if callExtractApi + scrapeEmbedForStreams both fail, nothing is sent (no embed URL passed to frontend)
- KNOWN_EMBEDS in AnimationWatch.tsx reduced to: mega.nz, mega.co.nz, vidmoly, vidbm, ok.ru, dailymotion, youtube, ya.kooora, imovietime.bond
- VidSrc / AutoEmbed / MultiEmbed / EmbedSu / SmashyStream / 2Embed / VidLink removed from animation.ts entirely

**Performance fixes applied:**
- Home.tsx now lazy-loaded (was eagerly imported in App.tsx)
- Vite proxy: timeout=0, proxyTimeout=0 (prevents SSE drops on long-running animation/sources-stream)

**Why:**
User explicitly said "no external iframes ever" — Play ONLY in internal player.

**How to apply:**
Any future animation source added must use sendExtracted (or sendSource with a confirmed directUrl). Never call sendSource(url, label) with an embed URL in animation.ts.
