---
name: VPS Deployment — 95.182.93.105
description: كيفية نشر Anime NOVA على الخادم الشخصي وما يجب معرفته عند التعديل مستقبلاً
---

# VPS Deployment Details

**Why:** Project is deployed on a personal VPS (Ubuntu 24.04) at 95.182.93.105 alongside Replit.

## Stack on VPS
- Node.js v20, pnpm, PM2, Nginx
- App dir: `/opt/anime-nova`
- Env file: `/opt/anime-nova/.env`
- PM2 config: `/opt/anime-nova/ecosystem.config.cjs`
- Logs: `/var/log/anime-nova-out.log` / `error.log`

## Critical: Telegram webhook uses self-signed SSL cert
- Cert path: `/etc/nginx/ssl/nova.crt` and `.key`
- Webhook registered with cert uploaded to Telegram (`has_custom_certificate: true`)
- Any cert change requires re-running: `curl -X POST https://api.telegram.org/bot{TOKEN}/setWebhook -F url=... -F certificate=@/etc/nginx/ssl/nova.crt`
- Token retrieved from Supabase: `GET {SUPABASE_URL}/rest/v1/app_config?key=eq.telegram_bot_token`

## Telegram env vars
- `TELEGRAM_CHANNEL_ID` is in `.env` directly AND restored from DB via config-sync
- `TELEGRAM_BOT_TOKEN` and `TELEGRAM_CHAT_ID` are DB-only (restored via config-sync at startup)
- Scheduler uses `getEnvOrDb("TELEGRAM_CHANNEL_ID", "telegram_channel_id")` with 15s delay — do not remove this delay

## How to apply code changes
```bash
# From Replit shell:
SSHPASS='...' sshpass -e scp -o StrictHostKeyChecking=no artifacts/api-server/src/... root@95.182.93.105:/opt/anime-nova/artifacts/api-server/src/...
SSHPASS='...' sshpass -e ssh root@95.182.93.105 "cd /opt/anime-nova && pnpm --filter @workspace/api-server run build && pm2 restart anime-nova-api"
```

## How to apply frontend changes
```bash
SSHPASS='...' sshpass -e ssh root@95.182.93.105 "cd /opt/anime-nova && VITE_API_URL= NODE_ENV=production pnpm --filter @workspace/anime-scraper run build && pm2 restart anime-nova-api"
```

**How to apply:** Any time the user asks to update/debug the VPS deployment.
