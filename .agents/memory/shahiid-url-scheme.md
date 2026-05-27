---
name: Shahiid URL scheme change
description: shahiid-anime.net migrated all URL paths by adding an extra 's' — episodes→episodeses, seasons→seasonses, series→serieses
---

## Rule
All shahiid-anime.net URL paths have an extra 's' appended:
- `/episodes/{slug}/` → `/episodeses/{slug}/`
- `/seasons/{slug}/` → `/seasonses/{slug}/`
- `/series/{slug}/` → `/serieses/{slug}/`

The episode URL pattern is now: `/episodeses/{series}-الحلقة-{N}-{seasonSuffix}/`
where `{seasonSuffix}` is the season number (1, 2, 3...).

## How to apply
- `extractEpLinks` regex must use `episodeses?` (matches both old and new)
- Template URL construction must detect which scheme the sample URL uses and replicate it
- `epNumInSlug` still works because `-{N}-` appears in the URL regardless of the suffix
- Sub-season pages (e.g. `seasonses/?serie=ID` → `seasonses/{slug}/`) now contain `/episodeses/` links, not `/episodes/` links

**Why:** Discovered 2026-05-27 when scraper returned [] for all anime. The site changed URLs site-wide; the fix was one regex change in extractEpLinks.
