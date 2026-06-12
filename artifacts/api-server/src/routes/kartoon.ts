import { Router, type Request, type Response } from "express";

const router = Router();

const ARABSEED_BASE = "https://m.asd.ink";
const AS_UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36";
const CARTOON_CAT = 2496;
const ZAMAAN_CAT  = 230926;

interface ASPost {
  id: number;
  link: string;
  title?: { rendered: string };
  _embedded?: { "wp:featuredmedia"?: Array<{ source_url?: string }> };
}

function decodeTitle(raw: string): string {
  return (raw || "").replace(/&#(\d+);/g, (_, n) => String.fromCharCode(+n)).replace(/&amp;/g, "&");
}

function extractSeriesName(raw: string): string {
  const t = decodeTitle(raw);
  let s = t.replace(/^(?:انمي\s+|مسلسل\s+|فيلم\s+)/u, "");
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

  const params = search
    ? `search=${encodeURIComponent(search)}&categories=${cat}&per_page=100&orderby=date&order=desc`
    : `categories=${cat}&per_page=100&orderby=date&order=desc&page=${page}`;

  const posts = await asFetch(params);

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
    }
  }

  const series = Array.from(seriesMap.values()).filter(s => s.thumbnail);
  res.json({ series, total: series.length });
});

/* ── Episodes of a series ────────────────────────────────────────────── */
router.get("/kartoon/episodes", async (req: Request, res: Response) => {
  const q    = String(req.query.q   || "").trim();
  const cat  = parseInt(String(req.query.cat || String(CARTOON_CAT)), 10) || CARTOON_CAT;
  const page = parseInt(String(req.query.page || "1"), 10) || 1;

  if (!q) { res.json({ episodes: [], total: 0 }); return; }

  const params = `search=${encodeURIComponent(q)}&categories=${cat}&per_page=100&orderby=date&order=asc&page=${page}`;
  const posts  = await asFetch(params);

  const EP_RE = /الحلقة\s+(\d+)/u;
  const episodes: { id: number; num: number; title: string; link: string; thumb: string }[] = [];
  const seenNums = new Set<number>();

  const qLow = q.toLowerCase().replace(/[^a-z0-9]/g, "");

  for (const post of posts) {
    const raw     = post.title?.rendered || "";
    const decoded = decodeTitle(raw);
    const epM     = EP_RE.exec(decoded);
    if (!epM) continue;
    const epNum = parseInt(epM[1], 10);
    if (!epNum || seenNums.has(epNum)) continue;

    const series  = extractSeriesName(raw).toLowerCase().replace(/[^a-z0-9]/g, "");
    if (qLow.length > 2 && series.length > 2 && !series.includes(qLow) && !qLow.includes(series)) continue;

    seenNums.add(epNum);
    episodes.push({ id: post.id, num: epNum, title: decoded, link: post.link, thumb: getThumbnail(post) });
  }

  episodes.sort((a, b) => a.num - b.num);
  res.json({ episodes, total: episodes.length });
});

/* ── ArabSeed scraper helpers ─────────────────────────────────────────── */
async function asPost(path: string, body: URLSearchParams, ref: string): Promise<any | null> {
  try {
    const r = await fetch(`${ARABSEED_BASE}${path}`, {
      method: "POST",
      headers: {
        "User-Agent": AS_UA, "Referer": ref,
        "Content-Type": "application/x-www-form-urlencoded",
        "X-Requested-With": "XMLHttpRequest",
      },
      body: body.toString(),
      signal: AbortSignal.timeout(10_000),
    });
    if (!r.ok) return null;
    return await r.json().catch(() => null);
  } catch { return null; }
}

async function extractMp4FromEmbed(embedUrl: string): Promise<{ directUrl: string; proxyUrl: string } | null> {
  if (!embedUrl?.startsWith("http")) return null;
  try {
    const html = await fetch(embedUrl, {
      headers: { "User-Agent": AS_UA, "Referer": `${ARABSEED_BASE}/` },
      signal: AbortSignal.timeout(10_000),
    }).then(r => r.ok ? r.text() : "");
    if (!html) return null;

    const srcM = html.match(/<source[^>]+src=["'](https?:\/\/[^"']+)["']/i);
    if (srcM) {
      const directUrl = srcM[1];
      const isHls = directUrl.includes(".m3u8");
      const proxyUrl = isHls
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
  } catch {}
  return null;
}

async function findEpUrl(title: string, ep: number): Promise<string | null> {
  const EP_RE = /الحلقة\s+(\d+)/u;
  const enc   = encodeURIComponent(title);
  const qWords = title.toLowerCase().split(/\s+/).filter(w => w.length > 2);

  const [targeted, asc, desc] = await Promise.all([
    asFetch(`search=${encodeURIComponent(title + " الحلقة " + ep)}&per_page=20`),
    asFetch(`search=${enc}&per_page=100&orderby=date&order=asc`),
    asFetch(`search=${enc}&per_page=100&orderby=date&order=desc`),
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

  const referer = `${ARABSEED_BASE}/`;
  const epHtml  = await fetch(epUrl, {
    headers: { "User-Agent": AS_UA, "Referer": referer },
    signal: AbortSignal.timeout(12_000),
  }).then(r => r.ok ? r.text() : "").catch(() => "");
  if (!epHtml) return [];

  const psotM = epHtml.match(/psot_id['":\s]*(\d{4,9})/) || epHtml.match(/psot_id[^'"0-9]*(\d{4,9})/);
  const csrfM = epHtml.match(/csrf__token['":\s]*["']([a-zA-Z0-9_/\-]{4,80})["']/);
  if (!psotM?.[1] || !csrfM?.[1]) return [];

  const postId  = psotM[1];
  const csrfTok = csrfM[1];

  const qData = await asPost(
    "/get__quality__servers/",
    new URLSearchParams({ post_id: postId, quality: "1080", csrf_token: csrfTok }),
    epUrl,
  );
  if (!qData) return [];

  const btnHtml      = qData.html || "";
  const serverIndices: number[] = [...btnHtml.matchAll(/data-server=["'](\d+)["']/gi)]
    .map((m: RegExpMatchArray) => parseInt(m[1], 10));

  const embedUrls: string[] = [];
  if (!serverIndices.length && qData.server) {
    embedUrls.push(qData.server as string);
  } else {
    for (const idx of serverIndices.slice(0, 5)) {
      const sData = await asPost(
        "/get__watch__server/",
        new URLSearchParams({ post_id: postId, quality: "1080", server: String(idx), csrf_token: csrfTok }),
        epUrl,
      );
      if (sData?.server) embedUrls.push(sData.server as string);
    }
  }

  const sources: any[] = [];
  for (const embedUrl of embedUrls) {
    const extracted = await extractMp4FromEmbed(embedUrl);
    if (extracted) {
      sources.push({
        url: extracted.directUrl,
        label: `عرب سيد · ح${ep}`,
        directUrl: extracted.directUrl,
        proxyUrl:  extracted.proxyUrl,
      });
    }
    if (sources.length >= 3) break;
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
  }, 28_000);

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
