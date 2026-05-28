---
name: AniPub titleSimilarity + movie case
description: Two bugs in the AniPub scraper — similarity scoring picks wrong match, and movies have no ep array
---

## Bug 1: titleSimilarity includes() shortcut

**Rule:** Never use a flat score like `0.85` when `nb.includes(na)` — both the show and its sequel/movie will match the same score, and the first-returned item (wrong one) wins.

**Why:** "Demon Slayer" is a substring of BOTH "Demon Slayer: Kimetsu no Yaiba" AND "Demon Slayer: Kimetsu no Yaiba Infinity Castle". Both got 0.85, so the first one in the API list (the movie) wrongly won.

**Fix:** Use length-ratio score when one string contains the other:
```typescript
if (na.includes(nb) || nb.includes(na)) {
  const shorter = Math.min(na.length, nb.length);
  const longer  = Math.max(na.length, nb.length);
  return 0.5 + 0.5 * (shorter / longer);
}
```
This correctly prefers the tighter match (shorter result = closer to query).

## Bug 2: Movie with empty ep[]

**Rule:** When `v1/api/details/{id}` returns `local.ep = []`, fall back to `local.link` as the single video URL.

**Why:** AniPub stores movies with the video link in `local.link` (with "src=" prefix) and an empty `ep` array, not as episode entries.

**How to apply:** In `getAniPubEpisodeServers`, check `ep.length === 0` → parse `local.link` → strip "src=" prefix → return as single-server result with dub/sub variant appended.
