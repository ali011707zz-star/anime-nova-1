# Nova 2 Android

هذا مشروع Android Native مستقل مبني وفق خطة Nova 2 في ملف
`attached_assets/Nova_2_Replit_Prompt_1788089982887.pdf`.

## حدود هذه المرحلة

- هذا المسار مستقل عن Nova 1 وعن `artifacts/nova-mobile`.
- لم يتم نقل أو حذف أو تعديل أي ملف من Nova 1.
- تم تجهيز أساس Kotlin + Jetpack Compose + Compose for TV + Media3.
- طبقة الشبكة تستخدم عقود Nova الحقيقية المعروفة من `NOVA1_ANALYSIS.md`.
- bootstrap يقرأ config الحقيقي، ويستعيد `/api/auth/me` عند وجود user token.
- تسجيل الدخول، إرسال رمز التسجيل، إنشاء الحساب، وتسجيل الخروج مرتبطة بعقود الخادم الحقيقية.
- مسار التصفح الأساسي أصبح متاحًا: Home، Search، Browse، Details، وقائمة Episodes.
- لا توجد بيانات وهمية أو روابط فيديو تجريبية.
- تم تنفيذ شاشة المشاهدة مع Media3 لـ HLS وMP4، واختيار المصدر،
  والترجمات العربية/الإنجليزية من عقود الخادم الحقيقية.
- تم تنفيذ مكتبة محلية على الجهاز تشمل المفضلة وسجل المشاهدة مع حفظ التقدم.
- تم تنفيذ تنزيل روابط MP4 المباشرة عبر Android DownloadManager مع شاشة متابعة
  التنزيلات. روابط HLS لا تُنزّل لأن تنزيلها يحتاج عقد offline مخصصًا ومرخّصًا
  من الخادم.
- تمت إضافة شاشة إعدادات لمسح بيانات المكتبة وتسجيل الخروج.
- لا يُبنى المشروع أو يُشغّل داخل Replit؛ البناء المستهدف هو GitHub CI/VPS وأجهزة Android الفعلية.

## هوية البناء

الهوية الافتراضية في `app/build.gradle.kts` هي هوية تطوير مستقلة:

- Application ID: `com.nova.anime.nova2`
- Client ID: `nova2-android`
- Version: `0.1.0`

بوابة الإصدار في الخادم تحتاج اعتماد هوية Nova 2 لاحقًا. لا ينبغي ادعاء هوية
Nova 1 أو تجاوز بوابة الإصدار من داخل هذا المشروع.

## ما تم تأسيسه

```text
app/src/main/java/com/nova/anime/nova2/
├── MainActivity.kt
├── core/catalog/
├── core/config/
├── core/download/
├── core/library/
├── core/model/
├── core/network/
├── core/playback/
├── core/session/
├── core/storage/
└── ui/
```

## ما بقي خارج بيئة Replit

هذه ليست فجوات يمكن حلها بأمان من داخل الكود المحلي:

1. بناء APK والتحقق منه على GitHub CI.
2. تثبيت نسخة تجريبية على جهاز Android وهاتف/جهاز TV فعلي.
3. نشر نسخة الخادم التي تحتوي allowlist هوية
   `com.nova.anime.nova2` و`nova2-android` في release gate على الـVPS.
4. تأكيد استجابات API الإنتاجية بعد أي schema drift.
5. تحديد عقد تنزيل HLS وPlay Integrity النهائيين قبل دعم تنزيل HLS أو
   المصادقة القوية على الإصدار النهائي.

لا ينبغي تغيير هوية التطبيق أو التحايل على release gate من داخل العميل.