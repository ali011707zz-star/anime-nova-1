import { Router } from "express";

const router = Router();

const BROWSER_UA =
  "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36";

const ALLANIME_BASE = "https://api.allanime.day/api";
const ALLANIME_HEADERS = {
  "Content-Type": "application/json",
  Referer: "https://allanime.to",
  Origin: "https://allanime.to",
  "User-Agent": BROWSER_UA,
};

// ─── In-memory caches ───────────────────────────────────────────
const searchCache = new Map<string, { result: any; ts: number }>();
const SEARCH_TTL = 3_600_000;
const translateCache = new Map<string, string>();

// ─── Known dead file-sharing hosts (files expire / get deleted) ──
// These hosts often return 200 HTTP even when file is unavailable
const DEAD_FILE_HOSTS = [
  "4shared.com",
  "solidfiles.com",
  "d000d.com",
  "uqload.co",
  "uqload.com",
  "vadbam.net",
  "okfiles.com",
  "gofile.io",
  "uploadfiles.io",
  "hexupload.net",
  "filerio.in",
  "doodstream.com",
  "dood.watch",
  "megaup.net",
  "1fichier.com",
  "bayfiles.com",
  "uploadhaven.com",
  "tusfiles.com",
  "letsupload.co",
];

// Patterns in page HTML that indicate an expired/unavailable file
const DEAD_PAGE_PATTERNS = [
  "not available any more",
  "file has been deleted",
  "file not found",
  "no longer available",
  "has been removed",
  "deleted by user",
  "this file has expired",
  "file removed",
  "invalid link",
  "link expired",
  "this link has been disabled",
];

// ─── AllAnime helpers ───────────────────────────────────────────
async function aaGql(query: string, variables: Record<string, unknown>) {
  const r = await fetch(ALLANIME_BASE, {
    method: "POST",
    headers: ALLANIME_HEADERS,
    body: JSON.stringify({ query, variables }),
    signal: AbortSignal.timeout(15000),
  });
  if (!r.ok) throw new Error(`AllAnime API error: ${r.status}`);
  return r.json();
}

const SEARCH_Q = `
query ($search: SearchInput, $limit: Int, $page: Int, $translationType: VaildTranslationTypeEnumType, $countryOrigin: VaildCountryOriginEnumType) {
  shows(search: $search, limit: $limit, page: $page, translationType: $translationType, countryOrigin: $countryOrigin) {
    edges { _id name englishName thumbnail episodeCount score }
  }
}`;

function normalize(s: string) {
  return s.toLowerCase().replace(/[^a-z0-9 ]/g, "").trim();
}
function similarity(a: string, b: string) {
  a = normalize(a); b = normalize(b);
  if (a === b) return 1;
  if (a.includes(b) || b.includes(a)) return 0.85;
  const aw = new Set(a.split(" "));
  const bw = b.split(" ");
  return bw.filter((w) => aw.has(w)).length / Math.max(aw.size, bw.length);
}

async function searchAllAnime(query: string) {
  const key = `aa:${query.toLowerCase()}`;
  const cached = searchCache.get(key);
  if (cached && Date.now() - cached.ts < SEARCH_TTL) return cached.result;
  const d = await aaGql(SEARCH_Q, {
    search: { query, sortBy: "Top" },
    limit: 15, page: 1,
    translationType: "sub", countryOrigin: "JP",
  });
  const results = (d as any)?.data?.shows?.edges || [];
  searchCache.set(key, { result: results, ts: Date.now() });
  return results;
}

async function resolveTitle(titles: string[]) {
  for (const title of titles.filter(Boolean)) {
    try {
      const results = await searchAllAnime(title);
      if (!results.length) continue;
      let best = results[0], bestScore = 0;
      for (const r of results) {
        const s = Math.max(
          similarity(r.name || "", title),
          similarity(r.englishName || "", title)
        );
        if (s > bestScore) { bestScore = s; best = r; }
      }
      if (bestScore > 0.25) return { show: best, score: bestScore };
    } catch { continue; }
  }
  return null;
}

// ─── Routes: resolve / search ────────────────────────────────────
router.get("/anime/resolve", async (req, res) => {
  const title = req.query.title as string;
  if (!title) { res.status(400).json({ error: "title required" }); return; }
  try {
    const result = await resolveTitle([title]);
    if (!result) { res.json({ id: null, episodes: [] }); return; }
    const show = result.show;
    const epCount = parseInt(show.episodeCount || "0") || 0;
    const episodes = Array.from({ length: epCount }, (_, i) => ({
      id: `${show._id}-ep-${i + 1}`, number: i + 1, aaShowId: show._id,
    }));
    res.json({ id: show._id, title: show.name, episodes, score: result.score });
  } catch (e: any) {
    req.log.error({ err: e }, "resolve failed");
    res.status(500).json({ error: e.message });
  }
});

router.post("/anime/resolve", async (req, res) => {
  const titles: string[] = (req.body?.titles || []).filter(Boolean);
  if (!titles.length) { res.status(400).json({ error: "titles required" }); return; }
  try {
    const result = await resolveTitle(titles);
    if (!result) { res.json({ id: null, episodes: [] }); return; }
    const show = result.show;
    const epCount = parseInt(show.episodeCount || "0") || 0;
    const episodes = Array.from({ length: epCount }, (_, i) => ({
      id: `${show._id}-ep-${i + 1}`, number: i + 1, aaShowId: show._id,
    }));
    res.json({ id: show._id, title: show.name, episodes, score: result.score });
  } catch (e: any) {
    req.log.error({ err: e }, "resolve post failed");
    res.status(500).json({ error: e.message });
  }
});

router.get("/anime/search", async (req, res) => {
  const q = req.query.q as string;
  if (!q) { res.status(400).json({ error: "q required" }); return; }
  try {
    const results = await searchAllAnime(q);
    res.json({ results });
  } catch (e: any) {
    req.log.error({ err: e }, "search failed");
    res.status(500).json({ error: e.message });
  }
});

router.get("/anime/servers", async (req, res) => {
  const epId = req.query.epId as string;
  if (!epId) { res.status(400).json({ error: "epId required" }); return; }
  const match = epId.match(/^(.+)-ep-(\d+)$/);
  if (!match) { res.json({ servers: [], showId: null, epNum: null }); return; }
  const showId = match[1], epNum = parseInt(match[2]);
  const sources = ["Default", "Luf-mp4", "Vid-mp4", "S-mp4", "Yt-mp4"].map((s) => ({
    name: s, url:
      `https://embed.ssbcontent.site/?p=web&sourceName=${encodeURIComponent(s)}&showId=${encodeURIComponent(showId)}&episodeString=${epNum}&isMobile=false&translationType=sub`,
    isEmbed: true, showId, epNum,
  }));
  res.json({ servers: sources, showId, epNum });
});


// ══════════════════════════════════════════════════════════════════
//  SHARED UTILS
// ══════════════════════════════════════════════════════════════════

/** Quality rank: FHD=3, HD=2, SD=1, unknown=0 */
function qualityRank(quality: string): number {
  const q = quality.toUpperCase();
  if (q.includes("FHD") || q.includes("1080") || q.includes("FULLHD")) return 3;
  if (q.includes("HD") || q.includes("720")) return 2;
  if (q.includes("SD") || q.includes("480") || q.includes("360")) return 1;
  return 0;
}

/** Normalize quality label */
function qualityLabel(name: string, explicitQuality?: string): string {
  if (explicitQuality) return explicitQuality.toUpperCase();
  const m = name.match(/\|\s*(FHD|HD|SD|1080p?|720p?|480p?)/i);
  return m ? m[1].toUpperCase().replace(/P$/, "") : "HD";
}

/** slug-ify a title */
function toSlug(s: string): string {
  return s.toLowerCase().replace(/[^\w\s-]/g, " ").trim()
    .replace(/\s+/g, "-").replace(/-+/g, "-").replace(/^-|-$/g, "");
}

/** Build GogoAnime-style slug candidates */
function buildCandidates(romaji: string, english?: string | null): string[] {
  const seen = new Set<string>();
  const add = (s: string) => {
    const v = s.trim().replace(/-+$/, "");
    if (v.length > 1) seen.add(v);
  };
  for (const raw of [romaji, english].filter(Boolean) as string[]) {
    const base = toSlug(raw);
    add(base);
    add(base + "-tv");
    const stripped = base
      .replace(/[-\s]*(2nd|3rd|4th|5th|6th|season[-\s]*\d+|\d+st|\d+nd|\d+rd|\d+th)[-\s]*$/i, "")
      .replace(/-+$/, "");
    if (stripped !== base) { add(stripped); add(stripped + "-tv"); }
    add(base + "-2nd-season");
    add(base + "-3rd-season");
    if (stripped !== base) {
      add(stripped + "-2nd-season");
      add(stripped + "-3rd-season");
    }
  }
  return [...seen];
}

/**
 * Smart probe: follows redirects, checks final URL.
 * If the final URL is a known dead file-sharing host, does a deep content check.
 * Returns false if the resource is confirmed unavailable.
 */
async function probeUrl(url: string): Promise<{ alive: boolean; finalUrl: string }> {
  try {
    const r = await fetch(url, {
      method: "HEAD",
      headers: { "User-Agent": BROWSER_UA, "Referer": url },
      signal: AbortSignal.timeout(5000),
      redirect: "follow",
    });

    if (r.status === 404 || r.status === 410 || r.status === 400 || r.status === 403) {
      return { alive: false, finalUrl: r.url };
    }

    const finalUrl = r.url;

    // Check if the redirect landed on a known dead file-sharing host
    const isDeadHost = DEAD_FILE_HOSTS.some(h => finalUrl.includes(h));

    if (isDeadHost) {
      // Deep check: GET the page content and look for error messages
      try {
        const page = await fetch(finalUrl, {
          method: "GET",
          headers: { "User-Agent": BROWSER_UA, "Accept": "text/html" },
          signal: AbortSignal.timeout(5000),
        });
        const body = await page.text();
        const bodyLower = body.toLowerCase();
        const isDead = DEAD_PAGE_PATTERNS.some(p => bodyLower.includes(p));
        return { alive: !isDead, finalUrl };
      } catch {
        // Can't GET the page — mark as dead since it's a known bad host
        return { alive: false, finalUrl };
      }
    }

    return { alive: true, finalUrl };
  } catch {
    // Network/timeout error — could be CORS or server issue
    // Keep it as potentially alive (browser might handle it differently)
    return { alive: true, finalUrl: url };
  }
}

/** Filter dead URLs in parallel — full probe with smart detection */
async function filterDeadSources<T extends { url: string }>(
  sources: T[],
  maxProbe = 30
): Promise<Array<T & { finalUrl?: string }>> {
  if (sources.length === 0) return [];
  const toProbe = sources.slice(0, maxProbe);
  const rest    = sources.slice(maxProbe);
  const results = await Promise.all(
    toProbe.map(async (s) => {
      const { alive, finalUrl } = await probeUrl(s.url);
      return { s: { ...s, finalUrl }, alive };
    })
  );
  const alive = results.filter((r) => r.alive).map((r) => r.s);
  return [...alive, ...rest];
}


// ══════════════════════════════════════════════════════════════════
//  AnimeLek Scraper  (animelek.top — Arabic)
// ══════════════════════════════════════════════════════════════════
const ALEK_BASE = "https://animelek.top";
const ALEK_HDRS: Record<string, string> = {
  "User-Agent": BROWSER_UA,
  Accept: "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8",
  "Accept-Language": "ar,en;q=0.9",
  Referer: "https://animelek.top/",
};

const alekSlugCache = new Map<string, { slug: string; ts: number }>();
const alekSrcCache = new Map<string, { sources: any[]; ts: number }>();
const ALEK_TTL = 6 * 3_600_000;

function alekFetch(url: string) {
  return fetch(url, { headers: ALEK_HDRS, signal: AbortSignal.timeout(15000) });
}

async function checkAlekSlug(slug: string): Promise<boolean> {
  try {
    const r = await fetch(`${ALEK_BASE}/anime/${slug}/`, {
      method: "HEAD", headers: ALEK_HDRS,
      signal: AbortSignal.timeout(8000), redirect: "follow",
    });
    return r.status === 200;
  } catch { return false; }
}

async function resolveAlekSlug(
  romaji: string, english?: string | null, passedSlug?: string | null
): Promise<string | null> {
  const cacheKey = (passedSlug || romaji).toLowerCase().trim();
  const cached = alekSlugCache.get(cacheKey);
  if (cached && Date.now() - cached.ts < ALEK_TTL) return cached.slug;

  if (passedSlug && await checkAlekSlug(passedSlug)) {
    alekSlugCache.set(cacheKey, { slug: passedSlug, ts: Date.now() });
    return passedSlug;
  }

  const candidates = buildCandidates(romaji, english);
  for (const slug of candidates) {
    if (await checkAlekSlug(slug)) {
      alekSlugCache.set(cacheKey, { slug, ts: Date.now() });
      return slug;
    }
  }
  return null;
}

async function getAlekSources(slug: string, epNum: number): Promise<Array<{
  name: string; url: string; quality: string; qualityRank: number; site: string;
}>> {
  const ck = `alek:${slug}-${epNum}`;
  const cached = alekSrcCache.get(ck);
  if (cached && Date.now() - cached.ts < ALEK_TTL) return cached.sources;

  const epPath = `${slug}-${epNum}-\u0627\u0644\u062d\u0644\u0642\u0629`;
  const epUrl = `${ALEK_BASE}/episode/${encodeURIComponent(epPath)}/`;
  const r = await alekFetch(epUrl);
  if (!r.ok) return [];

  const html = await r.text();
  const embedRe = /data-embed="https:\/\/animelek\.top\/card\.php\?random=([^"]+)"/g;
  const serverRe = /<span class="server">([^<]+)<\/span>/g;

  const embeds = [...html.matchAll(embedRe)].map((m) => m[1].replace(/&amp;/g, "&"));
  const names = [...html.matchAll(serverRe)].map((m) => m[1].trim());

  const seen = new Set<string>();
  const sources: Array<{
    name: string; url: string; quality: string; qualityRank: number; site: string;
  }> = [];

  for (let i = 0; i < embeds.length; i++) {
    const url = embeds[i];
    if (seen.has(url)) continue;
    seen.add(url);
    const rawName = names[i] || `سيرفر ${sources.length + 1}`;
    const quality = qualityLabel(rawName);
    sources.push({
      name: rawName.replace(/\s*\|\s*(FHD|HD|SD|1080p?|720p?|480p?)/gi, "").trim(),
      url,
      quality,
      qualityRank: qualityRank(quality),
      site: "animelek",
    });
  }

  if (sources.length) alekSrcCache.set(ck, { sources, ts: Date.now() });
  return sources;
}


// ══════════════════════════════════════════════════════════════════
//  MitAnime Scraper  (mitanime.com — Arabic, Next.js)
// ══════════════════════════════════════════════════════════════════
const MIT_BASE = "https://mitanime.com";
const MIT_HDRS: Record<string, string> = {
  "User-Agent": BROWSER_UA,
  Accept: "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8",
  "Accept-Language": "ar,en;q=0.9",
  Referer: "https://mitanime.com/",
};

const mitSlugCache = new Map<string, { slug: string | null; ts: number }>();
const mitSrcCache = new Map<string, { sources: any[]; ts: number }>();
const MIT_TTL = 6 * 3_600_000;

function mitFetch(url: string) {
  return fetch(url, { headers: MIT_HDRS, signal: AbortSignal.timeout(15000) });
}

function buildMitCandidates(romaji: string, english?: string | null): string[] {
  const seen = new Set<string>();
  const add = (s: string) => {
    const v = s.trim().replace(/-+$/, "");
    if (v.length > 1) seen.add(v);
  };
  for (const raw of [english, romaji].filter(Boolean) as string[]) {
    const base = toSlug(raw);
    add(base);
    const stripped = base
      .replace(/[-\s]*(2nd|3rd|4th|5th|season[-\s]*\d+|\d+st|\d+nd|\d+rd|\d+th)[-\s]*$/i, "")
      .replace(/-+$/, "");
    if (stripped !== base) add(stripped);
    add(base + "-2");
    if (stripped !== base) add(stripped + "-2");
  }
  return [...seen];
}

async function checkMitSlug(slug: string): Promise<boolean> {
  try {
    const r = await fetch(`${MIT_BASE}/watch/${slug}/1/`, {
      method: "HEAD", headers: MIT_HDRS,
      signal: AbortSignal.timeout(8000), redirect: "follow",
    });
    return r.status === 200;
  } catch { return false; }
}

async function resolveMitSlug(
  romaji: string, english?: string | null
): Promise<string | null> {
  const cacheKey = romaji.toLowerCase().trim();
  const cached = mitSlugCache.get(cacheKey);
  if (cached && Date.now() - cached.ts < MIT_TTL) return cached.slug;

  const candidates = buildMitCandidates(romaji, english);
  for (const slug of candidates) {
    if (await checkMitSlug(slug)) {
      mitSlugCache.set(cacheKey, { slug, ts: Date.now() });
      return slug;
    }
  }
  mitSlugCache.set(cacheKey, { slug: null, ts: Date.now() });
  return null;
}

async function getMitSources(slug: string, epNum: number): Promise<Array<{
  name: string; url: string; quality: string; qualityRank: number; site: string;
}>> {
  const ck = `mit:${slug}-${epNum}`;
  const cached = mitSrcCache.get(ck);
  if (cached && Date.now() - cached.ts < MIT_TTL) return cached.sources;

  const epUrl = `${MIT_BASE}/watch/${slug}/${epNum}/`;
  const r = await mitFetch(epUrl);
  if (!r.ok) return [];

  const html = await r.text();

  const serversRe = /servers\\":\[([^\]]+)\]/g;
  const seen = new Set<string>();
  const sources: Array<{
    name: string; url: string; quality: string; qualityRank: number; site: string;
  }> = [];

  for (const m of html.matchAll(serversRe)) {
    try {
      const raw = '[' + m[1].replace(/\\"/g, '"').replace(/\\\//g, '/') + ']';
      const arr: Array<{ name: string; quality: string; url: string; isLocked: boolean }> =
        JSON.parse(raw);
      for (const s of arr) {
        if (s.isLocked || !s.url || seen.has(s.url)) continue;
        seen.add(s.url);
        const q = s.quality?.toUpperCase() || "HD";
        sources.push({
          name: s.name || "سيرفر",
          url: s.url,
          quality: q,
          qualityRank: qualityRank(q),
          site: "mitanime",
        });
      }
    } catch { /* skip malformed */ }
  }

  if (sources.length) mitSrcCache.set(ck, { sources, ts: Date.now() });
  return sources;
}


// ══════════════════════════════════════════════════════════════════
//  WitAnime Scraper  (witanime.one — Arabic)
// ══════════════════════════════════════════════════════════════════
const WIT_BASES = ["https://witanime.one", "https://witanime.rest", "https://witanime.pics"];
const WIT_HDRS: Record<string, string> = {
  "User-Agent": BROWSER_UA,
  Accept: "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8",
  "Accept-Language": "ar,en;q=0.9",
  Referer: "https://witanime.one/",
};

const witSlugCache = new Map<string, { slug: string | null; base: string; ts: number }>();
const witSrcCache = new Map<string, { sources: any[]; ts: number }>();
const WIT_TTL = 6 * 3_600_000;

async function checkWitSlug(base: string, slug: string): Promise<boolean> {
  try {
    const r = await fetch(`${base}/anime/${slug}/`, {
      method: "HEAD", headers: WIT_HDRS,
      signal: AbortSignal.timeout(8000), redirect: "follow",
    });
    return r.status === 200;
  } catch { return false; }
}

async function resolveWitSlug(
  romaji: string, english?: string | null
): Promise<{ slug: string; base: string } | null> {
  const cacheKey = romaji.toLowerCase().trim();
  const cached = witSlugCache.get(cacheKey);
  if (cached && Date.now() - cached.ts < WIT_TTL) {
    return cached.slug ? { slug: cached.slug, base: cached.base } : null;
  }

  const candidates = buildCandidates(romaji, english);
  for (const base of WIT_BASES) {
    for (const slug of candidates) {
      if (await checkWitSlug(base, slug)) {
        witSlugCache.set(cacheKey, { slug, base, ts: Date.now() });
        return { slug, base };
      }
    }
  }
  witSlugCache.set(cacheKey, { slug: null, base: "", ts: Date.now() });
  return null;
}

async function getWitSources(slug: string, base: string, epNum: number): Promise<Array<{
  name: string; url: string; quality: string; qualityRank: number; site: string;
}>> {
  const ck = `wit:${slug}-${epNum}`;
  const cached = witSrcCache.get(ck);
  if (cached && Date.now() - cached.ts < WIT_TTL) return cached.sources;

  // witanime episode URL patterns
  const epUrl = `${base}/episode/${slug}-${epNum}/`;
  let html = "";
  try {
    const r = await fetch(epUrl, { headers: WIT_HDRS, signal: AbortSignal.timeout(15000) });
    if (!r.ok) return [];
    html = await r.text();
  } catch { return []; }

  const seen = new Set<string>();
  const sources: Array<{
    name: string; url: string; quality: string; qualityRank: number; site: string;
  }> = [];

  // Extract iframes with src or data-src
  const iframeRe = /(?:data-src|src)="(https?:\/\/[^"]+)"/g;
  for (const m of html.matchAll(iframeRe)) {
    const url = m[1];
    if (seen.has(url)) continue;
    // Skip same-site and common non-video URLs
    if (url.includes("witanime") || url.includes("googleapis") ||
        url.includes("facebook") || url.includes("twitter") ||
        url.includes("google") || url.includes("ads")) continue;
    seen.add(url);
    // Try to detect quality from URL
    const qMatch = url.match(/\b(1080|fhd|720|hd|480|360|sd)\b/i);
    const q = qMatch ? qMatch[1].toUpperCase().replace("720", "HD").replace("1080", "FHD").replace("480", "SD").replace("360", "SD") : "HD";
    const hostMatch = url.match(/https?:\/\/([^/]+)/);
    const name = hostMatch ? hostMatch[1].replace(/^www\./, "").split(".")[0] : `سيرفر ${sources.length + 1}`;
    sources.push({
      name,
      url,
      quality: q,
      qualityRank: qualityRank(q),
      site: "witanime",
    });
  }

  // Also look for JSON embedded sources
  const jsonSrcRe = /"url"\s*:\s*"(https?:\/\/[^"]+)"/g;
  for (const m of html.matchAll(jsonSrcRe)) {
    const url = m[1].replace(/\\/g, "");
    if (seen.has(url) || url.includes("witanime")) continue;
    seen.add(url);
    const hostMatch = url.match(/https?:\/\/([^/]+)/);
    const name = hostMatch ? hostMatch[1].replace(/^www\./, "").split(".")[0] : `سيرفر ${sources.length + 1}`;
    sources.push({
      name,
      url,
      quality: "HD",
      qualityRank: 2,
      site: "witanime",
    });
  }

  if (sources.length) witSrcCache.set(ck, { sources, ts: Date.now() });
  return sources;
}


// ══════════════════════════════════════════════════════════════════
//  Probe endpoint  GET /api/anime/probe?url=URL
// ══════════════════════════════════════════════════════════════════
router.get("/anime/probe", async (req, res) => {
  const url = (req.query.url as string | undefined)?.trim();
  if (!url || (!url.startsWith("http://") && !url.startsWith("https://"))) {
    res.status(400).json({ error: "valid url required" }); return;
  }
  try {
    const { alive, finalUrl } = await probeUrl(url);
    res.json({ alive, finalUrl });
  } catch (e: any) {
    res.json({ alive: false, finalUrl: url });
  }
});

// ══════════════════════════════════════════════════════════════════
//  Resolve Link endpoint  GET /api/anime/resolve-link?url=URL
// ══════════════════════════════════════════════════════════════════
router.get("/anime/resolve-link", async (req, res) => {
  const url = (req.query.url as string | undefined)?.trim();
  if (!url || !url.startsWith("http")) {
    res.status(400).json({ error: "url required" }); return;
  }
  try {
    const r = await fetch(url, {
      method: "HEAD",
      headers: { "User-Agent": BROWSER_UA, "Referer": url },
      signal: AbortSignal.timeout(8000),
      redirect: "follow",
    });
    res.json({ finalUrl: r.url, status: r.status });
  } catch (e: any) {
    res.json({ finalUrl: url, error: e.message });
  }
});

// ══════════════════════════════════════════════════════════════════
//  Extract Direct Video URL  GET /api/anime/extract-video?url=URL
//  Fetches embed page, extracts real mp4/m3u8 URL (no ads player)
// ══════════════════════════════════════════════════════════════════
function parseVideoUrl(html: string): { url: string; type: "hls" | "mp4" } | null {
  // Produce alternative versions with JSON escapes resolved
  const alts = [
    html,
    html.replace(/\\\/\//g, "//").replace(/\\\//g, "/").replace(/\\"/g, '"'),
    html.replace(/\\u003[Cc]/g, "<").replace(/\\u003[Ee]/g, ">"),
  ];

  for (const text of alts) {
    // ── HLS / m3u8 (preferred — usually from proper CDNs, ad-free) ──
    const m3u8Pats = [
      /"(?:file|src|url|source|hls)"\s*:\s*"(https?:\/\/[^"\\]+\.m3u8[^"\\]*)"/i,
      /'(?:file|src|url|source)'\s*:\s*'(https?:\/\/[^'\\]+\.m3u8[^'\\]*)'/i,
      /<source[^>]+src=["'](https?:\/\/[^"']+\.m3u8[^"']*)["']/i,
      /['"](https?:\/\/[^\s"'<>\\]+\.m3u8(?:\?[^\s"'<>\\]*)?)["']/i,
      /https?:\/\/[^\s"'<>\\,\)]+\.m3u8(?:\?[^\s"'<>\\,\)]*)?/i,
    ];
    for (const p of m3u8Pats) {
      const m = text.match(p);
      if (m) {
        const url = (m[1] || m[0]).replace(/[\\,;\)\s]+$/, "").replace(/\\n.*/s, "");
        if (url.startsWith("http") && url.length > 20) return { url, type: "hls" };
      }
    }

    // ── MP4 ──
    const mp4Pats = [
      /"(?:file|src|url|source)"\s*:\s*"(https?:\/\/[^"\\]+\.mp4[^"\\]*)"/i,
      /'(?:file|src|url|source)'\s*:\s*'(https?:\/\/[^'\\]+\.mp4[^'\\]*)'/i,
      /<source[^>]+src=["'](https?:\/\/[^"']+\.mp4[^"']*)["']/i,
      /['"](https?:\/\/[^\s"'<>\\]+\.mp4(?:\?[^\s"'<>\\]*)?)["']/i,
    ];
    for (const p of mp4Pats) {
      const m = text.match(p);
      if (m) {
        const url = (m[1] || m[0]).replace(/[\\,;\)\s]+$/, "");
        // Reject ads / tracking pixels
        if (url.startsWith("http") && url.length > 20 &&
            !url.match(/\/(ads?|banner|track|pixel|promo|thumb|poster)\//i)) {
          return { url, type: "mp4" };
        }
      }
    }
  }
  return null;
}

router.get("/anime/extract-video", async (req, res) => {
  const url = (req.query.url as string | undefined)?.trim();
  if (!url || !url.startsWith("http")) {
    res.status(400).json({ error: "url required" }); return;
  }
  try {
    let origin = "";
    try { origin = new URL(url).origin; } catch {}

    const r = await fetch(url, {
      method: "GET",
      headers: {
        "User-Agent": BROWSER_UA,
        "Referer": origin || url,
        "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
        "Accept-Language": "ar,en;q=0.9",
        "Accept-Encoding": "gzip, deflate",
      },
      signal: AbortSignal.timeout(12000),
      redirect: "follow",
    });

    if (!r.ok) { res.json({ videoUrl: null, videoType: null }); return; }

    const html = await r.text();
    const result = parseVideoUrl(html);
    res.json({ videoUrl: result?.url ?? null, videoType: result?.type ?? null, finalUrl: r.url });
  } catch (e: any) {
    res.json({ videoUrl: null, videoType: null, error: e.message });
  }
});


// ══════════════════════════════════════════════════════════════════
//  UNIFIED  /api/anime/all-sources
// ══════════════════════════════════════════════════════════════════

interface UnifiedSource {
  name: string;
  url: string;
  quality: string;
  qualityRank: number;
  site: string;
  finalUrl?: string;
}

router.get("/anime/all-sources", async (req, res) => {
  const title    = (req.query.title   as string | undefined)?.trim() || "";
  const english  = (req.query.english as string | undefined)?.trim() || null;
  const ep       = parseInt((req.query.ep as string) || "1");
  const alekSlug = (req.query.alekSlug as string | undefined)?.trim() || null;
  const mitSlug  = (req.query.mitSlug  as string | undefined)?.trim() || null;

  if (!title && !alekSlug) {
    res.status(400).json({ error: "title or alekSlug required" });
    return;
  }
  if (!ep || ep < 1) {
    res.status(400).json({ error: "valid ep number required" });
    return;
  }

  try {
    // 1. Fetch from all 3 sites in parallel
    const [alekResult, mitResult, witResult] = await Promise.allSettled([
      (async () => {
        const slug = await resolveAlekSlug(title, english, alekSlug);
        if (!slug) return { slug: null, sources: [] as UnifiedSource[] };
        const srcs = await getAlekSources(slug, ep);
        return { slug, sources: srcs as UnifiedSource[] };
      })(),
      (async () => {
        const slug = mitSlug || (title ? await resolveMitSlug(title, english) : null);
        if (!slug) return { slug: null, sources: [] as UnifiedSource[] };
        const srcs = await getMitSources(slug, ep);
        return { slug, sources: srcs as UnifiedSource[] };
      })(),
      (async () => {
        if (!title) return { sources: [] as UnifiedSource[] };
        const resolved = await resolveWitSlug(title, english);
        if (!resolved) return { sources: [] as UnifiedSource[] };
        const srcs = await getWitSources(resolved.slug, resolved.base, ep);
        return { sources: srcs as UnifiedSource[] };
      })(),
    ]);

    const alekData = alekResult.status === "fulfilled" ? alekResult.value : { slug: null, sources: [] };
    const mitData  = mitResult.status  === "fulfilled" ? mitResult.value  : { slug: null, sources: [] };
    const witData  = witResult.status  === "fulfilled" ? witResult.value  : { sources: [] };

    // 2. Merge & deduplicate
    const seenUrls = new Set<string>();
    const merged: UnifiedSource[] = [];
    for (const s of [...alekData.sources, ...mitData.sources, ...witData.sources]) {
      if (!s.url || seenUrls.has(s.url)) continue;
      seenUrls.add(s.url);
      merged.push(s);
    }

    // 3. Pre-filter by known dead host names (fast — no HTTP requests)
    const alive = merged.filter(s => {
      const url = s.url.toLowerCase();
      return !DEAD_FILE_HOSTS.some(h => url.includes(h));
    });

    // 4. Sort: qualityRank DESC, prefer non-file-sharing hosts
    alive.sort((a, b) => {
      if (b.qualityRank !== a.qualityRank) return b.qualityRank - a.qualityRank;
      // Prefer witanime/mitanime sources (usually more reliable CDN)
      const priority = (s: UnifiedSource) =>
        s.site === "witanime" ? 3 : s.site === "mitanime" ? 2 : 1;
      return priority(b) - priority(a);
    });

    res.json({
      sources: alive,
      alekSlug: (alekData as any).slug,
      mitSlug: (mitData as any).slug,
      total: alive.length,
    });
  } catch (e: any) {
    req.log.error({ err: e }, "all-sources failed");
    res.status(500).json({ error: e.message });
  }
});


// ══════════════════════════════════════════════════════════════════
//  TRANSLATE  /api/anime/translate
// ══════════════════════════════════════════════════════════════════
router.get("/anime/translate", async (req, res) => {
  const text = ((req.query.text as string) || "").trim();
  const from = ((req.query.from as string) || "en").trim();
  const to   = ((req.query.to   as string) || "ar").trim();

  if (!text) { res.json({ translated: "" }); return; }

  const cacheKey = `${from}:${to}:${text.substring(0, 80)}`;
  if (translateCache.has(cacheKey)) {
    res.json({ translated: translateCache.get(cacheKey) });
    return;
  }

  try {
    const chunk = text.substring(0, 490);
    const url = `https://api.mymemory.translated.net/get?q=${encodeURIComponent(chunk)}&langpair=${from}|${to}`;
    const r = await fetch(url, { signal: AbortSignal.timeout(8000) });
    const d = await r.json();
    const translated: string = d.responseData?.translatedText || text;
    translateCache.set(cacheKey, translated);
    res.json({ translated });
  } catch {
    res.json({ translated: text });
  }
});

// ══════════════════════════════════════════════════════════════════
//  Legacy AnimeLek endpoints
// ══════════════════════════════════════════════════════════════════
router.get("/anime/animelek/sources", async (req, res) => {
  const title      = (req.query.title   as string | undefined)?.trim() || "";
  const english    = (req.query.english as string | undefined)?.trim() || null;
  const ep         = parseInt((req.query.ep as string) || "1");
  const passedSlug = (req.query.slug    as string | undefined)?.trim() || null;

  if (!title && !passedSlug) { res.status(400).json({ error: "title or slug required" }); return; }
  if (!ep || ep < 1) { res.status(400).json({ error: "valid ep number required" }); return; }

  try {
    const slug = await resolveAlekSlug(title, english, passedSlug);
    if (!slug) { res.json({ sources: [], slug: null }); return; }
    const sources = await getAlekSources(slug, ep);
    res.json({ sources, slug });
  } catch (e: any) {
    req.log.error({ err: e }, "animelek sources failed");
    res.status(500).json({ error: e.message });
  }
});

router.get("/anime/animelek/search", async (req, res) => {
  const title   = (req.query.title   as string | undefined)?.trim() || "";
  const english = (req.query.english as string | undefined)?.trim() || null;
  if (!title) { res.status(400).json({ error: "title required" }); return; }
  try {
    const slug = await resolveAlekSlug(title, english);
    res.json({ slug });
  } catch (e: any) {
    req.log.error({ err: e }, "animelek search failed");
    res.status(500).json({ error: e.message });
  }
});

export default router;
