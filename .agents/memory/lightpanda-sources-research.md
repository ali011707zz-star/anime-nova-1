---
name: Lightpanda Sources Research — July 2026
description: نتائج بحث Lightpanda لسحب الفيديو من مواقع الأنمي والأنميشن العربية — اختبارات VPS كاملة + مواقع لم تُفحص بعد
---

# Lightpanda Video Extraction Research — July 2026

## الأداة
- `/tmp/lightpanda` على VPS 95.182.93.105
- RAM استهلاك: ~+10MB لكل طلب (شبه صفر)
- Lightpanda CDP serve mode: `lightpanda serve --port 9222` — يدعم websocket CDP
- Python websocket-client مثبّت (`pip3 install websocket-client --break-system-packages`)

---

## نتائج المصادر الموجودة (مختبرة)

### ✅ FaselHD — fasel-hd.cam — **نجح كاملاً**
**Flow:**
1. `GET /anime/{slug}` أو `/anime-episodes/{ep-slug}` (Lightpanda يتجاوز CF)
2. اسحب `player_token` من: `player_token=([A-Za-z0-9+/=_-]{20,})`
3. `GET /video_player?player_token={pt}` (Lightpanda)
4. اسحب `data-url` attributes: `data-url=["']([^"']+)["']` — class `hd_btn`
5. يرجع **scdns.io master.m3u8** — 200 بدون Referer!
6. المحتوى: `#EXTM3U` مع 3 جودات: 1080p (1949Kbps) + 720p (883Kbps) + 360p (241Kbps)

**ملاحظة مهمة:** Sub-playlists (quality-specific M3U8) → **403** عند الفتح مباشرةً. تحتاج مرور عبر **hls-proxy مع Referer: fasel-hd.cam**. Master M3U8 يعمل مباشرةً.

**الأنماط:** الروابط مشفّرة بتوقيع زمني (timestamp في URL) تنتهي بعد دقائق.

**البحث:** لا يعمل بـ `one piece` بالإنجليزية — جرّب Arabic أو category URL مباشرةً.

---

### ⚠️ WeCima — wecima.gold — **جزئي**
**Flow:**
1. Lightpanda يتجاوز CF (222KB)
2. اسحب `mycimafsd=([A-Za-z0-9+/=]{20,})` → فكّه base64 → fastvip.space URL
3. `/e/{id}` — **محجوب** "Video embed restricted for this domain" (VPS IP مرفوض)
4. `/stream/{id}` — **200** (42KB صفحة كاملة مع player)
5. `/stream/{id}?json=1` أو `?format=json` — **200** ← **لم يُقرأ المحتوى بعد!**

**TODO:** اقرأ محتوى `/stream/{id}?json=1` — على الأرجح يرجع الرابط المباشر

---

### ⚠️ WitAnime — witanime.you — **يعمل API مباشر (بدون Lightpanda)**
- CF يمر مباشرةً بدون Lightpanda
- WP API: `GET /wp-json/wp/v2/episode?anime={id}&per_page=100&order=asc`
- فكّ `_zX/_zK` → embed servers (yonaplay.net / videa.hu)
- yonaplay.net يرجع 404 (روابط تنتهي صلاحيتها)
- videa.hu embed — 19KB — لم يُستخرج رابط مباشر

**TODO:** اختبر videa.hu embed أعمق + ابحث عن embed servers بديلة

---

## مصادر الأنميشن الجديدة (مختبرة)

### ✅ MOVIZ-TIME — moviz-time.vip
- CF: **تمر** (92KB)
- WordPress + WP-JSON API يعمل
- وُجدت embeds: `embed.mystream.to` + `openload.co` + `vidhid.co`
- mystream.to يرجع 128B (ربما dead) — **TODO: اختبر مرة أخرى**
- vidhid.co يحمّل لكن بإعلانات فقط
- Anime section موجود: `/قائمة-الأنمي/` + `/أفلام-أنمي/`

### ❌ CIMALIGHT — r.cimalight.co
- CF: **محجوب** "Attention Required" — ليس Turnstile العادي

### ✅ AKWAM — as.akwam.tube
- CF: **تمر** (93KB)
- **مشكلة:** كل صفحة تعيد نفس 43KB (SPA — React/Vue يحتاج JS execution كامل)
- Lightpanda لا يكمل تنفيذ JS للـ SPA
- **TODO:** جرّب CDP serve mode مع انتظار navigation events لإيجاد API endpoint

---

## مصادر الأنمي الجديدة (مختبرة)

### ✅ ANIME-TIME — anime-time.live
- CF: **تمر** (68KB)
- WordPress + WP API يعمل
- Embeds وُجدت في صفحات الأفلام:
  - `https://vidhls.com/player/index.php?data={hash}` — SSL error على VPS
  - `https://play.imovietime.bond/mail/mplayer.php?l={token}` — لم يُختبر بعد
- **TODO:** imovietime.bond — اختبر من IP مختلف (VPS IP قد يكون محجوباً)

### ✅ ANIMEDAR — animedar.net
- CF: **تمر** (197KB)
- URL pattern: `/anime-p/{slug}/`
- وُجدت `mp4upload.com` embed links في صفحة الأنمي
- **TODO:** اسحب mp4upload embed → استخرج الرابط المباشر (يعمل في السكريبر الحالي)

### ✅ PHOENIX — anime-phoenix.com
- CF: **تمر** (465KB)
- URL pattern: `/episodes/{slug}-episode-{n}`
- يستخدم **Plyr player** (`window.player = new Plyr('#streamit_player'...)`)
- صفحات الحلقات 231KB — لم يُستخرج رابط الفيديو بعد
- **TODO:** اقرأ scripts في صفحة الحلقة لإيجاد `src` للـ Plyr

### ✅ RISTO — ristoanime.co
- CF: **تمر** (417KB+)
- له `/api/v2/video/` و `/api/videos/` endpoints (من HTML)
- `/anime/` page = 476KB لكن regex لم يجد episode links
- **TODO:** حلّل pattern URLs في الـ 476KB page يدوياً

### ❌ 4XANIME — 4h.y9x3c6v.shop
- CF: **محجوب بـ Turnstile** — يحتاج Chrome/nodriver

### ❌ ANIMERCO — eta.animerco.org
- CF: **محجوب بـ Turnstile** — يحتاج Chrome/nodriver

---

## مواقع لم تُفحص بعد (TODO)

### أنميشن جديدة (لم تُفحص):
| الموقع | الحالة |
|--------|--------|
| https://as.akwam.tube/l1/ | SPA — يحتاج CDP + JS wait |
| https://r.cimalight.co/category.php?cat=online-movies3 | CF Attention Required |
| https://moviz-time.vip/ | ✅ تمر — يحتاج تعمق في episode pages |

### أنمي جديدة (لم تُفحص بشكل كامل):
| الموقع | الحالة |
|--------|--------|
| https://4h.y9x3c6v.shop | ❌ Turnstile |
| https://anime-time.live/ | ✅ تمر — imovietime embed لم يُختبر |
| https://ristoanime.co/ | ✅ تمر — API/episodes لم تُستخرج |
| https://eta.animerco.org/ | ❌ Turnstile |
| https://animedar.net/ | ✅ تمر — mp4upload embeds — يحتاج تعمق |
| https://anime-phoenix.com/ | ✅ تمر — Plyr source لم يُستخرج |

### مواقع أخرى لم تُذكر بعد (للبحث لاحقاً):
- anime3rb.com — محجوب من VPS (CF Managed Challenge)
- witanime.you — يعمل API مباشر (done partially)
- egydead.live — CF محجوب
- faselhd.pro / fasel-hd.cam — ✅ مكتمل

---

## TODOs الحرجة (مرتبة بالأولوية)

1. **[HIGH] fastvip `/stream/{id}?json=1`** — اقرأ المحتوى → ربما رابط مباشر للفيديو
2. **[HIGH] FaselHD sub-playlists** — اختبر مع cookies + Referer header صحيح عبر hls-proxy
3. **[HIGH] PHOENIX Plyr source** — اقرأ script blocks في صفحة الحلقة لإيجاد src
4. **[MEDIUM] RISTO episode URLs** — حلّل `/anime/` 476KB للعثور على URL pattern
5. **[MEDIUM] ANIMEDAR mp4upload** — اسحب embed src من mp4upload
6. **[MEDIUM] imovietime.bond** — اختبر embed مع Lightpanda
7. **[MEDIUM] AKWAM SPA** — جرّب CDP serve mode مع wait للـ API calls
8. **[LOW] 4XANIME / ANIMERCO** — يحتاج nodriver (Chrome) لتجاوز Turnstile

---

## ملاحظات تقنية

### scdns.io URLs structure:
```
https://{server}.c.scdns.io/stream/{version}/{signed_token}/{timestamp}/{referer_domain}/{region}/{ipv6}/{?}/{...}/{quality_playlist}.m3u8
```
- timestamp = Unix seconds (تنتهي بعد ~10 دقائق)
- Master M3U8: يعمل بدون Referer (200)
- Sub-playlists: تحتاج Referer: fasel-hd.cam (403 بدونها)

### fastvip structure:
- `/e/{id}` = domain-restricted (403 for VPS)
- `/stream/{id}` = يعمل (42KB page)
- `/stream/{id}?json=1` = **يرجع 200** (محتوى غير معروف بعد)
- xupload.js: `/dl?op=enc_status&id=` — endpoint مكتشف

### PHOENIX Plyr:
- `window.player = new Plyr('#streamit_player', {`
- الـ source ربما في `<video>` tag أو `data-src` attribute أو في script block

**Why:** هذه المعلومات لم تكتمل — تحتاج جلسة منفصلة للتعمق
**How to apply:** عند استئناف البحث — ابدأ من TODOs الحرجة بالترتيب
