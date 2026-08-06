# Anime NOVA

A full-stack anime streaming platform with web and mobile clients.

## Project structure

| Package | Path | Description |
|---------|------|-------------|
| `api-server` | `artifacts/api-server` | Node.js backend — scrapers, HLS proxy, Telegram bot, DB |
| `anime-scraper` | `artifacts/anime-scraper` | React/Vite web frontend |
| `nova-mobile` | `artifacts/nova-mobile` | Expo React Native mobile app |
| `mockup-sandbox` | `artifacts/mockup-sandbox` | Design/mockup canvas sandbox |

## Runtime

**The app does NOT run on Replit.** It runs on a VPS via pm2.

- VPS: `root@95.182.93.105`
- Process manager: pm2 (`pm2 list`, `pm2 logs nova-api`)
- After deploying changes: `pm2 delete nova-api && pm2 start ecosystem.config.cjs`

**Replit is used as a code editor only.** Push changes to GitHub, then pull + rebuild on the VPS.

## Stack

- **Backend**: Node.js + TypeScript, Express, PostgreSQL (Supabase), Playwright (Hound CF-bypass)
- **Frontend**: React + Vite + TypeScript + Tailwind
- **Mobile**: Expo React Native
- **CDN**: Cloudflare Worker (`nova-cdn-proxy`)
- **Package manager**: pnpm (monorepo)
- **Crash reporting**: Sentry (`@sentry/react-native`) in `nova-mobile`, added 2026-08-06 to catch *native* crashes (e.g. video player force-closes) that the older JS-only `crashLogger.ts` could never see. DSN is passed as `EXPO_PUBLIC_SENTRY_DSN` (build-apk.yml + eas.json) — Sentry DSNs are safe to embed client-side, not a real secret.

## User preferences

- Do not run or install the app in Replit — VPS only.
- Do not restructure or migrate the existing stack.
