---
name: SAnime Deep Analysis — Video System & Scraper Blueprint
description: تحليل كامل لنظام الفيديو في SAnime — UA gate، episode IDs، CDN URLs، search API
---

## ✅ الاكتشافات الحاسمة

### 1. User-Agent Gate (الأهم!)
```
User-Agent: IBRAHIMSEVEN   → ep array مملوء ✅
User-Agent: OtakuTime      → ep array مملوء ✅
User-Agent: SevenZero      → ep: [] فارغة ❌
User-Agent: okhttp/4.9.3   → ep: [] فارغة ❌
User-Agent: curl/...       → ep: [] فارغة ❌
```
**السبب:** السيرفر يفلتر بناءً على User-Agent كـ brand check للتطبيق.

---

### 2. API الرئيسي
**Base URL:** `https://app.sanime.net/function/h10.php?page=`

| endpoint | المطلوب | الاستجابة |
|----------|---------|-----------|
| `info&id={animeId}` | UA: IBRAHIMSEVEN | كامل مع ep array |
| `search&name={query}` | UA: IBRAHIMSEVEN | `[{id, name, image, year, status}]` |
| `latest` | أي UA | 264+ أنمي حديثة + 1840 anime field |
| `genre&id=genre0` | أي UA | 1200+ أنمي حسب التصنيف |
| `openAnd&id={b64}` | UA: IBRAHIMSEVEN | `{hd, sd}` URLs |
| `images` | أي UA | صور البانر |

---

### 3. Episode Object Structure
```json
{
  "id": "653EP-1205",       // format: {animeId}EP-{epNumber}
  "name": "الحلقة 1205",   // Arabic display name
  "epName": 1205,           // episode number (integer)
  "date": "2026-06-28 02:21:40.000000"
}
```
**الـ ep array هو 2D array (صفحات من 25 حلقة):**
```js
ep[pageIndex][episodeIndex]  // ep[0] = الحلقات الأحدث
```

---

### 4. Video CDN — server.sanime.net
```
HD:  https://server.sanime.net/Video/{animeId}/{epNumber}.mp4
SD:  https://server.sanime.net/Video/{animeId}/{epNumber}SD.mp4
```
**مميزات:**
- ✅ لا يحتاج أي auth أو headers
- ✅ يدعم Range requests (HTTP 206) — streaming مباشر
- ✅ يدعم HEAD requests — فحص الوجود
- ✅ يعمل بدون Referer
- ❌ الحلقات القديمة قد تكون 404 (server.sanime.net يخزن الجديدة فقط)

**للحصول على URL من openAnd (أكثر موثوقية):**
```python
ep_obj = {"id": "653EP-1205", "name": "الحلقة 1205", "epName": 1205, "date": "..."}
b64 = base64.b64encode(urllib.parse.unquote_to_bytes(urllib.parse.quote(json.dumps(ep_obj)))).decode()
url = f"https://app.sanime.net/function/h10.php?page=openAnd&id={urllib.parse.quote(b64)}"
# → {"hd": "https://server.sanime.net/Video/653/1205.mp4", "sd": "...SD.mp4"}
```

---

### 5. Database Coverage
- **إجمالي الأنمي:** ~12,000 (IDs وصلت 11,979)
- **أنمي بحلقات مرفوعة:** ~289 anime فريدة (في `latest`)
- **أكثر أنمي شموليةً:** Detective Conan (1199 حلقة), Digimon (37), Mao (14)
- **تغطية اللغة العربية:** كل شيء بالعربي (أسماء الحلقات، التصنيف، القصة)
- **عمر أقدم حلقة مرفوعة:** نوفمبر 2021 (Conan ep1 في DB لكن ملف 404)

---

### 6. Search API
```
GET h10.php?page=search&name={query}  + User-Agent: IBRAHIMSEVEN
```
- يبحث بالأسماء الإنجليزية/الرومانية ✅
- البحث بالعربية لا يعمل (Unicode encoding issue في URL) ❌
- النتيجة: `[{id, name, image, year, status}]` بدون MAL/AniList IDs

---

### 7. خوارزمية الـ Scraper الكاملة
```typescript
async function getSAnimeSources(title: string, english: string, ep: number, animeId?: string) {
  const UA = 'IBRAHIMSEVEN';
  
  // 1. البحث
  const searchRes = await fetch(`https://app.sanime.net/function/h10.php?page=search&name=${encodeURIComponent(english || title)}`,
    { headers: { 'User-Agent': UA } });
  const results = await searchRes.json();
  
  // 2. similarity match (كما في Nova)
  const match = results.find(r => similarity(r.name, english) > 0.5);
  if (!match) return [];
  
  // 3. جلب info مع episodes
  const infoRes = await fetch(`https://app.sanime.net/function/h10.php?page=info&id=${match.id}`,
    { headers: { 'User-Agent': UA } });
  const info = await infoRes.json();
  
  // 4. إيجاد الحلقة
  const allEps = info.ep.flat(); // flatten 2D array
  const episode = allEps.find(e => e.epName === ep || e.epName === String(ep));
  if (!episode) return [];
  
  // 5. URL مباشر أولاً
  const directUrl = `https://server.sanime.net/Video/${match.id}/${ep}.mp4`;
  const headOk = await fetch(directUrl, { method: 'HEAD', headers: { 'User-Agent': UA } });
  
  if (headOk.ok) {
    return [{ url: directUrl, quality: 'HD', source: 'sanime' }];
  }
  
  // 6. openAnd كـ fallback
  const epB64 = btoa(unescape(encodeURIComponent(JSON.stringify(episode))));
  const openRes = await fetch(`https://app.sanime.net/function/h10.php?page=openAnd&id=${encodeURIComponent(epB64)}`,
    { headers: { 'User-Agent': UA } });
  const links = await openRes.json();
  
  return [
    { url: links.hd, quality: 'HD', source: 'sanime' },
    { url: links.sd, quality: 'SD', source: 'sanime' },
  ].filter(s => s.url && !s.url.includes('sample-videos.com'));
}
```

---

### 8. ملاحظات مهمة للتطبيق
- **UA البرنامجي:** `IBRAHIMSEVEN` → SAnime brand | `OtakuTime` → OtakuTime brand
- **الـ ep ID الصريح:** `{animeId}EP-{epNumber}` — يمكن بناؤه بدون API
- **sample-videos.com:** إذا ظهر → الحلقة غير مرفوعة بعد → تجاهله
- **VPS IP:** لا حظر على server.sanime.net من VPS (اختُبر ✅)
- **Timeout:** openAnd يستجيب في <1s عادةً
- **تغطية المحتوى:** أنمي 2021-2026 الأحدث + طويلة الأمد (Conan, Digimon)
- **لا DRM:** MP4 مباشر بدون تشفير

---

### 9. البيانات الوصفية المتاحة (metadata)
من `latest` response (1840 أنمي):
```json
{
  "id": "11979",
  "name": "Dogulwang: Tomb Raider King",
  "image": "https://app.sanime.net/api/anime/11979/image.jpg",
  "epName": "صيف 2026",
  "date": "2026-07-08",
  "story": "قصة عربية كاملة...",
  "genre": "مغامرات,أكشن,خيال"
}
```
من `info&id=`:
- `score`, `anime_age`, `anime_status`, `anime_release`, `start_date`, `type`
- `ep[][]` (2D), `season[]`, `other[]` (related anime), `genre[]`, `reaction[]`

---

### 10. العلاقة بين SAnime IDs و AniList/MAL
**لا يوجد mapping مدمج.** المطابقة تتم عبر:
1. اسم الأنمي (similarity match)
2. سنة الإصدار (cross-check)
3. IDs SAnime هي internal IDs فقط (لا علاقة بـ MAL/AniList)

**Why:** SAnime بنى قاعدة بياناته الخاصة منفصلة عن المصادر الأخرى.

**How to apply:** عند إضافة scraper → استخدم `similarity()` الموجود في Nova + `anime_release` كـ tiebreaker.
