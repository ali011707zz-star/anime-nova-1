---
name: AniTaku APK Analysis
description: نتائج تحليل AniTaku.apk (EasyPlex) — API endpoints، auth mechanism، streaming hosts
---

# AniTaku APK Analysis

## الملف
- MediaFire: https://www.mediafire.com/file/oagei8xmumk08if/AniTaku.apk/file
- الحجم: 85.8MB، الإصدار: 0.1

## الإطار المستخدم
- **EasyPlex** by Y0bEX — https://codecanyon.net/user/yobex
- Laravel backend + Passport OAuth
- Android Kotlin + Retrofit + OkHttp + Room DB

## API الرئيسي
```
Base URL: https://anitakuapp.hasalaty.com/public/api/
OAuth:    https://anitakuapp.hasalaty.com/public/oauth/token
Admin:    https://anitakuapp.hasalaty.com/public/admin
```

## Endpoints المكتشفة (من DEX strings)
```
GET  animes/byrating/{code}          ← 401 (يحتاج auth)
GET  animes/byviews/{code}
GET  animes/byyear/{code}
GET  animes/latestadded/{code}
GET  animes/relateds/{id}/{code}
GET  animes/show/{id}/{code}
POST anime/addtofav/{movieid}
POST anime/removefromfav/{movieid}
GET  series/byrating/{code}
GET  series/byviews/{code}
GET  series/byyear/{code}
GET  series/episode/{episode_imdb}/{code}
GET  stream/show/{id}/{code}
GET  cast/detail/{id}/{code}
GET  casterslist / allgenres / slider
POST user/avatar / user/device/create / user/device/delete/{id}
POST user/logout / user/profile/create / user/profile/delete/{profile_id}
GET  userprofile_history / user/settings
POST login   ← حقل: username (وليس email)
POST register
```

## المصادقة
- نوع: Laravel Passport OAuth (password grant)
- حقل الدخول: **username** (وليس email)
- endpoint: POST /public/oauth/token
  - grant_type=password, client_id=2, client_secret=???
- client_secret مخزّن في DB — لم يُكتشف بعد (client_id=2 → "invalid_client")

## TMDB API Key
- string `tmdb_api_key` موجود في DEX لكن القيمة لم تُستخرج بعد

## مواقع البث (StreamSB-family — كلها نمط /api/source/)
```
7pow.me, kawaiifansub.com, api.saruch.co, api.streamsb.com,
easyplex.xyz, ff-dns.xyz, gavid.xyz, gdstream.net, iplhd.cyou,
kanavid.xyz, ll-dns.xyz, manasx.xyz, mifilm.xyz, mrdhan.com,
otcplay.fun, playto1.com, pp-dns.xyz, psadns.xyz, purefiles.in,
sbplay.xyz, suzihaza.com, vanfem.com, zapurl.xyz,
vps.putmovies.com, asianembed.io, cdn3.k-cdn.online,
bittube.video/api/v1/videos/, uptobox.com/api/
```

## الخطوات المتبقية للتكملة
1. إيجاد client_secret (MITM أو قراءة من DB الـ VPS)
2. استخراج TMDB API key من classes2-7.dex
3. تجربة endpoints بعد الحصول على Bearer token
4. فحص vps.putmovies.com كمصدر محتوى

## Deep Links
- com.anitaku.app/animes/ | /movies/ | /series/ | /streaming/
