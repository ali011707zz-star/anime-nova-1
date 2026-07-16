---
name: External repo analysis — useful integrations
description: Repos analyzed for potential integration into Anime NOVA — what to use and how
---

## HIGH VALUE — Implement

### baha-anime-skip (JacobLinCool/baha-anime-skip)
**What:** Auto-detects OP/ED timestamps via audio waveform comparison (LCSB). 10,000+ episodes.
**Use:** Add "Skip Intro" button to player using static JSON database.
**Data format:** `{ sn: { OP: [start, duration], ED: [start, duration] } }` — sn is Bahamut episode ID
**Note:** ID is Bahamut-specific, need to map via AniList/MAL. Algorithm can run on VPS for Arabic content.
**Integration point:** player component (web + mobile) + new `/api/anime/skip-times?anilistId=&ep=` endpoint

### MovieVerse-V2.O (AnunayYadav/MovieVerse-V2.O)
**What:** Arabic anime platform with extractors for Kawaii Anime API, Anime Phoenix (Base64 decoder).
**Kawaii API:** `https://api.kaguya.app/anime/{anilistId}/episodes/{ep}/servers` → direct HLS, no scraping
**Anime Phoenix:** Base64 decode of encoded server links from Arabic sites
**Use:** Add Kawaii as new source in anime.ts; extract Anime Phoenix decoder logic.

## MEDIUM VALUE — Use as data source

### anime-mapper (subhajeetch-fl/anime-mapper)
**What:** Static JSON DB — 30,000+ anime with ALL ID mappings in one file.
**CDN:** `https://cdn.jsdelivr.net/gh/subhajeetch-fl/anime-mapper@main/data/anime/000/{anilistId}.json`
**Fields:** MAL↔AniList↔AniDB↔TMDB↔TVDB↔Kitsu↔Trakt + per-episode data (titles, air dates, filler flags)
**Use:** Replace multiple cross-DB lookup calls with single CDN fetch. Solves AniList↔TMDB mismatch in scrapers.
**Why:** |

### MyDubList (Joelis57/MyDubList)
**What:** Confidence-based Arabic dub database. 321 confirmed Arabic-dubbed anime.
**Data:** `dubbed_arabic.json` — MAL IDs + confidence levels (Low/Medium/High/Very-High)
**Use:** Auto-tag "مدبلج عربي" badge on anime cards without manual curation.
**URL:** `https://raw.githubusercontent.com/Joelis57/MyDubList/main/dubs/dubbed_arabic.json`

### trailerdb (mhadifilms/trailerdb)
**What:** 330,000+ trailers mapped to TMDB IDs. Cloudflare D1 SQL API.
**API:** `https://trailerdb.workers.dev/query?sql=SELECT youtube_id FROM trailers WHERE tmdb_id=X AND language='ar'`
**Use:** Auto-fetch Arabic trailers for detail pages using existing TMDB IDs.

## LOW VALUE — Skip

### ani-desk (silent9669/ani-desk) — SAME PROJECT as Anime NOVA (old fork/copy)
### kurozora-web (Kurozora/kurozora-web) — PHP/Laravel, incompatible stack
