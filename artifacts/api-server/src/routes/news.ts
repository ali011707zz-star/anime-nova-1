import { Router, type Request, type Response } from "express";

const router = Router();

export interface NewsArticle {
  id:          string;
  title:       string;
  originalTitle?: string;
  description: string;
  url:         string;
  thumbnail:   string | null;
  publishedAt: string;
  category:    string;
  isMovieNews?: boolean;
}

export interface AnimeMovieItem {
  id: number;
  title: { romaji?: string | null; english?: string | null };
  coverImage: { extraLarge?: string | null; large?: string | null };
  bannerImage?: string | null;
  startDate?: { year?: number | null; month?: number | null; day?: number | null } | null;
  duration?: number | null;
  averageScore?: number | null;
  popularity?: number | null;
  genres?: string[];
  status?: string | null;
  description?: string | null;
  format?: string | null;
}

interface NewsCache {
  articles:  NewsArticle[];
  fetchedAt: number;
}

interface MoviesNewsCache {
  articles:       NewsArticle[];
  upcomingMovies: AnimeMovieItem[];
  recentMovies:   AnimeMovieItem[];
  fetchedAt:      number;
}

let _cache: NewsCache | null = null;
let _moviesCache: MoviesNewsCache | null = null;
const CACHE_TTL = 15 * 60 * 1000; // 15 دقيقة
const MOVIES_CACHE_TTL = 25 * 60 * 1000; // 25 دقيقة
const _translationCache = new Map<string, { text: string; at: number }>();
const TRANSLATION_TTL = 12 * 60 * 60 * 1000;

const MOVIE_NEWS_RE = /\b(film|films|movie|movies|theatrical|box\s*office|cinema|feature\s*film|anime\s*film|screening|imax|4dx|mx4d|dolby\s*cinema|trilogy|compilation\s*film|theaters|theatres)\b|فيلم|أفلام|السينما/i;

function isMovieRelatedArticle(article: NewsArticle): boolean {
  const hay = `${article.title} ${article.description} ${article.category}`;
  return MOVIE_NEWS_RE.test(hay);
}

/** تحليل بسيط لـ RSS XML بدون مكتبات خارجية */
function parseRSS(xml: string, sourceTag: string): NewsArticle[] {
  const items: NewsArticle[] = [];
  const itemMatches = xml.matchAll(/<item[\s\S]*?<\/item>/gi);

  for (const m of itemMatches) {
    const block = m[0];

    const title       = decodeEntities(extract(block, "title"));
    const link        = decodeEntities(extract(block, "link"));
    const pubDate     = extract(block, "pubDate");
    const description = decodeEntities(stripTags(extract(block, "description"))).slice(0, 320);
    const category    = decodeEntities(extract(block, "category")) || "أخبار الأنمي";

    let thumbnail: string | null = null;
    const mediaThumbContent = block.match(/<media:thumbnail[^>]*>([^<]+)<\/media:thumbnail>/i);
    const mediaThumbAttr    = block.match(/media:thumbnail[^>]+url=["']([^"']+)["']/i);
    const mediaContentMatch = block.match(/media:content[^>]+url=["']([^"']+)["']/i);
    const enclosureMatch    = block.match(/enclosure[^>]+url=["']([^"']+)["']/i);
    const imgMatch          = block.match(/<img[^>]+src=["']([^"']+)["']/i);
    thumbnail =
      mediaThumbContent?.[1]?.trim() ||
      mediaThumbAttr?.[1] ||
      mediaContentMatch?.[1] ||
      enclosureMatch?.[1] ||
      imgMatch?.[1] ||
      null;

    if (!title || !link) continue;

    const id = `${sourceTag}-${slugFromUrl(link)}`;

    let publishedAt = new Date().toISOString();
    try {
      const parsed = new Date(pubDate);
      if (!Number.isNaN(parsed.getTime())) publishedAt = parsed.toISOString();
    } catch {}

    const article: NewsArticle = { id, title, description, url: link, thumbnail, publishedAt, category };
    article.isMovieNews = isMovieRelatedArticle(article);
    items.push(article);
  }

  return items;
}

function extract(block: string, tag: string): string {
  const re = new RegExp(
    `<${tag}[^>]*><!\\[CDATA\\[([\\s\\S]*?)\\]\\]><\\/${tag}>` +
    `|<${tag}[^>]*>([^<]*)<\\/${tag}>`,
    "i"
  );
  const m = block.match(re);
  return (m?.[1] ?? m?.[2] ?? "").trim();
}

function stripTags(s: string): string {
  return s.replace(/<[^>]*>/g, "").trim();
}

function decodeEntities(s: string): string {
  return s
    .replace(/&amp;/g, "&")
    .replace(/&lt;/g, "<")
    .replace(/&gt;/g, ">")
    .replace(/&quot;/g, '"')
    .replace(/&#039;/g, "'")
    .replace(/&apos;/g, "'")
    .replace(/&#(\d+);/g, (_, n) => String.fromCharCode(Number(n)));
}

function slugFromUrl(url: string): string {
  try {
    const u = new URL(url);
    const parts = u.pathname.split("/").filter(Boolean);
    return parts[parts.length - 1] || url.replace(/[^a-zA-Z0-9]/g, "_").slice(0, 60);
  } catch {
    return url.replace(/[^a-zA-Z0-9]/g, "_").slice(0, 60);
  }
}

async function translateToArabic(text: string): Promise<string> {
  const clean = String(text || "").trim();
  if (!clean) return "";
  if (/[\u0600-\u06FF]/.test(clean) && !/[A-Za-z]{8,}/.test(clean)) return clean;

  const cached = _translationCache.get(clean);
  if (cached && Date.now() - cached.at < TRANSLATION_TTL) return cached.text;

  try {
    const url = "https://clients5.google.com/translate_a/t?client=dict-chrome-ex&sl=en&tl=ar&q=" + encodeURIComponent(clean.slice(0, 450));
    const r = await fetch(url, {
      headers: {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36",
        Accept: "application/json",
      },
      signal: AbortSignal.timeout(5_000),
    });
    if (r.ok) {
      const json = (await r.json().catch(() => null)) as any;
      let translated = "";
      if (Array.isArray(json)) {
        if (typeof json[0] === "string") translated = json[0];
        else if (Array.isArray(json[0]) && typeof json[0][0] === "string") translated = json[0][0];
      }
      translated = String(translated || "").trim();
      if (translated && /[\u0600-\u06FF]/.test(translated)) {
        _translationCache.set(clean, { text: translated, at: Date.now() });
        return translated;
      }
    }
  } catch {}
  return clean;
}

/** جلب الأخبار من MyAnimeList + Anime News Network RSS */
async function fetchNews(): Promise<NewsArticle[]> {
  if (_cache && Date.now() - _cache.fetchedAt < CACHE_TTL) {
    return _cache.articles;
  }

  const RSS_SOURCES = [
    { tag: "mal", url: "https://myanimelist.net/rss/news.xml" },
    { tag: "ann", url: "https://www.animenewsnetwork.com/news/rss.xml" },
    { tag: "ann-all", url: "https://www.animenewsnetwork.com/all/rss.xml?ann-edition=us" },
  ];

  const results = await Promise.allSettled(
    RSS_SOURCES.map(async (src) => {
      const res = await fetch(src.url, {
        headers: {
          "User-Agent": "Mozilla/5.0 (compatible; AnimeNova/1.0; +https://animenovaa.duckdns.org)",
          Accept: "application/rss+xml,application/xml,text/xml,*/*",
        },
        signal: AbortSignal.timeout(10_000),
      });
      if (!res.ok) {
        console.warn(`[news] ${src.url} → ${res.status}`);
        return [] as NewsArticle[];
      }
      const xml = await res.text();
      const parsed = parseRSS(xml, src.tag);
      console.log(`[news] ✅ loaded ${parsed.length} articles from ${src.tag}`);
      return parsed;
    })
  );

  const merged: NewsArticle[] = [];
  const seenUrls = new Set<string>();
  const seenTitles = new Set<string>();

  for (const r of results) {
    if (r.status !== "fulfilled") continue;
    for (const art of r.value) {
      const normUrl = art.url.split("?")[0].toLowerCase();
      const normTitle = art.title.toLowerCase().replace(/[^a-z0-9\u0600-\u06FF]/g, "").slice(0, 60);
      if (seenUrls.has(normUrl) || (normTitle && seenTitles.has(normTitle))) continue;
      seenUrls.add(normUrl);
      if (normTitle) seenTitles.add(normTitle);
      merged.push(art);
    }
  }

  merged.sort((a, b) => new Date(b.publishedAt).getTime() - new Date(a.publishedAt).getTime());

  _cache = { articles: merged, fetchedAt: Date.now() };
  return merged;
}

async function fetchAniListMovies(): Promise<{ upcomingMovies: AnimeMovieItem[]; recentMovies: AnimeMovieItem[] }> {
  const query = `
    query {
      upcoming: Page(perPage: 12) {
        media(type: ANIME, format: MOVIE, status: NOT_YET_RELEASED, countryOfOrigin: "JP", sort: [POPULARITY_DESC]) {
          id
          title { romaji english }
          coverImage { extraLarge large }
          bannerImage
          startDate { year month day }
          duration
          averageScore
          popularity
          genres
          status
          format
          description(asHtml: false)
        }
      }
      recent: Page(perPage: 14) {
        media(type: ANIME, format: MOVIE, status_in: [FINISHED, RELEASING], startDate_greater: 20240000, countryOfOrigin: "JP", sort: [TRENDING_DESC, POPULARITY_DESC]) {
          id
          title { romaji english }
          coverImage { extraLarge large }
          bannerImage
          startDate { year month day }
          duration
          averageScore
          popularity
          genres
          status
          format
          description(asHtml: false)
        }
      }
    }
  `;
  try {
    const r = await fetch("https://graphql.anilist.co", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Accept: "application/json",
        Origin: "https://anilist.co",
        Referer: "https://anilist.co/",
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36",
      },
      body: JSON.stringify({ query }),
      signal: AbortSignal.timeout(12_000),
    });
    if (!r.ok) return { upcomingMovies: [], recentMovies: [] };
    const json = (await r.json().catch(() => ({}))) as any;
    const upcomingMovies: AnimeMovieItem[] = Array.isArray(json?.data?.upcoming?.media)
      ? json.data.upcoming.media
      : [];
    const upcomingIds = new Set(upcomingMovies.map((m) => m.id));
    const recentMovies: AnimeMovieItem[] = (Array.isArray(json?.data?.recent?.media) ? json.data.recent.media : [])
      .filter((m: AnimeMovieItem) => !upcomingIds.has(m.id));
    return { upcomingMovies, recentMovies };
  } catch (e: any) {
    console.warn("[news] fetchAniListMovies error:", e?.message || String(e));
    return { upcomingMovies: [], recentMovies: [] };
  }
}

async function fetchMovieNewsBundle(): Promise<MoviesNewsCache> {
  if (_moviesCache && Date.now() - _moviesCache.fetchedAt < MOVIES_CACHE_TTL) {
    return _moviesCache;
  }

  const [allNews, moviesData] = await Promise.all([
    fetchNews(),
    fetchAniListMovies(),
  ]);

  const rawMovieArticles = allNews.filter(isMovieRelatedArticle).slice(0, 18);

  // Translate movie news titles & short descriptions into Arabic in small parallel batches
  const translatedArticles: NewsArticle[] = await Promise.all(
    rawMovieArticles.map(async (art) => {
      const [arTitle, arDesc] = await Promise.all([
        translateToArabic(art.title),
        art.description ? translateToArabic(art.description.slice(0, 220)) : Promise.resolve(""),
      ]);
      return {
        ...art,
        originalTitle: art.title,
        title: arTitle || art.title,
        description: arDesc || art.description,
        category: "أفلام الأنمي",
        isMovieNews: true,
      };
    })
  );

  const bundle: MoviesNewsCache = {
    articles: translatedArticles,
    upcomingMovies: moviesData.upcomingMovies,
    recentMovies: moviesData.recentMovies,
    fetchedAt: Date.now(),
  };

  if (bundle.articles.length > 0 || bundle.upcomingMovies.length > 0 || bundle.recentMovies.length > 0) {
    _moviesCache = bundle;
  }
  return bundle;
}

/* ─────────────────────────────────────────
   GET /api/news?page=1&limit=20&category=movies
───────────────────────────────────────── */
router.get("/news", async (req: Request, res: Response) => {
  try {
    const page     = Math.max(1, Number(req.query.page)  || 1);
    const limit    = Math.min(50, Number(req.query.limit) || 20);
    const category = String(req.query.category || "").trim().toLowerCase();
    const offset   = (page - 1) * limit;

    if (category === "movies" || category === "movie" || category === "films") {
      const bundle   = await fetchMovieNewsBundle();
      const total    = bundle.articles.length;
      const articles = bundle.articles.slice(offset, offset + limit);
      res.setHeader("Cache-Control", "public, max-age=300");
      return res.json({ articles, total, page, limit, category: "movies" });
    }

    const all      = await fetchNews();
    const total    = all.length;
    const articles = all.slice(offset, offset + limit);

    res.setHeader("Cache-Control", "public, max-age=300");
    return res.json({ articles, total, page, limit });
  } catch (err) {
    console.error("[news] GET /news:", err);
    return res.status(500).json({ error: "تعذّر جلب الأخبار" });
  }
});

/* ─────────────────────────────────────────
   GET /api/news/movies
   أخبار أفلام الأنمي المترجمة + الأفلام القادمة والحديثة
───────────────────────────────────────── */
router.get("/news/movies", async (_req: Request, res: Response) => {
  try {
    const bundle = await fetchMovieNewsBundle();
    res.setHeader("Cache-Control", "public, max-age=600");
    return res.json({
      articles: bundle.articles,
      upcomingMovies: bundle.upcomingMovies,
      recentMovies: bundle.recentMovies,
      totalArticles: bundle.articles.length,
      totalMovies: bundle.upcomingMovies.length + bundle.recentMovies.length,
    });
  } catch (err) {
    console.error("[news] GET /news/movies:", err);
    return res.status(500).json({ error: "تعذّر جلب أخبار أفلام الأنمي" });
  }
});

/* ─────────────────────────────────────────
   GET /api/news/article?id=...
───────────────────────────────────────── */
router.get("/news/article", async (req: Request, res: Response) => {
  try {
    const id = String(req.query.id || "");
    if (!id) return res.status(400).json({ error: "id مطلوب" });

    const all     = await fetchNews();
    const article = all.find(a => a.id === id);
    if (!article) return res.status(404).json({ error: "المقال غير موجود" });

    return res.json({ article });
  } catch {
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

export default router;
