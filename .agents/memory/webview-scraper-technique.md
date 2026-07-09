---
name: WebView Scraper Technique for CF-Protected Sites
description: تقنية استخراج فيديو من مواقع محمية بـ Cloudflare عبر WebView في نوفا موبايل — للاستخدام مع مصادر متعددة
---

## المشكلة
مواقع كـ anime3rb, WitAnime, FaselHD, EgyDead, Wecima, AqwamTV تستخدم Cloudflare Managed Challenge — لا يمكن تجاوزها من السيرفر (حتى curl_cffi يفشل). cfProxy يرجع 403.

## الحل: WebView في نوفا موبايل

### الفلو العام
```
المستخدم يختار المصدر
        ↓
WebView مخفي يفتح صفحة الحلقة في الخلفية
        ↓
Cloudflare ترى متصفح حقيقي (Chromium) → تسمح ✅
        ↓
onLoadEnd → inject JavaScript يستخرج رابط الفيديو
        ↓
WebView تُغلق — مشغّل نوفا الداخلي يشغّل الرابط ✅
```

### المدة المتوقعة
- CF challenge solve: 3–8 ثانية
- Page load + JS extraction: 1–3 ثانية
- **المجموع: 6–14 ثانية**
- المستخدم يرى مشغّل نوفا الداخلي فقط (WebView مخفية)

### التقنية في الكود (React Native)
```tsx
// في watch.tsx أو مكوّن المصدر
const [webviewUrl, setWebviewUrl] = useState<string|null>(null);

// عند اختيار مصدر CF-محمي:
setWebviewUrl('https://site.com/episode/slug/1');

// WebView مخفية:
{webviewUrl && (
  <WebView
    style={{ width: 0, height: 0, opacity: 0 }}
    source={{ uri: webviewUrl }}
    javaScriptEnabled
    injectedJavaScriptBeforeContentLoaded={EXTRACT_JS}
    onMessage={(e) => {
      const { videoUrl } = JSON.parse(e.nativeEvent.data);
      if (videoUrl) {
        setWebviewUrl(null);        // أغلق WebView
        playVideo(videoUrl);        // شغّل في المشغّل الداخلي
      }
    }}
  />
)}
```

### JavaScript الاستخراج لكل موقع

**anime3rb (vid3rb CDN):**
```js
const EXTRACT_JS = `
(function() {
  function tryExtract() {
    const links = document.querySelectorAll('source[src], video[src]');
    for (const el of links) {
      const src = el.getAttribute('src') || '';
      if (src.includes('vid3rb') || src.includes('/cdn/')) {
        window.ReactNativeWebView.postMessage(JSON.stringify({ videoUrl: src }));
        return true;
      }
    }
    // Fallback: regex on page text
    const m = document.body.innerHTML.match(/https?:\\/\\/[^"'\\s<>]+vid3rb[^"'\\s<>]+\\.mp4/);
    if (m) { window.ReactNativeWebView.postMessage(JSON.stringify({ videoUrl: m[0] })); return true; }
    return false;
  }
  if (!tryExtract()) setTimeout(tryExtract, 3000);
  document.addEventListener('DOMContentLoaded', tryExtract);
  window.addEventListener('load', tryExtract);
})();
`;
```

**WitAnime:**
- URL pattern: `https://witanime.pics/episode/{slug}/{ep}`
- Video CDN: witanime CDN / streamwish / vidmoly
- Extract: `source[src]` أو regex على HTML

**FaselHD:**
- URL pattern: `https://faselhd.pro/{slug}/episode-{ep}`
- Video CDN: fastcdn / Cloudflare CDN
- Extract: `jwplayer().getPlaylistItem().file` أو `source[src]`

**EgyDead:**
- URL pattern: `https://tv10.egydead.live/watch/{slug}/episode-{ep}`
- Video CDN: عادةً streamwish / doodstream
- Extract: redirect iframe → `source[src]`

**Wecima:**
- URL pattern: `https://wecima.gold/watch/{slug}-ep{ep}`
- Video CDN: fastvip.space / cdn-centaurus.com
- Extract: JS variable أو `source[src]`

**AqwamTV (أكوام):**
- URL pattern: `https://www.aqwam.com/{slug}/episode-{ep}`
- Video CDN: akwam CDN
- Extract: `source[src]` أو `file:` في JS

**FaselHD فاصل إعلاني:**
- Skip button: inject JS يضغط الزر تلقائياً بعد 5 ثوانٍ

## مصادر الأنيميشن المناسبة لهذه التقنية
- WitAnime (أنيميشن عربي)
- FaselHD (أنيميشن عربي)
- EgyDead (أنيميشن + أفلام)
- Wecima (أنيميشن + أفلام)
- AqwamTV (أنيميشن)
- anime3rb (أنمي مدبلج/مترجم)

## ملاحظات مهمة
- WebView UA يجب يكون Desktop Chrome لتجاوز CF بدون تحدي تفاعلي:
  `Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/124.0.0.0 Safari/537.36`
- CF Managed Challenge (cType: interactive) تحل تلقائياً في WebView بدون تدخل المستخدم في أغلب الأحيان
- يجب وضع timeout (15s) وإظهار رسالة خطأ إذا لم يُستخرج الرابط

**Why:** anime3rb و مواقع عربية مشابهة تستخدم CF Managed Challenge — الوحيد اللي يحلها هو متصفح حقيقي (WebView). هذه التقنية تجعلها تظهر كمصادر عادية في نوفا موبايل بدون أن يرى المستخدم الفرق.

**How to apply:** عند إضافة أي مصدر جديد محمي بـ CF على الموبايل — استخدم هذا النمط بدلاً من API server scraping.
