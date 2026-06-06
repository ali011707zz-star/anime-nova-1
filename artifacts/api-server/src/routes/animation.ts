import { Router, type Request, type Response } from "express";

const router = Router();

const TMDB_KEY  = process.env.TMDB_API_KEY || "8265bd1679663a7ea12ac168da84d2e8";
const TMDB_BASE = "https://api.themoviedb.org/3";
const SD_BASE   = "https://watch.stardima.com/watch";
const SD_AJAX   = "https://watch.stardima.com/wp-admin/admin-ajax.php";
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

    // 4. DooPlay AJAX fallback
    const postId = parsePostId(html);
    const nonce  = parseNonce(html);
    if (!postId) return [];

    const results: string[] = [];
    await Promise.allSettled([1, 2, 3].map(async (num) => {
      const body = new URLSearchParams({ action: "doo_player_ajax", post_id: postId, nonce, num: String(num), g: "0" });
      try {
        const r = await fetch("https://topcinemaa.com/wp-admin/admin-ajax.php", {
          method: "POST",
          headers: { "Content-Type": "application/x-www-form-urlencoded", "User-Agent": UA, "Referer": url, "X-Requested-With": "XMLHttpRequest" },
          body  : body.toString(),
          signal: AbortSignal.timeout(6_000),
        });
        if (!r.ok) return;
        const text = await r.text();
        if (!text || text === "0" || text.length > 3000) return;
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
    const data = await tmdb(`${ep}?with_genres=${gp}&sort_by=popularity.desc&page=${page}&include_adult=false`);
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

// ── SSE animation sources stream ──────────────────────────────────────────────

router.get("/animation/sources-stream", async (req: Request, res: Response) => {
  const title    = String(req.query.title  || "");
  const type     = String(req.query.type   || "movie");
  const epNum    = parseInt(String(req.query.ep || "1"), 10) || 1;

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

  const sendSource = (url: string, label: string) => {
    if (!url || seenUrls.has(url)) return;
    seenUrls.add(url);
    sourceCount++;
    send("source", { url, label });
  };

  try {
    send("status", { msg: `جاري البحث عن "${title}"…` });

    // ── Run all scrapers in parallel ──────────────────────────────────────────
    await Promise.allSettled([

      // ── 1. StarDima ─────────────────────────────────────────────────────────
      (async () => {
        try {
          const searchHtml = await cfGet(`${SD_BASE}/?s=${encodeURIComponent(title)}`, SD_BASE + "/");
          const shows      = parseSDShows(searchHtml);
          if (!shows.length) return;

          // Score all results; prefer movies when type=movie
          const scored = shows.map(s => ({ ...s, score: titleSim(s.title, title) }));
          scored.sort((a, b) => {
            // Prefer matching section
            const sectionMatch = (type === "movie" ? "movies" : "tvshows");
            const aBonus = a.section === sectionMatch ? 0.05 : 0;
            const bBonus = b.section === sectionMatch ? 0.05 : 0;
            return (b.score + bBonus) - (a.score + aBonus);
          });
          const best = scored[0];
          if (best.score < 0.2) return;
          send("status", { msg: `StarDima: وُجد "${best.title}"` });

          if (best.section === "movies" || type === "movie") {
            // Movie: fetch movie page → DooPlay AJAX
            const movieSlug = encodeURI(best.slug);
            const movieHtml = await cfGet(`${SD_BASE}/movies/${movieSlug}/`, SD_BASE + "/");
            const postId = parsePostId(movieHtml);
            const nonce  = parseNonce(movieHtml);
            // Try direct iframes first
            parseIframes(movieHtml, ["stardima", "google", "histats"]).forEach(u => sendSource(u, "StarDima فيلم"));
            if (postId) {
              const urls = await sdDoopPlayerAjax(postId, nonce, `${SD_BASE}/movies/${movieSlug}/`);
              urls.forEach((u, i) => sendSource(u, `StarDima فيلم ${i + 1}`));
            }
          } else {
            // TV show: series page → season → episodes → AJAX
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
            parseIframes(epHtml, ["stardima", "google", "histats"]).forEach(u => sendSource(u, "StarDima إطار"));
            if (postId) {
              const urls = await sdDoopPlayerAjax(postId, nonce, `${SD_BASE}/episodes/${encodeURI(target.slug)}/`);
              urls.forEach((u, i) => sendSource(u, `StarDima سيرفر ${i + 1}`));
            }
          }
        } catch { /* silent */ }
      })(),

      // ── 2. moviz-time.co ────────────────────────────────────────────────────
      (async () => {
        try {
          const searchHtml = await cfGet(`${MV_BASE}/?s=${encodeURIComponent(title)}`, MV_BASE + "/");
          const allLinks = parseMVLinks(searchHtml);
          if (!allLinks.length) return;

          // For movies: prefer /فيلم- (Arabic "film") URLs
          // For TV: prefer /anime/ URLs but only if we can find episode links
          let links = allLinks;
          if (type === "movie") {
            const movieLinks = allLinks.filter(l => {
              const decoded = decodeURIComponent(l.url).toLowerCase();
              return decoded.includes("/فيلم") || decoded.includes("/film") || decoded.includes("/movie");
            });
            if (movieLinks.length) links = movieLinks;
          }

          links.sort((a, b) => titleSim(b.title, title) - titleSim(a.title, title));
          const best = links[0];
          if (titleSim(best.title, title) < 0.15) return;
          send("status", { msg: `Moviz: وُجد "${best.title}"` });

          if (type === "tv") {
            // Try to find episode link on the series page
            const epUrl = await mvFindEpisode(best.url, epNum);
            if (!epUrl) return; // Series page has no episode HTML links → skip
            const iframes = await mvScrapeMovie(epUrl);
            iframes.forEach((u, i) => sendSource(u, `Moviz حلقة ${i + 1}`));
          } else {
            // Movie: scrape directly
            const iframes = await mvScrapeMovie(best.url);
            iframes.forEach((u, i) => sendSource(u, `Moviz سيرفر ${i + 1}`));
          }
        } catch { /* silent */ }
      })(),

      // ── 3. topcinemaa.com ───────────────────────────────────────────────────
      (async () => {
        try {
          const links = await tcSearch(title);
          if (!links.length) return;

          // Score each result by title similarity
          const scored = links.map(l => ({ ...l, score: titleSim(l.title, title) }));
          scored.sort((a, b) => b.score - a.score);
          const topScore = scored[0].score;
          if (topScore < 0.2) return;

          let target: typeof scored[0] | undefined;
          if (type === "tv") {
            // Prefer the page whose episode number matches
            const candidates = scored.filter(l => l.score >= topScore * 0.7);
            target = candidates.find(l => l.epNum === epNum)
              || candidates.find(l => l.epNum === undefined)
              || candidates[0];
          } else {
            // For movies, prefer a link with no episode number
            target = scored.find(l => l.epNum === undefined) || scored[0];
          }
          if (!target) return;

          send("status", { msg: `TopCinema: وُجد "${target.title}"` });
          const iframes = await tcScrapePlayer(target.url);
          iframes.forEach((u, i) => sendSource(u, `TopCinema سيرفر ${i + 1}`));
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
