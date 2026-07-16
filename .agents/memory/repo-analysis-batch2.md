---
name: External repo analysis batch 2
description: Second batch of repos analyzed — 2dhive, AniZone, anipy-cli techniques, AnimeKai status
---

## REPOS THAT ARE FORKS OF ANIME NOVA (no new value)
- movie-tracker-native (alirezaghnz) — same ecosystem
- movie-web-ptduy (ptduy14) — same ecosystem  
- anivexa-api (walterwhite-69) — NO 2dhive or AniZone code found despite user's claim
- open-anime-api (Zcross091) — same ecosystem

## HIGH VALUE — New sources to implement

### 2dhive.com — Raw Japanese audio, NO Arabic subs
WordPress site. Scraping method:

**Search:**
```
POST https://2dhive.com/wp-admin/admin-ajax.php
FormData: action=z_ajax_search & term={query}
Headers: X-Requested-With: XMLHttpRequest, Referer: https://2dhive.com/
Response: JSON array with slugs/titles
```

**Get episode video links:**
```
Step 1: GET https://2dhive.com/episode/{slug}/ → extract post_id from HTML meta
Step 2: POST https://2dhive.com/wp-admin/admin-ajax.php
        FormData: action=get_player_links & episode_id={post_id}
        Response: JSON { servers: { "FMP": embed_url, "Mixdrop": embed_url, ... } }
```
Embeds → FileMoon, StreamWish → parse via parseStreamwish/parseFilemoon (already in codebase)
Audio: Raw Japanese, zero Arabic subs — new niche (raw watchers)

### AniZone (anizone.to) — Japanese audio, Arabic soft-subs available
```
Search: GET https://anizone.to/search?keyword={q}
Episodes: GET https://anizone.to/api/anime/{id}/episodes (JSON)
Stream: JSON { sources: [{ file: "...m3u8", label: "1080p", type: "hls" }] }
Headers: Referer: https://anizone.to/ + session CSRF token from initial page load
```
Has Arabic subtitle tracks on some servers (soft-subs, not hardcoded)
Pattern similar to Kawaii Anime — use as template

## HIGH VALUE — anipy-cli techniques

### AllAnime AES-GCM key (NOT yet in codebase — only AES-CTR/CBC used)
```python
key = hashlib.sha256(b"Xot36i3lK3:v1").digest()  # 32 bytes
cipher = AES.new(key, AES.MODE_GCM, nonce=iv[:12])
plaintext = cipher.decrypt(ciphertext)
```
Port to Node.js crypto module. Fixes AllAnime API responses that AES-CTR/CBC fails to decrypt.

### AnimeKai dynamic decryption (kai.json)
- Already implemented in anime.ts (lines 6018–6123) ✅
- anipy-cli fetches kai.json from GitHub for dynamic updates — consider same approach if AnimeKai changes again

### AllAnime GraphQL persistence hash
`a24c500a1...` — already in codebase but verify it matches anipy-cli version

## STATUS SUMMARY
- AnimeKai: ✅ already in anime.ts lines 6018-6123
- AllAnime AES-GCM: ❌ not implemented — only AES-CTR/CBC — anipy-cli key: `Xot36i3lK3:v1`
- 2dhive: ❌ not in codebase — new source (raw Japanese)
- AniZone: ❌ not in codebase — new source (Japanese + optional Arabic subs)
