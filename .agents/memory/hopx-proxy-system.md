---
name: Hopx Proxy System
description: معمارية نظام Hopx كـ proxy لتجاوز CF-block على المواقع المحجوبة من VPS IP
---

## المشكلة
VPS IP (95.182.93.105 = Hetzner datacenter) محجوب من Cloudflare على عدة مواقع.
Hopx sandbox IP (168.119.213.14 = Hetzner أيضاً لكن في range مختلف) لا يُحجب.
المواقع لا تستخدم CF cookies — تستخدم TLS fingerprint فقط.
لذلك curl_cffi مع impersonate=chrome136 يعمل من Hopx لكن لا يعمل من VPS مباشرة.

## نتائج الاختبار من Hopx sandbox
| الموقع | النتيجة | ملاحظة |
|--------|---------|---------|
| egydead (tv10.egydead.live) | ✅ 200 / 107KB | يعمل تماماً |
| witanime.life | ✅ 200 / 99KB | WP site |
| witanime.cyou | ✅ 200 / 99KB | نفس witanime.you |
| anime4up.cam | ✅ 200 / 27KB | JS-rendered |
| anime3rb.com | ❌ 403 CF | محجوب حتى من Hopx — يحتاج browser |
| wecima / faselhd / akwam | ✅ يعملون من VPS مباشرة | لا يحتاجون Hopx |

## المعمارية النهائية المقررة
```
VPS scraper (anime.ts/animation.ts)
    → localhost:8001/fetch?url=BLOCKED_SITE (hopx_manager local proxy)
        → Hopx sandbox public URL (port 3000)
            → curl_cffi chrome136 impersonation
            → موقع محجوب (egydead/witanime/anime4up)
        ← يرجع JSON: {status, html, cookies}
    ← scraper يستخدم HTML
```

## Hopx SDK المعلومات الأساسية
- pip install hopx_ai (مثبت على VPS)
- API key: يُحفظ في HOPX_API_KEY env var (لا تحفظه هنا!)
- base_url: https://api.hopx.dev
- Templates المتاحة: base(118), code-interpreter(119), code-interpreter-mise(609)
- Template المستخدم: base (id=118)
- كل port يُعرض تلقائياً: sandbox.get_preview_url(PORT) → https://PORT-SANDBOX_ID.region.vms.hopx.dev/
- Port 7777 محجوز للـ Hopx agent نفسه — استخدم 3000 أو غيره
- sandbox.commands.run(cmd, timeout=N, background=True) لتشغيل الخلفية

## الملفات المطلوب إنشاؤها
1. `/opt/anime-nova/scripts/hopx_proxy_server.py` — Flask server يشتغل داخل sandbox على port 3000
2. `/opt/anime-nova/scripts/hopx_manager.py` — يشتغل على VPS كـ pm2 process:
   - ينشئ Hopx sandbox
   - يشغّل hopx_proxy_server داخله
   - يشغّل local HTTP server على port 8001 يعيد التوجيه للـ sandbox
   - يراقب الـ sandbox ويعيد إنشاءه عند الموت
3. تحديث ecosystem.config.cjs لإضافة hopx_manager كـ pm2 process
4. تحديث api-server scrapers لاستخدام localhost:8001 للمواقع المحجوبة

## ما تم إنجازه
- تثبيت hopx_ai على VPS ✅
- اختبار sandbox IP ✅ (168.119.213.14)
- اختبار الوصول للمواقع من sandbox ✅
- اكتشاف get_preview_url(PORT) ✅
- اكتشاف أن proxy server يعمل ويُعرض خارجياً ✅

## الخطوة التالية
بناء hopx_proxy_server.py + hopx_manager.py + تحديث ecosystem.config.cjs
ثم تحديث scrapers في anime.ts و animation.ts لاستخدام HOPX_PROXY_URL.

## Why
CF-block لا يُحل بالكوكيز لأن المواقع تستخدم TLS fingerprint لا cookies.
الحل الوحيد = تغيير الـ IP (Hopx proxy).

## How to apply
أي موقع يُرجع 403/block من VPS مباشرة → يُوجَّه لـ localhost:8001/fetch
