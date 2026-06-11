import { Router, type Request, type Response } from "express";

const router = Router();

const TMDB_KEY  = process.env.TMDB_API_KEY || "8265bd1679663a7ea12ac168da84d2e8";
const TMDB_BASE = "https://api.themoviedb.org/3";
const SD_BASE   = "https://watch.stardima.com/watch";
const SD_AJAX   = "https://watch.stardima.com/watch/wp-admin/admin-ajax.php";
const MV_BASE   = "https://moviz-time.co";
const AS_CDN_B  = "https://as-cdn21.top";
const RUBY_B    = "https://rubystm.com";

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

/** Detect Japanese/Chinese/Korean characters — filter out untranslated titles */
function hasCJK(text: string): boolean {
  return /[\u3040-\u30ff\u4e00-\u9fff\u3400-\u4dbf\uff00-\uffef]/.test(text);
}

router.get("/animation/browse", async (req: Request, res: Response) => {
  try {
    const type   = String(req.query.type   || "movie");
    const genre  = String(req.query.genre  || "16");
    const page   = String(req.query.page   || "1");
    const sort   = String(req.query.sort   || "popularity.desc");
    const year   = String(req.query.year   || "");
    const ep     = type === "tv" ? "/discover/tv"    : "/discover/movie";
    const gp     = genre === "all" || genre === "0"
                   ? "16"
                   : genre === "16" ? "16" : `16,${genre}`;
    const tvExtra = type === "tv" ? "&without_keywords=210024" : "";
    const yearParam = year
      ? (type === "tv" ? `&first_air_date_year=${year}` : `&primary_release_year=${year}`)
      : "";
    const data: any = await tmdb(`${ep}?with_genres=${gp}&sort_by=${sort}&page=${page}&include_adult=false${tvExtra}${yearParam}&vote_count.gte=10`);
    // Remove results whose TMDB title is still in Japanese/Chinese (no Arabic translation)
    const results = (data.results || []).filter((r: any) => {
      const title = r.title || r.name || "";
      return !hasCJK(title);
    });
    res.json({ ...data, results });
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
    // Filter recommendations to animation-only (genre 16 = رسوم متحركة)
    if (data.recommendations?.results) {
      data.recommendations.results = data.recommendations.results.filter(
        (r: any) => (r.genre_ids || []).includes(16)
      );
    }
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
    const results = (data.results || []).filter((r: any) => {
      if (type === "multi" && !(r.genre_ids || []).includes(16)) return false;
      const title = r.title || r.name || "";
      return !hasCJK(title);
    });
    res.json({ ...data, results });
  } catch (e) { res.status(502).json({ error: String(e) }); }
});

router.get("/animation/trending", async (req: Request, res: Response) => {
  try {
    const type   = String(req.query.type   || "movie");
    const window = String(req.query.window || "week");
    const data: any = await tmdb(`/trending/${type}/${window}`);
    const results = (data.results || []).filter((r: any) => {
      if (!(r.genre_ids || []).includes(16)) return false;
      const title = r.title || r.name || "";
      return !hasCJK(title);
    });
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

// Wrap MP4/video through video-proxy (needed for IP-tied sources like Streamtape, Sendvid, CDNs)
function wrapMp4(url: string, ref: string): string {
  return `/api/anime/video-proxy?url=${encodeURIComponent(url)}&ref=${encodeURIComponent(ref)}`;
}

// Hosts that must go through video-proxy (IP-tied or CORS-blocked)
const MP4_PROXY_HOSTS = [
  "streamtape", "sendvid", "sendcdn", "uptostream", "uqload",
  "upstream", "vidcdn", "cdnfile", "vidmoly",
];

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
      const needProxy = MP4_PROXY_HOSTS.some(h => s.url.includes(h));
      const proxyUrl = s.type === "hls" ? wrapHls(s.url, embedUrl) : needProxy ? wrapMp4(s.url, embedUrl) : s.url;
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
        const needProxy = MP4_PROXY_HOSTS.some(h => d.includes(h));
        const proxyUrl = type === "hls" ? wrapHls(d, inner) : needProxy ? wrapMp4(d, inner) : d;
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
          const needProxy = MP4_PROXY_HOSTS.some(h => s.url.includes(h));
          const proxyUrl = s.type === "hls" ? wrapHls(s.url, inner) : needProxy ? wrapMp4(s.url, inner) : s.url;
          out.push({ url: s.url, proxyUrl, type: s.type });
        }
        // Also check extractable hosts in inner page
        const innerExtractable = findExtractableUrls(innerHtml);
        for (const iu of innerExtractable.slice(0, 2)) {
          const ex = await callExtractApi(iu);
          if (ex?.directUrl) {
            const d = ex.directUrl;
            const type: "hls" | "mp4" | "dash" = d.includes(".m3u8") ? "hls" : d.includes(".mpd") ? "dash" : "mp4";
            const needProxy = MP4_PROXY_HOSTS.some(h => d.includes(h));
            out.push({ url: d, proxyUrl: type === "hls" ? wrapHls(d, iu) : needProxy ? wrapMp4(d, iu) : d, type });
          }
        }
      } catch { /* try extractApi directly */ }

      if (!out.length) {
        const extracted = await callExtractApi(inner);
        if (extracted?.directUrl) {
          const d = extracted.directUrl;
          const type: "hls" | "mp4" | "dash" = d.includes(".m3u8") ? "hls" : d.includes(".mpd") ? "dash" : "mp4";
          const needProxy = MP4_PROXY_HOSTS.some(h => d.includes(h));
          const proxyUrl = type === "hls" ? wrapHls(d, inner) : needProxy ? wrapMp4(d, inner) : d;
          out.push({ url: d, proxyUrl, type });
        }
      }

      if (out.length >= 2) break;
    }
  } catch { /* silent */ }
  return out;
}

// ── Anime-Day GitHub subtitle library ────────────────────────────────────────
// فريق أنمي داي ترجم هذه العروض للعربية ورفع ملفات VTT على GitHub Pages
// جميعها مع CORS * وحية تماماً (تحقق 2026-06)
function getAnimeDaySubtitleUrl(title: string, season: number, ep: number): string | null {
  const tl = (title || "").toLowerCase().replace(/[^\w\s]/g, " ").trim();
  const gh = "https://adnango1.github.io";

  if (/regular\s+show/.test(tl) && /movie/.test(tl))
    return `${gh}/RegularShowMovie/movie`;
  if (/regular\s+show/.test(tl))
    return `${gh}/Regular-Show/eps${ep}season${season}.vtt`;
  if (/sym.?bionic/.test(tl))
    return `${gh}/symbionic/eps${ep}.vtt`;
  if (/\bprimal\b/.test(tl) && season === 2)
    return `${gh}/primal2/eps${ep}season1.vtt`;
  if (/demon\s+hunter/.test(tl))
    return `${gh}/thedemonhunter/eps${ep}season${season}.vtt`;
  if (/martial\s+god\s+asura/.test(tl))
    return `${gh}/MARTIALGODASURA/eps${ep}season${season}`;
  if (/ben\s*10.*omnitrix|omnitrix.*ben\s*10/.test(tl))
    return `${gh}/ben10SecretoftheOmnitrix/movie`;

  return null;
}

// ── Animation subtitle local cache ──────────────────────────────────────────
const animSubCache = new Map<string, { content: string | null; language?: string; ts: number }>();
const ANIM_SUB_TTL      = 60 * 60 * 1000; // 1 hour  (success)
const ANIM_SUB_FAIL_TTL =  5 * 60 * 1000; // 5 min   (failure → retry sooner)

// ── Arabic subtitle search for TMDB animation content ───────────────────────
// Uses wyzie.ru (free aggregator, no key) + subdl fallback (needs SUBDL_API_KEY)
router.get("/animation/subtitles", async (req: Request, res: Response) => {
  const tmdbId = String(req.query.tmdbId || "");
  const type   = String(req.query.type   || "movie"); // movie | tv
  const ep     = parseInt(String(req.query.ep     || "1"), 10) || 1;
  const season = parseInt(String(req.query.season || "1"), 10) || 1;
  const title  = String(req.query.title  || "");
  if (!tmdbId) { res.json({ content: null }); return; }

  const ck = `anim-sub:${tmdbId}:${type}:${season}:${ep}`;
  const hit = animSubCache.get(ck);
  const hitTtl = hit?.content ? ANIM_SUB_TTL : ANIM_SUB_FAIL_TTL;
  if (hit && Date.now() - hit.ts < hitTtl) {
    res.json({ content: hit.content, ...(hit.language ? { language: hit.language } : {}) });
    return;
  }

  try {
    // Step 1: Get IMDB ID from TMDB external_ids
    let imdbId = "";
    try {
      const extR = await fetch(
        `${TMDB_BASE}/${type}/${tmdbId}/external_ids?api_key=${TMDB_KEY}`,
        { headers: { "User-Agent": UA }, signal: AbortSignal.timeout(7_000) }
      );
      if (extR.ok) {
        const ext = await extR.json() as any;
        imdbId = (ext.imdb_id as string) || "";
      }
    } catch { /* ignore */ }

    // Step 2: wyzie.ru — free subtitle aggregator (no key needed)
    if (imdbId) {
      try {
        const wyzieBase = "https://sub.wyzie.ru/search";
        const wyzieQ = type === "tv"
          ? `${wyzieBase}?id=${imdbId}&language=ar&season=${season}&episode=${ep}`
          : `${wyzieBase}?id=${imdbId}&language=ar`;
        const wR = await fetch(wyzieQ, {
          headers: { "User-Agent": UA, "Accept": "application/json" },
          signal: AbortSignal.timeout(10_000),
        });
        if (wR.ok) {
          const wData = await wR.json() as any;
          const items: any[] = Array.isArray(wData) ? wData : (wData?.data ?? []);
          const arItem = items.find((s: any) =>
            (s.language || s.lang || "").toLowerCase().includes("ar") && s.url
          );
          if (arItem?.url) {
            const dlR = await fetch(arItem.url, {
              headers: { "User-Agent": UA },
              signal: AbortSignal.timeout(10_000),
            });
            if (dlR.ok) {
              const content = await dlR.text();
              if (content.includes("-->") || (content.includes(",") && content.includes("\n"))) {
                animSubCache.set(ck, { content, ts: Date.now() });
                res.json({ content }); return;
              }
            }
          }
        }
      } catch { /* fall through */ }
    }

    // Step 2b: wyzie.ru English fallback — client will auto-translate
    if (imdbId) {
      try {
        const wyzieBase = "https://sub.wyzie.ru/search";
        const wyzieEnQ = type === "tv"
          ? `${wyzieBase}?id=${imdbId}&language=en&season=${season}&episode=${ep}`
          : `${wyzieBase}?id=${imdbId}&language=en`;
        const wEnR = await fetch(wyzieEnQ, {
          headers: { "User-Agent": UA, "Accept": "application/json" },
          signal: AbortSignal.timeout(10_000),
        });
        if (wEnR.ok) {
          const wEnData = await wEnR.json() as any;
          const enItems: any[] = Array.isArray(wEnData) ? wEnData : (wEnData?.data ?? []);
          const enItem = enItems.find((s: any) => s.url);
          if (enItem?.url) {
            const dlEnR = await fetch(enItem.url, {
              headers: { "User-Agent": UA },
              signal: AbortSignal.timeout(10_000),
            });
            if (dlEnR.ok) {
              const content = await dlEnR.text();
              if (content.includes("-->")) {
                animSubCache.set(ck, { content, language: "en", ts: Date.now() });
                res.json({ content, language: "en" }); return;
              }
            }
          }
        }
      } catch { /* fall through */ }
    }

    // Step 3: subdl.com with IMDB ID or title (requires SUBDL_API_KEY)
    const sdKey = (process.env.SUBDL_API_KEY || "").trim();
    if (sdKey) {
      try {
        const sdParam = imdbId
          ? `imdb_id=${imdbId.replace("tt", "")}`
          : `film_name=${encodeURIComponent(title)}`;
        const sdEpParam = type === "tv" ? `&season_number=${season}&episode_number=${ep}` : "";
        const sdUrl = `https://api.subdl.com/api/v1/subtitles?api_key=${sdKey}&${sdParam}${sdEpParam}&languages=AR&subs_per_page=5`;
        const sdR = await fetch(sdUrl, {
          headers: { "User-Agent": UA },
          signal: AbortSignal.timeout(10_000),
        });
        if (sdR.ok) {
          const sdData = await sdR.json() as any;
          const subs: any[] = (sdData.subtitles || []).filter((s: any) => s.url);
          if (subs.length > 0) {
            const dlPath = subs[0].url as string;
            const dlUrl = dlPath.startsWith("http") ? dlPath : `https://dl.subdl.com${dlPath}`;
            const dlR = await fetch(dlUrl, { headers: { "User-Agent": UA }, signal: AbortSignal.timeout(12_000) });
            if (dlR.ok) {
              const ct = dlR.headers.get("content-type") || "";
              if (!ct.includes("zip") && !dlUrl.endsWith(".zip")) {
                const content = await dlR.text();
                if (content.includes("-->")) {
                  animSubCache.set(ck, { content, ts: Date.now() });
                  res.json({ content }); return;
                }
              }
            }
          }
        }
      } catch { /* fall through */ }
    }

    animSubCache.set(ck, { content: null, ts: Date.now() });
    res.json({ content: null });
  } catch {
    res.json({ content: null });
  }
});

// ── subtitle-tracks: discover ALL available subtitle tracks for a title ──────
// Returns { tracks:[{id,lang,label,url}] } — Arabic first, then English
// CDN HEAD checks + wyzie.ru + vidzee run in parallel (max ~12s), cached 25 min
const animTracksCache = new Map<string, { tracks: any[]; ts: number }>();
const TRACKS_TTL = 25 * 60 * 1000;

router.get("/animation/subtitle-tracks", async (req: Request, res: Response) => {
  const tmdbId = String(req.query.tmdbId || "");
  const type   = String(req.query.type   || "movie");
  const ep     = parseInt(String(req.query.ep     || "1"), 10) || 1;
  const season = parseInt(String(req.query.season || "1"), 10) || 1;
  const title  = String(req.query.title  || "");
  if (!tmdbId) { res.json({ tracks: [] }); return; }

  const ck = `tracks:${tmdbId}:${type}:${season}:${ep}`;
  const hit = animTracksCache.get(ck);
  if (hit && Date.now() - hit.ts < TRACKS_TTL) { res.json({ tracks: hit.tracks }); return; }

  type Track = { id: string; lang: string; label: string; url: string };

  // ── 1. IMDB ID from TMDB (needed for wyzie.ru) ──
  let imdbId = "";
  try {
    const r = await fetch(`${TMDB_BASE}/${type}/${tmdbId}/external_ids?api_key=${TMDB_KEY}`, {
      headers: { "User-Agent": UA }, signal: AbortSignal.timeout(5_000),
    });
    if (r.ok) { const d = await r.json() as any; imdbId = String(d.imdb_id || ""); }
  } catch { /* ignore */ }

  // ── 2. CDN candidates (vdrk.site v1 — only v1 is live; v2/v3 return 404) ──
  const cdnPath = type === "tv" ? `tv/${tmdbId}/${season}/${ep}` : `movie/${tmdbId}`;
  const cdnBase = "https://cache.vdrk.site";
  const cdnCandidates: Track[] = [
    { id: "ar-cdn-v1",   lang: "ar", label: "عربي · CDN",      url: `${cdnBase}/v1/${cdnPath}/Arabic.vtt`   },
    { id: "ar-cdn-v1-2", lang: "ar", label: "عربي · CDN 2",    url: `${cdnBase}/v1/${cdnPath}/Arabic2.vtt`  },
    { id: "ar-cdn-v1-3", lang: "ar", label: "عربي · CDN 3",    url: `${cdnBase}/v1/${cdnPath}/Arabic3.vtt`  },
    { id: "ar-cdn-v1-4", lang: "ar", label: "عربي · CDN 4",    url: `${cdnBase}/v1/${cdnPath}/Arabic4.vtt`  },
    { id: "en-cdn-v1",   lang: "en", label: "إنجليزي · CDN",   url: `${cdnBase}/v1/${cdnPath}/English.vtt`  },
  ];
  const cdnFound: Track[] = [];
  await Promise.allSettled(cdnCandidates.map(async c => {
    try {
      const r = await fetch(c.url, { method: "HEAD", signal: AbortSignal.timeout(5_000) });
      if (r.ok) cdnFound.push(c);
    } catch { /* ignore */ }
  }));

  // ── 3. wyzie.ru (Arabic + English) — run in parallel with CDN ──
  const wyzieItems: Track[] = [];
  if (imdbId) {
    await Promise.allSettled(["ar", "en"].map(async lang => {
      try {
        const q = type === "tv"
          ? `https://sub.wyzie.ru/search?id=${imdbId}&language=${lang}&season=${season}&episode=${ep}`
          : `https://sub.wyzie.ru/search?id=${imdbId}&language=${lang}`;
        const r = await fetch(q, {
          headers: { "User-Agent": UA, Accept: "application/json" },
          signal: AbortSignal.timeout(8_000),
        });
        if (!r.ok) return;
        const data = await r.json() as any;
        const items: any[] = Array.isArray(data) ? data : (data?.data ?? []);
        items.slice(0, 2).forEach((item: any, i: number) => {
          if (!item.url) return;
          const sfx = i > 0 ? ` ${i + 1}` : "";
          wyzieItems.push({
            id: `${lang}-wyzie-${i}`,
            lang,
            label: lang === "ar" ? `عربي · Wyzie${sfx}` : `إنجليزي · Wyzie${sfx}`,
            url: item.url,
          });
        });
      } catch { /* ignore */ }
    }));
  }

  // ── 4. vidzee-meta (starcima) ──
  const vidzeeItems: Track[] = [];
  try {
    const tvExtra = type === "tv" ? `&season=${season}&episode=${ep}` : "";
    const r = await fetch(
      `https://starcima.com/api/vidzee?tmdbId=${tmdbId}&type=${type}${tvExtra}`,
      { headers: { "User-Agent": UA, Referer: "https://starcima.com/", Accept: "application/json" }, signal: AbortSignal.timeout(8_000) },
    );
    if (r.ok) {
      const vData = await r.json() as any;
      const cnt: Record<string, number> = {};
      const EN_LANGS = ["english", "en"];
      for (const s of (vData.subtitles || []) as any[]) {
        if (!s.url) continue;
        // Resolve relative URLs (starcima returns /api/sub-retime?... for some tracks)
        let trackUrl: string = s.url;
        if (!trackUrl.startsWith("http")) {
          if (trackUrl.startsWith("/")) trackUrl = `https://starcima.com${trackUrl}`;
          else continue; // skip unparseable URLs
        }
        // Skip dead vdrk.site v2/v3 CDN paths — only v1 is live
        // Also skip sub-retime wrappers that internally use v2/v3 URLs
        if (
          trackUrl.includes("cache.vdrk.site/v2/") ||
          trackUrl.includes("cache.vdrk.site/v3/") ||
          (trackUrl.includes("sub-retime") && trackUrl.includes("vdrk.site/v2")) ||
          (trackUrl.includes("sub-retime") && trackUrl.includes("vdrk.site/v3"))
        ) continue;
        const lCode = (s.languageCode || s.language || "").toLowerCase();
        // Only include Arabic or English tracks — skip Bengali, Malay, Russian, etc.
        const isAr = lCode.startsWith("ar");
        const isEn = EN_LANGS.some(l => lCode.startsWith(l));
        if (!isAr && !isEn) continue;
        const lang = isAr ? "ar" : "en";
        const i = (cnt[lang] = (cnt[lang] ?? 0) + 1);
        const sfx = i > 1 ? ` ${i}` : "";
        vidzeeItems.push({
          id: `${lang}-vidzee-${i}`,
          lang,
          label: lang === "ar" ? `عربي · الثريا${sfx}` : `إنجليزي · الثريا${sfx}`,
          url: trackUrl,
        });
      }
    }
  } catch { /* ignore */ }

  // ── 5. Vyla subtitle API (missourimonster-vyla.hf.space) ──
  // Returns Arabic1–9 + English VTT from cache.vdrk.site; run in parallel with above
  const vylaItems: Track[] = [];
  try {
    const vylaUrl = type === "tv"
      ? `https://missourimonster-vyla.hf.space/api/subtitles/tv/${tmdbId}/${season}/${ep}`
      : `https://missourimonster-vyla.hf.space/api/subtitles/movie/${tmdbId}`;
    const r = await fetch(vylaUrl, {
      headers: { "User-Agent": UA, Accept: "application/json" },
      signal: AbortSignal.timeout(9_000),
    });
    if (r.ok) {
      const data = await r.json() as any[];
      if (Array.isArray(data)) {
        const cnt: Record<string, number> = {};
        for (const s of data) {
          if (!s.file || !s.label) continue;
          const lbl = (s.label as string).toLowerCase();
          const isAr = lbl.startsWith("arabic");
          const isEn = lbl.startsWith("english");
          if (!isAr && !isEn) continue;
          const lang = isAr ? "ar" : "en";
          const i = (cnt[lang] = (cnt[lang] ?? 0) + 1);
          const sfx = i > 1 ? ` ${i}` : "";
          vylaItems.push({
            id: `${lang}-vyla-${i}`,
            lang,
            label: isAr ? `عربي · Vyla${sfx}` : `إنجليزي · Vyla${sfx}`,
            url: s.file,
          });
        }
      }
    }
  } catch { /* silent */ }

  // ── Anime-Day GitHub subtitles (Arabic, hosted on GitHub Pages) ──
  const adGhUrl = getAnimeDaySubtitleUrl(title, season, ep);
  const adItems: Track[] = adGhUrl ? [{
    id: "ar-animeday-gh",
    lang: "ar",
    label: "عربي · أنمي داي",
    url: adGhUrl,
  }] : [];

  // ── Merge, sort Arabic-first, deduplicate by URL ──
  const all = [...adItems, ...cdnFound, ...wyzieItems, ...vidzeeItems, ...vylaItems];
  all.sort((a, b) => (a.lang === "ar" && b.lang !== "ar" ? -1 : a.lang !== "ar" && b.lang === "ar" ? 1 : 0));
  const seen = new Set<string>();
  const tracks = all.filter(t => { if (seen.has(t.url)) return false; seen.add(t.url); return true; });

  animTracksCache.set(ck, { tracks, ts: Date.now() });
  res.setHeader("Cache-Control", "no-store");
  res.json({ tracks });
});

// ── StarCima vidzee subtitle proxy (CORS bypass) ────────────────────────────
router.get("/animation/vidzee-meta", async (req: Request, res: Response) => {
  const tmdbId = String(req.query.tmdbId || "");
  const type   = String(req.query.type   || "movie");
  const ep     = String(req.query.ep     || "1");
  const season = String(req.query.season || "1");
  if (!tmdbId) { res.status(400).json({ error: "tmdbId required" }); return; }

  const tvExtra = type === "tv" ? `&season=${season}&episode=${ep}` : "";
  const url = `https://starcima.com/api/vidzee?tmdbId=${tmdbId}&type=${type}${tvExtra}`;
  try {
    const r = await fetch(url, {
      headers: { "User-Agent": UA, "Referer": `https://starcima.com/watch/${tmdbId}?type=${type}`, "Accept": "application/json" },
      signal: AbortSignal.timeout(10_000),
    });
    if (!r.ok) { res.json({ subtitles: [] }); return; }
    const data: any = await r.json();
    res.json({ subtitles: data.subtitles || [] });
  } catch {
    res.json({ subtitles: [] });
  }
});

// ── quick-check: fast availability probe (Vyla only, 6s timeout) ─────────────

const availCache = new Map<string, { ok: boolean; ts: number }>();
const AVAIL_TTL = 2 * 60 * 60 * 1000; // 2 hours

router.get("/animation/quick-check", async (req: Request, res: Response) => {
  const tmdbId = String(req.query.tmdbId || "");
  const type   = String(req.query.type   || "movie");
  const season = String(req.query.season || "1");
  const ep     = String(req.query.ep     || "1");
  if (!tmdbId) { res.json({ available: false }); return; }

  const ck = `avail:${tmdbId}:${type}:${season}:${ep}`;
  const cached = availCache.get(ck);
  if (cached && Date.now() - cached.ts < AVAIL_TTL) {
    res.json({ available: cached.ok });
    return;
  }

  let available = false;
  const controller = new AbortController();
  const timer = setTimeout(() => controller.abort(), 6_500);

  try {
    const sseUrl = type === "tv"
      ? `https://missourimonster-vyla.hf.space/api/tv?id=${tmdbId}&season=${season}&episode=${ep}`
      : `https://missourimonster-vyla.hf.space/api/movie?id=${tmdbId}`;

    const r = await fetch(sseUrl, {
      headers: { "User-Agent": UA, "Accept": "text/event-stream" },
      signal: controller.signal,
    });

    if (r.ok && r.body) {
      const reader = r.body.getReader();
      const dec = new TextDecoder();
      let buf = "";
      outer: while (true) {
        const { done, value } = await reader.read();
        if (done) break;
        buf += dec.decode(value, { stream: true });
        // Vyla sends {"type":"source",...} events after a large meta event
        if (buf.includes('"type":"source"')) {
          available = true;
          break outer;
        }
      }
      reader.cancel().catch(() => {});
    }
  } catch { /* timeout or network error → unavailable */ }

  clearTimeout(timer);
  availCache.set(ck, { ok: available, ts: Date.now() });
  res.json({ available });
});

// ── aflaam.com helpers ────────────────────────────────────────────────────────
const AFLAAM_BASE = "https://aflaam.com";

async function aflaamSearch(
  q: string,
  kind: "movie" | "series"
): Promise<{ id: string; slug: string }[]> {
  const html = await cfGet(
    `${AFLAAM_BASE}/search?q=${encodeURIComponent(q)}`,
    AFLAAM_BASE + "/"
  );
  const out: { id: string; slug: string }[] = [];
  const re = new RegExp(
    `href="https:\\/\\/aflaam\\.com\\/${kind}\\/(\\d+)\\/([^"]+)"`, "g"
  );
  let m: RegExpExecArray | null;
  const seen = new Set<string>();
  while ((m = re.exec(html)) !== null) {
    if (seen.has(m[1])) continue;
    seen.add(m[1]);
    out.push({ id: m[1], slug: m[2] });
  }
  return out;
}

function parseAflaamMp4s(html: string): { url: string; size: string }[] {
  const out: { url: string; size: string }[] = [];
  const seen = new Set<string>();
  let idx = 0;
  while (true) {
    const s = html.indexOf("<source", idx);
    if (s === -1) break;
    const e = html.indexOf("/>", s);
    if (e === -1) break;
    const tag = html.slice(s, e + 2);
    idx = e + 2;
    const srcM  = /src="([^"]+)"/.exec(tag);
    const sizeM = /size="(\d+)"/.exec(tag);
    if (!srcM || !srcM[1].startsWith("http")) continue;
    const url = srcM[1].trim();
    if (seen.has(url)) continue;
    seen.add(url);
    out.push({ url, size: sizeM ? sizeM[1] : "720" });
  }
  return out;
}

async function aflaamWatchSources(
  watchUrl: string,
  ref: string
): Promise<{ url: string; size: string }[]> {
  const html = await cfGet(watchUrl, ref);
  return parseAflaamMp4s(html);
}

async function scrapeAflaamMovie(
  title: string,
  enTitle?: string
): Promise<{ url: string; quality: string }[]> {
  for (const t of [title, enTitle].filter(Boolean) as string[]) {
    try {
      const results = await aflaamSearch(t, "movie");
      if (!results.length) continue;
      const best = results
        .map(r => ({ ...r, sc: titleSim(t, r.slug.replace(/-/g, " ")) }))
        .sort((a, b) => b.sc - a.sc)[0];
      if (best.sc < 0.15) continue;

      const movieRef  = `${AFLAAM_BASE}/movie/${best.id}/${best.slug}`;
      const movieHtml = await cfGet(movieRef, AFLAAM_BASE + "/");
      const wre       = /href="(https:\/\/aflaam\.com\/watch\/\d+\/[^"]+)"/g;
      let m: RegExpExecArray | null;
      const watchUrls: string[] = [];
      const ws = new Set<string>();
      while ((m = wre.exec(movieHtml)) !== null) {
        if (ws.has(m[1])) continue; ws.add(m[1]); watchUrls.push(m[1]);
      }
      if (!watchUrls.length) continue;

      const srcs = await aflaamWatchSources(watchUrls[0], movieRef);
      if (srcs.length) return srcs.map(s => ({ url: s.url, quality: s.size }));
    } catch { continue; }
  }
  return [];
}

async function scrapeAflaamSeries(
  title: string,
  epNum: number,
  season: number,
  enTitle?: string
): Promise<{ url: string; quality: string }[]> {
  for (const t of [title, enTitle].filter(Boolean) as string[]) {
    try {
      const results = await aflaamSearch(t, "series");
      if (!results.length) continue;

      const best = results
        .map(r => {
          let sc = titleSim(t, r.slug.replace(/-/g, " "));
          if (season > 1 && new RegExp(`-${season}(?:-|$)`).test(r.slug)) sc += 0.3;
          return { ...r, sc };
        })
        .sort((a, b) => b.sc - a.sc)[0];
      if (best.sc < 0.1) continue;

      const seriesRef  = `${AFLAAM_BASE}/series/${best.id}/${best.slug}`;
      const seriesHtml = await cfGet(seriesRef, AFLAAM_BASE + "/");
      const epRe       = /href="https:\/\/aflaam\.com\/episode\/(\d+)\/([^"]+)"/g;
      let m: RegExpExecArray | null;
      const episodes: { epId: string; epSlug: string; num: number }[] = [];
      const eseen = new Set<string>();
      while ((m = epRe.exec(seriesHtml)) !== null) {
        if (eseen.has(m[1])) continue; eseen.add(m[1]);
        const decoded = decodeURIComponent(m[2]);
        const numM    = /(\d+)\s*$/.exec(decoded);
        episodes.push({
          epId   : m[1],
          epSlug : m[2],
          num    : numM ? parseInt(numM[1]) : episodes.length + 1,
        });
      }
      if (!episodes.length) continue;

      const target = episodes.find(e => e.num === epNum) ?? episodes[epNum - 1];
      if (!target) continue;

      const epRef  = `${AFLAAM_BASE}/episode/${target.epId}/${target.epSlug}`;
      const epHtml = await cfGet(epRef, seriesRef);
      const watchUrls: string[] = [];
      const wre   = /href="(https:\/\/aflaam\.com\/watch\/\d+\/[^"]+)"/g;
      const wseen = new Set<string>();
      while ((m = wre.exec(epHtml)) !== null) {
        if (wseen.has(m[1])) continue; wseen.add(m[1]); watchUrls.push(m[1]);
      }
      if (!watchUrls.length) continue;

      const srcs = await aflaamWatchSources(watchUrls[0], epRef);
      if (srcs.length) return srcs.map(s => ({ url: s.url, quality: s.size }));
    } catch { continue; }
  }
  return [];
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

  // Anime-Day GitHub Arabic subtitle for this show (if known)
  const adSub = getAnimeDaySubtitleUrl(title, season, epNum);

  // Send a source; directUrl = already-extracted stream URL, proxyUrl = proxied version
  const sendSource = (url: string, label: string, directUrl?: string, proxyUrl?: string) => {
    if (!url || seenUrls.has(url)) return;
    seenUrls.add(url);
    sourceCount++;
    const extra = adSub ? { subtitleUrl: adSub } : {};
    send("source", { url, label, directUrl, proxyUrl, ...extra });
  };

  // Try embed URL → extract stream → probe → sendSource
  // Returns true if a direct stream was found and sent, false otherwise
  const sendExtracted = async (embedUrl: string, label: string): Promise<boolean> => {
    if (!embedUrl || seenUrls.has(embedUrl)) return true; // already seen → don't send embed either

    // 1. Try callExtractApi (extractVideoDeep)
    const extracted = await callExtractApi(embedUrl);
    if (extracted?.directUrl) {
      const d = extracted.directUrl;
      // Probe the extracted URL before sending — prevents black screens
      // from CDN blocks or expired tokens
      if (d.startsWith("http")) {
        try {
          const probe = await fetch(d, {
            method : "HEAD",
            headers: { "User-Agent": UA, "Referer": embedUrl },
            signal : AbortSignal.timeout(5_000),
            redirect: "follow",
          });
          // 403/405 may still work via hls-proxy (CDN checks full request);
          // skip 404, 4xx (except 403/405), 5xx — these are definitively broken
          const ok = probe.ok || probe.status === 403 || probe.status === 405;
          if (!ok) return false;
        } catch {
          // HEAD failed from Replit server — CDN may still work via hls-proxy/video-proxy from client
          const isHls2 = d.includes(".m3u8") || d.startsWith("/api/anime/hls-proxy");
          const needPrxy2 = !isHls2 && MP4_PROXY_HOSTS.some(h => d.includes(h));
          const proxy2 = isHls2 ? (d.startsWith("/") ? d : wrapHls(d, embedUrl)) : needPrxy2 ? wrapMp4(d, embedUrl) : d;
          seenUrls.add(embedUrl);
          sendSource(embedUrl, label, d, proxy2);
          return true;
        }
      }
      const isHls = d.includes(".m3u8") || d.startsWith("/api/anime/hls-proxy");
      const needProxy = !isHls && MP4_PROXY_HOSTS.some(h => d.includes(h));
      const proxy = isHls && !d.startsWith("/") ? wrapHls(d, embedUrl) : needProxy ? wrapMp4(d, embedUrl) : d;
      seenUrls.add(embedUrl);
      sendSource(embedUrl, label, d, proxy);
      return true;
    }

    // 2. Try fetching embed page for direct streams
    const streams = await scrapeEmbedForStreams(embedUrl);
    let sentAny = false;
    for (const s of streams.slice(0, 2)) {
      // Probe each found stream too
      if (s.url.startsWith("http")) {
        try {
          const probe = await fetch(s.url, {
            method : "HEAD",
            headers: { "User-Agent": UA, "Referer": embedUrl },
            signal : AbortSignal.timeout(4_000),
            redirect: "follow",
          });
          if (!probe.ok && probe.status !== 403 && probe.status !== 405) continue;
        } catch { continue; }
      }
      seenUrls.add(embedUrl);
      sendSource(s.url, label, s.url, s.proxyUrl);
      sentAny = true;
    }
    return sentAny;
  };

  try {
    send("status", { msg: `جاري البحث عن "${title}"…` });



    // Fetch IMDB ID + English title from TMDB in parallel (needed for multiple scrapers)
    let imdbId = "";
    let enTitlePrefetched = "";
    await Promise.allSettled([
      (async () => {
        if (!tmdbId) return;
        try {
          const extUrl = `https://api.themoviedb.org/3/${type === "tv" ? "tv" : "movie"}/${tmdbId}/external_ids?api_key=${TMDB_KEY}`;
          const extHtml = await cfGet(extUrl, "");
          const extJson = JSON.parse(extHtml);
          imdbId = extJson.imdb_id || "";
        } catch { /* silent */ }
      })(),
      (async () => {
        if (!tmdbId) return;
        try {
          const r = await fetch(
            `${TMDB_BASE}/${type === "tv" ? "tv" : "movie"}/${tmdbId}?api_key=${TMDB_KEY}&language=en`,
            { signal: AbortSignal.timeout(6_000) }
          );
          if (r.ok) {
            const d: any = await r.json();
            enTitlePrefetched = d.title || d.name || "";
          }
        } catch { /* silent */ }
      })(),
    ]);

    // ── Hard 30s deadline — يُجبر DONE حتى لو علّق أحد الـ scrapers ──────────
    let streamDone = false;
    const forceClose = setTimeout(() => {
      if (!streamDone && !res.writableEnded) {
        streamDone = true;
        send("done", {}); clearInterval(keepAlive); res.end();
      }
    }, 30_000);

    // ── Run all scrapers in parallel ──────────────────────────────────────────
    await Promise.allSettled([

      // ── 11. vidsrc.me (IMDB ID) + vidsrc.xyz (TMDB ID) ─────────────────────
      (async () => {
        try {
          send("status", { msg: "VidSrc: جاري الاستخراج…" });
          // Try vidsrc.xyz with TMDB ID (no IMDB required)
          const xyzUrl = type === "tv"
            ? `https://vidsrc.xyz/embed/tv?tmdb=${tmdbId}&season=${season}&episode=${epNum}`
            : `https://vidsrc.xyz/embed/movie?tmdb=${tmdbId}`;
          await sendExtracted(xyzUrl, "VidSrc");
        } catch { /* silent */ }
        if (imdbId) {
          try {
            const meUrl = type === "tv"
              ? `https://vidsrc.me/embed/tv?imdb=${imdbId}&season=${season}&episode=${epNum}`
              : `https://vidsrc.me/embed/movie?imdb=${imdbId}`;
            await sendExtracted(meUrl, "VidSrc2");
          } catch { /* silent */ }
        }
      })(),

      // ── 12. vidsrc.pro (TMDB-native, reliable HLS) ──────────────────────────
      (async () => {
        if (!tmdbId) return;
        try {
          const url = type === "tv"
            ? `https://vidsrc.pro/embed/tv/${tmdbId}/${season}/${epNum}`
            : `https://vidsrc.pro/embed/movie/${tmdbId}`;
          await sendExtracted(url, "VidSrc Pro");
        } catch { /* silent */ }
      })(),

      // ── 9. vidsrc.icu (TMDB-native, newer mirror) ────────────────────────────
      (async () => {
        if (!tmdbId) return;
        try {
          const url = type === "tv"
            ? `https://vidsrc.icu/embed/tv/${tmdbId}/${season}/${epNum}`
            : `https://vidsrc.icu/embed/movie/${tmdbId}`;
          await sendExtracted(url, "VidSrc ICU");
        } catch { /* silent */ }
      })(),

      // ── 10. autoembed.cc (TMDB-native, direct HLS) ───────────────────────────
      (async () => {
        if (!tmdbId) return;
        try {
          const url = type === "tv"
            ? `https://autoembed.cc/tv/tmdb/${tmdbId}-${season}-${epNum}`
            : `https://autoembed.cc/movie/tmdb/${tmdbId}`;
          await sendExtracted(url, "AutoEmbed");
        } catch { /* silent */ }
      })(),

      // ── 13. ToonStream — DISABLED ──
      Promise.resolve(),

      // ── 19. multiembed.mov (TMDB-native, returns streamwish/filemoon) ─────────
      (async () => {
        if (!tmdbId) return;
        try {
          const url = type === "tv"
            ? `https://multiembed.mov/embed/?tmdb=${tmdbId}&type=tv&s=${season}&e=${epNum}`
            : `https://multiembed.mov/embed/?tmdb=${tmdbId}&type=movie`;
          await sendExtracted(url, "multiembed · HLS");
        } catch { /* silent */ }
      })(),

      // ── 20. vidsrc.vip (TMDB-native, newer vidsrc mirror) ────────────────────
      (async () => {
        if (!tmdbId) return;
        try {
          const url = type === "tv"
            ? `https://vidsrc.vip/embed/tv/${tmdbId}/${season}/${epNum}`
            : `https://vidsrc.vip/embed/movie/${tmdbId}`;
          await sendExtracted(url, "VidSrc VIP");
        } catch { /* silent */ }
      })(),

      // ── 21. player.smashy.stream (TMDB-native, direct HLS) ───────────────────
      (async () => {
        if (!tmdbId) return;
        try {
          const url = type === "tv"
            ? `https://player.smashy.stream/tv/${tmdbId}?s=${season}&e=${epNum}`
            : `https://player.smashy.stream/movie/${tmdbId}`;
          await sendExtracted(url, "Smashy · HLS");
        } catch { /* silent */ }
      })(),

      // ── 22. vidlink.pro — direct JSON API (TMDB-native, bypasses JS render) ──
      (async () => {
        if (!tmdbId) return;
        try {
          send("status", { msg: "VidLink API: جاري الاستخراج…" });
          const apiUrl = type === "tv"
            ? `https://vidlink.pro/api/b/tv/${tmdbId}/${season}/${epNum}`
            : `https://vidlink.pro/api/b/movie/${tmdbId}`;

          const r = await fetch(apiUrl, {
            headers: {
              "User-Agent" : UA,
              "Referer"    : "https://vidlink.pro/",
              "Origin"     : "https://vidlink.pro",
              "Accept"     : "application/json",
            },
            signal: AbortSignal.timeout(16_000),
          });
          if (!r.ok) return;
          const data: any = await r.json();

          // Response shape: { stream: [{ playlist: "https://...m3u8", ... }] }
          const streams: any[] = Array.isArray(data?.stream) ? data.stream
            : data?.playlist ? [data]
            : [];

          for (const s of streams) {
            const m3u8 = s?.playlist || s?.url || "";
            if (!m3u8 || !m3u8.includes(".m3u8")) continue;
            const ref     = "https://vidlink.pro/";
            const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(m3u8)}&ref=${encodeURIComponent(ref)}`;
            const label   = `VidLink · HLS مباشر${s?.quality ? ` · ${s.quality}` : ""}`;
            sendSource(proxied, label, proxied, proxied);
          }
        } catch { /* silent */ }
      })(),

      // ── 23. vidbinge.com (TMDB-native, streamwish backend) ───────────────────
      (async () => {
        if (!tmdbId) return;
        try {
          const url = type === "tv"
            ? `https://vidbinge.com/embed/tv/${tmdbId}/${season}/${epNum}`
            : `https://vidbinge.com/embed/movie/${tmdbId}`;
          await sendExtracted(url, "VidBinge · HLS");
        } catch { /* silent */ }
      })(),

      // ── 16. 2embed.skin (TMDB-based, tries streamwish/filemoon extraction) ─────
      (async () => {
        try {
          const url = type === "tv"
            ? `https://www.2embed.skin/embedtv/${tmdbId}&s=${season}&e=${epNum}`
            : `https://www.2embed.skin/embed/${tmdbId}`;
          await sendExtracted(url, "2Embed");
        } catch { /* silent */ }
      })(),

      // ── 17. vidsrc.xyz (TMDB-based, known to have streamsb/filemoon sources) ──
      (async () => {
        try {
          const url = type === "tv"
            ? `https://vidsrc.xyz/embed/tv?tmdb=${tmdbId}&season=${season}&episode=${epNum}`
            : `https://vidsrc.xyz/embed/movie?tmdb=${tmdbId}`;
          await sendExtracted(url, "VidSrc XYZ");
        } catch { /* silent */ }
      })(),

      // ── 18. embed.su (TMDB-based, often filemoon/streamwish inside) ───────────
      (async () => {
        try {
          const url = type === "tv"
            ? `https://embed.su/embed/tv/${tmdbId}/${season}/${epNum}`
            : `https://embed.su/embed/movie/${tmdbId}`;
          await sendExtracted(url, "Embed.su");
        } catch { /* silent */ }
      })(),

      // ── 14. moviesapi.club (IMDB-based, streamwish backend) ─────────────────
      (async () => {
        if (!imdbId) return;
        try {
          const url = type === "tv"
            ? `https://moviesapi.club/tv/${imdbId.replace("tt", "")}-${season}-${epNum}`
            : `https://moviesapi.club/movie/${imdbId.replace("tt", "")}`;
          await sendExtracted(url, "MoviesAPI");
        } catch { /* silent */ }
      })(),

      // ── 15. StarCima (vidzee HLS direct + arabic-sources embeds, TMDB ID native) ─
      (async () => {
        if (!tmdbId) return;
        const SC_BASE    = "https://starcima.com";
        const SC_VIDZEE  = `${SC_BASE}/api/vidzee`;
        const SC_ARABIC  = `${SC_BASE}/api/arabic-sources`;
        const SC_REF_HLS = "https://player.vidzee.wtf/";
        const tvExtra    = type === "tv" ? `&season=${season}&episode=${epNum}` : "";
        const watchRef   = `${SC_BASE}/watch/${tmdbId}?type=${type}`;

        const scHeaders = {
          "User-Agent": UA,
          "Referer": watchRef,
          "Origin": SC_BASE,
          "Accept": "application/json",
          "Accept-Language": "ar,en;q=0.9",
        };

        try {
          send("status", { msg: "StarCima: جاري الاستخراج…" });

          await Promise.allSettled([

            // ── vidzee: 3 direct HLS servers ────────────────────────────────
            (async () => {
              try {
                const r = await fetch(
                  `${SC_VIDZEE}?tmdbId=${tmdbId}&type=${type}${tvExtra}`,
                  { headers: scHeaders, signal: AbortSignal.timeout(28_000) }
                );
                if (!r.ok) {
                  console.error(`[StarCima/vidzee] HTTP ${r.status} for tmdbId=${tmdbId}`);
                  return;
                }
                const data: any = await r.json();
                const servers: any[] = (data.servers || []);
                if (!servers.length) console.warn(`[StarCima/vidzee] No servers returned for tmdbId=${tmdbId}`);

                // Build list of (proxied URL, label) for all servers
                const prepared = servers
                  .filter((srv: any) => !!srv.url)
                  .map((srv: any) => {
                    let rawUrl  = String(srv.url);
                    let referer = SC_REF_HLS;
                    if (rawUrl.includes(`${SC_BASE}/cdn/?`)) {
                      try {
                        const pu = new URL(rawUrl);
                        rawUrl   = pu.searchParams.get("url")     || rawUrl;
                        referer  = pu.searchParams.get("referer") || SC_REF_HLS;
                      } catch { /* keep original */ }
                    }
                    const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(rawUrl)}&ref=${encodeURIComponent(referer)}`;
                    const label   = `StarCima · ${srv.name || "HD"}`;
                    return { proxied, label };
                  });

                // Probe all CDN URLs in parallel — only send servers that return HTTP 200.
                // This filters out dead workers.dev (403) and foreign CDNs (404).
                // Fallback: if ALL fail, send all anyway (better than nothing).
                const PROBE_PORT = process.env.PORT || 8080;
                const probeResults = await Promise.allSettled(
                  prepared.map(async ({ proxied, label }) => {
                    try {
                      const pr = await fetch(`http://localhost:${PROBE_PORT}${proxied}`, {
                        signal: AbortSignal.timeout(7_000),
                      });
                      return { proxied, label, ok: pr.ok };
                    } catch {
                      return { proxied, label, ok: false };
                    }
                  })
                );

                const probed = probeResults
                  .filter(r => r.status === "fulfilled")
                  .map(r => (r as PromiseFulfilledResult<{ proxied: string; label: string; ok: boolean }>).value);

                const working = probed.filter(s => s.ok);
                for (const { proxied, label } of working) {
                  sendSource(proxied, label, proxied, proxied);
                }
              } catch (e) { console.error("[StarCima/vidzee] error:", e); }
            })(),

            // ── arabic-sources: many embed servers (streamwish, filemoon …) ─
            (async () => {
              try {
                const sp = new URLSearchParams({
                  title : title,
                  type,
                  tmdbId,
                  ...(type === "tv" ? { season: String(season), episode: String(epNum) } : {}),
                });
                const r = await fetch(`${SC_ARABIC}?${sp.toString()}`, {
                  headers: scHeaders,
                  signal : AbortSignal.timeout(25_000),
                });
                if (!r.ok) {
                  console.error(`[StarCima/arabic] HTTP ${r.status}`);
                  return;
                }
                const data: any = await r.json();
                const servers: any[] = (data.servers || []);
                if (!servers.length) console.warn("[StarCima/arabic] No arabic servers returned");

                // isTopPriority first (streamwish, filemoon, dood …) — run ALL in parallel (no cap)
                const priority = servers.filter((s: any) => s.isTopPriority);
                const rest     = servers.filter((s: any) => !s.isTopPriority);
                const ordered  = [...priority, ...rest];

                await Promise.allSettled(ordered.map(async (srv: any) => {
                  if (!srv.embedUrl) return;
                  // Try server-side extraction only — no iframe fallback
                  await sendExtracted(srv.embedUrl, `الثريا · ${srv.name || "عربي"}`);
                }));
              } catch (e) { console.error("[StarCima/arabic] error:", e); }
            })(),
          ]);

        } catch { /* silent */ }
      })(),

      // ── AnimeWitcher Dubbed (Firebase Firestore — مدبلج عربي/إنجليزي) ────────────
      // Flow: title → titleSim match against dubbed catalog → episodes/{pad}/servers
      (async () => {
        if (!title) return;
        try {
          const AW_FS = "https://firestore.googleapis.com/v1/projects/animewitcher-1c66d/databases/(default)/documents";

          // جلب كتالوج المدبلج (dubbed=true) — 116 عنوان فقط
          const awDubRes = await fetch(`${AW_FS}:runQuery`, {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({
              structuredQuery: {
                from : [{ collectionId: "anime_list" }],
                where: { fieldFilter: { field: { fieldPath: "dubbed" }, op: "EQUAL", value: { booleanValue: true } } },
                limit: 200,
              }
            }),
            signal: AbortSignal.timeout(10_000),
          });
          if (!awDubRes.ok) throw new Error("dubbed catalog fetch failed");
          const awDubData = await awDubRes.json() as any[];

          // بحث بالتشابه
          const candidates = (awDubData || [])
            .filter((d: any) => d?.document?.name)
            .map((d: any) => {
              const f    = d.document.fields || {};
              const name = d.document.name.split("/").pop() || "";
              const titleEn  = f.title_en?.stringValue || f.title?.stringValue || f.name?.stringValue || name;
              const titleAr  = f.title_ar?.stringValue || f.title_arabic?.stringValue || "";
              const best = Math.max(titleSim(title, titleEn), titleSim(title, titleAr), titleSim(title, name.replace(/-/g, " ")));
              return { name, score: best };
            })
            .filter(c => c.score >= 0.45)
            .sort((a, b) => b.score - a.score);

          if (!candidates.length) {
            // fallback: إضافة TMDB English title لزيادة الاحتمالية
            let tmdbEnTitle = "";
            if (tmdbId) {
              try {
                const td = await fetch(`https://api.themoviedb.org/3/${type === "tv" ? "tv" : "movie"}/${tmdbId}?api_key=${process.env.TMDB_API_KEY || "2f7e0b0b4f5a5ae0b96c94f1e636a60f"}&language=en`, { signal: AbortSignal.timeout(4_000) });
                if (td.ok) { const j: any = await td.json(); tmdbEnTitle = j.title || j.name || ""; }
              } catch { /* skip */ }
            }
            if (!tmdbEnTitle) return;
            const byTmdb = (awDubData || [])
              .filter((d: any) => d?.document?.name)
              .map((d: any) => {
                const f    = d.document.fields || {};
                const name = d.document.name.split("/").pop() || "";
                const titleEn = f.title_en?.stringValue || f.title?.stringValue || name;
                return { name, score: titleSim(tmdbEnTitle, titleEn) };
              })
              .filter(c => c.score >= 0.45)
              .sort((a, b) => b.score - a.score);
            if (!byTmdb.length) return;
            candidates.push(...byTmdb);
          }

          const animeName = candidates[0].name;

          // جلب servers للحلقة
          const epPad  = String(type === "movie" ? 1 : epNum).padStart(3, "0");
          const srvRes = await fetch(
            `${AW_FS}/anime_list/${encodeURIComponent(animeName)}/episodes/${epPad}/servers?pageSize=20`,
            { signal: AbortSignal.timeout(10_000) }
          );
          if (!srvRes.ok) return;
          const srvData: any = await srvRes.json();
          if (!srvData.documents?.length) return;

          send("status", { msg: `AnimeWitcher Dubbed: "${animeName}" — جاري الاستخراج…` });

          await Promise.allSettled((srvData.documents as any[]).map(async (doc) => {
            const f       = doc.fields || {};
            const srvName = f.name?.stringValue || "";
            const quality = f.quality?.stringValue || "720p";
            const link    = f.link?.stringValue || "";
            const visible = f.visible?.booleanValue !== false;
            if (!link || !visible || !srvName) return;

            const qLabel = quality === "1080p" ? "FHD 1080p" : quality === "720p" ? "HD 720p" : quality;
            const label  = `AW·Dubbed · ${qLabel} · ${srvName}`;

            if (srvName === "PD") {
              const pdId = link.split("/").pop();
              if (!pdId || pdId.length < 4) return;
              const apiUrl  = `https://pixeldrain.com/api/file/${pdId}`;
              const proxied = wrapMp4(apiUrl, "https://pixeldrain.com/");
              sendSource(proxied, label, proxied, proxied);
            } else if (srvName === "ST") {
              try {
                const stHtml = await fetch(link, {
                  headers: { "User-Agent": UA, "Referer": "https://streamtape.com/" },
                  signal : AbortSignal.timeout(10_000),
                }).then(r => r.ok ? r.text() : "").catch(() => "");
                const m1 = stHtml.match(/robotlink'\)\.innerHTML\s*=\s*'([^']+)'/);
                const m2 = stHtml.match(/'([^']+)'\s*\+\s*\('([^']+)'\)/);
                if (m1 && m2) {
                  const stUrl   = "https:" + m1[1] + m2[2];
                  const proxied = wrapMp4(stUrl, "https://streamtape.com/");
                  sendSource(proxied, label, proxied, proxied);
                }
              } catch { /* skip */ }
            } else if (srvName === "VT") {
              try {
                const extracted = await callExtractApi(link);
                if (extracted?.directUrl) {
                  const d       = extracted.directUrl;
                  const isHls   = d.includes(".m3u8") || d.startsWith("/api/anime/hls-proxy");
                  const proxied = isHls ? wrapHls(d, link) : wrapMp4(d, link);
                  sendSource(proxied, label, proxied, proxied);
                }
              } catch { /* skip */ }
            } else if (srvName === "MF") {
              try {
                const mfHtml = await fetch(link, {
                  headers: { "User-Agent": UA, "Referer": "https://www.mediafire.com/" },
                  signal: AbortSignal.timeout(10_000),
                }).then(r => r.ok ? r.text() : "").catch(() => "");
                const mfDirect =
                  (/(https:\/\/download\d*\.mediafire\.com\/[^"' \n<>]+)/.exec(mfHtml))?.[1] ||
                  (/id="downloadButton"[^>]*href="([^"]+)"/.exec(mfHtml))?.[1] || null;
                if (mfDirect) {
                  const proxied = wrapMp4(mfDirect.replace(/&amp;/g, "&"), "https://www.mediafire.com/");
                  sendSource(proxied, label, proxied, proxied);
                }
              } catch { /* skip */ }
            }
          }));
        } catch { /* silent */ }
      })(),

      // ── AnimeWitcher (Firebase Firestore — أنمي ياباني في قسم الانيميشن) ────────
      // Flow: title → AniList GraphQL → aniList_id → AnimeWitcher Firestore
      //       → episodes/{padded}/servers → PD (Pixeldrain) + ST (Streamtape) + VT
      (async () => {
        if (!title) return;
        try {
          const AW_FS = "https://firestore.googleapis.com/v1/projects/animewitcher-1c66d/databases/(default)/documents";

          // 1. جلب العنوان الإنجليزي من TMDB (لأن title قد يكون عربياً)
          let tmdbEnTitle = "";
          let tmdbOrigTitle = "";
          if (tmdbId) {
            try {
              const tmdbEn = await fetch(
                `${TMDB_BASE}/${type === "tv" ? "tv" : "movie"}/${tmdbId}?api_key=${TMDB_KEY}&language=en`,
                { signal: AbortSignal.timeout(6_000) }
              );
              if (tmdbEn.ok) {
                const td: any = await tmdbEn.json();
                tmdbEnTitle   = td.title || td.name || "";
                tmdbOrigTitle = td.original_title || td.original_name || "";
              }
            } catch { /* skip */ }
          }

          // 2. بحث AniList بالعنوان للحصول على aniList_id
          //    نُجرّب: العنوان الإنجليزي من TMDB ← العنوان الأصلي ← title المُمرَّر
          // بحث AniList بالتوازي — بدلاً من تسلسلي (كل بحث 8s × 4 = 32s)
          const awTitles = [tmdbEnTitle, tmdbOrigTitle, title, req.query.english ? String(req.query.english) : ""]
            .filter(Boolean)
            .filter((v, i, a) => a.indexOf(v) === i);
          let anilistId = "";
          try {
            anilistId = await Promise.any(
              awTitles.map(async t => {
                const gql = await fetch("https://graphql.anilist.co", {
                  method : "POST",
                  headers: { "Content-Type": "application/json", "Accept": "application/json" },
                  body   : JSON.stringify({
                    query    : "query($s:String){Media(search:$s,type:ANIME,isAdult:false){id title{romaji english}}}",
                    variables: { s: t },
                  }),
                  signal: AbortSignal.timeout(8_000),
                });
                if (!gql.ok) throw new Error("not ok");
                const gd: any = await gql.json();
                if (!gd?.data?.Media?.id) throw new Error("no id");
                return String(gd.data.Media.id);
              })
            );
          } catch { /* لم يُوجد في AniList */ }
          if (!anilistId) return;

          // 2. ابحث عن الأنمي في Firestore بالـ aniList_id — الوصول العام بدون auth
          const qRes = await fetch(`${AW_FS}:runQuery`, {
            method : "POST",
            headers: { "Content-Type": "application/json" },
            body   : JSON.stringify({
              structuredQuery: {
                from : [{ collectionId: "anime_list" }],
                where: { fieldFilter: { field: { fieldPath: "aniList_id" }, op: "EQUAL", value: { stringValue: anilistId } } },
                limit: 1,
              }
            }),
            signal: AbortSignal.timeout(10_000),
          });
          if (!qRes.ok) return;
          const qData = await qRes.json() as any[];
          const docPath  = qData?.[0]?.document?.name;
          if (!docPath) return;
          const animeName = docPath.split("/").pop();
          if (!animeName) return;

          // 4. جلب الـ servers للحلقة (مُبطّنة 3 أرقام)
          const epPad  = String(type === "movie" ? 1 : epNum).padStart(3, "0");
          const srvRes = await fetch(
            `${AW_FS}/anime_list/${encodeURIComponent(animeName)}/episodes/${epPad}/servers?pageSize=20`,
            { signal: AbortSignal.timeout(10_000) }
          );
          if (!srvRes.ok) return;
          const srvData: any = await srvRes.json();
          if (!srvData.documents?.length) return;

          send("status", { msg: `AnimeWitcher: وُجد "${animeName}" — جاري الاستخراج…` });

          // 5. معالجة كل سيرفر وإرسال المصادر
          await Promise.allSettled((srvData.documents as any[]).map(async (doc) => {
            const f       = doc.fields || {};
            const srvName = f.name?.stringValue || "";
            const quality = f.quality?.stringValue || "720p";
            const link    = f.link?.stringValue || "";
            const visible = f.visible?.booleanValue !== false;
            if (!link || !visible || !srvName) return;

            const qLabel = quality === "1080p" ? "FHD 1080p" : quality === "720p" ? "HD 720p" : quality;
            const label  = `AnimeWitcher · ${qLabel} · ${srvName}`;

            if (srvName === "PD") {
              // Pixeldrain → رابط مباشر MP4 عبر video-proxy
              const pdId = link.split("/").pop();
              if (!pdId || pdId.length < 4) return;
              const apiUrl  = `https://pixeldrain.com/api/file/${pdId}`;
              const proxied = wrapMp4(apiUrl, "https://pixeldrain.com/");
              sendSource(proxied, label, proxied, proxied);

            } else if (srvName === "ST") {
              // Streamtape → استخراج الرابط المباشر من صفحة HTML
              try {
                const stHtml = await fetch(link, {
                  headers: { "User-Agent": UA, "Referer": "https://streamtape.com/" },
                  signal : AbortSignal.timeout(10_000),
                }).then(r => r.ok ? r.text() : "").catch(() => "");
                // parseStreamtape pattern
                const m1 = stHtml.match(/robotlink'\)\.innerHTML\s*=\s*'([^']+)'/);
                const m2 = stHtml.match(/'([^']+)'\s*\+\s*\('([^']+)'\)/);
                if (m1 && m2) {
                  const stUrl   = "https:" + m1[1] + m2[2];
                  const proxied = wrapMp4(stUrl, "https://streamtape.com/");
                  sendSource(proxied, label, proxied, proxied);
                }
              } catch { /* skip */ }

            } else if (srvName === "VT") {
              // VidTube → استخراج عبر callExtractApi (extractVideoDeep)
              try {
                const extracted = await callExtractApi(link);
                if (extracted?.directUrl) {
                  const d       = extracted.directUrl;
                  const isHls   = d.includes(".m3u8") || d.startsWith("/api/anime/hls-proxy");
                  const proxied = isHls ? wrapHls(d, link) : wrapMp4(d, link);
                  sendSource(proxied, label, proxied, proxied);
                }
              } catch { /* skip */ }

            } else if (srvName === "MF") {
              // MediaFire → استخراج رابط التحميل المباشر
              try {
                const mfHtml = await fetch(link, {
                  headers: { "User-Agent": UA, "Referer": "https://www.mediafire.com/" },
                  signal: AbortSignal.timeout(10_000),
                }).then(r => r.ok ? r.text() : "").catch(() => "");
                const mfDirect =
                  (/(https:\/\/download\d*\.mediafire\.com\/[^"' \n<>]+)/.exec(mfHtml))?.[1] ||
                  (/id="downloadButton"[^>]*href="([^"]+)"/.exec(mfHtml))?.[1] ||
                  (/aria-label="[Dd]ownload [Ff]ile"[^>]*href="([^"]+)"/.exec(mfHtml))?.[1] ||
                  null;
                if (mfDirect) {
                  const proxied = wrapMp4(mfDirect.replace(/&amp;/g, "&"), "https://www.mediafire.com/");
                  sendSource(proxied, label, proxied, proxied);
                }
              } catch { /* skip */ }

            } else if (srvName === "KF") {
              // KrakenFiles → Cloudflare 502 من Replit → يُتخطى
            }
          }));

        } catch { /* silent */ }
      })(),

      // ── 16. Vyla SSE proxy (missourimonster-vyla.hf.space) ──
      (async () => {
        if (!tmdbId) return;
        try {
          const VYLA_BASE = "https://missourimonster-vyla.hf.space";

          // فحص سريع: HF Spaces تنام بعد الخمول → إذا لم يرد خلال 5 ثوانٍ: تجاهل فوراً
          try {
            const hc = await fetch(`${VYLA_BASE}/api/health`, {
              signal: AbortSignal.timeout(5_000),
              headers: { "User-Agent": UA },
            });
            if (!hc.ok) return;
          } catch { return; } // timeout / خطأ = السيرفر نائم → تجاهل

          send("status", { msg: "Vyla: جاري الاستخراج…" });
          const vylaUrl = type === "tv"
            ? `${VYLA_BASE}/api/tv?id=${tmdbId}&season=${season}&episode=${epNum}`
            : `${VYLA_BASE}/api/movie?id=${tmdbId}`;

          const ctrl  = new AbortController();
          const timer = setTimeout(() => ctrl.abort(), 15_000); // ← 28s → 15s

          const r = await fetch(vylaUrl, {
            signal : ctrl.signal,
            headers: { "User-Agent": UA, "Accept": "text/event-stream" },
          });

          if (!r.ok || !r.body) { clearTimeout(timer); return; }

          const reader  = (r.body as any).getReader();
          const decoder = new TextDecoder();
          let buffer = "";

          const processLine = async (line: string) => {
            if (!line.startsWith("data: ")) return;
            try {
              const evt = JSON.parse(line.slice(6));
              if (evt.type === "done") { ctrl.abort(); return; }
              if (evt.type !== "source") return;

              const vylaProxyUrl: string = evt.source?.url || "";
              if (!vylaProxyUrl || !vylaProxyUrl.startsWith("http")) return;

              // Extract raw HLS URL and Referer from Vyla's proxy wrapper:
              //  - missourimonster-vyla.hf.space/api?url=...&proxyHeaders={Referer,Origin,...}
              //  - toustream.xyz/tou/bp/?url=...&origin=https://spencerdevs.xyz
              let rawUrl  = vylaProxyUrl;
              let referer = "https://missourimonster-vyla.hf.space/";
              try {
                const pu    = new URL(vylaProxyUrl);
                const inner = pu.searchParams.get("url");
                if (inner) rawUrl = decodeURIComponent(inner);
                const phRaw = pu.searchParams.get("proxyHeaders");
                if (phRaw) {
                  const ph: any = JSON.parse(decodeURIComponent(phRaw));
                  referer = ph.Referer || ph.referer || referer;
                } else {
                  // TouStream style: ?origin=https://spencerdevs.xyz (no proxyHeaders JSON)
                  const originParam = pu.searchParams.get("origin");
                  if (originParam) referer = originParam.endsWith("/") ? originParam : originParam + "/";
                }
              } catch { /* keep original */ }

              if (!rawUrl.startsWith("http")) return;

              // Skip anime-only CDN sources from Vyla (AnimeHub etc. use AniList IDs,
              // not TMDB IDs — they return wrong content for animation/movies)
              const sourceId = (evt.source.source || evt.source.label || "").toLowerCase();
              if (sourceId === "animehub" || rawUrl.includes("burntburst") || rawUrl.includes("echovideo.ru")) return;

              const label = `Vyla · ${evt.source.label || evt.source.source}`;

              // Route based on URL type:
              // - HLS: .m3u8, /hls/, or VidZee's cf-master*.txt format → hls-proxy
              // - MP4/direct (e.g. fsharetv.cc/api/media/...): → video-proxy
              const isHls = rawUrl.includes(".m3u8") || rawUrl.includes("/hls/") || /cf-master[^/]*\.txt/.test(rawUrl);
              const proxied = isHls
                ? `/api/anime/hls-proxy?url=${encodeURIComponent(rawUrl)}&ref=${encodeURIComponent(referer)}`
                : `/api/anime/video-proxy?url=${encodeURIComponent(rawUrl)}&ref=${encodeURIComponent(referer)}`;
              sendSource(proxied, label, proxied, proxied);

            } catch { /* bad JSON, skip */ }
          };

          while (true) {
            let chunk: { done: boolean; value: Uint8Array };
            try { chunk = await reader.read(); } catch { break; }
            if (chunk.done) break;
            buffer += decoder.decode(chunk.value, { stream: true });
            const lines = buffer.split("\n");
            buffer = lines.pop() ?? "";
            for (const line of lines) await processLine(line);
          }

          clearTimeout(timer);
        } catch { /* silent */ }
      })(),

      // ── anime-day.com — أنمي داي (كرتون غربي/أنمي صيني) ────────────────────
      (async () => {
        if (!title) return;
        try {
          send("status", { msg: "AniméDay: جاري البحث…" });
          const ADBASE  = "https://www.anime-day.com";
          const AD_UA   = "com.anime.day/4.0 (Android)";

          // ── resolve relative URL → full URL using server name ──────────────
          const adResolve = (srv: any): string | null => {
            const u: string = srv.url || "";
            const p: string = ((srv.name || "").toLowerCase().split(" ").pop() || "");
            if (!u) return null;
            if (u.startsWith("https://")) return u;
            if (u.startsWith("/v/"))          return `https://vidhidepro.com${u}`;
            if (/^\/e\//.test(u)) {
              if (p === "dood")     return `https://dood.to${u}`;
              if (p === "mixdrop")  return `https://mixdrop.ag${u}`;
              if (p === "kerapoxy") return `https://kerapoxy.cc${u}`;
              if (p === "filemoon") return `https://filemoon.sx${u}`;
              if (p === "voe_sx" || p === "voe") return `https://voe.sx${u}`;
              return `https://embedwish.com${u}`;
            }
            if (/^\/embed-[^/]+\.html$/.test(u)) {
              if (p === "upstream")  return `https://upstream.to${u}`;
              if (p === "uqload")    return `https://uqload.co${u}`;
              if (p === "vadbam")    return `https://vadbam.net${u}`;
              if (p === "viidshar")  return `https://viidshar.com${u}`;
              if (p === "mp4upload") return `https://www.mp4upload.com${u}`;
              return `https://upstream.to${u}`;
            }
            return null;
          };

          // ── fetch anime list + servers in parallel ──────────────────────────
          const [animeR, servR] = await Promise.all([
            fetch(`${ADBASE}/app/anime.php`, {
              headers: { "User-Agent": AD_UA, "Accept": "application/json" },
              signal : AbortSignal.timeout(8_000),
            }),
            fetch(`${ADBASE}/app/servers.php`, {
              headers: { "User-Agent": AD_UA, "Accept": "application/json" },
              signal : AbortSignal.timeout(10_000),
            }),
          ]);
          if (!animeR.ok || !servR.ok) return;
          const animeList: any[] = ((await animeR.json() as any).data ?? []);
          const serverList: any[] = ((await servR.json() as any).data ?? []);
          if (!animeList.length || !serverList.length) return;

          // ── Arabic ordinal → digit (الأول=1, الثاني=2, …) ──────────────────
          const AR_ORDINAL: Record<string, number> = {
            'الأول':1,'الاول':1,'الأولى':1,'الأولي':1,
            'الثاني':2,'الثانى':2,'الثانية':2,
            'الثالث':3,'الثالثة':3,
            'الرابع':4,'الرابعة':4,
            'الخامس':5,'الخامسة':5,
            'السادس':6,'السابع':7,'الثامن':8,'التاسع':9,'العاشر':10,
          };
          const parseSeasonNum = (nm: string): number => {
            const d = nm.match(/(?:season)\s+(\d+)/i);
            if (d) return parseInt(d[1], 10);
            const ar = nm.match(/الموسم\s+(\S+)/);
            if (ar) return AR_ORDINAL[ar[1]] ?? 1;
            return 1;
          };

          // ── title matching: use titleSim against name (strip season) ─────────
          const searchQ = title.toLowerCase().replace(/[^a-z0-9\s]/g, " ").trim();

          // Collect ALL entries that match title (multiple seasons)
          const candidates: { anime: any; seasonNum: number; score: number }[] = [];
          for (const anime of animeList) {
            const nm = (anime.name || "")
              .toLowerCase()
              .replace(/\s*(season|الموسم)\s+.*/i, "")
              .replace(/[^a-z0-9\s]/g, " ").trim();
            const sn = (anime.second_name || "")
              .toLowerCase().replace(/[^a-z0-9\s]/g, " ");
            const sc = Math.max(titleSim(searchQ, nm), titleSim(searchQ, sn));
            if (sc >= 0.5) {
              const sNum = parseSeasonNum(anime.name || "");
              candidates.push({ anime, seasonNum: sNum, score: sc });
            }
          }
          if (!candidates.length) return;

          // For TV: prefer the entry whose season matches; for movie: highest score
          let bestCandidate = candidates[0];
          if (type === "tv") {
            const exact = candidates.find(c => c.seasonNum === season);
            if (exact) bestCandidate = exact;
            else return; // season not available
          } else {
            bestCandidate = candidates.reduce((a, b) => a.score >= b.score ? a : b);
          }
          const bestAnime = bestCandidate.anime;
          if (!bestAnime) return;

          const animeName: string = bestAnime.name || "";
          const showNamePart = animeName.toLowerCase()
            .replace(/\s*(season|الموسم)\s+.*/i, "").trim();
          const matched = serverList.filter((s: any) => {
            const sn = (s.name || "").toLowerCase();
            if (!sn.includes(showNamePart.split(" ")[0])) return false;
            if (type === "tv") {
              // Use regex with word boundary so ep 5 doesn't match ep 50/55
              return sn.includes(`season ${season}`) &&
                     new RegExp(`\\beps\\s+${epNum}(?:\\s|$)`).test(sn);
            }
            return sn.includes(showNamePart.slice(0, 12));
          });
          if (!matched.length) return;

          // ── try each server, send extracted streams ─────────────────────────
          const seen = new Set<string>();
          for (const srv of matched.slice(0, 10)) {
            const full = adResolve(srv);
            if (!full || seen.has(full)) continue;
            seen.add(full);
            const prov = (srv.name || "").toLowerCase().split(" ").pop() || "animeday";
            await sendExtracted(full, `AniméDay · ${prov}`);
          }
        } catch { /* silent */ }
      })(),

      // ── aflaam.com — مباشر MP4 عربي متعدد الجودات ───────────────────────────
      (async () => {
        if (!title) return;
        try {
          send("status", { msg: "aflaam: جاري البحث…" });

          // Use pre-fetched English title (already resolved before Promise.allSettled)
          const sources = type === "tv"
            ? await scrapeAflaamSeries(title, epNum, season, enTitlePrefetched || undefined)
            : await scrapeAflaamMovie(title, enTitlePrefetched || undefined);

          for (const src of sources) {
            const qLabel  = src.quality === "1080" ? "1080p FHD"
              : src.quality === "720" ? "720p HD"
              : src.quality === "480" ? "480p SD"
              : `${src.quality}p`;
            const proxied = wrapMp4(src.url, `${AFLAAM_BASE}/`);
            sendSource(proxied, `aflaam · ${qLabel}`, proxied, proxied);
          }
        } catch { /* silent */ }
      })(),

    ]);

    clearTimeout(forceClose);
    if (!streamDone && !res.writableEnded) {
      streamDone = true;
      send("done", {}); clearInterval(keepAlive); res.end();
    }
  } catch (e) {
    clearTimeout(forceClose);
    if (!res.writableEnded) {
      send("error", { msg: String(e) });
      send("done",  {}); clearInterval(keepAlive); res.end();
    }
  }
});

export default router;
