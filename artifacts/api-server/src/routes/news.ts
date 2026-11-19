import fs from "fs";
import path from "path";
import crypto from "crypto";
import { Router, type Request, type Response } from "express";

const router = Router();

const NEWS_IMG_CACHE_DIR = "/opt/nova-cache/news-images";
try { fs.mkdirSync(NEWS_IMG_CACHE_DIR, { recursive: true }); } catch {}

export interface NewsArticle {
  id:            string;
  title:         string;
  originalTitle?: string;
  description:   string;
  url:           string;
  thumbnail:     string | null;
  publishedAt:   string;
  category:      string;
  isMovieNews?:  boolean;
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
const CACHE_TTL = 15 * 60 * 1000;
const MOVIES_CACHE_TTL = 25 * 60 * 1000;

const _translationCache = new Map<string, { text: string; at: number }>();
const TRANSLATION_TTL = 12 * 60 * 60 * 1000;

const _posterLookupCache = new Map<string, { url: string | null; at: number }>();
const POSTER_LOOKUP_TTL = 12 * 60 * 60 * 1000;

const MOVIE_NEWS_RE = /\b(film|films|movie|movies|theatrical|box\s*office|cinema|feature\s*film|anime\s*film|screening|imax|4dx|mx4d|dolby\s*cinema|trilogy|compilation\s*film|theaters|theatres)\b|فيلم|أفلام|السينما/i;

function isMovieRelatedArticle(article: NewsArticle): boolean {
  const hay = `${article.title} ${article.description} ${article.category}`;
  return MOVIE_NEWS_RE.test(hay);
}

const ALLOWED_NEWS_IMG_HOST_RE = /^https?:\/\/(?:cdn\.myanimelist\.net|cdn\.animenewsnetwork\.com|www\.animenewsnetwork\.com|s4\.anilist\.co|animecorner\.me|cdn\.animecorner\.me|img\.anili\.st)\//i;

function proxyNewsThumbUrl(raw: string | null | undefined): string | null {
  if (!raw || typeof raw !== "string") return null;
  const trimmed = raw.trim();
  if (!/^https?:\/\//i.test(trimmed)) return null;
  if (trimmed.includes("/api/news/image?url=")) return trimmed;
  if (ALLOWED_NEWS_IMG_HOST_RE.test(trimmed)) {
    return `https://animenovaa.duckdns.org/api/news/image?url=${encodeURIComponent(trimmed)}`;
  }
  return trimmed;
}

/* ─────────────────────────────────────────
   GET /api/news/image?url=... (Disk-cached proxy for news thumbnails)
───────────────────────────────────────── */
router.get("/news/image", async (req: Request, res: Response) => {
  const rawUrl = String(req.query.url || "").trim();
  if (!rawUrl || !ALLOWED_NEWS_IMG_HOST_RE.test(rawUrl)) {
    return res.status(400).end();
  }
  const hash = crypto.createHash("sha1").update(rawUrl).digest("hex");
  const extMatch = rawUrl.match(/\.(webp|jpe?g|png)(?:[?#]|$)/i);
  const ext = (extMatch ? extMatch[1] : "jpg").toLowerCase();
  const fallbackCt = ext === "png" ? "image/png" : ext === "webp" ? "image/webp" : "image/jpeg";
  const cacheFile = path.join(NEWS_IMG_CACHE_DIR, hash + "." + ext);
  try {
    if (fs.existsSync(cacheFile)) {
      const buf = fs.readFileSync(cacheFile);
      if (buf.length > 200) {
        res.setHeader("Content-Type", fallbackCt);
        res.setHeader("Cache-Control", "public, max-age=604800, immutable");
        return res.send(buf);
      }
    }
    const r = await fetch(rawUrl, {
      headers: {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36",
        Accept: "image/jpeg,image/png,image/webp,image/*,*/*;q=0.8",
      },
      signal: AbortSignal.timeout(12_000),
    });
    if (!r.ok) return res.status(502).end();
    const ct = (r.headers.get("content-type") || "").toLowerCase();
    const buf = Buffer.from(await r.arrayBuffer());
    const head = buf.subarray(0, 64).toString("utf8").trim().toLowerCase();
    if (buf.length <= 200 || ct.includes("text/html") || head.startsWith("<!doctype") || head.startsWith("<html")) {
      return res.status(502).end();
    }
    try { fs.writeFileSync(cacheFile, buf); } catch {}
    res.setHeader("Content-Type", ct.startsWith("image/") ? ct : fallbackCt);
    res.setHeader("Cache-Control", "public, max-age=604800, immutable");
    return res.send(buf);
  } catch {
    return res.status(502).end();
  }
});

function decodeEntities(s: string): string {
  return s
    .replace(/&amp;/g, "&")
    .replace(/&lt;/g, "<")
    .replace(/&gt;/g, ">")
    .replace(/&quot;/g, '"')
    .replace(/&#039;/g, "'")
    .replace(/&apos;/g, "'")
    .replace(/&hellip;/g, "...")
    .replace(/&ndash;/g, "-")
    .replace(/&mdash;/g, "-")
    .replace(/&lsquo;|&rsquo;/g, "'")
    .replace(/&ldquo;|&rdquo;/g, '"')
    .replace(/&#x([0-9a-fA-F]+);/g, (_, hex) => String.fromCharCode(parseInt(hex, 16)))
    .replace(/&#(\d+);/g, (_, n) => String.fromCharCode(Number(n)));
}

function stripTags(s: string): string {
  return s.replace(/<[^>]*>/g, " ").replace(/\s+/g, " ").trim();
}

function cleanRssText(raw: string): string {
  // Decode entities FIRST so escaped HTML like &lt;cite&gt;...&lt;/cite&gt; is stripped cleanly!
  return decodeEntities(stripTags(decodeEntities(raw)))
    .replace(/\s*(?:\.\.\.)?\s*read\s+more\s*$/i, "")
    .replace(/\s+/g, " ")
    .trim();
}

function extract(block: string, tag: string): string {
  const re = new RegExp(
    `<${tag}[^>]*><!\\[CDATA\\[([\\s\\S]*?)\\]\\]><\\/${tag}>` +
    `|<${tag}[^>]*>([\\s\\S]*?)<\\/${tag}>`,
    "i"
  );
  const m = block.match(re);
  return (m?.[1] ?? m?.[2] ?? "").trim();
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

/** تحليل بسيط لـ RSS XML بدون مكتبات خارجية */
function parseRSS(xml: string, sourceTag: string): NewsArticle[] {
  const items: NewsArticle[] = [];
  const itemMatches = xml.matchAll(/<item[\s\S]*?<\/item>/gi);

  for (const m of itemMatches) {
    const block = m[0];

    const title       = cleanRssText(extract(block, "title"));
    const link        = decodeEntities(extract(block, "link")).trim();
    const pubDate     = extract(block, "pubDate");
    const description = cleanRssText(extract(block, "description")).slice(0, 580);
    const category    = cleanRssText(extract(block, "category")) || "أخبار الأنمي";

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

/** استخراج اسم العمل للبحث عن صورة عالية الدقة من AniList عندما لا يوفر RSS صورة */
function extractTitleSubjectForPoster(title: string): string | null {
  const clean = cleanRssText(title);
  // 1) Quoted title like 'Gensou Suikoden' or "Cherry and Virgin"
  const quoted = clean.match(/['"«“]([^'"»”]{3,65})['"»”]/);
  if (quoted?.[1]) return quoted[1].trim();
  // 2) Before common news verbs (Reveals, Gets, Announces, Wins, Ends, Streams, Adds, Launches, etc.)
  const beforeVerb = clean.match(/^(.{3,58}?)\s+(?:Anime|Manga|Film|Movie|Season|TV|OVA|Light Novel|Reveals|Gets|Announces|Wins|Ends|Concludes|Streams|Adds|Launches|Premieres|Debuts|Opens|Celebrates|Unveils|Teases|Postpones|Delays)\b/i);
  if (beforeVerb?.[1]) {
    const candidate = beforeVerb[1]
      .replace(/^(?:Interview:\s*|Review:\s*|Report:\s*|Manga\s+|Anime\s+|TV Anime\s+|Film\s+)/i, "")
      .replace(/['":]+$/g, "")
      .trim();
    if (candidate.length >= 3) return candidate;
  }
  // 3) After "Adds" / "Streams" / "for"
  const afterPrep = clean.match(/\b(?:Anime|Manga|Film|Movie)\s+([A-Z][A-Za-z0-9:\-!' ]{2,45})/);
  if (afterPrep?.[1]) return afterPrep[1].trim();
  return null;
}

async function resolvePosterFromAniList(title: string): Promise<string | null> {
  const subject = extractTitleSubjectForPoster(title);
  if (!subject || subject.length < 3) return null;
  const key = subject.toLowerCase();
  const cached = _posterLookupCache.get(key);
  if (cached && Date.now() - cached.at < POSTER_LOOKUP_TTL) return cached.url;

  try {
    const res = await fetch("https://graphql.anilist.co", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Accept: "application/json",
        Origin: "https://anilist.co",
        Referer: "https://anilist.co/",
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36",
      },
      body: JSON.stringify({
        query: `query ($search: String) { Media(search: $search, sort: [SEARCH_MATCH, POPULARITY_DESC]) { bannerImage coverImage { extraLarge large } } }`,
        variables: { search: subject },
      }),
      signal: AbortSignal.timeout(5_000),
    });
    if (!res.ok) {
      _posterLookupCache.set(key, { url: null, at: Date.now() });
      return null;
    }
    const json = (await res.json().catch(() => ({}))) as any;
    const media = json?.data?.Media;
    const url: string | null = media?.bannerImage || media?.coverImage?.extraLarge || media?.coverImage?.large || null;
    _posterLookupCache.set(key, { url, at: Date.now() });
    return url;
  } catch {
    return null;
  }
}

async function translateToArabic(text: string): Promise<string> {
  const clean = cleanRssText(text);
  if (!clean) return "";
  if (/[\u0600-\u06FF]/.test(clean) && !/[A-Za-z]{8,}/.test(clean)) return clean;

  const cached = _translationCache.get(clean);
  if (cached && Date.now() - cached.at < TRANSLATION_TTL) return cached.text;

  // Normalize single quotes around titles so Google Translate translates the full sentence naturally
  const prep = clean
    .replace(/\u2018|\u2019/g, "'")
    .replace(/\u201C|\u201D/g, '"')
    .slice(0, 650);

  try {
    const url = "https://clients5.google.com/translate_a/t?client=dict-chrome-ex&sl=en&tl=ar&q=" + encodeURIComponent(prep);
    const r = await fetch(url, {
      headers: {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36",
        Accept: "application/json",
      },
      signal: AbortSignal.timeout(6_000),
    });
    if (r.ok) {
      const json = (await r.json().catch(() => null)) as any;
      let translated = "";
      if (Array.isArray(json)) {
        if (typeof json[0] === "string") translated = json[0];
        else if (Array.isArray(json[0]) && typeof json[0][0] === "string") translated = json[0][0];
      }
      translated = cleanRssText(String(translated || ""));
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

  // Enrich missing thumbnails on top 25 articles using AniList artwork lookup so cards always have crisp posters!
  const missingThumb = merged.slice(0, 28).filter((a) => !a.thumbnail);
  if (missingThumb.length > 0) {
    await Promise.allSettled(
      missingThumb.slice(0, 16).map(async (art) => {
        const poster = await resolvePosterFromAniList(art.title);
        if (poster) art.thumbnail = poster;
      })
    );
  }

  _cache = { articles: merged, fetchedAt: Date.now() };
  return merged;
}

async function localizeArticlesToArabic(list: NewsArticle[]): Promise<NewsArticle[]> {
  return Promise.all(
    list.map(async (art) => {
      let thumb = art.thumbnail;
      if (!thumb) {
        thumb = await resolvePosterFromAniList(art.originalTitle || art.title);
      }
      const [arTitle, arDesc] = await Promise.all([
        translateToArabic(art.title),
        art.description ? translateToArabic(art.description.slice(0, 560)) : Promise.resolve(""),
      ]);
      const cat = art.isMovieNews
        ? "أفلام الأنمي"
        : /manga/i.test(art.category)
          ? "أخبار المانجا"
          : "أخبار الأنمي";
      return {
        ...art,
        originalTitle: art.originalTitle || art.title,
        title: arTitle || art.title,
        description: arDesc || art.description,
        thumbnail: proxyNewsThumbUrl(thumb),
        category: cat,
      };
    })
  );
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

  const rawMovieArticles = allNews.filter(isMovieRelatedArticle).slice(0, 20);
  const localized = await localizeArticlesToArabic(rawMovieArticles);
  // Put image-backed movie articles first so the top of "أفلام الأنمي" always looks crisp and visual
  localized.sort((a, b) => Number(Boolean(b.thumbnail)) - Number(Boolean(a.thumbnail)));
  const articles = localized.map((a) => ({ ...a, category: "أفلام الأنمي", isMovieNews: true }));

  const bundle: MoviesNewsCache = {
    articles,
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
   GET /api/news?page=1&limit=20&category=movies&hasImage=1
───────────────────────────────────────── */
router.get("/news", async (req: Request, res: Response) => {
  try {
    const page      = Math.max(1, Number(req.query.page)  || 1);
    const limit     = Math.min(50, Number(req.query.limit) || 20);
    const category  = String(req.query.category || "").trim().toLowerCase();
    const hasImage  = String(req.query.hasImage || "").trim() === "1";
    const wantRawEn = String(req.query.translate || "").trim() === "0";
    const offset    = (page - 1) * limit;

    if (category === "movies" || category === "movie" || category === "films") {
      const bundle   = await fetchMovieNewsBundle();
      const total    = bundle.articles.length;
      const articles = bundle.articles.slice(offset, offset + limit);
      res.setHeader("Cache-Control", "public, max-age=300");
      return res.json({ articles, total, page, limit, category: "movies" });
    }

    const all = await fetchNews();
    // Always prioritize articles that have crisp images so the news feed looks rich and visual!
    const withImages = all.filter((a) => typeof a.thumbnail === "string" && /^https?:\/\//i.test(a.thumbnail));
    const withoutImages = all.filter((a) => !(typeof a.thumbnail === "string" && /^https?:\/\//i.test(a.thumbnail)));
    const pool = hasImage
      ? (withImages.length > 0 ? withImages : all)
      : [...withImages, ...withoutImages];

    const total = pool.length;
    const pageSlice = pool.slice(offset, offset + limit);
    const articles = wantRawEn ? pageSlice : await localizeArticlesToArabic(pageSlice);

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

    const [localized] = await localizeArticlesToArabic([article]);
    return res.json({ article: localized || article });
  } catch {
    return res.status(500).json({ error: "خطأ في الخادم" });
  }
});

export default router;
