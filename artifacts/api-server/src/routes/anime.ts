import { Router } from "express";
import { execSync } from "child_process";

const router = Router();

// ── Chromium path for Playwright (Nix system install) ──────────────────────
function getChromiumPath(): string {
  try { return execSync("which chromium", { timeout: 3000 }).toString().trim(); } catch {}
  try { return execSync("which chromium-browser", { timeout: 3000 }).toString().trim(); } catch {}
  return "";
}

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
const adarSlugCache  = new Map<string, { url: string | null; ts: number }>();
const adarSrcCache   = new Map<string, { sources: UnifiedSource[]; ts: number }>();

// ── Known-dead / unplayable file hosts ──
const DEAD_FILE_HOSTS = [
  "4shared.com","solidfiles.com","d000d.com",
  "vadbam.net","vadbam.com","okfiles.com","gofile.io","uploadfiles.io","hexupload.net",
  "filerio.in","doodstream.com","dood.watch","dood.to","dood.la","dood.ws","dood.pm",
  "dooood.com","doodrive.com","megaup.net","1fichier.com",
  "bayfiles.com","uploadhaven.com","tusfiles.com","letsupload.co","workupload.com",
  "hexload.com","mp4upload.com","uqload.net","uqload.com","file-up.org",
  "mega.nz","mega.co.nz","mediafire.com",
  "drive.google","docs.google","googleapis.com/drive",
  "ok.ru","odnoklassniki.ru","youtube.com","youtu.be",
  "cloudflareinsights.com","beacon.min.js",
  "jquery.min.js","bootstrap.min.js",
  ".css",".png",".jpg",".jpeg",".gif",".svg",".ico",
  "favicon","robots.txt","sitemap",
  // dead video hosts seen in AnimeLek / AnimeBlkom results
  "larhu.net","larhu.website","larhu.tv","larhu.me","larhu.io","larhu.org","larhu.co",
  "file-upload.com","file-upload.org","file-upload.net","fileupload.pw","fileupload.net",
  "uptobox.com","uptobox.fr","upstream.to",
  "flashx.tv","gostream.site","embedrise.com",
  // AniPub embeds redirect to megaplay.buzz → Cloudflare-protected
  "megaplay.buzz",
];

// ── Embed-only hosts (skip server-side extraction) ──
// These are removed from the stream entirely — they can't play in the internal player
const EMBED_ONLY_HOSTS = [
  "vidbm.com","vidbm.me","uptostream.com",
  "playerwish.com","wishfast.top",
  "streamvid.net","streamlare.com",
  "vidmoly.biz","vidmoly.to","vidmoly.net",
  "asnwish.com",
  "vidnest.fun",
  "anime7u.com",
  "dsvplay.com",
  // dead / unextractable platforms
  "uqload.is","uqload.co","uqload.com",
  "dailymotion.com",
  "videa.hu",
  "vkvideo.ru","vk.com",
  "ok.ru","odnoklassniki.ru",
  "yourupload.com",
  // embed-only — blocks server extraction
  "share4max.com","share4max.net",
  "megamax.me","megamax.net",
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
    const altRe = /get_video\?id=[^&"'<\s]+&expires=\d+&ip=[^&"'<\s]+&token=[^&"'<>\s;]+/;
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

// ── share4max.com / megamax.me — Inertia.js stream extraction ──
// Both sites use the same Inertia+Laravel stack. The streams data is NOT in
// the initial HTML; it's fetched via a partial reload with X-Inertia headers.
// Once we get the mirrors array, we try streamwish (HLS) then streamtape (MP4).
async function parseShareMaxStreams(
  host: string,
  fileId: string,
  referer: string,
): Promise<{ url: string; type: "hls" | "mp4" } | null> {
  const iframeUrl = `https://${host}/iframe/${fileId}`;
  const FALLBACK_VERSION = "d98bcc9c79d1c5ff36a86cc41dfcd275";
  try {
    // Step 1: GET iframe page — grab Inertia version + cookies
    const pageRes = await fetch(iframeUrl, {
      headers: { "User-Agent": BROWSER_UA, Referer: referer, Accept: "text/html" },
      signal: AbortSignal.timeout(12000),
      redirect: "follow",
    });
    if (!pageRes.ok) return null;
    const pageHtml = await pageRes.text();
    if (isCloudflareBlock(pageHtml)) return null;
    const version = pageHtml.match(/"version"\s*:\s*"([a-f0-9]{20,})"/)?.[1] || FALLBACK_VERSION;
    // Collect Set-Cookie headers (may be multiple)
    const rawCookies = pageRes.headers.getSetCookie?.() ?? [pageRes.headers.get("set-cookie") ?? ""];
    const cookieStr = rawCookies.map(c => c.split(";")[0]).filter(Boolean).join("; ");

    // Step 2: Inertia partial reload — only fetch "streams" prop
    const reload = await fetch(iframeUrl, {
      headers: {
        "User-Agent": BROWSER_UA,
        "X-Inertia": "true",
        "X-Inertia-Version": version,
        "X-Inertia-Partial-Data": "streams",
        "X-Inertia-Partial-Component": "files/mirror/video",
        Referer: iframeUrl,
        Accept: "application/json, text/plain, */*",
        ...(cookieStr ? { Cookie: cookieStr } : {}),
      },
      signal: AbortSignal.timeout(14000),
    });
    if (!reload.ok) return null;
    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    const data = (await reload.json()) as any;

    const streams = data?.props?.streams;
    if (streams?.status !== "success" || !Array.isArray(streams.data) || !streams.data.length) {
      return null;
    }

    // Step 3: Walk all quality tiers and mirrors, try best extractable drivers
    for (const quality of streams.data) {
      for (const mirror of (quality.mirrors ?? [])) {
        let link: string = mirror.link ?? "";
        if (link.startsWith("//")) link = "https:" + link;
        if (!link.startsWith("http")) continue;

        const drv: string = mirror.driver ?? "";

        // streamhg driver → streamwish.to (HLS m3u8)
        if (drv === "streamhg" || link.includes("streamwish")) {
          try {
            const r = await fetch(link, {
              headers: { "User-Agent": BROWSER_UA, Referer: iframeUrl },
              signal: AbortSignal.timeout(10000),
              redirect: "follow",
            });
            if (r.ok) {
              const v = parseStreamwish(await r.text());
              if (v?.url) return v;
            }
          } catch {}
        }
        // streamtape driver → direct MP4
        else if (drv === "streamtape") {
          try {
            const r = await fetch(link, {
              headers: { "User-Agent": BROWSER_UA, Referer: iframeUrl },
              signal: AbortSignal.timeout(10000),
              redirect: "follow",
            });
            if (r.ok) {
              const v = parseStreamtape(await r.text());
              if (v?.url) return v;
            }
          } catch {}
        }
      }
    }
  } catch {}
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
      // AnimeGG embed page — parse videoSources JS array
      if (url.includes("animegg.org/embed/")) {
        const v = parseAnimeGGEmbed(html); if (v) return v;
      }
      if (url.includes("streamtape.com") || url.includes("streamtape.net")) {
        const v = parseStreamtape(html); if (v) return v;
      }
      if (url.includes("streamwish") || url.includes("wishembed") || url.includes("filemoon") ||
          url.includes("swdyu") || url.includes("awish") || url.includes("playerwish")) {
        const v = parseStreamwish(html); if (v) return v;
      }
      // share4max and megamax use Inertia API — must use parseShareMaxStreams
      if (url.includes("share4max.com/iframe/") || url.includes("megamax.me/iframe/")) {
        const m2 = url.match(/\/iframe\/([^/?#]+)/);
        if (m2) {
          let hn = "";
          try { hn = new URL(url).hostname; } catch {}
          const v = await parseShareMaxStreams(hn, m2[1], ref);
          if (v) return v;
          break; // no fallback for these hosts
        }
      }
      if (url.includes("vidbm.com") || url.includes("uptostream.com") ||
          url.includes("vidlink") || url.includes("vidhide") || url.includes("streamlare")) {
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
    const re = /href="(https?:\/\/shahiid-anime\.net\/(?:series|anime|serieses|seasonses|seasons)\/([^/"]+)\/?)"/gi;
    for (const m of html.matchAll(re)) {
      const url = m[1].replace(/\/?$/, "/");
      if (seen.has(url)) continue;
      seen.add(url);
      const slugLabel = decodeURIComponent(m[2]).replace(/-/g, " ");
      // Look for <h2> in the next 400 chars after this href — avoids catastrophic backtracking
      const nearby = html.slice(m.index!, m.index! + 400);
      const h2m = nearby.match(/<h2>([^<]{1,80})<\/h2>/i);
      const label = (h2m?.[1] || slugLabel).trim();
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

  // Strategy 1: search
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
    if (best && bestScore > 0.5) break;
  }

  shahiidSeriesCache.set(cacheKey, { url: best, ts: Date.now() });
  return best;
}

/** Get seasons URL from a series URL */
async function getShahiidSeasonsUrl(seriesUrl: string): Promise<string> {
  // Movies/OVAs are already at /anime/ — no seasons
  if (seriesUrl.includes("/anime/")) return seriesUrl;

  // Already a seasonses/?serie= or /seasons/ URL — use directly
  if (seriesUrl.includes("/seasonses/") || seriesUrl.includes("?serie=")) return seriesUrl;
  if (seriesUrl.includes("/seasons/") && !seriesUrl.includes("/serieses/")) return seriesUrl;

  // Fetch the series page — look for JS redirect (window.location) or href to /seasonses/ or /seasons/
  try {
    const r = await fetch(seriesUrl, {
      headers: SHAHIID_HDRS,
      signal: AbortSignal.timeout(10000),
      redirect: "follow",
    });
    if (r.ok) {
      const html = await r.text();

      // Primary pattern (2024+): window.location = "https://shahiid-anime.net/seasonses/?serie=12345"
      const jsRedir = html.match(/window\.location\s*=\s*["'](https?:\/\/shahiid-anime\.net\/seasonses\/?[^"']+)["']/i);
      if (jsRedir) return jsRedir[1];

      // Anchor href to seasonses
      const hrefSeasonses = html.match(/href="(https?:\/\/shahiid-anime\.net\/seasonses\/[^"]+)"/i);
      if (hrefSeasonses) return hrefSeasonses[1];

      // Legacy /seasons/ slug href — skip generic nav links (page/, feed/, tag/, etc.)
      const seasonsHref = html.match(/href="(https?:\/\/shahiid-anime\.net\/seasons\/(?!(?:page|feed|tag|category|author)\/)[^"]+)"/i);
      if (seasonsHref) return seasonsHref[1].replace(/\/?$/, "/");
    }
  } catch {}

  // Fallback: slug-based derivation (old site layout)
  return seriesUrl.replace(/\/(series|serieses|seasonses)\//, "/seasons/");
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

/** Match episode number in a URL slug — padded variants + Arabic encoding */
function epNumInSlug(link: string, epNum: number): boolean {
  const padded2 = String(epNum).padStart(2, "0");
  const padded3 = String(epNum).padStart(3, "0");
  const decoded = decodeURIComponent(link).toLowerCase();
  const raw = link.toLowerCase();
  return (
    decoded.includes(`-${padded2}-`) || decoded.includes(`-${padded3}-`) ||
    decoded.includes(`-${epNum}-`) ||
    raw.includes(`-${padded2}-`) || raw.includes(`-${padded3}-`) ||
    raw.includes(`-${epNum}-`) ||
    raw.includes(`-%d8%a7%d9%84%d8%ad%d9%84%d9%82%d8%a9-${padded2}-`) ||
    raw.includes(`-%d8%a7%d9%84%d8%ad%d9%84%d9%82%d8%a9-${padded3}-`) ||
    raw.includes(`-%d8%a7%d9%84%d8%ad%d9%84%d9%82%d8%a9-${epNum}-`)
  );
}

/** Extract unique episode links from seasons page HTML */
function extractEpLinks(html: string): string[] {
  const seen = new Set<string>();
  const links: string[] = [];
  // Match both /episodes/ and /episodeses/ URL schemes
  for (const m of html.matchAll(/href="(https?:\/\/shahiid-anime\.net\/episodes(?:es)?\/[^"]+)"/gi)) {
    if (!seen.has(m[1])) { seen.add(m[1]); links.push(m[1]); }
  }
  return links;
}

/** Load more episodes via WordPress misha_loadmore AJAX */
async function shahiidLoadMore(html: string, seasonsUrl: string, page: number): Promise<string[]> {
  try {
    const nonceM = html.match(/["']misha_nonce["']\s*:\s*["']([a-f0-9]+)["']/i);
    const queryM = html.match(/["']query["']\s*:\s*(\{[\s\S]*?\})\s*,\s*["'](?:current_page|page|nonce)/);
    if (!nonceM) return [];
    const nonce = nonceM[1];
    const query = queryM ? queryM[1] : "{}";
    const fd = new URLSearchParams({
      action: "misha_loadmore",
      nonce,
      page: String(page),
      query,
    });
    const r = await fetch(`${SHAHIID_BASE}/wp-admin/admin-ajax.php`, {
      method: "POST",
      headers: { ...SHAHIID_HDRS, "Content-Type": "application/x-www-form-urlencoded", "X-Requested-With": "XMLHttpRequest", Referer: seasonsUrl },
      body: fd.toString(),
      signal: AbortSignal.timeout(10000),
    });
    if (!r.ok) return [];
    const moreHtml = await r.text();
    if (!moreHtml || moreHtml.trim() === "0" || moreHtml.trim() === "-1") return [];
    return extractEpLinks(moreHtml);
  } catch { return []; }
}

/** Find the correct episode page URL from the seasons listing */
async function findShahiidEpisodeUrl(seasonsUrl: string, epNum: number): Promise<string | null> {
  const epCacheKey = `${seasonsUrl}:${epNum}`;
  const cached = shahiidEpUrlCache.get(epCacheKey);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.url;

  const padded2 = String(epNum).padStart(2, "0");

  // Fetch the seasons page (initial load)
  try {
    const r = await fetch(seasonsUrl, {
      headers: SHAHIID_HDRS,
      signal: AbortSignal.timeout(12000),
      redirect: "follow",
    });
    if (!r.ok) { shahiidEpUrlCache.set(epCacheKey, { url: null, ts: Date.now() }); return null; }
    const html = await r.text();
    if (isCloudflareBlock(html)) { shahiidEpUrlCache.set(epCacheKey, { url: null, ts: Date.now() }); return null; }

    let links = extractEpLinks(html);

    // ── Special case: seasonses/?serie=ID page lists sub-season pages, not episodes ──
    // Fetch all sub-season pages in parallel and merge their episode links
    if (!links.length && seasonsUrl.includes("seasonses") && seasonsUrl.includes("serie=")) {
      const subUrls = [...html.matchAll(/href="(https?:\/\/shahiid-anime\.net\/seasonses\/[^?#"][^"]+\/?)"/gi)]
        .map(m => m[1]).filter((u, i, a) => a.indexOf(u) === i).slice(0, 10);
      if (subUrls.length) {
        const subResults = await Promise.allSettled(subUrls.map(async (subUrl) => {
          const r2 = await fetch(subUrl, { headers: SHAHIID_HDRS, signal: AbortSignal.timeout(8000), redirect: "follow" });
          if (!r2.ok) return [] as string[];
          const h2 = await r2.text();
          return isCloudflareBlock(h2) ? [] as string[] : extractEpLinks(h2);
        }));
        for (const res of subResults) {
          if (res.status === "fulfilled" && res.value.length) links = [...links, ...res.value];
        }
      }
    }

    // If episode not found in initial load AND we might need more pages, try loadmore
    const needsMore = !links.some(l => epNumInSlug(l, epNum));
    if (needsMore && links.length > 0) {
      // Try page 2 and 3 via misha_loadmore
      for (let page = 2; page <= 3; page++) {
        const moreLinks = await shahiidLoadMore(html, seasonsUrl, page);
        if (!moreLinks.length) break;
        links = [...links, ...moreLinks];
        if (links.some(l => epNumInSlug(l, epNum))) break;
      }
    }

    if (!links.length) { shahiidEpUrlCache.set(epCacheKey, { url: null, ts: Date.now() }); return null; }

    // Search by episode number in URL slug
    for (const link of links) {
      if (epNumInSlug(link, epNum)) {
        shahiidEpUrlCache.set(epCacheKey, { url: link, ts: Date.now() });
        return link;
      }
    }

    // Try to construct URL from template using first episode as reference
    for (const sample of links.slice(0, 3)) {
      const firstDecoded = decodeURIComponent(sample);
      // Match both /episodes/ (old) and /episodeses/ (new URL scheme)
      const tmpl = firstDecoded.match(/\/episodeses?\/(.+?)-(?:الحلقة|%d8%a7%d9%84%d8%ad%d9%84%d9%82%d8%a9)-(\d+)(?:-(.+))?\//i);
      if (!tmpl) continue;
      const [, seriesBase, , suffix] = tmpl;
      // Detect which scheme the sample uses and replicate it
      const epScheme = firstDecoded.includes("/episodeses/") ? "episodeses" : "episodes";
      const epFormatted = epNum < 10 ? padded2 : String(epNum);
      const epEncoded = encodeURIComponent("الحلقة");
      const candidates: string[] = [];
      if (suffix) {
        candidates.push(`${SHAHIID_BASE}/${epScheme}/${encodeURIComponent(seriesBase)}-${epEncoded}-${epFormatted}-${encodeURIComponent(suffix)}/`);
        candidates.push(`${SHAHIID_BASE}/${epScheme}/${seriesBase}-${epEncoded}-${epFormatted}-${suffix}/`);
      }
      candidates.push(`${SHAHIID_BASE}/${epScheme}/${encodeURIComponent(seriesBase)}-${epEncoded}-${epFormatted}/`);
      for (const candidateUrl of candidates) {
        const status = await safeHead(candidateUrl, SHAHIID_HDRS);
        if (status === 200 || status === 301 || status === 302) {
          shahiidEpUrlCache.set(epCacheKey, { url: candidateUrl, ts: Date.now() });
          return candidateUrl;
        }
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

// ── Playwright / Browser-based page loader & video interceptor ───────────
const CHROMIUM_EXEC: string = (() => {
  try {
    const p = execSync(
      "which chromium-browser 2>/dev/null || which chromium 2>/dev/null",
      { timeout: 3000 },
    ).toString().trim().split("\n")[0];
    return p || "";
  } catch { return ""; }
})();

const BROWSER_LAUNCH_ARGS = [
  "--no-sandbox", "--disable-setuid-sandbox", "--disable-dev-shm-usage",
  "--disable-gpu", "--disable-blink-features=AutomationControlled", "--headless=new",
];

interface BrowserFetchResult { html: string; videoUrl?: string; videoType?: "hls" | "mp4"; }

async function browserFetch(
  pageUrl: string,
  opts: { interceptVideo?: boolean; waitMs?: number; waitUntil?: "load" | "domcontentloaded" | "networkidle" } = {},
): Promise<BrowserFetchResult> {
  if (!CHROMIUM_EXEC) return { html: "" };
  const { interceptVideo = false, waitMs = 0, waitUntil = "networkidle" } = opts;
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  let browser: any = null;
  try {
    // playwright-core is externalized in esbuild — loaded from node_modules at runtime
    // eslint-disable-next-line @typescript-eslint/no-explicit-any
    const pw: any = await import("playwright-core");
    browser = await pw.chromium.launch({ executablePath: CHROMIUM_EXEC, args: BROWSER_LAUNCH_ARGS, headless: true });
    const ctx = await browser.newContext({
      userAgent: BROWSER_UA,
      viewport: { width: 1280, height: 720 },
      locale: "ar-SA",
    });
    const page = await ctx.newPage();
    await page.addInitScript(() => {
      Object.defineProperty(navigator, "webdriver", { get: () => undefined });
    });

    let videoUrl: string | undefined;
    let videoType: "hls" | "mp4" = "hls";
    if (interceptVideo) {
      page.on("request", (req: any) => {
        if (videoUrl) return;
        const u: string = req.url();
        if (u.includes(".m3u8") && !u.includes("thumb") && !u.includes("segment")) {
          videoUrl = u; videoType = "hls";
        } else if (u.match(/\.mp4(\?|$)/i) && u.length < 500 && !u.includes("thumb")) {
          videoUrl = u; videoType = "mp4";
        }
      });
    }

    await page.goto(pageUrl, { waitUntil, timeout: 25000 }).catch(() => {});
    if (waitMs > 0) await page.waitForTimeout(waitMs).catch(() => {});
    if (interceptVideo && !videoUrl) await page.waitForTimeout(4000).catch(() => {});

    const html = await page.content().catch(() => "");
    return { html, videoUrl, videoType };
  } catch { return { html: "" }; }
  finally { try { await browser?.close(); } catch {} }
}

// ── witanime.cyou — Arabic anime scraper (Playwright) ────────────────────
const WITA_BASE = "https://witanime.cyou";
const witaSlugCache = new Map<string, { slug: string | null; ts: number }>();
const witaSrcCache  = new Map<string, { sources: UnifiedSource[]; ts: number }>();

async function getWitanimeSources(title: string, english: string | null, ep: number): Promise<UnifiedSource[]> {
  if (!CHROMIUM_EXEC) return [];
  const ck = `wita:${(title + "|" + (english || "")).toLowerCase()}:${ep}`;
  const hit = witaSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;

  try {
    // Step 1: search page (browser to bypass Cloudflare JS challenge)
    const searchQ = encodeURIComponent(english || title);
    const slugCk = (title + "|" + (english || "")).toLowerCase();
    const slugHit = witaSlugCache.get(slugCk);
    let slug: string | null = slugHit && Date.now() - slugHit.ts < SRC_TTL ? slugHit.slug : undefined as unknown as string | null;

    if (slug === undefined) {
      const { html: searchHtml } = await browserFetch(`${WITA_BASE}/?s=${searchQ}`, { waitUntil: "networkidle", waitMs: 3000 });
      if (!searchHtml || isCloudflareBlock(searchHtml)) {
        witaSlugCache.set(slugCk, { slug: null, ts: Date.now() });
        return [];
      }
      let bestSlug: string | null = null, bestScore = 0;
      const re = /href="https?:\/\/witanime\.(?:cyou|live|pw|vip|site)\/anime\/([^/"?]+)\/?"/gi;
      for (const m of searchHtml.matchAll(re)) {
        const s = m[1];
        const label = s.replace(/-/g, " ");
        const score = Math.max(similarity(label, title), english ? similarity(label, english) : 0);
        if (score > bestScore) { bestScore = score; bestSlug = s; }
      }
      slug = bestSlug && bestScore > 0.3 ? bestSlug : null;
      witaSlugCache.set(slugCk, { slug, ts: Date.now() });
    }
    if (!slug) return [];

    // Step 2: episode page
    const epPad = String(ep).padStart(2, "0");
    const epUrls = [
      `${WITA_BASE}/episode/${slug}-episode-${ep}/`,
      `${WITA_BASE}/episode/${slug}-episode-${epPad}/`,
      `${WITA_BASE}/${slug}-episode-${ep}/`,
    ];

    for (const epUrl of epUrls) {
      const { html: epHtml, videoUrl, videoType } = await browserFetch(epUrl, { interceptVideo: true, waitUntil: "networkidle", waitMs: 2000 });
      if (!epHtml) continue;

      // If we intercepted a direct video URL, use it
      if (videoUrl) {
        const proxied = videoType === "hls"
          ? `/api/anime/hls-proxy?url=${encodeURIComponent(videoUrl)}&ref=${encodeURIComponent(epUrl)}`
          : videoUrl;
        const srcs: UnifiedSource[] = [{
          name: "Witanime · مباشر",
          url: videoUrl,
          quality: "HD",
          qualityRank: 3,
          site: "witanime",
          directUrl: proxied,
          directType: videoType,
        }];
        witaSrcCache.set(ck, { sources: srcs, ts: Date.now() });
        return srcs;
      }

      // Otherwise parse iframe embed URLs from the HTML
      const sources: UnifiedSource[] = [];
      const seen = new Set<string>();
      for (const m of epHtml.matchAll(/<iframe[^>]+src=["']([^"']+)["'][^>]*/gi)) {
        let u = m[1].trim();
        if (u.startsWith("//")) u = "https:" + u;
        if (!u.startsWith("http")) continue;
        if (DEAD_FILE_HOSTS.some(h => u.includes(h))) continue;
        if (seen.has(u)) continue; seen.add(u);
        sources.push({ name: "Witanime · سيرفر", url: u, quality: "HD", qualityRank: 2, site: "witanime" });
      }
      if (sources.length) {
        witaSrcCache.set(ck, { sources, ts: Date.now() });
        return sources;
      }
    }

    return [];
  } catch { return []; }
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

    // 2. If no embeds, fetch the series page to find exact episode URLs
    //    AnimeGG episode URLs have numeric IDs: /slug-episode-13-3618-5569
    //    We must find the full URL for the target episode, not just guess the prefix
    if (!embedIds.length) {
      try {
        const sr = await fetch(seriesUrl, {
          headers: AGG_HDRS,
          signal: AbortSignal.timeout(8000),
          redirect: "follow",
        });
        if (sr.ok) {
          const sHtml = await sr.text();

          // Extract ALL episode URLs with their numeric ID suffixes
          // Pattern: href="/some-slug-episode-13-3618-5569" (episode num is first number after -episode-)
          const epUrlMap = new Map<number, string>();
          for (const m of sHtml.matchAll(/href="(\/[a-z0-9-]+-episode-(\d+)(?:-\d+)*)"/gi)) {
            const fullPath = m[1].split("#")[0]; // strip #subbed etc
            const epNum = parseInt(m[2], 10);
            if (!isNaN(epNum) && !epUrlMap.has(epNum)) {
              epUrlMap.set(epNum, `${AGG_BASE}${fullPath}`);
            }
          }

          // Try exact episode URL from the map
          const targetUrl = epUrlMap.get(ep);
          if (targetUrl) {
            embedIds = await fetchAnimeGGEmbedIds(targetUrl, seriesUrl);
          }

          // If still nothing, try the first episode's prefix as reference
          if (!embedIds.length && epUrlMap.size > 0) {
            const seen = new Set<string>([slug]);
            for (const [, fullUrl] of epUrlMap) {
              const m = fullUrl.match(/\/([a-z0-9-]+)-episode-\d/);
              if (m && !seen.has(m[1])) seen.add(m[1]);
            }
            for (const prefix of seen) {
              if (prefix === slug) continue;
              embedIds = await fetchAnimeGGEmbedIds(`${AGG_BASE}/${prefix}-episode-${ep}`, seriesUrl);
              if (embedIds.length) break;
            }
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
      let quality = "480p";
      let qualityRank = 2; // treated as HD-tier for sorting purposes

      try {
        const er = await fetch(embedUrl, {
          headers: { ...AGG_HDRS, Referer: epRef },
          signal: AbortSignal.timeout(10000),
        });
        if (er.ok) {
          const eHtml = await er.text();
          const parsed = parseAnimeGGEmbed(eHtml);
          if (parsed) {
            directUrl = parsed.url;
            directType = parsed.type;
            // Detect quality from videoSources label
            const vsM = eHtml.match(/var\s+videoSources\s*=\s*(\[[\s\S]*?\]);/);
            if (vsM) {
              try {
                const raw = vsM[1]
                  .replace(/([{,]\s*)([a-zA-Z_$][a-zA-Z0-9_$]*)\s*:/g, '$1"$2":')
                  .replace(/'/g, '"');
                const arr = JSON.parse(raw) as Array<{ file?: string; label?: string }>;
                const lbl = (arr.find(s => s.label)?.label || "").toLowerCase();
                if (lbl.includes("1080")) { quality = "1080p"; qualityRank = 3; }
                else if (lbl.includes("720")) { quality = "720p"; qualityRank = 2; }
                else if (lbl.includes("480")) { quality = "480p"; /* keep qualityRank=2 */ }
                else if (lbl.includes("360")) { quality = "360p"; /* keep qualityRank=2 */ }
              } catch {}
            }
          }
        }
      } catch {}

      sources.push({
        name: `AnimeGG · ${LABELS[idx] ?? `سيرفر ${idx + 1}`}`,
        url: embedUrl,
        quality,
        qualityRank,
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
//  AllAnime — episode VIDEO sources (server-side decode)
// ════════════════════════════════════════════════════════════════════

const AA_EP_SRC_Q = `
query ($showId: String!, $episodeString: String!, $type: VaildTranslationTypeEnumType!) {
  episode(showId: $showId, episodeString: $episodeString, translationType: $type) {
    sourceUrls
  }
}`;

function decodeAaUrl(raw: string): string {
  try {
    if (raw.startsWith("--")) {
      const b = raw.slice(2).replace(/-/g, "=");
      return Buffer.from(b, "base64").toString("utf-8");
    }
    if (/^[A-Za-z0-9+/=]{20,}$/.test(raw)) {
      return Buffer.from(raw, "base64").toString("utf-8");
    }
  } catch {}
  return raw;
}

const aaSrcCache = new Map<string, { sources: UnifiedSource[]; ts: number }>();

async function getAllAnimeSources(
  title: string, english: string | null, ep: number,
): Promise<UnifiedSource[]> {
  const ck = `aa-src:${(title + "|" + (english || "")).toLowerCase()}:${ep}`;
  const hit = aaSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;

  try {
    const resolved = await resolveTitle([english, title].filter(Boolean) as string[]);
    if (!resolved) return [];
    const showId = resolved.show._id;

    let d: any;
    try { d = await aaGql(AA_EP_SRC_Q, { showId, episodeString: String(ep), type: "sub" }); }
    catch { return []; }

    const raw = d?.data?.episode?.sourceUrls;
    if (!raw) return [];

    let srcs: any[] = [];
    if (Array.isArray(raw)) srcs = raw;
    else if (typeof raw === "string") { try { srcs = JSON.parse(raw); } catch {} }

    const sources: UnifiedSource[] = [];
    for (const s of srcs) {
      try {
        const url = decodeAaUrl(String(s.url || ""));
        if (!url || !url.startsWith("http")) continue;
        if (url.includes("ssbcontent") || url.includes("localhost") || url.includes("allanime.to")) continue;
        const name = String(s.sourceName || "سيرفر");
        const isM3u8 = url.includes(".m3u8");
        const isMp4  = url.includes(".mp4");
        sources.push({
          name: `AllAnime · ${name}`,
          url,
          quality: "HD",
          qualityRank: 2,
          site: "allanime",
          ...(isM3u8 ? { directUrl: url, directType: "hls" as const } :
              isMp4  ? { directUrl: url, directType: "mp4" as const } : {}),
        });
      } catch {}
    }

    if (sources.length) aaSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  ANIME4UP.INFO scraper
//  Search: GET /?s={query}  →  /anime/{slug}/
//  Episode: /watch/{slug}-episode-{N}/
//  Servers: iframe src extracted from episode page
// ════════════════════════════════════════════════════════════════════

const A4UP_BASE = "https://anime4up.info";
const A4UP_HDRS: Record<string, string> = { ...BASE_HDRS, Referer: "https://anime4up.info/" };
const a4upSlugCache = new Map<string, { slug: string | null; ts: number }>();
const a4upSrcCache  = new Map<string, { sources: UnifiedSource[]; ts: number }>();

async function searchAnime4up(title: string, english: string | null): Promise<string | null> {
  const ck = (title + "|" + (english || "")).toLowerCase();
  const hit = a4upSlugCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.slug;

  for (const q of [english, title].filter(Boolean) as string[]) {
    try {
      const r = await fetch(`${A4UP_BASE}/?s=${encodeURIComponent(q)}`, {
        headers: A4UP_HDRS, signal: AbortSignal.timeout(8000), redirect: "follow",
      });
      if (!r.ok) continue;
      const html = await r.text();
      if (isCloudflareBlock(html)) continue;

      let bestSlug: string | null = null, bestScore = 0;
      const re = /href="https?:\/\/anime4up\.(?:info|cam|tv|io|net|live)\/anime\/([^/"]+)\/?"/gi;
      for (const m of html.matchAll(re)) {
        const slug = m[1];
        const label = slug.replace(/-/g, " ");
        const score = Math.max(similarity(label, title), english ? similarity(label, english) : 0);
        if (score > bestScore) { bestScore = score; bestSlug = slug; }
      }
      if (bestSlug && bestScore > 0.3) {
        a4upSlugCache.set(ck, { slug: bestSlug, ts: Date.now() });
        return bestSlug;
      }
    } catch {}
  }
  a4upSlugCache.set(ck, { slug: null, ts: Date.now() });
  return null;
}

async function getAnime4upSources(
  title: string, english: string | null, ep: number,
): Promise<UnifiedSource[]> {
  const ck = `a4up:${(title + "|" + (english || "")).toLowerCase()}:${ep}`;
  const hit = a4upSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;

  try {
    const slug = await searchAnime4up(title, english);
    if (!slug) return [];

    const epPad = String(ep).padStart(2, "0");
    const epUrls = [
      `${A4UP_BASE}/watch/${slug}-episode-${ep}/`,
      `${A4UP_BASE}/watch/${slug}-episode-${epPad}/`,
      `${A4UP_BASE}/${slug}-episode-${ep}/`,
      `${A4UP_BASE}/episode/${slug}-episode-${ep}/`,
    ];

    let html = "";
    for (const epUrl of epUrls) {
      try {
        const r = await fetch(epUrl, {
          headers: { ...A4UP_HDRS, Referer: `${A4UP_BASE}/anime/${slug}/` },
          signal: AbortSignal.timeout(8000), redirect: "follow",
        });
        if (!r.ok || r.status === 404) continue;
        const text = await r.text();
        if (isCloudflareBlock(text) || /404|not.?found/i.test(text.slice(0, 2000))) continue;
        html = text; break;
      } catch {}
    }
    if (!html) return [];

    const sources: UnifiedSource[] = [];
    const seen = new Set<string>();
    for (const m of html.matchAll(/<iframe[^>]+src=["']([^"']+)["'][^>]*/gi)) {
      let u = m[1].trim();
      if (u.startsWith("//")) u = "https:" + u;
      if (!u.startsWith("http")) continue;
      if (DEAD_FILE_HOSTS.some(h => u.includes(h))) continue;
      if (u.includes("google") || u.includes("facebook") || u.includes("youtube")) continue;
      if (seen.has(u)) continue; seen.add(u);
      sources.push({ name: "Anime4up · سيرفر", url: u, quality: "HD", qualityRank: 2, site: "anime4up" });
    }

    if (sources.length) a4upSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  ANIMEPHOENIX.IO scraper
//  Search: GET /?s={query}  →  /anime/{slug}/
//  Episode: /{slug}-episode-{N}/  or  /anime/{slug}/episode-{N}/
// ════════════════════════════════════════════════════════════════════

const APH_BASE = "https://animephoenix.io";
const APH_HDRS: Record<string, string> = { ...BASE_HDRS, Referer: "https://animephoenix.io/" };
const aphSlugCache = new Map<string, { slug: string | null; ts: number }>();
const aphSrcCache  = new Map<string, { sources: UnifiedSource[]; ts: number }>();

async function searchAnimePhoenix(title: string, english: string | null): Promise<string | null> {
  const ck = (title + "|" + (english || "")).toLowerCase();
  const hit = aphSlugCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.slug;

  for (const q of [english, title].filter(Boolean) as string[]) {
    try {
      const r = await fetch(`${APH_BASE}/?s=${encodeURIComponent(q)}`, {
        headers: APH_HDRS, signal: AbortSignal.timeout(8000), redirect: "follow",
      });
      if (!r.ok) continue;
      const html = await r.text();
      if (isCloudflareBlock(html)) continue;

      let bestSlug: string | null = null, bestScore = 0;
      const re = /href="https?:\/\/animephoenix\.(?:io|com|net|tv)\/(?:anime\/)?([^/"?]+)\/?"/gi;
      for (const m of html.matchAll(re)) {
        const slug = m[1];
        if (["category","tag","page","wp-","feed","search"].some(x => slug.includes(x))) continue;
        const label = slug.replace(/-/g, " ");
        const score = Math.max(similarity(label, title), english ? similarity(label, english) : 0);
        if (score > bestScore) { bestScore = score; bestSlug = slug; }
      }
      if (bestSlug && bestScore > 0.3) {
        aphSlugCache.set(ck, { slug: bestSlug, ts: Date.now() });
        return bestSlug;
      }
    } catch {}
  }
  aphSlugCache.set(ck, { slug: null, ts: Date.now() });
  return null;
}

async function getAnimePhoenixSources(
  title: string, english: string | null, ep: number,
): Promise<UnifiedSource[]> {
  const ck = `aph:${(title + "|" + (english || "")).toLowerCase()}:${ep}`;
  const hit = aphSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;

  try {
    const slug = await searchAnimePhoenix(title, english);
    if (!slug) return [];

    const epUrls = [
      `${APH_BASE}/${slug}-episode-${ep}/`,
      `${APH_BASE}/anime/${slug}/episode-${ep}/`,
      `${APH_BASE}/${slug}/${ep}/`,
    ];

    let html = "";
    for (const epUrl of epUrls) {
      try {
        const r = await fetch(epUrl, {
          headers: { ...APH_HDRS, Referer: `${APH_BASE}/anime/${slug}/` },
          signal: AbortSignal.timeout(8000), redirect: "follow",
        });
        if (!r.ok || r.status === 404) continue;
        const text = await r.text();
        if (isCloudflareBlock(text) || /404|not.?found/i.test(text.slice(0, 2000))) continue;
        html = text; break;
      } catch {}
    }
    if (!html) return [];

    const sources: UnifiedSource[] = [];
    const seen = new Set<string>();
    for (const m of html.matchAll(/<iframe[^>]+src=["']([^"']+)["'][^>]*/gi)) {
      let u = m[1].trim();
      if (u.startsWith("//")) u = "https:" + u;
      if (!u.startsWith("http")) continue;
      if (DEAD_FILE_HOSTS.some(h => u.includes(h))) continue;
      if (u.includes("google") || u.includes("facebook") || u.includes("youtube")) continue;
      if (seen.has(u)) continue; seen.add(u);
      sources.push({ name: "AnimePhoenix · سيرفر", url: u, quality: "HD", qualityRank: 2, site: "animephoenix" });
    }

    if (sources.length) aphSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  MYANIME.FAN scraper
//  Search: GET /?s={query}  →  /anime/{slug}/
//  Episode: /{slug}-episode-{N}/
// ════════════════════════════════════════════════════════════════════

const MYA_BASE = "https://myanime.fan";
const MYA_HDRS: Record<string, string> = { ...BASE_HDRS, Referer: "https://myanime.fan/" };
const myaSlugCache = new Map<string, { slug: string | null; ts: number }>();
const myaSrcCache  = new Map<string, { sources: UnifiedSource[]; ts: number }>();

async function searchMyAnime(title: string, english: string | null): Promise<string | null> {
  const ck = (title + "|" + (english || "")).toLowerCase();
  const hit = myaSlugCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.slug;

  for (const q of [english, title].filter(Boolean) as string[]) {
    try {
      const r = await fetch(`${MYA_BASE}/?s=${encodeURIComponent(q)}`, {
        headers: MYA_HDRS, signal: AbortSignal.timeout(8000), redirect: "follow",
      });
      if (!r.ok) continue;
      const html = await r.text();
      if (isCloudflareBlock(html)) continue;

      let bestSlug: string | null = null, bestScore = 0;
      const re = /href="https?:\/\/myanime\.fan\/(?:anime\/|series\/)?([^/"?]+)\/?"/gi;
      for (const m of html.matchAll(re)) {
        const slug = m[1];
        if (["page","category","tag","wp-","feed","search"].some(x => slug.includes(x))) continue;
        const label = slug.replace(/-/g, " ");
        const score = Math.max(similarity(label, title), english ? similarity(label, english) : 0);
        if (score > bestScore) { bestScore = score; bestSlug = slug; }
      }
      if (bestSlug && bestScore > 0.3) {
        myaSlugCache.set(ck, { slug: bestSlug, ts: Date.now() });
        return bestSlug;
      }
    } catch {}
  }
  myaSlugCache.set(ck, { slug: null, ts: Date.now() });
  return null;
}

async function getMyAnimeSources(
  title: string, english: string | null, ep: number,
): Promise<UnifiedSource[]> {
  const ck = `mya:${(title + "|" + (english || "")).toLowerCase()}:${ep}`;
  const hit = myaSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;

  try {
    const slug = await searchMyAnime(title, english);
    if (!slug) return [];

    const epPad = String(ep).padStart(2, "0");
    const epUrls = [
      `${MYA_BASE}/${slug}-episode-${ep}/`,
      `${MYA_BASE}/${slug}-episode-${epPad}/`,
      `${MYA_BASE}/episode/${slug}-${ep}/`,
      `${MYA_BASE}/${slug}/${ep}/`,
    ];

    let html = "";
    for (const epUrl of epUrls) {
      try {
        const r = await fetch(epUrl, {
          headers: MYA_HDRS, signal: AbortSignal.timeout(8000), redirect: "follow",
        });
        if (!r.ok || r.status === 404) continue;
        const text = await r.text();
        if (isCloudflareBlock(text) || /404|not.?found/i.test(text.slice(0, 2000))) continue;
        html = text; break;
      } catch {}
    }
    if (!html) return [];

    const sources: UnifiedSource[] = [];
    const seen = new Set<string>();
    for (const m of html.matchAll(/<iframe[^>]+src=["']([^"']+)["'][^>]*/gi)) {
      let u = m[1].trim();
      if (u.startsWith("//")) u = "https:" + u;
      if (!u.startsWith("http")) continue;
      if (DEAD_FILE_HOSTS.some(h => u.includes(h))) continue;
      if (u.includes("google") || u.includes("facebook") || u.includes("youtube")) continue;
      if (seen.has(u)) continue; seen.add(u);
      sources.push({ name: "MyAnime · سيرفر", url: u, quality: "HD", qualityRank: 2, site: "myanime" });
    }

    if (sources.length) myaSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  ANIMEKAYAN.COM scraper  (JSON API)
//  Search: POST /api/search  →  GET /api/anime/{id}/episodes
// ════════════════════════════════════════════════════════════════════

const AKY_BASE = "https://animekayan.com";
const AKY_HDRS: Record<string, string> = {
  ...BASE_HDRS, Referer: "https://animekayan.com/",
  Accept: "application/json, text/html, */*",
};
const akySrcCache = new Map<string, { sources: UnifiedSource[]; ts: number }>();

async function getAnimeKayanSources(
  title: string, english: string | null, ep: number,
): Promise<UnifiedSource[]> {
  const ck = `aky:${(title + "|" + (english || "")).toLowerCase()}:${ep}`;
  const hit = akySrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;

  for (const q of [english, title].filter(Boolean) as string[]) {
    try {
      const sr = await fetch(`${AKY_BASE}/api/search`, {
        method: "POST",
        headers: { ...AKY_HDRS, "Content-Type": "application/json" },
        body: JSON.stringify({ q }),
        signal: AbortSignal.timeout(6000),
      });
      if (!sr.ok) continue;
      const data = await sr.json() as any;
      const results: any[] = data?.results || data?.data || [];
      if (!results.length) continue;

      let bestId: string | null = null, bestScore = 0;
      for (const res of results) {
        const rTitle = String(res.title || res.name || "");
        const score = Math.max(similarity(rTitle, title), english ? similarity(rTitle, english) : 0);
        if (score > bestScore) { bestScore = score; bestId = String(res.id || res.slug || ""); }
      }
      if (!bestId || bestScore < 0.25) continue;

      const er = await fetch(`${AKY_BASE}/api/anime/${bestId}/episodes`, {
        headers: AKY_HDRS, signal: AbortSignal.timeout(6000),
      });
      if (!er.ok) continue;
      const epData = await er.json() as any;
      const episodes: any[] = epData?.episodes || epData?.data || [];
      const episode = episodes.find((e: any) =>
        (e.number === ep) || (e.ep === ep) || (e.episode === ep)
      );
      if (!episode) continue;

      const srcArr: any[] = episode.sources || episode.servers || [];
      const sources: UnifiedSource[] = [];
      for (const src of srcArr) {
        const url = String(src.url || src.link || "");
        if (!url.startsWith("http")) continue;
        const isM3u8 = url.includes(".m3u8"), isMp4 = url.includes(".mp4");
        sources.push({
          name: `AnimeKayan · ${src.quality || "سيرفر"}`,
          url,
          quality: src.quality || "HD",
          qualityRank: qualityRank(src.quality || "HD"),
          site: "animekayan",
          ...(src.isDirect && isMp4  ? { directUrl: url, directType: "mp4" as const } : {}),
          ...(src.isDirect && isM3u8 ? { directUrl: url, directType: "hls" as const } : {}),
        });
      }
      if (sources.length) {
        akySrcCache.set(ck, { sources, ts: Date.now() });
        return sources;
      }
    } catch {}
  }
  return [];
}


// ════════════════════════════════════════════════════════════════════
//  ANIMELEK.TOP scraper  (Arabic anime — عربي مترجم)
//  Search: GET /?s={query}  →  /anime/{slug}/
//  Series: GET /anime/{slug}/ → episode links: /episode/{slug}-{N}-الحلقة/
//  Episode: GET /episode/.../ → <a data-embed="...?random={url}">
// ════════════════════════════════════════════════════════════════════

const ALK_BASE = "https://animelek.top";
const ALK_HDRS: Record<string, string> = { ...BASE_HDRS, Referer: "https://animelek.top/" };

const alkSlugCache = new Map<string, { slug: string | null; ts: number }>();
const alkSrcCache  = new Map<string, { sources: UnifiedSource[]; ts: number }>();

async function searchAnimelek(title: string, english: string | null): Promise<string | null> {
  const ck = (title + "|" + (english || "")).toLowerCase();
  const hit = alkSlugCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.slug;

  // Strategy 1: try direct slug from English or romanized title
  for (const q of [english, title].filter(Boolean) as string[]) {
    const slug = toSlug(q);
    try {
      const r = await fetch(`${ALK_BASE}/anime/${slug}/`, {
        headers: ALK_HDRS, signal: AbortSignal.timeout(6000), redirect: "follow",
      });
      if (r.ok) {
        const html = await r.text();
        if (!isCloudflareBlock(html) && html.includes("/episode/")) {
          alkSlugCache.set(ck, { slug, ts: Date.now() });
          return slug;
        }
      }
    } catch {}
  }

  // Strategy 2: search page (correct URL: /search/?search_term_string=)
  for (const q of [english, title].filter(Boolean) as string[]) {
    try {
      const r = await fetch(`${ALK_BASE}/search/?search_term_string=${encodeURIComponent(q)}`, {
        headers: ALK_HDRS, signal: AbortSignal.timeout(8000), redirect: "follow",
      });
      if (!r.ok) continue;
      const html = await r.text();
      if (isCloudflareBlock(html)) continue;
      let best: string | null = null, bestScore = 0;
      for (const m of html.matchAll(/href="https?:\/\/animelek\.top\/anime\/([^/"]+)\/?"/gi)) {
        const s = m[1];
        const label = s.replace(/-/g, " ");
        const score = Math.max(similarity(label, title), english ? similarity(label, english) : 0);
        if (score > bestScore && score > 0.3) { bestScore = score; best = s; }
      }
      if (best) {
        alkSlugCache.set(ck, { slug: best, ts: Date.now() });
        return best;
      }
    } catch {}
  }

  alkSlugCache.set(ck, { slug: null, ts: Date.now() });
  return null;
}

async function getAnimelekSources(
  title: string, english: string | null, ep: number,
): Promise<UnifiedSource[]> {
  const ck = `alk:${(title + "|" + (english || "")).toLowerCase()}:${ep}`;
  const hit = alkSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;

  try {
    const slug = await searchAnimelek(title, english);
    if (!slug) return [];

    const seriesUrl = `${ALK_BASE}/anime/${slug}/`;
    const sr = await fetch(seriesUrl, {
      headers: ALK_HDRS, signal: AbortSignal.timeout(8000), redirect: "follow",
    });
    if (!sr.ok) return [];
    const sHtml = await sr.text();

    // Find episode URL from series page listing
    // Pattern 1: /episode/{slug}-{N}-الحلقة/   (regular episode)
    // Pattern 2: /episode/{slug}-والاخيرة{N}-الحلقة/  (last episode of season)
    let epUrl: string | null = null;
    for (const m of sHtml.matchAll(/href="(https?:\/\/animelek\.top\/episode\/[^"]+)"/gi)) {
      const url = m[1];
      const decoded = decodeURIComponent(url);
      // Match: /slug-{N}-الحلقة/ or /slug-{N}-والاخيرة/
      const m1 = decoded.match(/[-](\d+)[-](?:والاخيرة|الحلقة)/);
      // Match: /slug-والاخيرة{N}-/
      const m2 = decoded.match(/والاخيرة(\d+)[-]/);
      const num = parseInt((m2?.[1] ?? m1?.[1]) || "");
      if (!isNaN(num) && num === ep) { epUrl = url; break; }
    }

    // Fallback: construct episode URL directly if not in series listing (long series / pagination)
    if (!epUrl) {
      const candidates = [
        `${ALK_BASE}/episode/${slug}-${ep}-%D8%A7%D9%84%D8%AD%D9%84%D9%82%D8%A9/`,
        `${ALK_BASE}/episode/${slug}-${ep}-الحلقة/`,
      ];
      for (const u of candidates) {
        try {
          const pr = await fetch(u, {
            headers: { ...ALK_HDRS, Referer: seriesUrl },
            signal: AbortSignal.timeout(6000), redirect: "follow",
          });
          if (pr.ok) { epUrl = u; break; }
        } catch {}
      }
    }
    if (!epUrl) return [];

    const er = await fetch(epUrl, {
      headers: { ...ALK_HDRS, Referer: seriesUrl },
      signal: AbortSignal.timeout(8000), redirect: "follow",
    });
    if (!er.ok) return [];
    const eHtml = await er.text();
    if (isCloudflareBlock(eHtml)) return [];

    // Extract servers: match <a ... data-embed="...?random=URL"> tags directly
    const sources: UnifiedSource[] = [];
    const seenHosts = new Set<string>();
    let idx = 0;
    for (const aM of eHtml.matchAll(/<a\b[^>]*\bdata-embed="([^"]*)"[^>]*>([\s\S]*?)<\/a>/gi)) {
      const embedAttr = aM[1];
      const innerHtml = aM[2];
      // Extract URL from ?random= or &random= param, or use the attr directly
      const randM = embedAttr.match(/[?&]random=([^"&\s]+)/i);
      let rawUrl = randM ? randM[1] : embedAttr;
      try { rawUrl = decodeURIComponent(rawUrl); } catch {}
      rawUrl = rawUrl.replace(/&amp;/g, "&");
      if (!rawUrl.startsWith("http")) continue;
      if (DEAD_FILE_HOSTS.some(h => rawUrl.includes(h))) continue;
      const host = (rawUrl.split("/")[2] || "").replace(/^www\./, "");
      if (seenHosts.has(host)) continue; seenHosts.add(host);
      const nameM = innerHtml.match(/<span[^>]*class="[^"]*server[^"]*"[^>]*>([^<]+)<\/span>/i);
      const label = (nameM?.[1] || "").trim().replace(/\s*\|.*$/, "").trim();
      idx++;
      sources.push({
        name: `AnimeLek · ${label || `سيرفر ${idx}`}`,
        url: rawUrl,
        quality: "HD",
        qualityRank: 2,
        site: "animelek",
      });
    }

    if (sources.length) alkSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  ANIMEDAR.NET scraper  (Arabic anime — WordPress/animestream theme)
//  Search: GET /?s={query}  →  /{slug}/
//  Series page: /{slug}/ — <ul class="ul-server-position1"> per episode
//  Server: <li source="ani" type="{type}" data="{id}" quality-data="{q}">
//  URL builders per type: vidmoly, asnwish, streamwish, filemoon, vidhide, etc.
// ════════════════════════════════════════════════════════════════════

const ADAR_BASE = "https://animedar.net";
const ADAR_HDRS: Record<string, string> = {
  ...BASE_HDRS,
  Referer: "https://animedar.net/",
};

// Dead or unplayable types on animestream theme
const ADAR_DEAD_TYPES = new Set([
  "mega","4shared","drive","ok","okru","uqload","fembed","videa",
  "doodstream","dood","waaw","facebook","dailymotion",
]);

/** Build embed URL from animestream server type + data ID */
function buildAnimestreamEmbed(type: string, data: string): string | null {
  const t = type.toLowerCase().trim();
  const d = data.trim();
  if (!d || d.length < 3) return null;
  if (ADAR_DEAD_TYPES.has(t)) return null;
  switch (t) {
    case "vidmoly":     return `https://vidmoly.biz/embed-${d}.html`;
    case "asnwish":     return `https://asnwish.com/embed/${d}`;
    case "streamwish":  return `https://streamwish.to/e/${d}`;
    case "filemoon":    return `https://filemoon.sx/e/${d}`;
    case "vidhide":     return `https://vidhide.com/e/${d}`;
    case "vidhide2":    return `https://vidhide.com/e/${d}`;
    case "streamlare":  return `https://streamlare.com/v/${d}`;
    case "uptostream":  return `https://uptostream.com/${d}`;
    case "doodstream":  return null;
    case "mp4upload":   return null;
    case "uqload":      return null;
    default:
      // Generic fallback — try to build a best-guess URL
      if (d.startsWith("http")) return d;
      return null;
  }
}

/** Parse all episode server lists from series page HTML.
 *  Returns an array where index 0 = episode 1, index 1 = episode 2, etc.
 *  Each entry is an array of { type, data, quality } server buttons.
 */
function parseAnimadarServers(
  html: string,
): Array<Array<{ type: string; data: string; quality: string }>> {
  const episodes: Array<Array<{ type: string; data: string; quality: string }>> = [];
  const ulRe = /<ul\s+class="ul-server-position\d+"[^>]*>([\s\S]*?)<\/ul>/gi;
  for (const ulM of html.matchAll(ulRe)) {
    const ulHtml = ulM[1];
    const servers: Array<{ type: string; data: string; quality: string }> = [];
    for (const liM of ulHtml.matchAll(/<li\b([^>]+)>/gi)) {
      const attrs = liM[1];
      // Only pick server buttons (source="ani")
      if (!/source=["']ani["']/i.test(attrs)) continue;
      const type    = attrs.match(/\btype=["']([^"']+)["']/)?.[1]         || "";
      const data    = attrs.match(/\bdata=["']([^"']+)["']/)?.[1]         || "";
      const quality = attrs.match(/\bquality-data=["']([^"']+)["']/)?.[1] || "HD";
      if (type && data && data.length >= 3) servers.push({ type, data, quality });
    }
    if (servers.length) episodes.push(servers);
  }
  return episodes;
}

/** Search animedar.net for a series page URL matching the title.
 *  Animedar uses WordPress article cards: each <article> has a href then
 *  an <h2 itemprop="headline"> with the display title we compare against.
 */
async function searchAnimedar(title: string, english: string | null): Promise<string | null> {
  const ck = (title + "|" + (english || "")).toLowerCase();
  const hit = adarSlugCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.url;

  const SKIP_SLUGS = ["feed/", "wp-", "/page/", "genre/", "cast/", "tag/", "category/",
    "dmca", "contact", "about", "privacy", "xmlrpc", "wp-json"];

  for (const q of [english, title].filter(Boolean) as string[]) {
    try {
      const r = await fetch(`${ADAR_BASE}/?s=${encodeURIComponent(q)}`, {
        headers: ADAR_HDRS,
        signal: AbortSignal.timeout(10000),
        redirect: "follow",
      });
      if (!r.ok) continue;
      const html = await r.text();
      if (isCloudflareBlock(html)) continue;

      let best: string | null = null;
      let bestScore = 0;

      // Animedar article structure:
      //   <a href="{URL}" itemprop="url" title="{DISPLAY_TITLE}" ...>
      // Use itemprop="url" anchor to reliably pair href + title in one regex.
      const anchorRe = /<a\s+href="(https?:\/\/animedar\.net\/([^"#?]+))"[^>]*itemprop="url"[^>]*title="([^"]+)"/gi;
      for (const m of html.matchAll(anchorRe)) {
        const url   = m[1];
        const slug  = m[2];
        const label = m[3].replace(/&amp;/g, "&").replace(/&#\d+;/g, "").replace(/&[a-z]+;/g, " ").trim();
        if (SKIP_SLUGS.some(s => slug.includes(s))) continue;
        const score = Math.max(
          similarity(label, title),
          english ? similarity(label, english) : 0,
        );
        if (score > bestScore && score > 0.2) { bestScore = score; best = url.replace(/\/?$/, "/"); }
      }

      if (best && bestScore > 0.28) {
        adarSlugCache.set(ck, { url: best, ts: Date.now() });
        return best;
      }
    } catch {}
  }

  adarSlugCache.set(ck, { url: null, ts: Date.now() });
  return null;
}

/** Get video sources for a given title + episode from animedar.net */
async function getAnimadarSources(
  title: string, english: string | null, ep: number,
): Promise<UnifiedSource[]> {
  const ck = `adar:${(title + "|" + (english || "")).toLowerCase()}:${ep}`;
  const hit = adarSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;

  try {
    const seriesUrl = await searchAnimedar(title, english);
    if (!seriesUrl) return [];

    const r = await fetch(seriesUrl, {
      headers: ADAR_HDRS,
      signal: AbortSignal.timeout(14000),
      redirect: "follow",
    });
    if (!r.ok) return [];
    const html = await r.text();
    if (isCloudflareBlock(html)) return [];

    // Parse all episode server lists
    const allEpisodes = parseAnimadarServers(html);
    if (!allEpisodes.length) return [];

    // Determine if ordering is ascending (ep1 first) or descending (latest first).
    // Animestream themes sometimes show newest episode at index 0.
    // We check the IDs in the episode selector (#EpList) for order clues:
    // e.g. <div class="CSB" id="IDSB1">الحلقة 1</div>  → ascending
    //      <div class="CSB" id="IDSB1">الحلقة 12</div> → descending
    let epIndex = ep - 1; // default: ascending (ep1 = index 0)
    const firstEpLabel = html.match(/id=["']IDSB1["'][^>]*>([\s\S]*?)<\/div>/i)?.[1] || "";
    const firstEpNum   = parseInt(firstEpLabel.replace(/\D/g, ""));
    if (!isNaN(firstEpNum) && firstEpNum > 1) {
      // Descending order: episode N is at index (firstEpNum - ep)
      epIndex = firstEpNum - ep;
    }

    if (epIndex < 0 || epIndex >= allEpisodes.length) {
      adarSrcCache.set(ck, { sources: [], ts: Date.now() });
      return [];
    }

    const servers = allEpisodes[epIndex];
    const sources: UnifiedSource[] = [];

    for (const { type, data, quality } of servers) {
      const embedUrl = buildAnimestreamEmbed(type, data);
      if (!embedUrl) continue;
      const qRank = quality.toUpperCase().includes("FHD") ? 3
                  : quality.toUpperCase().includes("HD")  ? 2 : 1;
      sources.push({
        name: `AnimeDar · ${type.toUpperCase()} · ${quality}`,
        url: embedUrl,
        quality,
        qualityRank: qRank,
        site: "animedar",
      });
    }

    if (sources.length) adarSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  GENERIC ANIMESTREAM-THEME SCRAPER
//  Re-usable for any WordPress/animestream site (same ul-server-position theme):
//    animeiat.net  ·  anime3rb.com  ·  goldenanimaniac.com  ·  animeback.net
// ════════════════════════════════════════════════════════════════════

interface AnimestreamSiteConfig {
  base: string;
  key: string;
  name: string;
  searchPath?: string;
}

const genericAstreamSlugCache = new Map<string, { url: string | null; ts: number }>();
const genericAstreamSrcCache  = new Map<string, { sources: UnifiedSource[]; ts: number }>();

async function searchGenericAnimestream(
  cfg: AnimestreamSiteConfig, title: string, english: string | null,
): Promise<string | null> {
  const ck = `${cfg.key}:search:${(title + "|" + (english || "")).toLowerCase()}`;
  const hit = genericAstreamSlugCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.url;

  const SKIP = ["feed/","wp-","tag/","category/","page/","dmca","contact","about","privacy"];
  const searchPath = cfg.searchPath || "/?s=";

  for (const q of [english, title].filter(Boolean) as string[]) {
    try {
      const r = await fetch(`${cfg.base}${searchPath}${encodeURIComponent(q)}`, {
        headers: { ...BASE_HDRS, Referer: `${cfg.base}/` },
        signal: AbortSignal.timeout(10000), redirect: "follow",
      });
      if (!r.ok) continue;
      const html = await r.text();
      if (isCloudflareBlock(html)) continue;

      let best: string | null = null, bestScore = 0;
      const hostRe = cfg.base.replace(/https?:\/\//, "").replace(/\./g, "\\.");
      const re = new RegExp(`href="(https?:\\/\\/${hostRe}\\/([^"#?/]+)\\/?)"[^>]*(?:title|class)="([^"]*)"`, "gi");
      for (const m of html.matchAll(re)) {
        const url   = m[1];
        const slug  = m[2];
        const label = (m[3] || slug).replace(/-/g, " ").replace(/&[a-z]+;/g, " ").trim();
        if (SKIP.some(s => slug.includes(s))) continue;
        if (slug.length < 4) continue;
        const score = Math.max(similarity(label, title), english ? similarity(label, english) : 0);
        if (score > bestScore && score > 0.2) { bestScore = score; best = url.replace(/\/?$/, "/"); }
      }
      // Broader fallback — any internal link with reasonable similarity
      if (!best) {
        const re2 = new RegExp(`href="(https?:\\/\\/${hostRe}\\/([^"#?]+)\\/?)"`, "gi");
        for (const m of html.matchAll(re2)) {
          const url = m[1];
          const slug = m[2];
          if (SKIP.some(s => slug.includes(s))) continue;
          if (slug.split("/").length > 2) continue;
          const label = slug.replace(/[/-]/g, " ").trim();
          const score = Math.max(similarity(label, title), english ? similarity(label, english) : 0);
          if (score > bestScore && score > 0.28) { bestScore = score; best = url.replace(/\/?$/, "/"); }
        }
      }
      if (best && bestScore > 0.28) {
        genericAstreamSlugCache.set(ck, { url: best, ts: Date.now() });
        return best;
      }
    } catch {}
  }

  genericAstreamSlugCache.set(ck, { url: null, ts: Date.now() });
  return null;
}

async function getGenericAnimestreamSources(
  cfg: AnimestreamSiteConfig, title: string, english: string | null, ep: number,
): Promise<UnifiedSource[]> {
  const ck = `${cfg.key}:${(title + "|" + (english || "")).toLowerCase()}:${ep}`;
  const hit = genericAstreamSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;

  try {
    const seriesUrl = await searchGenericAnimestream(cfg, title, english);
    if (!seriesUrl) return [];

    const r = await fetch(seriesUrl, {
      headers: { ...BASE_HDRS, Referer: `${cfg.base}/` },
      signal: AbortSignal.timeout(14000), redirect: "follow",
    });
    if (!r.ok) return [];
    const html = await r.text();
    if (isCloudflareBlock(html)) return [];

    const allEpisodes = parseAnimadarServers(html);
    if (!allEpisodes.length) return [];

    // Detect ascending vs descending order
    let epIndex = ep - 1;
    const firstEpLabel = html.match(/id=["']IDSB1["'][^>]*>([\s\S]*?)<\/div>/i)?.[1] || "";
    const firstEpNum   = parseInt(firstEpLabel.replace(/\D/g, ""));
    if (!isNaN(firstEpNum) && firstEpNum > 1) epIndex = firstEpNum - ep;

    if (epIndex < 0 || epIndex >= allEpisodes.length) return [];

    const servers = allEpisodes[epIndex];
    const sources: UnifiedSource[] = [];
    for (const { type, data, quality } of servers) {
      const embedUrl = buildAnimestreamEmbed(type, data);
      if (!embedUrl) continue;
      const qRank = quality.toUpperCase().includes("FHD") ? 3
                  : quality.toUpperCase().includes("HD")  ? 2 : 1;
      sources.push({
        name: `${cfg.name} · ${type.toUpperCase()} · ${quality}`,
        url: embedUrl, quality, qualityRank: qRank, site: cfg.key,
      });
    }

    if (sources.length) genericAstreamSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch { return []; }
}

// Predefined animestream sites
const ASTREAM_SITES: AnimestreamSiteConfig[] = [
  { base: "https://animeiat.net",        key: "animeiat",      name: "AnimeIat"      },
  { base: "https://anime3rb.com",        key: "anime3rb",      name: "Anime3rb"      },
  { base: "https://goldenanimaniac.com", key: "goldenanimaniac",name: "Golden"        },
];


// ════════════════════════════════════════════════════════════════════
//  ANIMEBLKOM.NET  (Arabic-dubbed — WordPress)
//  Search: /?s={query}  →  /anime/{slug}/
//  Episode: /anime/{slug}/episode-{N}/
//  Servers: <ul class="serversList"> <li data-id="..." data-server="..." ...>
// ════════════════════════════════════════════════════════════════════

const ABLK_BASE = "https://animeblkom.net";
const ablkSlugCache = new Map<string, { slug: string | null; ts: number }>();
const ablkSrcCache  = new Map<string, { sources: UnifiedSource[]; ts: number }>();

async function searchAnimeBlkom(title: string, english: string | null): Promise<string | null> {
  const ck = (title + "|" + (english || "")).toLowerCase();
  const hit = ablkSlugCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.slug;

  for (const q of [english, title].filter(Boolean) as string[]) {
    try {
      const r = await fetch(`${ABLK_BASE}/?s=${encodeURIComponent(q)}`, {
        headers: { ...BASE_HDRS, Referer: `${ABLK_BASE}/` },
        signal: AbortSignal.timeout(10000), redirect: "follow",
      });
      if (!r.ok) continue;
      const html = await r.text();
      if (isCloudflareBlock(html)) continue;

      let best: string | null = null, bestScore = 0;
      const re = /href="https?:\/\/animeblkom\.net\/(?:anime|series)\/([^/"]+)\/?"/gi;
      for (const m of html.matchAll(re)) {
        const slug  = m[1];
        const label = slug.replace(/-/g, " ");
        const score = Math.max(similarity(label, title), english ? similarity(label, english) : 0);
        if (score > bestScore) { bestScore = score; best = slug; }
      }
      if (best && bestScore > 0.28) {
        ablkSlugCache.set(ck, { slug: best, ts: Date.now() });
        return best;
      }
    } catch {}
  }
  ablkSlugCache.set(ck, { slug: null, ts: Date.now() });
  return null;
}

async function getAnimeBlkomSources(
  title: string, english: string | null, ep: number,
): Promise<UnifiedSource[]> {
  const ck = `ablk:${(title + "|" + (english || "")).toLowerCase()}:${ep}`;
  const hit = ablkSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;

  try {
    const slug = await searchAnimeBlkom(title, english);
    if (!slug) return [];

    const epPad = String(ep).padStart(2, "0");
    const epUrls = [
      `${ABLK_BASE}/anime/${slug}/episode-${ep}/`,
      `${ABLK_BASE}/anime/${slug}/episode-${epPad}/`,
      `${ABLK_BASE}/series/${slug}/episode-${ep}/`,
      `${ABLK_BASE}/${slug}-${ep}-episode/`,
      `${ABLK_BASE}/watch/${slug}-episode-${ep}/`,
    ];

    let html = "";
    for (const epUrl of epUrls) {
      try {
        const r = await fetch(epUrl, {
          headers: { ...BASE_HDRS, Referer: `${ABLK_BASE}/anime/${slug}/` },
          signal: AbortSignal.timeout(8000), redirect: "follow",
        });
        if (!r.ok) continue;
        const text = await r.text();
        if (isCloudflareBlock(text) || /404|not.?found/i.test(text.slice(0, 2000))) continue;
        html = text; break;
      } catch {}
    }
    if (!html) return [];

    const sources: UnifiedSource[] = [];
    const seen = new Set<string>();

    // AnimeBlkom uses iframes and data-embed attributes
    for (const m of html.matchAll(/<iframe[^>]+src=["']([^"']+)["'][^>]*/gi)) {
      let u = m[1].trim();
      if (u.startsWith("//")) u = "https:" + u;
      if (!u.startsWith("http")) continue;
      if (DEAD_FILE_HOSTS.some(h => u.includes(h))) continue;
      if (u.includes("google") || u.includes("facebook") || u.includes("youtube")) continue;
      const host = (u.split("/")[2] || "").replace(/^www\./, "");
      if (seen.has(host)) continue; seen.add(host);
      sources.push({ name: `Blkom · سيرفر`, url: u, quality: "HD", qualityRank: 2, site: "animeblkom" });
    }

    // Also try animestream-style ul-server-position
    const astreamSrcs = parseAnimadarServers(html);
    if (astreamSrcs.length > 0) {
      const epIndex = ep - 1;
      if (epIndex >= 0 && epIndex < astreamSrcs.length) {
        for (const { type, data, quality } of astreamSrcs[epIndex]) {
          const embedUrl = buildAnimestreamEmbed(type, data);
          if (!embedUrl || seen.has(embedUrl)) continue;
          seen.add(embedUrl);
          sources.push({ name: `Blkom · ${type.toUpperCase()}`, url: embedUrl, quality, qualityRank: 2, site: "animeblkom" });
        }
      }
    }

    if (sources.length) ablkSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  ANIMEPAHE.RU  direct scraper
//  Flow: search → get anime session → get ep session → play page → kwik.si
//  kwik.si embed → unpack p,a,c,k,e,d → extract m3u8 URL
// ════════════════════════════════════════════════════════════════════
// Animepahe: try multiple domains in case primary is down
const APAHE_DOMAINS = ["https://animepahe.ru", "https://animepahe.com", "https://animepahe.org"];
let apaheBase = APAHE_DOMAINS[0];

function makeApaheHdrs(base: string): Record<string, string> {
  return {
    "User-Agent": BROWSER_UA,
    "Accept": "application/json, text/html, */*",
    "Referer": `${base}/`,
    "Accept-Language": "en-US,en;q=0.9",
  };
}

const APAHE_TTL = 15 * 60 * 1000;
const apaheSessionMap = new Map<string, { session: string | null; ts: number }>();
const apaheEpMap      = new Map<string, { session: string | null; ts: number }>();

async function apaheFetch(path: string, opts: RequestInit = {}): Promise<Response | null> {
  for (const domain of APAHE_DOMAINS) {
    try {
      const hdrs = makeApaheHdrs(domain);
      const r = await fetch(`${domain}${path}`, {
        ...opts,
        headers: { ...hdrs, ...(opts.headers as Record<string,string> || {}) },
        signal: AbortSignal.timeout(10000),
        redirect: "follow",
      });
      if (r.ok) {
        apaheBase = domain;
        return r;
      }
    } catch {}
  }
  return null;
}

async function getAnimepaheSession(romaji: string, english: string | null): Promise<string | null> {
  const key = (english || romaji).toLowerCase().slice(0, 60);
  const cached = apaheSessionMap.get(key);
  if (cached && Date.now() - cached.ts < APAHE_TTL) return cached.session;
  try {
    const q = encodeURIComponent(english || romaji);
    const r = await apaheFetch(`/api?m=search&q=${q}`);
    if (!r) { apaheSessionMap.set(key, { session: null, ts: Date.now() }); return null; }
    const data = await r.json() as any;
    if (!data?.data?.length) { apaheSessionMap.set(key, { session: null, ts: Date.now() }); return null; }
    let best = data.data[0], bestScore = 0;
    for (const item of data.data) {
      const s = Math.max(similarity(item.title || "", romaji), similarity(item.title || "", english || ""));
      if (s > bestScore) { bestScore = s; best = item; }
    }
    const session: string | null = best.session || null;
    apaheSessionMap.set(key, { session, ts: Date.now() });
    return session;
  } catch { return null; }
}

async function getAnimepaheEpSession(animeSession: string, epNum: number): Promise<string | null> {
  const cacheKey = `${animeSession}:${epNum}`;
  const cached = apaheEpMap.get(cacheKey);
  if (cached && Date.now() - cached.ts < APAHE_TTL) return cached.session;
  try {
    for (let page = 1; page <= 15; page++) {
      const r = await apaheFetch(`/api?m=release&id=${animeSession}&sort=episode_asc&page=${page}`);
      if (!r) break;
      const data = await r.json() as any;
      if (!data?.data?.length) break;
      for (const ep of data.data) {
        if (ep.episode === epNum || ep.episode2 === epNum) {
          apaheEpMap.set(cacheKey, { session: ep.session, ts: Date.now() });
          return ep.session;
        }
      }
      const last = data.data[data.data.length - 1];
      if (last && last.episode > epNum + 2) break;
      if (!data.next_page_url) break;
    }
    apaheEpMap.set(cacheKey, { session: null, ts: Date.now() });
    return null;
  } catch { return null; }
}

async function extractKwik(kwikUrl: string): Promise<{ url: string; type: "hls" | "mp4" } | null> {
  try {
    const r = await fetch(kwikUrl.replace("/f/", "/e/"), {
      headers: { ...makeApaheHdrs(apaheBase), "Accept": "text/html,*/*" },
      signal: AbortSignal.timeout(12000),
      redirect: "follow",
    });
    if (!r.ok) return null;
    const html = await r.text();
    if (isCloudflareBlock(html)) return null;
    const unpacked = unpackPacked(html) || html;
    // Find m3u8
    const m3u8 = unpacked.match(/["'`](https?:\/\/[^"'`\s]+\.m3u8[^"'`\s]*?)["'`]/);
    if (m3u8) return { url: m3u8[1], type: "hls" };
    // Find mp4
    const mp4 = unpacked.match(/["'`](https?:\/\/[^"'`\s]+\.mp4[^"'`\s]*?)["'`]/);
    if (mp4) return { url: mp4[1], type: "mp4" };
    // Find source in JS
    const src = unpacked.match(/source\s*[=:]\s*["'](https?:\/\/[^"']+)["']/);
    if (src) { const t = src[1].includes(".m3u8") ? "hls" : "mp4"; return { url: src[1], type: t }; }
    return null;
  } catch { return null; }
}

async function getAnimepaheKwikUrls(animeSession: string, epSession: string): Promise<{ url: string; label: string }[]> {
  try {
    const r = await apaheFetch(`/play/${animeSession}/${epSession}`, {
      headers: { "Accept": "text/html,*/*" },
    });
    if (!r) return [];
    const html = await r.text();
    if (isCloudflareBlock(html)) return [];
    const kwiks: { url: string; label: string }[] = [];
    // Extract from data-src or href attributes
    const re1 = /data-(?:src|href)=["'](https?:\/\/kwik\.[a-z]+\/[ef]\/[A-Za-z0-9]+)["']/gi;
    for (const m of html.matchAll(re1)) {
      if (!kwiks.find(k => k.url === m[1])) kwiks.push({ url: m[1], label: "مترجم" });
    }
    // Extract from script content
    if (kwiks.length === 0) {
      const re2 = /https?:\/\/kwik\.[a-z]+\/[ef]\/[A-Za-z0-9]+/g;
      for (const m of html.matchAll(re2)) {
        const url = m[0].replace("/f/", "/e/");
        if (!kwiks.find(k => k.url === url)) kwiks.push({ url, label: "مترجم" });
      }
    }
    // Label multiples
    return kwiks.map((k, i) => ({ ...k, label: i === 0 ? "مترجم" : `مترجم ${i + 1}` }));
  } catch { return []; }
}

async function getAnimepaheSources(romaji: string, english: string | null, ep: number): Promise<UnifiedSource[]> {
  try {
    const animeSession = await getAnimepaheSession(romaji, english);
    if (!animeSession) return [];
    const epSession = await getAnimepaheEpSession(animeSession, ep);
    if (!epSession) return [];
    const kwikUrls = await getAnimepaheKwikUrls(animeSession, epSession);
    if (!kwikUrls.length) return [];
    const results: UnifiedSource[] = [];
    await Promise.allSettled(kwikUrls.slice(0, 3).map(async (kw, i) => {
      // Always add embed fallback first
      results.push({ name: `AnimePahe · ${kw.label}`, url: kw.url, quality: "HD", qualityRank: 2, site: "animapahe" });
      // Try direct extraction
      const extracted = await extractKwik(kw.url);
      if (extracted) {
        results.push({ name: `AnimePahe · ${kw.label} · مباشر`, url: kw.url, quality: "1080p", qualityRank: 3, site: "animapahe", directUrl: extracted.url, directType: extracted.type });
      }
    }));
    return results;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  BROWSER-BASED SCRAPER  (Playwright headless Chromium)
//  Used for CF-protected sites: witanime.cyou, eta.animerco.org, etc.
//  Intercepts network requests to capture direct m3u8/mp4 URLs.
// ════════════════════════════════════════════════════════════════════

const browserScrapeCache = new Map<string, { sources: UnifiedSource[]; ts: number }>();

async function getChromiumBrowser(): Promise<any | null> {
  const chromiumPath = getChromiumPath();
  if (!chromiumPath) return null;
  try {
    const { chromium } = await import("playwright-core");
    return chromium.launch({
      executablePath: chromiumPath,
      headless: true,
      args: [
        "--no-sandbox", "--disable-setuid-sandbox",
        "--disable-dev-shm-usage", "--disable-gpu",
        "--no-first-run", "--no-zygote", "--single-process",
        "--disable-extensions", "--disable-background-networking",
        "--disable-default-apps", "--disable-sync",
      ],
    });
  } catch { return null; }
}

async function browserScrapeEpisode(
  siteUrl: string,
  searchQuery: string,
  englishQuery: string | null,
  ep: number,
  siteName: string,
  siteKey: string,
  searchPath: (q: string) => string,
  seriesLinkPattern: RegExp,
  episodeLinkBuilder: (seriesHref: string, ep: number) => string[],
  waitMs = 8000,
): Promise<UnifiedSource[]> {
  const ck = `browser:${siteKey}:${(searchQuery + "|" + (englishQuery || "")).toLowerCase()}:${ep}`;
  const hit = browserScrapeCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;

  let browser: any = null;
  try {
    browser = await getChromiumBrowser();
    if (!browser) return [];

    const ctx  = await browser.newContext({ userAgent: BROWSER_UA, viewport: { width: 1280, height: 720 }, ignoreHTTPSErrors: true });
    const page = await ctx.newPage();

    const videoUrls: string[] = [];
    page.on("request", (r: any) => {
      const u: string = r.url();
      if ((u.includes(".m3u8") || u.includes(".mp4")) && !videoUrls.includes(u)) videoUrls.push(u);
    });

    let seriesUrl: string | null = null;
    const queries = [englishQuery, searchQuery].filter(Boolean) as string[];

    for (const q of queries) {
      if (seriesUrl) break;
      try {
        await page.goto(searchPath(q), { waitUntil: "domcontentloaded", timeout: 12000 });
        await page.waitForTimeout(1500);
        const html: string = await page.content();
        let bestHref = "", bestScore = 0;
        for (const m of html.matchAll(seriesLinkPattern)) {
          const href  = m[1];
          const label = (m[2] || href.replace(/-/g, " ")).trim();
          const score = Math.max(similarity(label, searchQuery), englishQuery ? similarity(label, englishQuery) : 0);
          if (score > bestScore && score > 0.25) { bestScore = score; bestHref = href; }
        }
        if (bestHref) seriesUrl = bestHref;
      } catch {}
    }

    if (!seriesUrl) { await browser.close(); return []; }

    const epCandidates = episodeLinkBuilder(seriesUrl, ep);
    let found = false;
    for (const epUrl of epCandidates) {
      if (found) break;
      try {
        await page.goto(epUrl, { waitUntil: "domcontentloaded", timeout: 12000 });
        await page.waitForTimeout(2000);

        // Try clicking a play button
        try { const btn = await page.$("button.play, [class*=play], video, [aria-label*=play i]"); if (btn) await btn.click({ timeout: 2000 }); } catch {}
        await page.waitForTimeout(waitMs);

        if (videoUrls.length > 0) found = true;
      } catch {}
    }

    await browser.close(); browser = null;

    if (!videoUrls.length) return [];
    const results: UnifiedSource[] = [];
    const best = videoUrls.find(u => u.includes(".m3u8")) || videoUrls.find(u => u.includes(".mp4"));
    if (best) {
      const isHls = best.includes(".m3u8");
      const proxyUrl = isHls
        ? `/api/anime/hls-proxy?url=${encodeURIComponent(best)}&ref=${encodeURIComponent(siteUrl)}`
        : best;
      results.push({
        name: `${siteName} · مباشر`,
        url: best,
        quality: "HD", qualityRank: 2, site: siteKey,
        directUrl: proxyUrl, directType: isHls ? "hls" : "mp4",
      });
    }
    // Include all unique video URLs as fallbacks
    for (const u of videoUrls.slice(0, 4)) {
      if (u !== best) {
        const isHls = u.includes(".m3u8");
        const proxyUrl = isHls ? `/api/anime/hls-proxy?url=${encodeURIComponent(u)}&ref=${encodeURIComponent(siteUrl)}` : u;
        results.push({ name: `${siteName} · سيرفر`, url: u, quality: "HD", qualityRank: 2, site: siteKey, directUrl: proxyUrl, directType: isHls ? "hls" : "mp4" });
      }
    }

    if (results.length) browserScrapeCache.set(ck, { sources: results, ts: Date.now() });
    return results;
  } catch (e) {
    if (browser) { try { await browser.close(); } catch {} }
    return [];
  }
}

async function getWitAnimeSources(title: string, english: string | null, ep: number): Promise<UnifiedSource[]> {
  return browserScrapeEpisode(
    "https://witanime.cyou",
    title, english, ep,
    "ويت أنمي", "witanime",
    (q) => `https://witanime.cyou/?search_param=animes&s=${encodeURIComponent(q)}`,
    /href="(https?:\/\/witanime\.(?:cyou|cc|life)\/anime\/[^"#?]+)"[^>]*>([^<]*)/gi,
    (seriesHref, n) => [
      seriesHref.replace(/\/anime\//, `/episode/${seriesHref.split("/anime/")[1]?.replace(/\/$/, "")}-الحلقة-${n}/`),
      `https://witanime.cyou/episode/${seriesHref.split("/anime/")[1]?.replace(/\//g, "")}-الحلقة-${n}/`,
    ],
    7000,
  );
}

async function getAnimercoSources(title: string, english: string | null, ep: number): Promise<UnifiedSource[]> {
  return browserScrapeEpisode(
    "https://animerco.org",
    title, english, ep,
    "أنمي ركو", "animerco",
    (q) => `https://animerco.org/?s=${encodeURIComponent(q)}`,
    /href="(https?:\/\/(?:eta\.)?animerco\.org\/[^"#?]+)"[^>]*>([^<]*<[^>]*>)?([^<]+)/gi,
    (seriesHref, n) => [
      `${seriesHref.replace(/\/$/, "")}/episode-${n}/`,
      `${seriesHref.replace(/\/$/, "")}/${n}/`,
    ],
    8000,
  );
}


// ════════════════════════════════════════════════════════════════════
//  AnimeX scraper  (animex.one)
//  Flow: AniList ID → GraphQL slug → REST servers → REST sources → HLS m3u8
//  Provides direct HLS streams playable via our hls-player page
// ════════════════════════════════════════════════════════════════════
const ANIMEX_GRAPHQL = "https://graphql.animex.one/graphql";
const ANIMEX_REST    = "https://pp.animex.one/rest/api";
const ANIMEX_HDRS: Record<string, string> = {
  "User-Agent": BROWSER_UA,
  "Accept": "application/json, text/plain, */*",
  "Origin": "https://animex.one",
  "Referer": "https://animex.one/",
};
const animexSlugCache = new Map<string, { slug: string | null; ts: number }>();
const ANIMEX_SLUG_TTL = 24 * 3_600_000;

async function getAnimexSlug(anilistId: number): Promise<string | null> {
  const ck = String(anilistId);
  const hit = animexSlugCache.get(ck);
  if (hit && Date.now() - hit.ts < ANIMEX_SLUG_TTL) return hit.slug;
  try {
    const r = await fetch(ANIMEX_GRAPHQL, {
      method: "POST",
      headers: { ...ANIMEX_HDRS, "Content-Type": "application/json" },
      body: JSON.stringify({
        query: "query($id:Int){anime(anilistId:$id){id anilistId}}",
        variables: { id: anilistId },
      }),
      signal: AbortSignal.timeout(8000),
    });
    if (!r.ok) { animexSlugCache.set(ck, { slug: null, ts: Date.now() }); return null; }
    const d = await r.json() as any;
    const slug: string | null = d?.data?.anime?.id ?? null;
    animexSlugCache.set(ck, { slug, ts: Date.now() });
    return slug;
  } catch { animexSlugCache.set(ck, { slug: null, ts: Date.now() }); return null; }
}

interface AnimexHlsSrc { url: string; quality: string; referer: string; }

async function getAnimexEpisodeSources(anilistId: number, ep: number): Promise<AnimexHlsSrc[]> {
  const slug = await getAnimexSlug(anilistId);
  if (!slug) return [];

  let subProviders: any[] = [];
  try {
    const r = await fetch(
      `${ANIMEX_REST}/servers?id=${encodeURIComponent(slug)}&epNum=${ep}`,
      { headers: ANIMEX_HDRS, signal: AbortSignal.timeout(8000) },
    );
    if (r.ok) {
      const d = await r.json() as any;
      subProviders = Array.isArray(d.subProviders) ? d.subProviders : [];
    }
  } catch { return []; }

  if (!subProviders.length) return [];

  const orderedIds: string[] = [
    ...subProviders.filter((p: any) => p?.default).map((p: any) => p.id),
    ...subProviders.filter((p: any) => !p?.default).map((p: any) => p.id),
  ].filter(Boolean) as string[];

  for (const providerId of orderedIds) {
    try {
      const r = await fetch(
        `${ANIMEX_REST}/sources?id=${encodeURIComponent(slug)}&epNum=${ep}&type=sub&providerId=${encodeURIComponent(providerId)}`,
        { headers: ANIMEX_HDRS, signal: AbortSignal.timeout(12000) },
      );
      if (!r.ok) continue;
      const d = await r.json() as any;
      const sources: any[] = Array.isArray(d.sources) ? d.sources : [];
      if (!sources.length) continue;
      const referer: string = d.headers?.Referer || d.headers?.referer || "https://animex.one/";
      const result: AnimexHlsSrc[] = sources
        .filter((s: any) => s?.url)
        .map((s: any) => ({ url: s.url as string, quality: (s.quality as string) || "default", referer }));
      if (result.length) return result;
    } catch { continue; }
  }
  return [];
}

// ════════════════════════════════════════════════════════════════════
//  VIDNEST / ANIMEPAHE scraper
//  Uses anilistId directly — no search needed
//  URL: https://vidnest.fun/animepahe/{anilistId}/{ep}/sub
// ════════════════════════════════════════════════════════════════════
function getVidNestSources(anilistId: number, ep: number): UnifiedSource[] {
  if (!anilistId || anilistId <= 0) return [];
  const base = `https://vidnest.fun/animepahe/${anilistId}/${ep}`;
  return [
    {
      name: "AnimePahe · مترجم إنجليزي",
      url: `${base}/sub`,
      quality: "HD",
      qualityRank: 2,
      site: "vidnest",
    },
    {
      name: "AnimePahe · مدبلج إنجليزي",
      url: `${base}/dub`,
      quality: "HD",
      qualityRank: 2,
      site: "vidnest",
    },
  ];
}


// ════════════════════════════════════════════════════════════════════
//  Sources Stream  GET /api/anime/sources-stream  (SSE)
//  Streams sources as they arrive from shahiid-anime.net
// ════════════════════════════════════════════════════════════════════
router.get("/anime/sources-stream", async (req, res) => {
  const title     = ((req.query.title    as string) || "").trim();
  const english   = ((req.query.english  as string) || "").trim() || null;
  const ep        = parseInt((req.query.ep as string) || "1");
  const anilistId = parseInt((req.query.anilistId as string) || "0");

  res.setHeader("Content-Type", "text/event-stream");
  res.setHeader("Cache-Control", "no-cache");
  res.setHeader("Connection", "keep-alive");
  res.setHeader("X-Accel-Buffering", "no");
  res.flushHeaders?.();

  const seenUrls = new Set<string>();
  const siteEmbedCounts = new Map<string, number>(); // track embed-only per site
  let closed = false;
  req.on("close", () => { closed = true; });

  function sendSrc(s: UnifiedSource) {
    if (closed) return;
    const key = s.directUrl || s.url;
    if (!s.url || seenUrls.has(key)) return;
    // Filter dead hosts
    if (DEAD_FILE_HOSTS.some(h => s.url.toLowerCase().includes(h))) return;
    if (s.directUrl && DEAD_FILE_HOSTS.some(h => s.directUrl!.toLowerCase().includes(h))) return;
    // Filter embed-only hosts — they can't play in the internal player
    if (EMBED_ONLY_HOSTS.some(h => s.url.toLowerCase().includes(h))) return;
    // Per-site cap: max 3 embed-only per site (directUrls always pass through)
    if (!s.directUrl) {
      const site = s.site || "unknown";
      const n = siteEmbedCounts.get(site) || 0;
      if (n >= 3) return;
      siteEmbedCounts.set(site, n + 1);
    }
    seenUrls.add(key);
    res.write(`data: ${JSON.stringify(s)}\n\n`);
  }

  try {
    const SCRAPER_MS = 18000;
    const EXTRACT_MS = 6000;

    const race = <T>(p: Promise<T>, ms: number, fallback: T) =>
      Promise.race([p, new Promise<T>(r => setTimeout(() => r(fallback), ms))]);

    await Promise.allSettled([
      // ── AnimeGG  (MP4 مباشر — مترجم + مدبلج إنجليزي) ──
      (async () => {
        try {
          if (!title) return;
          const srcs = await race(getAnimeGGSources(title, english, ep), SCRAPER_MS, []);
          if (srcs.length && !closed) await extractAndSend(srcs, sendSrc, EXTRACT_MS);
        } catch {}
      })(),

      // ── Shahiid-anime.net  (عربي مدبلج + مترجم — share4max/streamwish) ──
      (async () => {
        try {
          if (!title) return;
          const srcs = await race(getShahiidSources(title, english, ep), SCRAPER_MS, []);
          if (srcs.length && !closed) await extractAndSend(srcs, sendSrc, EXTRACT_MS);
        } catch {}
      })(),

      // ── AnimeLek.top  (عربي — streamwish/filemoon → m3u8 مباشر) ──
      (async () => {
        try {
          if (!title) return;
          const srcs = await race(getAnimelekSources(title, english, ep), SCRAPER_MS, []);
          if (srcs.length && !closed) await extractAndSend(srcs, sendSrc, EXTRACT_MS);
        } catch {}
      })(),

      // ── AnimeBlkom.net  (عربي مدبلج — streamwish/filemoon → m3u8 مباشر) ──
      (async () => {
        try {
          if (!title) return;
          const srcs = await race(getAnimeBlkomSources(title, english, ep), SCRAPER_MS, []);
          if (srcs.length && !closed) await extractAndSend(srcs, sendSrc, EXTRACT_MS);
        } catch {}
      })(),

      // ── مواقع أنميستريم العربية (anime3rb · animeiat · goldenanimaniac) ──
      ...ASTREAM_SITES.map(cfg => (async () => {
        try {
          if (!title) return;
          const srcs = await race(getGenericAnimestreamSources(cfg, title, english, ep), SCRAPER_MS, []);
          if (srcs.length && !closed) await extractAndSend(srcs, sendSrc, EXTRACT_MS);
        } catch {}
      })()),

      // ── Witanime.cyou  (عربي — Playwright browser scraper) ──
      (async () => {
        try {
          if (!title || !CHROMIUM_EXEC) return;
          const WITA_MS = 55000; // browser scraper is slower
          const srcs = await race(getWitanimeSources(title, english, ep), WITA_MS, []);
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
//  AniPub scraper helpers
// ════════════════════════════════════════════════════════════════════
const anipubIdCache = new Map<string, { id: number; ts: number }>();
const ANIPUB_ID_TTL = 24 * 3_600_000; // 24h

function titleToSlug(t: string): string {
  return t.toLowerCase().trim()
    .replace(/[^a-z0-9\s-]/g, "")
    .replace(/\s+/g, "-")
    .replace(/-+/g, "-")
    .replace(/^-|-$/g, "");
}

function titleSimilarity(a: string, b: string): number {
  const norm = (s: string) => s.toLowerCase().replace(/[^a-z0-9 ]/g, " ").replace(/\s+/g, " ").trim();
  const na = norm(a); const nb = norm(b);
  if (na === nb) return 1;
  // If one contains the other, score by length ratio (prefer tighter match)
  if (na.includes(nb) || nb.includes(na)) {
    const shorter = Math.min(na.length, nb.length);
    const longer  = Math.max(na.length, nb.length);
    return 0.5 + 0.5 * (shorter / longer);
  }
  const wa = new Set(na.split(" ").filter(w => w.length > 2));
  const wb = new Set(nb.split(" ").filter(w => w.length > 2));
  const common = [...wa].filter(w => wb.has(w)).length;
  const union = new Set([...wa, ...wb]).size;
  return union > 0 ? common / union : 0;
}

async function getAniPubId(titles: string[]): Promise<number | null> {
  const cacheKey = titles.join("|").toLowerCase();
  const hit = anipubIdCache.get(cacheKey);
  if (hit && Date.now() - hit.ts < ANIPUB_ID_TTL) return hit.id;

  const slugs = [...new Set(titles.map(titleToSlug).filter(Boolean))];

  for (const slug of slugs) {
    try {
      const r = await fetch(`https://anipub.xyz/api/info/${encodeURIComponent(slug)}`, {
        headers: { "User-Agent": BROWSER_UA, Accept: "application/json" },
        signal: AbortSignal.timeout(8000),
      });
      if (r.ok) {
        const d = await r.json() as any;
        if (d._id) {
          anipubIdCache.set(cacheKey, { id: d._id, ts: Date.now() });
          return d._id;
        }
      }
    } catch {}
  }

  // searchAll with each title + shortened variants
  for (const t of titles.filter(Boolean)) {
    const queries: string[] = [t];
    const words = t.trim().split(/\s+/);
    if (words.length > 2) queries.push(words.slice(0, 2).join(" "));
    if (words.length > 1) queries.push(words[0]);

    for (const q of queries) {
      if (q.length < 3) continue;
      try {
        const r = await fetch(`https://anipub.xyz/api/searchAll/${encodeURIComponent(q)}`, {
          headers: { "User-Agent": BROWSER_UA, Accept: "application/json" },
          signal: AbortSignal.timeout(8000),
        });
        if (!r.ok) continue;
        const d = await r.json() as any;
        const items: any[] = d.AniData || d.results || d.data || (Array.isArray(d) ? d : []);
        if (!items.length) continue;

        // Find best-matching result by name similarity
        let best: any = null; let bestScore = 0;
        for (const item of items) {
          const score = Math.max(...titles.map(tt => titleSimilarity(tt, item.Name || "")));
          if (score > bestScore) { bestScore = score; best = item; }
        }
        if (best?._id && bestScore >= 0.25) {
          anipubIdCache.set(cacheKey, { id: best._id, ts: Date.now() });
          return best._id;
        }
      } catch {}
    }
  }

  return null;
}

const anipubEpCache = new Map<string, { servers: string[]; ts: number }>();
const ANIPUB_EP_TTL = 6 * 3_600_000; // 6h

async function getAniPubEpisodeServers(animeId: number, ep: number): Promise<string[]> {
  const cacheKey = `${animeId}:${ep}`;
  const hit = anipubEpCache.get(cacheKey);
  if (hit && Date.now() - hit.ts < ANIPUB_EP_TTL) return hit.servers;

  try {
    const r = await fetch(`https://anipub.xyz/v1/api/details/${animeId}`, {
      headers: { "User-Agent": BROWSER_UA, Accept: "application/json" },
      signal: AbortSignal.timeout(12000),
    });
    if (!r.ok) return [];
    const d = await r.json() as any;
    const episodes: Array<{ link?: string; _id?: string; name?: string }> = d?.local?.ep || [];

    // Movie case: ep[] is empty but local.link has the direct video link
    if (!episodes.length) {
      const movieLink = d?.local?.link;
      if (movieLink) {
        const raw = String(movieLink).replace(/^src=/, "").trim();
        if (raw) {
          const result = [raw];
          if (raw.includes("anipub.xyz/video/") && raw.endsWith("/sub")) result.push(raw.replace("/sub", "/dub"));
          if (raw.includes("anipub.xyz/video/") && raw.endsWith("/dub")) result.push(raw.replace("/dub", "/sub"));
          anipubEpCache.set(cacheKey, { servers: result, ts: Date.now() });
          return result;
        }
      }
      return [];
    }
    if (ep < 1 || ep > episodes.length) return [];

    const epData = episodes[ep - 1];
    if (!epData?.link) return [];

    // Strip "src=" prefix that AniPub stores
    const rawLink = epData.link.replace(/^src=/, "").trim();
    if (!rawLink) return [];

    // Only keep /sub (مترجم) variant — skip /dub and gogoanime embeds (English-only)
    if (rawLink.includes("anipub.xyz/video/") && rawLink.endsWith("/dub")) {
      // dub → try sub variant instead
      const subLink = rawLink.replace("/dub", "/sub");
      anipubEpCache.set(cacheKey, { servers: [subLink], ts: Date.now() });
      return [subLink];
    }
    if (rawLink.includes("anipub.xyz/video/") && rawLink.endsWith("/sub")) {
      // already sub — good
      anipubEpCache.set(cacheKey, { servers: [rawLink], ts: Date.now() });
      return [rawLink];
    }
    // gogoanime embeds are English-only — skip entirely
    if (rawLink.includes("gogoanime")) {
      anipubEpCache.set(cacheKey, { servers: [], ts: Date.now() });
      return [];
    }

    const servers: string[] = [rawLink];
    const result = servers.slice(0, 3);
    anipubEpCache.set(cacheKey, { servers: result, ts: Date.now() });
    return result;
  } catch {
    return [];
  }
}

// ════════════════════════════════════════════════════════════════════
//  AnimeX lazy source  GET /api/anime/animex-source?anilistId=&ep=&quality=
//  Fetches fresh m3u8 at request-time so token is never stale
// ════════════════════════════════════════════════════════════════════
router.get("/anime/animex-source", async (req, res) => {
  const anilistId  = parseInt((req.query.anilistId as string) || "0");
  const ep         = parseInt((req.query.ep        as string) || "1");
  const qualityPref = ((req.query.quality as string) || "720").trim();

  if (!anilistId) { res.status(400).json({ error: "anilistId required" }); return; }
  try {
    const srcs = await getAnimexEpisodeSources(anilistId, ep);
    if (!srcs.length) { res.status(404).json({ error: "no sources" }); return; }

    // Pick closest quality match
    const ranked = [...srcs].sort((a, b) => {
      const scoreQ = (q: string) => {
        if (qualityPref === "1080" && q.includes("1080")) return 0;
        if (qualityPref === "720"  && q.includes("720"))  return 0;
        if (qualityPref === "360"  && (q.includes("480") || q.includes("360") || q.includes("240"))) return 0;
        return 1;
      };
      return scoreQ(a.quality) - scoreQ(b.quality);
    });
    const best = ranked[0];
    // uwucdn.top CDN returns 403 from Replit server IP (Cloudflare bot block) but has
    // CORS: * and allows browser IPs freely — so send rawUrl directly to the browser.
    // The browser's HLS.js will fetch the m3u8 and segments directly without any proxy.
    res.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
    res.setHeader("Pragma", "no-cache");
    res.json({ rawUrl: best.url, quality: best.quality });
  } catch (e: any) {
    res.status(500).json({ error: e?.message ?? "failed" });
  }
});

// ════════════════════════════════════════════════════════════════════
//  AnimeX lazy player  GET /api/anime/animex-player?anilistId=&ep=&quality=
//  Returns HTML page that fetches fresh m3u8 at load time via /animex-source
// ════════════════════════════════════════════════════════════════════
router.get("/anime/animex-player", async (req, res) => {
  const anilistId  = ((req.query.anilistId as string) || "").trim();
  const ep         = ((req.query.ep        as string) || "1").trim();
  const quality    = ((req.query.quality   as string) || "720").trim();

  const sourceApiUrl = `/api/anime/animex-source?anilistId=${encodeURIComponent(anilistId)}&ep=${encodeURIComponent(ep)}&quality=${encodeURIComponent(quality)}`;

  const html = `<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <title>AnimeX</title>
  <style>
    *{margin:0;padding:0;box-sizing:border-box}
    html,body{width:100%;height:100%;background:#000;overflow:hidden;font-family:Cairo,sans-serif}
    video{width:100%;height:100%;object-fit:contain;display:block}
    #loading{position:absolute;inset:0;background:#09090f;display:flex;align-items:center;justify-content:center;flex-direction:column;gap:14px;z-index:10}
    .ring{width:42px;height:42px;border:3px solid rgba(139,92,246,.15);border-top-color:#8b5cf6;border-radius:50%;animation:spin .8s linear infinite}
    @keyframes spin{to{transform:rotate(360deg)}}
    #loading p{color:rgba(255,255,255,.35);font-size:12px}
    #err{display:none;position:absolute;inset:0;background:#09090f;z-index:11;align-items:center;justify-content:center;flex-direction:column;gap:16px;padding:24px;text-align:center}
    #err.show{display:flex}
    #err .icon{font-size:32px}
    #err h3{color:rgba(255,255,255,.7);font-size:14px;font-weight:900}
    #err p{color:rgba(255,255,255,.3);font-size:11px;line-height:1.6}
    #err button{padding:10px 24px;background:#7c3aed;color:#fff;border:none;border-radius:12px;cursor:pointer;font-size:13px;font-family:Cairo,sans-serif;font-weight:700}
    .qbadge{position:absolute;top:8px;right:8px;background:rgba(139,92,246,.8);color:#fff;padding:2px 8px;border-radius:6px;font-size:10px;font-family:monospace;font-weight:700;z-index:5;pointer-events:none}
  </style>
</head>
<body>
  <div id="loading"><div class="ring"></div><p>AnimeX · جاري تحميل الحلقة…</p></div>
  <div id="err">
    <div class="icon">⚠️</div>
    <h3 id="errTitle">تعذّر تحميل الفيديو</h3>
    <p id="errMsg">يرجى تجربة مصدر آخر أو الضغط على إعادة المحاولة</p>
    <button onclick="startLoad()">إعادة المحاولة</button>
  </div>
  <div class="qbadge">${quality}p</div>
  <video id="v" autoplay controls playsinline></video>
  <script src="https://cdn.jsdelivr.net/npm/hls.js@1/dist/hls.min.js"></script>
  <script>
  (function(){
    var sourceApi=${JSON.stringify(sourceApiUrl)};
    var v=document.getElementById('v');
    var loading=document.getElementById('loading');
    var err=document.getElementById('err');
    var errMsg=document.getElementById('errMsg');
    var hlsInstance=null;

    function hide(){loading.style.display='none';}
    function showErr(msg){
      hide();
      if(msg)errMsg.textContent=msg;
      err.className='show';
    }

    window.startLoad=function(){
      err.className='';
      loading.style.display='flex';
      if(hlsInstance){hlsInstance.destroy();hlsInstance=null;}
      v.src='';
      load();
    };

    async function load(){
      try{
        var r=await fetch(sourceApi);
        if(!r.ok){
          var d=await r.json().catch(()=>({}));
          showErr(d.error||'فشل جلب المصدر ('+r.status+')');
          return;
        }
        var data=await r.json();
        var src=data.rawUrl;
        if(!src){showErr('لا يوجد رابط HLS');return;}

        if(typeof Hls!=='undefined'&&Hls.isSupported()){
          hlsInstance=new Hls({enableWorker:false,lowLatencyMode:false,maxBufferLength:30});
          hlsInstance.loadSource(src);
          hlsInstance.attachMedia(v);
          hlsInstance.on(Hls.Events.MANIFEST_PARSED,function(){hide();v.play().catch(function(){});});
          hlsInstance.on(Hls.Events.ERROR,function(e,d){
            if(d.fatal){
              // Fallback: try raw URL directly (in case proxy had issues)
              if(data.rawUrl&&src!==data.rawUrl){
                hlsInstance.destroy();
                hlsInstance=new Hls({enableWorker:false});
                hlsInstance.loadSource(data.rawUrl);
                hlsInstance.attachMedia(v);
                hlsInstance.on(Hls.Events.MANIFEST_PARSED,function(){hide();v.play().catch(function(){});});
                hlsInstance.on(Hls.Events.ERROR,function(e2,d2){if(d2.fatal)showErr('فشل تحميل الفيديو من المصدر المباشر');});
              } else {
                showErr('فشل تحميل الفيديو — يرجى تجربة مصدر آخر');
              }
            }
          });
        } else if(v.canPlayType('application/vnd.apple.mpegurl')){
          v.src=src;
          v.addEventListener('loadedmetadata',function(){hide();v.play().catch(function(){});});
          v.addEventListener('error',function(){showErr('فشل التشغيل');});
        } else {
          showErr('المتصفح لا يدعم تشغيل HLS');
        }
      } catch(ex){
        showErr('خطأ في الاتصال: '+ex.message);
      }
    }

    load();
  })();
  </script>
</body>
</html>`;

  res.setHeader("Content-Type", "text/html; charset=utf-8");
  res.setHeader("X-Frame-Options", "SAMEORIGIN");
  res.setHeader("Cache-Control", "no-cache");
  res.send(html);
});


// ════════════════════════════════════════════════════════════════════
//  HLS Player page  GET /api/anime/hls-player?url=&ref=&quality=
//  Returns an HTML page that plays an HLS m3u8 stream via hls.js
//  Designed to be loaded inside the existing iframe player
// ════════════════════════════════════════════════════════════════════
router.get("/anime/hls-player", async (req, res) => {
  const rawUrl  = ((req.query.url  as string) || "").trim();
  const ref     = ((req.query.ref  as string) || "").trim();
  const quality = ((req.query.quality as string) || "").trim();
  if (!rawUrl) { res.status(400).send("url required"); return; }

  // Use the URL directly — AnimeX CDN serves to browsers fine (CORS allowed)
  // Only route through proxy if it's already a proxy URL
  const m3u8Url = rawUrl.startsWith("/api/") ? rawUrl : rawUrl;

  const qualityLabel = quality ? ` · ${quality}` : "";
  const html = `<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AnimeX${qualityLabel}</title>
  <style>
    *{margin:0;padding:0;box-sizing:border-box}
    html,body{width:100%;height:100%;background:#000;overflow:hidden}
    video{width:100%;height:100%;object-fit:contain;display:block}
    #loading{position:absolute;inset:0;background:#000;display:flex;align-items:center;justify-content:center;z-index:10;flex-direction:column;gap:12px}
    .spinner{width:36px;height:36px;border:3px solid rgba(255,255,255,0.1);border-top-color:#7c3aed;border-radius:50%;animation:spin 0.8s linear infinite}
    @keyframes spin{to{transform:rotate(360deg)}}
    #lbl{color:rgba(255,255,255,0.35);font-family:Cairo,sans-serif;font-size:12px}
    #err{display:none;position:absolute;inset:0;background:#000;z-index:11;align-items:center;justify-content:center;flex-direction:column;gap:14px;padding:20px;text-align:center}
    #err.show{display:flex}
    #err p{color:rgba(255,255,255,0.55);font-family:Cairo,sans-serif;font-size:13px}
    #err button{padding:8px 20px;background:#7c3aed;color:#fff;border:none;border-radius:10px;cursor:pointer;font-family:Cairo,sans-serif;font-size:13px}
    .qbadge{position:absolute;top:10px;right:10px;background:rgba(124,58,237,0.85);color:#fff;padding:3px 10px;border-radius:8px;font-size:11px;font-family:monospace;font-weight:bold;z-index:5;pointer-events:none}
  </style>
</head>
<body>
  <div id="loading"><div class="spinner"></div><span id="lbl">AnimeX${qualityLabel ? " " + qualityLabel : ""}</span></div>
  <div id="err"><p>⚠️ فشل تحميل الفيديو</p><button onclick="location.reload()">إعادة المحاولة</button></div>
  ${quality ? `<div class="qbadge">${quality}</div>` : ""}
  <video id="v" autoplay controls playsinline></video>
  <script src="https://cdn.jsdelivr.net/npm/hls.js@1/dist/hls.min.js"></script>
  <script>
    (function(){
      var src=${JSON.stringify(m3u8Url)};
      var v=document.getElementById('v');
      var loading=document.getElementById('loading');
      var err=document.getElementById('err');
      function hide(){loading.style.display='none';}
      function showErr(){loading.style.display='none';err.className='show';}
      if(typeof Hls!=='undefined'&&Hls.isSupported()){
        var hls=new Hls({enableWorker:false,lowLatencyMode:false,maxBufferLength:30,maxMaxBufferLength:60});
        hls.loadSource(src);
        hls.attachMedia(v);
        hls.on(Hls.Events.MANIFEST_PARSED,function(){hide();v.play().catch(function(){});});
        hls.on(Hls.Events.ERROR,function(e,d){if(d.fatal)showErr();});
      } else if(v.canPlayType('application/vnd.apple.mpegurl')){
        v.src=src;
        v.addEventListener('loadedmetadata',function(){hide();v.play().catch(function(){});});
        v.addEventListener('error',showErr);
      } else {showErr();}
    })();
  </script>
</body>
</html>`;

  res.setHeader("Content-Type", "text/html; charset=utf-8");
  res.setHeader("X-Frame-Options", "SAMEORIGIN");
  res.setHeader("Cache-Control", "no-cache");
  res.send(html);
});


// ════════════════════════════════════════════════════════════════════
//  GET /api/anime/anipub-stream
//  Returns { servers: { "1080p FHD": [...], "720p HD": [...], "360p SD": [...] } }
//  Merges AniPub embed sources + AnimeX direct HLS sources (via hls-player)
// ════════════════════════════════════════════════════════════════════
router.get("/anime/anipub-stream", async (req, res) => {
  const title     = ((req.query.title     as string) || "").trim();
  const english   = ((req.query.english   as string) || "").trim();
  const ep        = parseInt((req.query.ep as string) || "1");
  const anilistId = parseInt((req.query.anilistId as string) || "0");

  if (!title && !english && !anilistId) {
    res.status(400).json({ error: "title or anilistId required" });
    return;
  }

  // 300ms rate-limit buffer
  await new Promise(r => setTimeout(r, 300));

  const result: { "1080p FHD": string[]; "720p HD": string[]; "360p SD": string[] } = {
    "1080p FHD": [],
    "720p HD":   [],
    "360p SD":   [],
  };

  const SCRAPER_MS = 14000;
  const EXTRACT_MS = 6000;
  const timedOut = <T>(p: Promise<T>, ms: number, fb: T) =>
    Promise.race([p, new Promise<T>(r => setTimeout(() => r(fb), ms))]);

  // ── Helper: try to extract a direct video URL from a UnifiedSource ──
  async function tryExtractDirect(s: UnifiedSource): Promise<string | null> {
    // Already extracted server-side → use it
    if (s.directUrl) return s.directUrl;
    // Known unextractable embed hosts → skip
    if (SKIP_EXTRACT_HOSTS.some(h => s.url.includes(h))) return null;
    // Bare m3u8 / mp4 URLs
    if (s.url.match(/\.m3u8([?#]|$)/i)) return s.url;
    if (s.url.match(/\.mp4([?#]|$)/i)) return s.url;
    // Attempt deep extraction
    try {
      const extracted = await timedOut(extractVideoDeep(s.url, s.url), EXTRACT_MS, null);
      if (!extracted) return null;
      const alive = await probeDirectUrl(extracted.url, s.url).catch(() => false);
      return alive ? extracted.url : null;
    } catch { return null; }
  }

  try {
    // ── Phase 1: Run all scrapers in parallel ──
    const [anipubResult, animexSrcs, shahiidSrcs, animelekSrcs, allAnimeSrcs] = await Promise.allSettled([

      // AniPub (embed iframes — dub + sub)
      timedOut((async () => {
        if (!title && !english) return null;
        const titles = [english, title].filter(Boolean) as string[];
        const animeId = await getAniPubId(titles);
        if (!animeId) return null;
        const servers = await getAniPubEpisodeServers(animeId, ep);
        return { animeId, servers };
      })(), SCRAPER_MS, null),

      // AnimeX (direct HLS)
      timedOut((async () => {
        if (!anilistId || anilistId <= 0) return [] as string[];
        return getAnimexEpisodeSources(anilistId, ep);
      })(), SCRAPER_MS, [] as string[]),

      // Shahiid-anime.net (Arabic)
      timedOut((async () => {
        if (!title) return [] as UnifiedSource[];
        return getShahiidSources(title, english, ep);
      })(), SCRAPER_MS, [] as UnifiedSource[]),

      // AnimeLek.top (Arabic)
      timedOut((async () => {
        if (!title) return [] as UnifiedSource[];
        return getAnimelekSources(title, english, ep);
      })(), SCRAPER_MS, [] as UnifiedSource[]),

      // AllAnime — direct m3u8 / mp4 video URLs
      timedOut((async () => {
        if (!title && !english) return [] as UnifiedSource[];
        return getAllAnimeSources(title || english, english || null, ep);
      })(), SCRAPER_MS, [] as UnifiedSource[]),
    ]);

    // ── AniPub embed servers → 720p HD ──
    // Filter out anipub.xyz/video embeds — they redirect to megaplay.buzz (Cloudflare-protected)
    if (anipubResult.status === "fulfilled" && anipubResult.value?.servers?.length) {
      const anipubServers = anipubResult.value.servers.filter(
        (u: string) => !u.includes("anipub.xyz/video") && !u.includes("megaplay.buzz")
      );
      if (anipubServers.length) result["720p HD"].push(...anipubServers);
    }

    // ── AnimeX HLS → all quality tiers ──
    if (anilistId > 0 && animexSrcs.status === "fulfilled" && Array.isArray(animexSrcs.value) && animexSrcs.value.length > 0) {
      for (const tier of ["1080p FHD", "720p HD", "360p SD"] as const) {
        const q = tier === "1080p FHD" ? "1080" : tier === "720p HD" ? "720" : "360";
        result[tier].unshift(`/api/anime/animex-player?anilistId=${anilistId}&ep=${ep}&quality=${q}`);
      }
    }

    // ── AllAnime direct sources → 720p HD (only if they have a real direct URL) ──
    if (allAnimeSrcs.status === "fulfilled") {
      for (const s of allAnimeSrcs.value) {
        const url = s.directUrl
          ?? (s.url.match(/\.m3u8([?#]|$)/i) || s.url.match(/\.mp4([?#]|$)/i) ? s.url : null);
        if (url && !result["720p HD"].includes(url)) result["720p HD"].push(url);
      }
    }

    // ── Phase 2: Arabic sources (shahiid + animelek) ──
    // Filter dead/embed-only hosts, then try to extract direct URLs.
    // Only include sources that are either direct-extracted or from reliable hosts.
    const isAllowedEmbed = (url: string) => {
      const u = url.toLowerCase();
      if (DEAD_FILE_HOSTS.some(h => u.includes(h))) return false;
      if (EMBED_ONLY_HOSTS.some(h => u.includes(h))) return false;
      return true;
    };

    const arabicRaw: UnifiedSource[] = [
      ...(shahiidSrcs.status === "fulfilled" ? shahiidSrcs.value : []),
      ...(animelekSrcs.status === "fulfilled" ? animelekSrcs.value : []),
    ].filter(s => isAllowedEmbed(s.url));

    if (arabicRaw.length > 0) {
      const extractedUrls = await timedOut(
        Promise.all(arabicRaw.map(s => tryExtractDirect(s))),
        EXTRACT_MS + 2000,
        arabicRaw.map(() => null),
      );
      for (let i = 0; i < arabicRaw.length; i++) {
        const directUrl = extractedUrls[i];
        // Only include the fallback embed URL if it's a reliable extractable host
        // (vidfast, streamwish, filemoon, jawcloud etc.) — NOT blocked embeds
        const fallbackUrl = arabicRaw[i].url;
        const isReliableEmbed = (url: string) => {
          const u = url.toLowerCase();
          return u.includes("vidfast.co") || u.includes("streamwish") ||
            u.includes("filemoon") || u.includes("jawcloud") ||
            u.includes("sendvid") || u.includes("streamtape");
        };
        const urlToAdd = directUrl || (isReliableEmbed(fallbackUrl) ? fallbackUrl : null);
        if (urlToAdd && !result["720p HD"].includes(urlToAdd)) {
          result["720p HD"].push(urlToAdd);
        }
      }
    }

    const total = Object.values(result).reduce((s, a) => s + a.length, 0);
    const animeId = anipubResult.status === "fulfilled" ? anipubResult.value?.animeId : undefined;
    res.json({ servers: result, total, animeId });

  } catch (e: any) {
    console.error("anipub-stream error:", e?.message ?? e);
    res.status(500).json({ error: "Failed to fetch servers" });
  }
});


// ════════════════════════════════════════════════════════════════════
//  Subtitles  GET /api/anime/subtitles?title=&ep=&season=&malId=
//  Returns Arabic SRT (from OpenSubtitles, or translated from English)
// ════════════════════════════════════════════════════════════════════
const subCache = new Map<string, { content: string; lang: string; ts: number }>();
const SUB_TTL = 12 * 3_600_000;

async function fetchSrt(link: string): Promise<string | null> {
  try {
    const r = await fetch(link, { signal: AbortSignal.timeout(12000) });
    if (!r.ok) return null;
    const buf = Buffer.from(await r.arrayBuffer());
    // OpenSubtitles returns gzip-compressed files
    try {
      const { gunzipSync } = await import("zlib");
      return gunzipSync(buf).toString("utf8");
    } catch {
      return buf.toString("utf8");
    }
  } catch { return null; }
}

async function srtToArabic(srt: string): Promise<string> {
  // Extract only dialog lines (non-empty, non-number, non-timing)
  const lines = srt.split("\n");
  const textIdx: number[] = [];
  for (let i = 0; i < lines.length; i++) {
    const l = lines[i].trim();
    if (l && !l.match(/^\d+$/) && !l.match(/\d{2}:\d{2}:\d{2}[,.]\d{3}\s*-->/)) {
      textIdx.push(i);
    }
  }
  // Translate in batches of 30 lines
  const BATCH = 30;
  for (let b = 0; b < textIdx.length; b += BATCH) {
    const slice = textIdx.slice(b, b + BATCH);
    const combined = slice.map(i => lines[i]).join("\n");
    try {
      const url = `https://translate.googleapis.com/translate_a/single?client=gtx&sl=en&tl=ar&dt=t&q=${encodeURIComponent(combined)}`;
      const r = await fetch(url, { signal: AbortSignal.timeout(10000) });
      if (!r.ok) continue;
      const j = await r.json() as any[][];
      const translated = (j[0] as any[][]).map((s: any[]) => s[0] as string).join("").split("\n");
      slice.forEach((lineIdx, k) => {
        if (translated[k] !== undefined) lines[lineIdx] = translated[k];
      });
    } catch {}
    // Small delay between batches to avoid rate limit
    if (b + BATCH < textIdx.length) await new Promise(r => setTimeout(r, 200));
  }
  return lines.join("\n");
}

router.get("/anime/subtitles", async (req, res) => {
  const title  = ((req.query.title  as string) || "").trim();
  const ep     = parseInt((req.query.ep as string) || "1");
  const season = parseInt((req.query.season as string) || "1");
  const malId  = ((req.query.malId as string) || "").trim();

  if (!title && !malId) { res.status(400).json({ error: "title required" }); return; }

  const cacheKey = `${title}:${ep}:${season}:${malId}`;
  const hit = subCache.get(cacheKey);
  if (hit && Date.now() - hit.ts < SUB_TTL) {
    res.json({ lang: hit.lang, content: hit.content }); return;
  }

  const UA = "TemporaryUserAgent";

  async function searchOsub(lang: string): Promise<string | null> {
    try {
      let url: string;
      if (malId) {
        url = `https://rest.opensubtitles.org/search/imdbid-${malId}/sublanguageid-${lang}/season-${season}/episode-${ep}`;
      } else {
        const q = encodeURIComponent(title.replace(/[^a-z0-9 ]/gi, " ").trim());
        url = `https://rest.opensubtitles.org/search/query-${q}/sublanguageid-${lang}/season-${season}/episode-${ep}`;
      }
      const r = await fetch(url, { headers: { "X-User-Agent": UA }, signal: AbortSignal.timeout(10000) });
      if (!r.ok) return null;
      const subs = await r.json() as any[];
      if (!subs?.length) return null;
      // Prefer subs with good ratings
      const sorted = subs.filter((s: any) => s.SubDownloadLink).sort((a: any, b: any) =>
        (parseFloat(b.SubRating || "0") - parseFloat(a.SubRating || "0"))
      );
      for (const sub of sorted.slice(0, 3)) {
        const srt = await fetchSrt(sub.SubDownloadLink);
        if (srt && srt.length > 100) return srt;
      }
      return null;
    } catch { return null; }
  }

  try {
    // 1. Try Arabic subtitle directly
    const araSrt = await searchOsub("ara");
    if (araSrt) {
      subCache.set(cacheKey, { content: araSrt, lang: "ara", ts: Date.now() });
      res.json({ lang: "ara", content: araSrt }); return;
    }

    // 2. Try English → translate to Arabic
    const engSrt = await searchOsub("eng");
    if (engSrt) {
      const translated = await srtToArabic(engSrt);
      subCache.set(cacheKey, { content: translated, lang: "ara-tr", ts: Date.now() });
      res.json({ lang: "ara-tr", content: translated }); return;
    }

    res.json({ lang: null, content: null });
  } catch (e: any) {
    res.status(500).json({ error: e?.message ?? String(e) });
  }
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
      const safeUrl = targetUrl.replace(/['"<>]/g, "");
      res.send(`<html><body style="background:#000;color:#fff;font-family:sans-serif;display:flex;align-items:center;justify-content:center;height:100vh;margin:0;flex-direction:column;gap:12px">
        <div style="font-size:32px">&#x1F6E1;&#xFE0F;</div>
        <p style="margin:0;font-size:14px;opacity:0.6">محمي بـ Cloudflare</p>
        <p style="margin:0;font-size:11px;opacity:0.3">${safeUrl}</p>
        <script>window.parent.postMessage({type:'nova-cf-block',url:${JSON.stringify(targetUrl)}},'*');</script>
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
<base href="${parsed.origin}/">
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
  /* ── Block all popup / navigation tricks ── */
  window.open = function(){ return { focus:function(){}, closed:false, document:{write:function(){}}, location:{} }; };
  window.alert = function(){};
  window.confirm = function(){ return false; };
  window.prompt = function(){ return null; };

  /* Prevent top-frame navigation (window.top.location = url) */
  try {
    Object.defineProperty(window, 'top',    { get: function(){ return window.self; }, configurable: true });
    Object.defineProperty(window, 'parent', { get: function(){ return window.self; }, configurable: true });
  } catch(e){}

  /* Block external link clicks anywhere in page */
  document.addEventListener('click', function(e){
    var t = e.target, tries = 0;
    while(t && tries++ < 8){
      if(t.tagName === 'A'){
        var href = (t.getAttribute('href') || '').trim();
        if(href && href !== '#' && !href.startsWith('javascript') &&
          (href.startsWith('http') || href.startsWith('//'))){
          var myHost = '${parsed.hostname}';
          if(href.indexOf(myHost) === -1){ e.preventDefault(); e.stopPropagation(); return; }
        }
        break;
      }
      t = t.parentElement;
    }
  }, true);

  /* Block location.assign / replace to external sites */
  try {
    var _origHref = Object.getOwnPropertyDescriptor(window.location, 'href') ||
                    Object.getOwnPropertyDescriptor(Location.prototype, 'href');
    Object.defineProperty(window.location, 'href', {
      get: function(){ return location.href; },
      set: function(v){
        if(typeof v === 'string' && v.indexOf(location.hostname) === -1) return;
        location.href = v;
      },
      configurable: true,
    });
  } catch(e){}

  /* Auto-dismiss age-check / adult / VPN popups */
  function closePopups(){
    /* Click any "X" close button on overlay/modal dialogs */
    var closeSels = [
      '[class*="modal"] [class*="close"]',
      '[class*="popup"] [class*="close"]',
      '[class*="overlay"] [class*="close"]',
      '[class*="dialog"] [class*="close"]',
      'button.close', '[aria-label="Close"]', '[aria-label="close"]',
    ];
    closeSels.forEach(function(sel){
      try { document.querySelectorAll(sel).forEach(function(btn){ btn.click(); }); } catch(e){}
    });

    /* Hide age-check overlays that contain Arabic/18+ text */
    var adSels = [
      '[id*="ad_"]','[id*="_ad"]','[id*="banner"]','[class*="ad-banner"]',
      '[class*="popup"]','[class*="popunder"]','[class*="clickunder"]',
      '[class*="overlay"]:not([id*="player"]):not([class*="player"])',
      '[id*="overlay"]:not([id*="player"])',
      '.adsbygoogle','[id*="interstitial"]','[class*="vpn"]',
      '[class*="subscribe"]','[class*="age"]','[id*="age"]',
      '[class*="gdpr"]','[class*="cookie"]',
      'div[style*="position:fixed"][style*="z-index"]',
      'div[style*="position: fixed"][style*="z-index"]',
    ];
    adSels.forEach(function(sel){
      try {
        document.querySelectorAll(sel).forEach(function(el){
          var txt = el.textContent || '';
          /* Only hide if it looks like an ad/age-check overlay */
          if(txt.indexOf('18') !== -1 || txt.indexOf('vpn') !== -1 ||
             txt.indexOf('VPN') !== -1 || txt.indexOf('ad') !== -1 ||
             el.getAttribute('class')?.includes('ad') ||
             (el.style.zIndex && parseInt(el.style.zIndex) > 999 && el.tagName === 'DIV')){
            el.style.setProperty('display','none','important');
            el.style.setProperty('visibility','hidden','important');
            el.style.setProperty('pointer-events','none','important');
          }
        });
      } catch(e){}
    });
  }

  /* Run immediately, on DOM ready, and periodically */
  if(document.readyState === 'loading'){
    document.addEventListener('DOMContentLoaded', closePopups);
  } else { closePopups(); }
  setTimeout(closePopups, 300); setTimeout(closePopups, 800);
  setTimeout(closePopups, 2000); setTimeout(closePopups, 4000);
  setInterval(closePopups, 3000);

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
const HLS_PROXY_HDRS = (ref: string, origin?: string) => ({
  "User-Agent": BROWSER_UA,
  ...(ref ? { Referer: ref } : {}),
  // Only send Origin when explicitly needed (kwik.cx CDN blocks requests that include Origin)
  ...(origin && !ref.includes("kwik.cx") ? { Origin: origin } : {}),
  Accept: "*/*",
  "Accept-Language": "ar,en;q=0.9",
});

function rewriteM3u8(manifest: string, baseUrl: string, _selfBase: string, ref: string): string {
  const base = new URL(baseUrl);
  const toProxy = (raw: string) => {
    let absUrl: string;
    try { absUrl = new URL(raw).href; }
    catch { try { absUrl = new URL(raw, base).href; } catch { return raw; } }
    return `/api/anime/seg-proxy?url=${encodeURIComponent(absUrl)}&ref=${encodeURIComponent(ref)}`;
  };
  return manifest.split("\n").map(line => {
    const trimmed = line.trim();
    if (!trimmed) return line;
    // Rewrite EXT-X-KEY URI (AES-128 decryption key)
    if (trimmed.startsWith("#EXT-X-KEY") && trimmed.includes('URI="')) {
      return trimmed.replace(/URI="([^"]+)"/, (_, uri) => `URI="${toProxy(uri)}"`);
    }
    if (trimmed.startsWith("#")) return line;
    return toProxy(trimmed);
  }).join("\n");
}

router.get("/anime/hls-proxy", async (req, res) => {
  const rawUrl = (req.query.url as string || "").trim();
  const ref    = (req.query.ref as string || "").trim();
  if (!rawUrl) { res.status(400).send("url required"); return; }
  let url: string;
  try { url = decodeURIComponent(rawUrl); } catch { url = rawUrl; }

  // For animanga.fun/proxy URLs, extract the inner URL to use as base for
  // resolving relative segment URLs in the m3u8 manifest.
  let baseForSegments = url;
  if (url.includes("animanga.fun") && url.includes("url=")) {
    try {
      const pu = new URL(url);
      const inner = pu.searchParams.get("url");
      if (inner) baseForSegments = inner;
    } catch {}
  }

  // Use origin from the referer page (e.g. animex.one) so CDNs that check Origin allow the request
  let origin = "";
  try { origin = new URL(ref || url).origin; } catch {}
  if (!origin) try { origin = new URL(url).origin; } catch {}
  try {
    const r = await fetch(url, { headers: HLS_PROXY_HDRS(ref || url, origin), signal: AbortSignal.timeout(18000), redirect: "follow" });
    if (!r.ok) { res.status(r.status).send(`upstream ${r.status}`); return; }
    const ct = r.headers.get("content-type") || "";
    const body = await r.text();
    const proto = req.headers["x-forwarded-proto"] || "https";
    const host  = req.headers["x-forwarded-host"] || req.headers.host || "localhost:8080";
    const selfBase = `${proto}://${host}`;
    const rewritten = rewriteM3u8(body, baseForSegments, selfBase, ref || url);
    res.setHeader("Content-Type", ct.includes("mpegurl") || url.endsWith(".m3u8") ? "application/vnd.apple.mpegurl" : ct || "application/vnd.apple.mpegurl");
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
    res.setHeader("Pragma", "no-cache");
    res.send(rewritten);
  } catch (e: any) { res.status(502).send(`proxy error: ${e?.message ?? e}`); }
});

/* ═══════════════════════════════════════════════════════════
   VIDEO PROXY  –  streams any MP4 / HLS through this server
   Fixes IP-restricted URLs (e.g. sendvid, streamtape, etc.)
   Supports Range requests so seeking works in the browser.
═══════════════════════════════════════════════════════════ */
router.get("/anime/video-proxy", async (req, res) => {
  const rawUrl = (req.query.url as string || "").trim();
  const ref    = (req.query.ref as string || "").trim();
  if (!rawUrl) { res.status(400).send("url required"); return; }
  let url: string;
  try { url = decodeURIComponent(rawUrl); } catch { url = rawUrl; }
  if (!url.startsWith("http")) { res.status(400).send("invalid url"); return; }

  let origin = ""; try { origin = new URL(url).origin; } catch {}

  const reqHeaders: Record<string, string> = {
    "User-Agent": BROWSER_UA,
    "Referer": ref || url,
    "Origin": origin,
    "Accept": "*/*",
  };
  const range = req.headers["range"] as string | undefined;
  if (range) reqHeaders["Range"] = range;

  // For HEAD requests (browser probing before playback), mirror HEAD upstream
  if (req.method === "HEAD") {
    try {
      const r = await fetch(url, { method: "HEAD", headers: reqHeaders, signal: AbortSignal.timeout(8000), redirect: "follow" });
      res.status(r.status);
      res.setHeader("Access-Control-Allow-Origin", "*");
      res.setHeader("Access-Control-Allow-Headers", "Range");
      const passHead = ["content-type","content-length","accept-ranges","cache-control"];
      for (const h of passHead) { const v = r.headers.get(h); if (v) res.setHeader(h, v); }
      res.end(); return;
    } catch { res.status(200).setHeader("Access-Control-Allow-Origin", "*").end(); return; }
  }

  try {
    const r = await fetch(url, {
      headers: reqHeaders,
      signal: AbortSignal.timeout(30000),
      redirect: "follow",
    });

    const status = (range && r.status === 206) ? 206 : r.status;
    res.status(status);

    const ct = r.headers.get("content-type") || "video/mp4";
    res.setHeader("Content-Type", ct);
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Access-Control-Allow-Headers", "Range");
    res.setHeader("Access-Control-Expose-Headers", "Content-Range, Accept-Ranges, Content-Length");

    const pass = ["content-length","content-range","accept-ranges","cache-control","last-modified","etag"];
    for (const h of pass) { const v = r.headers.get(h); if (v) res.setHeader(h, v); }

    if (!r.body) { res.end(); return; }
    const reader = r.body.getReader();
    req.on("close", () => reader.cancel().catch(() => {}));
    (async () => {
      try {
        while (true) {
          const { done, value } = await reader.read();
          if (done) { res.end(); break; }
          if (!res.write(value)) await new Promise<void>(ok => res.once("drain", ok));
        }
      } catch { res.end(); }
    })();
  } catch (e: any) {
    if (!res.headersSent) res.status(502).send(`proxy error: ${e?.message ?? e}`);
  }
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

// ════════════════════════════════════════════════════════════════════════════
// BROWSER EXTRACT — Playwright headless Chromium to bypass Cloudflare / JS
// GET /api/anime/browser-extract?url=...&timeout=20
// Returns: { directUrl?, embedUrl, title?, method }
// ════════════════════════════════════════════════════════════════════════════
router.get("/anime/browser-extract", async (req, res) => {
  const url   = req.query.url as string;
  const wait  = Math.min(Number(req.query.timeout) || 20, 60);   // max 60s
  if (!url || !url.startsWith("http")) {
    res.status(400).json({ error: "url required" }); return;
  }

  const chromiumPath = getChromiumPath();
  if (!chromiumPath) {
    res.status(503).json({ error: "Chromium not found on this server" }); return;
  }

  let browser: any = null;
  try {
    const { chromium } = await import("playwright-core");
    browser = await chromium.launch({
      executablePath: chromiumPath,
      headless: true,
      args: [
        "--no-sandbox",
        "--disable-setuid-sandbox",
        "--disable-dev-shm-usage",
        "--disable-gpu",
        "--no-first-run",
        "--no-zygote",
        "--single-process",
        "--disable-extensions",
      ],
    });

    const ctx  = await browser.newContext({
      userAgent: BROWSER_UA,
      viewport: { width: 1280, height: 720 },
      ignoreHTTPSErrors: true,
    });
    const page = await ctx.newPage();

    // Collect video network requests
    const videoUrls: string[] = [];
    page.on("request", (r: any) => {
      const u = r.url() as string;
      if (
        u.includes(".m3u8") || u.includes(".mp4") ||
        u.includes("video/") || u.includes("/hls/") ||
        u.includes("/stream") || u.includes("master.m3u8")
      ) {
        if (!videoUrls.includes(u)) videoUrls.push(u);
      }
    });

    // Navigate with timeout
    try {
      await page.goto(url, { waitUntil: "domcontentloaded", timeout: wait * 1000 });
    } catch {}

    // Try clicking play button if present
    try {
      const playBtn = await page.$("button.play, [class*='play-btn'], [aria-label*='play' i], video");
      if (playBtn) await playBtn.click({ timeout: 3000 });
    } catch {}

    // Wait up to `wait` seconds for a video URL to appear
    const deadline = Date.now() + wait * 1000;
    while (videoUrls.length === 0 && Date.now() < deadline) {
      await new Promise(r => setTimeout(r, 500));
    }

    // Grab page title
    let title = "";
    try { title = await page.title(); } catch {}

    await browser.close();
    browser = null;

    const best = videoUrls.find(u => u.includes(".m3u8"))
               || videoUrls.find(u => u.includes(".mp4"))
               || videoUrls[0];

    res.json({
      directUrl: best || null,
      allUrls:   videoUrls,
      embedUrl:  url,
      title,
      method:    "playwright",
    });
  } catch (e: any) {
    if (browser) { try { await browser.close(); } catch {} }
    res.status(500).json({ error: e?.message ?? String(e), method: "playwright" });
  }
});

export default router;
