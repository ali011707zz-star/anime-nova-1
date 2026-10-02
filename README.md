# Anime NOVA

مستودع منصة Anime NOVA. هذا الملف يوضح مكان كل تطبيق وحالة مشاريع Android والوثائق.

## التطبيقات والخدمات الحالية

| المسار | الدور والحالة |
|---|---|
| `artifacts/api-server` | API والخدمات الخلفية؛ التشغيل الفعلي على VPS |
| `artifacts/anime-scraper` | تطبيق واجهة الويب React/Vite؛ ليس خدمة scraper منفصلة |
| `artifacts/nova-mobile` | تطبيق Expo واحد للهاتف والتلفاز؛ وضع Android TV مدمج |
| `nova2-android` | عميل Kotlin/Compose مستقل، وله GitHub Actions في `.github/workflows/build-nova2.yml` |
| `archive/android-tv/nova-tv-v3` | نموذج Kotlin منفصل وغير مكتمل؛ ليس تطبيق التلفاز الحالي |

`artifacts/nova-mobile` هو تطبيق Nova الحالي للهاتف والتلفاز معًا؛ وضع TV جزء من تطبيق Expo نفسه. النموذج `archive/android-tv/nova-tv-v3` ليس بديلاً عنه، ولا يوجد له workflow بناء في المستودع الحالي.

## الأرشيف

| المسار | المحتوى |
|---|---|
| `archive/android-tv/nova-tv` | مصدر نموذج TV الأول |
| `archive/android-tv/nova-tv-v2` | مصدر نموذج TV الثاني، مع واجهة للهاتف أيضاً |
| `archive/android-tv/nova-tv-v3` | نموذج Kotlin غير مكتمل |
| `archive/prototypes/nova-mobile-2` | مشروع Android مرجعي مع استخراج JADX محفوظ |
| `archive/backups` | نسخ يدوية محفوظة من ملفات التطبيق وتهيئات Nginx |
| `archive/backups/scripts` و`archive/backups/cf-worker` | نسخ احتياطية غير مستخدمة من السكريبت والـWorker |
| `archive/legacy/server/db.ts` | ملف قاعدة بيانات قديم غير مستخدم |
| `archive/api-server/nested-old-copy` | نسخة API متداخلة قديمة؛ ليست مصدر البناء الحالي |
| `archive/api-server/dist_bak` | مخرجات بناء API احتياطية |
| `archive/api-server/source-snapshots` | لقطات مصدر API محفوظة |

كل المحتوى أعلاه محفوظ ولم يُحذف. يبني API الحالي من `artifacts/api-server/src/index.ts`؛ لا توجد لنماذج TV المؤرشفة workflows بناء في المستودع الحالي.

## الوثائق

- `docs/README.md` — فهرس الوثائق.
- `docs/deployment/` — ملاحظات نشر قديمة أو بديلة.
- `docs/project/` — خطط ومراجع المشروع.
- `docs/research/` — تقارير المصادر والتحليل.
- `threat_model.md` — نموذج التهديد.
- `replit.md` — قواعد العمل والبنية التفصيلية.

## بيئة العمل

المشروع يعمل على VPS؛ Replit للتحرير فقط. لا تشغّل التطبيق أو workflows محلياً.
راجع `replit.md` قبل تغيير إعدادات التشغيل أو النشر.