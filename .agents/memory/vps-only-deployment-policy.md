---
name: VPS-only deployment policy
description: User's explicit instruction that this app must never be installed/run inside the Replit workspace itself.
---

The user explicitly said not to install or run this app inside the Replit workspace — it runs exclusively on their VPS (95.182.93.105) via pm2 (see `ecosystem.config.cjs` process names: `anime-nova-api`, `cf-proxy`, `cinepro`, `cinesrc`).

**Why:** Replit is used purely as a code-editing environment for this project; the actual product always runs on the VPS. Local Replit workflows (`Start application`, `CF Proxy`, per-artifact dev servers) failing/staying stopped in the workspace is expected and not a bug to fix.

**How to apply:**
- Do not try to get the local Replit workflows green as a definition of "done" for this project — that is not the goal.
- To verify a change actually works, SSH into the VPS and check `pm2 list` / `pm2 logs <name> --lines N --nostream`, not local screenshots or local server logs.
- After editing code in Replit, it must be manually copied to the VPS and rebuilt/restarted there (see replit.md's "⚠️ ملاحظة مهمة" section for the exact scp + pm2 delete/start steps) — there is no auto-deploy from GitHub/Replit.
- SSH credentials for the VPS are supplied ad hoc by the user in chat when needed; do not persist them to any file, memory, or code.
