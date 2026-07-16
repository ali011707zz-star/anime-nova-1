---
name: HLS & Translation optimizations
description: ما تم تطبيقه لتسريع البث وتقليل التقطيع وتحسين الترجمة على VPS + Web + Mobile
---

# HLS & Translation Performance Optimizations

## Translation Service (Frontend)
**File:** `artifacts/anime-scraper/src/utils/translationService.ts`

- Replaced LibreTranslate (`api.libretranslate.de`) with Google Translate unofficial API (`translate.googleapis.com/translate_a/single?client=gtx`)
- Added MyMemory as secondary fallback
- Added rate-limited batch: chunk=8 texts, 120ms delay between chunks (prevents 429)
- Added guard: `Array.isArray(data?.[0])` before parsing Google response

**Why:** LibreTranslate was causing 40-second translate-vtt-stream responses; Google client=gtx is faster and free.

**How to apply:** If translation breaks again, check Google endpoint first (ToS risk), then consider self-hosted LibreTranslate on VPS (Task #2).

## Nginx VPS Config
**File applied to:** `/etc/nginx/sites-available/anime-nova` on `95.182.93.105`

Key additions:
- `upstream nova_backend { keepalive 64; }` — eliminates TCP handshake per request
- `proxy_cache_path /var/cache/nginx/hls` — 10MB keys_zone + 1GB disk cache
- `/api/anime/hls-proxy` — cache 30s (manifests change often)
- `/api/anime/seg-proxy` — cache 1h (segments never change)
- `/api/anime/video-proxy` — `proxy_buffering off` (streaming)
- `/api/anime/translate-vtt-stream` — `proxy_buffering off` + `X-Accel-Buffering: no` (SSE)
- gzip for m3u8, VTT, JSON, JS/CSS

**Why:** seg-proxy was fetching from remote CDN every time (1-1.7s). Nginx cache reduces repeat segment requests to ~0ms.

## WebVideoPlayer.tsx (Nova Mobile)
**File:** `artifacts/nova-mobile/components/WebVideoPlayer.tsx`

- Upgraded hls.js CDN: `1.5.15` → `1.6.2`
- Added full HLS config: `maxBufferLength:30`, `maxBufferSize:80MB`, `backBufferLength:15`, `startFragPrefetch:true`, `progressive:true`
- Added adaptive bandwidth estimate from `navigator.connection.downlink`
- Improved retry: exponential backoff capped at 6000ms (was linear 1000ms*n)

**Why:** Minimal config (4 fields) caused aggressive buffering stalls on mobile networks.

## VPS SSH Access
- Password stored in env var `VPS_SSH_PASSWORD`
- Command: `SSHPASS=$VPS_SSH_PASSWORD sshpass -e ssh -o StrictHostKeyChecking=no root@95.182.93.105`
- App dir: `/opt/anime-nova`, PM2 process: `anime-nova-api`
- Deploy: tar + scp + extract on VPS, then `pm2 restart anime-nova-api && systemctl reload nginx`
