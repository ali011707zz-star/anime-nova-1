# Nova 2 API contract boundary

هذه القائمة مأخوذة من `NOVA1_ANALYSIS.md` وملفات عميل Nova Mobile. لا تضيف
هذه المرحلة endpoints جديدة ولا تفترض استجابة غير موجودة في Nova 1.

## عقود البداية

| الوظيفة | الطريقة والمسار |
|---|---|
| remote config | `GET /api/config` |
| anonymous token | `POST /api/auth/anon-token` |
| المستخدم الحالي | `GET /api/auth/me` |
| تسجيل الدخول | `POST /api/auth/signin` مع `email/password` |
| إرسال رمز التسجيل | `POST /api/auth/send-verify-code` مع `email/type=signup` |
| إنشاء الحساب | `POST /api/auth/signup` مع `email/password/displayName/verifyCode` |
| تسجيل الخروج | `POST /api/auth/signout` |
| مصدر واحد | `GET /api/anime/fetch-source` |
| مصادر الحلقة عبر SSE | `GET /api/anime/sources-stream` |
| metadata بالمعرف | `GET /api/anime/meta-by-id` |
| AniList proxy | `POST /api/anilist` أو `POST /api/anime/anilist` |
| عناوين الحلقات | `GET /api/anime/episode-titles` |
| ترجمة النص | `GET /api/anime/translate` |
| subtitles | `GET /api/anime/subtitle-tracks` |
| manifest HLS | `GET /api/anime/hls-proxy` |
| video proxy | `GET /api/anime/video-proxy` |
| segment proxy | `GET /api/anime/seg-proxy` |

## الرؤوس

يرسل العميل:

- `X-Nova-Client`
- `X-Nova-Version`
- `X-Nova-Package`
- `User-Agent`
- `X-App-Token` بعد الحصول على anonymous token
- `X-User-Token` عند تسجيل المستخدم

لا تسجل طبقة الشبكة قيم الرؤوس الحساسة أو التوكنات.

## حالات الخطأ

يجب التفريق بين network/timeout، HTTP status، parsing، empty response،
server unavailable، و`OFFICIAL_APP_REQUIRED`. لا تحوّل كل الأخطاء إلى رسالة
"لا توجد نتائج".

## ما لم يُحسم بعد

- الاستجابة الإنتاجية النهائية لكل endpoint بعد schema drift.
- اعتماد هوية حزمة Nova 2 في release gate.
- contract التفصيلي لصفحة Home ومصادر SSE في كل بيئة.
- سياسة الحساب والتنزيلات وPlay Integrity في الإصدار النهائي.