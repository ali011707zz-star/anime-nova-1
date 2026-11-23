import { Router } from "express";
import curatedTitlesRaw from "../data/anime-titles-ar.json";

const router = Router();
const BASE = "https://animenovaa.duckdns.org";

let _cached: string | null = null;
let _cachedAt = 0;
const CACHE_TTL = 6 * 3600_000;

function escXml(s: string): string {
  return String(s ?? "")
    .replace(/&/g, "&amp;")
    .replace(/</g, "&lt;")
    .replace(/>/g, "&gt;")
    .replace(/"/g, "&quot;")
    .replace(/'/g, "&apos;");
}

function url(loc: string, priority = "0.7", changefreq = "weekly", lastmod?: string): string {
  return [
    "  <url>",
    `    <loc>${escXml(loc)}</loc>`,
    lastmod ? `    <lastmod>${lastmod}</lastmod>` : "",
    `    <changefreq>${changefreq}</changefreq>`,
    `    <priority>${priority}</priority>`,
    "  </url>",
  ].filter(Boolean).join("\n");
}

async function fetchAnilistTrending(page = 1): Promise<{ id: number; slug: string; updatedAt?: number }[]> {
  const query = `query($page:Int){Page(page:$page,perPage:50){media(type:ANIME,sort:TRENDING_DESC,isAdult:false){id slug updatedAt}}}`;
  try {
    const r = await fetch("https://graphql.anilist.co", {
      method: "POST",
      headers: { "Content-Type": "application/json", Accept: "application/json" },
      body: JSON.stringify({ query, variables: { page } }),
      signal: AbortSignal.timeout(6000),
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
        signal: AbortSignal.timeout(6000),
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

  const staticUrls = [
    url(`${BASE}/`,           "1.0", "daily",   today),
    url(`${BASE}/app`,        "1.0", "daily",   today),
    url(`${BASE}/browse`,     "0.9", "daily",   today),
    url(`${BASE}/manga`,      "0.9", "daily",   today),
    url(`${BASE}/dubbed`,     "0.9", "daily",   today),
    url(`${BASE}/spacetoon`,  "0.9", "daily",   today),
    url(`${BASE}/cartoon`,    "0.8", "daily",   today),
    url(`${BASE}/animation`,  "0.8", "daily",   today),
    url(`${BASE}/latest`,     "0.9", "hourly",  today),
    url(`${BASE}/updates`,    "0.8", "daily",   today),
    url(`${BASE}/schedule`,   "0.8", "daily",   today),
  ];

  const [p1, p2] = await Promise.all([fetchAnilistTrending(1), fetchAnilistTrending(2)]);
  const seenAnimeIds = new Set<number>();
  const animeUrls: string[] = [];

  for (const a of [...p1, ...p2]) {
    if (!a?.id || seenAnimeIds.has(a.id)) continue;
    seenAnimeIds.add(a.id);
    const lastmod = a.updatedAt ? new Date(a.updatedAt * 1000).toISOString().split("T")[0] : today;
    animeUrls.push(url(`${BASE}/anime/${a.id}`, "0.8", "weekly", lastmod));
  }

  // Always include top 350 curated Arabic-titled anime so sitemap stays rich even if AniList rate-limits
  const curatedList = Array.isArray(curatedTitlesRaw) ? (curatedTitlesRaw as any[]) : [];
  for (const entry of curatedList) {
    if (seenAnimeIds.size >= 450) break;
    const id = Number(entry?.anilistId);
    if (!Number.isSafeInteger(id) || id <= 0 || seenAnimeIds.has(id)) continue;
    seenAnimeIds.add(id);
    animeUrls.push(url(`${BASE}/anime/${id}`, "0.8", "weekly", today));
  }

  const dubbedSlugs = await fetchDubbedSlugs();
  const dubbedUrls = dubbedSlugs.map(slug =>
    url(`${BASE}/dubbed/${encodeURIComponent(slug)}`, "0.7", "weekly", today)
  );

  const allUrls = [...staticUrls, ...animeUrls, ...dubbedUrls];

  return `<?xml version="1.0" encoding="UTF-8"?>
<urlset
  xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9
    http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">
${allUrls.join("\n")}
</urlset>`;
}

router.get(["/sitemap.xml", "/sitemap-nova.xml"], async (_req, res) => {
  try {
    if (_cached && Date.now() - _cachedAt < CACHE_TTL) {
      res.setHeader("Content-Type", "application/xml; charset=utf-8");
      res.setHeader("Cache-Control", "public, max-age=21600");
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

router.get("/robots.txt", (_req, res) => {
  res.setHeader("Content-Type", "text/plain; charset=utf-8");
  res.setHeader("Cache-Control", "public, max-age=3600");
  res.send(`User-agent: *
Allow: /
Disallow: /api/admin/
Disallow: /api/auth/
Disallow: /auth
Disallow: /admin
Disallow: /profile
Disallow: /settings
Disallow: /library
Disallow: /history
Disallow: /tv
Disallow: /watch
Disallow: /comments
Disallow: /subscription

Sitemap: ${BASE}/sitemap.xml
`);
});

export default router;
