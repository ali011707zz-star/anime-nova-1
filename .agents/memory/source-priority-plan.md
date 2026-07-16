---
name: Source Priority Plan — Anime & Animation
description: قرار المستخدم بجعل WitAnime المصدر الأساسي للأنمي وFaselHD للأنيميشن، مع نظام auto-select + background للباقين
---

## القرار المتخذ (2026-07-13)

### قسم الأنمي
- **المصدر الأساسي:** WitAnime (`witanime_db` في anime.ts)
- **المصادر الاحتياطية:** جميع المصادر الأخرى (~22 سكرابر)
- **النظام المختار:** auto-select + background
  - جميع السكرابرات تعمل بالتوازي كما هو الآن
  - WitAnime له "أولوية تشغيل تلقائي" — أول ما يرجع منه مصدر يُشغَّل مباشرة
  - الباقون يكملون في الخلفية كـ fallback قابلة للاختيار
  - لا تأخير على المستخدم

### قسم الأنيميشن
- **المصدر الأساسي:** FaselHD (`faselhd` في animation.ts، scrapeAnimCached)
- **المصادر الاحتياطية:** جميع المصادر الأخرى (~28+ سكرابر)
- **نفس نظام auto-select + background**

**Why:** المستخدم يريد تجربة مبسّطة — الفيديو يبدأ فوراً من أفضل مصدر عربي، والباقون احتياطيون.

---

## تجديد الكوكيز التلقائي (مُقرَّر للتنفيذ لاحقاً)

- **الفكرة:** `threading.Timer` في cf_proxy.py يجدد كوكيز كل domain مخزّن كل 40 دقيقة (قبل TTL=45m)
- **التكلفة:** ~8-10 MB RAM إضافية (thread واحد فقط)، لا تأثير على CPU
- **الفائدة:** أول مستخدم بعد انتهاء TTL لا يواجه بطء التجديد

---

## حالة المصادر الحالية (تحقق 2026-07-13)

**الأنمي — مصادر تعمل الآن:**
- AnimeDar ✅ (MEGA embed)
- AniKoto ✅ (HLS مباشر 720p، ياباني+إنجليزي)
- MovieBox ✅ (MP4 720p + 360p)
- Kawaii ✅ (MP4 1080p، عربي، مع skip intro)
- AniPm ✅ (HLS، مدبلج)
- Nekowatch ✅ (HLS، ياباني مترجم)
- AnimeWitcher ✅ (MP4 1080p، PixelDrain)
- WitAnime ✅ (يعمل — AJAX-loaded embeds تُحلّها WebView)

**الأنيميشن — FaselHD:**
- يجلب 1-3 سيرفرات لكل حلقة (عدد player_token iframes)
- سرعة: 3-6 ثوانٍ للظهور
- الجودة: 720p أو 1080p حسب السيرفر

---

## ملاحظات التنفيذ

- `sources-stream` في anime.ts → يحتاج إضافة `autoPlay: true` أو `priority: 1` لـ WitAnime
- `animation/sources-stream` في animation.ts → نفس الشيء لـ FaselHD (`scrapeAnimCached("faselhd", ...)`)
- WitAnime تحذير: يعيد embeds أحياناً (iframes) بدل روابط مباشرة — الـ fallback ضروري
- FaselHD: `player_token` مرتبط بـ session cookies — cf_proxy يوفّر الكوكيز عبر cookie_cache
