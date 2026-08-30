# Nova 2 Project Progress

## Current position

- **Current phase:** Phase 1 — analysis of Nova 1.
- **Status:** Phase 1 complete — awaiting review before implementation.
- **Last action:** Nova 1 analysis was documented in `NOVA1_ANALYSIS.md`.
- **Execution boundary:** Nova 1 remains untouched. Replit is being used for code inspection and documentation only; the application is not installed, started, or deployed here.
- **Runtime target:** The existing VPS deployment, with changes transferred and built there only when implementation begins.

## Confirmed plan

1. Analyze Nova 1 completely without modifying its source.
2. Produce a detailed inventory of screens, navigation, features, API endpoints, models, authentication, Supabase usage, sources, playback, subtitles, downloads, favorites, history, settings, ads, and error states.
3. Turn the inventory into a feature checklist and record unknowns or backend dependencies.
4. Stop before creating or changing Nova 2 until the Phase 1 report is complete.
5. Create Nova 2 as an independent Kotlin + Jetpack Compose project, separate from Nova 1.
6. Rebuild the verified Nova 1 behavior using the real existing API, then add Media3 playback, adaptive phone/tablet UI, and Compose for TV with remote focus support.
7. Validate the implementation on the VPS/real Android targets; do not use a Replit workflow as the runtime.

## Protection rules

- Do not delete, replace, convert, or destructively restructure Nova 1.
- Do not invent API endpoints, media URLs, or placeholder data.
- Before editing any file, classify it as Nova 1 or Nova 2; if uncertain, leave it unchanged.
- Keep credentials out of source files, reports, and chat.

## Next action

Review `NOVA1_ANALYSIS.md` and confirm the Nova 2 scope/contracts before creating or changing the independent Kotlin/Compose project. No Nova 2 implementation starts before that review.