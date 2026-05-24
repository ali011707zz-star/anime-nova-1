import { Router } from "express";

const router = Router();

const BROWSER_UA =
  "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36";

const BASE_HDRS: Record<string, string> = {
  "User-Agent": BROWSER_UA,
  Accept: "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8",
  "Accept-Language": "ar,en-US;q=0.9,en;q=0.8",
  Connection: "keep-alive",
};

// ── In-memory caches ──
const searchCache    = new Map<string, { result: any; ts: number }>();
const translateCache = new Map<string, string>();
const SEARCH_TTL     = 3_600_000;
const SRC_TTL        = 6 * 3_600_000;

// ── Known-dead / unplayable file hosts ──
const DEAD_FILE_HOSTS = [
  "4shared.com","solidfiles.com","d000d.com",
  "vadbam.net","vadbam.com","okfiles.com","gofile.io","uploadfiles.io","hexupload.net",
  "filerio.in","doodstream.com","dood.watch","megaup.net","1fichier.com",
  "bayfiles.com","uploadhaven.com","tusfiles.com","letsupload.co","workupload.com",
  "hexload.com","mp4upload.com",
  "mega.nz","mega.co.nz","mediafire.com",
  "drive.google","docs.google","googleapis.com/drive",
  "ok.ru","odnoklassniki.ru","youtube.com","youtu.be",
  "cloudflareinsights.com","beacon.min.js",
  "jquery.min.js","bootstrap.min.js",
  ".css",".png",".jpg",".jpeg",".gif",".svg",".ico",
  "favicon","robots.txt","sitemap",
];

// ── Embed-only hosts (skip server-side extraction) ──
const EMBED_ONLY_HOSTS = [
  "vidbm.com","vidbm.me","uptostream.com",
  "playerwish.com","wishfast.top",
  "streamvid.net","streamlare.com",
];

const CLOUDFLARE_PATTERNS = ["just a moment", "cf_chl_"];

function isCloudflareBlock(html: string): boolean {
  const lower = html.toLowerCase();
  return CLOUDFLARE_PATTERNS.some(p => lower.includes(p));
}

// ════════════════════════════════════════════════════════════════════
//  UTILITIES
// ════════════════════════════════════════════════════════════════════

function normalize(s: string) {
  return s.toLowerCase().replace(/[^a-z0-9 ]/g, "").trim();
}
function similarity(a: string, b: string) {
  a = normalize(a); b = normalize(b);
  if (a === b) return 1;
  if (a.includes(b) || b.includes(a)) return 0.85;
  const aw = new Set(a.split(" "));
  const bw = b.split(" ");
  return bw.filter(w => aw.has(w)).length / Math.max(aw.size, bw.length);
}
function toSlug(s: string): string {
  return s.toLowerCase()
    .replace(/[^\w\s-]/g, " ").trim()
    .replace(/\s+/g, "-").replace(/-+/g, "-").replace(/^-|-$/g, "");
}
function qualityRank(quality: string): number {
  const q = quality.toUpperCase();
  if (q.includes("FHD") || q.includes("1080") || q.includes("FULLHD")) return 3;
  if (q.includes("HD") || q.includes("720")) return 2;
  if (q.includes("SD") || q.includes("480") || q.includes("360")) return 1;
  return 0;
}
async function safeHead(url: string, headers: Record<string, string>): Promise<number> {
  try {
    const r = await fetch(url, { method: "HEAD", headers, signal: AbortSignal.timeout(4000), redirect: "follow" });
    return r.status;
  } catch { return 0; }
}

// ════════════════════════════════════════════════════════════════════
//  VIDEO EXTRACTION ENGINE
// ════════════════════════════════════════════════════════════════════

function unpackPacked(html: string): string | null {
  const re = /eval\(function\(p,a,c,k,e,d\)\{[^}]+\}\('([\s\S]+?)',(\d+),(\d+),'([\s\S]+?)'\.split\('\|'\)\)\)/g;
  let m: RegExpExecArray | null;
  let result = html;
  let found = false;
  while ((m = re.exec(html)) !== null) {
    try {
      const packed = m[1], base = parseInt(m[2]), count = parseInt(m[3]);
      const k = m[4].split("|");
      const toS = (n: number, b: number): string => {
        const c = "0123456789abcdefghijklmnopqrstuvwxyz";
        return n < b ? c[n] : toS(Math.floor(n / b), b) + c[n % b];
      };
      let unpacked = packed;
      for (let i = count - 1; i >= 0; i--) {
        if (k[i]) unpacked = unpacked.replace(new RegExp("\\b" + toS(i, base) + "\\b", "g"), k[i]);
      }
      result = result.replace(m[0], unpacked);
      found = true;
    } catch {}
  }
  return found ? result : null;
}

function parseVideoUrl(html: string): { url: string; type: "hls" | "mp4" } | null {
  const unpacked = unpackPacked(html);
  const alts = [
    html,
    html.replace(/\\\/\//g, "//").replace(/\\\//g, "/").replace(/\\"/g, '"'),
    html.replace(/\\u003[Cc]/g, "<").replace(/\\u003[Ee]/g, ">"),
    html.replace(/\\n/g, "\n").replace(/\\t/g, "\t"),
    ...(unpacked ? [unpacked] : []),
  ];
  for (const text of alts) {
    const m3u8Pats = [
      /"(?:file|src|url|source|hls|videoUrl|streamUrl)"\s*:\s*"(https?:\/\/[^"\\]+\.m3u8[^"\\]*)"/i,
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
    const mp4Pats = [
      /"(?:file|src|url|source|videoUrl|mp4)"\s*:\s*"(https?:\/\/[^"\\]+\.mp4[^"\\]*)"/i,
      /'(?:file|src|url|source)'\s*:\s*'(https?:\/\/[^'\\]+\.mp4[^'\\]*)'/i,
      /<source[^>]+src=["'](https?:\/\/[^"']+\.mp4[^"']*)["']/i,
      /['"](https?:\/\/[^\s"'<>\\]+\.mp4(?:\?[^\s"'<>\\]*)?)["']/i,
    ];
    for (const p of mp4Pats) {
      const m = text.match(p);
      if (m) {
        const url = (m[1] || m[0]).replace(/[\\,;\)\s]+$/, "");
        if (url.startsWith("http") && url.length > 20 &&
            !url.match(/\/(ads?|banner|track|pixel|promo|thumb|poster)\//i)) {
          return { url, type: "mp4" };
        }
      }
    }
  }
  return null;
}

function parseStreamtape(html: string): { url: string; type: "mp4" } | null {
  try {
    const tokenRe = /getElementById\(['"]\S+['"]\)\.innerHTML\s*=\s*["']([^"']+)["']\s*\+\s*["']([^"']+)["']/;
    const m = html.match(tokenRe);
    if (m) {
      const combined = (m[1] + m[2]).replace(/\s/g, "");
      if (combined.includes("streamtape")) return { url: "https:" + combined, type: "mp4" };
      return { url: "https://streamtape.com" + combined, type: "mp4" };
    }
    const altRe = /get_video\?id=[^&"']+&expires=\d+&ip=[^&"']+&token=[^&"'\s]+/;
    const alt = html.match(altRe);
    if (alt) return { url: "https://streamtape.com/" + alt[0], type: "mp4" };
  } catch {}
  return null;
}

function parseStreamwish(html: string): { url: string; type: "hls" | "mp4" } | null {
  const pats = [
    /sources\s*:\s*\[\s*\{\s*file\s*:\s*["'](https?:\/\/[^"']+)["']/i,
    /jwplayer\([^)]+\)\.setup\([^{]*\{[^}]*file\s*:\s*["'](https?:\/\/[^"']+)["']/i,
    /["']file["']\s*:\s*["'](https?:\/\/[^"']+\.m3u8[^"']*)["']/i,
  ];
  for (const p of pats) {
    const m = html.match(p);
    if (m) {
      const url = m[1];
      if (url.includes(".m3u8")) return { url, type: "hls" };
      if (url.includes(".mp4")) return { url, type: "mp4" };
    }
  }
  return null;
}

function parseMegamax(html: string): { url: string; type: "hls" | "mp4" } | null {
  const pats = [
    /["']sources["']\s*:\s*\[.*?["']file["']\s*:\s*["'](https?:\/\/[^"']+)["']/is,
    /sources\s*=\s*\[.*?file\s*:\s*["'](https?:\/\/[^"']+)["']/is,
    /["']src["']\s*:\s*["'](https?:\/\/[^"']+\.(?:mp4|m3u8)[^"']*)["']/i,
  ];
  for (const p of pats) {
    const m = html.match(p);
    if (m) {
      const url = m[1];
      return { url, type: url.includes(".m3u8") ? "hls" : "mp4" };
    }
  }
  return null;
}

function extractIframeSrc(html: string, baseUrl: string): string | null {
  const re = /<iframe[^>]+(?:src|data-src)=["']([^"']+)["'][^>]*>/gi;
  let m: RegExpExecArray | null;
  const skip = ["facebook.com","twitter.com","google.com","googleapis.com","youtube-nocookie","ads","doubleclick","analytics"];
  const origin = (() => { try { return new URL(baseUrl).hostname; } catch { return ""; } })();
  while ((m = re.exec(html)) !== null) {
    let src = m[1].trim();
    if (!src || src === "about:blank" || src.startsWith("javascript:")) continue;
    if (skip.some(s => src.includes(s))) continue;
    if (src.includes(origin)) continue;
    if (src.startsWith("//")) src = "https:" + src;
    if (src.startsWith("/")) { try { src = new URL(src, baseUrl).href; } catch { continue; } }
    if (src.startsWith("http")) return src;
  }
  return null;
}

async function extractVideoDeep(
  startUrl: string,
  referer?: string,
): Promise<{ url: string; type: "hls" | "mp4" } | null> {
  const visited = new Set<string>();
  let url = startUrl;
  let ref = referer || startUrl;
  for (let hop = 0; hop < 4; hop++) {
    if (visited.has(url)) break;
    visited.add(url);
    try {
      let origin = "";
      try { origin = new URL(url).origin; } catch {}
      const r = await fetch(url, {
        headers: { "User-Agent": BROWSER_UA, Referer: ref, Origin: origin, Accept: "text/html,*/*;q=0.9", "Accept-Language": "ar,en;q=0.9" },
        signal: AbortSignal.timeout(10000),
        redirect: "follow",
      });
      if (!r.ok) break;
      const html = await r.text();
      if (isCloudflareBlock(html)) break;
      if (url.includes("streamtape.com") || url.includes("streamtape.net")) {
        const v = parseStreamtape(html); if (v) return v;
      }
      if (url.includes("streamwish") || url.includes("wishembed") || url.includes("filemoon") ||
          url.includes("swdyu") || url.includes("awish") || url.includes("playerwish")) {
        const v = parseStreamwish(html); if (v) return v;
      }
      if (url.includes("megamax.me") || url.includes("vidbm.com") || url.includes("uptostream.com") ||
          url.includes("vidlink") || url.includes("vidhide") || url.includes("streamlare") ||
          url.includes("share4max.com")) {
        const v = parseMegamax(html); if (v) return v;
      }
      const direct = parseVideoUrl(html);
      if (direct) return direct;
      const nextSrc = extractIframeSrc(html, url);
      if (!nextSrc) break;
      ref = url;
      url = nextSrc;
    } catch { break; }
  }
  return null;
}


// ════════════════════════════════════════════════════════════════════
//  AllAnime — for metadata/search only (not as video source)
// ════════════════════════════════════════════════════════════════════
const ALLANIME_BASE = "https://api.allanime.day/api";
const ALLANIME_HDRS = {
  "Content-Type": "application/json",
  Referer: "https://allanime.to",
  Origin: "https://allanime.to",
  "User-Agent": BROWSER_UA,
};

async function aaGql(query: string, variables: Record<string, unknown>) {
  const r = await fetch(ALLANIME_BASE, {
    method: "POST", headers: ALLANIME_HDRS,
    body: JSON.stringify({ query, variables }),
    signal: AbortSignal.timeout(8000),
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

async function searchAllAnime(query: string) {
  const key = `aa:${query.toLowerCase()}`;
  const cached = searchCache.get(key);
  if (cached && Date.now() - cached.ts < SEARCH_TTL) return cached.result;
  const d = await aaGql(SEARCH_Q, {
    search: { query, sortBy: "Top" }, limit: 15, page: 1,
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
        const s = Math.max(similarity(r.name || "", title), similarity(r.englishName || "", title));
        if (s > bestScore) { bestScore = s; best = r; }
      }
      if (bestScore > 0.25) return { show: best, score: bestScore };
    } catch { continue; }
  }
  return null;
}


// ════════════════════════════════════════════════════════════════════
//  SHAHIID-ANIME.NET scraper
//  Structure:
//    Search: POST /wp-admin/admin-ajax.php?action=data_fetch
//    Series listing: /series/{slug}/ → links to /seasons/{slug}/
//    Episodes list: /seasons/{slug}/page/{N}/ — /episodes/{ep-slug}/
//    Episode page: /episodes/{ep-slug}/ — .buttosn elements
//    Video AJAX: POST /wp-admin/admin-ajax.php?action=codecanal_ajax_request
//    Movies/OVAs: /anime/{slug}/ — server buttons directly on page
// ════════════════════════════════════════════════════════════════════
const SHAHIID_BASE = "https://shahiid-anime.net";
const SHAHIID_HDRS: Record<string, string> = {
  ...BASE_HDRS,
  Referer: "https://shahiid-anime.net/",
};
const SHAHIID_EP_PER_PAGE = 54;

const shahiidSeriesCache = new Map<string, { url: string | null; ts: number }>();
const shahiidEpUrlCache  = new Map<string, { url: string | null; ts: number }>();
const shahiidSrcCache    = new Map<string, { sources: UnifiedSource[]; ts: number }>();

/** Search shahiid for a title, returns series/anime page URLs */
async function searchShahiid(query: string): Promise<Array<{ url: string; label: string }>> {
  const fd = new URLSearchParams({ action: "data_fetch", keyword: query });
  try {
    const r = await fetch(`${SHAHIID_BASE}/wp-admin/admin-ajax.php`, {
      method: "POST",
      headers: { ...SHAHIID_HDRS, "Content-Type": "application/x-www-form-urlencoded" },
      body: fd.toString(),
      signal: AbortSignal.timeout(10000),
    });
    if (!r.ok) return [];
    const html = await r.text();
    const results: Array<{ url: string; label: string }> = [];
    const seen = new Set<string>();
    const re = /href="(https?:\/\/shahiid-anime\.net\/(?:series|anime|serieses|seasonses)\/([^/"]+)\/?)"/gi;
    for (const m of html.matchAll(re)) {
      const url = m[1].replace(/\/?$/, "/");
      if (seen.has(url)) continue;
      seen.add(url);
      const label = decodeURIComponent(m[2]).replace(/-/g, " ");
      results.push({ url, label });
    }
    return results;
  } catch { return []; }
}

/** Resolve a series/anime URL from title */
async function resolveShahiidUrl(romaji: string, english?: string | null): Promise<string | null> {
  const cacheKey = romaji.toLowerCase().trim();
  const cached = shahiidSeriesCache.get(cacheKey);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.url;

  let best: string | null = null;
  let bestScore = 0;

  for (const q of [english, romaji].filter(Boolean) as string[]) {
    const results = await searchShahiid(q);
    for (const r of results) {
      const s = Math.max(
        similarity(r.label, romaji),
        english ? similarity(r.label, english) : 0,
      );
      if (s > bestScore && s > 0.15) { bestScore = s; best = r.url; }
    }
    if (best && bestScore > 0.6) break;
  }

  shahiidSeriesCache.set(cacheKey, { url: best, ts: Date.now() });
  return best;
}

/** Get seasons URL from a series URL */
async function getShahiidSeasonsUrl(seriesUrl: string): Promise<string> {
  // Movies/OVAs are already at /anime/ — no seasons
  if (seriesUrl.includes("/anime/")) return seriesUrl;

  // For /series/, /serieses/, /seasonses/ — derive seasons URL
  const seasonsDerived = seriesUrl.replace(/\/(series|serieses|seasonses)\//, "/seasons/");
  if (seasonsDerived !== seriesUrl) {
    const status = await safeHead(seasonsDerived, SHAHIID_HDRS);
    if (status === 200) return seasonsDerived;
  }

  // Fetch series page and find /seasons/ link
  try {
    const r = await fetch(seriesUrl, {
      headers: SHAHIID_HDRS,
      signal: AbortSignal.timeout(8000),
      redirect: "follow",
    });
    if (r.ok) {
      const html = await r.text();
      const m = html.match(/href="(https?:\/\/shahiid-anime\.net\/seasons\/[^"]+)"/i);
      if (m) return m[1].replace(/\/?$/, "/");
    }
  } catch {}

  return seasonsDerived || seriesUrl;
}

interface ShahiidServerBtn {
  post: string;
  serv: string;
  frameserver: string;
  serverCode: string;
  isFilm: string;
}

/** Parse .buttosn server buttons from episode/anime page HTML */
function parseShahiidButtons(html: string): ShahiidServerBtn[] {
  const servers: ShahiidServerBtn[] = [];
  const re = /<a[^>]*class="[^"]*buttosn[^"]*"[^>]*>/gi;
  for (const m of html.matchAll(re)) {
    const tag = m[0];
    const post        = tag.match(/data-post=["']([^"']+)["']/)?.[1] || "";
    const serv        = tag.match(/data-serv=["']([^"']+)["']/)?.[1] || "";
    const frameserver = tag.match(/data-frameserver=["']([^"']+)["']/)?.[1] || "";
    const serverCode  = tag.match(/data-_server_code_=["']([^"']+)["']/)?.[1] || "";
    const isFilm      = tag.match(/data-is_film=["']([^"']+)["']/)?.[1] || "";
    if (post && serv) servers.push({ post, serv, frameserver, serverCode, isFilm });
  }
  return servers;
}

/** Call shahiid AJAX → returns embed iframe URL */
async function callShahiidAjax(btn: ShahiidServerBtn, refUrl: string): Promise<string | null> {
  const fd = new URLSearchParams({
    action: "codecanal_ajax_request",
    post: btn.post,
    "_server_code_": btn.serverCode,
    frameserver: btn.frameserver,
    is_film: btn.isFilm,
    serv: btn.serv,
  });
  try {
    const r = await fetch(`${SHAHIID_BASE}/wp-admin/admin-ajax.php`, {
      method: "POST",
      headers: {
        ...SHAHIID_HDRS,
        "Content-Type": "application/x-www-form-urlencoded",
        "X-Requested-With": "XMLHttpRequest",
        Referer: refUrl,
      },
      body: fd.toString(),
      signal: AbortSignal.timeout(10000),
    });
    if (!r.ok) return null;
    const html = await r.text();
    if (!html || html.trim() === "0" || html.trim() === "-1") return null;
    // Extract iframe src
    const iframeSrc = extractIframeSrc(html, SHAHIID_BASE + "/");
    if (iframeSrc) return iframeSrc;
    // Fallback: any http URL
    const urlM = html.match(/(?:src|href|url)=["'](https?:\/\/[^"']+)["']/i);
    if (urlM) return urlM[1];
  } catch {}
  return null;
}

/** Find the correct episode page URL from the seasons listing */
async function findShahiidEpisodeUrl(seasonsUrl: string, epNum: number): Promise<string | null> {
  const epCacheKey = `${seasonsUrl}:${epNum}`;
  const cached = shahiidEpUrlCache.get(epCacheKey);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.url;

  const padded2 = String(epNum).padStart(2, "0");
  const padded3 = String(epNum).padStart(3, "0");

  // Fetch the seasons page (initial load — site uses AJAX for "load more", URL pagination returns 301)
  try {
    const r = await fetch(seasonsUrl, {
      headers: SHAHIID_HDRS,
      signal: AbortSignal.timeout(10000),
      redirect: "follow",
    });
    if (!r.ok) { shahiidEpUrlCache.set(epCacheKey, { url: null, ts: Date.now() }); return null; }
    const html = await r.text();
    if (isCloudflareBlock(html)) { shahiidEpUrlCache.set(epCacheKey, { url: null, ts: Date.now() }); return null; }

    // Collect unique episode links (each URL appears twice in the HTML)
    const seen = new Set<string>();
    const links: string[] = [];
    for (const m of html.matchAll(/href="(https?:\/\/shahiid-anime\.net\/episodes\/[^"]+)"/gi)) {
      if (!seen.has(m[1])) { seen.add(m[1]); links.push(m[1]); }
    }
    if (!links.length) { shahiidEpUrlCache.set(epCacheKey, { url: null, ts: Date.now() }); return null; }

    // Search by episode number in URL slug (encoded or decoded) — no position fallback
    for (const link of links) {
      const decoded = decodeURIComponent(link);
      // Match -NN- where NN is the episode number (with or without padding)
      if (decoded.includes(`-${padded2}-`) || decoded.includes(`-${padded3}-`) ||
          decoded.includes(`-${epNum}-`) ||
          link.includes(`-${padded2}-`) || link.includes(`-${padded3}-`) ||
          link.includes(`-%d8%a7%d9%84%d8%ad%d9%84%d9%82%d8%a9-${padded2}-`) ||
          link.includes(`-${epNum}-`)) {
        shahiidEpUrlCache.set(epCacheKey, { url: link, ts: Date.now() });
        return link;
      }
    }

    // Try to construct URL from template of first episode
    // e.g. /episodes/SERIES-الحلقة-01-SUFFIX/ → /episodes/SERIES-الحلقة-55-SUFFIX/
    const firstDecoded = decodeURIComponent(links[0]);
    const tmpl = firstDecoded.match(/\/episodes\/(.+?)-الحلقة-(\d+)-(.+)\//);
    if (tmpl) {
      const [, seriesBase, , suffix] = tmpl;
      const epFormatted = epNum < 10 ? padded2 : String(epNum);
      const candidateUrl = `${SHAHIID_BASE}/episodes/${encodeURIComponent(seriesBase)}-${encodeURIComponent("الحلقة")}-${epFormatted}-${encodeURIComponent(suffix)}/`;
      const status = await safeHead(candidateUrl, SHAHIID_HDRS);
      if (status === 200 || status === 301) {
        shahiidEpUrlCache.set(epCacheKey, { url: candidateUrl, ts: Date.now() });
        return candidateUrl;
      }
    }
  } catch {}

  shahiidEpUrlCache.set(epCacheKey, { url: null, ts: Date.now() });
  return null;
}

/** Full shahiid source fetch for a given anime + episode */
async function getShahiidSources(
  romaji: string, english?: string | null, ep: number = 1
): Promise<UnifiedSource[]> {
  const ck = `shahiid:${romaji.toLowerCase()}:${ep}`;
  const cached = shahiidSrcCache.get(ck);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.sources;

  try {
    const seriesUrl = await resolveShahiidUrl(romaji, english);
    if (!seriesUrl) return [];

    let episodePage: string;

    if (seriesUrl.includes("/anime/")) {
      // Movie/OVA — video directly on series page
      episodePage = seriesUrl;
    } else {
      // Series — get episodes from seasons page
      const seasonsUrl = await getShahiidSeasonsUrl(seriesUrl);
      const epUrl = await findShahiidEpisodeUrl(seasonsUrl, ep);
      if (!epUrl) return [];
      episodePage = epUrl;
    }

    // Fetch episode page
    const epR = await fetch(episodePage, {
      headers: SHAHIID_HDRS,
      signal: AbortSignal.timeout(10000),
      redirect: "follow",
    });
    if (!epR.ok) return [];
    const epHtml = await epR.text();
    if (isCloudflareBlock(epHtml)) return [];

    const buttons = parseShahiidButtons(epHtml);
    if (!buttons.length) return [];

    // Call AJAX for each server in parallel
    const embedUrls: Array<{ url: string; idx: number }> = [];
    await Promise.allSettled(buttons.map(async (btn, idx) => {
      try {
        const embedUrl = await callShahiidAjax(btn, episodePage);
        if (embedUrl) embedUrls.push({ url: embedUrl, idx });
      } catch {}
    }));

    embedUrls.sort((a, b) => a.idx - b.idx);

    const sources: UnifiedSource[] = embedUrls.map(({ url }, i) => ({
      name: `شاهيد · سيرفر ${i + 1}`,
      url,
      quality: "HD",
      qualityRank: 2,
      site: "shahiid",
    }));

    if (sources.length) shahiidSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  UnifiedSource type + helpers
// ════════════════════════════════════════════════════════════════════
interface UnifiedSource {
  name: string; url: string; quality: string; qualityRank: number; site: string;
  directUrl?: string; directType?: "hls" | "mp4";
}

const SKIP_EXTRACT_HOSTS = [
  "drive.google","mega.nz","mediafire.com",
  "ok.ru","odnoklassniki.ru","youtube.com","youtu.be",
  ...EMBED_ONLY_HOSTS,
];

async function probeDirectUrl(url: string, referer?: string): Promise<boolean> {
  try {
    const r = await fetch(url, {
      method: "HEAD",
      headers: { "User-Agent": BROWSER_UA, ...(referer ? { Referer: referer } : {}), Range: "bytes=0-1024" },
      signal: AbortSignal.timeout(5000),
      redirect: "follow",
    });
    return r.ok || r.status === 206 || r.status === 302 || r.status === 301;
  } catch { return true; }
}

async function extractAndSend(
  sources: UnifiedSource[],
  send: (s: UnifiedSource) => void,
  timeoutMs = 8000,
): Promise<void> {
  await Promise.allSettled(sources.map(async (s) => {
    // Already has a direct URL (e.g. AnimeGG pre-extracted) — send immediately
    if (s.directUrl) {
      send(s);
      return;
    }
    // Known embed-only → send as embed immediately
    if (SKIP_EXTRACT_HOSTS.some(h => s.url.includes(h))) { send(s); return; }
    // Direct HLS in URL
    if (s.url.match(/\.m3u8([?#]|$)/i)) {
      send({ ...s, directUrl: s.url, directType: "hls" });
      return;
    }
    // Direct MP4 in URL
    if (s.url.match(/\.mp4([?#]|$)/i)) {
      send({ ...s, directUrl: s.url, directType: "mp4" });
      return;
    }
    // Unknown embed: send IMMEDIATELY for fast response, then attempt deep extraction
    send(s);
    try {
      const result = await Promise.race([
        extractVideoDeep(s.url, s.url),
        new Promise<null>(r => setTimeout(() => r(null), timeoutMs)),
      ]);
      if (result) {
        const alive = await probeDirectUrl(result.url, s.url);
        if (alive) {
          send({ ...s, name: s.name + " ·HD", url: result.url, directUrl: result.url, directType: result.type });
        }
      }
    } catch {}
  }));
}


// ════════════════════════════════════════════════════════════════════
//  ANIMEGG.ORG scraper
//  Search: GET /search/?q={query}
//  Episode: GET /{slug}-episode-{N}  → iframe src="/embed/{id}"
//  Embed:   GET /embed/{id}          → videoSources[{file, label}]
// ════════════════════════════════════════════════════════════════════
const AGG_BASE = "https://www.animegg.org";
const AGG_HDRS: Record<string, string> = {
  ...BASE_HDRS,
  Referer: "https://www.animegg.org/",
};

const aggSeriesCache = new Map<string, { slug: string | null; ts: number }>();
const aggSrcCache    = new Map<string, { sources: UnifiedSource[]; ts: number }>();

async function searchAnimeGG(title: string, english: string | null): Promise<string | null> {
  const ck = (title + "|" + (english || "")).toLowerCase();
  const hit = aggSeriesCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.slug;

  for (const q of [english, title].filter(Boolean) as string[]) {
    try {
      const r = await fetch(`${AGG_BASE}/search/?q=${encodeURIComponent(q)}`, {
        headers: AGG_HDRS,
        signal: AbortSignal.timeout(8000),
        redirect: "follow",
      });
      if (!r.ok) continue;
      const html = await r.text();
      if (isCloudflareBlock(html)) continue;

      let bestSlug: string | null = null;
      let bestScore = 0;

      const re = /href="\/series\/([^"]+)"[\s\S]*?<h2>([^<]+)/gi;
      for (const m of html.matchAll(re)) {
        const slug  = m[1].trim();
        const label = m[2].trim();
        const score = Math.max(
          similarity(label, title),
          english ? similarity(label, english) : 0,
        );
        if (score > bestScore && score > 0.2) { bestScore = score; bestSlug = slug; }
      }

      if (bestSlug && bestScore > 0.35) {
        aggSeriesCache.set(ck, { slug: bestSlug, ts: Date.now() });
        return bestSlug;
      }
    } catch {}
  }

  aggSeriesCache.set(ck, { slug: null, ts: Date.now() });
  return null;
}

/** Parse AnimeGG embed page → direct video URL */
function parseAnimeGGEmbed(html: string): { url: string; type: "mp4" | "hls" } | null {
  // og:video meta
  const ogV = html.match(/<meta[^>]+property="og:video"[^>]+content="([^"]+)"/i);
  if (ogV) {
    const u = ogV[1].startsWith("/") ? `${AGG_BASE}${ogV[1]}` : ogV[1];
    if (u.startsWith("http")) return { url: u, type: "mp4" };
  }
  // videoSources JS array
  const vsM = html.match(/var\s+videoSources\s*=\s*(\[[\s\S]*?\]);/);
  if (vsM) {
    try {
      const raw = vsM[1]
        .replace(/([{,]\s*)([a-zA-Z_$][a-zA-Z0-9_$]*)\s*:/g, '$1"$2":')
        .replace(/'/g, '"');
      const arr = JSON.parse(raw) as Array<{ file?: string; label?: string }>;
      const first = arr.find(s => s.file && (s.file.includes(".mp4") || s.file.includes(".m3u8")));
      if (first?.file) {
        const u = first.file.startsWith("/") ? `${AGG_BASE}${first.file}` : first.file;
        if (u.startsWith("http")) return { url: u, type: u.includes(".m3u8") ? "hls" : "mp4" };
      }
    } catch {}
  }
  return null;
}

/** Fetch embed IDs from an AnimeGG episode page URL */
async function fetchAnimeGGEmbedIds(epUrl: string, refUrl: string): Promise<string[]> {
  try {
    const r = await fetch(epUrl, {
      headers: { ...AGG_HDRS, Referer: refUrl },
      signal: AbortSignal.timeout(8000),
      redirect: "follow",
    });
    if (!r.ok) return [];
    const html = await r.text();
    if (isCloudflareBlock(html)) return [];
    const seen = new Set<string>();
    const ids: string[] = [];
    for (const m of html.matchAll(/iframe[^>]+src="\/embed\/(\d+)"/gi)) {
      if (!seen.has(m[1])) { seen.add(m[1]); ids.push(m[1]); }
    }
    return ids;
  } catch { return []; }
}

async function getAnimeGGSources(
  title: string, english: string | null, ep: number,
): Promise<UnifiedSource[]> {
  const ck = `agg:${title.toLowerCase()}:${ep}`;
  const hit = aggSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;

  try {
    const slug = await searchAnimeGG(title, english);
    if (!slug) return [];

    const seriesUrl = `${AGG_BASE}/series/${slug}`;

    // 1. Try direct episode URL: /{slug}-episode-{ep}
    let embedIds = await fetchAnimeGGEmbedIds(`${AGG_BASE}/${slug}-episode-${ep}`, seriesUrl);

    // 2. If no embeds, fetch the series page to discover all episode URL prefixes
    //    (e.g. AoT sub uses "shingeki-no-kyojin" while series slug is "attack-on-titan")
    if (!embedIds.length) {
      try {
        const sr = await fetch(seriesUrl, {
          headers: AGG_HDRS,
          signal: AbortSignal.timeout(8000),
          redirect: "follow",
        });
        if (sr.ok) {
          const sHtml = await sr.text();
          const seen = new Set<string>([slug]);
          // Extract unique episode URL prefixes from the page
          for (const m of sHtml.matchAll(/href="\/([a-z0-9-]+)-episode-\d+"/gi)) {
            const prefix = m[1];
            if (!seen.has(prefix)) seen.add(prefix);
          }
          // Try each new prefix until we find embeds
          for (const prefix of seen) {
            if (prefix === slug) continue;
            embedIds = await fetchAnimeGGEmbedIds(`${AGG_BASE}/${prefix}-episode-${ep}`, seriesUrl);
            if (embedIds.length) break;
          }
        }
      } catch {}
    }

    if (!embedIds.length) {
      aggSrcCache.set(ck, { sources: [], ts: Date.now() });
      return [];
    }

    const LABELS = ["مدبلج", "مترجم", "سيرفر 3", "سيرفر 4"];
    const sources: UnifiedSource[] = [];
    const epRef = seriesUrl;

    await Promise.allSettled(embedIds.map(async (id, idx) => {
      const embedUrl = `${AGG_BASE}/embed/${id}`;
      let directUrl: string | undefined;
      let directType: "mp4" | "hls" | undefined;

      try {
        const er = await fetch(embedUrl, {
          headers: { ...AGG_HDRS, Referer: epRef },
          signal: AbortSignal.timeout(8000),
        });
        if (er.ok) {
          const eHtml = await er.text();
          const parsed = parseAnimeGGEmbed(eHtml);
          if (parsed) { directUrl = parsed.url; directType = parsed.type; }
        }
      } catch {}

      sources.push({
        name: `AnimeGG · ${LABELS[idx] ?? `سيرفر ${idx + 1}`}`,
        url: embedUrl,
        quality: "480p",
        qualityRank: 1,
        site: "animegg",
        ...(directUrl ? { directUrl, directType } : {}),
      });
    }));

    if (sources.length) aggSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  Probe  GET /api/anime/probe
// ════════════════════════════════════════════════════════════════════
router.get("/anime/probe", async (req, res) => {
  const url = (req.query.url as string | undefined)?.trim();
  if (!url || !url.startsWith("http")) { res.status(400).json({ error: "valid url required" }); return; }
  try {
    const r = await fetch(url, { method: "HEAD", headers: { "User-Agent": BROWSER_UA, Referer: url }, signal: AbortSignal.timeout(5000), redirect: "follow" });
    res.json({ alive: r.status < 400, finalUrl: r.url });
  } catch { res.json({ alive: true, finalUrl: url }); }
});


// ════════════════════════════════════════════════════════════════════
//  Extract-video  GET /api/anime/extract-video
// ════════════════════════════════════════════════════════════════════
router.get("/anime/extract-video", async (req, res) => {
  const url     = (req.query.url     as string | undefined)?.trim();
  const referer = (req.query.referer as string | undefined)?.trim();
  if (!url || !url.startsWith("http")) { res.status(400).json({ error: "url required" }); return; }
  try {
    const result = await extractVideoDeep(url, referer);
    res.json({ videoUrl: result?.url ?? null, videoType: result?.type ?? null });
  } catch (e: any) { res.json({ videoUrl: null, videoType: null, error: e.message }); }
});


// ════════════════════════════════════════════════════════════════════
//  AllAnime resolve/search (for episode metadata + search bar)
// ════════════════════════════════════════════════════════════════════
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
  } catch (e: any) { res.status(500).json({ error: e.message }); }
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
  } catch (e: any) { res.status(500).json({ error: e.message }); }
});

router.get("/anime/search", async (req, res) => {
  const q = req.query.q as string;
  if (!q) { res.status(400).json({ error: "q required" }); return; }
  try {
    const results = await searchAllAnime(q);
    res.json({ results });
  } catch (e: any) { res.status(500).json({ error: e.message }); }
});

router.get("/anime/servers", async (req, res) => {
  const epId = req.query.epId as string;
  if (!epId) { res.status(400).json({ error: "epId required" }); return; }
  const match = epId.match(/^(.+)-ep-(\d+)$/);
  if (!match) { res.json({ servers: [] }); return; }
  const [, showId, epNum] = match;
  const sources = ["Default","Luf-mp4","Vid-mp4","S-mp4","Yt-mp4"].map(s => ({
    name: s,
    url: `https://embed.ssbcontent.site/?p=web&sourceName=${encodeURIComponent(s)}&showId=${encodeURIComponent(showId)}&episodeString=${epNum}&isMobile=false&translationType=sub`,
    isEmbed: true, showId, epNum,
  }));
  res.json({ servers: sources, showId, epNum });
});


// ════════════════════════════════════════════════════════════════════
//  Sources Stream  GET /api/anime/sources-stream  (SSE)
//  Streams sources as they arrive from shahiid-anime.net
// ════════════════════════════════════════════════════════════════════
router.get("/anime/sources-stream", async (req, res) => {
  const title     = ((req.query.title    as string) || "").trim();
  const english   = ((req.query.english  as string) || "").trim() || null;
  const ep        = parseInt((req.query.ep as string) || "1");

  res.setHeader("Content-Type", "text/event-stream");
  res.setHeader("Cache-Control", "no-cache");
  res.setHeader("Connection", "keep-alive");
  res.setHeader("X-Accel-Buffering", "no");
  res.flushHeaders?.();

  const seenUrls = new Set<string>();
  let closed = false;
  req.on("close", () => { closed = true; });

  function sendSrc(s: UnifiedSource) {
    if (closed) return;
    const key = s.directUrl || s.url;
    if (!s.url || seenUrls.has(key)) return;
    if (DEAD_FILE_HOSTS.some(h => s.url.toLowerCase().includes(h))) return;
    if (s.directUrl && DEAD_FILE_HOSTS.some(h => s.directUrl!.toLowerCase().includes(h))) return;
    seenUrls.add(key);
    res.write(`data: ${JSON.stringify(s)}\n\n`);
  }

  try {
    const SCRAPER_MS = 12000;
    const EXTRACT_MS = 8000;

    await Promise.allSettled([
      // ── Shahiid-anime.net ──
      (async () => {
        try {
          if (!title) return;
          const srcs = await Promise.race([
            getShahiidSources(title, english, ep),
            new Promise<UnifiedSource[]>(r => setTimeout(() => r([]), SCRAPER_MS)),
          ]);
          if (srcs.length && !closed) await extractAndSend(srcs, sendSrc, EXTRACT_MS);
        } catch {}
      })(),

      // ── AnimeGG (runs in parallel) ──
      (async () => {
        try {
          if (!title) return;
          const srcs = await Promise.race([
            getAnimeGGSources(title, english, ep),
            new Promise<UnifiedSource[]>(r => setTimeout(() => r([]), SCRAPER_MS)),
          ]);
          if (srcs.length && !closed) await extractAndSend(srcs, sendSrc, EXTRACT_MS);
        } catch {}
      })(),
    ]);

  } catch (e: any) {
    console.error("sources-stream error:", e?.message ?? e);
  }

  if (!closed) { res.write("data: [DONE]\n\n"); res.end(); }
});


// ════════════════════════════════════════════════════════════════════
//  Translate  GET /api/anime/translate
// ════════════════════════════════════════════════════════════════════
router.get("/anime/translate", async (req, res) => {
  const text = ((req.query.text as string) || "").trim();
  const from = ((req.query.from as string) || "en").trim();
  const to   = ((req.query.to   as string) || "ar").trim();
  if (!text) { res.json({ translated: "" }); return; }
  const cacheKey = `${from}:${to}:${text.substring(0, 80)}`;
  if (translateCache.has(cacheKey)) { res.json({ translated: translateCache.get(cacheKey) }); return; }
  try {
    const url = `https://translate.googleapis.com/translate_a/single?client=gtx&sl=${from}&tl=${to}&dt=t&q=${encodeURIComponent(text)}`;
    const r = await fetch(url, { headers: { "User-Agent": BROWSER_UA }, signal: AbortSignal.timeout(6000) });
    if (!r.ok) throw new Error(`translate ${r.status}`);
    const data = await r.json() as any;
    const translated = data?.[0]?.map((x: any) => x?.[0] || "").join("") || text;
    translateCache.set(cacheKey, translated);
    res.json({ translated });
  } catch { res.json({ translated: text }); }
});


// ════════════════════════════════════════════════════════════════════
//  Test Embed  GET /api/anime/test-embed?url=ENCODED_URL
// ════════════════════════════════════════════════════════════════════
router.get("/anime/test-embed", async (req, res) => {
  const rawUrl = ((req.query.url as string) || "").trim();
  if (!rawUrl) { res.status(400).json({ working: false, reason: "no url" }); return; }
  let targetUrl: string;
  try { targetUrl = decodeURIComponent(rawUrl); } catch { targetUrl = rawUrl; }
  try { new URL(targetUrl); } catch { res.status(400).json({ working: false, reason: "invalid url" }); return; }
  try {
    const r = await fetch(targetUrl, {
      method: "GET",
      headers: { "User-Agent": BROWSER_UA, Accept: "text/html,*/*", Referer: targetUrl },
      signal: AbortSignal.timeout(8000), redirect: "follow",
    });
    if (!r.ok) { res.json({ working: false, reason: `HTTP ${r.status}` }); return; }
    const text = await r.text();
    if (isCloudflareBlock(text)) { res.json({ working: false, reason: "cloudflare" }); return; }
    const hasVideo = /<video/i.test(text) || /\.m3u8/i.test(text) || /jwplayer|plyr|playerjs|flowplayer|vidplayer/i.test(text)
      || /source.*mp4|file.*mp4|url.*mp4/i.test(text) || /videoUrl|video_url|fileUrl|streamUrl/i.test(text);
    const has404 = /404|not found|page not found/i.test(text.slice(0, 2000));
    if (has404 && !hasVideo) { res.json({ working: false, reason: "404" }); return; }
    res.json({ working: hasVideo, reason: hasVideo ? "ok" : "no-video" });
  } catch (e: any) { res.json({ working: false, reason: e.message }); }
});


// ════════════════════════════════════════════════════════════════════
//  Embed Proxy  GET /api/anime/proxy-embed?url=ENCODED_URL
//  Fetches embed page server-side, strips ads/chrome, injects our UI.
// ════════════════════════════════════════════════════════════════════
router.get("/anime/proxy-embed", async (req, res) => {
  const rawUrl = ((req.query.url as string) || "").trim();
  if (!rawUrl) { res.status(400).send("url required"); return; }
  let targetUrl: string;
  try { targetUrl = decodeURIComponent(rawUrl); } catch { targetUrl = rawUrl; }
  let parsed: URL;
  try { parsed = new URL(targetUrl); } catch { res.status(400).send("invalid url"); return; }
  if (!["http:", "https:"].includes(parsed.protocol)) { res.status(400).send("bad protocol"); return; }

  try {
    const resp = await fetch(targetUrl, {
      headers: {
        "User-Agent": BROWSER_UA,
        "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
        "Accept-Language": "ar,en-US;q=0.9,en;q=0.8",
        "Referer": parsed.origin + "/",
        "Origin": parsed.origin,
      },
      signal: AbortSignal.timeout(12_000),
      redirect: "follow",
    } as any);

    let html = await resp.text();

    if (isCloudflareBlock(html)) {
      res.send(`<html><body style="background:#000;color:#fff;font-family:sans-serif;display:flex;align-items:center;justify-content:center;height:100vh;margin:0;flex-direction:column;gap:12px">
        <div style="font-size:32px">🛡️</div>
        <p style="margin:0;font-size:14px;opacity:0.6">محمي بـ Cloudflare</p>
        <p style="margin:0;font-size:11px;opacity:0.3">${targetUrl.replace(/"/g,"")}</p>
        <script>window.parent.postMessage({type:'nova-cf-block',url:'${targetUrl.replace(/'/g,"\\'")}'},'*')</script>
      </body></html>`);
      return;
    }

    const AD_SCRIPTS = [
      "googlesyndication","doubleclick","adsbygoogle","adsystem","popads",
      "popcash","trafficstars","propellerads","adcash","adbanner","adserver",
      "exoclick","hilltopads","juicyads","clickadu","adsterra","mgid",
      "taboola","outbrain","revcontent","fuckingfast","adcdn","popunder",
    ];
    html = html.replace(
      new RegExp(`<script[^>]+src=["'][^"']*(?:${AD_SCRIPTS.join("|")})[^"']*["'][^>]*>.*?<\\/script>`, "gis"),
      ""
    );
    html = html.replace(/<iframe[^>]+src=["'][^"']*(?:doubleclick|googlesyndication|adsbygoogle)[^"']*["'][^>]*>.*?<\/iframe>/gis, "");

    const INJECT = `
<style>
html, body { margin:0 !important; padding:0 !important; overflow:hidden !important; background:#000 !important; width:100vw !important; height:100vh !important; }
header, footer, nav, aside, .header, .footer, .nav, .navbar,
.top-bar, .bottom-bar, .site-header, .site-footer,
.breadcrumb, .pagination, .comments, .related-posts,
.sidebar, .widget, .ad-zone, .ads-container,
.cookie-notice, .cookie-bar, .gdpr-notice,
.social-share, .share-buttons, .download-section,
.subscription-box, .login-box, .register-box,
.logo, .site-logo, .branding,
[id*="header"], [id*="footer"], [id*="sidebar"], [id*="navbar"],
[id*="nav-"], [id*="-nav"], [id*="menu"], [id*="breadcrumb"],
[id*="comments"], [id*="related"], [id*="share"], [id*="social"],
[class*="header"]:not([class*="player"]):not([class*="video"]),
[class*="footer"]:not([class*="player"]):not([class*="video"]),
[class*="navbar"]:not([class*="player"]):not([class*="video"]),
[class*="sidebar"]:not([class*="player"]):not([class*="video"]),
[class*="breadcrumb"], [class*="related"]:not([class*="player"]),
[class*="comments"], [class*="social"]:not([class*="player"]),
[class*="share"]:not([class*="player"]), [class*="download-btn"],
[class*="cookie"], [class*="gdpr"], [class*="subscribe"],
[class*="logo"]:not([class*="player"]), [class*="branding"] { display: none !important; }
[id*="ad_"], [id*="_ad"], [id*="banner"], [id*="popup"],
[id*="interstitial"], [id*="overlay"],
[class*="ad-"], [class*="-ad_"], [class*="ads-"], [class*="-ads"],
[class*="banner-ad"], [class*="popup-ad"], [class*="advert"],
[class*="advertisement"], [class*="vpn-banner"],
[class*="click-under"], [class*="popunder"], [class*="clickad"],
.adsbygoogle, ins.adsbygoogle, [id="aswift_iframe_anchor"] { display: none !important; }
body > div[style*="position:fixed"]:not([id*="player"]):not([class*="player"]),
body > div[style*="position: fixed"]:not([id*="player"]):not([class*="player"]) { display: none !important; }
#player, #vplayer, #video, #videoPlayer, #player-container,
#jwplayer, #player_container, #video-container,
.player, .video-player, .player-container, .video-container,
.jwplayer, .jw-wrapper, .plyr, .plyr__container,
.mejs-container, .flowplayer, .fp-player,
[id^="jwplayer"], [id*="player"], [id*="vplayer"],
[class*="player"]:not([class*="noplayer"]):not([class*="ad-player"]),
[class*="video-wrap"], [class*="videowrap"],
[class*="embed-responsive"], [class*="embed_responsive"],
[class*="video-holder"], [class*="video_holder"] {
  position: fixed !important; top: 0 !important; left: 0 !important;
  width: 100vw !important; height: 100vh !important;
  max-width: none !important; max-height: none !important;
  margin: 0 !important; padding: 0 !important;
  border: none !important; border-radius: 0 !important;
  background: #000 !important; z-index: 1 !important; transform: none !important;
}
video { width: 100% !important; height: 100% !important; object-fit: contain !important; background: #000 !important; display: block !important; max-width: none !important; max-height: none !important; }
.jw-overlays [class*="ad"], .jw-ad, .jw-flag-ads,
.jw-nextup-container, .jw-logo,
.plyr__ads, [class*="ima-ad"] { display: none !important; }
</style>
<script>
(function(){
  window.open = function(){ return { focus:function(){}, closed:false }; };
  window.alert = function(){};
  window.confirm = function(){ return false; };
  window.prompt = function(){ return null; };
  document.addEventListener('click', function(e){
    var t = e.target, tries = 0;
    while(t && tries++ < 6){
      if(t.tagName === 'A'){
        var href = (t.getAttribute('href') || '').trim();
        if(href && href !== '#' && !href.startsWith('javascript') &&
          (href.startsWith('http') || href.startsWith('//'))){
          var same = href.indexOf(location.hostname) !== -1;
          if(!same){ e.preventDefault(); e.stopPropagation(); return; }
        }
        break;
      }
      t = t.parentElement;
    }
  }, true);
  try {
    var _assign = location.assign.bind(location);
    Object.defineProperty(window, 'location', {
      configurable: true, get: function(){ return location; },
      set: function(v){ if(typeof v === 'string' && v.indexOf(location.hostname) === -1) return; _assign(v); }
    });
  } catch(e){}
  function cleanAds(){
    var adSels = ['[id*="ad_"]','[id*="banner"]','[class*="ad-banner"]',
      '[class*="popup"]','[class*="popunder"]','[class*="clickunder"]',
      '[class*="overlay"]:not([class*="player"])',
      '.adsbygoogle','[id*="interstitial"]','[class*="vpn"]',
      '[class*="subscribe"]','[class*="social-"]'];
    adSels.forEach(function(sel){
      try { document.querySelectorAll(sel).forEach(function(el){ el.style.display='none'; el.style.visibility='hidden'; el.style.pointerEvents='none'; }); } catch(e){}
    });
  }
  if(document.readyState === 'loading'){ document.addEventListener('DOMContentLoaded', cleanAds); } else { cleanAds(); }
  setTimeout(cleanAds, 800); setTimeout(cleanAds, 2000);
  document.addEventListener('DOMContentLoaded', function(){
    var text = document.body && document.body.innerText || '';
    if(text.indexOf('Just a moment') !== -1 || text.indexOf('cf_chl_') !== -1){
      window.parent.postMessage({type:'nova-cf-block'},'*');
    }
  });
})();
</script>`;

    if (html.includes("<head>")) {
      html = html.replace("<head>", "<head>" + INJECT);
    } else if (/<html[^>]*>/i.test(html)) {
      html = html.replace(/<html([^>]*)>/i, "<html$1><head>" + INJECT + "</head>");
    } else {
      html = INJECT + html;
    }

    html = html.replace(/(src|href|action)=["']\/(?!\/)/g, `$1="${parsed.origin}/`);

    res.setHeader("Content-Type", "text/html; charset=utf-8");
    res.setHeader("X-Frame-Options", "SAMEORIGIN");
    res.setHeader("Cache-Control", "no-cache");
    res.send(html);
  } catch (e: any) {
    res.status(502).send(`<!-- proxy failed: ${e.message} -->`);
  }
});


// ════════════════════════════════════════════════════════════════════
//  HLS / Segment Proxy — bypasses CORS on CDN video streams
// ════════════════════════════════════════════════════════════════════
const HLS_PROXY_HDRS = (ref: string, origin: string) => ({
  "User-Agent": BROWSER_UA,
  Referer: ref || "",
  Origin: origin || "",
  Accept: "*/*",
  "Accept-Language": "ar,en;q=0.9",
});

function rewriteM3u8(manifest: string, baseUrl: string, _selfBase: string, ref: string): string {
  const base = new URL(baseUrl);
  return manifest.split("\n").map(line => {
    const trimmed = line.trim();
    if (!trimmed || trimmed.startsWith("#")) return line;
    let absUrl: string;
    try { absUrl = new URL(trimmed).href; }
    catch { try { absUrl = new URL(trimmed, base).href; } catch { return line; } }
    return `/api/anime/seg-proxy?url=${encodeURIComponent(absUrl)}&ref=${encodeURIComponent(ref)}`;
  }).join("\n");
}

router.get("/anime/hls-proxy", async (req, res) => {
  const rawUrl = (req.query.url as string || "").trim();
  const ref    = (req.query.ref as string || "").trim();
  if (!rawUrl) { res.status(400).send("url required"); return; }
  let url: string;
  try { url = decodeURIComponent(rawUrl); } catch { url = rawUrl; }
  let origin = ""; try { origin = new URL(url).origin; } catch {}
  try {
    const r = await fetch(url, { headers: HLS_PROXY_HDRS(ref || url, origin), signal: AbortSignal.timeout(12000), redirect: "follow" });
    if (!r.ok) { res.status(r.status).send(`upstream ${r.status}`); return; }
    const ct = r.headers.get("content-type") || "";
    const body = await r.text();
    const proto = req.headers["x-forwarded-proto"] || "https";
    const host  = req.headers["x-forwarded-host"] || req.headers.host || "localhost:8080";
    const selfBase = `${proto}://${host}`;
    const rewritten = rewriteM3u8(body, url, selfBase, ref || url);
    res.setHeader("Content-Type", ct.includes("mpegurl") || url.endsWith(".m3u8") ? "application/vnd.apple.mpegurl" : ct || "application/vnd.apple.mpegurl");
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Cache-Control", "no-cache");
    res.send(rewritten);
  } catch (e: any) { res.status(502).send(`proxy error: ${e?.message ?? e}`); }
});

router.get("/anime/seg-proxy", async (req, res) => {
  const rawUrl = (req.query.url as string || "").trim();
  const ref    = (req.query.ref as string || "").trim();
  if (!rawUrl) { res.status(400).send("url required"); return; }
  let url: string;
  try { url = decodeURIComponent(rawUrl); } catch { url = rawUrl; }
  let origin = ""; try { origin = new URL(url).origin; } catch {}
  try {
    const r = await fetch(url, { headers: HLS_PROXY_HDRS(ref || url, origin), signal: AbortSignal.timeout(30000), redirect: "follow" });
    if (!r.ok) { res.status(r.status).send(`upstream ${r.status}`); return; }
    const ct = r.headers.get("content-type") || "video/mp2t";
    const len = r.headers.get("content-length");
    res.setHeader("Content-Type", ct);
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Cache-Control", "public, max-age=3600");
    if (len) res.setHeader("Content-Length", len);
    if (ct.includes("mpegurl") || url.includes(".m3u8")) {
      const body = await r.text();
      const proto = req.headers["x-forwarded-proto"] || "https";
      const host  = req.headers["x-forwarded-host"] || req.headers.host || "localhost:8080";
      res.setHeader("Content-Type", "application/vnd.apple.mpegurl");
      res.send(rewriteM3u8(body, url, `${proto}://${host}`, ref || url));
      return;
    }
    const body = await r.arrayBuffer();
    res.send(Buffer.from(body));
  } catch (e: any) { res.status(502).send(`proxy error: ${e?.message ?? e}`); }
});

export default router;
