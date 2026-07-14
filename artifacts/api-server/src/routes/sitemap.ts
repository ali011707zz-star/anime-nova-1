/**
 * sitemap.ts — Dynamic XML Sitemap Generator
 *
 * يولّد Sitemap.xml ديناميكياً يشمل:
 * 1. الصفحات الثابتة (الرئيسية، المكتبة، الجدول...)
 * 2. أعلى 200 أنيمي رائج من AniList API
 * 3. أعلى 200 سلسلة أنيميشن من FaselHD
 * 4. الكارتون المدبلج من StarCima
 *
 * يُخزَّن في ذاكرة مؤقتة 6 ساعات لتقليل الضغط على الـ APIs.
 */

import { Router } from "express";

const router = Router();

const BASE = "https://animenovaa.duckdns.org";
const CACHE_TTL = 6 * 3_600_000; // 6 ساعات
let _cached: string | null = null;
let _cachedAt = 0;

function escXml(s: string): string {
  return s.replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;").replace(/"/g, "&quot;");
}

function url(loc: string, priority: string, changefreq: string, lastmod?: string): string {
  return `  <url>
    <loc>${escXml(loc)}</loc>
    <changefreq>${changefreq}</changefreq>
    <priority>${priority}</priority>${lastmod ? `\n    <lastmod>${lastmod}</lastmod>` : ""}
  </url>`;
}

async function fetchAnilistTrending(page: number): Promise<{ id: number; slug: string; updatedAt: number }[]> {
  const query = `query($page:Int){Page(page:$page,perPage:50){media(type:ANIME,sort:TRENDING_DESC,isAdult:false){id slug updatedAt}}}`;
  try {
    const r = await fetch("https://graphql.anilist.co", {
      method: "POST",
      headers: { "Content-Type": "application/json", Accept: "application/json" },
      body: JSON.stringify({ query, variables: { page } }),
      signal: AbortSignal.timeout(8000),
    });
    if (!r.ok) return [];
    const d = await r.json() as any;
    return (d?.data?.Page?.media || []).map((m: any) => ({
      id: m.id,
      slug: m.slug || String(m.id),
      updatedAt: m.updatedAt,
    }));
  } catch { return []; }
}

async function fetchDubbedSlugs(): Promise<string[]> {
  try {
    const slugs: string[] = [];
    for (let p = 1; p <= 4; p++) {
      const r = await fetch(`https://starcima.com/api/dubbed/catalog?page=${p}`, {
        headers: { "User-Agent": "Mozilla/5.0", Accept: "application/json" },
        signal: AbortSignal.timeout(8000),
      });
      if (!r.ok) break;
      const d = await r.json() as any;
      const results = d?.results || [];
      results.forEach((s: any) => { if (s.key) slugs.push(s.key); });
      if (!d.totalPages || p >= d.totalPages) break;
    }
    return slugs;
  } catch { return []; }
}

async function buildSitemap(): Promise<string> {
  const today = new Date().toISOString().split("T")[0];

  // ── الصفحات الثابتة ──
  const staticUrls = [
    url(`${BASE}/`,           "1.0", "daily",   today),
    url(`${BASE}/browse`,     "0.9", "daily",   today),
    url(`${BASE}/animations`, "0.9", "daily",   today),
    url(`${BASE}/dubbed`,     "0.9", "daily",   today),
    url(`${BASE}/updates`,    "0.8", "hourly",  today),
    url(`${BASE}/schedule`,   "0.7", "daily",   today),
    url(`${BASE}/search`,     "0.6", "weekly",  today),
    url(`${BASE}/auth`,       "0.3", "monthly", today),
  ];

  // ── أنيمي رائج (صفحتان من AniList = 100 عنوان) ──
  const [p1, p2] = await Promise.all([fetchAnilistTrending(1), fetchAnilistTrending(2)]);
  const animeList = [...p1, ...p2];
  const animeUrls = animeList.map(a => {
    const lastmod = a.updatedAt ? new Date(a.updatedAt * 1000).toISOString().split("T")[0] : today;
    return url(`${BASE}/anime/${a.id}`, "0.8", "weekly", lastmod);
  });

  // ── أنيميشن من FaselHD (صفحات المكتبة فقط — لا نعرف الـ slugs بدون DB) ──
  // نضيف pagination URLs كـ alternative discovery
  const animationPageUrls = Array.from({ length: 20 }, (_, i) =>
    url(`${BASE}/animations?page=${i + 1}`, "0.5", "daily", today)
  );

  // ── كارتون مدبلج ──
  const dubbedSlugs = await fetchDubbedSlugs();
  const dubbedUrls = dubbedSlugs.map(slug =>
    url(`${BASE}/dubbed/${encodeURIComponent(slug)}`, "0.7", "weekly", today)
  );

  const allUrls = [...staticUrls, ...animeUrls, ...animationPageUrls, ...dubbedUrls];

  return `<?xml version="1.0" encoding="UTF-8"?>
<urlset
  xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9
    http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">
${allUrls.join("\n")}
</urlset>`;
}

// ── GET /sitemap.xml ──────────────────────────────────────────────────────
router.get("/sitemap.xml", async (_req, res) => {
  try {
    if (_cached && Date.now() - _cachedAt < CACHE_TTL) {
      res.setHeader("Content-Type", "application/xml; charset=utf-8");
      res.setHeader("Cache-Control", "public, max-age=21600"); // 6h
      res.send(_cached);
      return;
    }

    const xml = await buildSitemap();
    _cached = xml;
    _cachedAt = Date.now();

    res.setHeader("Content-Type", "application/xml; charset=utf-8");
    res.setHeader("Cache-Control", "public, max-age=21600");
    res.send(xml);
  } catch (e: any) {
    res.status(500).send("sitemap error: " + e.message);
  }
});

// ── GET /robots.txt — يُعيد robots.txt ديناميكي يشير للـ sitemap ──────────
router.get("/robots.txt", (_req, res) => {
  res.setHeader("Content-Type", "text/plain; charset=utf-8");
  res.setHeader("Cache-Control", "public, max-age=86400");
  res.send(`User-agent: *
Allow: /

# لا تُفهرس صفحات الإدارة والمصادر الداخلية
Disallow: /api/
Disallow: /auth/callback
Disallow: /admin

Sitemap: ${BASE}/sitemap.xml
`);
});

export default router;
