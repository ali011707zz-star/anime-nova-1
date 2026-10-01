# Anime NOVA

مستودع منصة Anime NOVA. هذا الملف يوضح مكان كل تطبيق وحالة مشاريع Android والوثائق.

## التطبيقات والخدمات الحالية

| المسار | الدور والحالة |
|---|---|
| `artifacts/api-server` | API والخدمات الخلفية؛ التشغيل الفعلي على VPS |
| `artifacts/anime-scraper` | واجهة الويب |
| `artifacts/nova-mobile` | تطبيق Expo للموبايل |
| `nova2-android` | عميل Kotlin/Compose مستقل، وله GitHub Actions في `.github/workflows/build-nova2.yml` |
| `nova-tv-v3` | نموذج نقل Kotlin للموبايل والتابلت والتلفاز؛ ما زال غير مكتمل |

`nova-tv-v3` ليس بديلاً مكتملاً لتطبيق Expo، كما أن workflow البناء الذي كان README القديم يشير إليه غير موجود حالياً.

## الأرشيف

| المسار | المحتوى |
|---|---|
| `archive/android-tv/nova-tv` | مصدر نموذج TV الأول |
| `archive/android-tv/nova-tv-v2` | مصدر نموذج TV الثاني، مع واجهة للهاتف أيضاً |

نُقلت النسختان إلى الأرشيف دون حذف ملفاتهما. لا توجد لهما workflows بناء في المستودع الحالي.

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