# Arabic Anime Scraper للتطبيق Anime Nova

## 📋 الوصف

هذا المشروع يوفر مكاشط متقدم لسحب روابط الفيديو والحلقات من المواقع العربية لمسلسلات الأنمي.

## 🎯 الميزات

- ✅ **دعم مصادر متعددة**: MyAnime و Anime4up وأكثر
- ✅ **البحث المتقدم**: البحث في جميع المصادر بالتوازي
- ✅ **استخراج الحلقات**: الحصول على جميع حلقات المسلسل
- ✅ **روابط متعددة**: الحصول على روابط من جودات مختلفة
- ✅ **معالجة الأخطاء**: إعادة محاولة التقديم والتعامل مع الأعطال
- ✅ **دعم HLS و Direct**: دعم أنواع فيديو مختلفة

## 📦 المتطلبات

```bash
npm install axios cheerio
npm install --save-dev @types/cheerio
```

## 🚀 الاستخدام

### 1. البحث عن أنمي

```typescript
import ArabicAnimeScraperManager from './scrapers/arabic-anime-scraper';

const manager = new ArabicAnimeScraperManager();

// البحث في مصدر واحد
const results = await manager.search('myAnime', 'ناروتو');

// البحث في جميع المصادر
const allResults = await manager.searchAll('ناروتو');
```

### 2. الحصول على الحلقات

```typescript
const episodes = await manager.getEpisodes('myAnime', 'anime-id');

episodes.forEach((ep) => {
  console.log(`الحلقة ${ep.episodeNumber}: ${ep.title}`);
});
```

### 3. الحصول على روابط الفيديو

```typescript
// من مصدر واحد
const links = await manager.getVideoLinks('myAnime', 'anime-id', 1);

// من جميع المصادر
const allLinks = await manager.getAllVideoLinks('anime-id', 1);
```

## 🧪 الاختبار

```bash
# تشغيل الاختبار العام
pnpm run scrape

# اختبار MyAnime
pnpm run scrape:myAnime

# اختبار Anime4up
pnpm run scrape:anime4up
```

## 📁 هيكل الملفات

```
scripts/src/scrapers/
├── arabic-anime-scraper.ts      # الفئة الأساسية والمكاشط
├── test-myAnime.ts              # اختبار MyAnime
├── test-anime4up.ts             # اختبار Anime4up
└── scraper-example.ts           # مثال استخدام
```

## 🔌 الواجهات البرمجية

### AnimeEpisode

```typescript
interface AnimeEpisode {
  episodeNumber: number;
  title: string;
  description?: string;
  uploadDate?: string;
  videoLinks: VideoLink[];
  duration?: string;
}
```

### VideoLink

```typescript
interface VideoLink {
  source: string;      // اسم المصدر
  quality: string;     // الجودة (720p, 1080p, etc)
  url: string;         // رابط الفيديو
  type?: 'HLS' | 'Direct';
}
```

### AnimeData

```typescript
interface AnimeData {
  id: string;
  title: string;
  arabicTitle?: string;
  year?: number;
  episodes: AnimeEpisode[];
  source: string;
  totalEpisodes?: number;
}
```

## 🛠️ إضافة مصدر جديد

```typescript
import { ArabicAnimeScraper } from './arabic-anime-scraper';

class NewSourceScraper extends ArabicAnimeScraper {
  constructor() {
    super('https://example.com', 'NewSource');
  }

  async searchAnime(query: string) {
    // يجب تطبيق البحث
  }

  async getEpisodes(animeId: string) {
    // يجب تطبيق استخراج الحلقات
  }

  async getVideoLinks(animeId: string, episodeNumber: number) {
    // يجب تطبيق استخراج روابط الفيديو
  }
}

// تسجيل المصدر
manager.registerScraper('newSource', new NewSourceScraper());
```

## 📝 ملاحظات مهمة

1. **التحديثات المستمرة**: قد تتغير بنية المواقع العربية، مما يتطلب تحديث المنتقيات (CSS Selectors)
2. **احترام الشروط**: تأكد من احترام سياسة كل موقع
3. **معالجة الأخطاء**: المكاشط يحتوي على معالجة شاملة للأخطاء
4. **إعادة المحاولة**: يتم إعادة محاولة الطلبات الفاشلة تلقائياً

## 🐛 استكشاف الأخطاء

إذا لم تجد نتائج:

1. تحقق من اتصالك بالإنترنت
2. تأكد من أن الموقع متاح (قد يكون مغلقاً أو مغيراً)
3. تحقق من المنتقيات (CSS Selectors) في الكود
4. تشغيل الاختبار للحصول على رسائل خطأ مفصلة

## 📚 المراجع

- [Cheerio Documentation](https://cheerio.js.org/)
- [Axios Documentation](https://axios-http.com/)
- [Web Scraping Best Practices](https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML)

## ⚖️ الترخيص

MIT License

---

**ملاحظة**: هذا المشروع مخصص للاستخدام التعليمي فقط. استخدمه بمسؤولية واحترم حقوق الملكية الفكرية.
