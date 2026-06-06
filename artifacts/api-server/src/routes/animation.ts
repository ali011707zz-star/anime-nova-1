import { Router, type Request, type Response } from "express";

const router = Router();

const TMDB_KEY  = process.env.TMDB_API_KEY || "8265bd1679663a7ea12ac168da84d2e8";
const TMDB_BASE = "https://api.themoviedb.org/3";
const SD_BASE   = "https://watch.stardima.com/watch";

// ── helpers ──────────────────────────────────────────────────────────────────

async function tmdb(path: string) {
  const sep = path.includes("?") ? "&" : "?";
  const url = `${TMDB_BASE}${path}${sep}api_key=${TMDB_KEY}&language=ar`;
  const r = await fetch(url, { signal: AbortSignal.timeout(12_000) });
  if (!r.ok) throw new Error(`TMDB ${r.status} — ${path}`);
  return r.json();
}

async function sdGet(url: string): Promise<string> {
  const r = await fetch(url, {
    headers: {
      "User-Agent"     : "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36",
      "Accept"         : "text/html,application/xhtml+xml",
      "Accept-Language": "ar,en;q=0.9",
      "Referer"        : SD_BASE + "/",
    },
    signal: AbortSignal.timeout(14_000),
  });
  if (!r.ok) throw new Error(`StarDima HTTP ${r.status}`);
  return r.text();
}

function titleSim(a: string, b: string): number {
  const norm = (s: string) => s.toLowerCase().replace(/[^a-z0-9\u0600-\u06ff ]/g, "").replace(/\s+/g, " ").trim();
  const na = norm(a); const nb = norm(b);
  if (na === nb) return 1;
  if (na.includes(nb) || nb.includes(na)) return 0.9;
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
  const m = html.match(/"nonce"\s*:\s*"([a-f0-9]{10})"/);
  return m ? m[1] : "023077457a";
}

function parseShows(html: string): { title: string; slug: string; poster: string }[] {
  const seen = new Set<string>();
  const out: { title: string; slug: string; poster: string }[] = [];

  const re1 = /href="https:\/\/watch\.stardima\.com\/watch\/tvshows\/([^"]+)"[^>]*>[\s\S]{0,300}?<img[^>]+src="([^"]+)"[^>]*alt="([^"]*)"/g;
  let m: RegExpExecArray | null;
  while ((m = re1.exec(html)) !== null) {
    const slug = decodeURIComponent(m[1]).replace(/\/$/, "");
    if (seen.has(slug)) continue; seen.add(slug);
    out.push({ slug, poster: m[2], title: m[3].trim() || slug });
  }

  const re2 = /<a[^>]+href="https:\/\/watch\.stardima\.com\/watch\/tvshows\/([^"]+)"[^>]*>([^<]+)</g;
  while ((m = re2.exec(html)) !== null) {
    const slug = decodeURIComponent(m[1]).replace(/\/$/, "");
    if (seen.has(slug)) continue; seen.add(slug);
    out.push({ slug, poster: "", title: m[2].trim() || slug });
  }
  return out;
}

function parseEpisodes(html: string): { title: string; slug: string; num: number }[] {
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
    if (!id) return res.status(400).json({ error: "id required" });
    const app = type === "tv"
      ? "aggregate_credits,recommendations,content_ratings"
      : "credits,recommendations";
    const data = await tmdb(`/${type}/${id}?append_to_response=${app}`);
    res.json(data);
  } catch (e) { res.status(502).json({ error: String(e) }); }
});

router.get("/animation/season", async (req: Request, res: Response) => {
  try {
    const id     = String(req.query.id     || "");
    const season = String(req.query.season || "1");
    if (!id) return res.status(400).json({ error: "id required" });
    const data = await tmdb(`/tv/${id}/season/${season}`);
    res.json(data);
  } catch (e) { res.status(502).json({ error: String(e) }); }
});

router.get("/animation/search", async (req: Request, res: Response) => {
  try {
    const q    = String(req.query.q   || "");
    const type = String(req.query.type || "multi");
    if (!q) return res.status(400).json({ error: "q required" });
    const data = await tmdb(`/search/${type}?query=${encodeURIComponent(q)}&include_adult=false`);
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
    const data   = await tmdb(`/trending/${type}/${window}`);
    const results = (data.results || []).filter((r: any) => (r.genre_ids || []).includes(16));
    res.json({ ...data, results });
  } catch (e) { res.status(502).json({ error: String(e) }); }
});

// ── StarDima scraper ──────────────────────────────────────────────────────────

router.get("/animation/stardima-search", async (req: Request, res: Response) => {
  try {
    const q = String(req.query.q || "");
    if (!q) return res.status(400).json({ error: "q required" });
    const html  = await sdGet(`${SD_BASE}/?s=${encodeURIComponent(q)}`);
    const shows = parseShows(html).slice(0, 12);
    shows.sort((a, b) => titleSim(b.title, q) - titleSim(a.title, q));
    res.json({ shows });
  } catch (e) { res.status(502).json({ error: String(e), shows: [] }); }
});

router.get("/animation/stardima-series", async (req: Request, res: Response) => {
  try {
    const slug = String(req.query.slug || "");
    if (!slug) return res.status(400).json({ error: "slug required" });
    const html     = await sdGet(`${SD_BASE}/tvshows/${encodeURI(slug)}/`);
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
    const episodes = parseEpisodes(html);
    res.json({ title, poster, desc, seasons, episodes });
  } catch (e) { res.status(502).json({ error: String(e) }); }
});

router.get("/animation/stardima-season", async (req: Request, res: Response) => {
  try {
    const slug = String(req.query.slug || "");
    if (!slug) return res.status(400).json({ error: "slug required" });
    const html     = await sdGet(`${SD_BASE}/seasons/${encodeURI(slug)}/`);
    const episodes = parseEpisodes(html);
    res.json({ episodes });
  } catch (e) { res.status(502).json({ error: String(e), episodes: [] }); }
});

router.get("/animation/stardima-episode", async (req: Request, res: Response) => {
  try {
    const slug = String(req.query.slug || "");
    if (!slug) return res.status(400).json({ error: "slug required" });
    const html   = await sdGet(`${SD_BASE}/episodes/${encodeURI(slug)}/`);
    const postId = parsePostId(html);
    const nonce  = parseNonce(html);

    // Collect direct iframes from the page
    const iframeUrls: string[] = [];
    const ifRe = /<iframe[^>]+src="([^"]+)"/g;
    let m: RegExpExecArray | null;
    while ((m = ifRe.exec(html)) !== null) {
      const u = m[1];
      if (!u.includes("stardima") && !u.includes("google") && !u.includes("histats") && !u.includes("rdparena")) {
        iframeUrls.push(u);
      }
    }

    // DooPlay AJAX — try up to 5 server buttons
    const sources: { url: string; label: string; num: number }[] = [];
    if (postId) {
      const ajaxUrl = `${SD_BASE}/wp-admin/admin-ajax.php`;
      await Promise.allSettled(
        [1, 2, 3, 4, 5].map(async (num) => {
          const body = new URLSearchParams({
            action : "doo_player_ajax",
            post_id: postId,
            nonce,
            num    : String(num),
            g      : "0",
          });
          const r = await fetch(ajaxUrl, {
            method : "POST",
            headers: {
              "Content-Type"     : "application/x-www-form-urlencoded",
              "User-Agent"       : "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36",
              "Referer"          : `${SD_BASE}/episodes/${slug}/`,
              "X-Requested-With" : "XMLHttpRequest",
            },
            body  : body.toString(),
            signal: AbortSignal.timeout(7_000),
          });
          if (!r.ok) return;
          const text = await r.text();
          if (text === "0" || text === "" || text === "false") return;
          let parsed: any;
          try { parsed = JSON.parse(text); } catch { return; }
          const url = parsed.embed_url || parsed.url || parsed.link || "";
          if (url) sources.push({ url, label: `سيرفر ${num}`, num });
        })
      );
      sources.sort((a, b) => a.num - b.num);
    }

    res.json({ postId, iframes: iframeUrls, sources });
  } catch (e) {
    res.status(502).json({ error: String(e), iframes: [], sources: [] });
  }
});

// ── SSE animation sources stream ──────────────────────────────────────────────

router.get("/animation/sources-stream", async (req: Request, res: Response) => {
  const title = String(req.query.title || "");
  const type  = String(req.query.type  || "movie");
  const ep    = parseInt(String(req.query.ep || "1"), 10) || 1;

  res.setHeader("Content-Type",  "text/event-stream; charset=utf-8");
  res.setHeader("Cache-Control", "no-cache");
  res.setHeader("Connection",    "keep-alive");
  res.setHeader("X-Accel-Buffering", "no");
  res.flushHeaders();

  const send = (event: string, data: any) => {
    res.write(`event: ${event}\ndata: ${JSON.stringify(data)}\n\n`);
  };

  const keepAlive = setInterval(() => res.write(": keepalive\n\n"), 6_000);
  req.on("close", () => clearInterval(keepAlive));

  try {
    send("status", { msg: `جاري البحث عن "${title}"…` });

    // 1. Search StarDima
    const searchHtml = await sdGet(`${SD_BASE}/?s=${encodeURIComponent(title)}`);
    const shows      = parseShows(searchHtml);
    if (!shows.length) {
      send("status", { msg: "لم يُعثر على نتائج في StarDima" });
      send("done", {}); clearInterval(keepAlive); res.end(); return;
    }
    shows.sort((a, b) => titleSim(b.title, title) - titleSim(a.title, title));
    const best = shows[0];
    send("status", { msg: `تم العثور على: ${best.title}` });

    // 2. Get series info
    const seriesHtml = await sdGet(`${SD_BASE}/tvshows/${encodeURI(best.slug)}/`);

    let epSlug: string | null = null;

    if (type === "movie") {
      // For movies, try to get direct player from series page
      const iframeM = seriesHtml.match(/<iframe[^>]+src="([^"]+)"/);
      if (iframeM && !iframeM[1].includes("stardima")) {
        send("source", { url: iframeM[1], label: "StarDima مباشر" });
      }
    } else {
      // TV: find the episode
      let episodes = parseEpisodes(seriesHtml);

      // If no episodes on series page, check first season
      if (!episodes.length) {
        const sRe    = /href="https:\/\/watch\.stardima\.com\/watch\/seasons\/([^"]+)"/;
        const sMatch = seriesHtml.match(sRe);
        if (sMatch) {
          const seasonHtml = await sdGet(`${SD_BASE}/seasons/${encodeURI(decodeURIComponent(sMatch[1]).replace(/\/$/, ""))}/`);
          episodes = parseEpisodes(seasonHtml);
        }
      }

      send("status", { msg: `وُجدت ${episodes.length} حلقة` });

      // Find episode by number
      const target = episodes.find(e => e.num === ep) || episodes.find(e => e.title.includes(String(ep)));
      if (!target && episodes.length > 0) {
        // Fallback: use index
        const byIndex = episodes[ep - 1] || episodes[0];
        epSlug = byIndex?.slug || null;
      } else {
        epSlug = target?.slug || null;
      }
    }

    if (!epSlug && type !== "movie") {
      send("status", { msg: "لم يُعثر على الحلقة المطلوبة" });
      send("done", {}); clearInterval(keepAlive); res.end(); return;
    }

    if (epSlug) {
      send("status", { msg: "جاري استخراج سيرفرات التشغيل…" });
      const epHtml = await sdGet(`${SD_BASE}/episodes/${encodeURI(epSlug)}/`);
      const postId = parsePostId(epHtml);
      const nonce  = parseNonce(epHtml);

      // Direct iframes
      const ifRe = /<iframe[^>]+src="([^"]+)"/g;
      let m: RegExpExecArray | null;
      let ifCount = 0;
      while ((m = ifRe.exec(epHtml)) !== null) {
        const u = m[1];
        if (!u.includes("stardima") && !u.includes("google") && !u.includes("histats")) {
          send("source", { url: u, label: `إطار ${++ifCount}` });
        }
      }

      // AJAX servers
      if (postId) {
        const ajaxUrl = `${SD_BASE}/wp-admin/admin-ajax.php`;
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
              const r = await fetch(ajaxUrl, {
                method : "POST",
                headers: {
                  "Content-Type"    : "application/x-www-form-urlencoded",
                  "User-Agent"      : "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36",
                  "Referer"         : `${SD_BASE}/episodes/${epSlug}/`,
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
              if (url) send("source", { url, label: `سيرفر ${num}` });
            } catch { /* skip */ }
          })
        );
      }
    }

    send("done", {}); clearInterval(keepAlive); res.end();
  } catch (e) {
    send("error", { msg: String(e) });
    send("done",  {}); clearInterval(keepAlive); res.end();
  }
});

export default router;
