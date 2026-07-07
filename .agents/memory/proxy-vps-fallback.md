---
name: Proxy VPS fallback
description: VPS-side fallback added to all 3 proxy routes when CF Worker fails
---

## Rule
hls-proxy, video-proxy, seg-proxy جميعها لها fallback على VPS عند سقوط CF Worker.

**CF Worker** = الوضع الطبيعي (307 redirect — صفر bandwidth).
**VPS fallback** = عند سقوط CF Worker — VPS يجلب مباشرة بـ Referer صحيح.

## Health Check
- `_cfh = { ok: false, ts: 0, busy: false }` — initial=false (fail-safe)
- OPTIONS request لـ CF_WORKER_URL كل 45 ثانية في الخلفية
- الجواب 200 = CF Worker حي → يستخدم CF Worker
- خطأ/timeout = CF Worker ميت → VPS fallback

**Why:** CF Worker يعيد 530 بشكل متقطع. VPS fallback يضمن التشغيل دائماً.

## Key functions added to anime.ts
- `cfWorkerHealthy()`: background health check with 45s cache
- `rewriteM3u8ForVPS()`: rewrites M3U8 segments to seg-proxy (context-aware: EXT-X-STREAM-INF flag)
- `serveHlsVPS()`: fetches M3U8 server-side + rewrites
- `serveMediaVPS()`: streams segments/video via pipe (no arrayBuffer)

## How to restore CF Worker if broken again
1. Check CF_PROXY_KEY: Cloudflare Dashboard → Workers → nova-cdn-proxy → Settings → Variables
2. Key value is in VPS PM2 env: `pm2 env 22 | grep CF_PROXY_KEY`
3. `echo "KEY" | wrangler secret put CF_PROXY_KEY` (requires wrangler login first)
