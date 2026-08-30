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
- لا توجد بيانات وهمية أو روابط فيديو تجريبية.
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
├── core/config/
├── core/model/
├── core/network/
├── core/storage/
└── ui/
```

الخطوة التالية بعد مراجعة هذا الأساس هي إضافة contract fixtures منقحة ثم
طبقات الإقلاع/config/auth، وبعدها نقل الشاشات حسب ترتيب التقرير.