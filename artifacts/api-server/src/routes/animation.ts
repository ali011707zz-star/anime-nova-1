import { Router, type Request, type Response } from "express";

const router = Router();

const TMDB_KEY  = process.env.TMDB_API_KEY || "8265bd1679663a7ea12ac168da84d2e8";
const TMDB_BASE = "https://api.themoviedb.org/3";
const SD_BASE   = "https://watch.stardima.com/watch";
const SD_AJAX   = "https://watch.stardima.com/watch/wp-admin/admin-ajax.php";
const MV_BASE   = "https://moviz-time.co";

const UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36";

// ── helpers ──────────────────────────────────────────────────────────────────

async function tmdb(path: string): Promise<any> {
  const sep = path.includes("?") ? "&" : "?";
  const url = `${TMDB_BASE}${path}${sep}api_key=${TMDB_KEY}&language=ar`;
  const r = await fetch(url, { signal: AbortSignal.timeout(12_000) });
  if (!r.ok) throw new Error(`TMDB ${r.status} — ${path}`);
  return r.json() as Promise<any>;
}

async function cfGet(url: string, referer?: string): Promise<string> {
  const r = await fetch(url, {
    headers: {
      "User-Agent"     : UA,
      "Accept"         : "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
      "Accept-Language": "ar,en;q=0.9",
      "Referer"        : referer || url,
    },
    signal: AbortSignal.timeout(14_000),
  });
  if (!r.ok) throw new Error(`HTTP ${r.status}`);
  return r.text();
}

function titleSim(a: string, b: string): number {
  const norm = (s: string) => s.toLowerCase().replace(/[^a-z0-9\u0600-\u06ff ]/g, "").replace(/\s+/g, " ").trim();
  const na = norm(a); const nb = norm(b);
  if (na === nb) return 1;
  if (na.includes(nb) || nb.includes(na)) return Math.min(0.95, 0.7 + 0.25 * (Math.min(na.length, nb.length) / Math.max(na.length, nb.length)));
  const wa = na.split(" "); const wb = nb.split(" ");
  const common = wa.filter(w => wb.some(x => x === w || (w.length > 3 && (x.includes(w) || w.includes(x))))).length;
  return common / Math.max(wa.length, wb.length);
}

function parsePostId(html: string): string | null {
  for (const re of [/postid-(\d+)/, /post_id['":\s]+(\d+)/, /"id":(\d+)/]) {
    const m = html.match(re); if (m) return m[1];
  }
  return null;
}

function parseNonce(html: string): string {
  // Try data-nonce attribute first
  const m1 = html.match(/data-nonce="([a-f0-9]{10,12})"/);
  if (m1) return m1[1];
  // Try JSON nonce
  const m2 = html.match(/"nonce"\s*:\s*"([a-f0-9]{10,12})"/);
  if (m2) return m2[1];
  // Try wp_localize_script nonce
  const m3 = html.match(/nonce["'\s:]+([a-f0-9]{10,12})/);
  if (m3) return m3[1];
  return "023077457a";
}

// Extract data-src or src iframes from HTML
function parseIframes(html: string, skipDomains: string[] = []): string[] {
  const seen = new Set<string>();
  const out: string[] = [];
  const re = /<iframe[^>]+(?:data-src|src)\s*=\s*["']([^"']+)["'][^>]*>/gi;
  let m: RegExpExecArray | null;
  while ((m = re.exec(html)) !== null) {
    const u = m[1].trim();
    if (!u || u.startsWith("about:") || u.startsWith("javascript:")) continue;
    if (seen.has(u)) continue;
    const skip = skipDomains.some(d => u.includes(d));
    if (skip) continue;
    seen.add(u);
    out.push(u);
  }
  return out;
}

// ── StarDima helpers ──────────────────────────────────────────────────────────

function parseSDShows(html: string): { title: string; slug: string; poster: string; section: "tvshows" | "movies" }[] {
  const seen = new Set<string>();
  const out: { title: string; slug: string; poster: string; section: "tvshows" | "movies" }[] = [];

  for (const section of ["tvshows", "movies"] as const) {
    const re1 = new RegExp(
      `href="https://watch\\.stardima\\.com/watch/${section}/([^"]+)"[^>]*>[\\s\\S]{0,400}?<img[^>]+src="([^"]+)"[^>]*alt="([^"]*)"`, "g"
    );
    let m: RegExpExecArray | null;
    while ((m = re1.exec(html)) !== null) {
      const slug = decodeURIComponent(m[1]).replace(/\/$/, "");
      if (seen.has(slug)) continue; seen.add(slug);
      out.push({ slug, poster: m[2], title: m[3].trim() || slug, section });
    }
    const re2 = new RegExp(
      `<a[^>]+href="https://watch\\.stardima\\.com/watch/${section}/([^"]+)"[^>]*>([^<]+)<`, "g"
    );
    while ((m = re2.exec(html)) !== null) {
      const slug = decodeURIComponent(m[1]).replace(/\/$/, "");
      if (seen.has(slug)) continue; seen.add(slug);
      out.push({ slug, poster: "", title: m[2].trim() || slug, section });
    }
  }
  return out;
}

function parseSDEpisodes(html: string): { title: string; slug: string; num: number }[] {
  const seen = new Set<string>();
  const out: { title: string; slug: string; num: number }[] = [];
  const re = /href="https:\/\/watch\.stardima\.com\/watch\/episodes\/([^"]+)"[^>]*(?:title="([^"]*)")?/g;
  let m: RegExpExecArray | null;
  while ((m = re.exec(html)) !== null) {
    const slug = decodeURIComponent(m[1]).replace(/\/$/, "");
    if (seen.has(slug)) continue; seen.add(slug);
    const title = m[2] ? m[2].trim() : slug;
    const numM = title.match(/(\d+)/);
    out.push({ slug, title, num: numM ? parseInt(numM[1]) : out.length + 1 });
  }
  return out;
}

async function sdDoopPlayerAjax(postId: string, nonce: string, referer: string): Promise<string[]> {
  const out: string[] = [];
  await Promise.allSettled(
    [1, 2, 3, 4, 5].map(async (num) => {
      const body = new URLSearchParams({
        action : "doo_player_ajax",
        post_id: postId,
        nonce,
        num    : String(num),
        g      : "0",
      });
      try {
        const r = await fetch(SD_AJAX, {
          method : "POST",
          headers: {
            "Content-Type"    : "application/x-www-form-urlencoded",
            "User-Agent"      : UA,
            "Referer"         : referer,
            "X-Requested-With": "XMLHttpRequest",
          },
          body  : body.toString(),
          signal: AbortSignal.timeout(7_000),
        });
        if (!r.ok) return;
        const text = await r.text();
        if (!text || text === "0" || text === "false") return;
        let parsed: any;
        try { parsed = JSON.parse(text); } catch { return; }
        const url = parsed.embed_url || parsed.url || parsed.link || "";
        if (url) out.push(url);
      } catch { /* skip */ }
    })
  );
  return out;
}

// ── moviz-time.co helpers ─────────────────────────────────────────────────────

function parseMVLinks(html: string): { url: string; title: string }[] {
  const seen = new Set<string>();
  const out: { url: string; title: string }[] = [];
  // Match any moviz-time.co page links (case-insensitive percent encoding)
  const re = /href="(https?:\/\/moviz-time\.co\/[^"]+)"[^>]*(?:title="([^"]*)")?/gi;
  let m: RegExpExecArray | null;
  while ((m = re.exec(html)) !== null) {
    const url  = m[1];
    const title = m[2] || decodeURIComponent(url).split("/").filter(Boolean).pop() || url;
    if (seen.has(url)) continue;
    // Skip pagination, category, feed, contact, tag pages
    if (/\/(category|page|feed|tag|contact|about|wp-|wp-json)\//i.test(url)) continue;
    if (url === "https://moviz-time.co/" || url === "https://moviz-time.co") continue;
    seen.add(url);
    out.push({ url, title });
  }
  return out;
}

async function mvScrapeMovie(url: string): Promise<string[]> {
  try {
    const html = await cfGet(url, MV_BASE + "/");
    const iframes = parseIframes(html, ["moviz-time", "google", "histats", "w3counter"]);
    return iframes;
  } catch { return []; }
}

// For moviz-time.co series: find episode links
async function mvFindEpisode(seriesUrl: string, epNum: number): Promise<string | null> {
  try {
    const html = await cfGet(seriesUrl, MV_BASE + "/");
    // Look for episode links
    const re = /href="(https:\/\/moviz-time\.co\/[^"]+(?:الحلقة|حلقة|episode)[^"]+)"/g;
    const episodes: { url: string; num: number }[] = [];
    let m: RegExpExecArray | null;
    while ((m = re.exec(html)) !== null) {
      const ep = m[1];
      const numM = ep.match(/(?:الحلقة|حلقة|episode)[^\d]*(\d+)/u);
      const num = numM ? parseInt(numM[1]) : episodes.length + 1;
      episodes.push({ url: ep, num });
    }
    if (!episodes.length) return null;
    episodes.sort((a, b) => a.num - b.num);
    const target = episodes.find(e => e.num === epNum) || episodes[epNum - 1] || episodes[0];
    return target?.url || null;
  } catch { return null; }
}

// ── topcinemaa.com helpers ────────────────────────────────────────────────────

// topcinemaa uses /search/?query=...&type=all (NOT /?s=)
async function tcSearch(title: string): Promise<{ url: string; title: string; epNum?: number }[]> {
  const out: { url: string; title: string; epNum?: number }[] = [];
  const seen = new Set<string>();
  try {
    const html = await cfGet(`https://topcinemaa.com/search/?query=${encodeURIComponent(title)}&type=all`, "https://topcinemaa.com/");
    const re = /href="(https:\/\/topcinemaa\.com\/[^"]+)"[^>]*title="([^"]+)"/g;
    let m: RegExpExecArray | null;
    while ((m = re.exec(html)) !== null) {
      const url = m[1]; const t = m[2];
      if (!url || seen.has(url)) continue;
      if (/\/(category|page|feed|tag|wp-|wp-json|search|movies|series|full-packs|netflix)\//i.test(url)) continue;
      if (url === "https://topcinemaa.com/") continue;
      seen.add(url);
      // Extract episode number from title or URL
      const decoded = decodeURIComponent(url);
      const numM = (t + " " + decoded).match(/(?:الحلقة|ep|episode)[^\d]*(\d+)/ui);
      out.push({ url, title: t, epNum: numM ? parseInt(numM[1]) : undefined });
    }
  } catch { /* silent */ }
  return out;
}

async function tcScrapePlayer(url: string): Promise<string[]> {
  try {
    const html = await cfGet(url, "https://topcinemaa.com/");

    // 1. Try JSON-LD embedUrl (Schema.org VideoObject)
    const jsonLdM = html.match(/<script[^>]+type="application\/ld\+json"[^>]*>([\s\S]+?)<\/script>/gi);
    if (jsonLdM) {
      for (const block of jsonLdM) {
        const inner = block.replace(/<script[^>]*>/, "").replace(/<\/script>/, "");
        try {
          const obj = JSON.parse(inner);
          const embedUrl = obj.embedUrl || obj.embed_url || obj.contentUrl || "";
          if (embedUrl && !embedUrl.includes("topcinemaa")) return [embedUrl];
        } catch { /* skip */ }
      }
    }

    // 2. Try data-src iframes (lazy load) - skip image CDN
    const iframes = parseIframes(html, ["topcinemaa", "google", "histats", "w3counter", "wp-content"]);
    if (iframes.length) return iframes;

    // 3. Try scanning for known CDN embed URLs in script tags
    const cdnMatch = html.match(/https?:\/\/(?:embed\.mystream\.to|vidbm\.|streamwish\.|filemoon\.|ok\.ru|dood\.|streamtape\.|vidmoly\.|mega\.nz)[^\s"'<>]{6,}/gi);
    if (cdnMatch) return [...new Set(cdnMatch)].slice(0, 3);

    // 4. Get post ID — try HTML parse first, then WordPress REST API via slug
    let postId = parsePostId(html);
    if (!postId) {
      const slugMatch = url.match(/topcinemaa\.com\/([^/?#]+)\/?$/);
      if (slugMatch) {
        try {
          const slugRaw = slugMatch[1];
          const restText = await cfGet(
            `https://topcinemaa.com/wp-json/wp/v2/posts?slug=${slugRaw}&_fields=id`,
            "https://topcinemaa.com/"
          );
          const restData = JSON.parse(restText);
          if (Array.isArray(restData) && restData[0]?.id) postId = String(restData[0].id);
        } catch { /* silent */ }
      }
    }
    const nonce = parseNonce(html);
    if (!postId) return [];

    const results: string[] = [];
    await Promise.allSettled([1, 2, 3, 4, 5].map(async (num) => {
      const body = new URLSearchParams({ action: "doo_player_ajax", post_id: postId!, nonce, num: String(num), g: "0" });
      try {
        const r = await fetch("https://topcinemaa.com/wp-admin/admin-ajax.php", {
          method: "POST",
          headers: { "Content-Type": "application/x-www-form-urlencoded", "User-Agent": UA, "Referer": url, "X-Requested-With": "XMLHttpRequest" },
          body  : body.toString(),
          signal: AbortSignal.timeout(8_000),
        });
        if (!r.ok) return;
        const text = await r.text();
        if (!text || text === "0" || text === "false") return;
        let parsed: any;
        try { parsed = JSON.parse(text); } catch { return; }
        const u = parsed.embed_url || parsed.url || parsed.link || "";
        if (u) results.push(u);
      } catch { /* skip */ }
    }));
    return results;
  } catch { return []; }
}

// ── TMDB endpoints ────────────────────────────────────────────────────────────

router.get("/animation/browse", async (req: Request, res: Response) => {
  try {
    const type  = String(req.query.type  || "movie");
    const genre = String(req.query.genre || "16");
    const page  = String(req.query.page  || "1");
    const ep    = type === "tv" ? "/discover/tv"    : "/discover/movie";
    const gp    = genre === "all" || genre === "0"
                  ? "16"
                  : genre === "16" ? "16" : `16,${genre}`;
    // For TV: exclude anime (TMDB keyword 210024) so only Western animation appears
    const tvExtra = type === "tv" ? "&without_keywords=210024" : "";
    const data = await tmdb(`${ep}?with_genres=${gp}&sort_by=popularity.desc&page=${page}&include_adult=false${tvExtra}`);
    res.json(data);
  } catch (e) { res.status(502).json({ error: String(e) }); }
});

router.get("/animation/detail", async (req: Request, res: Response) => {
  try {
    const type = String(req.query.type || "movie");
    const id   = String(req.query.id   || "");
    if (!id) { res.status(400).json({ error: "id required" }); return; }
    const app = type === "tv"
      ? "aggregate_credits,recommendations,content_ratings"
      : "credits,recommendations";
    const data: any = await tmdb(`/${type}/${id}?append_to_response=${app}`);
    res.json(data);
  } catch (e) { res.status(502).json({ error: String(e) }); }
});

router.get("/animation/season", async (req: Request, res: Response) => {
  try {
    const id     = String(req.query.id     || "");
    const season = String(req.query.season || "1");
    if (!id) { res.status(400).json({ error: "id required" }); return; }
    const data: any = await tmdb(`/tv/${id}/season/${season}`);
    res.json(data);
  } catch (e) { res.status(502).json({ error: String(e) }); }
});

router.get("/animation/search", async (req: Request, res: Response) => {
  try {
    const q    = String(req.query.q   || "");
    const type = String(req.query.type || "multi");
    if (!q) { res.status(400).json({ error: "q required" }); return; }
    const data: any = await tmdb(`/search/${type}?query=${encodeURIComponent(q)}&include_adult=false`);
    const results = (data.results || []).filter(
      (r: any) => (r.genre_ids || []).includes(16) || type !== "multi"
    );
    res.json({ ...data, results });
  } catch (e) { res.status(502).json({ error: String(e) }); }
});

router.get("/animation/trending", async (req: Request, res: Response) => {
  try {
    const type   = String(req.query.type   || "movie");
    const window = String(req.query.window || "week");
    const data: any = await tmdb(`/trending/${type}/${window}`);
    const results = (data.results || []).filter((r: any) => (r.genre_ids || []).includes(16));
    res.json({ ...data, results });
  } catch (e) { res.status(502).json({ error: String(e) }); }
});

// ── StarDima endpoints (legacy) ───────────────────────────────────────────────

router.get("/animation/stardima-search", async (req: Request, res: Response) => {
  try {
    const q = String(req.query.q || "");
    if (!q) { res.status(400).json({ error: "q required" }); return; }
    const html  = await cfGet(`${SD_BASE}/?s=${encodeURIComponent(q)}`, SD_BASE + "/");
    const shows = parseSDShows(html).slice(0, 12);
    shows.sort((a, b) => titleSim(b.title, q) - titleSim(a.title, q));
    res.json({ shows });
  } catch (e) { res.status(502).json({ error: String(e), shows: [] }); }
});

router.get("/animation/stardima-series", async (req: Request, res: Response) => {
  try {
    const slug = String(req.query.slug || "");
    if (!slug) { res.status(400).json({ error: "slug required" }); return; }
    const html     = await cfGet(`${SD_BASE}/tvshows/${encodeURI(slug)}/`, SD_BASE + "/");
    const title    = (html.match(/property="og:title"\s+content="([^"]+)"/) || [])[1] || slug;
    const poster   = (html.match(/property="og:image"\s+content="([^"]+)"/) || [])[1] || "";
    const desc     = (html.match(/class="description[^"]*"[^>]*>\s*([\s\S]{0,400})/) || [])[1]
                      ?.replace(/<[^>]+>/g, "").trim() || "";
    const seasons: { slug: string; title: string }[] = [];
    const sRe = /href="https:\/\/watch\.stardima\.com\/watch\/seasons\/([^"]+)"[^>]*>([^<]+)</g;
    let m: RegExpExecArray | null;
    while ((m = sRe.exec(html)) !== null) {
      seasons.push({ slug: decodeURIComponent(m[1]).replace(/\/$/, ""), title: m[2].trim() });
    }
    const episodes = parseSDEpisodes(html);
    res.json({ title, poster, desc, seasons, episodes });
  } catch (e) { res.status(502).json({ error: String(e) }); }
});

router.get("/animation/stardima-episode", async (req: Request, res: Response) => {
  try {
    const slug = String(req.query.slug || "");
    if (!slug) { res.status(400).json({ error: "slug required" }); return; }
    const html   = await cfGet(`${SD_BASE}/episodes/${encodeURI(slug)}/`, SD_BASE + "/");
    const postId = parsePostId(html);
    const nonce  = parseNonce(html);
    const iframeUrls = parseIframes(html, ["stardima", "google", "histats", "rdparena"]);
    const sources: { url: string; label: string; num: number }[] = [];
    if (postId) {
      const urls = await sdDoopPlayerAjax(postId, nonce, slug);
      urls.forEach((url, i) => sources.push({ url, label: `سيرفر ${i + 1}`, num: i + 1 }));
    }
    res.json({ postId, iframes: iframeUrls, sources });
  } catch (e) {
    res.status(502).json({ error: String(e), iframes: [], sources: [] });
  }
});

// ── Shared HLS / MP4 extractor for embed pages ────────────────────────────────

// Regex patterns to find direct stream URLs inside HTML/JS source
const M3U8_RE  = /["'`](https?:\/\/[^"'`\s]{12,}\.m3u8(?:[^"'`\s]*)?)['"` ]/gi;
const MP4_RE   = /["'`](https?:\/\/[^"'`\s]{12,}\.mp4(?:[^"'`\s]*)?)['"` ]/gi;
const MPD_RE   = /["'`](https?:\/\/[^"'`\s]{12,}\.mpd(?:[^"'`\s]*)?)['"` ]/gi;

function extractStreamsFromHtml(html: string): { url: string; type: "hls" | "mp4" | "dash" }[] {
  const seen = new Set<string>();
  const out:  { url: string; type: "hls" | "mp4" | "dash" }[] = [];
  const push = (url: string, type: "hls" | "mp4" | "dash") => {
    const clean = url.replace(/['"` ]/g, "").trim();
    if (!clean || seen.has(clean)) return;
    // Skip thumbnail/image/logo/font CDNs
    if (/\/(thumb|poster|backdrop|image|img|logo|font|css|js)\//i.test(clean)) return;
    seen.add(clean);
    out.push({ url: clean, type });
  };
  let m: RegExpExecArray | null;
  M3U8_RE.lastIndex = 0; while ((m = M3U8_RE.exec(html)) !== null) push(m[1], "hls");
  MP4_RE.lastIndex  = 0; while ((m = MP4_RE.exec(html))  !== null) push(m[1], "mp4");
  MPD_RE.lastIndex  = 0; while ((m = MPD_RE.exec(html))  !== null) push(m[1], "dash");
  return out;
}

// Try to call the internal anime extract-video API (reuses extractVideoDeep logic)
async function callExtractApi(url: string): Promise<{ directUrl?: string } | null> {
  try {
    const port   = process.env["PORT"] || "8080";
    const apiUrl = `http://localhost:${port}/api/anime/extract-video?url=${encodeURIComponent(url)}`;
    const r = await fetch(apiUrl, { signal: AbortSignal.timeout(14_000) });
    if (!r.ok) return null;
    return (await r.json()) as { directUrl?: string };
  } catch { return null; }
}

// Wrap m3u8 in hls-proxy (relative path → works for client)
function wrapHls(url: string, ref: string): string {
  return `/api/anime/hls-proxy?url=${encodeURIComponent(url)}&ref=${encodeURIComponent(ref)}`;
}

// Known extractable video hosts (same ones that extractVideoDeep handles in anime.ts)
const EXTRACTABLE_HOSTS = [
  "streamwish", "filemoon", "streamtape", "vidmoly", "vidcloud", "upcloud",
  "megacloud", "rabbitstream", "mcloud", "vidsrc.stream", "alions.pro",
  "vizcloud", "dokicloud", "kerapoxy", "bestx.stream", "asianload",
  "govad", "moviesapi.club", "closeload", "smoothpre", "filmecho",
  "ghost.online", "zoro", "rapid-cloud", "moon-cloud",
];

// Find URLs from known extractable hosts in HTML source
function findExtractableUrls(html: string): string[] {
  const seen = new Set<string>();
  const out: string[] = [];
  const re = /["'`](https?:\/\/[^"'`\s,;{}()\[\]]{10,})['"` ,;)]/g;
  let m: RegExpExecArray | null;
  while ((m = re.exec(html)) !== null) {
    const url = m[1].trim();
    if (!url.startsWith("http")) continue;
    if (EXTRACTABLE_HOSTS.some(h => url.includes(h)) && !seen.has(url)) {
      seen.add(url);
      out.push(url);
    }
  }
  return out;
}

// Try to fetch embed page and extract streams; returns list of found streams
async function scrapeEmbedForStreams(
  embedUrl: string
): Promise<{ url: string; proxyUrl: string; type: "hls" | "mp4" | "dash" }[]> {
  const out: { url: string; proxyUrl: string; type: "hls" | "mp4" | "dash" }[] = [];
  try {
    const html = await cfGet(embedUrl, embedUrl);

    // 1. Look for direct m3u8/mp4 URLs in page source
    const streams = extractStreamsFromHtml(html);
    for (const s of streams.slice(0, 4)) {
      const proxyUrl = s.type === "hls" ? wrapHls(s.url, embedUrl) : s.url;
      out.push({ url: s.url, proxyUrl, type: s.type });
    }

    if (out.length) return out;

    // 2. Look for known extractable host URLs in the HTML
    const extractableUrls = findExtractableUrls(html);
    for (const inner of extractableUrls.slice(0, 3)) {
      const extracted = await callExtractApi(inner);
      if (extracted?.directUrl) {
        const d = extracted.directUrl;
        const type: "hls" | "mp4" | "dash" = d.includes(".m3u8") ? "hls" : d.includes(".mpd") ? "dash" : "mp4";
        const proxyUrl = type === "hls" ? wrapHls(d, inner) : d;
        out.push({ url: d, proxyUrl, type });
        if (out.length >= 2) return out;
      }
    }

    if (out.length) return out;

    // 3. Check inner iframes → try extractVideoDeep on each
    const inners = parseIframes(html, ["google", "histats", "w3counter", "doubleclick", "cdn.js"]);
    for (const inner of inners.slice(0, 4)) {
      // Try direct streams from inner page first
      try {
        const innerHtml = await cfGet(inner, embedUrl);
        const innerStreams = extractStreamsFromHtml(innerHtml);
        for (const s of innerStreams.slice(0, 2)) {
          const proxyUrl = s.type === "hls" ? wrapHls(s.url, inner) : s.url;
          out.push({ url: s.url, proxyUrl, type: s.type });
        }
        // Also check extractable hosts in inner page
        const innerExtractable = findExtractableUrls(innerHtml);
        for (const iu of innerExtractable.slice(0, 2)) {
          const ex = await callExtractApi(iu);
          if (ex?.directUrl) {
            const d = ex.directUrl;
            const type: "hls" | "mp4" | "dash" = d.includes(".m3u8") ? "hls" : d.includes(".mpd") ? "dash" : "mp4";
            out.push({ url: d, proxyUrl: type === "hls" ? wrapHls(d, iu) : d, type });
          }
        }
      } catch { /* try extractApi directly */ }

      if (!out.length) {
        const extracted = await callExtractApi(inner);
        if (extracted?.directUrl) {
          const d = extracted.directUrl;
          const type: "hls" | "mp4" | "dash" = d.includes(".m3u8") ? "hls" : d.includes(".mpd") ? "dash" : "mp4";
          const proxyUrl = type === "hls" ? wrapHls(d, inner) : d;
          out.push({ url: d, proxyUrl, type });
        }
      }

      if (out.length >= 2) break;
    }
  } catch { /* silent */ }
  return out;
}

// ── SSE animation sources stream ──────────────────────────────────────────────

router.get("/animation/sources-stream", async (req: Request, res: Response) => {
  const title   = String(req.query.title  || "");
  const type    = String(req.query.type   || "movie");
  const epNum   = parseInt(String(req.query.ep     || "1"), 10) || 1;
  const season  = parseInt(String(req.query.season || "1"), 10) || 1;
  const tmdbId  = String(req.query.tmdbId || req.query.id || "");

  res.setHeader("Content-Type",      "text/event-stream; charset=utf-8");
  res.setHeader("Cache-Control",     "no-cache");
  res.setHeader("Connection",        "keep-alive");
  res.setHeader("X-Accel-Buffering", "no");
  res.flushHeaders();

  const send = (event: string, data: any) => {
    try { res.write(`event: ${event}\ndata: ${JSON.stringify(data)}\n\n`); } catch { /* closed */ }
  };

  const keepAlive = setInterval(() => { try { res.write(": keepalive\n\n"); } catch { /* closed */ } }, 5_000);
  req.on("close", () => clearInterval(keepAlive));

  const seenUrls = new Set<string>();
  let sourceCount = 0;

  // Send a source; directUrl = already-extracted stream URL, proxyUrl = proxied version
  const sendSource = (url: string, label: string, directUrl?: string, proxyUrl?: string) => {
    if (!url || seenUrls.has(url)) return;
    seenUrls.add(url);
    sourceCount++;
    send("source", { url, label, directUrl, proxyUrl });
  };

  // Try embed URL → extract stream → sendSource with directUrl (no iframe fallback)
  const sendExtracted = async (embedUrl: string, label: string) => {
    if (!embedUrl || seenUrls.has(embedUrl)) return;
    seenUrls.add(embedUrl); // mark seen early to avoid double-processing
    // 1. Try callExtractApi (extractVideoDeep)
    const extracted = await callExtractApi(embedUrl);
    if (extracted?.directUrl) {
      const d = extracted.directUrl;
      const isHls = d.includes(".m3u8") || d.startsWith("/api/anime/hls-proxy");
      const proxy = isHls && !d.startsWith("/") ? wrapHls(d, embedUrl) : d;
      sendSource(embedUrl, label, d, proxy);
      return;
    }
    // 2. Try fetching embed page for direct streams
    const streams = await scrapeEmbedForStreams(embedUrl);
    for (const s of streams.slice(0, 2)) {
      sendSource(s.url, label, s.url, s.proxyUrl);
    }
    // No iframe fallback — user requires internal player only
  };

  try {
    send("status", { msg: `جاري البحث عن "${title}"…` });

    // Fetch IMDB ID from TMDB (needed for some scrapers)
    let imdbId = "";
    if (tmdbId) {
      try {
        const extUrl = `https://api.themoviedb.org/3/${type === "tv" ? "tv" : "movie"}/${tmdbId}/external_ids?api_key=${TMDB_KEY}`;
        const extHtml = await cfGet(extUrl, "");
        const extJson = JSON.parse(extHtml);
        imdbId = extJson.imdb_id || "";
      } catch { /* silent */ }
    }

    // ── Run all scrapers in parallel ──────────────────────────────────────────
    await Promise.allSettled([

      // ── 11. vidsrc.me (IMDB ID) — known embed source ────────────────────────
      (async () => {
        if (!imdbId) return;
        try {
          const embedUrl = type === "tv"
            ? `https://vidsrc.me/embed/tv?imdb=${imdbId}&season=${season}&episode=${epNum}`
            : `https://vidsrc.me/embed/movie?imdb=${imdbId}`;
          send("status", { msg: "VidSrc: جاري الاستخراج…" });
          await sendExtracted(embedUrl, "VidSrc");
        } catch { /* silent */ }
      })(),

      // ── 12. StarDima (title-based, Arabic content) ───────────────────────────
      (async () => {
        try {
          const searchHtml = await cfGet(`${SD_BASE}/?s=${encodeURIComponent(title)}`, SD_BASE + "/");
          const shows      = parseSDShows(searchHtml);
          if (!shows.length) return;

          const scored = shows.map(s => ({ ...s, score: titleSim(s.title, title) }));
          scored.sort((a, b) => {
            const sectionMatch = (type === "movie" ? "movies" : "tvshows");
            const aBonus = a.section === sectionMatch ? 0.05 : 0;
            const bBonus = b.section === sectionMatch ? 0.05 : 0;
            return (b.score + bBonus) - (a.score + aBonus);
          });
          const best = scored[0];
          if (best.score < 0.2) return;
          send("status", { msg: `StarDima: وُجد "${best.title}"` });

          if (best.section === "movies" || type === "movie") {
            const movieSlug = encodeURI(best.slug);
            const movieHtml = await cfGet(`${SD_BASE}/movies/${movieSlug}/`, SD_BASE + "/");
            const postId = parsePostId(movieHtml);
            const nonce  = parseNonce(movieHtml);
            const iframes = parseIframes(movieHtml, ["stardima", "google", "histats"]);
            for (const u of iframes) await sendExtracted(u, "StarDima فيلم");
            if (postId) {
              const urls = await sdDoopPlayerAjax(postId, nonce, `${SD_BASE}/movies/${movieSlug}/`);
              for (const u of urls) await sendExtracted(u, "StarDima سيرفر");
            }
          } else {
            const seriesHtml = await cfGet(`${SD_BASE}/tvshows/${encodeURI(best.slug)}/`, SD_BASE + "/");
            let episodes = parseSDEpisodes(seriesHtml);
            if (!episodes.length) {
              const sMatch = seriesHtml.match(/href="https:\/\/watch\.stardima\.com\/watch\/seasons\/([^"]+)"/);
              if (sMatch) {
                const seasonHtml = await cfGet(`${SD_BASE}/seasons/${encodeURI(decodeURIComponent(sMatch[1]).replace(/\/$/, ""))}/`, SD_BASE + "/");
                episodes = parseSDEpisodes(seasonHtml);
              }
            }
            const target = episodes.find(e => e.num === epNum)
              || episodes.find(e => e.title.includes(String(epNum)))
              || (epNum <= episodes.length ? episodes[epNum - 1] : episodes[0]);
            if (!target) return;

            const epHtml = await cfGet(`${SD_BASE}/episodes/${encodeURI(target.slug)}/`, SD_BASE + "/");
            const postId = parsePostId(epHtml);
            const nonce  = parseNonce(epHtml);
            const iframes = parseIframes(epHtml, ["stardima", "google", "histats"]);
            for (const u of iframes) await sendExtracted(u, "StarDima إطار");
            if (postId) {
              const urls = await sdDoopPlayerAjax(postId, nonce, `${SD_BASE}/episodes/${encodeURI(target.slug)}/`);
              for (const u of urls) await sendExtracted(u, "StarDima سيرفر");
            }
          }
        } catch { /* silent */ }
      })(),

      // ── 9. moviz-time.co (REST API title-based) ──────────────────────────────
      (async () => {
        try {
          // Use WordPress REST API — the /?s= search page is dynamically rendered
          const apiUrl = `${MV_BASE}/wp-json/wp/v2/posts?search=${encodeURIComponent(title)}&per_page=8&_fields=id,link,title`;
          const apiText = await cfGet(apiUrl, `${MV_BASE}/`);
          const posts: any[] = JSON.parse(apiText);
          if (!Array.isArray(posts) || !posts.length) return;

          const scored = posts.map((p: any) => {
            const t = (p.title?.rendered || "").replace(/<[^>]+>/g, "").replace(/&[a-z]+;/g, "").trim();
            const postUrl = (p.link || "").replace(/\\\//g, "/");
            return { url: postUrl, title: t, score: titleSim(t, title) };
          });
          scored.sort((a, b) => b.score - a.score);
          const best = scored[0];
          if (!best || best.score < 0.15) return;
          send("status", { msg: `Moviz: وُجد "${best.title}"` });

          if (type === "tv") {
            const epUrl = await mvFindEpisode(best.url, epNum);
            if (!epUrl) return;
            const iframes = await mvScrapeMovie(epUrl);
            for (const u of iframes) await sendExtracted(u, "Moviz حلقة");
          } else {
            const iframes = await mvScrapeMovie(best.url);
            for (const u of iframes) await sendExtracted(u, "Moviz سيرفر");
          }
        } catch { /* silent */ }
      })(),

      // ── 10. topcinemaa.com (title-based) ────────────────────────────────────
      (async () => {
        try {
          const links = await tcSearch(title);
          if (!links.length) return;

          const scored = links.map(l => ({ ...l, score: titleSim(l.title, title) }));
          scored.sort((a, b) => b.score - a.score);
          const topScore = scored[0].score;
          if (topScore < 0.2) return;

          let target: typeof scored[0] | undefined;
          if (type === "tv") {
            const candidates = scored.filter(l => l.score >= topScore * 0.7);
            target = candidates.find(l => l.epNum === epNum)
              || candidates.find(l => l.epNum === undefined)
              || candidates[0];
          } else {
            target = scored.find(l => l.epNum === undefined) || scored[0];
          }
          if (!target) return;

          send("status", { msg: `TopCinema: وُجد "${target.title}"` });
          const iframes = await tcScrapePlayer(target.url);
          for (const u of iframes) await sendExtracted(u, "TopCinema سيرفر");
        } catch { /* silent */ }
      })(),

      // ── 13. ToonStream (title-based, animation content) ──────────────────────
      (async () => {
        try {
          const TS_BASE = "https://toonstream.vip";
          send("status", { msg: "ToonStream: جاري البحث…" });

          const searchHtml = await cfGet(
            `${TS_BASE}/?s=${encodeURIComponent(title)}`,
            TS_BASE + "/"
          );

          // Parse movie/tvshow result URLs
          const urlRe = /href="(https:\/\/toonstream\.vip\/(movies|tvshows)\/([^/"]+)\/)"/g;
          const candidates: { url: string; section: string; slug: string }[] = [];
          const seenCand = new Set<string>();
          let um: RegExpExecArray | null;
          while ((um = urlRe.exec(searchHtml)) !== null) {
            if (seenCand.has(um[1])) continue;
            seenCand.add(um[1]);
            candidates.push({ url: um[1], section: um[2], slug: um[3] });
          }
          if (!candidates.length) return;

          const scored = candidates.map(c => {
            const titleStr = c.slug.replace(/-\d{4}$/, "").replace(/-/g, " ");
            return { ...c, titleStr, score: titleSim(titleStr, title) };
          });
          scored.sort((a, b) => b.score - a.score);
          const best = scored[0];
          if (best.score < 0.25) return;

          send("status", { msg: `ToonStream: وُجد "${best.titleStr}"` });

          let pageUrl = best.url;

          // For TV shows, find the specific episode page
          if (type === "tv" && best.section === "tvshows") {
            const seriesHtml = await cfGet(best.url, TS_BASE + "/");
            // Episode URLs like /episodes/show-name-s01e03/
            const epRe = new RegExp(
              `href="(${TS_BASE}/episodes/[^"]*-s0*${season}e0*${epNum}[^"]*)"`,
              "i"
            );
            const epMatch = seriesHtml.match(epRe);
            if (!epMatch) return;
            pageUrl = epMatch[1];
          }

          const pageHtml = await cfGet(pageUrl, TS_BASE + "/");

          // Parse trembed server buttons (decode HTML entities: &#038; → &)
          const embedRe = /data-src="([^"]*trembed=[^"]*)"/g;
          const trembedUrls: string[] = [];
          let em: RegExpExecArray | null;
          while ((em = embedRe.exec(pageHtml)) !== null) {
            const url = em[1].replace(/&#0*38;/g, "&").replace(/&amp;/g, "&");
            if (!trembedUrls.includes(url)) trembedUrls.push(url);
          }
          if (!trembedUrls.length) return;

          // Process each trembed server (up to 4) — extract direct stream, no iframe fallback
          for (const trUrl of trembedUrls.slice(0, 4)) {
            try {
              const trHtml = await cfGet(trUrl, pageUrl);
              const innerMatch = trHtml.match(/<iframe[^>]+src="([^"]+)"/i);
              if (!innerMatch) continue;
              await sendExtracted(innerMatch[1], "ToonStream");
            } catch { /* skip this server */ }
          }
        } catch { /* silent */ }
      })(),

    ]);

    if (sourceCount === 0) {
      send("status", { msg: "لم يُعثر على مصادر لهذا العنوان" });
    }
    send("done", {}); clearInterval(keepAlive); res.end();
  } catch (e) {
    send("error", { msg: String(e) });
    send("done",  {}); clearInterval(keepAlive); res.end();
  }
});

export default router;
