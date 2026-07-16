---
name: Web vs Mobile source sync
description: نتائج مقارنة مصادر تطبيق الويب ونوفا موبايل + الإصلاحات الجذرية المطبّقة
---

# Web vs Mobile Source Sync

## لماذا يعرض نوفا موبايل مصادر أكثر؟
VPS (95.182.93.105) له سمعة IP أفضل من Replit — مصادر مثل ristoanime وvideasy_anim وanimeify تعمل على VPS لكنها محجوبة على Replit. تطبيق الويب عند نشره على VPS يساوي الموبايل.

**اختبار Demon Slayer ep1:**
- Replit (ويب): 6 مواقع ناجحة، 14 مصدر
- VPS (موبايل): 9+ مواقع ناجحة، 22+ مصدر

## الإصلاحات المطبّقة

### موبايل (nova-mobile/app/watch.tsx)
- أُضيف `animepahe` و`dulo_anim` إلى ANIME_SITES
- أُضيف `animepahe: "AP"` و`dulo_anim: "DL"` إلى SITE_TAG
- **إصلاح vidmoly**: كانت مصادر vidmoly تُفقد تماماً (isEmbedSrc ترفضها والdirectPlayable ترفضها) — الآن تُعرض كـ embed في WebView
- **إصلاح mp4upload**: مُصفّى على الموبايل (HEVC codec، لا يعمل على ExoPlayer)

### تطبيق الويب (anime-scraper/src/pages/Watch.tsx)
- حُذفت المصادر الميتة من SCRAPER_DEFS: seepanel, witanime_db, animex, reanime, starcima_anim, lordflix_anim
- أُضيف `dulo_anim` إلى SCRAPER_DEFS
- حُدّث PROVIDER_WANTS_SMART_SUB: حُذف reanime+starcima_anim، أُضيف dulo_anim

### VPS النشر
- نُشر API server dist (index.mjs) الجديد على VPS
- نُشر web frontend dist الجديد على VPS
- أُعيد تشغيل PM2 (anime-nova-api)

## مصادر نشطة في API server لكن لم تكن في frontend
- `animepahe` — تحتاج AniList ID، Miruro Kiwi API
- `dulo_anim` — dulo.tv، HLS مباشر، تحتاج session cookie

**Why:** IP reputation يختلف جذرياً بين Replit وVPS. لا يمكن حل هذا برمجياً بالكامل — الحل هو استخدام ScraperAPI أو CF proxy للمصادر المحجوبة.

**How to apply:** عند إضافة مصدر جديد، أضفه للـ API server switch + كلا قائمتي SCRAPER_DEFS (ويب) وANIME_SITES (موبايل) في نفس الوقت.
