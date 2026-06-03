---
name: AnimeDar data attribute regex bug
description: \bdata= matches quality-data= in HTML; must use (?:^|\s)data= instead
---

The regex `/\bdata=["']([^"']+)["']/` was used to extract the `data` attribute from AnimeDar's `<li>` server elements.

**The bug:** In `<li quality-data="HD" data="fileId#key" class="mega">`, the `-` before `data` in `quality-data` IS a word boundary in JavaScript regex. So `\bdata=` matches `quality-data="HD"` first (attribute order in the HTML), capturing `HD` instead of the real fileId.

**Result:** `buildAnimestreamEmbed("mega", "FHD")` → `"FHD".includes("#")` → false → returns null. All mega sources silently dropped.

**Fix:** Change `\bdata=` to `(?:^|\s)data=` — requires a space or start-of-string before `data=`, which `quality-data=` cannot satisfy (it has `-` before `data`).

**Why:** Character class negation `[^>]` and word boundaries interact with hyphens in HTML attribute names; `-` is always a non-word character so `\bdata` matches inside `quality-data`.

**How to apply:** Whenever parsing `data=` from multi-attribute HTML strings, use `(?:^|\s)data=` not `\bdata=`.
