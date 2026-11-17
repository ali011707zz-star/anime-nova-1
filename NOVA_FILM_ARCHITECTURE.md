# NOVA FILM — Architecture & Branch Configuration

Branch dedicated to the standalone **NOVA FILM** application (Movies, Series, Animation & Dubbed Cinema), completely isolated from `main` (Anime NOVA).

## Recommended Technology Stack
- **Language:** TypeScript (`.tsx` / `.ts`)
- **Framework:** React Native `0.81` + Expo SDK `54` + Expo Router
- **Video Playback:** `expo-video` + `react-native-video` + WebView Fallback for iframe servers
- **Multi-Device Support:**
  - **Phone (Android & iOS):** Adaptive mobile layout + portrait/landscape player
  - **iPad / Tablets:** Multi-column responsive grids (`useWindowDimensions`) + split detail view
  - **Android TV / Smart TV:** `withAndroidTv` plugin (`LEANBACK_LAUNCHER`) + `TVFocusGuideView` + D-Pad focus & directional navigation (no mouse-cursor hacks needed)
- **OTA Remote Updates:** Self-hosted `expo-updates` (Expo Updates Protocol v1) served directly from the VPS (`https://animenovaa.duckdns.org/api/ota-film/manifest`)
- **Catalog Backend:** Protected Local SQLite Media Vault (`/var/lib/anime-nova-vault/media-catalog.sqlite`) via `/api/media-vault/*`
- **User Sync / Auth:** Supabase (shared or isolated user profiles, favorites, and watch history)

## App Identity (Separate from Anime NOVA)
- **App Name:** `NOVA FILM`
- **Android Package:** `com.nova.film`
- **iOS Bundle Identifier:** `com.nova.film`
- **OTA Channel / Endpoint:** `/api/ota-film/manifest`
