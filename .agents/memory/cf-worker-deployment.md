---
name: Cloudflare Worker CDN Proxy
description: Real CF Worker that adds Referer headers and streams from CDN — replaces cf_proxy.py /stream to eliminate VPS bandwidth usage
---

## Worker Details
- **Script name**: `nova-cdn-proxy`
- **URL**: `https://nova-cdn-proxy.ali011707zz.workers.dev`
- **Account**: `ali011707zz` (7bfca4451b2b30b2a37a135c8bfdd89a)
- **Key**: stored in VPS .env as `CF_PROXY_KEY`

## VPS env vars needed
```
CF_WORKER_URL=https://nova-cdn-proxy.ali011707zz.workers.dev
CF_PROXY_KEY=ncp_10a23615ebb5acba78b00ad5e2c909c3
```

## Usage
- `video-proxy` redirects to: `CF_WORKER_URL?url=<encoded>&ref=<encoded>&key=CF_PROXY_KEY`
- The Worker fetches from CDN with Referer/Origin/Range headers
- CF absorbs all bandwidth — VPS only sends the 307 redirect (a few bytes)

## VPS update command (when SSH is available)
```bash
ENV_FILE="/opt/anime-nova/artifacts/api-server/.env"
sed -i "s|CF_WORKER_URL=.*|CF_WORKER_URL=https://nova-cdn-proxy.ali011707zz.workers.dev|" "$ENV_FILE"
sed -i "s|CF_PROXY_KEY=.*|CF_PROXY_KEY=ncp_10a23615ebb5acba78b00ad5e2c909c3|" "$ENV_FILE"
cd /opt/anime-nova && pm2 delete anime-nova-api && pm2 start ecosystem.config.cjs --only anime-nova-api
```

## Why CF Worker instead of cf_proxy.py /stream
cf_proxy.py /stream was piping all video bytes through VPS (4GB consumed from brief testing).
CF Worker streams directly to clients from Cloudflare's network — free, no VPS bandwidth.

**Why pm2 delete+start (not restart)**: PM2 doesn't reload .env on restart — must delete+start.
