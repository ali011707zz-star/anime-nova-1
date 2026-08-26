# NOVA TV

تطبيق Android TV أصلي وخفيف لمنصة Anime NOVA، منفصل عن تطبيق `Anime Nova`
المبني بـ Expo.

## حدود المشروع

- الحزمة: `com.nova.anime.tv`
- الهوية التي يرسلها التطبيق للخادم: `nova-anime-tv-kotlin-v1`
- الخادم والـAPI مشتركان مع نسخة الموبايل.
- المشغل مبني على AndroidX Media3/ExoPlayer.
- لا توجد تبعيات Expo أو React Native أو خصائص الهاتف غير اللازمة.

## البناء

هذا المشروع يُبنى من GitHub Actions على فرع `nova-tv` فقط عبر:

`.github/workflows/build-nova-tv.yml`

ملف Workflow الموبايل `.github/workflows/build-apk.yml` لا يعمل على هذا
الفرع، ولا يتم استدعاؤه من Workflow التلفاز. الناتج يُرفع كـGitHub Artifact
باسم `Nova-TV-*`.

لا يُشغّل هذا المشروع أو يُبنى داخل Replit؛ Replit مستخدم لتعديل المصدر فقط.

## الوظائف الحالية

- كتالوج رئيسي بثلاثة صفوف.
- بحث بالريموت ولوحة المفاتيح الافتراضية.
- تفاصيل الأنمي والحلقات.
- فحص مصادر التشغيل عبر SSE.
- اختيار المصدر وتشغيل HLS/MP4 عبر Media3.
- ترجمة VTT/SRT عند إرسالها من الخادم.
- واجهة landscape مناسبة للتلفاز وD-pad focus واضح.

## ملاحظات الخادم

يجب أن تكون نسخة API المنشورة متضمنة لهوية TV الجديدة في
`artifacts/api-server/src/lib/security.ts` و`artifacts/api-server/src/app.ts`.
هذا لا يغيّر قواعد هوية تطبيق الموبايل.