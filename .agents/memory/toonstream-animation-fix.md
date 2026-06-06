---
name: ToonStream animation.ts extraction fix
description: How to extract HLS from ToonStream movies/episodes in animation.ts using as-cdn21 and rubystm
---

# ToonStream animation.ts extraction

## The fix
`sendExtracted(innerMatch[1], "ToonStream")` was replaced with specific extractors:

**as-cdn21.top** (used by anime movies like Spy x Family):
1. HEAD playerUrl → get session cookie
2. POST `${AS_CDN_B}/player/index.php?data={hash}&do=getVideo` with `{hash, r:""}` JSON body
3. Extract `j.securedLink || j.videoSource` → HLS m3u8 URL
4. Wrap with `/api/anime/hls-proxy?url=...&ref=...`

**rubystm.com** (used by some Western animation):
1. Extract file_code from URL (`playerUrl.replace(".html","").split("/").pop()`)
2. POST `${RUBY_B}/dl` with `op=embed&file_code=...&auto=1&referer=...`
3. Parse m3u8 from response HTML

**Why:** generic `sendExtracted` calls `callExtractApi`/`extractVideoDeep` which returns "no video found" for both players; direct API approach used in anime.ts is the only working method.

**How to apply:** When ToonStream trembed URL returns an as-cdn21 or rubystm iframe, use these specific extractors. Other players (vidstreaming.xyz, abyssplayer.com) are skipped — no server-side extraction possible.

## Coverage
- Anime movies (Spy x Family etc): as-cdn21 → works ✓
- Western animation (Cars etc): rubystm links may be expired for old content, works for recent
- TV shows: /episodes/{slug}-s{N}e{N}/ URL pattern (not all shows available on ToonStream)
