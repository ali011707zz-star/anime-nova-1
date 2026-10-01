# FluxTV.cc — نتائج الهندسة العكسية الكاملة
> تاريخ التحليل: 2026-07-18  
> الموقع: `https://fluxtv.cc`  
> الطريقة: تحليل `sources.js` + JS bundles + API testing مباشر

---

## 📌 المصادر المكتشفة (من sources.js)

```javascript
// https://fluxtv.cc/sources.js — الملف العام للمصادر
const SOURCES_LIST = [
  { id: 'flux1',    name: 'Flux 1',    → vaplayer.ru/embed/movie/{id} },
  { id: 'flux2',    name: 'Flux 2',    → nflixmovies.app/movie/{id}   },  // Best
  { id: 'flux3',    name: 'Flux 3',    → vidbolt.xyz/movie/{id}       },
  { id: 'vares',    name: 'Vares',     → vares.top/movie/{id}         },
  { id: 'november', name: 'November',  → vidfast.me/movie/{id}        },
]
```

---

## 🔥 المصدر 1: Flux 2 — nflixmovies.app ← الأهم (API مباشر بدون browser)

### الاكتشاف الكبير: API يعمل بدون browser نهائياً!

```
GET https://stream.nflixmovies.app/api/v1/play?id={tmdb_id}&type=movie
GET https://stream.nflixmovies.app/api/v1/play?id={tmdb_id}&type=tv&season={s}&episode={e}

Authorization: Bearer tvk_1olLFNOIoDx6xfMYo_RKovws8zFe_hhyUfgf3E0NNR8
Origin: https://nflixmovies.app
```

### نموذج الرد:
```json
{
  "ok": true,
  "instantPlay": true,
  "directPlay": false,
  "hlsUrl": "https://cdn.nflixmovies.app/api/hls-proxy/manifest?key={base64_key}",
  "upstream": "https://free.flixnest.app/api/dailymotion/media/{video_id}.m3u8?t={jwt}",
  "provider": "flixnest",
  "label": "FlixNest Dailymotion 720p",
  "probe": { "ok": true, "latencyMs": 1224, "kind": "hls" },
  "tier": "peer:flixnest-primary",
  "subtitleTracks": []
}
```

### Providers الداخلية التي تستخدمها:
| Provider | CDN | Content |
|----------|-----|---------|
| `flixnest` | `free.flixnest.app/api/dailymotion/` | أنمي + مسلسلات (Dailymotion 720p) |
| `lookmovie` | `srv*.avizzing.store/aes/0/...` | أفلام (AES HLS من lookmovie2.to) |

### فك تشفير الـ hlsUrl key:
```python
import base64
key = "aHR0cHM6Ly9..."  # base64 part from hlsUrl
decoded = base64.b64decode(key + "==").decode()
# النتيجة: "upstream_url\nreferer\nreferer"
parts = decoded.split('\n')
# parts[0] = direct HLS URL
# parts[1] = Referer header
```

### مثال حقيقي (Kimetsu Mugen Train):
```
upstream: https://srv308.avizzing.store/aes/0/b5878a7d.../index.m3u8
Referer:  https://www.lookmovie2.to/
```

### مثال أنمي (Demon Slayer Infinity Castle 2025):
```
upstream: https://free.flixnest.app/api/dailymotion/media/x9t3tc6.m3u8?t={jwt}
Referer:  https://free.flixnest.app/
```

### Attack on Titan S1E1:
```
upstream: https://free.flixnest.app/api/dailymotion/media/x356ipz.m3u8?t={jwt}
```

### كود TypeScript للاستخدام:
```typescript
const NFLIXMOVIES_TOKEN = 'tvk_1olLFNOIoDx6xfMYo_RKovws8zFe_hhyUfgf3E0NNR8';

async function getNflixMoviesSource(tmdbId: number, type: 'movie' | 'tv', season?: number, episode?: number) {
  const params = new URLSearchParams({ id: String(tmdbId), type });
  if (season) params.set('season', String(season));
  if (episode) params.set('episode', String(episode));
  
  const res = await fetch(`https://stream.nflixmovies.app/api/v1/play?${params}`, {
    headers: {
      'Authorization': `Bearer ${NFLIXMOVIES_TOKEN}`,
      'Origin': 'https://nflixmovies.app',
    }
  });
  
  const data = await res.json();
  if (!data.ok) return null;
  
  // خيار 1: استخدم upstream مباشرة (مع Referer)
  const upstreamUrl = data.upstream;
  
  // خيار 2: استخدم hlsUrl (عبر nflixmovies proxy — أكثر استقراراً)
  const hlsUrl = data.hlsUrl;
  
  return {
    url: hlsUrl,
    rawUrl: upstreamUrl,
    provider: data.provider,  // "flixnest" | "lookmovie"
    label: `NflixMovies · ${data.label}`,
    probe: data.probe,
  };
}
```

---

## 🔥 المصدر 2: Flux 3 — vidbolt.xyz ← API مباشر بدون browser

### API Endpoint:
```
GET https://vidbolt.xyz/api/proxy-vidcdn?b64path={base64_path}

حيث base64_path = base64(/scrape/{Extractor}/{type}/{id}?params)
```

### Extractors المتاحة (مكتشفة من error message):
```
MovieBox, Vaplayer, ShowBox, VidNest, XPass, NextBox, StreamVault, 4KHDHub, BollyFlix, MoviesDrive, HDhub4u
```

### نتائج الاختبار الفعلي:
| Extractor | حالة | Provider CDN |
|-----------|------|--------------|
| `Vaplayer` | ✅ يعمل | `nicheauthorityengine.site` (M3U8 مشفر) |
| `VidNest` | ✅ يعمل | `hlmv.tripplestream.online` (HLS) |
| `StreamVault` | ✅ يعمل | `streamvaultsrc.click` + `i-arch-400.kriss424did.com` |
| `ShowBox` | ❌ فارغ | - |
| `NextBox` | ❌ فارغ | - |
| `XPass` | ❌ فارغ | - |

### كود TypeScript:
```typescript
async function getVidboltSource(tmdbId: number, type: 'movie' | 'tv', season?: number, episode?: number) {
  const id = `tmdb${tmdbId}`;
  const mediaType = type === 'movie' ? 'movie' : 'tv';
  
  const results = [];
  
  for (const extractor of ['Vaplayer', 'VidNest', 'StreamVault', '4KHDHub']) {
    const params = new URLSearchParams({ tmdbId: String(tmdbId) });
    if (season) params.set('season', String(season));
    if (episode) params.set('episode', String(episode));
    
    const path = `/scrape/${extractor}/${mediaType}/${id}?${params}`;
    const b64path = btoa(path);
    
    const res = await fetch(`https://vidbolt.xyz/api/proxy-vidcdn?b64path=${b64path}`, {
      headers: { Origin: 'https://vidbolt.xyz', Referer: 'https://vidbolt.xyz/' }
    });
    const data = await res.json();
    
    if (data.sources?.length > 0) {
      // الـ URLs تبدأ بـ /proxy/ → nflixmovies.app هو الـ wormhole proxy
      const sources = data.sources.map(s => ({
        url: s.url.startsWith('/proxy/') ? `https://wormhole.filmu.in${s.url}` : s.url,
        label: `VidBolt · ${extractor} · ${s.name}`,
      }));
      results.push(...sources);
    }
  }
  
  return results;
}
```

### ملاحظة مهمة:
- الـ URLs التي ترجع بـ `/proxy/m3u8?url=...` تحتاج prepend: `https://wormhole.filmu.in`
- `wormhole.filmu.in` هو proxy server لـ vidbolt.xyz

---

## 📦 المصدر 3: Flux 1 — vaplayer.ru / nextgencloudfabric.com

### البنية:
```
vaplayer.ru/embed/movie/{tmdb_id}
  → يحمّل: nextgencloudfabric.com/embed/movie/{tmdb_id}
    → Backend API: streamdata.vaplayer.ru/api.php + vidapi.ru
```

### ملاحظات:
- الـ API يتطلب session cookie من الصفحة
- `streamdata.vaplayer.ru/api.php` يعيد 404 بدون session صحيح
- يحتاج تحليل JS أعمق لفهم structure الـ params

---

## 📦 المصدر 4: Vares — vares.top

### البنية:
```
vares.top/movie/{tmdb_id}
  → Next.js page يُعيد /embed/movie/{tmdb_id} كـ iframe src
  → r.vares.top/api/script.js (tracking only)
```

### ملاحظة:
- iframe wrapper بسيط → backend embed آخر داخلي
- يحتاج browser لتنفيذ الـ Next.js JS لمعرفة الـ embed backend الفعلي

---

## 📦 المصدر 5: November — vidfast.me / vidfast.vc

### البنية:
```
vidfast.me/movie/{tmdb_id}
  → Next.js app (vidfast.vc برعاية)
  → Analytics: umami.vidfast.vc/script.js
```

### ملاحظة:
- Next.js app مع dynamic routing
- يحتاج تحليل chunk أكبر أو browser testing للـ API
- قد يكون له API مشابه لـ vidfast.vc الذي لدينا مدمج

---

## 🌟 المصادر الإضافية (من HTML fluxtv.cc):

### vidvault.ru (مذكور في HTML كـ hidden source):
```javascript
movie: id => `https://vidvault.ru/movie/${id}`,
tv: (id, s, e) => `https://vidvault.ru/tv/${id}/${s}/${e}`
```
- Next.js app
- لم يُحلَّل بعد

### flixnest.app (backend لـ nflixmovies):
```
https://free.flixnest.app/api/dailymotion/media/{video_id}.m3u8?t={jwt}
```
- Dailymotion content بـ JWT auth
- يمكن استدعاؤه مباشرة إذا عرفنا الـ video_id

### chasetv.cc:
- موقع مشابه لـ fluxtv.cc (fork/clone)

---

## 📊 مقارنة المصادر وأولوية التطبيق

| المصدر | يحتاج browser؟ | موثوقية | أنمي؟ | أفلام؟ | أولوية |
|--------|---------------|---------|-------|--------|--------|
| **nflixmovies (Flux 2)** | ❌ لا | ⭐⭐⭐⭐⭐ | ✅ Dailymotion | ✅ LookMovie | 🥇 الأول |
| **vidbolt (Flux 3)** | ❌ لا | ⭐⭐⭐⭐ | ❓ اختبار | ✅ | 🥈 الثاني |
| **vaplayer (Flux 1)** | ✅ نعم | ⭐⭐⭐ | ❓ | ✅ | 🥉 الثالث |
| **vidfast.me** | ✅ نعم | ⭐⭐⭐ | ❓ | ✅ | احتياطي |
| **vares** | ✅ نعم | ⭐⭐ | ❓ | ✅ | احتياطي |

---

## 🚀 خطة التطبيق في anime-nova

### الأولوية 1: nflixmovies (بدون browser — فوري)

**أفلام أنمي (animation.ts):**
```typescript
// scraper: nflixmovies_flux2
async function getNflixMoviesAnimation(tmdbId: number) {
  const res = await fetch(
    `https://stream.nflixmovies.app/api/v1/play?id=${tmdbId}&type=movie`,
    { headers: { Authorization: `Bearer tvk_1olLFNOIoDx6xfMYo_RKovws8zFe_hhyUfgf3E0NNR8` } }
  );
  const data = await res.json();
  if (!data.ok || !data.hlsUrl) return [];
  return [{
    url: data.hlsUrl,  // عبر cdn.nflixmovies.app (proxy مستقر)
    rawUrl: data.upstream,  // direct CDN URL (قد يحتاج Referer)
    label: `NflixMovies · ${data.label}`,
    headers: data.upstream?.includes('flixnest') 
      ? { Referer: 'https://free.flixnest.app/' } 
      : { Referer: 'https://www.lookmovie2.to/' },
  }];
}
```

**مسلسلات أنمي (anime.ts):**
```typescript
async function getNflixMoviesAnime(tmdbId: number, season: number, episode: number) {
  const res = await fetch(
    `https://stream.nflixmovies.app/api/v1/play?id=${tmdbId}&type=tv&season=${season}&episode=${episode}`,
    { headers: { Authorization: `Bearer tvk_1olLFNOIoDx6xfMYo_RKovws8zFe_hhyUfgf3E0NNR8` } }
  );
  const data = await res.json();
  if (!data.ok) return [];
  return [{ url: data.hlsUrl, label: `NflixMovies · ${data.label}` }];
}
```

### الأولوية 2: vidbolt (بدون browser — فوري)

```typescript
async function getVidboltSources(tmdbId: number, type: 'movie'|'tv', season?: number, episode?: number) {
  const id = `tmdb${tmdbId}`;
  const params = new URLSearchParams({ tmdbId: String(tmdbId) });
  if (season) { params.set('season', String(season)); params.set('episode', String(episode!)); }
  
  const sources = [];
  for (const ext of ['Vaplayer', 'VidNest', 'StreamVault']) {
    const path = `/scrape/${ext}/${type}/${id}?${params}`;
    const b64 = Buffer.from(path).toString('base64');
    try {
      const r = await fetch(`https://vidbolt.xyz/api/proxy-vidcdn?b64path=${b64}`, {
        headers: { Origin: 'https://vidbolt.xyz' }, signal: AbortSignal.timeout(15000)
      }).then(r => r.json());
      for (const s of r.sources || []) {
        const url = s.url.startsWith('/proxy/') ? `https://wormhole.filmu.in${s.url}` : s.url;
        sources.push({ url, label: `VidBolt·${ext}·${s.name}` });
      }
    } catch {}
  }
  return sources;
}
```

---

## 🔑 ملخص الـ Secrets والـ Tokens

| Key | Value | Used By |
|-----|-------|---------|
| `nflixmovies_token` | `tvk_1olLFNOIoDx6xfMYo_RKovws8zFe_hhyUfgf3E0NNR8` | stream.nflixmovies.app |
| `vidbolt_proxy` | `https://wormhole.filmu.in` | vidbolt source URLs |

---

## 🧪 نتائج الاختبار الفعلي

### nflixmovies.app — مختبر ✅
| المحتوى | tmdb_id | Provider | حالة |
|---------|---------|----------|------|
| Kimetsu Mugen Train (2020) | 438631 | LookMovie/avizzing.store | ✅ |
| Demon Slayer Infinity Castle (2025) | 1064028 | FlixNest Dailymotion | ✅ |
| Attack on Titan S1E1 (TV) | 1429/S1E1 | FlixNest Dailymotion | ✅ |

### vidbolt.xyz — مختبر ✅
| Extractor | المحتوى | حالة |
|-----------|---------|------|
| Vaplayer | Kimetsu 438631 | ✅ M3U8 |
| VidNest | Kimetsu 438631 | ✅ HLS (hollymoviehd) |
| StreamVault | Kimetsu 438631 | ✅ HLS |
| ShowBox | Kimetsu 438631 | ❌ فارغ |
| NextBox | Kimetsu 438631 | ❌ فارغ |
| XPass | Kimetsu 438631 | ❌ فارغ |

---

## ⚠️ ملاحظات مهمة

1. **nflixmovies token** مكتشف من player.js العام — قد تتغير مع updates
2. **vidbolt b64path** يجب أن يكون standard base64 (ليس URL-safe)
3. **wormhole.filmu.in** proxy يُعيد الـ URLs — لا يحتاج auth
4. **hlsUrl من nflixmovies** مستقر أكثر من upstream (الـ proxy يتعامل مع headers تلقائياً)
5. **FlixNest Dailymotion** يستخدم JWT مؤقت (expiry ~30 دقيقة في الـ token)

---

## 🔍 مصادر إضافية للتحليل اللاحق

| الموقع | الـ Backend | أولوية التحليل |
|--------|-----------|----------------|
| `vidvault.ru` | Unknown Next.js | متوسطة |
| `flixnest.app` | Dailymotion API | عالية (مكتشف بالفعل) |
| `r.vares.top` | Tracking/Analytics | منخفضة |
| `streamdata.vaplayer.ru/api.php` | Unknown (404 حالياً) | متوسطة |
| `vidapi.ru` | Unknown | متوسطة |
