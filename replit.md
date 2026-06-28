# Anime NOVA

An Arabic-language anime streaming platform that aggregates content from multiple sources. Users can browse anime, watch episodes, leave comments, manage favorites, and track watch history.

## Architecture

This is a **pnpm monorepo** with three main applications:

- **`artifacts/anime-scraper`** — React + Vite frontend (runs on port 5000)
- **`artifacts/api-server`** — Node.js + Express backend API (runs on port 8080)
- **`artifacts/nova-mobile`** — Expo (React Native) mobile app
- **`lib/db`** — Shared Drizzle ORM schema and PostgreSQL connection
- **`lib/api-spec`** — OpenAPI spec (used for code generation)
- **`lib/api-client-react`** — Generated React Query hooks

## Running the App

Two workflows run in parallel:
- **Start application** — Frontend dev server: `PORT=5000 pnpm --filter @workspace/anime-scraper run dev`
- **Backend API** — Express API server: `PORT=8080 pnpm --filter @workspace/api-server run dev`

The frontend proxies `/api/*` requests to the backend at `localhost:8080`.

## Database

Uses Replit's built-in PostgreSQL. The schema is auto-migrated on backend startup via `supabaseMigrate.ts`. Tables include: `users`, `sessions`, `comments`, `comment_likes`, `watch_history`, `favorites`, `watch_progress`, `ratings`, `source_cache`, `subtitle_cache`, `cdn_cache`, `translations_cache`, `anime_meta_ar`, `app_config`, `reports`.

## Environment Variables / Secrets

- `DATABASE_URL` — Auto-provided by Replit PostgreSQL
- `SESSION_SECRET` — For express-session (auto-generated if not set)
- `SMTP_USER`, `SMTP_PASS`, `SMTP_HOST`, `SMTP_PORT` — Gmail SMTP for email verification
- `GOOGLE_CLIENT_ID`, `GOOGLE_CLIENT_SECRET` — For Google OAuth login
- `GITHUB_CLIENT_ID`, `GITHUB_CLIENT_SECRET` — For GitHub OAuth login
- `TELEGRAM_BOT_TOKEN`, `TELEGRAM_CHANNEL_ID`, `TELEGRAM_CHAT_ID` — Optional Telegram bot

## Auth

Custom email/password auth with verification codes, plus Google and GitHub OAuth via Passport.js. Sessions stored in PostgreSQL (`sessions` table). Replit OIDC auth code is also present in `replitAuth.ts` for future use.

## User Preferences

- Use pnpm (not npm or yarn) — enforced by preinstall script
- Arabic RTL UI — the app is designed for Arabic-speaking users

## Nova Mobile (Expo APK) — Current Status

**Project**: `artifacts/nova-mobile/` — Expo SDK 52 React Native app (Arabic anime streaming)

**EAS Config**:
- Project ID: `07296477-c5e8-4a47-a804-95f28b46ef7b`
- Owner: `ali011707s-team`
- Backend URL: `https://anime-nova.orkestr.run` (Orkestr EU relay)
- Build profile: `preview` (APK, internal distribution)

**Crash fixes applied (build 3+)**:
- `newArchEnabled: false` in app.json (New Architecture was crashing on launch)
- `reactCompiler: true` removed from experiments
- `SplashScreen.preventAutoHideAsync().catch(() => {})` — silenced SplashScreen error
- RTL force wrapped in try/catch in `_layout.tsx`

**Dependencies (cleaned — removed crashing native packages)**:
- expo-blur, expo-haptics, expo-image, expo-image-picker, expo-linear-gradient
- expo-router, expo-screen-orientation, expo-video
- react-native-gesture-handler, react-native-safe-area-context
- react-native-screens, react-native-webview, expo-secure-store
- **Removed**: expo-glass-effect, expo-location, react-native-reanimated, react-native-worklets, react-native-svg, expo-symbols

**Key files**:
- `app/_layout.tsx` — root layout (RTL, fonts, auth)
- `app/watch.tsx` — episode playback (lazy-loading system)
- `app/(tabs)/index.tsx` — home screen
- `components/RiftPlayer.tsx` — native video player
- `eas.json` — build config
- `app.json` — Expo config

**Episode Playback System (lazy-loading)**:
- Opens picker immediately — NO SSE on launch
- User taps scraper → calls `/api/anime/fetch-source?site=X` (single scraper)
- Shows "جاري تجهيز الحلقة عبر [site]" loading screen
- On success → quality picker (if multiple) or auto-play (if one quality)
- On failure → auto-fallback to next scraper in FALLBACK_ORDER
- Results cached 5 min in AsyncStorage per (anime, ep, site)

**Build command**: `cd artifacts/nova-mobile && eas build --platform android --profile preview`
**Debug**: `adb logcat | grep -E "FATAL|crash|nova|expo"`
