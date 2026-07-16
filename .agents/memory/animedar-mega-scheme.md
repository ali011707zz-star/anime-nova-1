---
name: AnimeDar MEGA truncated scheme
description: Some AnimeDar episodes store mega embed data as ":/mega.nz/embed#!..." — https was stripped, leaving colon+single-slash; fix is "https://" + d.slice(2)
---

## The Rule
In `buildAnimestreamEmbed`, the `case "mega"` block must handle multiple data formats:

1. `https://mega.nz/embed...` → return as-is (full URL already)
2. `//mega.nz/embed#!...` → `"https:" + d` (protocol-relative, 2 slashes)
3. `:/mega.nz/embed#!...` → `"https://" + d.slice(2)` (colon+1-slash, NOT `"https" + d` which gives wrong 1-slash URL)
4. `!fileId!key` → `"https://mega.nz/embed#" + d` (old bang format)
5. `fileId#key` → `"https://mega.nz/embed/" + d` (standard format)

## Why
AnimeDar's database inconsistently stores the MEGA embed URL. Older episodes (ep1 of long series like Naruto) use format `:/mega.nz/embed#!vqRAwQZT!...` — appears to be a corrupted protocol-relative URL where `https` was stripped, leaving only the colon. Newer episodes use clean `fileId#key` format.

The bug was `"https" + ":/mega.nz/..."` = `"https:/mega.nz/..."` (one slash) instead of the correct `"https://mega.nz/..."` (two slashes). Fix: `"https://" + d.slice(2)` strips the `:/` prefix and prepends `https://`.

## How to apply
Applies to `buildAnimestreamEmbed` in `artifacts/api-server/src/routes/anime.ts`, `case "mega"` branch. The check order matters: full URL first, then protocol variants, then bang format, then standard format.
