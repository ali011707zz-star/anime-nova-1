import { Router, type Request, type Response } from "express";

const router = Router();

const ARABSEED_BASE = "https://m.asd.ink";
const AS_UA = "Mozilla/5.0 (Linux; Android 11; Pixel 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36";
const CARTOON_CAT = 2496;
const ZAMAAN_CAT  = 230926;

interface ASPost {
  id: number;
  link: string;
  title?: { rendered: string };
  _embedded?: { "wp:featuredmedia"?: Array<{ source_url?: string }> };
}

function decodeTitle(raw: string): string {
  return (raw || "").replace(/&#(\d+);/g, (_, n) => String.fromCharCode(+n)).replace(/&amp;/g, "&").replace(/&nbsp;/g, " ");
}

function extractSeriesName(raw: string): string {
  const t = decodeTitle(raw);
  let s = t.replace(/^(?:انمي\s+|مسلسل\s+|فيلم\s+|كرتون\s+)/u, "");
  s = s.replace(/\s+الحلقة\s+.*/u, "");
  s = s.replace(/\s+(?:مترجم[ةه]?|مدبلج[ةه]?|كامل|HD|FHD|720|1080)\s*$/iu, "");
  s = s.replace(/\s+الموسم\s+.*/u, "");
  return s.trim();
}

function extractEpNum(raw: string): number {
  const m = /الحلقة\s+(\d+)/u.exec(decodeTitle(raw));
  return m ? parseInt(m[1], 10) : 0;
}

function titleToSlug(t: string): string {
  return t.toLowerCase()
    .replace(/[^a-z0-9\u0600-\u06ff]+/gu, "-")
    .replace(/^-+|-+$/g, "");
}

function getThumbnail(post: ASPost): string {
  try {
    return post._embedded?.["wp:featuredmedia"]?.[0]?.source_url || "";
  } catch { return ""; }
}

function titleMatch(raw: string, qLow: string, qWords: string[]): boolean {
  const series = extractSeriesName(raw).toLowerCase().replace(/[^a-z0-9\u0600-\u06ff]/gu, "");
  return series.includes(qLow) || qLow.includes(series) ||
    qWords.some(w => w.length > 1 && series.includes(w.toLowerCase()));
}

/* ── Fetch by category only (search= is blocked from server IPs) ─────── */
async function asFetch(params: string): Promise<ASPost[]> {
  try {
    const url = `${ARABSEED_BASE}/wp-json/wp/v2/posts?${params}&_embed`;
    const r = await fetch(url, {
      headers: { "User-Agent": AS_UA, Accept: "application/json" },
      signal: AbortSignal.timeout(14_000),
    });
    if (!r.ok) return [];
    const j = await r.json();
    return Array.isArray(j) ? j : [];
  } catch { return []; }
}

/* ── Fetch ALL posts from a category (no search param) ──────────────── */
async function fetchAllByCategory(cat: number, maxPages = 5): Promise<ASPost[]> {
  const pageNums = Array.from({ length: maxPages }, (_, i) => i + 1);
  const pages = await Promise.all(
    pageNums.map(page =>
      asFetch(`categories=${cat}&per_page=100&orderby=date&order=desc&page=${page}`)
    )
  );
  return pages.flat();
}

/* ── Browse — returns deduplicated series list ───────────────────────── */
router.get("/kartoon/browse", async (req: Request, res: Response) => {
  const cat    = parseInt(String(req.query.cat  || String(CARTOON_CAT)), 10) || CARTOON_CAT;
  const page   = parseInt(String(req.query.page || "1"), 10) || 1;
  const search = String(req.query.search || "").trim();

  let posts: ASPost[];

  if (cat === ZAMAAN_CAT) {
    // Zamaan has ~207 posts — fetch all 3 pages in parallel
    const [p1, p2, p3] = await Promise.all([
      asFetch(`categories=${cat}&per_page=100&orderby=date&order=desc&page=1`),
      asFetch(`categories=${cat}&per_page=100&orderby=date&order=desc&page=2`),
      asFetch(`categories=${cat}&per_page=100&orderby=date&order=desc&page=3`),
    ]);
    posts = [...p1, ...p2, ...p3];
  } else {
    posts = await asFetch(`categories=${cat}&per_page=100&orderby=date&order=desc&page=${page}`);
  }

  const qLow   = search.toLowerCase().replace(/[^a-z0-9\u0600-\u06ff]/gu, "");
  const qWords = search.split(/\s+/).filter(w => w.length > 1);

  const seriesMap = new Map<string, {
    slug: string; title: string; thumbnail: string;
    epCount: number; latestEp: number; postId: number; cat: number;
  }>();

  for (const post of posts) {
    const raw    = post.title?.rendered || "";
    const series = extractSeriesName(raw);
    if (!series || series.length < 2) continue;

    // Filter by search if provided
    if (search && !titleMatch(raw, qLow, qWords)) continue;

    const ep    = extractEpNum(raw);
    const slug  = titleToSlug(series);
    const thumb = getThumbnail(post);

    const existing = seriesMap.get(slug);
    if (!existing) {
      seriesMap.set(slug, { slug, title: series, thumbnail: thumb, epCount: 1, latestEp: ep, postId: post.id, cat });
    } else {
      existing.epCount++;
      if (ep > existing.latestEp) {
        existing.latestEp = ep;
        if (thumb) existing.thumbnail = thumb;
      }
      if (!existing.thumbnail && thumb) existing.thumbnail = thumb;
    }
  }

  const series = Array.from(seriesMap.values());
  const hasMore = cat === ZAMAAN_CAT ? false : posts.length >= 100;
  res.json({ series, total: series.length, hasMore });
});

/* ── Episodes of a series ────────────────────────────────────────────── */
router.get("/kartoon/episodes", async (req: Request, res: Response) => {
  const q    = String(req.query.q   || "").trim();
  const cat  = parseInt(String(req.query.cat || String(CARTOON_CAT)), 10) || CARTOON_CAT;

  if (!q) { res.json({ episodes: [], total: 0 }); return; }

  const qLow   = q.toLowerCase().replace(/[^a-z0-9\u0600-\u06ff]/gu, "");
  const qWords  = q.split(/\s+/).filter(w => w.length > 1);

  // Search= is blocked from Replit server IPs — fetch ALL posts from category instead
  const maxPages = cat === ZAMAAN_CAT ? 3 : 5;
  const posts = await fetchAllByCategory(cat, maxPages);

  const EP_RE = /الحلقة\s+(\d+)/u;
  const seenNums = new Set<number>();
  const episodes: { id: number; num: number; title: string; link: string; thumb: string }[] = [];

  for (const post of posts) {
    const raw     = post.title?.rendered || "";
    const decoded = decodeTitle(raw);
    const epM     = EP_RE.exec(decoded);
    if (!epM) continue;
    const epNum = parseInt(epM[1], 10);
    if (!epNum || seenNums.has(epNum)) continue;
    if (!titleMatch(raw, qLow, qWords)) continue;

    seenNums.add(epNum);
    episodes.push({ id: post.id, num: epNum, title: decoded, link: post.link, thumb: getThumbnail(post) });
  }

  episodes.sort((a, b) => a.num - b.num);
  res.json({ episodes, total: episodes.length });
});

/* ── ArabSeed scraper helpers ─────────────────────────────────────────── */
async function asGet(url: string, referer = ARABSEED_BASE + "/"): Promise<string> {
  try {
    const r = await fetch(url, {
      headers: { "User-Agent": AS_UA, "Referer": referer, "Accept": "text/html,application/xhtml+xml" },
      signal: AbortSignal.timeout(12_000),
    });
    return r.ok ? r.text() : "";
  } catch { return ""; }
}

async function asPost(path: string, body: URLSearchParams, ref: string): Promise<any | null> {
  try {
    const r = await fetch(`${ARABSEED_BASE}${path}`, {
      method: "POST",
      headers: {
        "User-Agent": AS_UA, "Referer": ref,
        "Content-Type": "application/x-www-form-urlencoded",
        "X-Requested-With": "XMLHttpRequest",
        "Accept": "application/json",
      },
      body: body.toString(),
      signal: AbortSignal.timeout(10_000),
    });
    if (!r.ok) return null;
    return await r.json().catch(() => null);
  } catch { return null; }
}

async function extractMp4FromEmbed(embedUrl: string, srcRef: string): Promise<{ directUrl: string; proxyUrl: string } | null> {
  if (!embedUrl?.startsWith("http")) return null;
  try {
    const html = await fetch(embedUrl, {
      headers: { "User-Agent": AS_UA, "Referer": srcRef },
      signal: AbortSignal.timeout(10_000),
    }).then(r => r.ok ? r.text() : "").catch(() => "");
    if (!html) return null;

    const srcM = html.match(/<source[^>]+src=["'](https?:\/\/[^"']+)["']/i);
    if (srcM) {
      const directUrl = srcM[1];
      const isHls     = directUrl.includes(".m3u8");
      const proxyUrl  = isHls
        ? `/api/anime/hls-proxy?url=${encodeURIComponent(directUrl)}&ref=${encodeURIComponent(embedUrl)}`
        : `/api/anime/video-proxy?url=${encodeURIComponent(directUrl)}&ref=${encodeURIComponent(embedUrl)}`;
      return { directUrl, proxyUrl };
    }

    const m3u8M = html.match(/["'](https?:\/\/[^"']+\.m3u8[^"']*)["']/i);
    if (m3u8M) {
      const directUrl = m3u8M[1];
      return {
        directUrl,
        proxyUrl: `/api/anime/hls-proxy?url=${encodeURIComponent(directUrl)}&ref=${encodeURIComponent(embedUrl)}`,
      };
    }

    const mp4M = html.match(/["'](https?:\/\/[^"']+\.mp4[^"']*)["']/i);
    if (mp4M) {
      const directUrl = mp4M[1];
      return {
        directUrl,
        proxyUrl: `/api/anime/video-proxy?url=${encodeURIComponent(directUrl)}&ref=${encodeURIComponent(embedUrl)}`,
      };
    }
  } catch {}
  return null;
}

/* ── Find episode URL by fetching category posts (no search) ─────────── */
async function findEpUrl(title: string, ep: number, cat: number): Promise<string | null> {
  const qLow   = title.toLowerCase().replace(/[^a-z0-9\u0600-\u06ff]/gu, "");
  const qWords = title.split(/\s+/).filter(w => w.length > 1);
  const EP_RE  = /الحلقة\s+(\d+)/u;

  const maxPages = cat === ZAMAAN_CAT ? 3 : 5;
  const posts = await fetchAllByCategory(cat, maxPages);

  for (const post of posts) {
    const decoded = decodeTitle(post.title?.rendered || "");
    const m = EP_RE.exec(decoded);
    if (!m || parseInt(m[1], 10) !== ep) continue;
    if (!titleMatch(post.title?.rendered || "", qLow, qWords)) continue;
    return post.link;
  }
  return null;
}

async function getArabSeedSources(title: string, ep: number, cat: number): Promise<any[]> {
  const epUrl = await findEpUrl(title, ep, cat);
  if (!epUrl) return [];

  const epHtml = await asGet(epUrl, `${ARABSEED_BASE}/`);
  if (!epHtml) return [];

  const postIdM = epHtml.match(/['"]psot_id['"]\s*:\s*['"]?(\d{4,9})['"]?/)
                || epHtml.match(/data-post-id=["'](\d{4,9})["']/)
                || epHtml.match(/psot_id[^\d]*(\d{4,9})/);
  const csrfM   = epHtml.match(/csrf__token['":\s]*["']([a-zA-Z0-9_/+\-]{4,120})["']/);

  const sources: any[] = [];

  // ── Strategy 1: AJAX ──
  if (postIdM?.[1] && csrfM?.[1]) {
    const postId  = postIdM[1];
    const csrfTok = csrfM[1];

    const qualityCandidates = ["720", "480", "1080", "360", "FHD", "HD", "SD"];
    let serverList: Array<{ idx: string; qu: string; name: string }> = [];
    let workingQu = "720";

    for (const qu of qualityCandidates) {
      const qData = await asPost(
        "/get__quality__servers/",
        new URLSearchParams({ post_id: postId, quality: qu, csrf_token: csrfTok }),
        epUrl,
      );
      if (!qData) continue;

      if (qData.server) {
        const embedUrl = qData.server as string;
        const extracted = await extractMp4FromEmbed(embedUrl, epUrl);
        if (extracted) {
          sources.push({ url: extracted.proxyUrl, label: `عرب سيد · ح${ep}`, directUrl: extracted.directUrl, proxyUrl: extracted.proxyUrl });
        } else {
          sources.push({ url: embedUrl, label: `عرب سيد · ح${ep}` });
        }
        break;
      }

      const btnHtml = qData.html || "";
      if (!btnHtml.trim()) continue;

      const liMatches = [...btnHtml.matchAll(/<li[^>]*data-server=["'](\d+)["'][^>]*data-qu=["']([^"']+)["'][^>]*>[\s\S]*?<span>([^<]*)<\/span>/gi)];
      if (liMatches.length) {
        serverList = liMatches.map((m: RegExpMatchArray) => ({ idx: m[1], qu: m[2], name: m[3].trim() }));
        workingQu = serverList[0].qu;
        break;
      }

      const idxMatches = [...btnHtml.matchAll(/data-server=["'](\d+)["']/gi)];
      if (idxMatches.length) {
        serverList = idxMatches.map((m: RegExpMatchArray) => ({ idx: m[1], qu, name: `سيرفر ${m[1]}` }));
        workingQu = qu;
        break;
      }
    }

    for (const { idx, qu, name } of serverList.slice(0, 4)) {
      if (sources.length >= 4) break;
      const sData = await asPost(
        "/get__watch__server/",
        new URLSearchParams({ post_id: postId, quality: qu || workingQu, server: idx, csrf_token: csrfTok }),
        epUrl,
      );
      const embedUrl = sData?.server as string | undefined;
      if (!embedUrl?.startsWith("http")) continue;

      const extracted = await extractMp4FromEmbed(embedUrl, epUrl);
      if (extracted) {
        sources.push({
          url: extracted.proxyUrl, label: `عرب سيد · ${name}`,
          directUrl: extracted.directUrl, proxyUrl: extracted.proxyUrl,
        });
      } else {
        sources.push({ url: embedUrl, label: `عرب سيد · ${name}` });
      }
    }
  }

  // ── Strategy 2: Fallback — direct video in HTML ──
  if (sources.length === 0) {
    const srcM = epHtml.match(/<source[^>]+src=["'](https?:\/\/[^"']+\.(?:mp4|m3u8)[^"']*)["']/i);
    if (srcM) {
      const directUrl = srcM[1];
      const isHls = directUrl.includes(".m3u8");
      const proxyUrl = isHls
        ? `/api/anime/hls-proxy?url=${encodeURIComponent(directUrl)}&ref=${encodeURIComponent(epUrl)}`
        : `/api/anime/video-proxy?url=${encodeURIComponent(directUrl)}&ref=${encodeURIComponent(epUrl)}`;
      sources.push({ url: proxyUrl, label: `عرب سيد · ح${ep}`, directUrl, proxyUrl });
    }

    for (const m of epHtml.matchAll(/<iframe[^>]+src=["'](https?:\/\/[^"']+)["']/gi)) {
      const u = m[1];
      if (u.includes("google") || u.includes("facebook") || u.includes("disqus")) continue;
      const extracted = await extractMp4FromEmbed(u, epUrl);
      if (extracted) {
        sources.push({ url: extracted.proxyUrl, label: `عرب سيد · ح${ep}`, directUrl: extracted.directUrl, proxyUrl: extracted.proxyUrl });
      } else {
        sources.push({ url: u, label: `عرب سيد · ح${ep}` });
      }
      if (sources.length >= 3) break;
    }
  }

  return sources;
}

/* ── SSE sources stream ──────────────────────────────────────────────── */
router.get("/kartoon/sources-stream", async (req: Request, res: Response) => {
  const title = String(req.query.title || "").trim();
  const ep    = parseInt(String(req.query.ep || "1"), 10) || 1;
  const cat   = parseInt(String(req.query.cat || String(CARTOON_CAT)), 10) || CARTOON_CAT;

  res.setHeader("Content-Type",      "text/event-stream; charset=utf-8");
  res.setHeader("Cache-Control",     "no-cache");
  res.setHeader("Connection",        "keep-alive");
  res.setHeader("X-Accel-Buffering", "no");
  res.flushHeaders();

  const send = (event: string, data: unknown) => {
    try { res.write(`event: ${event}\ndata: ${JSON.stringify(data)}\n\n`); } catch {}
  };

  const keepAlive = setInterval(() => { try { res.write(": keepalive\n\n"); } catch {} }, 5_000);
  req.on("close", () => { clearInterval(keepAlive); });

  const forceClose = setTimeout(() => {
    clearInterval(keepAlive);
    send("done", { total: 0 });
    try { res.end(); } catch {}
  }, 40_000);

  try {
    if (!title) { send("done", { total: 0 }); return; }
    send("status", { msg: `جاري البحث عن "${title}" الحلقة ${ep}…` });

    const sources = await getArabSeedSources(title, ep, cat);

    for (const src of sources) {
      send("source", src);
    }

    if (!sources.length) send("status", { msg: "لم يُعثر على مصادر لهذه الحلقة" });
    send("done", { total: sources.length });
  } catch (e: any) {
    send("error", { msg: e?.message || "خطأ غير متوقع" });
  } finally {
    clearTimeout(forceClose);
    clearInterval(keepAlive);
    res.end();
  }
});

export default router;
