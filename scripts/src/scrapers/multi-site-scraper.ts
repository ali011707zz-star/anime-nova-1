/**
 * Multi-Site Arabic Anime Scraper
 * يدعم عدة مواقع عربية للحصول على روابط الفيديو والحلقات
 * 
 * المواقع المدعومة:
 * - MyAnime.fan ✓
 * - Anime4up.info ✓
 * - قصة عشق (Story Story) ✓
 * - AnimePhoenix ✓
 * - AnimeKayan ✓
 * - Shahid Anime ✓
 */

import axios, { AxiosInstance } from 'axios';
import * as cheerio from 'cheerio';

// ════════════════════════════════════════════════════════════════
// TYPES
// ════════════════════════════════════════════════════════════════

export interface VideoQuality {
  quality: '1080p' | '720p' | '480p' | '360p' | 'SD';
  url: string;
}

export interface AnimeEpisode {
  episode: number;
  title?: string;
  airDate?: string;
  videoLinks: VideoLink[];
}

export interface VideoLink {
  server: string;        // اسم السيرفر (MyAnime, Anime4up, etc)
  name: string;          // اسم جودة الفيديو
  url: string;           // رابط التشغيل
  quality: '1080p' | '720p' | '480p' | '360p' | 'SD';
  qualityRank: number;   // ترتيب الجودة (لغرض الترتيب)
  isDirect: boolean;     // هل الرابط مباشر أم iframe
  source: string;        // URL المصدر
}

export interface ScraperResponse {
  episodes: AnimeEpisode[];
  source: string;
  timestamp: number;
}

// ════════════════════════════════════════════════════════════════
// BASE SCRAPER
// ════════════════════════════════════════════════════════════════

class BaseScraper {
  protected axios: AxiosInstance;
  protected baseUrl: string;
  protected name: string;

  constructor(baseUrl: string, name: string) {
    this.baseUrl = baseUrl;
    this.name = name;
    this.axios = axios.create({
      baseURL: baseUrl,
      timeout: 10000,
      headers: {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
      },
    });
  }

  async getAnimeData(searchQuery: string): Promise<any> {
    throw new Error('Must implement getAnimeData');
  }

  protected getQualityRank(quality: string): number {
    const q = (quality || '').toLowerCase();
    if (q.includes('1080')) return 5;
    if (q.includes('720')) return 4;
    if (q.includes('480')) return 3;
    if (q.includes('360')) return 2;
    return 1;
  }
}

// ════════════════════════════════════════════════════════════════
// MyAnime.fan SCRAPER
// ════════════════════════════════════════════════════════════════

class MyAnimeScraper extends BaseScraper {
  constructor() {
    super('https://myanime.fan', 'MyAnime');
  }

  async searchAnime(query: string): Promise<any[]> {
    try {
      const response = await this.axios.get('/search', {
        params: { q: query },
      });
      const $ = cheerio.load(response.data);
      const results: any[] = [];

      $('.anime-item').each((_, el) => {
        const $el = $(el);
        results.push({
          id: $el.attr('data-id') || $el.find('a').attr('href')?.split('/').pop(),
          title: $el.find('.anime-title').text(),
          image: $el.find('img').attr('src'),
          url: $el.find('a').attr('href'),
        });
      });

      return results;
    } catch (error) {
      console.error('[MyAnime] Search error:', error);
      return [];
    }
  }

  async getEpisodes(animeId: string): Promise<AnimeEpisode[]> {
    try {
      const response = await this.axios.get(`/anime/${animeId}`);
      const $ = cheerio.load(response.data);
      const episodes: AnimeEpisode[] = [];

      $('.episode-item').each((_, el) => {
        const $el = $(el);
        const epNum = parseInt($el.find('.ep-number').text()) || 0;
        const videoLinks: VideoLink[] = [];

        $el.find('.video-link').each((__, linkEl) => {
          const $link = $(linkEl);
          const quality = $link.find('.quality').text() || 'SD';
          videoLinks.push({
            server: 'MyAnime',
            name: `MyAnime - ${quality}`,
            url: $link.attr('href') || '',
            quality: this.normalizeQuality(quality),
            qualityRank: this.getQualityRank(quality),
            isDirect: false,
            source: this.baseUrl,
          });
        });

        if (videoLinks.length > 0) {
          episodes.push({
            episode: epNum,
            title: $el.find('.ep-title').text(),
            videoLinks,
          });
        }
      });

      return episodes;
    } catch (error) {
      console.error('[MyAnime] Get episodes error:', error);
      return [];
    }
  }

  private normalizeQuality(
    quality: string
  ): '1080p' | '720p' | '480p' | '360p' | 'SD' {
    const q = (quality || '').toUpperCase();
    if (q.includes('1080')) return '1080p';
    if (q.includes('720')) return '720p';
    if (q.includes('480')) return '480p';
    if (q.includes('360')) return '360p';
    return 'SD';
  }
}

// ════════════════════════════════════════════════════════════════
// Anime4up.cam SCRAPER  (تم إصلاحه — النطاق الجديد + data-watch)
// البنية: /?search_param=animes&s={query} → /anime/{slug}/
//         /episode/{slug}-الحلقة-{N}/  → <li data-watch="URL">
// ════════════════════════════════════════════════════════════════

class Anime4upScraper extends BaseScraper {
  private readonly A4UP_BASE = 'https://anime4up.cam';
  private readonly A4UP_ALT  = 'https://w1.anime4up.rest';

  constructor() {
    super('https://anime4up.cam', 'Anime4up');
    // Override axios to add required headers for anime4up.cam
    this.axios = axios.create({
      baseURL: this.A4UP_BASE,
      timeout: 12000,
      headers: {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36',
        'Referer': 'https://anime4up.cam/',
        'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8',
        'Accept-Language': 'ar,en-US;q=0.9,en;q=0.8',
      },
    });
  }

  async searchAnime(query: string): Promise<any[]> {
    try {
      const response = await this.axios.get('/', {
        params: { search_param: 'animes', s: query },
      });
      const $ = cheerio.load(response.data);
      const results: any[] = [];

      // البنية المؤكدة: <a href="URL" class="overlay" aria-label="Title">
      $('a.overlay[aria-label]').each((_, el) => {
        const $el = $(el);
        const href = $el.attr('href') || '';
        if (!href.includes('/anime/')) return;
        const slug = href.replace(this.A4UP_BASE + '/anime/', '').replace(/\/$/, '');
        results.push({
          id: slug,
          title: $el.attr('aria-label') || slug,
          image: $el.closest('.anime-card, .card').find('img').attr('src') || '',
          url: href,
        });
      });

      return results;
    } catch (error) {
      console.error('[Anime4up] Search error:', error);
      return [];
    }
  }

  async getEpisodes(animeId: string): Promise<AnimeEpisode[]> {
    try {
      // جلب صفحة السلسلة للحصول على روابط الحلقات
      const seriesRes = await this.axios.get(`/anime/${animeId}/`);
      const $ = cheerio.load(seriesRes.data);
      const epLinks: string[] = [];

      // جمع روابط الحلقات من صفحة السلسلة
      $(`a[href*="${this.A4UP_BASE}/episode/"], a[href*="${this.A4UP_ALT}/episode/"]`).each((_, el) => {
        const href = $(el).attr('href') || '';
        if (!epLinks.includes(href)) epLinks.push(href);
      });

      if (!epLinks.length) return [];

      // استخراج بادئة الـ slug من أول رابط حلقة
      const firstDecoded = decodeURIComponent(epLinks[0]);
      const prefixMatch = firstDecoded.match(/\/episode\/([\s\S]+?)الحلقة-\d+/);
      if (!prefixMatch) return [];
      const slugPrefix = prefixMatch[1];

      // دالة لجلب مصادر حلقة واحدة
      const fetchEpSources = async (epNum: number): Promise<VideoLink[]> => {
        const epUrl = `${this.A4UP_BASE}/episode/${encodeURIComponent(slugPrefix + 'الحلقة-' + epNum)}/`;
        try {
          const epRes = await this.axios.get(epUrl);
          return this.parseDataWatch(epRes.data, epNum);
        } catch { return []; }
      };

      // بناء قائمة الحلقات من الروابط الموجودة
      const episodes: AnimeEpisode[] = [];
      const seenEps = new Set<number>();

      for (const link of epLinks) {
        const decoded = decodeURIComponent(link);
        const epMatch = decoded.match(/الحلقة-(\d+)/);
        if (!epMatch) continue;
        const epNum = parseInt(epMatch[1]);
        if (seenEps.has(epNum)) continue;
        seenEps.add(epNum);

        const videoLinks = await fetchEpSources(epNum);
        if (videoLinks.length > 0) {
          episodes.push({ episode: epNum, videoLinks });
        }
      }

      return episodes.sort((a, b) => a.episode - b.episode);
    } catch (error) {
      console.error('[Anime4up] Get episodes error:', error);
      return [];
    }
  }

  // مُحلِّل data-watch — البنية المؤكدة: <li data-watch="URL"><a>Label</a></li>
  private parseDataWatch(html: string, epNum: number): VideoLink[] {
    const videoLinks: VideoLink[] = [];
    const seenUrls = new Set<string>();
    const re = /<li[^>]*\sdata-watch=["'](https?:\/\/[^"']{5,})["'][^>]*>\s*<a[^>]*>([\s\S]*?)<\/a>/gi;
    let i = 0;
    for (const m of html.matchAll(re)) {
      const url = m[1].trim();
      if (seenUrls.has(url)) continue;
      seenUrls.add(url);
      const label = m[2].replace(/<[^>]+>/g, '').replace(/\s+/g, ' ').trim();
      videoLinks.push({
        server: 'Anime4up',
        name: `Anime4up · ${label || 'سيرفر ' + (++i)}`,
        url,
        quality: 'SD',
        qualityRank: this.getQualityRank('HD'),
        isDirect: false,
        source: this.A4UP_BASE,
      });
    }
    return videoLinks;
  }

  private normalizeQuality(
    quality: string
  ): '1080p' | '720p' | '480p' | '360p' | 'SD' {
    const q = (quality || '').toUpperCase();
    if (q.includes('1080')) return '1080p';
    if (q.includes('720')) return '720p';
    if (q.includes('480')) return '480p';
    if (q.includes('360')) return '360p';
    return 'SD';
  }
}

// ════════════════════════════════════════════════════════════════
// قصة عشق SCRAPER (Story Story)
// ════════════════════════════════════════════════════════════════

class StoryScraper extends BaseScraper {
  constructor() {
    super('https://www.storystory.net', 'قصة عشق');
  }

  async searchAnime(query: string): Promise<any[]> {
    try {
      const response = await this.axios.get('/search', {
        params: { s: query },
      });
      const $ = cheerio.load(response.data);
      const results: any[] = [];

      $('.post-item').each((_, el) => {
        const $el = $(el);
        results.push({
          id: $el.find('a').attr('href')?.split('/').filter(Boolean).pop(),
          title: $el.find('.post-title').text(),
          image: $el.find('img').attr('data-src') || $el.find('img').attr('src'),
          url: $el.find('a').attr('href'),
        });
      });

      return results;
    } catch (error) {
      console.error('[قصة عشق] Search error:', error);
      return [];
    }
  }

  async getEpisodes(animeId: string): Promise<AnimeEpisode[]> {
    try {
      const response = await this.axios.get(`/${animeId}`);
      const $ = cheerio.load(response.data);
      const episodes: AnimeEpisode[] = [];

      $('.ep-item').each((_, el) => {
        const $el = $(el);
        const epNum =
          parseInt($el.find('.ep-num').text().match(/\d+/)?.[0] ?? "0") || 0;
        const videoLinks: VideoLink[] = [];

        $el.find('.server-option').each((__, linkEl) => {
          const $link = $(linkEl);
          const quality = String($link.data('quality') || 'SD');
          videoLinks.push({
            server: 'قصة عشق',
            name: `قصة عشق - ${quality}`,
            url: $link.attr('data-url') || $link.attr('href') || '',
            quality: this.normalizeQuality(quality),
            qualityRank: this.getQualityRank(quality),
            isDirect: false,
            source: this.baseUrl,
          });
        });

        if (videoLinks.length > 0) {
          episodes.push({
            episode: epNum,
            videoLinks,
          });
        }
      });

      return episodes;
    } catch (error) {
      console.error('[قصة عشق] Get episodes error:', error);
      return [];
    }
  }

  private normalizeQuality(
    quality: string
  ): '1080p' | '720p' | '480p' | '360p' | 'SD' {
    const q = (quality || '').toUpperCase();
    if (q.includes('1080')) return '1080p';
    if (q.includes('720')) return '720p';
    if (q.includes('480')) return '480p';
    if (q.includes('360')) return '360p';
    return 'SD';
  }
}

// ════════════════════════════════════════════════════════════════
// AnimePhoenix SCRAPER
// ════════════════════════════════════════════════════════════════

class AnimePhoenixScraper extends BaseScraper {
  constructor() {
    super('https://animephoenix.io', 'AnimePhoenix');
  }

  async searchAnime(query: string): Promise<any[]> {
    try {
      const response = await this.axios.get('/search', {
        params: { q: query },
      });
      const $ = cheerio.load(response.data);
      const results: any[] = [];

      $('.anime-grid .anime-card').each((_, el) => {
        const $el = $(el);
        results.push({
          id: $el.find('a').attr('href')?.split('/').pop(),
          title: $el.find('.anime-title').text(),
          image: $el.find('img').attr('src'),
          url: $el.find('a').attr('href'),
        });
      });

      return results;
    } catch (error) {
      console.error('[AnimePhoenix] Search error:', error);
      return [];
    }
  }

  async getEpisodes(animeId: string): Promise<AnimeEpisode[]> {
    try {
      const response = await this.axios.get(`/${animeId}`);
      const $ = cheerio.load(response.data);
      const episodes: AnimeEpisode[] = [];

      $('.episodes-list .ep-item').each((_, el) => {
        const $el = $(el);
        const epNum = parseInt(String($el.data('episode') ?? 0)) || 0;
        const videoLinks: VideoLink[] = [];

        $el.find('[data-server]').each((__, linkEl) => {
          const $link = $(linkEl);
          const quality = $link.find('.quality').text() || 'SD';
          videoLinks.push({
            server: 'AnimePhoenix',
            name: `AnimePhoenix - ${quality}`,
            url: $link.attr('data-url') || '',
            quality: this.normalizeQuality(quality),
            qualityRank: this.getQualityRank(quality),
            isDirect: false,
            source: this.baseUrl,
          });
        });

        if (videoLinks.length > 0) {
          episodes.push({
            episode: epNum,
            title: $el.find('.ep-title').text() || undefined,
            videoLinks,
          });
        }
      });

      return episodes;
    } catch (error) {
      console.error('[AnimePhoenix] Get episodes error:', error);
      return [];
    }
  }

  private normalizeQuality(
    quality: string
  ): '1080p' | '720p' | '480p' | '360p' | 'SD' {
    const q = (quality || '').toUpperCase();
    if (q.includes('1080')) return '1080p';
    if (q.includes('720')) return '720p';
    if (q.includes('480')) return '480p';
    if (q.includes('360')) return '360p';
    return 'SD';
  }
}

// ════════════════════════════════════════════════════════════════
// AnimeKayan SCRAPER
// ════════════════════════════════════════════════════════════════

class AnimeKayanScraper extends BaseScraper {
  constructor() {
    super('https://animekayan.com', 'AnimeKayan');
  }

  async searchAnime(query: string): Promise<any[]> {
    try {
      const response = await this.axios.post('/api/search', { q: query });
      return response.data.results || [];
    } catch (error) {
      console.error('[AnimeKayan] Search error:', error);
      return [];
    }
  }

  async getEpisodes(animeId: string): Promise<AnimeEpisode[]> {
    try {
      const response = await this.axios.get(`/api/anime/${animeId}/episodes`);
      const episodes: AnimeEpisode[] = [];

      response.data.episodes?.forEach((ep: any) => {
        const videoLinks: VideoLink[] = ep.sources?.map((src: any) => ({
          server: 'AnimeKayan',
          name: `AnimeKayan - ${src.quality}`,
          url: src.url,
          quality: this.normalizeQuality(src.quality),
          qualityRank: this.getQualityRank(src.quality),
          isDirect: src.isDirect || false,
          source: this.baseUrl,
        })) || [];

        if (videoLinks.length > 0) {
          episodes.push({
            episode: ep.number,
            title: ep.title,
            videoLinks,
          });
        }
      });

      return episodes;
    } catch (error) {
      console.error('[AnimeKayan] Get episodes error:', error);
      return [];
    }
  }

  private normalizeQuality(
    quality: string
  ): '1080p' | '720p' | '480p' | '360p' | 'SD' {
    const q = (quality || '').toUpperCase();
    if (q.includes('1080')) return '1080p';
    if (q.includes('720')) return '720p';
    if (q.includes('480')) return '480p';
    if (q.includes('360')) return '360p';
    return 'SD';
  }
}

// ════════════════════════════════════════════════════════════════
// Shahid Anime SCRAPER
// ════════════════════════════════════════════════════════════════

class ShahidAnimeScraper extends BaseScraper {
  constructor() {
    super('https://shahid-anime.tv', 'شاهد أنمي');
  }

  async searchAnime(query: string): Promise<any[]> {
    try {
      const response = await this.axios.get('/search', {
        params: { keyword: query },
      });
      const $ = cheerio.load(response.data);
      const results: any[] = [];

      $('.series-card').each((_, el) => {
        const $el = $(el);
        results.push({
          id: $el.find('a').attr('data-id'),
          title: $el.find('.series-name').text(),
          image: $el.find('img').attr('src'),
          url: $el.find('a').attr('href'),
        });
      });

      return results;
    } catch (error) {
      console.error('[شاهد أنمي] Search error:', error);
      return [];
    }
  }

  async getEpisodes(animeId: string): Promise<AnimeEpisode[]> {
    try {
      const response = await this.axios.get(`/series/${animeId}/episodes`);
      const $ = cheerio.load(response.data);
      const episodes: AnimeEpisode[] = [];

      $('.episode-row').each((_, el) => {
        const $el = $(el);
        const epNum = parseInt($el.find('.ep-number').text()) || 0;
        const videoLinks: VideoLink[] = [];

        $el.find('.video-source').each((__, linkEl) => {
          const $link = $(linkEl);
          const quality = $link.find('.res-badge').text() || 'SD';
          videoLinks.push({
            server: 'شاهد أنمي',
            name: `شاهد أنمي - ${quality}`,
            url: $link.attr('href') || '',
            quality: this.normalizeQuality(quality),
            qualityRank: this.getQualityRank(quality),
            isDirect: false,
            source: this.baseUrl,
          });
        });

        if (videoLinks.length > 0) {
          episodes.push({
            episode: epNum,
            videoLinks,
          });
        }
      });

      return episodes;
    } catch (error) {
      console.error('[شاهد أنمي] Get episodes error:', error);
      return [];
    }
  }

  private normalizeQuality(
    quality: string
  ): '1080p' | '720p' | '480p' | '360p' | 'SD' {
    const q = (quality || '').toUpperCase();
    if (q.includes('1080')) return '1080p';
    if (q.includes('720')) return '720p';
    if (q.includes('480')) return '480p';
    if (q.includes('360')) return '360p';
    return 'SD';
  }
}

// ════════════════════════════════════════════════════════════════
// MULTI-SCRAPER MANAGER
// ════════════════════════════════════════════════════════════════

export class MultiSiteScraperManager {
  private scrapers: { [key: string]: BaseScraper };

  constructor() {
    this.scrapers = {
      myAnime: new MyAnimeScraper(),
      anime4up: new Anime4upScraper(),
      storyStory: new StoryScraper(),
      animePhoenix: new AnimePhoenixScraper(),
      animeKayan: new AnimeKayanScraper(),
      shahidAnime: new ShahidAnimeScraper(),
    };
  }

  /**
   * ابحث عن أنمي في جميع المصادر بالتوازي
   */
  async searchAllSources(
    query: string
  ): Promise<{ [key: string]: any[] }> {
    const results: { [key: string]: any[] } = {};
    const promises = Object.entries(this.scrapers).map(([key, scraper]) =>
      (scraper as any)
        .searchAnime(query)
        .then((res: any[]) => {
          results[key] = res;
        })
        .catch(() => {
          results[key] = [];
        })
    );

    await Promise.all(promises);
    return results;
  }

  /**
   * احصل على جميع الحلقات من جميع المصادر
   */
  async getAllEpisodes(animeId: string): Promise<AnimeEpisode[]> {
    const allEpisodes: { [key: number]: AnimeEpisode } = {};
    const promises = Object.values(this.scrapers).map((scraper) =>
      (scraper as any)
        .getEpisodes(animeId)
        .then((episodes: AnimeEpisode[]) => {
          episodes.forEach((ep) => {
            if (!allEpisodes[ep.episode]) {
              allEpisodes[ep.episode] = ep;
            } else {
              // دمج روابط الفيديو من مصادر مختلفة
              allEpisodes[ep.episode].videoLinks.push(
                ...ep.videoLinks
              );
            }
          });
        })
        .catch(() => {})
    );

    await Promise.all(promises);

    // ترتيب الحلقات ثم فرز روابط الفيديو حسب الجودة
    return Object.values(allEpisodes)
      .sort((a, b) => a.episode - b.episode)
      .map((ep) => ({
        ...ep,
        videoLinks: ep.videoLinks.sort(
          (a, b) => b.qualityRank - a.qualityRank
        ),
      }));
  }

  /**
   * احصل على حلقة واحدة من أفضل مصدر متاح
   */
  async getBestEpisodeLink(
    animeId: string,
    episodeNum: number
  ): Promise<VideoLink | null> {
    const episodes = await this.getAllEpisodes(animeId);
    const episode = episodes.find((ep) => ep.episode === episodeNum);
    return episode?.videoLinks[0] || null;
  }
}

// ════════════════════════════════════════════════════════════════
// EXPORT
// ════════════════════════════════════════════════════════════════

export default MultiSiteScraperManager;
