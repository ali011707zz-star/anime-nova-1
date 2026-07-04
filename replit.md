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

## ⚠️ ملاحظة مهمة — نشر التغييرات على VPS

**بعد كل تعديل على الكود في Replit، يجب تحديث VPS مباشرة عبر SSH.**

السيرفر: `root@95.182.93.105` — مسار التطبيق: `/opt/anime-nova`

المصادقة تعتمد على مفتاح SSH المثبَّت في `~/.ssh/deploy_key` (لا كلمة مرور).

```bash
# نسخ ملف معدَّل للـ VPS وإعادة البناء والتشغيل (باكند)
scp -i ~/.ssh/deploy_key \
  artifacts/api-server/src/routes/anime.ts \
  root@95.182.93.105:/opt/anime-nova/artifacts/api-server/src/routes/anime.ts

ssh -i ~/.ssh/deploy_key root@95.182.93.105 \
  "cd /opt/anime-nova && pnpm --filter @workspace/api-server run build && pm2 restart anime-nova-api"
```

للفرونتيند (static build — لا يحتاج إعادة تشغيل PM2، Nginx يخدّمه مباشرة):
```bash
ssh -i ~/.ssh/deploy_key root@95.182.93.105 \
  "cd /opt/anime-nova && pnpm --filter @workspace/anime-scraper run build"
```

**لا يوجد نشر تلقائي عبر GitHub** — التحديث يدوي مباشرة للـ VPS بعد كل تعديل.

## Nova Mobile (Expo APK) — Current Status

**Project**: `artifacts/nova-mobile/` — Expo SDK 52 React Native app (Arabic anime streaming)

**EAS Config**:
- Project ID: `07296477-c5e8-4a47-a804-95f28b46ef7b`
- Owner: `ali011707s-team`
- Backend URL: `https://animenovaa.duckdns.org` (Orkestr EU relay)
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

## Anime Rift APK Reverse-Engineering (owner's previous app)

The user's previous app "Anime Rift" (Flutter, downloaded from mobiltna.com mirror, real APK host `s1.mbdownload.com`) was inspected to recover its API structure for reference/migration purposes.

**Findings (via `strings` on `lib/arm64-v8a/libapp.so` — Dart AOT compiled, no full decompile possible without more tooling):**
- API gateway: `https://gateway.anime-rift.com/api/v4`
- Payments/subscriptions service: `https://payments.anime-rift.com/api/v1`
- No exposed raw database (no Supabase/Firebase Realtime DB strings) — backend-gateway architecture, auth via `Authorization: Bearer <token>` + Google Sign-In.
- Known route paths: `/library/search`, `/library/episodes/`, `/library/episode/sources`, `/library/episode/source/{can_play,can_use,direct_link,next_episode,report_issue}`, `/favorite/anime/*`, `/favorite/episode/`, `/watch_history/*` (mark, un_mark, latest, overview, watch, watch_many, clear/one, clear/multi, full).
- Static string extraction cannot reveal request/response bodies or the token-issuance flow — needs live traffic capture.

**Live capture attempt — result**: `mitmdump` was run on the VPS (95.182.93.105, port 8888, `/opt/mitm-capture/`) with the user's phone routed through it via manual Wi-Fi proxy. Traffic did reach the proxy, but every TLS handshake failed (`does not trust the proxy's certificate`) because Android 7+ requires the mitm CA to be trusted at the **system** level (not just "user credentials"), which normally requires root/Magisk — not available on the user's phone. So request/response bodies for `gateway.anime-rift.com` (accounts, favorites, watch history) could not be captured.

**However, the connection attempts alone (domain names, even though handshake failed) revealed the video-source domains the app calls**: `vidsrc.cc`, `vidsrc.pro`, `vidsrc.me`, `embed.su`, `api.themoviedb.org` / `image.tmdb.org` (TMDB-ID-based lookups) — i.e. Anime Rift resolves playable video links through the same public TMDB+vidsrc/embed.su ecosystem that Anime NOVA's `animation.ts` scraper **already integrates** (`vidsrc.cc` v2 embed/sources flow is already implemented; `vidsrc.pro`/`vidsrc.xyz`/`embed.su` are already coded but disabled due to DNS/timeout issues from the Replit datacenter IP — VPS IP may fare better, see `web-mobile-source-sync.md` memory).

**Conclusion**: no proprietary/undiscovered video backend was found — Anime Rift's playback pipeline is not meaningfully different from sources Anime NOVA already has. The only piece that remains genuinely behind auth (`gateway.anime-rift.com` — favorites/watch-history/account) would require rooted-device-level MITM to inspect further; not pursued further since it duplicates functionality Anime NOVA already has natively (own accounts/favorites/watch-history tables). mitmdump capture stopped and torn down on the VPS after this conclusion.
