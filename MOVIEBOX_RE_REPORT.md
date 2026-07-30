# MovieBox (com.community.oneroom) — تقرير الهندسة العكسية

**تاريخ التحليل**: 2026-07-30  
**الإصدار المحلل**: 3.0.06.0804.03  
**APK المصدر**: `https://h5-static.aoneroom.com/oneroomProject/apk/com.community.oneroom-web-release-channel.apk`  
**الأدوات**: apktool 2.11.1 + jadx 1.5.0  

---

## 1. معلومات التطبيق

| الحقل | القيمة |
|-------|--------|
| Package Name | `com.community.oneroom` |
| الشركة | Transsion (OneRoom Platform) |
| Min Android | 9.0 (API 28) |
| اللغات | العربية، الإنجليزية، + 10 لغات |
| الميزة الرئيسية | بث أفلام + مسلسلات + أنيمي + موسيقى |

---

## 2. بنية الـ API

### 2.1 الخوادم الرئيسية

```
Production (default): https://api6.aoneroom.com
Fallbacks:           https://api5.aoneroom.com
                     https://api4.aoneroom.com
                     https://api4sg.aoneroom.com
                     https://api3.aoneroom.com
                     https://api6sg.aoneroom.com
                     https://api.inmoviebox.com

Test:                https://test-mse-api.aoneroom.com
                     IP: 8.219.92.106

CDN (صور):          https://pacdn.aoneroom.com
H5 (واجهة ويب):    https://h5.aoneroom.com
Static:              https://h5-static.aoneroom.com
```

### 2.2 بادئة المسارات

جميع الـ endpoints تبدأ بـ:
```
/wefeed-mobile-bff/
```

### 2.3 بروتوكول الشبكة

- HTTP/3 (QUIC) مع fallback لـ HTTPS
- مكتبة Cronet للـ DNS caching
- `DynamicHostInterceptor` يستبدل الـ host ديناميكياً من `ip_list` المحفوظة

---

## 3. نظام التوثيق (Authentication)

### 3.1 نوع التوقيع

```
Header: x-tr-signature
Method Header: x-tr-signature-method (HMAC algorithm name)
Extra Header: x-tr-meta-gaid (Google Advertising ID)
```

### 3.2 المفاتيح

```
gateway_secret_online = "76iRl07s0xSN9jqmEWAt79EBJZulIQIsV64FZr2O"  (Base64)
gateway_secret_test   = "Xqn2nnO41/L92o1iuXhSLHTbXvY4Z5ZZ62m8mSLA"  (Base64)
```

### 3.3 خوارزمية التوقيع (GatewaySignManager.doSign)

**signature = HMAC(secret_base64_decoded, signing_string)**

```
signing_string = METHOD.toUpperCase()
               + "\n" + accept_header_or_empty
               + "\n" + content_type_or_empty
               + "\n" + content_length_or_0
               + "\n" + timestamp_ms
               + "\n" + body_md5_or_empty
               + "\n" + canonical_headers_sorted
```

**الدالة التطبيقية (Node.js)**:

```typescript
import { createHmac } from 'crypto';

function signRequest(
  method: string,
  url: string,
  body: string = '',
  accept: string = '',
  contentType: string = '',
  secret: string = '76iRl07s0xSN9jqmEWAt79EBJZulIQIsV64FZr2O'
): string {
  const secretBytes = Buffer.from(secret, 'base64');
  const timestamp = Date.now().toString();
  
  const bodyMd5 = body.length > 0 
    ? createHash('md5').update(body, 'utf8').digest('hex')
    : '';
  const contentLength = body.length > 0 ? body.length.toString() : '0';
  
  // Extract path from URL (after host, including query)
  const urlObj = new URL(url);
  const formatedUrl = urlObj.pathname + (urlObj.search || '');
  
  const signingString = [
    method.toUpperCase(),
    accept,
    contentType,
    contentLength,
    timestamp,
    bodyMd5,
    formatedUrl
  ].join('\n');
  
  const signature = createHmac('HmacSHA256', secretBytes)
    .update(signingString, 'utf8')
    .digest('base64');
  
  return signature;
}
```

### 3.4 ملاحظة مهمة

- الخطأ `407 {"code":407,"reason":"Unauthorized","message":"Signature invalid"}` يظهر حتى بدون توقيع
- الخطأ `GW.4410` = توقيع خاطئ (time mismatch) → يتطلب مزامنة timestamp مع الخادم
- الـ gateway فعلياً على: `https://apigateway.tmctool.com` (online mode)

---

## 4. رأس المعلومات (X-Client-Info Header)

```json
{
  "package_name": "com.community.oneroom",
  "version_name": "3.0.06.0804.03",
  "version_code": 50020088,
  "os": "android",
  "os_version": "12",
  "device_id": "<android_device_id>",
  "install_store": "gp",
  "brand": "Samsung",
  "model": "SM-G991B",
  "system_language": "en",
  "net": "wifi",
  "region": "US",
  "timezone": "America/New_York",
  "sp_code": ""
}
```

---

## 5. الـ Endpoints الرئيسية

### 5.1 المحتوى (Subject API)

| Method | Path | الوصف |
|--------|------|-------|
| GET | `/wefeed-mobile-bff/subject-api/get` | تفاصيل محتوى (film/series) |
| GET | `/wefeed-mobile-bff/subject-api/play-info` | رابط تشغيل الفيديو ⭐ |
| GET | `/wefeed-mobile-bff/subject-api/season-info` | معلومات المواسم والحلقات |
| GET | `/wefeed-mobile-bff/subject-api/resource` | الموارد المتاحة لمحتوى |
| GET | `/wefeed-mobile-bff/subject-api/trending/v2` | المحتوى الرائج |
| GET | `/wefeed-mobile-bff/subject-api/top-rec` | توصيات الأعلى |
| POST | `/wefeed-mobile-bff/subject-api/search/v2` | بحث (JSON body) |
| GET | `/wefeed-mobile-bff/subject-api/search-suggest` | اقتراحات البحث |
| GET | `/wefeed-mobile-bff/subject-api/search-rank/v2` | ترتيب البحث الأكثر |
| GET | `/wefeed-mobile-bff/subject-api/filter-items` | فلاتر المحتوى |
| GET | `/wefeed-mobile-bff/subject-api/detail-rec` | محتوى مشابه |
| GET | `/wefeed-mobile-bff/subject-api/dub-info` | معلومات الدبلجة |
| GET | `/wefeed-mobile-bff/subject-api/get-ext-captions` | الترجمات الخارجية |
| GET | `/wefeed-mobile-bff/subject-api/subtitle-search` | البحث في الترجمات |

### 5.2 الصفحة الرئيسية (Home API)

| Method | Path | الوصف |
|--------|------|-------|
| GET | `/wefeed-mobile-bff/home/operatepage` | محتوى الصفحة الرئيسية |
| GET | `/wefeed-mobile-bff/home/playlist` | قائمة تشغيل |
| GET | `/wefeed-mobile-bff/home/category` | التصنيفات |
| GET | `/wefeed-mobile-bff/home/filter` | فلاتر |
| GET | `/wefeed-mobile-bff/tab/ranking-list` | قائمة الترتيب |
| GET | `/wefeed-mobile-bff/tab-operating` | عناصر التنقل |

### 5.3 المستخدم (User API)

| Method | Path | الوصف |
|--------|------|-------|
| POST | `/wefeed-mobile-bff/user-api/login` | تسجيل دخول |
| POST | `/wefeed-mobile-bff/user-api/register` | تسجيل حساب |
| POST | `/wefeed-mobile-bff/user-api/third-login` | دخول بـ Google/Facebook |
| GET | `/wefeed-mobile-bff/user-api/info` | معلومات الحساب |
| GET | `/wefeed-mobile-bff/user-api/profile` | الملف الشخصي |
| POST | `/wefeed-mobile-bff/user-api/logout` | تسجيل خروج |
| POST | `/wefeed-mobile-bff/user-api/get-sms-code` | كود SMS |

### 5.4 التطبيق (App API)

| Method | Path | الوصف |
|--------|------|-------|
| GET | `/wefeed-mobile-bff/app/config` | إعدادات التطبيق |
| GET | `/wefeed-mobile-bff/app/js-config` | إعدادات JS |
| GET | `/wefeed-mobile-bff/app/check-update` | تحديثات |
| GET | `/wefeed-mobile-bff/sniff/config` | إعدادات الـ sniffer |
| GET | `/wefeed-mobile-bff/ad/config` | إعدادات الإعلانات |

---

## 6. تفاصيل Endpoint الأهم: play-info ⭐

### 6.1 الطلب

```http
GET /wefeed-mobile-bff/subject-api/play-info
  ?subjectId={CONTENT_ID}
  &se={SEASON_NUMBER}
  &ep={EPISODE_NUMBER}
  &host=api6.aoneroom.com
Host: api6.aoneroom.com
x-tr-signature: {COMPUTED_SIGNATURE}
x-tr-signature-method: HmacSHA256
X-Client-Info: {JSON_DEVICE_INFO}
X-Client-Status: 0
```

### 6.2 هيكل الاستجابة (VideoDetailStreamList)

```json
{
  "code": 0,
  "data": {
    "title": "Movie Title",
    "se": 1,
    "ep": 1,
    "streams": [
      {
        "id": "stream_id",
        "format": "mp4",           // mp4, fmp4, hls
        "url": "https://cdn.../video.mp4",
        "resolutions": "1080",     // 360, 480, 720, 1080
        "size": "1024MB",
        "duration": "7200",
        "signCookie": "CloudFront-Policy=...",  // للـ CDN المحمي
        "extCaptions": [
          {
            "language": "ar",
            "url": "https://..."
          }
        ]
      }
    ]
  }
}
```

---

## 7. تفاصيل Endpoint: season-info

### 7.1 الطلب

```http
GET /wefeed-mobile-bff/subject-api/season-info
  ?subjectId={CONTENT_ID}
  &host=api6.aoneroom.com
```

### 7.2 هيكل الاستجابة (ResourcesSeasonList)

```json
{
  "code": 0,
  "data": {
    "seasons": [
      {
        "seasonNum": 1,
        "totalEpisode": 24,
        "episodes": [
          {
            "epNum": 1,
            "resolution": 1080,
            "resourceId": "res_id"
          }
        ],
        "resolutionItems": [
          { "resolution": 1080, "epNum": 24 }
        ]
      }
    ]
  }
}
```

---

## 8. تفاصيل Endpoint: search

### 8.1 الطلب

```http
POST /wefeed-mobile-bff/subject-api/search/v2
  ?host=api6.aoneroom.com
Content-Type: application/json

{
  "keyword": "avatar",
  "page": 1,
  "perPage": 20,
  "category": "MOVIE",
  "sortType": 0
}
```

### 8.2 فئات المحتوى (tabCode)

| الكود | الوصف |
|-------|-------|
| `Movie` | أفلام |
| `TVshow` | مسلسلات |
| `Animation` | أنيمي / رسوم متحركة |
| `Kids` | أطفال |
| `Education` | تعليمي |
| `ShortTV_Discover` | فيديوهات قصيرة |
| `Game` | ألعاب |

---

## 9. Deep Link Format

```
oneroom://com.community.oneroom?type=/movie/detail&id={SUBJECT_ID}
oneroom://com.community.oneroom?type=/playvideo/detail&id={SUBJECT_ID}&season=1&episode=1
oneroom://com.community.oneroom?type=/search/activity/search_manager&channel=os_search&type=3
```

---

## 10. VIP / الاشتراك

| المسار | الوصف |
|--------|-------|
| `GET /wefeed-mobile-bff/vip/member/detail` | تفاصيل الاشتراك |
| `GET /wefeed-mobile-bff/vip/member/rights-check` | التحقق من صلاحيات VIP |
| `GET /wefeed-mobile-bff/money/sku-list/get` | قائمة خطط الأسعار |
| `POST /wefeed-mobile-bff/money/gp-trading-order/create` | إنشاء طلب شراء Google Play |

**ملاحظة**: بعض المحتوى 4K مقيّد للـ VIP. المحتوى حتى 1080p متاح مجاناً.

---

## 11. CDN وحماية الفيديو

- الفيديوهات مخزنة على CloudFront (سياسة signCookie)
- بعض الفيديوهات تحتاج `signCookie` من الاستجابة للوصول
- الفيديوهات المجانية عادة بدون حماية DRM
- المحتوى VIP يستخدم Widevine DRM (ExoPlayer في التطبيق)

---

## 12. التطبيقات الشقيقة / المتعلقة

| التطبيق | Package | الوصف |
|---------|---------|-------|
| OneRoom | `com.community.oneroom` | النسخة الأندرويد الرئيسية |
| MovieBox (TV) | `com.community.mbox.tv` | نسخة التلفاز |
| MovieBox iOS | - | عبر moviebox.id |
| MovieBox PC | - | عبر moviebox.id |

---

## 13. خلاصة للـ Scraper

### للبدء السريع:

1. **لا يوجد login مطلوب** للمحتوى المجاني (تصفح + بحث + تشغيل حتى 1080p)
2. **التوقيع إلزامي** — استخدم خوارزمية HMAC مع المفتاح المذكور أعلاه
3. **الـ endpoint المهم**: `play-info?subjectId=X&se=1&ep=1&host=api6.aoneroom.com`
4. **التحقق من السيرفر**: جرب طلب بسيط أولاً لـ `/wefeed-mobile-bff/app/config`

### تجربة بدون توقيع:

بعض endpoints قد لا تتطلب توقيعاً صارماً في حالات معينة. يجب الاختبار على الـ VPS لأن الـ IP الجغرافي قد يؤثر.

### عناوين CDN للصور:

```
https://pacdn.aoneroom.com/image/...
```

---

## 14. ملاحظات إضافية

- `tpush_app_id = 8534b43bc794414987957009b5060377` (لـ push notifications)
- التطبيق يستخدم Firebase للإحصاءات والـ crash reporting
- الإعلانات: AppLovin، Mbridge، Pangle، Hisavana SDK
- اللغة العربية مدعومة بشكل كامل في الـ API
- Telegram للدعم: `https://t.me/moviebox_request`
- موقع آخر: `https://moviebox.ng` (نسخة نيجيريا/إفريقيا)
- الـ API يدعم QUIC (HTTP/3) للسرعة على api3-api6.aoneroom.com

---

*تقرير أُنجز عبر تحليل APK بـ apktool + jadx*
