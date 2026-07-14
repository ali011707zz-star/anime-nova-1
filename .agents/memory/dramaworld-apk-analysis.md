---
name: DramaWorld APK Analysis
description: تحليل شامل لتطبيق عالم الدراما DramaWorld V4.2a — API، قاعدة البيانات، والـ MITM setup
---

# DramaWorld APK — التحليل الكامل

## معلومات التطبيق
- **Package**: `com.alam.aldrama3`
- **Version**: V4.2a
- **APK size**: 18 MB
- **User-Agent**: `Aldrama3App/1.0`
- **APK source**: `https://cdn.jsdelivr.net/gh/adm4pro/temp@main/DramaWorld_V4.2a.apk`
- **APK على VPS**: `/opt/dw-capture/DramaWorld_V4.2a.apk`
- **TV version**: `DWPlayer_TV_V4.2.apk` (same package/structure)

## Firebase
- **Project**: `alamaldrama2022v2`
- **API Key**: `[REDACTED-Firebase-APIKey]`
- **App ID**: `1:462519862201:android:e2b2f8fc6e55730e846c68`
- الـ BASE_URL مخزّنة **مشفّرة بـ Base64** في Firebase Remote Config (templateVersion: 6)

## API — URLs الرئيسية
| المفتاح | القيمة (بعد فك Base64) |
|---------|----------------------|
| `API_URL` | `https://dr.arabypros.com/api/` (رئيسي — محمي بـ CF) |
| `API_URL2` | `https://app.arabypros.com/api/` (احتياطي — يعمل) |
| `Robust_small` | `cipher_key_https://test.arabypros.com/api/validate.php` |
| `trail_robust` | `cipher_key_https://alamdrama.com/v_check/validate.php` |

## API Key (في كل endpoint)
```
4F5A9C3D9A86FA54EACEDDD635185/d506abfd-9fe2-4b71-b979-feff21bcad13
```

## Endpoints الكاملة
```
المحتوى (الـ filtres محجوبة من servers — تعمل من الهاتف فقط):
GET /api/genre/all/{KEY}/                              ✅ يعمل (8 أنواع)
GET /api/years/all/{KEY}/                              ✅ يعمل (4 سنوات)
GET /api/movie/by/{id}/{KEY}/                          ✅ يعمل (IDs 1-3 مؤكدة)
GET /api/channel/by/{id}/{KEY}/                        ✅ يعمل (ID 2 = UTV العراقية)
GET /api/movie/by/filtres/{genre}/{order}/{page}/{KEY}/ ❌ محجوب (Cloudflare Bot Protection)
GET /api/serie/by/filtres/{genre}/{order}/{page}/{KEY}/ ❌ محجوب
GET /api/poster/by/filtres/{genre}/{order}/{page}/{KEY}/❌ محجوب
GET /api/channel/by/filtres/{cat}/{country}/{page}/{KEY}/❌ محجوب
GET /api/search/{query}/{page}/{KEY}/                  ❌ محجوب
GET /api/movie/source/by/{id}/{KEY}/
GET /api/serie/by/{id}/{KEY}/
GET /api/season/by/serie/{id}/{KEY}/
GET /api/episode/source/by/{id}/{KEY}/
GET /api/actor/all/{page}/{search}/{KEY}/
GET /api/version/check/{code}/{user}/{KEY}/            ✅ يعمل — يُرجع {"code":"202"} = يوجد إصدار أحدث
المستخدمون:
POST /api/user/login/{KEY}/
POST /api/user/register/{KEY}/
GET  /api/user/token/{KEY}/
POST /api/user/edit/{KEY}/
GET  /api/user/email/{email}/{KEY}/
GET  /api/user/reset/{id}/{key}/{new_password}/{KEY}/
GET  /api/user/password/{id}/{old}/{new}/{KEY}/
التفاعل:
GET  /api/mylist/{page}/{id}/{key}/{KEY}/
POST /api/add/mylist/{KEY}/
GET  /api/check/mylist/{KEY}/
POST /api/comment/poster/add/{KEY}/
POST /api/rate/poster/add/{KEY}/
POST /api/episode/add/view/{KEY}/
POST /api/movie/add/download/{KEY}/
النظام:
GET  /api/version/check/{code}/{user}/{KEY}/
POST /api/install/add/{id}/{KEY}/
POST /api/support/add/{KEY}/
```

## هيكل التطبيق الحقيقي (هجين)
- **arabypros.com API** → user features فقط (login, favorites, comments, ratings)
- **jsoup scraper** → المحتوى الفعلي (أفلام، مسلسلات، أنمي، انيميشن)
- **DW Player** (`com.dwplayer.app`) → مشغل الفيديو المنفصل

## Regex Scrapers في الـ APK
```
(?:hls|hls_ondemand)":"(.*?)"
'hls':'(.*?)'
"hls":{[^}]*?"url":"(https?:\/\/[^"]+)"
<iframe src="(.*?)"
<source src="(.*?)"
<a href="(.*?)"><button class="lastbtn"><span>Download
file:"(.*?)"
sources: ?\["(.*?)"]
```

## Certificate Pinning
التطبيق يحتوي على:
- **OkHttp CertificatePinner** + **HostnameVerifier** + **X509TrustManager** مخصصين
- `network_security_config.xml` يثق فقط بـ: `@raw/af`, `@raw/tk`, `@raw/uq` + system certs
- لا يثق بـ user-installed certificates (Android 7+ restriction)

## Admin Panel
- `https://dr.arabypros.com/admin/login` — Material Admin Dashboard (Symfony)
- `https://alamdrama.com/admin/login` — نفس النوع
- كلاهما محمي بـ Cloudflare

## قاعدة البيانات المحلية (Room DB)
| الجدول | الوصف |
|--------|-------|
| `posters` | cache لبيانات المحتوى |
| `resumes` | تقدم المشاهدة |
| `episodes` | بيانات الحلقات |
| `jsons` | cache عام |

## أنواع المحتوى (Genres)
1. مغامرة | 2. حركة | 3. رعب | 4. فانتازيا
5. حركة ومغامرة | 6. دراما | 7. جريمة | 8. إثارة

## نموذج response فيلم
```json
{
  "id": 1, "title": "مغامرات الفتاة ماريان", "type": "movie",
  "year": 2022, "duration": "1h 22min", "imdb": 4,
  "image": "https://image.tmdb.org/t/p/w500/...",
  "cover": "https://image.tmdb.org/t/p/w780/...",
  "genres": [{"id":1,"title":"مغامرة"}],
  "trailer": {"type":"embed","url":"https://youtube.com/..."},
  "sources": []
}
```

---

# MITM Setup — الوضع الحالي

## الإعداد على VPS (95.182.93.105)
- **mitmdump**: يعمل على port 8888 (PID متغير)
- **Cert HTTP server**: python3 http.server على port 9999
- **شهادة للتحميل**: `http://95.182.93.105:9999/mitmproxy-ca-cert.pem`
- **ملف traffic**: `/opt/dw-capture/traffic.mitm`
- **log**: `/opt/dw-capture/mitmdump.log`

## apk-mitm — الحالة (آخر تحديث)
**⏳ لا تزال تعمل على VPS في الخلفية**
- Process: `node /usr/bin/apk-mitm DramaWorld_V4.2a.apk`
- Log: `/opt/dw-capture/apkmitm_run.log`
- المرحلة الأخيرة: "Smaling smali folder into classes.dex..." (البناء يأخذ وقتاً طويلاً ~10-15 دقيقة)
- الـ APK المُرقّع سيظهر في: `/opt/dw-capture/DramaWorld_V4.2a-patched.apk`

## ما فعلته apk-mitm بنجاح (من اللوج)
- ✅ Replacing network security config → trust user + system certs
- ✅ okhttp3/CertificatePinner patch (OkHttp 3.x)
- ✅ com/a/a/GP: HostnameVerifier#verify patch
- ✅ com/a/a/HP$a: X509TrustManager patches (3 methods)
- ✅ com/a/a/DP, Ha0, jp, xm: HostnameVerifier patches
- ✅ okhttp3/internal/tls/OkHostnameVerifier patch
- ⏳ Encoding APK (بطيء بسبب smaling 4 DEX files)

## ✅ الحالة النهائية (2026-07-12)
- apk-mitm انتهت بنجاح (patched APK جاهز، 21MB) — تحذير عن Android App Bundle ظهر لكن التوقيع والمحاذاة نجحا.
- mitmdump يعمل على 8888، http.server يعمل على 9999 من `/root/.mitmproxy`.
- نسخنا `DramaWorld_V4.2a-patched.apk` إلى `/root/.mitmproxy/` ليصير متاحاً مع الشهادة من نفس السيرفر.
- روابط التحميل الجاهزة للمستخدم:
  - الشهادة: `http://95.182.93.105:9999/mitmproxy-ca-cert.pem`
  - الـ APK المُرقّع: `http://95.182.93.105:9999/DramaWorld_V4.2a-patched.apk`

## للمتابعة عند العودة
1. المستخدم يثبّت الشهادة (CA) على الهاتف ثم الـ APK المُرقّع.
2. يضبط Wi-Fi proxy على الهاتف → `95.182.93.105:8888`.
3. يتصفح داخل DramaWorld (فتح أفلام/مسلسلات، تسجيل دخول، بحث).
4. نسحب traffic من: `/opt/dw-capture/traffic.mitm` أو نتابع `mitmdump.log` مباشرة لرؤية endpoints جديدة (خصوصاً /api/movie/by/filtres و /api/search المحجوبة من السيرفرات).
5. إذا فشل التثبيت بسبب "App Bundle" (تحذير ظهر في اللوج) → نحتاج xapk/apks كامل من apkpure وإعادة apk-mitm عليه.

## 🎬 تشخيص "فشل إعادة المحاولة" عند تشغيل فيلم/حلقة (2026-07-12)
سحبنا traffic.mitm بعد أول محاولة تشغيل فيلم (poster id=30475) وحللناه بـ mitmproxy FlowReader:

- `GET /api/movie/source/by/{id}/{KEY}/` يرجع 200 مع قائمة مرايا (mirrors) بصيغة base64، كل واحدة `{id,title,type,url}`. مثال حقيقي: fasel-hd.cam (عبر dwapp.qzz.io proxy), morencius.com, luluvid.com, lalalala.store, playmogo.com, miixdrop.net, megatuktuk.store.
- **معظم المرايا فاشلة من VPS**:
  - `morencius.com` و`lalalala.store`: التطبيق يبني الرابط بشكل خاطئ (`/embed-v.html` أو `/embed-` بدون الـ id) → **404 دائماً**. يبدو أن التطبيق يفشل باستخراج fragment/id من رابط الـ API لهذين المضيفين تحديداً (مشكلة في منطق التطبيق نفسه، ليست بسبب MITM).
  - `playmogo.com`: **403 مباشر** — يبدو محجوب من VPS IP (نفس نمط الحجب المتكرر documented في الذاكرة لعدة CDNs أخرى).
  - `miixdrop.net`: يعمل لكنه يمرّر بسلسلة تحويلات إعلانية طويلة (miiiixdrop.net → applovin pixel 403 → mixdrop.ag) قبل الوصول للفيديو الحقيقي — لو الـ WebView الداخلي للتطبيق يحتاج تنفيذ JS/تفاعل إعلانات، قد تفشل هذه السلسلة أحياناً خصوصاً من IP مركز بيانات.
- **خلاصة**: الفشل ليس بسبب إعداد MITM أو الشهادة، بل لأن أغلب مرايا هذا الفيلم بالتحديد معطوبة (رابط خاطئ) أو محجوبة من IP الـ VPS. يحتاج تأكيد: هل يفشل التشغيل أيضاً بدون بروكسي (على IP الهاتف نفسه مباشرة)؟ إذا نجح بدون بروكسي → المشكلة 100% بسبب IP الـ VPS وليست خلل حقيقي في التطبيق.
- ⚠️ **ملاحظة أمان**: mitmdump مربوط على `0.0.0.0:8888` بدون أي مصادقة — لاحظنا حركة عشوائية من الإنترنت (Replit platform, Stripe, LaunchDarkly, Sentry...) تعبر البروكسي، أي إنه **بروكسي مفتوح للعالم**. يفضّل تقييده بـ firewall لـ IP الهاتف فقط أو إضافة auth، خصوصاً لأنه يُستخدم بشكل مؤقت للتحليل فقط.

## Keystore للتوقيع (موجود على VPS)
- الملف: `/opt/dw-capture/dw-signing.keystore`
- Password: `dramaworld123`
- Alias: `dw-key`
