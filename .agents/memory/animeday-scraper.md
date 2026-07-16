---
name: AniméDay scraper
description: anime-day.com Android app API — server structure, coverage, what works and what's dead
---

# AniméDay (anime-day.com) Scraper

## API endpoints (Android app)
- `GET /app/anime.php` → `{data:[{id,name,...}]}` — 12 anime
- `GET /app/servers.php` → `{data:[{id,anime_id,episode,name,url,...}]}` — 474 servers
- `GET /app/filter.php?anime_id={id}` → `{anime:{data:[...],total}}` — episodes per show
- Headers required: `User-Agent: Dalvik/2.1.0 (Linux; U; Android 10)` or similar Android UA

## Server URL patterns and resolution
- `/v/{code}` → vidhidepro.com (FileLions) — **ONLY LIVE SERVER** — parseVidhidePro() extracts HLS
- `/e/{code}` → resolved by name field: dood.to / mixdrop.ag / kerapoxy.cc / embedwish — ALL EXPIRED
- `/embed-xxx.html` → resolved by name: upstream / uqload / vadbam / mp4upload — ALL EXPIRED/DEAD
- `/ajax/` URLs → skip entirely (dead endpoint)

## Content database
| Show | DB episodes | Servers available | Status |
|------|------------|-------------------|--------|
| جوجوتسو كايسن (مدبلج) | 1 | 1 (vidhidepro) | ✅ WORKS |
| Regular Show S1 | 12 | 28 eps | ❌ All expired |
| Regular Show S2 | 24 | (same) | ❌ All expired |
| Primal S1 | 10 | 10 | ❌ All expired |
| Primal S2 | 5 | (same) | ❌ All expired |
| The Owl House S3 | 3 | 3 | ❌ All expired |
| The Demon Hunter S1 | 24 | 1 | ❌ Expired |
| Martial God Asura S1 | 15 | 1 | ❌ Expired |
| Sym-Bionic Titan | 20 | 0 | ❌ No servers |

## Server name matching logic
- Arabic shows (first word is Arabic): `epStr = "الحلقة {N}"`; matchPrefix = first 2 Arabic words
- English shows (first word is English): `epStr = "season {S} eps {N}"`; matchPrefix = show name without season suffix
- Season detection: digit season ("Season 2") preferred; fallback Arabic ordinals (الأول=1, الثاني=2…)
- Arabic ordinal map covers الأول through العاشر (1–10)

## isArabic detection fix
- Check FIRST WORD only for Arabic characters — not presence of Arabic anywhere in string
- "Regular Show الموسم الثاني" → first word "Regular" → isArabic=false → English path

## qualityRank
- vidhidepro (FileLions) → rank=9 (HD); label="أنمي داي · filelions"

## Integration points
- anime.ts: `getAnimeDaySources(title, english, ep)` → UnifiedSource[]
- animation.ts: parallel block in Promise.allSettled — searches by title similarity, matches season/ep
- Watch.tsx SCRAPER_DEFS: `{site:"animeday", tag:"DY"}`
- Both SSE endpoints fire AniméDay correctly

## GitHub Subtitle Library (PRIMARY VALUE)
The real value of anime-day.com is Arabic subtitle VTT files hosted on GitHub Pages (adnango1.github.io):

| Show | GitHub repo | Pattern | Episodes |
|------|-------------|---------|----------|
| Regular Show S1+S2 | Regular-Show | `eps{N}season{S}.vtt` | S1:12 + S2:28 |
| Sym-Bionic Titan | symbionic | `eps{N}.vtt` | 20 eps |
| Primal S2 | primal2 | `eps{N}season1.vtt` | 2 eps |
| The Demon Hunter | thedemonhunter | `eps{N}season{S}.vtt` | S1:1 |
| Martial God Asura | MARTIALGODASURA | `eps{N}season{S}` (no .vtt) | S1:1 |
| Ben 10: Secret of Omnitrix | ben10SecretoftheOmnitrix | `movie` (no .vtt) | movie |
| Regular Show: The Movie | RegularShowMovie | `movie` (no .vtt) | movie |

All files: CORS *, confirmed live 2026-06.
Function: `getAnimeDaySubtitleUrl(title, season, ep)` in animation.ts.
Injected into: subtitle-tracks (Arabic track "عربي · أنمي داي") + sources-stream sendSource (subtitleUrl field).
AnimationWatch.tsx passes &title= to subtitle-tracks endpoint.

**Why kept:** Even though 95% of content has expired links, the vidhidepro server is live and the app API is stable. When anime-day.com adds new content with fresh servers, the scraper will work immediately.
