---
name: Hopx Proxy System
description: معمارية نظام Hopx كـ proxy لتجاوز CF-block على المواقع المحجوبة من VPS IP
---

## المشكلة
VPS IP (95.182.93.105 = Hetzner datacenter) محجوب من Cloudflare على عدة مواقع.
Hopx sandbox IP (168.119.213.14 = Hetzner لكن في range مختلف) لا يُحجب.
المواقع لا تستخدم CF cookies — تستخدم TLS fingerprint فقط.
لذلك curl_cffi مع impersonate=chrome136 يعمل من Hopx لكن لا يعمل من VPS مباشرة.

## نتائج الاختبار من Hopx sandbox
| الموقع | النتيجة | ملاحظة |
|--------|---------|---------|
| egydead (tv10.egydead.live) | ✅ 200 / 80KB | يعمل تماماً |
| witanime.cyou | ✅ 200 / 80KB | نفس witanime.life |
| anime4up.cam | ✅ 200 / 27KB | JS-rendered |
| anime3rb.com | ❌ 403 CF | محجوب حتى من Hopx — يحتاج browser |
| wecima / faselhd / akwam | ✅ يعملون من VPS مباشرة | لا يحتاجون Hopx |

## المعمارية النهائية المنفَّذة ✅
```
VPS scraper (anime.ts/animation.ts)
    → localhost:8001/fetch?url=BLOCKED_SITE (hopx_manager local proxy)
        → Hopx sandbox public URL (port 3000)
            → curl_cffi chrome136 impersonation
            → موقع محجوب (egydead/witanime/anime4up)
        ← يرجع JSON: {status, html, cookies, final_url}
    ← scraper يستخدم HTML
```

## الملفات المُنشأة والمُعدَّلة
1. `scripts/hopx_manager.py` — يشتغل على VPS كـ pm2 process (hopx-manager)
2. `scripts/hopx_proxy_server.py` — Flask-free server (built-in http.server + curl_cffi)
3. `artifacts/api-server/src/routes/anime.ts` — أُضيف hopxProxyGet + تحديث smartFetch
4. `artifacts/api-server/src/routes/animation.ts` — أُضيف hopxProxyGet + egydead fallback

## الأخطاء التي حُلَّت
### 1. SyntaxError: bytes can only contain ASCII
الأصل: `_PROXY_CODE = b'''...'''` يحتوي على نصوص عربية في التعليقات داخل bytes literal.
الحل: قراءة hopx_proxy_server.py من الملف مباشرة وتشفيره base64 عوضاً عن تضمينه.

### 2. Flask blinker/distutils conflict
الأصل: pip install flask يفشل لأن blinker 1.4 مثبَّت بـ distutils.
الحل: استبدال Flask بـ Python's built-in http.server — لا pip install مطلوباً عدا curl_cffi.

### 3. Proxy log empty / health check fails after 6s
الأصل: 6 ثوانٍ انتظار غير كافية بعد تثبيت curl_cffi داخل proxy_server.py.
الحل: تثبيت curl_cffi مسبقاً في create_sandbox() ثم loop health check حتى 20s (4×5s).

## Hopx SDK المعلومات الأساسية
- pip install hopx_ai (مثبت على VPS)
- API key: HOPX_API_KEY في ecosystem.config.cjs
- base_url: https://api.hopx.dev
- Template المستخدم: base (id=118)
- Port 7777 محجوز للـ Hopx agent — استخدم 3000
- sandbox.get_preview_url(PORT) → https://PORT-SANDBOX_ID.region.vms.hopx.dev/
- SANDBOX_TIMEOUT = 7200s (2 ساعة) — hopx_manager يُنشئ sandbox جديد إذا مات

## تكامل الـ scrapers
```typescript
// في anime.ts و animation.ts:
const HOPX_PROXY_BASE = process.env.HOPX_PROXY_URL || "http://localhost:8001";

async function hopxProxyGet(url, referer?, timeoutMs=25000): Promise<string|null>
// يُرجع null إذا كان الـ sandbox غير جاهز أو رجع status >= 400
```

في `smartFetch` (anime.ts): cfProxy → **hopxProxy** → ScrapingAnt

في egydead scraper (animation.ts): direct fetch → **hopx fallback** إذا length < 500

## ecosystem.config.cjs — الإعدادات
```js
{
  name: "hopx-manager",
  script: "scripts/hopx_manager.py",
  interpreter: "/usr/bin/python3",
  env: {
    HOPX_API_KEY: "...",
    HOPX_LOCAL_PORT: "8001",
  }
}
// HOPX_PROXY_URL: "http://localhost:8001" مُضاف لـ anime-nova-api env
```

## Why
CF-block لا يُحل بالكوكيز لأن المواقع تستخدم TLS fingerprint لا cookies.
الحل الوحيد = تغيير الـ IP (Hopx proxy) بدون استهلاك ScrapingAnt credits.

## How to apply
أي موقع يُرجع 403/block من VPS مباشرة → يُوجَّه لـ hopxProxyGet.
hopx-manager يعيد إنشاء الـ sandbox تلقائياً عند موته (monitor_loop كل 60s).
