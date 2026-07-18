# FaselHD / scdns.io — نتائج الهندسة العكسية الكاملة
> تاريخ التحليل: 2026-07-18  
> الدومين المحلل: `web7180xx.faselhdx.bid` ← يعيد redirect إلى `www.fasel-hd.cam`  
> الـ CDN المكتشف: `scdns.io` (CDN خاص بـ FaselHD)  
> الأداة المستخدمة: Hopx playwright sandbox + curl مباشر

---

## 📌 الخلاصة التنفيذية

| السؤال | الجواب |
|--------|--------|
| هل يحتاج browser كل مرة؟ | **لا** — مرة واحدة لكل محتوى ثم cache |
| مدة الصلاحية (TTL) | **~5-6 ساعات** (timestamp في URL = expiry) |
| هل يحتاج Referer للتشغيل؟ | **لا** — master.m3u8 يعمل بدون أي header |
| هل IP محدود؟ | master: أي IP ✅ / quality: نفس IP ✅ (لكن mobile يحله تلقائياً) |
| أفضل سيرفر | `master.c.scdns.io` — لا يُعيد 403 أبداً |

---

## 🏗️ بنية URLs الفيديو

### 1. Master Playlist (الأهم — يعمل من أي IP)
```
https://master.c.scdns.io/stream/v2/{scdns_token}/{expiry_unix_ts}/normal/0/{browser_ip}/yes/{content_hash}/www.fasel-hd.cam/master.m3u8
```

### 2. Quality Playlists (تحتاج نفس IP المُضمَّن)
```
https://r467--{node_id}.c.scdns.io/stream/v1/hls/{scdns_token}/{expiry_unix_ts}/www.fasel-hd.cam/all/{browser_ip}/yes/{country}/0/{path}/{content_hash}/{quality}_playlist.m3u8
```

### 3. معرّفات الجودة:
| Quality | Identifier | Bandwidth |
|---------|-----------|-----------|
| 1080p | `160_hd1080b_playlist.m3u8` | 2.1 Mbps |
| 720p | `155_hd720b_playlist.m3u8` | 1.1 Mbps |
| 360p | `140_sd360b_playlist.m3u8` | 295 Kbps |

### 4. Thumbnail:
```
https://img.scdns.io/thumb/{content_hash}/large.jpg
```

---

## 🔍 قواعد IP والصلاحية

| نوع الطلب | IP مطلوب | Referer مطلوب | النتيجة من أي IP |
|-----------|---------|--------------|-----------------|
| `master.m3u8` | ❌ أي IP | ❌ لا | ✅ 200 OK |
| `quality .m3u8` | ✅ نفس URL IP | ❌ لا | ❌ 403 |
| `.ts segments` | ✅ نفس URL IP | غير مختبر | ❌ 403 |

### الحيلة الذكية:
عندما يُجلب `master.m3u8` من IP مختلف (مثلاً: جهاز المستخدم)، يُعيد الـ CDN quality URLs **جديدة** بـ IP ذلك المستخدم!

```
المستخدم (IP: 1.2.3.4) → master.m3u8 → CDN يُعيد quality URLs بـ IP: 1.2.3.4
                                                 ↓
                              المستخدم يشغل quality URL → CDN يقبله ✅
```

---

## 🎯 بنية URL التفصيلية (أمثلة حقيقية)

### Kimetsu no Yaiba: Mugen Train (2020)
```
# Auto/Master:
https://master.c.scdns.io/stream/v2/l6QAGqNH3be6si8NT05ClQ/1784375089/normal/0/168.119.213.14/yes/1a6d9cc922ea95b41661f3dcf1229d8d/www.fasel-hd.cam/master.m3u8

# 1080p:
https://r467--7umzmh0e.c.scdns.io/stream/v1/hls/wSVAGxMePnnLQYLE9Q2GPg/1784375089/www.fasel-hd.cam/all/168.119.213.14/yes/DE/0/07-02/2/1a6d9cc922ea95b41661f3dcf1229d8d/160_hd1080b_playlist.m3u8

# 720p:
https://r467--7umzmh0e.c.scdns.io/stream/v1/hls/9rRKRJjHZnfhmXexqE6vJQ/1784375089/www.fasel-hd.cam/all/168.119.213.14/yes/DE/0/07-02/2/1a6d9cc922ea95b41661f3dcf1229d8d/155_hd720b_playlist.m3u8

# 360p:
https://r467--7umzmh0e.c.scdns.io/stream/v1/hls/PkSm4bC-fBv5CRySKwByhw/1784375089/www.fasel-hd.cam/all/168.119.213.14/yes/DE/0/07-02/2/1a6d9cc922ea95b41661f3dcf1229d8d/140_sd360b_playlist.m3u8

# content_hash: 1a6d9cc922ea95b41661f3dcf1229d8d
# CDN node: r467--7umzmh0e
```

### Demon Slayer: Infinity Castle (2025)
```
# Master: https://master.c.scdns.io/stream/v2/rYCsWBm60MXdzDUlx1eiug/1784375173/...
# content_hash: 79d588a3cb2f12fe2eb62681942f0282
# CDN node: r467--5z6nc80t
```

### Chainsaw Man Movie: Reze Arc (2025)
```
# Master: https://master.c.scdns.io/stream/v2/oBL0FDSR90ZkgoLC-HvO6Q/1784375187/...
# content_hash: 9ef9583435893b5ace49db5fcfba12b8
# CDN node: r467--8katnn5p
```

---

## 🔄 Flow استخراج المصادر

```
1. صفحة الفيلم/الحلقة على fasel-hd.cam
   ↓
2. استخرج: data-src="https://www.fasel-hd.cam/video_player?player_token=..."
   (iframe[name="player_iframe"] في DOM)
   ↓
3. Hopx playwright → goto(player_token_url) → wait 7-8s
   (JS execution يبني hd_btn buttons مع data-url)
   ↓
4. استخرج .hd_btn[data-url]:
   - "Auto" → master.c.scdns.io URL ← الأهم
   - "1080p" → r467--{node} quality URL
   - "720p" → r467--{node} quality URL
   - "360p" → r467--{node} quality URL
   ↓
5. خزّن master URL في cache (key: content_hash، TTL: expiry_ts - now)
   ↓
6. أرسل master URL للمستخدم مباشرة (لا يحتاج proxy)
```

---

## 💾 استراتيجية الـ Cache (بدون browser كل مرة)

```typescript
// مفتاح الـ cache: content_hash (32-char hex من URL)
// استخراج الـ content_hash: master URL آخر segment قبل /master.m3u8
// TTL: expiry_ts (timestamp في URL) - Date.now()/1000 - 300 (5 دقائق buffer)

async function getFaselHdSources(moviePageUrl: string): Promise<Source[]> {
  // 1. استخرج player_token من صفحة الفيلم (curl مباشر — لا يحتاج browser)
  const pageHtml = await fetch(moviePageUrl, { headers: faselHeaders }).then(r => r.text());
  const tokenMatch = pageHtml.match(/name="player_iframe"[^>]+data-src="([^"]+)"/);
  if (!tokenMatch) return [];
  const playerUrl = tokenMatch[1];
  
  // 2. استخرج content_hash من player_token (base64 decode يُعطي بيانات مشفرة)
  // أو: استخدمه كـ cache key مباشرة (player_token ثابت لنفس المحتوى)
  const cacheKey = `faselhd_${Buffer.from(playerUrl).toString('base64').slice(0,16)}`;
  
  // 3. تحقق من cache
  const cached = await getFromCache(cacheKey);
  if (cached && cached.expiry > Date.now()/1000) {
    return [{ url: cached.masterUrl, label: 'FaselHD · Auto' }];
  }
  
  // 4. Hopx playwright extraction (مرة واحدة فقط لكل محتوى)
  const sources = await hopxPlaywrightExtract(playerUrl);
  const masterUrl = sources.find(s => s.label === 'Auto')?.url;
  
  // 5. خزّن في cache
  if (masterUrl) {
    const expiryMatch = masterUrl.match(/\/(\d{10})\//);
    const expiry = expiryMatch ? parseInt(expiryMatch[1]) : Date.now()/1000 + 3600;
    await setCache(cacheKey, { masterUrl, expiry });
  }
  
  return sources.map(s => ({ url: s.url, label: `FaselHD · ${s.label}` }));
}
```

---

## 🌐 بنية الموقع (FaselHD)

### أقسام الأنمي:
```
/anime-movies/     — أفلام الأنمي المترجمة
/anime-episodes/   — حلقات مسلسلات الأنمي
/anime/            — فهرس المسلسلات
/movies/           — أفلام عادية
/series/           — مسلسلات
```

### البحث:
```
https://www.fasel-hd.cam/?s={query}
# النتائج في: div.postDiv → a[href] + img[alt]
```

### GitHub pre-scraped DB (للبحث بدون CF):
```
https://raw.githubusercontent.com/Ahmd3301/faselhd-db/main/output/anime.json  (1864 أنمي)
https://raw.githubusercontent.com/Ahmd3301/faselhd-db/main/output/anime-movies.json (391 فيلم)
https://raw.githubusercontent.com/Ahmd3301/faselhd-db/main/output/movies.json
```

### بنية URL الحلقات:
```
https://www.fasel-hd.cam/anime-episodes/{slug}-الحلقة-{N}
# أو: استخرج من div.epAll في صفحة المسلسل
```

---

## ⚠️ ملاحظات تقنية مهمة

### لماذا browser ضروري لتوليد URLs؟
1. `hd_btn` buttons غير موجودة في raw HTML — تُضاف بـ JavaScript بعد تشغيله
2. الـ signing algorithm مُضمَّن في obfuscated JS (3 scripts، كل منها 28-35KB)
3. النمط: JS يفك تشفير `player_token` (AES) → يُولّد signed scdns URL
4. لا يوجد API call خارجي — التوقيع client-side فقط
5. Node.js VM يتوقف بـ timeout (الـ obfuscation يستخدم infinite shuffle loop)

### player_token structure:
```
base64(AES_encrypted_data + "::" + binary_key)
# الجزء المفكوك: ~254 bytes من البيانات المشفرة
```

### Nodes CDN المرصودة:
```
r467--7umzmh0e  (Kimetsu)
r467--5z6nc80t  (Demon Slayer)
r467--8katnn5p  (Chainsaw Man)
# تتغير حسب المحتوى، master.m3u8 يختارها تلقائياً
```

---

## 🔧 كود Playwright الكامل للاستخراج

```python
from playwright.sync_api import sync_playwright
import re

def extract_faselhd_sources(movie_page_url: str) -> list[dict]:
    """
    استخرج scdns.io URLs من صفحة فيلم/حلقة FaselHD.
    يحتاج Hopx sandbox مع playwright مثبَّت.
    
    Returns: [{"label": "Auto", "url": "https://master.c.scdns.io/..."}, ...]
    """
    with sync_playwright() as p:
        browser = p.chromium.launch(
            headless=True,
            args=["--no-sandbox", "--disable-setuid-sandbox", "--disable-dev-shm-usage"]
        )
        ctx = browser.new_context(
            user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36",
            extra_http_headers={"Accept-Language": "ar,en;q=0.9"}
        )
        
        # الخطوة 1: جلب player_token من صفحة الفيلم
        page = ctx.new_page()
        page.goto(movie_page_url, wait_until="domcontentloaded", timeout=30000)
        page.wait_for_timeout(2000)
        token_url = page.get_attribute('iframe[name="player_iframe"]', 'data-src') or ""
        page.close()
        
        if not token_url:
            browser.close()
            return []
        
        # الخطوة 2: تشغيل الـ player وانتظار JS execution
        pp = ctx.new_page()
        pp.goto(token_url, wait_until="domcontentloaded", timeout=30000)
        pp.wait_for_timeout(7000)  # انتظر بناء hd_btn buttons
        
        # الخطوة 3: استخراج sources
        sources = []
        for btn in pp.query_selector_all(".hd_btn"):
            label = btn.inner_text().strip()
            url = btn.get_attribute("data-url") or ""
            if url:
                sources.append({"label": label, "url": url})
        
        # استخراج content_hash من master URL
        master = next((s["url"] for s in sources if "master.c.scdns.io" in s["url"]), "")
        content_hash_match = re.search(r'/yes/([a-f0-9]{32})/', master)
        if content_hash_match:
            for s in sources:
                s["content_hash"] = content_hash_match.group(1)
        
        # استخراج expiry timestamp من URL
        expiry_match = re.search(r'/stream/v2/[^/]+/(\d{10})/', master)
        if expiry_match:
            for s in sources:
                s["expiry_ts"] = int(expiry_match.group(1))
        
        pp.close()
        browser.close()
        return sources


# مثال استخدام:
# sources = extract_faselhd_sources("https://www.fasel-hd.cam/anime-movies/فيلم-...")
# master_url = next(s["url"] for s in sources if s["label"] == "Auto")
# cache_ttl = sources[0].get("expiry_ts", 0) - int(time.time()) - 300
```

---

## 📊 نتائج الاختبار الفعلي

| الفيلم | content_hash | node | جودات متاحة | حالة |
|--------|-------------|------|------------|------|
| Kimetsu Mugen Train (2020) | `1a6d9cc922ea95b41661f3dcf1229d8d` | r467--7umzmh0e | 360p/720p/1080p | ✅ |
| Demon Slayer: Infinity Castle (2025) | `79d588a3cb2f12fe2eb62681942f0282` | r467--5z6nc80t | 360p/720p/1080p | ✅ |
| Chainsaw Man: Reze Arc (2025) | `9ef9583435893b5ace49db5fcfba12b8` | r467--8katnn5p | 360p/720p/1080p | ✅ |

---

## 🔗 ملاحظة حول web7180xx.faselhdx.bid

هذا الدومين هو مجرد **mirror redirect** لـ `www.fasel-hd.cam`:
```
GET https://web7180xx.faselhdx.bid/* → 302 → https://www.fasel-hd.cam/*
```
لا يوجد فرق في المحتوى أو API. استخدم `www.fasel-hd.cam` مباشرة.

---

## ✅ الخلاصة النهائية للتطبيق

```
الاستراتيجية المُثلى:
1. البحث → GitHub JSON (بدون CF) → slug → URL
2. صفحة المحتوى → player_token (curl مباشر، لا يحتاج browser)
3. Cache check → موجود؟ → أرسل master URL فوراً
4. Cache miss → Hopx playwright (~8-10 ثانية) → master URL
5. خزّن في cache 5-6 ساعات (expiry_ts - now)
6. أرسل master URL للمستخدم → يشغله مباشرة بدون proxy
```

**المميزات مقارنة بالكود الحالي:**
- ❌ الكود الحالي: chain-fetch → "Token Expired" 80% من الوقت → isEmbed fallback → WebView بطيء
- ✅ الجديد: Hopx browser مرة واحدة → master URL مستقر 5-6 ساعات → تشغيل مباشر
