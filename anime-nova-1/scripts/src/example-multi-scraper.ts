/**
 * مثال على استخدام MultiSiteScraperManager
 * يوضح كيفية استخدام المكاشط المتعددة للحصول على روابط الفيديو
 */

import { MultiSiteScraperManager } from './scrapers/multi-site-scraper';

async function main() {
  const manager = new MultiSiteScraperManager();

  console.log('🔍 جاري البحث عن أنمي "ناروتو" في جميع المصادر...');
  console.log('─'.repeat(60));

  // البحث عن أنمي في جميع المصادر
  const searchResults = await manager.searchAllSources('ناروتو');
  Object.entries(searchResults).forEach(([source, results]) => {
    if (results.length > 0) {
      console.log(`✅ ${source}: وجدنا ${results.length} نتائج`);
      results.slice(0, 2).forEach((r) => {
        console.log(`   - ${r.title}`);
      });
    } else {
      console.log(`❌ ${source}: لم نجد نتائج`);
    }
  });

  console.log('\n📺 جاري جلب الحلقات...');
  console.log('─'.repeat(60));

  // جلب جميع الحلقات من جميع المصادر
  const episodes = await manager.getAllEpisodes('naruto');
  console.log(`\n✅ وجدنا ${episodes.length} حلقة`);

  if (episodes.length > 0) {
    const firstEpisode = episodes[0];
    console.log(`\n🎬 الحلقة الأولى: ${firstEpisode.episode}`);
    console.log(`   عدد روابط الفيديو: ${firstEpisode.videoLinks.length}`);
    console.log(`\n   الروابط المتاحة:`);
    firstEpisode.videoLinks.forEach((link) => {
      console.log(`   - ${link.server} (${link.quality}): ${link.name}`);
    });
  }

  console.log('\n✨ انتهى المثال بنجاح!');
}

main().catch(console.error);
