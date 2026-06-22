---
name: iframe policy mega+vidmoly only
description: User requirement — only mega.nz and vidmoly are allowed as sandboxed iframes; all other embed sources must be filtered
---

## Policy
Only `mega.nz` (mega.nz/embed, mega.co.nz/embed) and `VIDMOLY_HOSTS` (vidmoly.biz, vidmoly.to, vidmoly.net) are allowed as `isEmbed: true` sources.

## Filter applied in THREE places
1. `collect()` inside `extractAndCollect()` — prevents embed sources from entering the output buffer
2. `sendSrc()` inside the sources-stream SSE endpoint — filters before writing to SSE
3. `collectSrc()` inside the fetch-source endpoint — filters before adding to results array

## Filter code pattern
```typescript
if (s.isEmbed) {
  const eu = (s.directUrl || s.url).toLowerCase();
  if (!eu.includes("mega.nz") && !eu.includes("mega.co.nz") && !VIDMOLY_HOSTS.some(h => eu.includes(h))) return;
}
```

**Why:** User explicitly requested: iframes only from mega and vidmoly — all other embeds (share4max, vidmoly variants, etc.) must be replaced with direct URLs or dropped.
