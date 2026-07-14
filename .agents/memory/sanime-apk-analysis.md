---
name: SAnime APK Analysis
description: تحليل تطبيق SAnime/SnoAnime (snoanime.com) — APK، API داخلي، هيكل قاعدة البيانات
---

## معلومات التطبيق
- **الموقع**: https://snoanime.com/anime/
- **رابط APK**: https://app.sanime.net/SAnime.apk
- **حجم APK**: 9.3MB
- **Package name**: `com.sanimenew.apk`
- **MainActivity**: `com.sanimenew.apk.MainActivity`
- **الإطار**: WebView wrapper — ليس تطبيقاً أصلياً!
- **PHP version**: 7.2.34 (من headers)
- **خادم**: Cloudflare + LiteSpeed (IP: 185.182.193.132)

## نوع التطبيق
**WebView Hybrid App** — يلتف حول SPA ويب محمّلة من:
- URL أولي: `https://sanime.net/?apps=true`
- SPA فعلي: `https://app.sanime.net/`
- JS bundles:
  - `https://app.sanime.net/static/js/main.93296348.js` (252KB)
  - `https://app.sanime.net/static/js/126.481f0722.js` (1.3MB — React/MUI)
- JavaScript Bridge: `MainActivity$WebViewInterface` (8 callbacks) — اتصال Android↔JS

## تعدد العلامات التجارية (Multi-brand)
نفس التطبيق يخدم عدة علامات بتغيير User-Agent:
- `IBRAHIMSEVEN` → SAnime
- `OtakuTime` → أوتاكو تايم
- `SevenZero` → SnoAnime

## الـ API الداخلي الرئيسي

### h10.php — الـ API الأساسي
**Base URL**: `https://app.sanime.net/function/h10.php?page=`

| page | Method | الوصف | مثال استجابة |
|------|--------|--------|--------------|
| `random` | GET | أنمي عشوائي | `{"id":"701","name":"...","image":"...","epName":"2010","date":"..."}` |
| `latest` | GET | أحدث الحلقات | `{"latest":[{"id":"11979","name":"...","image":"...","epName":"الحلقة 1","date":"2026-07-08"},...]}` |
| `images` | GET | صور البانر | `[{"image":"https://app.sanime.net/secure/image/NNNNN.jpg"},...]` |
| `getPost` | GET | منشورات المجتمع | قائمة JSON بالمنشورات |
| `getFav&id=` | GET | مفضلة مستخدم | `[{"title":"...","image":"...","id":"557"}]` |
| `news` | GET | أخبار | `[]` (فارغ) |
| `date` | GET | جدول البث | يجلب من animerco.org/schedule/ (خارجي) |
| `animeCmd&id=` | GET | تعليقات أنمي | مصفوفة |
| `search&name=` | GET | بحث | مصفوفة |
| `login` | POST | تسجيل دخول | form-urlencoded |
| `reset&e=` | GET | إعادة كلمة السر | عبر email |
| `addcmd` | POST | إضافة تعليق | form-urlencoded |
| `addReact&id=&type=` | GET | إضافة تفاعل | |
| `sendPost` | POST | إرسال منشور | |
| `addCmdPost` | POST | رد على تعليق | |
| `bannedUserHere` | POST | فحص حظر | |
| `updateFav` | POST | تحديث مفضلة | |
| `openAnd&id=` | GET | فتح أنمي (Android bridge) | |
| `getCmd&id=` | GET | تعليقات أنمي | "Post Deleted" إذا محذوف |

### بنية بيانات الأنمي
```json
{
  "id": "701",
  "name": "Rainbow: Nisha Rokubou no Shichinin",
  "image": "https://app.sanime.net/api/anime/701/image.jpg",
  "epName": "2010",
  "date": "2022-07-28 13:08:42.055396"
}
```

### نمط صور الأنمي
`https://app.sanime.net/api/anime/{id}/image.jpg`
- `image.jpg` يعمل (صورة JPEG فعلية)
- `/api/anime/{id}/` المجلد محجوب (403)
- IDs رُصدت: 701, 557, 11979 (آخر ID يعني DB ≥ 12000 أنمي)

## endpoints أخرى
- `https://app.sanime.net/function/h10.php` — الـ API الرئيسي
- `https://app.sanime.net/secure/leaderboard.php` — ترتيب المستخدمين
- `https://app.sanime.net/secure/audio.mp3` — مقطع صوتي
- `https://app.sanime.net/ads.html` — إعلانات
- `https://app.sanime.net/online.js` — JS للاتصال بالإنترنت
- `https://app.sanime.net/anime-ar/backend/config.php` — 200 OK، استجابة فارغة (قد يحتاج POST أو User-Agent محدد)
- `https://snoanime.com/api/new/server.php` — يرجع "test" (placeholder/test endpoint)
- `https://snoanime.com/ios.php?id=` — صفحة انتظار تحميل iOS
- `https://predictivadvertising.com/a/display.php?r=6279822` — إعلانات خارجية
- `https://tawk.to/chat/...` — دعم العملاء (Tawk.to)

## المكتبات في APK
- **Firebase Analytics** (analytics + crashlytics)
- **OneSignal** (push notifications)
- **Huawei HMS** (HuaweiApiAvailability)
- **OkHttp3** (HTTP client)
- **Room** (SQLite ORM محلي للتخزين المؤقت)
- **ExoPlayer** (تشغيل الفيديو)
- **BeanShell** (محرك scripts داخل التطبيق!)
- **Amazon IAP** (مشتريات داخل التطبيق)
- **Crypto-JS** (في الويب)
- **Lottie** (animations)

## قاعدة البيانات
**لا توجد قاعدة بيانات محلية مضمنة في APK.**
- التخزين المحلي عبر Room (SQLite) للـ cache فقط
- البيانات على السيرفر `app.sanime.net` (PHP + MySQL مرجح)
- أعلى ID رُصد: **11979** → قاعدة البيانات تحتوي **~12,000 أنمي على الأقل**
- الصور محجوبة في `/api/anime/` (403) لكن image.jpg مباشر يعمل
- `config.php` موجود لكن استجابته فارغة بدون credentials

## مخطط الـ DB (مُستنتج)
```
animes: id, name, image, epName/year, date
episodes: id, anime_id, name, number, date
users: id, email, username, userimage, admin
favorites: user_id, anime_id, title, image
posts: id, userAddress(encrypted), userId, username, useragent, admin, content
comments: id, anime_id, user_id, content (soft-delete: "Post Deleted")
```

## الوصول والقيود
- **h10.php**: مفتوح للجميع بدون auth (إلا عمليات الكتابة)
- **config.php**: 200 لكن فارغ (يحتاج headers معينة أو POST)
- **server.php**: "test" دائماً (placeholder)
- **api/anime/{id}/**: 403 للمجلد، لكن image.jpg يعمل
- **api/ directory**: 403 listing
- **User auth**: session-based عبر h10.php?page=login
- **User address**: مشفر (رُصد `OSNotificationDataController` و XOR/AES)

## تقييم قاعدة البيانات
- **الحجم التقديري**: ~12,000+ أنمي (ID يصل 11979)
- **المصدر**: PHP + MySQL على خادم `app.sanime.net` (185.182.193.132)
- **بيانات عربية**: أسماء الحلقات بالعربي ✅
- **التخزين المحلي (APK)**: Room DB للـ cache فقط، صغيرة جداً
- **لا يوجد DB مضمن في APK** — كل البيانات من السيرفر عبر h10.php

## ملاحظات إضافية
- التطبيق يحمّل JS bundle من السيرفر لتحديث بدون تحديث APK
- BeanShell محرك scripts مدمج — غير معتاد، يمكن تنفيذ كود Java في runtime
- `date` page يجلب من animerco.org (خارجي) — يعني يعتمدون على مصادر خارجية للجداول
- منشورات المجتمع تُشفر userAddress (XOR أو AES محتمل)
- نظام التفاعل (react) على الأنمي موجود
