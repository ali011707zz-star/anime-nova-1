---
name: Proxy URL DEAD_FILE_HOSTS false block
description: Internal proxy URLs (/api/anime/video-proxy?url=...) contain the original host in query params, causing DEAD_FILE_HOSTS check to falsely block valid sources.
---

# Proxy URL DEAD_FILE_HOSTS false block

The `collect`, `sendSrc`, and `collectSrc` functions all check:
```typescript
const checkUrl = s.directUrl || s.url;
if (!s.isEmbed && DEAD_FILE_HOSTS.some(h => checkUrl.includes(h))) return;
```

**Why this breaks:** When a source's `directUrl` is an internal proxy like `/api/anime/video-proxy?url=https%3A%2F%2Fdownload.mediafire.com%2F...`, the string `.includes("mediafire.com")` returns **true** → source is silently dropped.

**Fix applied:** Add `const isOwnProxy = checkUrl.startsWith("/api/"); ` and gate: `if (!s.isEmbed && !isOwnProxy && DEAD_FILE_HOSTS.some(...))`.

**Why:** Internal proxy URLs are already "safe" (the dangerous host is behind our proxy); the DEAD_FILE_HOSTS check is meant to block raw embed/page URLs, not proxy URLs.

**How to apply:** Any time a source's `directUrl` is a relative `/api/...` path, the DEAD_FILE_HOSTS check must be bypassed at all 3 filter sites in anime.ts (lines ~932, ~2876, ~3050).
