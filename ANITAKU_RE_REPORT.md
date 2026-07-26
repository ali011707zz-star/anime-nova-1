# تقرير الهندسة العكسية — AniTaku 0.1 APK

**تاريخ التحليل:** 26 يوليو 2026  
**الـ APK:** AniTaku_0.1.apk (EasyPlex base, by Y0bEX)  
**حجم APK:** 90 MB (7 DEX files)

---

## 1. البنية الأساسية

| العنصر | القيمة |
|--------|--------|
| Package name | `com.anitaku` |
| Base framework | EasyPlex (CodeCanyon) |
| Network layer | Retrofit2 + OkHttp |
| String obfuscation | StringCare V3 (JNI native) |
| Auth | JWT Bearer (RS256) via Laravel Passport |
| Local DB | Room (`easyplex.db`) — movies, series, stream, anime tables |
| Backend CMS | EasyPlex admin panel (Laravel) |

---

## 2. نقاط الـ API

### Base URL
```
https://anitakuapp.hasalaty.com/public/api/
```
> ⚠️ الـ domain القديم `api.yobdev.live` **مات تماماً** (DNS لا يحل)  
> الـ fallback في APK: `https://easyplex.yobdev.live/p2lbgWkFrykA/` (أيضاً مات)

### لوحة الإدارة
```
https://anitakuapp.hasalaty.com/public/login
```
تعيد redirect لـ `/public/login` — اعتمادات افتراضية فاشلة (admin@admin.com/password, admin, 123456...)

---

## 3. الـ Endpoints الكاملة (Retrofit annotations)

### Public (بدون auth)
```
GET  /api/installs/store              → {"id":1,"installs":239745,...}
POST /api/register                    → JWT Bearer token ✅ يعمل
POST /api/login                       → JWT (يحتاج field "username" مش "email")
POST /api/user/reset-password/sendEmail → إعادة تعيين كلمة مرور
```

### Protected — كل هذه تحتاج `{code}` في الـ path
```
GET  settings/{code}
GET  movies/latestadded/{code}?page=N
GET  movies/byrating/{code}
GET  movies/byviews/{code}
GET  movies/byyear/{code}
GET  movies/resume/show/{id}/{code}
GET  series/latestadded/{code}
GET  series/show/{tmdb}/{code}
GET  series/season/{seasons_id}/{code}
GET  series/episode/{episode_imdb}/{code}
GET  series/episodeshow/{episode_tmdb}/{code}
GET  animes/show/{id}/{code}
GET  animes/season/{seasons_id}/{code}
GET  animes/seasons/{seasons_id}/{code}
GET  animes/episode/{episode_imdb}/{code}
GET  animes/episodeshow/{episode_tmdb}/{code}
GET  animes/latestadded/{code}
GET  animes/byrating/{code}
GET  animes/byyear/{code}
GET  animes/byviews/{code}
GET  animes/relateds/{id}/{code}
GET  animes/substitle/{episode_imdb}/{code}
GET  stream/show/{id}/{code}            ← مصدر البث الرئيسي
GET  media/mobile/{code}
GET  media/suggestedcontent/{code}
GET  media/detail/{tmdb}/{code}
GET  media/{type}/{code}
GET  media/relateds/{id}/{code}
GET  media/randomMovie/{code}
GET  genres/list/{code}
GET  genres/movies/all/{code}
GET  genres/series/all/{code}
GET  genres/animes/all/{code}
GET  genres/media/show/{id}/{code}
GET  categories/list/{code}
GET  networks/lists/{code}
GET  cast/detail/{id}/{code}
GET  plans/plans/{code}
GET  ads
GET  account/isSubscribed
```

### بحث (بدون {code} — الأهم للتكامل!)
```
GET  search/imdbid-{imdb}                              ← لا يحتاج code!
GET  search/{id}/{code}
GET  search/episode-{ep}/imdbid-{imdb}/season-{season}
```

### POST endpoints
```
POST /api/register              → {name, email, password}          → JWT
POST /api/login                 → {username, password}             → JWT
POST /api/user/password/update  → {old_password, new_password}
POST installs/store             → {serial_number, model, name}
```

---

## 4. الـ Bearer Token الذي حصلنا عليه (صالح سنة)

```
eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyIiwianRpIjoiNzg1MDU3NTBiMGQ0OGUyNzQxOWQzNmQxM2Q5YTAxMzRjN2ZlMTE4ZWVlNzY2YzE4NTYzMjA2ZDJhM2QyYjA5ZTYxYmE1NDQ2ZjcyN2NkZTkiLCJpYXQiOjE3ODUwNjE2MzAuMTA0ODk1...
```
- **User ID:** 124642  
- **Expires:** 2027 (31,536,000 ثانية)  
- **Algorithm:** RS256  
- **Scopes:** [] (عادي، مش admin)

> للحصول على token جديد:
> ```bash
> curl -X POST https://anitakuapp.hasalaty.com/public/api/register \
>   -F "name=TestUser" -F "email=anyemail@test.com" -F "password=Test123456"
> ```

---

## 5. العقبة الحقيقية: قيمة `{code}`

### ما هو الـ `{code}`؟
- مخزون في SharedPreferences تحت مفتاح `"cuepoint"`
- يُحدَّد من **لوحة الإدارة** من قِبَل مالك السيرفر
- مُشفَّر في APK بـ **StringCare V3** (JNI)

### مسار التشفير في ob/b.java:
```java
// f61994a = الـ {code} مشفّر بـ StringCare V3
f61994a = SC.a("97d27022-37e7-4ac3-81f4-133301523fe9");

// البرنامج يقرأه من SharedPrefs:
getString("cuepoint", SC.b(ob.b.f61994a))
```

### خوارزمية StringCare V3 (ng/b.java — مكتشفة كاملاً):
```
مفتاح AES = SHA1( cert_sha1_as_hex_with_colons.UTF8 )[:16_bytes]
التشفير = AES-128-ECB/PKCS5
```
- شهادة الـ APK الأصلي: `CN=Zak Alter`, SHA1=`2E:3D:DF:B5:28:3C:95:55:72:6C:63:03:FC:23:56:45:32:F2:11:02`
- **مشكلة:** الـ V3 يستخدم JNI (native C lib) مش Java — لا يمكن فك التشفير بدون تشغيل APK

---

## 6. قيم أخرى مكتشفة (plain base64)

```
https://api.themoviedb.org/3/         ← TMDB
https://rest.opensubtitles.org/       ← OpenSubtitles
http://hxfile.co/api/file/            ← HxFile CDN
```

### StringCare-encrypted (تحتاج تشغيل APK):
| المتغير | القيمة المشفرة | الاستخدام |
|---------|---------------|----------|
| f61994a | `97d27022-37e7-4ac3-81f4-133301523fe9` | **{code} الـ API** |
| f61996c | `UECatLeZvbJKK...` | license key |
| f62000g | `Z3JlZW5m...` (base64 form) | Bearer token المدمج في APK |

---

## 7. مسار البث (stream/show)

```
GET /api/stream/show/{content_id}/{code}
Authorization: Bearer {jwt_token}
```

الـ response يحتوي على:
- `sources[]` — قائمة مصادر الفيديو
- رابط مباشر أو embed

---

## 8. ملفات APK على VPS (root@95.182.93.105)

```
/tmp/AniTaku-orig.apk              ← re-signed بـ debug cert
/tmp/AniTaku-patched.apk           ← SSL pinning مُزال
/tmp/nodetect/AniTaku-nodetect.apk ← مُحسَّن للـ MITM
/tmp/frida_patch/AniTaku-orig.apk  ← نسخة Frida
```

---

## 9. الحلول الذكية لاستخراج `{code}` (بدون GitHub)

### الحل 1 — Smali Injection ⭐⭐⭐ ← **الأفضل عملياً**
```bash
# على VPS — APK مفكوك بالفعل في /tmp/anitaku_smali/
# تعديل ob/b.smali: إضافة Log.d("CODE", result) بعد SC.a() في السطر 95
apktool b /tmp/anitaku_smali -o AniTaku_logged.apk
zipalign -v 4 AniTaku_logged.apk AniTaku_aligned.apk
apksigner sign --ks debug.keystore AniTaku_aligned.apk
# تشغيل على هاتف حقيقي + logcat | grep CODE
# أو: adb shell run-as com.anitaku cat /data/data/com.anitaku/shared_prefs/Preferences.xml
```
> ✅ apktool مثبت على VPS، الـ smali مفكوك في `/tmp/anitaku_smali`

### الحل 2 — Native Lib Analysis ⭐⭐ ← **جُرِّب — نتائج جزئية**
```bash
# الـ .so مستخرج في /tmp/anitaku_re/lib/x86_64/libsc-native-lib.so
# دوال مكتشفة:
#   Java_com_stringcare_library_SC_jniRevealV3  ← دالة فك التشفير الرئيسية
#   _Z16valueDeobfuscate(int, string, string)   ← دالة C++ مباشرة بلا JNI
#   _Z4sign(string)                             ← تحسب الـ cert fingerprint
#   string_to_hex, hex_to_string               ← أدوات تحويل
# المشكلة: liblog.so + libm.so الأندرويدية تمنع التشغيل على Linux
```

### الحل 3 — Android Emulator على VPS ⭐⭐⭐
```bash
# الحاجة: KVM أو Docker — غير متاحَين على VPS الحالي (95.182.93.105)
# kernel 6.8.0-35-generic، /dev/binder غير موجود
# البديل: خادم بـ KVM أو استخدام Redroid (يحتاج Docker)
# ADB: adb shell run-as com.anitaku cat /data/data/com.anitaku/shared_prefs/Preferences.xml
```

### الحل 4 — Bypass StringCare بالـ cert ⭐⭐ ← **جُرِّب — محجوب**
```python
# الخوارزمية موثقة كاملاً:
# AES key = SHA1(cert_sha1_hex_with_colons.encode("utf-8"))[:16]
# ciphertext = "97d27022-37e7-4ac3-81f4-133301523fe9".encode("utf-8")  # 36 bytes
# AES-128-ECB decrypt
# المشكلة: كل APKs على VPS معادة التوقيع بـ debug cert — الشهادة الأصلية (CN=Zak Alter) غير متوفرة
```

---

## 9.5 نتائج التحقيق التفصيلي (2026-07-26)

### الـ Smali المفككة — ما اكتُشف في ob/b.smali
| المتغير | القيمة المشفرة | نوع التشفير | النتيجة |
|---------|---------------|-------------|---------|
| ob.b.a | `97d27022-37e7-4ac3-81f4-133301523fe9` | V3 (AES+cert) | {code} — يحتاج cert أصلي |
| ob.b.b | `455448095512-rcsrmjjm54rpj0vtnrqorsm0oul23qos.apps.googleusercontent.com` | V0 (plain) | Google Client ID |
| ob.b.c | `UECatLeZvbJKKgjRMwTP...` | V2 (non-base64) | License Key |
| ob.b.d | `Z3JlZW5mdWJ1a2l0YXRzdW1ha2lzYWl0YW1heWVsbG93Z2Vub3NvcG10aGlyZHNlYW9zb24=` | V1 (base64) | **= "greenfubukitatsumakisaitamayellowgenosopmthirdseaoson"** |
| ob.b.e | API base URL encoded | plain | cuepointUrl default |

### آلية قراءة {code} في u8/r.smali
```java
// الكود الفعلي المكتشف:
SharedPreferences prefs = context.getSharedPreferences(...);
String code = prefs.getString("cuepoint", SC.b(ob.b.a));
// إذا لم يُحدد الـ admin قيمة في SharedPrefs → يُستخدم SC.b(ob.b.a) كقيمة افتراضية
```

### خوارزمية StringCare V3 (مؤكدة من ng/b.smali)
```java
// ng/b.b(Context) → String certFingerprint:
X509Certificate cert = CertificateFactory.getInstance("X509")
    .generateCertificate(new ByteArrayInputStream(pm.getPackageInfo(pkg, 0x40).signatures[0].toByteArray()));
byte[] sha1 = MessageDigest.getInstance("SHA-1").digest(cert.getEncoded());
String fingerprint = sha1Bytes.joinToString(":") { byte -> String.format("%02X", byte & 0xFF) }
// → "2E:3D:DF:B5:28:3C:95:55:72:6C:63:03:FC:23:56:45:32:F2:11:02"

// ng/b.a(String fingerprint) → SecretKeySpec:
byte[] key = Arrays.copyOf(SHA1(fingerprint.getBytes("UTF-8")), 16);
return new SecretKeySpec(key, "AES");

// Java_com_stringcare_library_SC_jniRevealV3(Context, certFingerprint, inputBytes):
//   AES-128-ECB decrypt of inputBytes using key derived above
```

---

## 10. ملخص للتكامل في NOVA

**ما يعمل الآن:**
- ✅ API Base URL: `https://anitakuapp.hasalaty.com/public/api/`
- ✅ JWT Token (register مفتوح للجميع، صلاحية سنة)
- ✅ `search/imdbid-{imdb}` لا يحتاج {code} ← **يمكن استخدامه فوراً**
- ✅ 70+ endpoint مرسومة كاملاً
- ✅ مسار البث: `stream/show/{id}/{code}`
- ✅ Google Client ID: `455448095512-rcsrmjjm54rpj0vtnrqorsm0oul23qos.apps.googleusercontent.com`

**المتبقي:**
- ❌ قيمة `{code}` — تحتاج **هاتف Android حقيقي** أو **خادم بـ KVM**

**الخطوة الأسرع للحصول على {code}:**
```bash
# على هاتف Android مع USB debugging:
adb install /tmp/nodetect/AniTaku-nodetect.apk
adb shell run-as com.anitaku cat \
  /data/data/com.anitaku/shared_prefs/Preferences.xml 2>/dev/null | grep cuepoint
# أو بعد تشغيل التطبيق:
adb logcat | grep -E "CODE|cuepoint"
```

**بمجرد الحصول على {code}:**
```javascript
// في anime.ts أو animation.ts:
const BASE = "https://anitakuapp.hasalaty.com/public/api";
const CODE = "<the_extracted_code>";
const JWT = await fetch(`${BASE}/register`, {
  method: "POST",
  body: new FormData(/* name, email, password */)
}).then(r => r.json()).then(d => d.access_token);

// جلب مصادر أنيمي:
const res = await fetch(`${BASE}/animes/show/${tmdb_id}/${CODE}`, {
  headers: { Authorization: `Bearer ${JWT}` }
});

// جلب بيانات بحث (يعمل بدون code):
const search = await fetch(`${BASE}/search/imdbid-${imdb_id}`, {
  headers: { Authorization: `Bearer ${JWT}` }
});
```
