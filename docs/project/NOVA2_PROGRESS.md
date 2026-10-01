# Nova 2 Project Progress

## Current position

- **Current phase:** Phase 5 — local library and offline MP4 downloads.
- **Status:** Phases 3–5 are implemented in source — no build or runtime was
  executed in Replit.
- **Last action:** Added the real AniList proxy queries, Arabic search translation,
  browse filters, details, episode-title loading, SSE source streaming, Media3
  playback, subtitle selection, local favorites/history/progress, and MP4
  downloads through Android DownloadManager.
- **Execution boundary:** Nova 1 remains untouched. Replit is being used for code inspection and documentation only; the application is not installed, started, or deployed here.
- **Runtime target:** The existing VPS deployment, with changes transferred and built there only when implementation begins.

## Confirmed plan

1. Analyze Nova 1 completely without modifying its source.
2. Produce a detailed inventory of screens, navigation, features, API endpoints, models, authentication, Supabase usage, sources, playback, subtitles, downloads, favorites, history, settings, ads, and error states.
3. Turn the inventory into a feature checklist and record unknowns or backend dependencies.
4. Stop before creating or changing Nova 2 until the Phase 1 report is complete.
5. Create Nova 2 as an independent Kotlin + Jetpack Compose project, separate from Nova 1. **Implemented.**
6. Rebuild the verified Nova 1 behavior using the real existing API, then add Media3 playback, adaptive phone/tablet UI, and Compose for TV with remote focus support. **Catalog, playback, local library, and MP4 download slices implemented.**
7. Validate the implementation on the VPS/real Android targets; do not use a Replit workflow as the runtime.

## Protection rules

- Do not delete, replace, convert, or destructively restructure Nova 1.
- Do not invent API endpoints, media URLs, or placeholder data.
- Before editing any file, classify it as Nova 1 or Nova 2; if uncertain, leave it unchanged.
- Keep credentials out of source files, reports, and chat.

## Remaining acceptance work

The server source now has an explicit Nova 2 release identity allowlist and an
independent minimum-version setting. It still must be transferred and deployed
to the VPS before the APK can pass the gate. Build and device validation remain
outside Replit on GitHub CI/VPS; acceptance must then test HLS/MP4, subtitles,
login, library persistence, MP4 downloads, and TV remote focus on real targets.