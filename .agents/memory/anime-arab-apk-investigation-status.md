---
name: Anime Arab (com.alarabs.alanime) APK — investigation in progress
description: User confirmed the app shows real Spacetoon-era Arabic-dubbed content; first-pass static analysis was too shallow — resume here
---

**Corrected understanding (user-confirmed via screenshot):** the "Anime Arab" app
(`com.alarabs.alanime`, promoted from a mobiltna.com blog post) is NOT just an ad-wrapper with no
content — its home grid shows real, specific Arabic-dubbed cartoon/anime titles (رئيسة مجلس الطلبة
نادلة، الحياة اليومية لطلاب الثانوية، انيوشا، ساكورا، بي باتل، بي بليد، أفاتار، يوغي يو، ديجيتال،
يوكاي واتش، ميراكولوس، باكوجان، دورايمون، إلخ) — classic Spacetoon-era Arabic dub catalog. My
earlier conclusion ("generic ad-SDK wrapper, no backend") was wrong/premature — first-pass string
search across the raw dex files just hadn't found the real backend yet.

**Where investigation currently stands (2026-07-11):**
- APK saved on VPS at `/tmp/anime_arab.apk` (~80MB); extracted to `/tmp/aa_extract/`.
- `apktool` is available on the VPS (`jadx` and `d2j-dex2jar` are NOT installed — `which` found
  neither), so full Java-source decompilation hasn't happened yet. A prior partial attempt only
  produced a `com/applovin/...` proto stub tree under `/tmp/aa_extract/src`, not the app's own
  `com/alarabs/...` package — that decompile pass was incomplete/targeted the wrong classes*.dex.
- The app is multidex: `classes.dex` through `classes13.dex` exist in the extracted APK. The app's
  own code almost certainly lives in one of the later/smaller dex files (most of the large ones are
  Firebase/Play-services/ad-SDK bytecode) — this hasn't been isolated yet.
- Plain `strings`+grep across raw dex bytes only surfaced ad-SDK domains and a stray
  `wp-json/wp/v2/` reference; that approach is known to miss constructed/obfuscated strings
  (Retrofit base URLs built from string concatenation, remote-config-supplied domains, etc.), which
  is likely why the real content API hasn't surfaced yet.

**Next step when resuming:** decompile properly — either install `jadx` (`apt`/binary release) and
run it on the whole APK to get readable Java (not just raw dex strings), or run `apktool d` on each
`classes*.dex` to get smali and grep smali specifically for `okhttp`/`Retrofit`/`baseUrl` patterns
and string-pool constants near networking classes in `com/alarabs/...` once that package is located.
Also worth checking `res/values/strings.xml` and any `assets/*.json` for a hardcoded API host.
