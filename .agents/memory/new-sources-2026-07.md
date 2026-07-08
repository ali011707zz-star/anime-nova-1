---
name: New sources discovered July 2026
description: Sources found from vyla stream-api + nekowatch repos — tested for anime & animation
---

## ✅ WORKING SOURCES

### 1. nekowatch.xyz — ANIME ONLY (AniList ID)
- **API**: `https://nekowatch.xyz/api/anime/watch/{provider}/{anilistId}/{audio}/{provider}-{episode}`
- **Best provider**: `anineko` — returns direct HLS from `vivibebe.site`
- **sub + dub**: Both work (type=hls, isActive=true)
- **Test**: AoT (16498 ep1) ✅ Naruto (20 ep1) ✅
- **Response field**: `streams[].url` (filter `isActive=true AND type=hls`)
- **Referer needed**: `https://nekowatch.xyz`
- **Other providers tried**: `anizone`, `animenosub`, `2dhive` → "match not found" for AoT
- **Provider order**: fetched from `https://nekowatch.xyz/js/anime.js?v=v263_fast_player_start` → `PROVIDER_ORDER`
- **Fallback order (hardcoded)**: kiwi, ally, bee, arc, anikoto, jet, bonk, moo, hop, pulsar, pahe

### 2. xyra.stream — ANIME + ANIMATION (TMDB ID)
- **API**: `https://api.xyra.stream/v1/streamhub/streams?api_key=freekey&tmdb_id={id}&type={series|movie}&season={s}&episode={e}`
- **api_key**: `freekey` (public, no registration)
- **Returns**: `{ success, count, providerTimings, streams: [{name, url, quality, provider, headers}] }`
- **Test**: AoT TMDB 1429 s1e1 → ✅ 17 streams (4KHDHub 4K/1080p, vidlink, vixsrc, showbox…)
- **Test**: Spider-Man movie 324857 → ✅
- **Stream types**: hubcloud.cx, hub.latent.click, direct MP4/HLS
- **skipProxy**: true (direct streaming)
- **Fallback**: streams are pre-sorted by quality (4K first)

### 3. notorrent — ANIMATION (IMDB ID via TMDB)
- **Stremio Addon**: `https://addon-osvh.onrender.com/stream/{series|movie}/{imdbId}:{s}:{e}.json`
- **TMDB→IMDB**: needs `/3/tv/{tmdbId}?api_key=...&append_to_response=external_ids` then `external_ids.imdb_id`
- **Test**: AoT tt2560140 s1e1 → ✅ 9 streams (1080p + 720p, original + Latino audio)
- **CDN**: `aqua-vulture-337623.hostingersite.com` (hostinger) + `notorrent2.workers.dev` (Cloudflare encrypted)
- **onrender.com**: cold start may be slow (15-30s first request)

### 4. spencerdevs — ANIMATION (TMDB ID)
- **URL**: `https://servers.spencerdevs.xyz/{serverNum}/t/{tmdbId}/{season}/{episode}` (TV) or `/m/{tmdbId}` (movie)
- **Servers**: 1–25 (only server 1 confirmed working, 5+10 timed out)
- **Test**: AoT 1429 s1e1 via srv1 → ✅ 9 streams
- **Headers**: `Referer: https://spencerdevs.xyz` + `Origin: https://spencerdevs.xyz`
- **Decryption**: `decryptSnoopdog()` — pbkdf2 + AES-256-CBC (custom binary-to-base64 encoding)
- **Note**: Implement decryption logic before using; full code in `spencerdevs.js` in the repo

---

## ❌ NOT WORKING / BLOCKED

| Source | Status | Reason |
|--------|--------|--------|
| vidnest.fun | ❌ | `new.vidnest.fun` → 404 |
| streamvault.xyz | ❌ | Empty response / down |
| vidrift.in | ❌ | API requires TMDB key (env var) |
| goated/aether (khophim) | ⚠️ | API works but response is AES-256-CBC encrypted; needs `DC_KEY` env var |
| vidcore | ❌ | Uses enc-dec.app (already disabled) |
| vidsync | ❌ | Uses enc-dec.app (already disabled) |

---

## 📋 IMPLEMENTATION PLAN (for next session)

### Priority order:
1. **nekowatch** → add to `anime.ts` (AniList ID, anineko provider, filter isActive+hls)
2. **xyra** → add to both `anime.ts` + `animation.ts` (TMDB, freekey, no auth needed)
3. **notorrent** → add to `animation.ts` (IMDB flow via TMDB lookup)
4. **spencerdevs** → add to `animation.ts` (server 1 only, implement snoopdog decrypt)

### Code pattern for nekowatch:
```ts
const r = await cfProxyFetch(`https://nekowatch.xyz/api/anime/watch/anineko/${anilistId}/sub/anineko-${ep}`, {
  headers: { Referer: 'https://nekowatch.xyz' }
})
const streams = r.streams.filter(s => s.isActive && s.type === 'hls')
// → { url: 'https://vivibebe.site/public/stream/.../master.m3u8', referer: vivibebe }
```

### Code pattern for xyra:
```ts
const r = await fetch(`https://api.xyra.stream/v1/streamhub/streams?api_key=freekey&tmdb_id=${tmdb}&type=series&season=${s}&episode=${e}`)
// → r.streams[].url (direct, skipProxy=true)
```

---

## 🔍 SOURCE REPO REFERENCE
- Full source list: `https://github.com/vyla-entertainment/stream-api/tree/main/src/sources`
- 36 sources total; many overlap with existing Nova sources (vidsrc, dulo, purstream, anineko, anipm, vidlink, hexa already in Nova)
- New untested but promising: `fsharetv.cc`, `fsonic.net`, `kisskh.do`, `lookmovie`, `xpass.top`
- Cineby.at: Next.js streaming site, anime section exists, API not yet found (JS client-side only)
