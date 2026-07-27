---
name: VPS CDN proxy setup
description: cf_proxy.py /stream endpoint يعمل كـ Referer-injecting proxy للمتصفح، مكشوف عبر nginx HTTPS على /cdn-proxy
---

## المشكلة
المتصفح (hls.js) لا يستطيع إرسال Referer header مخصّص على طلبات cross-origin → CDNs التي تشترط Referer تُعيد 403.

## الحل
cf_proxy.py يحتوي على endpoint جديد `/stream`:
- يقبل `?url=`, `?ref=`, `?key=`
- يتحقق من CF_PROXY_KEY في الـ env
- يجلب المحتوى من CDN بـ Referer/Origin headers صحيحة (curl_cffi)
- يدعم Range requests (video seeking)
- يُعيد stream ثنائي مع CORS headers

nginx يكشفه على `/cdn-proxy` بـ HTTPS (proxy_pass → localhost:8000/stream).

## المتغيرات على الـ VPS (/opt/anime-nova/.env)
- `CF_WORKER_URL=https://animenovaa.duckdns.org/cdn-proxy`
- `CF_PROXY_KEY=<المفتاح السري>`

## كيف يستخدمه الخادم
`anime.ts` rewriteM3u8:
- mobile (directSegs=true): يُعيد rawUrl مباشرةً للـ CDN
- web (directSegs=false) + CF_WORKER_URL مضبوط: يُعيد `CF_WORKER_URL?url=<cdnUrl>&ref=<ref>&key=<key>`
- web + لا CF_WORKER_URL: يُعيد rawUrl مباشرةً (CORS-limited CDNs لن تعمل)

`video-proxy`: إن لم يكن `mobile=1` وكان CF_WORKER_URL مضبوطاً → redirect لـ CDN proxy.

## ملاحظة Bandwidth
هذا الـ proxy يستخدم VPS bandwidth لكن فقط للـ segments من CDNs التي تشترط Referer.
CDNs مع CORS headers يُوجَّهها مباشرةً (307 redirect) بدون proxy.

**Why:** البراوزر لا يستطيع ضبط Referer على cross-origin requests - هذا قيد أمني في المتصفحات.
**How to apply:** CF_PROXY_KEY يجب أن يطابق بين .env على VPS وبيئة cf-proxy process.
