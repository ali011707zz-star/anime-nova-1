---
name: EgyBest APK Analysis
description: Complete reverse-engineering of EgyBest Android APK v19.1.1 — framework, API, video extractors, integration decision
---

## Framework
EgyBest (`com.egyappwatch`) is built on **EasyPlex** — an open-source Android streaming framework.
APK protected with Apk-Dex2C-Pro v3.1.37.

## Live Config File
`GET https://watchit.tn/api_urls.json` → returns dynamic API base URLs:
- Primary: `https://hrrejhp.com/egybestanto/public/api/`
- Backups: azertyquiz.com, fashd.com, 7odaeg.com, waatchme.com, abcdef.flech.tn, hrrejgh.com, 3echk.com

## API Auth
- POST `/register` → JWT Bearer token (open registration, free)
- POST `/login` → needs `username` + `password` (NOT email)
- Content endpoints (`/animes`, `/movies`, `/series`, `/settings`) return `{"message":""}` for non-premium users
- `premuim: 0` in user object confirms paywall
- Hardcoded app token (in APK): `Bearer GxoNdPhOrskWYZfSw2d9hgeXToSlUBal` — does NOT unlock content

## Video Extractors in App
FaselHDS (faselhds.life) is the primary Arabic platform — uses WebView multi-phase extraction with Cloudflare Turnstile bypass (impossible server-side).

Standard video hosts (all already covered by Nova Anime):
streamtape, mp4upload, streamsb/sbplay, doodstream, uptostream, gdstream, gavid, vidlox, vidmoly, vidoza, fembed, hxfile, govid, vadbam, viidshar, myviid, vudeo, pandafiles

## StreamSB-Clone API Domains (EasyPlex mirrors)
Pattern: `POST https://{domain}/api/source/{fileId}` → returns quality URLs
- sbplay.xyz, diasfem.com, gavid.xyz, gdstream.net, ff-dns.xyz, ll-dns.xyz
- manasx.xyz, mifilm.xyz, mrdhan.com, otcplay.fun, playto1.com, pp-dns.xyz
- psadns.xyz, suzihaza.com, zapurl.xyz, iplhd.cyou, easyplex.xyz

## Video Extraction Regex Patterns (from DEX)
```
file:\s*"((?:\\.|[^"\\])*.m3u8)"
file:\s*"((?:\\.|[^"\\])*.mp4)"
src:\s*"((?:\\.|[^"\\])*.m3u8)"
"file":"(.*?)","label":"(.*?)"
```
Quality response fields: `url240`, `url360`, `url480`, `url720`, `url1080`

## Integration Decision: NOT INTEGRATED

**Why**: EgyBest is Egyptian movies/series content (not anime-focused). API is paywalled. Video hosts already covered. FaselHDS requires WebView (Cloudflare Turnstile — impossible server-side).

**How to apply**: If user requests EasyPlex-based app scraping in future, use this pattern: register free account → get JWT → call `/api/source/{id}` on StreamSB-clone domains for video extraction.
