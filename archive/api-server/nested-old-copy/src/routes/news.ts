import { Router, type Request, type Response } from "express";

const router = Router();

/* ── Simple in-memory cache ── */
let _cache: { articles: NewsArticle[]; fetchedAt: number } | null = null;
const CACHE_TTL = 5 * 60 * 1000; // 5 دقائق

export interface NewsArticle {
  id: string;          // slug مشتق من URL
  title: string;
  description: string;
  url: string;
  thumbnail: string | null;
  publishedAt: string; // ISO string
  category: string;
}

/** حوّل RSS XML إلى قائمة مقالات */
function parseRSS(xml: string): NewsArticle[] {
  const items: NewsArticle[] = [];

  const itemRegex = /<item>([\s\S]*?)<\/item>/g;
  let match: RegExpExecArray | null;

  while ((match = itemRegex.exec(xml)) !== null) {
    const block = match[1];

    const title       = decodeEntities(stripTags(extract(block, "title")));
    const link        = extract(block, "guid") || extract(block, "link");
    const pubDate     = extract(block, "pubDate");
    const description = decodeEntities(stripTags(extract(block, "description"))).slice(0, 300);
    const category    = decodeEntities(extract(block, "category")) || "أخبار الأنمي";

    // صورة مصغّرة: media:thumbnail>URL< أو media:thumbnail url="..." أو enclosure أو img
    let thumbnail: string | null = null;
    // MAL format: <media:thumbnail>https://...jpg</media:thumbnail>
    const mediaThumbContent = block.match(/<media:thumbnail[^>]*>([^<]+)<\/media:thumbnail>/i);
    // ANN format: <media:thumbnail url="..." />
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

    const id = slugFromUrl(link);

    let publishedAt = new Date().toISOString();
    try { publishedAt = new Date(pubDate).toISOString(); } catch {}

    items.push({ id, title, description, url: link, thumbnail, publishedAt, category });
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
    // مثال: https://myanimelist.net/news/74411300?_location=rss → "74411300"
    const parts = u.pathname.split("/").filter(Boolean);
    return parts[parts.length - 1] || url.replace(/[^a-zA-Z0-9]/g, "_").slice(0, 60);
  } catch {
    return url.replace(/[^a-zA-Z0-9]/g, "_").slice(0, 60);
  }
}

/** جلب الأخبار من MyAnimeList RSS */
async function fetchNews(): Promise<NewsArticle[]> {
  if (_cache && Date.now() - _cache.fetchedAt < CACHE_TTL) {
    return _cache.articles;
  }

  const RSS_URLS = [
    "https://myanimelist.net/rss/news.xml",
    "https://www.animenewsnetwork.com/all/rss.xml?ann-edition=us",
    "https://www.animenewsnetwork.com/news/rss.xml",
  ];

  let articles: NewsArticle[] = [];

  for (const url of RSS_URLS) {
    try {
      const res = await fetch(url, {
        headers: {
          "User-Agent":
            "Mozilla/5.0 (compatible; AnimeNova/1.0; +https://nova.replit.app)",
          Accept: "application/rss+xml,application/xml,text/xml,*/*",
        },
        signal: AbortSignal.timeout(10_000),
      });
      if (!res.ok) { console.warn(`[news] ${url} → ${res.status}`); continue; }
      const xml = await res.text();
      articles = parseRSS(xml);
      if (articles.length > 0) {
        console.log(`[news] ✅ loaded ${articles.length} articles from ${url}`);
        break;
      }
    } catch (e) {
      console.error(`[news] fetch error (${url}):`, (e as Error).message);
    }
  }

  _cache = { articles, fetchedAt: Date.now() };
  return articles;
}

/* ─────────────────────────────────────────
   GET /api/news?page=1&limit=20
───────────────────────────────────────── */
router.get("/news", async (req: Request, res: Response) => {
  try {
    const page   = Math.max(1, Number(req.query.page)  || 1);
    const limit  = Math.min(50, Number(req.query.limit) || 20);
    const offset = (page - 1) * limit;

    const all      = await fetchNews();
    const total    = all.length;
    const articles = all.slice(offset, offset + limit);

    return res.json({ articles, total, page, limit });
  } catch (err) {
    console.error("[news] GET /news:", err);
    return res.status(500).json({ error: "تعذّر جلب الأخبار" });
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
