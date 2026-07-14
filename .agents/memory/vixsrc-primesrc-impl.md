---
name: VixSrc & PrimeSrc scrapers implementation
description: نتائج إضافة واختبار مصدري vixsrc.to و primesrc.me في animation.ts
---

# VixSrc (vixsrc_anim) + PrimeSrc (primesrc_anim) — نتائج الاختبار الفعلي

**ملف**: `artifacts/api-server/src/routes/animation.ts` (بعد آخر scrapeAnimCached للـ xpass)

---

## vixsrc.to — مُضاف وتم الاختبار ✅ (أفلام فقط)

### Flow الصحيح:
1. `GET /api/movie/{tmdbId}` أو `/api/tv/{tmdbId}/{s}/{e}` → `{"src":"/embed/{id}?token=...&expires=..."}`
2. `GET /embed/{id}?token=...` → HTML يحتوي `window.masterPlaylist = { url: '...?b=1', params: { token, expires, asn } }`
3. Regex الصحيح: `html.match(/masterPlaylist[\s\S]*?url:\s*'([^']+)'/)`  (لا `[^}]*` — تفشل مع nested `{}`)
4. `GET {url}?b=1&token={params.token}&expires={params.expires}&h=1&lang=en` مع `Referer: embedUrl` → 200 M3U8

### نتائج الاختبار:
| المحتوى | الحالة | السبب |
|---|---|---|
| أفلام (Avengers Endgame tmdb 299534) | ✅ يعمل | HLS 200 OK |
| مسلسلات (Breaking Bad tmdb 1396) | ❌ playlist 403 | VPS IP مرفوض للـ TV content |
| أنمي (AoT tmdb 1429) | ❌ API HTML | لا يوجد أنمي على vixsrc.to |

### جودة المحتوى (أفلام):
- **صوت**: إنجليزي (raw/original، DEFAULT=YES) + إيطالي
- **ترجمة**: 20+ لغة مدمجة في M3U8 — إنجليزي CC، إسباني، فرنسي، ألماني، ياباني، كوري، هولندي... **لا عربي**
- **خلاصة**: مصدر جيد للأفلام الغربية، بدون دعم عربي

---

## primesrc.me — مُضاف لكن لا مصادر تُستخرج ❌

### API يعمل:
- فيلم: `GET /api/v1/s?type=movie&imdb={imdbId}` → servers بـ `key` (يحتاج IMDB لا TMDB)
- تلفزيون/أنمي: `GET /api/v1/s?type=tv&tmdb={tmdbId}&season={s}&episode={e}`
- AoT s4e1: 12 server ✓ | Breaking Bad s1e1: 29 server ✓ | Avengers: 9 server ✓

### Providers محجوبة من VPS Datacenter:
- Filemoon: CF challenge page (1605 bytes) ❌
- Voe: DDoS guard blocks datacenter IPs ❌
- Luluvdoo: 404 ❌
- Streamplay: 9 bytes (dead) ❌
- VidNest: empty ❌
- Filelions → vidhidepro.com (redirect، لا تُستخرج) ❌

### لإصلاح primesrc:
يحتاج إما:
1. Residential proxy routing
2. Browser-based extraction (Puppeteer/Playwright)
3. نظام مختلف لا يعتمد على Filemoon/Voe من datacenter

**Why:** جميع providers المدرجة تكشف datacenter IPs وتحجبها. الـ key يعمل في المتصفح لكن ليس من سيرفر.
