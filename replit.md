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
- **Arabic translation**: the API's existing `/api/anime/translate` and subtitle translation routes optionally use a self-hosted Argos Translate HTTP service first when `ARGOS_TRANSLATE_URL` is set on the VPS. If it is unavailable, LibreTranslate, Google, MyMemory, and source-text fallbacks remain active. This covers titles, descriptions, episode titles, and subtitles for web and mobile clients.

## User preferences

- Do not run or install the app in Replit — VPS only.
- Anivexa integration: run the imported Anivexa-API service separately on the VPS
  (default `127.0.0.1:8787`) and set `ANIVEXA_API_URL` in `/opt/anime-nova/.env`.
  Nova consumes only direct HLS/MP4 streams from the approved Anivexa providers;
  AniNeko is not duplicated and subtitle-only providers are filtered out.
- Do not create, configure, or start Replit workflows for this project; local workflow failures are expected because Replit is code-editing only.
- Do not restructure or migrate the existing stack.
