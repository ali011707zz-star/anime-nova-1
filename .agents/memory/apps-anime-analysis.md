---
name: apps-anime.com API Analysis
description: تحليل كامل لموقع apps-anime.com وتطبيقه — مصادر الفيديو وبنية الـ API
---

## الموقع: apps-anime.com

**الوصف:** منصة عربية لمشاهدة الأنمي والكرتون المدبلج — أكثر من 4000 مسلسل مجاناً.
**السوشيال:** Instagram/FB/Twitter: `anime_cartoon_full` | Telegram: `m_c_w_a`
**APK:** `Anime_Cartoon_Full_V19.apk` (13MB، Kotlin/Java — ليس Flutter)

---

## بنية الـ Infrastructure

```
apps-anime.com                     ← الموقع الرئيسي (SSR، Node.js، Cloudflare)
    ↓
base-v2.apps-anime.com             ← يرجع: {"base_url":"https://apps-player.com/Anime_Cartoon_Full/API/"}
    ↓
apps-player.com/Anime_Cartoon_Full/API/   ← PHP API الرئيسي (AUTHENTICATED)
    ↓
anime-cartoon-full-production.gdplayerpro.workers.dev  ← CF Worker proxy للـ API
    ↓
multiplecdnqualities.apps-anime.workers.dev   ← CDN Worker للجودات المتعددة
```

---

## الـ API الرئيسي (PHP)

**Base URL:** `https://apps-player.com/Anime_Cartoon_Full/API/`

### endpoints المكتشفة من APK:
```
# بيانات الأنمي
cartoon_with_info/readPagingTranslatedFilms.php
cartoon_with_info/readPagingDUBBEDFilms.php
cartoon_with_info/readPagingTranslatedSeriesAnime.php
cartoon_with_info/readPagingDUBBEDSeriesAnime.php
cartoon_with_info/getMostViewedCartoons.php
cartoon_with_info/readPagingContinueAnime.php
cartoon_with_info/searchCartoon.php

# الحلقات
episode/readPaging.php
episode_dates_with_info/read.php
episodeWithInfo/latest.php
information/readOne.php

# Auth
Accses/LoginWithEmail.php
Accses/RegisterWithEmail.php
Accses/RegisterWithGoogle.php
Accses/sendOTP.php
Accses/getDownloadAppPackageName2.php
Accses/getVideoAppPackageName2.php
Accses/serverMaintance.php

# User Features
UserLoggedOptions/addCartoonFeedback.php
UserLoggedOptions/addwatchedCartoon.php
UserLoggedOptions/getCartoonFeedbacksDesc.php
playlist/read.php
Leaderboard/getLeaderboard.php
redirect/readOneForAll.php
message/readOneForAll.php

# ⚠️ OPEN (لا يحتاج auth):
AgentsAndCookies/getData.php   ← يرجع OK.ru cookies + agents (مفتوح)
ArticleAds/getArticleUrl.php   ← يرجع {"articleUrl":"","time_sec":"16"} (مفتوح)
```

### حالة الـ Auth:
- **كل الـ endpoints محمية** برد: `{"message":"UnAuthorized request. You are not allowed to perform this request."}`
- الـ auth يتم عبر OkHttp Interceptor في APK (`base_url_interceptor`)
- Authorization header مطلوب لكن القيمة لم تُكتشف بعد
- Firebase Anonymous Auth: **معطّل** (ADMIN_ONLY_OPERATION)

---

## CF Worker API

**URL:** `https://anime-cartoon-full-production.gdplayerpro.workers.dev`
- `/health` → `{"status":"healthy","timestamp":"..."}` ✅ مفتوح
- `/status` → `OK` ✅ مفتوح
- `/cartoon/1` → UnAuthorized (نفس auth الـ PHP API)

---

## مصادر الفيديو (من APK classes.dex)

```
https://vudeo.io/        ← Vudeo CDN
https://vudeo.net/
https://m3.vudeo.io/
https://mixdrop.co/      ← MixDrop embed
ok.ru/video/(\d+)        ← OK.ru videos
https://.*\.workers\.dev/.*  ← CF Worker streams
```

### AgentsAndCookies/getData.php يرجع:
```json
{
  "oKru_Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/121",
  "okRu_Cookie": "AUTHCODE=FqxNz_vPB49sgKEEHIvpJN004rqHV1YBUuZNjRwTw474...",
  "gPhotos_Agent": "Mozilla/5.0 (X11; Linux x86_64) Chrome/71",
  "gPhotos_Cookie": "",
  "MF_Agent": "Mozilla/5.0 (X11; Linux x86_64) Chrome/71",
  "MF_Cookie": ""
}
```
**مهم:** هذا الـ endpoint مفتوح ويرجع OK.ru auth cookies مباشرة — يمكن استخدامها لجلب فيديوهات OK.ru!

---

## Firebase / بيانات APK

```
Firebase API Key: AIzaSyBAFt63-yNEqs2f_P8Db8u8xTXrKHeHaSE
Firebase Project: (غير مؤكد - remote config معطل)
APK Package: com.apps.anime.cartoon (مرجّح)
HTTP Client: OkHttp + Retrofit (Kotlin)
```

---

## قاعدة البيانات (حجم تقديري)

من الـ numeric IDs في الصور:
- Cartoon IDs وصلت لـ **4088** → يعني ~4000+ أنمي/كرتون
- Playlist IDs وصلت لـ **8329** → يعني ~8000+ playlist/season
- الوصف يقول "أكثر من 4000 مسلسل"

---

## بنية URLs في الموقع

```
/anime/{arabic-slug}-{8charID}        ← صفحة الأنمي
/episode/{arabic-slug}-{8charID}-{ep} ← صفحة الحلقة
/search?q={query}
```

### أمثلة IDs:
```
المحقق كونان  → 2wmW6arL  (cartoon_id=1 في DB)
One Piece     → eXawJ8Wy  (cartoon_id=2 مرجّح)
ناروتو شيبودن → JaRYxY8Q
Solo Leveling → xmlbxy8p
```

---

## نقاط صالحة للاستخدام في Nova

| المصدر | القيمة | الصعوبة |
|--------|--------|---------|
| `AgentsAndCookies/getData.php` | OK.ru cookies جاهزة للاستخدام | ✅ سهل |
| OK.ru regex: `ok\.ru/video/(\d+)` | فيديوهات مباشرة | ✅ ممكن |
| Vudeo CDN patterns | vudeo.io/vudeo.net | متوسط |
| الـ PHP API | يحتاج reverse engineer للـ auth | ⚠️ صعب |

---

## ما لم يُكتشف بعد

- [ ] القيمة الفعلية لـ Authorization header
- [ ] هل الـ auth token مبني على Package Signature أو شيء أبسط؟
- [ ] ماذا يرجع `Accses/getVideoAppPackageName2.php` (قد يكشف الـ token)
- [ ] بنية response بيانات الأنمي عند نجاح الـ auth

---

## ملاحظة مهمة

الموقع يمنع DevTools بـ JavaScript:
- يراقب `outerWidth - innerWidth > 160px`
- يراقب `debugger` pause > 100ms
- يمسح محتوى الصفحة فوراً عند الكشف
→ يجب استخدام Puppeteer/CDP mode بدون debugging للـ scraping
