---
name: CF Worker Token Encryption
description: Security upgrade — AES-256-GCM encrypted tokens replace plain ?url=&key= params in CF Worker requests
---

## Rule
All CF Worker requests now use `?t=TOKEN` (AES-256-GCM).
No plain CDN URL or key ever appears in browser network devtools.

## Token format
iv(24 hex = 12B) + ciphertext(N hex) + authTag(32 hex = 16B)

## Key source
Server reads CF_PROXY_KEY from process.env (set in ecosystem.config.cjs on VPS).
CF Worker Cloudflare secret CF_PROXY_KEY must match the server value exactly.
Never store the actual key value in memory — rotate it if it has ever been committed anywhere.

**Why:** AES-CBC is malleable; GCM adds auth tag that rejects forged tokens.

## TTL
4 hours per token — avoids mid-stream 401 on long viewing sessions.

## Behavior when CF_PROXY_KEY is unset
encryptCfToken() returns null → server falls back to direct URL (privacy hardening bypassed, but stream still works).
CF Worker returns 500 when its own CF_PROXY_KEY secret is missing.

## Deployment
Worker code: cf-worker/worker.js + wrangler.toml (name=nova-cdn-proxy).
Deploy: `npx wrangler deploy` from cf-worker/ with CLOUDFLARE_API_TOKEN set.
After deploy: `wrangler secret put CF_PROXY_KEY` to set the matching key in Cloudflare.
