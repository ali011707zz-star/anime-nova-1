---
name: Animation Mobile Playback Fixes
description: أسباب الشاشة السوداء في animation watch على mobile + الإصلاحات المطبقة
---

## المشكلة
مصادر الـ animation تظهر في الـ source picker على Nova Mobile لكن تُشغَّل كشاشة سوداء (ExoPlayer يعمل لكن لا يُعيد الفيديو).

## الأسباب المحددة وإصلاحاتها

### 1. Garbage Referer headers في sendSource (animation.ts)
- `sendSource` كانت تستخرج `ref` param من hls-proxy URL
- الـ `ref` مشفَّر بـ `encryptParam` (hex string ≥ 64 char)
- `new URL(hex_string)` يرمي exception، فكانت تُرسل `{ Referer: "abc123...hex" }` للـ ExoPlayer
- **الإصلاح**: أضف `isEncrypted` check — لا تستخرج Referer إلا من params غير مشفَّرة
- **ملاحظة**: هذا لم يكن يكسر الـ CF Worker path (CF Worker يتجاهل Referer الـ request) لكن يُربك التشخيص

### 2. Dulo probe fallback بدون Referer (animation.ts)
- عند فشل probe (timeout أو CDN blocking) → `finalUrl = src.url` (raw CDN URL)
- كان يُرسَل بدون Referer → CDN يحتاج `Referer: https://dulo.tv/` قد يرفض الطلب
- **الإصلاح**: عند `useRawFallback = true`، أضف `{ headers: { Referer: "https://dulo.tv/", Origin: "https://dulo.tv" } }` في extra2
- المنطق: raw CDN URLs مقصودة للـ mobile clients (residential IP)، لكن تحتاج Referer صحيح

### 3. لا يوجد onError handler في animation watch.tsx
- عند فشل كل المصادر، RiftPlayer يستدعي `onError?.()` لكنه undefined
- النتيجة: شاشة سوداء صامتة (error=true, isAutoCycling=false, لكن لا شيء يحدث)
- **الإصلاح**: أضف `onError={() => setScreen("picker")}` → يُعيد للـ picker مع قائمة المصادر

### 4. CF Worker لا يكتشف M3U8 بمحتوى الـ body
- `isHlsManifest` كانت تعتمد فقط على Content-Type + امتداد URL
- بعض CDNs يُعيدون M3U8 بـ Content-Type: text/plain أو application/octet-stream
- CF Worker كان يمرر M3U8 بدون إعادة كتابة segments → ExoPlayer يجلب segments مباشرة من CDN بدون Referer → 403
- **الإصلاح**: أضف `bodyPrefix` parameter لـ `isHlsManifest` + يفحص أول بايتات للكشف عن `#extm3u` (case-insensitive)
- **تنبيه**: فقط اقرأ body كنص إذا المحتوى ليس binary واضحاً (.ts/.mp4/.aac/audio*/video*)

## How to Apply
- عند إضافة source جديد لـ animation.ts: تأكد أن `sendSource` تُرسل `extra2.headers` الصحيح عند استخدام raw CDN URLs
- الـ hls-proxy path (proxied URL) لا تحتاج headers في extra2 — CF Worker يتولى الـ Referer داخلياً
- عند تعديل CF Worker: اختبر مع M3U8 مُعادة بـ Content-Type خاطئ (text/plain)

## Why
- الـ hls-proxy → CF Worker path آمنة لكلا web وmobile
- الشاشة السوداء الصامتة = عدم وجود onError handler + auto-cycling يستنفد كل المصادر
- CF Worker M3U8 detection كانت تفشل مع non-standard Content-Types → segments بلا Referer → 403
