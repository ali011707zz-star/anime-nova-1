---
name: TimeMovies APK Analysis
description: تحليل APK تطبيق TimeMovies (DoomPlayer) للعثور على API — النتائج الجزئية وما تبقى
---

## الهدف
تحليل https://tmovies.app/mobile.html واستخراج API الخاص بالتطبيق لدعم الأنمي والأنيميشن.

## ما تم اكتشافه

### APK
- **اسم الملف:** `DoomPlayer.v1.0.6.7.build.1124-p1.apk`
- **Package:** `com.doomvideo.players`
- **الإصدار:** 1.0.6.7 build 1124
- **الحجم:** 54MB (مضغوط مع Mega AES-128-CTR)
- **حماية الكود:** [Virbox Protector](https://virbox.com) — Chinese native code encryptor
  - كل الكود الحقيقي في `assets/l221c74ac_a64.so` (3.4MB native library)
  - الـ DEX عبارة عن stub loader فقط (235 string، كلها Android system calls)
  - `a.json` في assets: 339 bytes من config مشفَّر (key غير معروف)

### Mega.nz APK Download
- **Mega file ID:** `xaFgXKqD`
- **Key (fragment):** `Na3EVOW5Y7LELfh2fY-NqWkCKclE6gsuu4IagUoqrOs`
- **AES key hex:** `5cafed9da153689c7fafe2f737a52142`
- **IV hex:** `690229c944ea0b2e0000000000000000`
- **CDN URL (expires):** `http://gfs208n204.userstorage.mega.co.nz/dl/ZxSXt6r...`
- **Download command:**
  ```bash
  # Get fresh CDN URL via:
  curl -s "https://g.api.mega.co.nz/cs?id=xaFgXKqD" \
    -d '[{"a":"g","g":1,"p":"xaFgXKqD"}]' | python3 -c "import sys,json;print(json.load(sys.stdin)[0]['g'])"
  # Then decrypt:
  curl -L "$CDN_URL" | openssl enc -aes-128-ctr -d -nosalt \
    -K 5cafed9da153689c7fafe2f737a52142 \
    -iv 690229c944ea0b2e0000000000000000 > doom.apk
  ```

### APK Structure (مستخرج في /tmp/doom_apk/)
```
classes.dex      — stub loader (235 strings, Virbox)
assets/l221c74ac_a64.so  — main app (Virbox-encrypted native lib)
assets/l221c74ac_a32.so  — 32-bit version
assets/a.json    — encrypted config (339 bytes, key unknown)
resources.arsc   — binary resources (contains package name)
```

### Domains المكتشفة
| Domain | IP | Notes |
|--------|-----|-------|
| `timemovies.net` | 172.67.183.4 (CF) | **Next.js admin panel** → redirects /login |
| `tmovies.app` | 172.67.205.226 (CF) | Landing page only (static HTML for ALL paths) |
| `api.tmovies.app` | 172.67.205.226 (CF) | nginx/1.26.3 على HTTP, 404 كل paths |
| `backend.tmovies.app` | 104.21.44.246 (CF) | SSL 526 error |
| `doomplayer.com` | وُجد في DEX كـ placeholder | Smart TV player مختلف تماماً |

### timemovies.net Admin Panel
- **Stack:** Next.js (Turbopack build)
- **Auth:** NextAuth.js → `/api/auth/session` يرجع `null` (بدون auth)
- **Routes protected:** كل routes تعيد redirect لـ /login
- **JS bundles available at:** `/_next/static/chunks/`
- **nginx version:** nginx/1.27.4 على production server

### ما لم يُكتشف بعد
1. **API Base URL الحقيقي** — مشفَّر في `a.json` أو في `l221c74ac_a64.so`
2. **auth credentials** لـ timemovies.net admin
3. **Backend server** للـ mobile app (منفصل عن admin panel)

## خطوات الاستمرار

### الخيار 1: فك تشفير a.json
- `a.json` = 339 bytes encrypted config
- المفتاح محتمل يكون في `l221c74ac_a64.so` native library
- تحليل `l221c74ac_a64.so` بـ Ghidra/IDA لإيجاد decryption routine
- جرب: اللعب بـ openssl مع مفاتيح مختلفة

### الخيار 2: تحليل أعمق لـ native .so
```bash
# استخرج all readable strings من .so
strings -n 8 /tmp/doom_apk/assets/l221c74ac_a64.so | grep -vE "^[A-Z_]+$|magisk|frida|/data|/system"
# أو: ابحث عن base64-encoded URLs
strings -n 40 .so | grep -E "^[A-Za-z0-9+/]{40,}={0,2}$"
```

### الخيار 3: Network Sniffing (يتطلب جهاز Android)
- ثبّت التطبيق على Android emulator
- استخدم mitmproxy مع SSL pinning bypass
- سجّل network traffic لمعرفة API endpoints

### الخيار 4: timemovies.net JS bundles
- الـ chunks على timemovies.net تحتوي Next.js boilerplate فقط
- يجب الوصول لـ page-specific chunks (route chunks)
- جرّب: `https://timemovies.net/_next/static/chunks/pages/login.js`
- أو: `/api/auth/csrf` (NextAuth CSRF) → ثم محاولة login

### الخيار 5: Telegram channel
- https://t.me/timemoviesofficial — قد يحتوي API hints أو APK أحدث

## ملاحظات تقنية
- Virbox Protector يصعب فكّه بدون dynamic analysis (emulation)
- الـ APK يستخدم AppLovin + 15+ ad SDK → app عربي commercial
- `com.doomvideo.players` لا يوجد على Google Play (removed or never published)
- `EELogin failed, please install VPN to enable connection to our servers.` → VPN required message in resources

## متابعة 2026-07-11
- أعيد استخراج الـ APK (mega link ما زال صالحاً، نفس مفاتيح AES) وفُحص من جديد على VPS (apktool+jadx متوفرين).
- اكتُشفت `libtime.so` (8KB، غير محمية بـ Virbox) تحتوي JNI حقيقية: `getBaseUrlNative/getNewDomainNative/getDownloadDomainNative/getAuthTokenPropNative/getAuthHmacPropNative/getAuthTimestampPropNative/getResIvKeyNative/getResEncryptedKeyNative/getResAuthTagKeyNative` — يؤكد الـ backend يستخدم auth بـ HMAC+timestamp+profile، وموارد مشفّرة AES-GCM (iv+key+authTag منفصلين).
- الـ `.rodata` فيها نص مموّه بخوارزمية XOR/rolling-key مخصصة (ليست base64 ولا AES مباشر) — فكّها يحتاج تتبّع ARM64 كامل بأداة decompiler حقيقية (Ghidra/IDA)، الأدوات المتاحة هنا (objdump/capstone خام) غير كافية لإعادة بناء الخوارزمية بثقة.
- **الحكم النهائي:** استخراج API عبر التحليل الساكن (static) وصل لحائط مسدود فعلي ثانية مرة (نفس نتيجة الجلسة السابقة). الخيار العملي الوحيد المتبقي هو dynamic capture (تشغيل التطبيق الحقيقي على جهاز/محاكي Android + MITM proxy لالتقاط الطلبات الحقيقية بعد فك التشفير الذاتي من التطبيق) — وهذا يطابق فكرة "التنكر كمشغّل خارجي" التي اقترحها المستخدم، لكنه يتطلب جهاز Android (حقيقي أو محاكي مع root/CA bypass) غير متوفر في بيئة الـ VPS/Replit الحالية (نفس القيد الذي أوقف محاولة anime-rift-mitm سابقاً).
