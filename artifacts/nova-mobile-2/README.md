# Nova Mobile 2

نسخة مستقلة من تطبيق `nova-mobile` الحالي، مهيأة باسم وحزمة Android مختلفين
حتى لا تتعارض مع النسخة السابقة. لم يتم تشغيل التطبيق أو تثبيت تبعياته في
بيئة Replit؛ مكان البناء والتشغيل المستهدف هو الـVPS/CI الخاص بالمشروع.

## ما تم تغييره

- اسم التطبيق: `Nova Mobile 2`
- slug: `nova-mobile-2`
- Android package: `com.nova.anime2`
- iOS bundle identifier: `com.nova.anime2`
- API: يدعم `EXPO_PUBLIC_API_URL` كأولوية، مع العنوان الإنتاجي الحالي
  `https://animenovaa.duckdns.org` كاحتياط
- معرّف عميل التطبيق: `nova-anime-mobile-2`
- الأيقونة: الأيقونة المستخرجة من APK المصدر

## استخراج APK

المجلد `extracted/anime-slayer-1.5.5/` يحتوي ناتج JADX للكود والموارد،
و`extracted/input/anime-slayer.apk` هو ملف الإدخال المستخدم. الناتج مفكك
تقريبياً وقد يحتوي أخطاء decompilation؛ ليس نسخة من المصدر الأصلي حرفياً.

الكود المفكك من APK Android أصلي، لذلك لا يُنسخ آلياً إلى ملفات Expo
TypeScript. يحتفظ به هنا كمرجع للمقارنة/إعادة التنفيذ، بينما كود Nova Mobile 2
القابل للتطوير موجود في ملفات التطبيق نفسها.