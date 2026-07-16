---
name: Animeify embed source
description: How animeify.net (ani-cli-arabic API) is integrated as a Mega.nz embed source
---

# Animeify.net → Mega.nz Embed Integration

**Why:** User wanted an ad-free source that stays inside the app. Mega.nz has no ads and the embed can be sandboxed to prevent navigation out.

## Credential flow
- Fetch from `https://api.ani-cli-arabic.dev/credentials` with header `X-Auth-Key: 6rK9z0XyW8vQ3J7pL2mN4sB1tH5gD0fA`
- Returns `ANI_CLI_AR_API_BASE` (e.g. `https://animeify.net/animeify/apis_v4/`) and `ANI_CLI_AR_TOKEN`
- Cached in `_animeifyCreds` for 6 hours

## Scraper flow
1. Search `anime/load_anime_list_v2.php` with both english + romaji titles, SERIES + MOVIE types
2. Get episodes from `episodes/load_episodes.php`
3. Match by episode number (float comparison, ±0.5 tolerance)
4. Get servers from `anime/load_servers.php`
5. Extract `MALink` field: format is `"fileId!decryptionKey"` (split on first `!`)
6. Build embed URL: `https://mega.nz/embed/{fileId}#{key}`

## UnifiedSource flags
- `isEmbed: true` — bypasses DEAD_FILE_HOSTS check in `sendSrc`
- `directUrl = embedUrl` — same as url (embed URL passed as directUrl so sendSrc forwards it)
- `qualityRank: 8` → lands in "720p HD" tier

## Frontend rendering
- `getServerInfo` detects `url.includes("mega.nz/embed")`
- `EpisodePlayer` checks `currentUrl.includes("mega.nz/embed")` AFTER all hooks → returns `<MegaEmbedPlayer>`
- `MegaEmbedPlayer` renders sandboxed iframe: `sandbox="allow-scripts allow-same-origin allow-forms allow-presentation"` — NO allow-popups → cannot open new tabs/windows

**How to apply:** Any new embed-only source: set `isEmbed: true` + `directUrl = embedUrl` and add detection in Watch.tsx `getServerInfo` + `EpisodePlayer`.
