---
name: Anime Arab (com.alarabs.alanime) APK — investigation CLOSED, dead end
description: Real backend found and confirmed permanently dead — do not reopen without a new lead
---

**Resolved 2026-07-11.** Properly isolated the app's own code (it lives in `classes5.dex` of the
multidex APK — `baksmali`-disassembling that one file and grepping for `Lcom/alarabs` confirmed it,
after earlier passes accidentally targeted the wrong dex/an AppLovin shadow package).

The app's structure is a generic "WordPress/RSS/YouTube provider" template builder
(`com.alarabs.alanime.providers.{wordpress,rss,yt,fav}`) — each content item carries its own
`apiurl` field rather than a single hardcoded base URL, so no static string search of the app code
itself reveals a live domain.

**The real backend was found via `resources.arsc` strings**: a Firebase Realtime Database at
`https://danyah-58729.firebaseio.com` (plus an associated `AIzaSy...` API key). Queried directly
(`GET https://danyah-58729.firebaseio.com/.json`) and it returns:
`{"error":"The Firebase database 'danyah-58729' has been deactivated."}`

**Conclusion**: this app's entire content backend is permanently gone (Firebase project
deactivated by its owner, not a transient outage). There is no alternate domain to fall back to —
this was the only backend reference found anywhere in the APK (manifest, resources.arsc, and the
app's own dex). **This source is not viable and further investigation should not be resumed**
unless a completely different version/build of the app surfaces with a different Firebase project.
