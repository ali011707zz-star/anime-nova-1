# Anime NOVA

مستودع منصة Anime NOVA. هذا الملف يوضح مكان كل تطبيق وحالة مشاريع Android والوثائق.

## التطبيقات والخدمات الحالية

| المسار | الدور والحالة |
|---|---|
| `artifacts/api-server` | API والخدمات الخلفية؛ التشغيل الفعلي على VPS |
| `artifacts/anime-scraper` | تطبيق واجهة الويب React/Vite؛ ليس خدمة scraper منفصلة |
| `artifacts/nova-mobile` | تطبيق Expo واحد للهاتف والتلفاز؛ وضع Android TV مدمج |
| `nova2-android` | عميل Kotlin/Compose مستقل، وله GitHub Actions في `.github/workflows/build-nova2.yml` |
| `nova-tv-v3` | نموذج Kotlin منفصل وغير مكتمل؛ ليس تطبيق التلفاز الحالي |

`artifacts/nova-mobile` هو تطبيق Nova الحالي للهاتف والتلفاز معًا؛ وضع TV جزء من تطبيق Expo نفسه. `nova-tv-v3` ليس بديلاً عنه. كما أن workflow البناء الذي كان README القديم يشير إليه غير موجود حالياً.

## الأرشيف

| المسار | المحتوى |
|---|---|
| `archive/android-tv/nova-tv` | مصدر نموذج TV الأول |
| `archive/android-tv/nova-tv-v2` | مصدر نموذج TV الثاني، مع واجهة للهاتف أيضاً |
| `archive/backups` | نسخ يدوية محفوظة من ملفات التطبيق وتهيئات Nginx |
| `archive/api-server/nested-old-copy` | نسخة API متداخلة قديمة؛ ليست مصدر البناء الحالي |
| `archive/api-server/dist_bak` | مخرجات بناء API احتياطية |
| `archive/api-server/source-snapshots` | لقطات مصدر API محفوظة |

كل المحتوى أعلاه محفوظ ولم يُحذف. يبني API الحالي من `artifacts/api-server/src/index.ts`؛ لا توجد لنماذج TV القديمة workflows بناء في المستودع الحالي.

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