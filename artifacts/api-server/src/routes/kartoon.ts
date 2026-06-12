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

/* ── Browse — returns deduplicated series list ───────────────────────── */
router.get("/kartoon/browse", async (req: Request, res: Response) => {
  const cat    = parseInt(String(req.query.cat  || String(CARTOON_CAT)), 10) || CARTOON_CAT;
  const page   = parseInt(String(req.query.page || "1"), 10) || 1;
  const search = String(req.query.search || "").trim();

  let posts: ASPost[];

  if (search) {
    posts = await asFetch(`search=${encodeURIComponent(search)}&categories=${cat}&per_page=100&orderby=date&order=desc`);
  } else if (cat === ZAMAAN_CAT) {
    // Zamaan has ~207 posts — fetch all 3 pages in parallel so all series appear
    const [p1, p2, p3] = await Promise.all([
      asFetch(`categories=${cat}&per_page=100&orderby=date&order=desc&page=1`),
      asFetch(`categories=${cat}&per_page=100&orderby=date&order=desc&page=2`),
      asFetch(`categories=${cat}&per_page=100&orderby=date&order=desc&page=3`),
    ]);
    posts = [...p1, ...p2, ...p3];
  } else {
    posts = await asFetch(`categories=${cat}&per_page=100&orderby=date&order=desc&page=${page}`);
  }

  const seriesMap = new Map<string, {
    slug: string; title: string; thumbnail: string;
    epCount: number; latestEp: number; postId: number; cat: number;
  }>();

  for (const post of posts) {
    const raw    = post.title?.rendered || "";
    const series = extractSeriesName(raw);
    if (!series || series.length < 2) continue;
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

  // Don't filter by thumbnail — include all series
  const series = Array.from(seriesMap.values());
  // For Zamaan we already fetched all pages — no more pages to load
  const hasMore = cat === ZAMAAN_CAT ? false : posts.length >= 100;
  res.json({ series, total: series.length, hasMore });
});

/* ── Episodes of a series ────────────────────────────────────────────── */
router.get("/kartoon/episodes", async (req: Request, res: Response) => {
  const q    = String(req.query.q   || "").trim();
  const cat  = parseInt(String(req.query.cat || String(CARTOON_CAT)), 10) || CARTOON_CAT;
  const page = parseInt(String(req.query.page || "1"), 10) || 1;

  if (!q) { res.json({ episodes: [], total: 0 }); return; }

  // Try multiple search strategies in parallel
  const qLow   = q.toLowerCase().replace(/[^a-z0-9\u0600-\u06ff]/gu, "");
  const qWords  = q.split(/\s+/).filter(w => w.length > 1);

  // Build search term — try exact title + Arabic episode keyword for better results
  const [byExact, byWords, byAsc] = await Promise.all([
    asFetch(`search=${encodeURIComponent(q)}&categories=${cat}&per_page=100&orderby=date&order=desc&page=${page}`),
    qWords.length > 1 ? asFetch(`search=${encodeURIComponent(qWords[0])}&categories=${cat}&per_page=100&orderby=date&order=asc`) : Promise.resolve([] as ASPost[]),
    asFetch(`search=${encodeURIComponent(q)}&categories=${cat}&per_page=100&orderby=date&order=asc&page=${page}`),
  ]);

  const EP_RE = /الحلقة\s+(\d+)/u;
  const seenNums = new Set<number>();
  const episodes: { id: number; num: number; title: string; link: string; thumb: string }[] = [];

  function processPost(post: ASPost) {
    const raw     = post.title?.rendered || "";
    const decoded = decodeTitle(raw);
    const epM     = EP_RE.exec(decoded);
    if (!epM) return;
    const epNum = parseInt(epM[1], 10);
    if (!epNum || seenNums.has(epNum)) return;

    // Filter: series name must overlap with query
    const seriesName = extractSeriesName(raw).toLowerCase().replace(/[^a-z0-9\u0600-\u06ff]/gu, "");
    const overlap    = seriesName.includes(qLow) || qLow.includes(seriesName) ||
                       qWords.some(w => seriesName.includes(w.toLowerCase()) || decoded.includes(w));
    if (qLow.length > 2 && seriesName.length > 2 && !overlap) return;

    seenNums.add(epNum);
    episodes.push({ id: post.id, num: epNum, title: decoded, link: post.link, thumb: getThumbnail(post) });
  }

  for (const post of [...byExact, ...byAsc, ...byWords]) processPost(post);
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

    // Direct source tag
    const srcM = html.match(/<source[^>]+src=["'](https?:\/\/[^"']+)["']/i);
    if (srcM) {
      const directUrl = srcM[1];
      const isHls     = directUrl.includes(".m3u8");
      const proxyUrl  = isHls
        ? `/api/anime/hls-proxy?url=${encodeURIComponent(directUrl)}&ref=${encodeURIComponent(embedUrl)}`
        : `/api/anime/video-proxy?url=${encodeURIComponent(directUrl)}&ref=${encodeURIComponent(embedUrl)}`;
      return { directUrl, proxyUrl };
    }

    // HLS m3u8 in JS
    const m3u8M = html.match(/["'](https?:\/\/[^"']+\.m3u8[^"']*)["']/i);
    if (m3u8M) {
      const directUrl = m3u8M[1];
      return {
        directUrl,
        proxyUrl: `/api/anime/hls-proxy?url=${encodeURIComponent(directUrl)}&ref=${encodeURIComponent(embedUrl)}`,
      };
    }

    // MP4 in JS
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

async function findEpUrl(title: string, ep: number): Promise<string | null> {
  const EP_RE  = /الحلقة\s+(\d+)/u;
  const qWords = title.toLowerCase().split(/\s+/).filter(w => w.length > 2);

  // Try both targeted and broad searches in parallel
  const [targeted, asc, desc] = await Promise.all([
    asFetch(`search=${encodeURIComponent(title + " الحلقة " + ep)}&per_page=20`),
    asFetch(`search=${encodeURIComponent(title)}&per_page=100&orderby=date&order=asc`),
    asFetch(`search=${encodeURIComponent(title)}&per_page=100&orderby=date&order=desc`),
  ]);

  function matchEp(posts: ASPost[]): string | null {
    for (const post of posts) {
      const decoded = decodeTitle(post.title?.rendered || "");
      const m = EP_RE.exec(decoded);
      if (!m || parseInt(m[1], 10) !== ep) continue;
      const series = extractSeriesName(post.title?.rendered || "").toLowerCase();
      if (qWords.some(w => series.includes(w) || decoded.toLowerCase().includes(w))) return post.link;
    }
    return null;
  }

  return matchEp(targeted) ?? matchEp(asc) ?? matchEp(desc);
}

async function getArabSeedSources(title: string, ep: number): Promise<any[]> {
  const epUrl = await findEpUrl(title, ep);
  if (!epUrl) return [];

  const epHtml = await asGet(epUrl, `${ARABSEED_BASE}/`);
  if (!epHtml) return [];

  // Extract post ID (try multiple patterns)
  const postIdM = epHtml.match(/['"]psot_id['"]\s*:\s*['"]?(\d{4,9})['"]?/)
                || epHtml.match(/data-post-id=["'](\d{4,9})["']/)
                || epHtml.match(/psot_id[^\d]*(\d{4,9})/);
  const csrfM   = epHtml.match(/csrf__token['":\s]*["']([a-zA-Z0-9_/+\-]{4,120})["']/);

  const sources: any[] = [];

  // ── Strategy 1: AJAX with multiple quality levels ──
  if (postIdM?.[1] && csrfM?.[1]) {
    const postId  = postIdM[1];
    const csrfTok = csrfM[1];

    // Try all quality names (site uses different labels)
    const qualities = ["FHD", "HD", "SD", "1080", "720", "480"];
    let serverIndices: number[] = [];
    let directServer: string | null = null;

    for (const quality of qualities) {
      const qData = await asPost(
        "/get__quality__servers/",
        new URLSearchParams({ post_id: postId, quality, csrf_token: csrfTok }),
        epUrl,
      );
      if (!qData) continue;
      const btnHtml = qData.html || "";
      const indices = [...btnHtml.matchAll(/data-server=["'](\d+)["']/gi)]
        .map((m: RegExpMatchArray) => parseInt(m[1], 10));
      if (indices.length) { serverIndices = indices; break; }
      if (qData.server) { directServer = qData.server as string; break; }
    }

    // If got direct server URL
    if (directServer) {
      const extracted = await extractMp4FromEmbed(directServer, epUrl);
      if (extracted) {
        sources.push({
          url: extracted.proxyUrl, label: `كرتون · ح${ep}`,
          directUrl: extracted.directUrl, proxyUrl: extracted.proxyUrl,
        });
      }
    }

    // Fetch each server embed
    for (const idx of serverIndices.slice(0, 5)) {
      if (sources.length >= 3) break;
      const sData = await asPost(
        "/get__watch__server/",
        new URLSearchParams({ post_id: postId, quality: "HD", server: String(idx), csrf_token: csrfTok }),
        epUrl,
      );
      const embedUrl = sData?.server as string | undefined;
      if (!embedUrl) continue;
      const extracted = await extractMp4FromEmbed(embedUrl, epUrl);
      if (extracted) {
        sources.push({
          url: extracted.proxyUrl, label: `كرتون · س${idx} · ح${ep}`,
          directUrl: extracted.directUrl, proxyUrl: extracted.proxyUrl,
        });
      }
    }
  }

  // ── Strategy 2: Direct iframe extraction from episode HTML ──
  if (sources.length === 0) {
    // Look for iframes embedded in the player section
    const iframeRe = /<iframe[^>]+src=["'](https?:\/\/[^"']+)["'][^>]*>/gi;
    let iframeMatch: RegExpExecArray | null;
    const embedsFromPage: string[] = [];
    while ((iframeMatch = iframeRe.exec(epHtml)) !== null) {
      const u = iframeMatch[1];
      if (!u.includes("google") && !u.includes("facebook") && !u.includes("disqus")) {
        embedsFromPage.push(u);
      }
    }

    // Also check for data-src attributes
    const dataSrcRe = /data-src=["'](https?:\/\/[^"']+)["']/gi;
    let dsMatch: RegExpExecArray | null;
    while ((dsMatch = dataSrcRe.exec(epHtml)) !== null) {
      const u = dsMatch[1];
      if (u.includes("watch") || u.includes("embed") || u.includes("play") || u.includes("stream")) {
        embedsFromPage.push(u);
      }
    }

    // Look for direct video/source tags in the page
    const srcM = epHtml.match(/<source[^>]+src=["'](https?:\/\/[^"']+\.(?:mp4|m3u8)[^"']*)["']/i);
    if (srcM) {
      const directUrl = srcM[1];
      const isHls     = directUrl.includes(".m3u8");
      const proxyUrl  = isHls
        ? `/api/anime/hls-proxy?url=${encodeURIComponent(directUrl)}&ref=${encodeURIComponent(epUrl)}`
        : `/api/anime/video-proxy?url=${encodeURIComponent(directUrl)}&ref=${encodeURIComponent(epUrl)}`;
      sources.push({ url: proxyUrl, label: `كرتون · ح${ep}`, directUrl, proxyUrl });
    }

    // Try extracting from iframes found in the page
    for (const embedUrl of [...new Set(embedsFromPage)].slice(0, 4)) {
      if (sources.length >= 3) break;
      const extracted = await extractMp4FromEmbed(embedUrl, epUrl);
      if (extracted) {
        sources.push({
          url: extracted.proxyUrl, label: `كرتون · ح${ep}`,
          directUrl: extracted.directUrl, proxyUrl: extracted.proxyUrl,
        });
      }
    }
  }

  return sources;
}

/* ── SSE sources stream ──────────────────────────────────────────────── */
router.get("/kartoon/sources-stream", async (req: Request, res: Response) => {
  const title = String(req.query.title || "").trim();
  const ep    = parseInt(String(req.query.ep || "1"), 10) || 1;

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
  }, 35_000);

  try {
    if (!title) { send("done", { total: 0 }); return; }
    send("status", { msg: `جاري البحث عن "${title}" الحلقة ${ep}…` });

    const sources = await getArabSeedSources(title, ep);

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
