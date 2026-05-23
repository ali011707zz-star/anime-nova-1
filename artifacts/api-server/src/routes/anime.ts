import { Router } from "express";
import { db } from "@workspace/db";
import { episodesTable } from "@workspace/db/schema";
import { eq, and, gt, asc } from "drizzle-orm";

const router = Router();

const BROWSER_UA =
  "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36";
const MOBILE_UA =
  "Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36";

const BASE_HDRS: Record<string, string> = {
  "User-Agent": BROWSER_UA,
  Accept: "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8",
  "Accept-Language": "ar,en-US;q=0.9,en;q=0.8",
  // Do NOT set Accept-Encoding — let Node.js handle it natively (no brotli issues)
  Connection: "keep-alive",
};

// ── In-memory caches ──
const searchCache   = new Map<string, { result: any; ts: number }>();
const translateCache = new Map<string, string>();
const SEARCH_TTL    = 3_600_000; // 1 hour
const SRC_TTL       = 6 * 3_600_000; // 6 hours

// ── Known-dead / unplayable file hosts ──
// Only put TRULY dead hosts here (require browser auth, or deleted files).
// Embed-player hosts (vidbm, uptostream, etc.) should be in EMBED_ONLY_HOSTS instead.
const DEAD_FILE_HOSTS = [
  // generic file hosts — no video player, just download links
  "4shared.com","solidfiles.com","d000d.com",
  "vadbam.net","vadbam.com","okfiles.com","gofile.io","uploadfiles.io","hexupload.net",
  "filerio.in","doodstream.com","dood.watch","megaup.net","1fichier.com",
  "bayfiles.com","uploadhaven.com","tusfiles.com","letsupload.co","workupload.com",
  "hexload.com",
  // files frequently deleted from server — causes black screens
  "mp4upload.com",
  // requires browser auth — cannot extract or embed
  "mega.nz","mega.co.nz","mediafire.com",
  "drive.google","docs.google","googleapis.com/drive",
  "ok.ru","odnoklassniki.ru",
  "youtube.com","youtu.be",
  // CDN/tracking scripts — not video sources
  "cloudflareinsights.com","beacon.min.js",
  "jquery.min.js","bootstrap.min.js",
  ".css",".png",".jpg",".jpeg",".gif",".svg",".ico",
  "favicon","robots.txt","sitemap",
];

// ── Embed-player hosts: pass through to iframe without server-side extraction ──
// These block server requests but work fine when embedded directly in an iframe.
const EMBED_ONLY_HOSTS = [
  "vidbm.com","vidbm.me",
  "uptostream.com",
  "playerwish.com","wishfast.top",
  "streamvid.net","streamlare.com",
];
// mp4upload intentionally NOT in EMBED_ONLY_HOSTS — files are frequently deleted

// ── Hosts that block server-side scraping ──
const CLOUDFLARE_PATTERNS = [
  "just a moment",   // actual block page title
  "cf_chl_",         // challenge token in blocked responses
  // Removed: "challenge-platform" — it's a monitoring JS on ALL CF-protected pages
  // Removed: "cf-browser-verification" — old pattern not used on modern CF
  // Removed: "ray id:" — appears in footer of ALL CF-served pages
  // Removed: "enable javascript" — too broad
];

function isCloudflareBlock(html: string): boolean {
  const lower = html.toLowerCase();
  return CLOUDFLARE_PATTERNS.some(p => lower.includes(p));
}

// ════════════════════════════════════════════════════════════════════
//  UTILITY: slug / similarity
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
  return bw.filter((w) => aw.has(w)).length / Math.max(aw.size, bw.length);
}

function toSlug(s: string): string {
  return s.toLowerCase()
    .replace(/[^\w\s-]/g, " ").trim()
    .replace(/\s+/g, "-").replace(/-+/g, "-").replace(/^-|-$/g, "");
}

function buildCandidates(romaji: string, english?: string | null): string[] {
  const seen = new Set<string>();
  const add = (s: string) => {
    const v = s.trim().replace(/-+$/, "");
    if (v.length > 1) seen.add(v);
  };
  for (const raw of [romaji, english].filter(Boolean) as string[]) {
    const base = toSlug(raw);
    add(base); add(base + "-tv");
    const stripped = base
      .replace(/[-\s]*(2nd|3rd|4th|5th|6th|7th|season[-\s]*\d+|\d+st|\d+nd|\d+rd|\d+th)[-\s]*$/i, "")
      .replace(/-+$/, "");
    if (stripped !== base) { add(stripped); add(stripped + "-tv"); }
    add(base + "-2nd-season"); add(base + "-3rd-season");
    if (stripped !== base) { add(stripped + "-2nd-season"); add(stripped + "-3rd-season"); }
    // Without "the" prefix
    const noThe = base.replace(/^the-/, "");
    if (noThe !== base) { add(noThe); add(noThe + "-tv"); }
  }
  return [...seen];
}

function qualityRank(quality: string): number {
  const q = quality.toUpperCase();
  if (q.includes("FHD") || q.includes("1080") || q.includes("FULLHD")) return 3;
  if (q.includes("HD") || q.includes("720")) return 2;
  if (q.includes("SD") || q.includes("480") || q.includes("360")) return 1;
  return 0;
}

function qualityLabel(name: string, explicitQuality?: string): string {
  if (explicitQuality) return explicitQuality.toUpperCase();
  const m = name.match(/\|\s*(FHD|HD|SD|1080p?|720p?|480p?)/i);
  return m ? m[1].toUpperCase().replace(/P$/, "") : "HD";
}

async function safeHead(url: string, headers: Record<string, string>): Promise<number> {
  try {
    const r = await fetch(url, {
      method: "HEAD", headers,
      signal: AbortSignal.timeout(4000), redirect: "follow",
    });
    return r.status;
  } catch { return 0; }
}


// ════════════════════════════════════════════════════════════════════
//  VIDEO EXTRACTION ENGINE — multi-hop iframe chain + site-specific
// ════════════════════════════════════════════════════════════════════

/** Unpack p,a,c,k,e,d obfuscated JavaScript (used by uqload, etc.) */
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

/** Parse direct HLS/MP4 URLs from HTML */
function parseVideoUrl(html: string): { url: string; type: "hls" | "mp4" } | null {
  // Try unpacking p,a,c,k,e,d first
  const unpacked = unpackPacked(html);
  const alts = [
    html,
    html.replace(/\\\/\//g, "//").replace(/\\\//g, "/").replace(/\\"/g, '"'),
    html.replace(/\\u003[Cc]/g, "<").replace(/\\u003[Ee]/g, ">"),
    html.replace(/\\n/g, "\n").replace(/\\t/g, "\t"),
    ...(unpacked ? [unpacked] : []),
  ];

  for (const text of alts) {
    // HLS (preferred)
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

    // MP4
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

/** ok.ru specific: parses data-options JSON for video URLs */
function parseOkRu(html: string): { url: string; type: "hls" | "mp4" } | null {
  try {
    // ok.ru stores video data in data-options attribute as HTML-encoded JSON
    const m = html.match(/data-options="([^"]+)"/);
    if (!m) return null;
    const decoded = m[1]
      .replace(/&amp;/g, "&").replace(/&quot;/g, '"')
      .replace(/&#39;/g, "'").replace(/&lt;/g, "<").replace(/&gt;/g, ">");
    const obj = JSON.parse(decoded);
    // Navigate: flashvars.metadata (JSON string) → videos
    const metaStr = obj?.flashvars?.metadata || obj?.flashvars?.metadataEmbedded;
    if (!metaStr) return null;
    let meta: any;
    if (typeof metaStr === "string") meta = JSON.parse(metaStr);
    else meta = metaStr;
    const videos: Array<{ url: string; type?: string; seekSchema?: number }> =
      meta?.videos || meta?.movie?.videos || [];
    if (!videos.length) return null;
    // Prefer HLS
    const hls = videos.find(v => v.type === "hls" || (v.url || "").includes(".m3u8"));
    if (hls?.url) return { url: hls.url, type: "hls" };
    // Prefer highest quality MP4
    const sorted = [...videos].sort((a, b) => (b.seekSchema || 0) - (a.seekSchema || 0));
    if (sorted[0]?.url) return { url: sorted[0].url, type: "mp4" };
  } catch {}
  return null;
}

/** mp4upload specific extraction */
function parseMp4upload(html: string): { url: string; type: "mp4" | "hls" } | null {
  try {
    // mp4upload embeds have a player1 with video URL in a var
    const pats = [
      /player1\s*=\s*{[^}]*["']file["']\s*:\s*["'](https?:\/\/[^"']+)["']/i,
      /"src"\s*:\s*\["(https?:\/\/[^"]+)"\]/i,
      /var\s+s\s*=\s*["'](https?:\/\/[^"']+\.mp4[^"']*)["']/i,
    ];
    for (const p of pats) {
      const m = html.match(p);
      if (m) {
        const url = m[1];
        return { url, type: url.includes(".m3u8") ? "hls" : "mp4" };
      }
    }
  } catch {}
  return null;
}

/** megamax / vidbm / similar custom players */
function parseMegamax(html: string): { url: string; type: "hls" | "mp4" } | null {
  // These players often have sources in a JSON array with file/src keys
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

/** Streamtape specific extraction */
function parseStreamtape(html: string): { url: string; type: "mp4" } | null {
  try {
    // Streamtape splits the token across two JS vars and concatenates them
    // Pattern: var _0x... = '/get_video?id=ID&expires=EXP&ip=IP&token=TOK1' + 'TOK2'
    const tokenRe = /getElementById\(['"]\S+['"]\)\.innerHTML\s*=\s*["']([^"']+)["']\s*\+\s*["']([^"']+)["']/;
    const m = html.match(tokenRe);
    if (m) {
      const combined = (m[1] + m[2]).replace(/\s/g, "");
      if (combined.includes("streamtape")) return { url: "https:" + combined, type: "mp4" };
      return { url: "https://streamtape.com" + combined, type: "mp4" };
    }
    // Alt pattern
    const altRe = /get_video\?id=[^&"']+&expires=\d+&ip=[^&"']+&token=[^&"'\s]+/;
    const alt = html.match(altRe);
    if (alt) return { url: "https://streamtape.com/" + alt[0], type: "mp4" };
  } catch {}
  return null;
}

/** StreamWish / WishEmbed / Filemoon specific */
function parseStreamwish(html: string): { url: string; type: "hls" | "mp4" } | null {
  // These players embed sources as: sources:[{file:"URL"}] or file:"URL"
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

/** Extract iframe src from HTML (first non-self iframe) */
function extractIframeSrc(html: string, baseUrl: string): string | null {
  const re = /<iframe[^>]+(?:src|data-src)=["']([^"']+)["'][^>]*>/gi;
  let m: RegExpExecArray | null;
  const skip = ["facebook.com", "twitter.com", "google.com", "googleapis.com",
                 "youtube-nocookie", "ads", "doubleclick", "analytics"];
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

/** Deep video extraction — follows iframe chain up to 4 hops */
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
        headers: {
          "User-Agent": BROWSER_UA,
          Referer: ref,
          Origin: origin,
          Accept: "text/html,application/xhtml+xml,*/*;q=0.9",
          "Accept-Language": "ar,en;q=0.9",
        },
        signal: AbortSignal.timeout(10000),
        redirect: "follow",
      });
      if (!r.ok) break;
      const html = await r.text();

      if (isCloudflareBlock(html)) break;

      // Site-specific parsers first
      if (url.includes("ok.ru") || url.includes("odnoklassniki.ru")) {
        const v = parseOkRu(html);
        if (v) return v;
      }
      if (url.includes("streamtape.com") || url.includes("streamtape.net")) {
        const v = parseStreamtape(html);
        if (v) return v;
      }
      if (url.includes("streamwish") || url.includes("wishembed") ||
          url.includes("filemoon") || url.includes("swdyu") || url.includes("awish") ||
          url.includes("playerwish")) {
        const v = parseStreamwish(html);
        if (v) return v;
      }
      if (url.includes("mp4upload.com")) {
        const v = parseMp4upload(html);
        if (v) return v;
      }
      if (url.includes("megamax.me") || url.includes("vidbm.com") ||
          url.includes("uptostream.com") || url.includes("vidlink") ||
          url.includes("vidhide") || url.includes("streamlare")) {
        const v = parseMegamax(html);
        if (v) return v;
      }

      // General video URL parser (catches most remaining patterns)
      const direct = parseVideoUrl(html);
      if (direct) return direct;

      // Follow iframe
      const nextSrc = extractIframeSrc(html, url);
      if (!nextSrc) break;
      ref = url;
      url = nextSrc;
    } catch { break; }
  }
  return null;
}


// ════════════════════════════════════════════════════════════════════
//  AllAnime  (search, resolve & direct video sources)
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

function decodeAaUrl(raw: string): string {
  try {
    if (raw.startsWith("--")) {
      const b = raw.slice(2).replace(/-/g, "=");
      return Buffer.from(b, "base64").toString("utf8");
    }
    if (/^[A-Za-z0-9+/=]{20,}$/.test(raw)) {
      return Buffer.from(raw, "base64").toString("utf8");
    }
  } catch {}
  return raw;
}

const AA_EP_Q = `
query ($showId: String!, $episodeString: String!, $type: VaildTranslationTypeEnumType!) {
  episode(showId: $showId, episodeString: $episodeString, translationType: $type) {
    sourceUrls
  }
}`;

const aaSourceCache = new Map<string, { sources: any[]; ts: number }>();

async function getAllAnimeSources(showId: string, epNum: number): Promise<UnifiedSource[]> {
  const ck = `aa:${showId}-${epNum}`;
  const cached = aaSourceCache.get(ck);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.sources;

  try {
    const d = await aaGql(AA_EP_Q, { showId, episodeString: String(epNum), type: "sub" });
    const raw = (d as any)?.data?.episode?.sourceUrls;
    if (!raw) return [];

    const sourceUrls: any[] = Array.isArray(raw) ? raw
      : typeof raw === "string" ? (() => { try { return JSON.parse(raw); } catch { return []; } })()
      : [];

    const sources: UnifiedSource[] = [];
    const seen = new Set<string>();

    for (const s of sourceUrls) {
      try {
        const url = decodeAaUrl(s.url || "");
        if (!url || url.length < 10 || !url.startsWith("http")) continue;
        if (seen.has(url)) continue;
        seen.add(url);
        if (DEAD_FILE_HOSTS.some(h => url.toLowerCase().includes(h))) continue;

        const name = (s.sourceName || s.type || "AllAnime").replace(/^--|Gogoanime|Vidstreaming/gi, "").trim();
        const isM3u8 = url.includes(".m3u8");
        const isMp4  = url.includes(".mp4");
        const isEmbed = !isM3u8 && !isMp4 && (
          url.includes("embed") || url.includes("iframe") ||
          url.includes("vidstreaming") || url.includes("gogoanime") ||
          url.includes("ssbcontent") || url.includes("playtaku")
        );

        if (isM3u8) {
          sources.push({ name: `AllAnime · ${name}`, url, quality: "HD", qualityRank: 2,
            site: "allanime", directUrl: url, directType: "hls" });
        } else if (isMp4) {
          sources.push({ name: `AllAnime · ${name}`, url, quality: "HD", qualityRank: 2,
            site: "allanime", directUrl: url, directType: "mp4" });
        } else if (!isEmbed) {
          // Unknown — try extraction
          sources.push({ name: `AllAnime · ${name}`, url, quality: "HD", qualityRank: 2, site: "allanime" });
        }
      } catch {}
    }

    aaSourceCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch { return []; }
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
//  AnimeLek  (animelek.top — Arabic)
// ════════════════════════════════════════════════════════════════════
const ALEK_BASE = "https://animelek.top";
const ALEK_HDRS: Record<string, string> = { ...BASE_HDRS, Referer: "https://animelek.top/" };
const alekSlugCache = new Map<string, { slug: string; ts: number }>();
const alekSrcCache  = new Map<string, { sources: any[]; ts: number }>();

async function checkAlekSlug(slug: string): Promise<boolean> {
  return (await safeHead(`${ALEK_BASE}/anime/${slug}/`, ALEK_HDRS)) === 200;
}

async function resolveAlekSlug(
  romaji: string, english?: string | null, passedSlug?: string | null
): Promise<string | null> {
  const cacheKey = (passedSlug || romaji).toLowerCase().trim();
  const cached = alekSlugCache.get(cacheKey);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.slug;
  if (passedSlug && await checkAlekSlug(passedSlug)) {
    alekSlugCache.set(cacheKey, { slug: passedSlug, ts: Date.now() });
    return passedSlug;
  }
  for (const slug of buildCandidates(romaji, english)) {
    if (await checkAlekSlug(slug)) {
      alekSlugCache.set(cacheKey, { slug, ts: Date.now() });
      return slug;
    }
  }
  return null;
}

async function getAlekSources(slug: string, epNum: number): Promise<any[]> {
  const ck = `alek:${slug}-${epNum}`;
  const cached = alekSrcCache.get(ck);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.sources;

  // Build URL candidates — try episode URL, then movie variants (for ep=1)
  const epPath   = `${slug}-${epNum}-\u0627\u0644\u062d\u0644\u0642\u0629`; // slug-N-الحلقة
  const urlsToTry: string[] = [
    `${ALEK_BASE}/episode/${encodeURIComponent(epPath)}/`,
  ];
  if (epNum === 1) {
    // Movies on AnimeLek use "الفيلم" instead of "الحلقة"
    urlsToTry.push(`${ALEK_BASE}/episode/${encodeURIComponent(`${slug}-\u0627\u0644\u0641\u064a\u0644\u0645`)}/`);
    // Some movies appear on the anime's main page directly
    urlsToTry.push(`${ALEK_BASE}/anime/${slug}/`);
  }

  function extractSourcesFromHtml(html: string): any[] {
    const seen = new Set<string>();
    const sources: any[] = [];

    // Method 1: data-embed attribute (most reliable)
    const embedRe = /data-embed="(https?:\/\/[^"]+)"/g;
    const nameRe  = /<span class="server">([^<]+)<\/span>/g;
    const embeds  = [...html.matchAll(embedRe)].map(m => m[1].replace(/&amp;/g, "&"));
    const names   = [...html.matchAll(nameRe)].map(m => m[1].trim());

    for (let i = 0; i < embeds.length; i++) {
      let url = embeds[i];
      const randomMatch = url.match(/[?&]random=([^&]+)/);
      if (randomMatch) { try { url = decodeURIComponent(randomMatch[1]); } catch {} }
      if (seen.has(url)) continue; seen.add(url);
      if (DEAD_FILE_HOSTS.some(h => url.toLowerCase().includes(h))) continue;
      const rawName = names[i] || `سيرفر ${sources.length + 1}`;
      const quality = qualityLabel(rawName);
      sources.push({
        name: rawName.replace(/\s*\|\s*(FHD|HD|SD|1080p?|720p?|480p?)/gi, "").trim(),
        url, quality, qualityRank: qualityRank(quality), site: "animelek",
      });
    }

    // Method 2: any iframe src on the page (fallback)
    if (!sources.length) {
      const iframeRe = /<iframe[^>]+(?:src|data-src)=["'](https?:\/\/[^"']+)["']/gi;
      for (const m of html.matchAll(iframeRe)) {
        const url = m[1];
        if (seen.has(url) || url.includes("animelek")) continue;
        seen.add(url);
        if (DEAD_FILE_HOSTS.some(h => url.toLowerCase().includes(h))) continue;
        sources.push({ name: `سيرفر ${sources.length + 1}`, url, quality: "HD", qualityRank: 2, site: "animelek" });
      }
    }
    return sources;
  }

  for (const epUrl of urlsToTry) {
    try {
      const r = await fetch(epUrl, { headers: ALEK_HDRS, signal: AbortSignal.timeout(8000) });
      if (!r.ok) continue;
      const html = await r.text();
      if (isCloudflareBlock(html)) continue;
      const sources = extractSourcesFromHtml(html);
      if (sources.length) {
        alekSrcCache.set(ck, { sources, ts: Date.now() });
        return sources;
      }
    } catch (e: any) {
      console.error("[alek] getAlekSources error:", e?.message ?? e);
    }
  }
  return [];
}


// ════════════════════════════════════════════════════════════════════
//  MitAnime  (mitanime.com — Arabic)
// ════════════════════════════════════════════════════════════════════
const MIT_BASE = "https://mitanime.com";
const MIT_HDRS: Record<string, string> = { ...BASE_HDRS, Referer: "https://mitanime.com/" };
const mitSlugCache = new Map<string, { slug: string | null; ts: number }>();
const mitSrcCache  = new Map<string, { sources: any[]; ts: number }>();

function buildMitCandidates(romaji: string, english?: string | null): string[] {
  const seen = new Set<string>();
  const add = (s: string) => { const v = s.trim().replace(/-+$/, ""); if (v.length > 1) seen.add(v); };
  for (const raw of [english, romaji].filter(Boolean) as string[]) {
    const base = toSlug(raw); add(base);
    const stripped = base.replace(/[-\s]*(2nd|3rd|4th|5th|season[-\s]*\d+|\d+st|\d+nd|\d+rd|\d+th)[-\s]*$/i, "").replace(/-+$/, "");
    if (stripped !== base) add(stripped);
    add(base + "-2"); if (stripped !== base) add(stripped + "-2");
  }
  return [...seen];
}

async function resolveMitSlug(romaji: string, english?: string | null): Promise<string | null> {
  const cacheKey = romaji.toLowerCase().trim();
  const cached = mitSlugCache.get(cacheKey);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.slug;
  for (const slug of buildMitCandidates(romaji, english)) {
    if ((await safeHead(`${MIT_BASE}/watch/${slug}/1/`, MIT_HDRS)) === 200) {
      mitSlugCache.set(cacheKey, { slug, ts: Date.now() });
      return slug;
    }
  }
  mitSlugCache.set(cacheKey, { slug: null, ts: Date.now() });
  return null;
}

async function getMitSources(slug: string, epNum: number): Promise<any[]> {
  const ck = `mit:${slug}-${epNum}`;
  const cached = mitSrcCache.get(ck);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.sources;
  try {
    const r = await fetch(`${MIT_BASE}/watch/${slug}/${epNum}/`, { headers: MIT_HDRS, signal: AbortSignal.timeout(8000) });
    if (!r.ok) return [];
    const html = await r.text();
    if (isCloudflareBlock(html)) return [];
    const seen = new Set<string>(); const sources: any[] = [];
    for (const m of html.matchAll(/servers\\":\[([^\]]+)\]/g)) {
      try {
        const raw = '[' + m[1].replace(/\\"/g, '"').replace(/\\\//g, '/') + ']';
        const arr: Array<{ name: string; quality: string; url: string; isLocked: boolean }> = JSON.parse(raw);
        for (const s of arr) {
          if (s.isLocked || !s.url || seen.has(s.url)) continue;
          seen.add(s.url);
          const q = s.quality?.toUpperCase() || "HD";
          sources.push({ name: s.name || "سيرفر", url: s.url, quality: q, qualityRank: qualityRank(q), site: "mitanime" });
        }
      } catch {}
    }
    if (sources.length) mitSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  WitAnime  (witanime.one / .rest / .pics — Arabic)
// ════════════════════════════════════════════════════════════════════
const WIT_BASES = ["https://witanime.one", "https://witanime.rest", "https://witanime.pics"];
const WIT_HDRS: Record<string, string> = { ...BASE_HDRS, Referer: "https://witanime.one/" };
const witSlugCache = new Map<string, { slug: string | null; base: string; ts: number }>();
const witSrcCache  = new Map<string, { sources: any[]; ts: number }>();

async function resolveWitSlug(romaji: string, english?: string | null): Promise<{ slug: string; base: string } | null> {
  const cacheKey = romaji.toLowerCase().trim();
  const cached = witSlugCache.get(cacheKey);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.slug ? { slug: cached.slug, base: cached.base } : null;
  const candidates = buildCandidates(romaji, english);
  for (const base of WIT_BASES) {
    for (const slug of candidates) {
      if ((await safeHead(`${base}/anime/${slug}/`, WIT_HDRS)) === 200) {
        witSlugCache.set(cacheKey, { slug, base, ts: Date.now() });
        return { slug, base };
      }
    }
  }
  witSlugCache.set(cacheKey, { slug: null, base: "", ts: Date.now() });
  return null;
}

async function getWitSources(slug: string, base: string, epNum: number): Promise<any[]> {
  const ck = `wit:${slug}-${epNum}`;
  const cached = witSrcCache.get(ck);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.sources;
  try {
    const r = await fetch(`${base}/episode/${slug}-${epNum}/`, { headers: WIT_HDRS, signal: AbortSignal.timeout(8000) });
    if (!r.ok) return [];
    const html = await r.text();
    if (isCloudflareBlock(html)) return [];
    const seen = new Set<string>(); const sources: any[] = [];
    const skip = ["witanime", "googleapis", "facebook", "twitter", "google", "ads", "doubleclick"];
    // Iframes
    for (const m of html.matchAll(/(?:data-src|src)=["'](https?:\/\/[^"']+)["']/g)) {
      const url = m[1]; if (seen.has(url)) continue;
      if (skip.some(s => url.includes(s))) continue;
      seen.add(url);
      const qm = url.match(/\b(1080|fhd|720|hd|480|360|sd)\b/i);
      const q = qm ? qm[1].toUpperCase().replace("720","HD").replace("1080","FHD").replace(/480|360/,"SD") : "HD";
      const host = url.match(/https?:\/\/([^/]+)/)?.[1]?.replace(/^www\./,"")?.split(".")[0] || `سيرفر ${sources.length+1}`;
      sources.push({ name: host, url, quality: q, qualityRank: qualityRank(q), site: "witanime" });
    }
    // JSON sources
    for (const m of html.matchAll(/"url"\s*:\s*"(https?:\/\/[^"]+)"/g)) {
      const url = m[1].replace(/\\/g, "");
      if (seen.has(url) || url.includes("witanime")) continue;
      seen.add(url);
      const host = url.match(/https?:\/\/([^/]+)/)?.[1]?.replace(/^www\./,"")?.split(".")[0] || `سيرفر`;
      sources.push({ name: host, url, quality: "HD", qualityRank: 2, site: "witanime" });
    }
    if (sources.length) witSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  Anime4Up  (anime4up.cam — Arabic, very popular)
// ════════════════════════════════════════════════════════════════════
const FOUR_BASE = "https://anime4up.cam";
const FOUR_HDRS: Record<string, string> = {
  ...BASE_HDRS,
  Referer: "https://anime4up.cam/",
  "Sec-Fetch-Dest": "document", "Sec-Fetch-Mode": "navigate",
};
const fourSlugCache = new Map<string, { slug: string | null; ts: number }>();
const fourSrcCache  = new Map<string, { sources: any[]; ts: number }>();

async function resolveAnime4upSlug(romaji: string, english?: string | null): Promise<string | null> {
  const cacheKey = romaji.toLowerCase().trim();
  const cached = fourSlugCache.get(cacheKey);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.slug;

  // Try search first
  try {
    const searchUrl = `${FOUR_BASE}/?search_param=animes&s=${encodeURIComponent(romaji)}`;
    const sr = await fetch(searchUrl, { headers: FOUR_HDRS, signal: AbortSignal.timeout(10000) });
    if (sr.ok) {
      const html = await sr.text();
      if (!isCloudflareBlock(html)) {
        const linkRe = /href=["']https?:\/\/anime4up\.cam\/anime\/([^/"']+)\//gi;
        const match = html.match(linkRe);
        if (match?.[0]) {
          const slug = match[0].replace(/.*\/anime\/([^/"']+)\/.*/i, "$1");
          if (slug && slug.length > 1) {
            fourSlugCache.set(cacheKey, { slug, ts: Date.now() });
            return slug;
          }
        }
      }
    }
  } catch {}

  // Fallback: try slug candidates
  for (const slug of buildCandidates(romaji, english)) {
    if ((await safeHead(`${FOUR_BASE}/anime/${slug}/`, FOUR_HDRS)) === 200) {
      fourSlugCache.set(cacheKey, { slug, ts: Date.now() });
      return slug;
    }
  }
  fourSlugCache.set(cacheKey, { slug: null, ts: Date.now() });
  return null;
}

async function getAnime4upSources(slug: string, epNum: number): Promise<any[]> {
  const ck = `4up:${slug}-${epNum}`;
  const cached = fourSrcCache.get(ck);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.sources;

  // Try multiple episode URL patterns
  const epUrls = [
    `${FOUR_BASE}/episode/${slug}-episode-${epNum}/`,
    `${FOUR_BASE}/watch/${slug}-episode-${epNum}/`,
    `${FOUR_BASE}/${slug}-episode-${epNum}/`,
  ];

  for (const epUrl of epUrls) {
    try {
      const r = await fetch(epUrl, { headers: FOUR_HDRS, signal: AbortSignal.timeout(8000), redirect: "follow" });
      if (!r.ok) continue;
      const html = await r.text();
      if (isCloudflareBlock(html)) continue;

      const seen = new Set<string>(); const sources: any[] = [];

      // Pattern 1: data-embed-id or data-link on server buttons
      const serverRe = /data-(?:embed-id|link|src|url)=["'](https?:\/\/[^"']+)["'][^>]*>\s*(?:<[^>]+>)*([^<]*)/gi;
      for (const m of html.matchAll(serverRe)) {
        const url = m[1]; if (seen.has(url)) continue; seen.add(url);
        const name = m[2].trim() || `سيرفر ${sources.length + 1}`;
        const q = qualityLabel(name);
        sources.push({ name: name.replace(/\s*\|\s*(FHD|HD|SD|1080p?|720p?|480p?)/gi,"").trim(), url, quality: q, qualityRank: qualityRank(q), site: "anime4up" });
      }

      // Pattern 2: JSON data with server list
      const jsonRe = /"(?:file|url|link|embed)"\s*:\s*"(https?:\/\/[^"\\]+)"/g;
      for (const m of html.matchAll(jsonRe)) {
        const url = m[1].replace(/\\/g,""); if (seen.has(url)) continue; seen.add(url);
        sources.push({ name: `سيرفر ${sources.length + 1}`, url, quality: "HD", qualityRank: 2, site: "anime4up" });
      }

      // Pattern 3: iframe src
      const iframeRe = /<iframe[^>]+(?:src|data-src)=["'](https?:\/\/(?!anime4up)[^"']+)["']/gi;
      for (const m of html.matchAll(iframeRe)) {
        const url = m[1]; if (seen.has(url)) continue; seen.add(url);
        const host = url.match(/https?:\/\/([^/]+)/)?.[1]?.replace(/^www\./,"")?.split(".")[0] || "سيرفر";
        sources.push({ name: host, url, quality: "HD", qualityRank: 2, site: "anime4up" });
      }

      if (sources.length) {
        fourSrcCache.set(ck, { sources, ts: Date.now() });
        return sources;
      }
    } catch { continue; }
  }
  return [];
}


// ════════════════════════════════════════════════════════════════════
//  AnimeBlkom  (animeblkom.net — Arabic)
// ════════════════════════════════════════════════════════════════════
const BLKOM_BASE = "https://animeblkom.net";
const BLKOM_HDRS: Record<string, string> = { ...BASE_HDRS, Referer: "https://animeblkom.net/" };
const blkomSlugCache = new Map<string, { slug: string | null; ts: number }>();
const blkomSrcCache  = new Map<string, { sources: any[]; ts: number }>();

async function resolveAnimeblkomSlug(romaji: string, english?: string | null): Promise<string | null> {
  const cacheKey = romaji.toLowerCase().trim();
  const cached = blkomSlugCache.get(cacheKey);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.slug;

  // Search via their search endpoint
  try {
    const sr = await fetch(`${BLKOM_BASE}/search?query=${encodeURIComponent(english || romaji)}`, {
      headers: BLKOM_HDRS, signal: AbortSignal.timeout(10000),
    });
    if (sr.ok) {
      const html = await sr.text();
      if (!isCloudflareBlock(html)) {
        const linkRe = /href=["']https?:\/\/animeblkom\.net\/animes?\/([^/"']+)\//gi;
        const m = html.match(linkRe);
        if (m?.[0]) {
          const slug = m[0].replace(/.*\/animes?\//,"").replace(/\/.*/,"");
          if (slug?.length > 1) {
            blkomSlugCache.set(cacheKey, { slug, ts: Date.now() });
            return slug;
          }
        }
      }
    }
  } catch {}

  // Fallback: candidates
  for (const slug of buildCandidates(romaji, english)) {
    for (const path of [`/animes/${slug}/`, `/anime/${slug}/`]) {
      if ((await safeHead(`${BLKOM_BASE}${path}`, BLKOM_HDRS)) === 200) {
        blkomSlugCache.set(cacheKey, { slug, ts: Date.now() });
        return slug;
      }
    }
  }
  blkomSlugCache.set(cacheKey, { slug: null, ts: Date.now() });
  return null;
}

async function getAnimeblkomSources(slug: string, epNum: number): Promise<any[]> {
  const ck = `blkom:${slug}-${epNum}`;
  const cached = blkomSrcCache.get(ck);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.sources;

  const epUrls = [
    `${BLKOM_BASE}/watch/${slug}/${epNum}/`,
    `${BLKOM_BASE}/watch/${slug}-episode-${epNum}/`,
    `${BLKOM_BASE}/episode/${slug}-${epNum}/`,
  ];

  for (const epUrl of epUrls) {
    try {
      const r = await fetch(epUrl, { headers: BLKOM_HDRS, signal: AbortSignal.timeout(8000), redirect: "follow" });
      if (!r.ok) continue;
      const html = await r.text();
      if (isCloudflareBlock(html)) continue;

      const seen = new Set<string>(); const sources: any[] = [];

      // iframes
      const iframeRe = /<iframe[^>]+(?:src|data-src)=["'](https?:\/\/(?!animeblkom)[^"']+)["']/gi;
      for (const m of html.matchAll(iframeRe)) {
        const url = m[1]; if (seen.has(url)) continue; seen.add(url);
        const host = url.match(/https?:\/\/([^/]+)/)?.[1]?.replace(/^www\./,"")?.split(".")[0] || "سيرفر";
        const q = qualityLabel(url);
        sources.push({ name: host, url, quality: q, qualityRank: qualityRank(q), site: "animeblkom" });
      }

      // JSON URLs
      for (const m of html.matchAll(/"(?:url|file|src|embed)"\s*:\s*"(https?:\/\/[^"\\]+)"/g)) {
        const url = m[1].replace(/\\/g,"");
        if (seen.has(url) || url.includes("animeblkom")) continue;
        seen.add(url);
        sources.push({ name: `سيرفر ${sources.length+1}`, url, quality: "HD", qualityRank: 2, site: "animeblkom" });
      }

      if (sources.length) {
        blkomSrcCache.set(ck, { sources, ts: Date.now() });
        return sources;
      }
    } catch { continue; }
  }
  return [];
}


// ════════════════════════════════════════════════════════════════════
//  3asq  (3asq.org — Arabic)
// ════════════════════════════════════════════════════════════════════
const ASAQ_BASE = "https://3asq.org";
const ASAQ_HDRS: Record<string, string> = { ...BASE_HDRS, Referer: "https://3asq.org/" };
const asaqSlugCache = new Map<string, { slug: string | null; ts: number }>();
const asaqSrcCache  = new Map<string, { sources: any[]; ts: number }>();

async function resolve3asqSlug(romaji: string, english?: string | null): Promise<string | null> {
  const cacheKey = romaji.toLowerCase().trim();
  const cached = asaqSlugCache.get(cacheKey);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.slug;

  for (const slug of buildCandidates(romaji, english)) {
    if ((await safeHead(`${ASAQ_BASE}/anime/${slug}/`, ASAQ_HDRS)) === 200) {
      asaqSlugCache.set(cacheKey, { slug, ts: Date.now() });
      return slug;
    }
  }
  asaqSlugCache.set(cacheKey, { slug: null, ts: Date.now() });
  return null;
}

async function get3asqSources(slug: string, epNum: number): Promise<any[]> {
  const ck = `3asq:${slug}-${epNum}`;
  const cached = asaqSrcCache.get(ck);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.sources;

  const epUrls = [
    `${ASAQ_BASE}/episode/${slug}-${epNum}/`,
    `${ASAQ_BASE}/episode/${slug}-episode-${epNum}/`,
    `${ASAQ_BASE}/${slug}-${epNum}/`,
  ];

  for (const epUrl of epUrls) {
    try {
      const r = await fetch(epUrl, { headers: ASAQ_HDRS, signal: AbortSignal.timeout(8000), redirect: "follow" });
      if (!r.ok) continue;
      const html = await r.text();
      if (isCloudflareBlock(html)) continue;

      const seen = new Set<string>(); const sources: any[] = [];

      // Pattern like AnimeLek: data-embed attribute
      for (const m of html.matchAll(/data-embed="(https?:\/\/[^"]+)"/g)) {
        const url = m[1].replace(/&amp;/g,"&"); if (seen.has(url)) continue; seen.add(url);
        sources.push({ name: `سيرفر ${sources.length+1}`, url, quality: "HD", qualityRank: 2, site: "3asq" });
      }

      // Iframes
      for (const m of html.matchAll(/<iframe[^>]+(?:src|data-src)=["'](https?:\/\/(?!3asq)[^"']+)["']/gi)) {
        const url = m[1]; if (seen.has(url)) continue; seen.add(url);
        const host = url.match(/https?:\/\/([^/]+)/)?.[1]?.replace(/^www\./,"")?.split(".")[0] || "سيرفر";
        sources.push({ name: host, url, quality: "HD", qualityRank: 2, site: "3asq" });
      }

      // Server name + embed pairs
      const serverPairRe = /class="[^"]*ep-server[^"]*"[^>]*>\s*<a[^>]+href=["']([^"']+)["'][^>]*>([^<]+)/gi;
      for (const m of html.matchAll(serverPairRe)) {
        const url = m[1]; const name = m[2].trim();
        if (seen.has(url)) continue; seen.add(url);
        const q = qualityLabel(name);
        sources.push({ name: name.replace(/\s*\|\s*(FHD|HD|SD|1080p?|720p?|480p?)/gi,"").trim() || "سيرفر", url, quality: q, qualityRank: qualityRank(q), site: "3asq" });
      }

      if (sources.length) {
        asaqSrcCache.set(ck, { sources, ts: Date.now() });
        return sources;
      }
    } catch { continue; }
  }
  return [];
}


// ════════════════════════════════════════════════════════════════════
//  AnimeTitans  (animetitans.net — Arabic)
// ════════════════════════════════════════════════════════════════════
const TITANS_BASE = "https://animetitans.net";
const TITANS_HDRS: Record<string, string> = { ...BASE_HDRS, Referer: "https://animetitans.net/" };
const titansSlugCache = new Map<string, { slug: string | null; ts: number }>();
const titansSrcCache  = new Map<string, { sources: any[]; ts: number }>();

async function resolveAnimeTitansSlug(romaji: string, english?: string | null): Promise<string | null> {
  const cacheKey = romaji.toLowerCase().trim();
  const cached = titansSlugCache.get(cacheKey);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.slug;
  for (const slug of buildCandidates(romaji, english)) {
    if ((await safeHead(`${TITANS_BASE}/anime/${slug}/`, TITANS_HDRS)) === 200) {
      titansSlugCache.set(cacheKey, { slug, ts: Date.now() });
      return slug;
    }
  }
  titansSlugCache.set(cacheKey, { slug: null, ts: Date.now() });
  return null;
}

async function getAnimeTitansSources(slug: string, epNum: number): Promise<any[]> {
  const ck = `titans:${slug}-${epNum}`;
  const cached = titansSrcCache.get(ck);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.sources;
  const epUrls = [
    `${TITANS_BASE}/episode/${slug}-episode-${epNum}/`,
    `${TITANS_BASE}/watch/${slug}/episode-${epNum}/`,
  ];
  for (const epUrl of epUrls) {
    try {
      const r = await fetch(epUrl, { headers: TITANS_HDRS, signal: AbortSignal.timeout(7000), redirect: "follow" });
      if (!r.ok) continue;
      const html = await r.text();
      if (isCloudflareBlock(html)) continue;
      const seen = new Set<string>(); const sources: any[] = [];
      for (const m of html.matchAll(/<iframe[^>]+(?:src|data-src)=["'](https?:\/\/(?!animetitans)[^"']+)["']/gi)) {
        const url = m[1]; if (seen.has(url)) continue; seen.add(url);
        const host = url.match(/https?:\/\/([^/]+)/)?.[1]?.replace(/^www\./,"")?.split(".")[0] || "سيرفر";
        sources.push({ name: host, url, quality: "HD", qualityRank: 2, site: "animetitans" });
      }
      if (sources.length) { titansSrcCache.set(ck, { sources, ts: Date.now() }); return sources; }
    } catch { continue; }
  }
  return [];
}


// ════════════════════════════════════════════════════════════════════
//  Anime Phoenix  (anime-phoenix.com — Arabic, WordPress/Streamit)
//  Episode URL: /episodes/{slug}-episode-{N}
//  The site runs its own native video player — we embed the page directly.
// ════════════════════════════════════════════════════════════════════
const PHOENIX_BASE = "https://anime-phoenix.com";
const PHOENIX_HDRS: Record<string, string> = { ...BASE_HDRS, Referer: "https://anime-phoenix.com/" };
const phoenixSlugCache = new Map<string, { slug: string | null; ts: number }>();
const phoenixSrcCache  = new Map<string, { sources: any[]; ts: number }>();

async function resolvePhoenixSlug(romaji: string, english?: string | null): Promise<string | null> {
  const cacheKey = romaji.toLowerCase().trim();
  const cached = phoenixSlugCache.get(cacheKey);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.slug;
  for (const slug of buildCandidates(romaji, english)) {
    const status = await safeHead(`${PHOENIX_BASE}/animes/${slug}`, PHOENIX_HDRS);
    if (status === 200) {
      phoenixSlugCache.set(cacheKey, { slug, ts: Date.now() });
      return slug;
    }
  }
  phoenixSlugCache.set(cacheKey, { slug: null, ts: Date.now() });
  return null;
}

async function getPhoenixSources(slug: string, epNum: number): Promise<any[]> {
  const ck = `phoenix:${slug}-${epNum}`;
  const cached = phoenixSrcCache.get(ck);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.sources;
  const epUrl = `${PHOENIX_BASE}/episodes/${slug}-episode-${epNum}`;
  try {
    const status = await safeHead(epUrl, PHOENIX_HDRS);
    if (status !== 200) return [];
    const sources = [{ name: "Anime Phoenix", url: epUrl, quality: "HD", qualityRank: 2, site: "animePhoenix" }];
    phoenixSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch { return []; }
}

// ════════════════════════════════════════════════════════════════════
//  Video cache helpers (Replit DB)
// ════════════════════════════════════════════════════════════════════
interface CachedSource {
  name: string; url: string; quality: string; qualityRank: number; site: string;
  directUrl?: string; directType?: "hls" | "mp4";
}

async function getFromSupabase(anilistId: number, ep: number): Promise<CachedSource[]> {
  try {
    const cutoff = new Date(Date.now() - 12 * 3_600_000);
    const rows = await db
      .select()
      .from(episodesTable)
      .where(
        and(
          eq(episodesTable.anilist_id, anilistId),
          eq(episodesTable.episode_number, ep),
          gt(episodesTable.created_at, cutoff),
        )
      )
      .orderBy(asc(episodesTable.priority));
    const valid = rows.filter(r => r.server_url != null);
    if (!valid.length) return [];
    return valid.map((row) => ({
      name: row.server_name || row.title || "سيرفر",
      url: row.episode_page_url || row.server_url || "",
      quality: row.quality || "HD",
      qualityRank: qualityRank(row.quality || "HD"),
      site: row.source || "cached",
      directUrl: row.server_url || undefined,
      directType: (row.server_url?.includes(".m3u8") ? "hls" : "mp4") as "hls" | "mp4",
    }));
  } catch { return []; }
}

async function saveToSupabase(
  anilistId: number, ep: number, animeTitle: string, sources: CachedSource[]
): Promise<void> {
  try {
    const rows = sources.map((src, i) => ({
      id: `${anilistId}-ep${ep}-${src.site}-${i}`,
      anilist_id: anilistId,
      episode_number: ep,
      title: animeTitle,
      thumbnail: "",
      server_url: src.directUrl || null,
      server_name: src.name,
      quality: src.quality,
      source: src.site,
      priority: i,
      episode_page_url: src.url,
      watch_url: src.url,
    }));
    if (rows.length === 0) return;
    await db.insert(episodesTable).values(rows).onConflictDoUpdate({
      target: episodesTable.id,
      set: {
        server_url: episodesTable.server_url,
        server_name: episodesTable.server_name,
        quality: episodesTable.quality,
        episode_page_url: episodesTable.episode_page_url,
        watch_url: episodesTable.watch_url,
        created_at: episodesTable.created_at,
      },
    });
  } catch {}
}


// ════════════════════════════════════════════════════════════════════
//  Episode URL cache — cached results stored in episodes table
// ════════════════════════════════════════════════════════════════════
const dbLookupCache = new Map<string, { urls: string[]; ts: number }>();

async function findEpisodeUrlsFromDB(
  _title: string, _english: string | null, _ep: number, _malId?: number
): Promise<string[]> {
  return [];
}

/** Detect which site a URL belongs to */
function detectSite(url: string): string {
  if (url.includes("anime4arabs.com")) return "anime4arabs";
  if (url.includes("mitanime.com"))    return "mitanime";
  if (url.includes("okanime.xyz"))     return "okanime";
  return "db";
}

/** Generic episode page scraper — extracts embed/iframe URLs from a watch page */
async function scrapeEpisodePage(epUrl: string, site: string, referer: string): Promise<any[]> {
  const cacheKey = `page:${epUrl}`;
  const cached = dbLookupCache.get(cacheKey);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.urls as any;

  const hdrs: Record<string, string> = { ...BASE_HDRS, Referer: referer };
  try {
    const r = await fetch(epUrl, { headers: hdrs, signal: AbortSignal.timeout(7000), redirect: "follow" });
    if (!r.ok) return [];
    const html = await r.text();
    if (isCloudflareBlock(html)) return [];

    const seen = new Set<string>();
    const sources: any[] = [];
    const own = new URL(epUrl).hostname;

    // Tracking/analytics/CDN domains to exclude from scraping
    const TRACKING_HOSTS = [
      "googletagmanager.com","google-analytics.com","googlesyndication.com",
      "doubleclick.net","gstatic.com","googleapis.com","google.com",
      "facebook.net","facebook.com","twitter.com","t.co",
      "cdn.jsdelivr.net","cdnjs.cloudflare.com","cloudflare.com",
      "jquery.com","bootstrapcdn.com","fontawesome.com","fonts.googleapis.com",
      "recaptcha.net","captcha","disqus.com","gravatar.com",
      "wp-content","wp-includes","wordpress.com",
    ];

    const addUrl = (rawUrl: string, name?: string) => {
      try {
        const url = rawUrl.replace(/&amp;/g, "&").replace(/\\/g, "").trim();
        if (!url.startsWith("http")) return;
        if (seen.has(url)) return;
        if (DEAD_FILE_HOSTS.some(h => url.toLowerCase().includes(h))) return;
        const host = new URL(url).hostname.toLowerCase();
        if (host === own) return;
        if (TRACKING_HOSTS.some(h => host.includes(h))) return;
        // Must look like a video embed or stream URL (has path, not just a domain root)
        const pathname = new URL(url).pathname;
        if (pathname === "/" || pathname === "") return;
        seen.add(url);
        const label = name || host.replace(/^www\./, "").split(".")[0] || "سيرفر";
        // Detect direct video links
        const isM3u8 = url.includes(".m3u8");
        const isMp4  = url.match(/\.mp4([?#]|$)/i) !== null;
        sources.push({
          name: label, url, quality: "HD", qualityRank: 2, site,
          ...(isM3u8 ? { directUrl: url, directType: "hls" } : {}),
          ...(isMp4  ? { directUrl: url, directType: "mp4" } : {}),
        });
      } catch {}
    };

    // mitanime: servers JSON embedded in page
    for (const m of html.matchAll(/servers\\":\[([^\]]+)\]/g)) {
      try {
        const raw = "[" + m[1].replace(/\\"/g, '"').replace(/\\\//g, "/") + "]";
        const arr: Array<{ name: string; quality: string; url: string; isLocked?: boolean }> = JSON.parse(raw);
        for (const s of arr) {
          if (s.isLocked || !s.url) continue;
          addUrl(s.url, s.name);
        }
      } catch {}
    }

    // iframe src / data-src
    for (const m of html.matchAll(/(?:data-src|src)\s*=\s*["'](https?:\/\/[^"']+)["']/gi)) addUrl(m[1]);

    // data-embed / data-server / data-link
    for (const m of html.matchAll(/data-(?:embed|server|link|url|iframe)\s*=\s*["'](https?:\/\/[^"']+)["']/gi)) addUrl(m[1]);

    // JS string values: "url":"..." "file":"..." "src":"..."
    for (const m of html.matchAll(/"(?:url|file|src|embed|link|source|server)"\s*:\s*["'](https?:\/\/[^"'\\]+)["']/gi)) addUrl(m[1]);

    // Direct m3u8 / mp4 in scripts
    for (const m of html.matchAll(/(https?:\/\/[^\s"'<>]+\.(?:m3u8|mp4)[^\s"'<>]*)/gi)) addUrl(m[1]);

    dbLookupCache.set(cacheKey, { urls: sources as any, ts: Date.now() });
    return sources;
  } catch { return []; }
}

/** Scrape all episode URLs found in DB and return combined sources */
async function getDBSources(title: string, english: string | null, ep: number, malId?: number): Promise<any[]> {
  const urls = await findEpisodeUrlsFromDB(title, english, ep, malId);
  if (!urls.length) return [];

  const results = await Promise.all(urls.map(async (epUrl) => {
    const site = detectSite(epUrl);
    const referer = new URL(epUrl).origin + "/";
    return scrapeEpisodePage(epUrl, site, referer);
  }));

  return results.flat();
}


// ════════════════════════════════════════════════════════════════════
//  AnimeGate  (animegate.me — Arabic)
// ════════════════════════════════════════════════════════════════════
const GATE_BASES = ["https://animegate.me", "https://animegate.net", "https://anime-gate.net"];
const GATE_HDRS: Record<string, string> = { ...BASE_HDRS, Referer: "https://animegate.me/" };
const gateSlugCache = new Map<string, { slug: string | null; base: string; ts: number }>();
const gateSrcCache  = new Map<string, { sources: any[]; ts: number }>();

async function resolveAnimeGateSlug(romaji: string, english?: string | null): Promise<{ slug: string; base: string } | null> {
  const cacheKey = romaji.toLowerCase().trim();
  const cached = gateSlugCache.get(cacheKey);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.slug ? { slug: cached.slug, base: cached.base } : null;
  const candidates = buildCandidates(romaji, english);
  for (const base of GATE_BASES) {
    for (const slug of candidates.slice(0, 6)) {
      if ((await safeHead(`${base}/anime/${slug}/`, GATE_HDRS)) === 200) {
        gateSlugCache.set(cacheKey, { slug, base, ts: Date.now() });
        return { slug, base };
      }
    }
  }
  gateSlugCache.set(cacheKey, { slug: null, base: "", ts: Date.now() });
  return null;
}

async function getAnimeGateSources(slug: string, base: string, ep: number): Promise<any[]> {
  const ck = `gate:${slug}-${ep}`;
  const cached = gateSrcCache.get(ck);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.sources;
  const epUrls = [
    `${base}/episode/${slug}-${ep}/`,
    `${base}/episode/${slug}-episode-${ep}/`,
    `${base}/watch/${slug}-${ep}/`,
    `${base}/${slug}-episode-${ep}/`,
  ];
  for (const epUrl of epUrls) {
    try {
      const r = await fetch(epUrl, { headers: GATE_HDRS, signal: AbortSignal.timeout(7000), redirect: "follow" });
      if (!r.ok) continue;
      const html = await r.text();
      if (isCloudflareBlock(html)) continue;
      const seen = new Set<string>(); const sources: any[] = [];
      for (const m of html.matchAll(/data-embed="(https?:\/\/[^"]+)"/g)) {
        const url = m[1].replace(/&amp;/g, "&"); if (seen.has(url)) continue; seen.add(url);
        if (DEAD_FILE_HOSTS.some(h => url.includes(h))) continue;
        sources.push({ name: `سيرفر ${sources.length + 1}`, url, quality: "HD", qualityRank: 2, site: "animegate" });
      }
      for (const m of html.matchAll(/<iframe[^>]+(?:src|data-src)=["'](https?:\/\/(?!animegate)[^"']+)["']/gi)) {
        const url = m[1]; if (seen.has(url)) continue; seen.add(url);
        if (DEAD_FILE_HOSTS.some(h => url.includes(h))) continue;
        const host = url.match(/https?:\/\/([^/]+)/)?.[1]?.replace(/^www\./, "")?.split(".")[0] || "سيرفر";
        sources.push({ name: host, url, quality: "HD", qualityRank: 2, site: "animegate" });
      }
      if (sources.length) { gateSrcCache.set(ck, { sources, ts: Date.now() }); return sources; }
    } catch { continue; }
  }
  return [];
}


// ════════════════════════════════════════════════════════════════════
//  AraAnime  (araanime.net — Arabic)
// ════════════════════════════════════════════════════════════════════
const ARA_BASES = ["https://araanime.net", "https://www.araanime.net", "https://araanime.com"];
const ARA_HDRS: Record<string, string> = { ...BASE_HDRS, Referer: "https://araanime.net/" };
const araSlugCache = new Map<string, { slug: string | null; base: string; ts: number }>();
const araSrcCache  = new Map<string, { sources: any[]; ts: number }>();

async function resolveAraAnimeSlug(romaji: string, english?: string | null): Promise<{ slug: string; base: string } | null> {
  const cacheKey = romaji.toLowerCase().trim();
  const cached = araSlugCache.get(cacheKey);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.slug ? { slug: cached.slug, base: cached.base } : null;
  const candidates = buildCandidates(romaji, english);
  for (const base of ARA_BASES) {
    try {
      const sr = await fetch(`${base}/?s=${encodeURIComponent(romaji)}`, { headers: ARA_HDRS, signal: AbortSignal.timeout(8000) });
      if (sr.ok) {
        const html = await sr.text();
        const linkRe = /href=["']https?:\/\/[^"']*\/anime\/([^/"']+)\//gi;
        const m = html.match(linkRe);
        if (m?.[0]) {
          const slug = m[0].replace(/.*\/anime\/([^/"']+)\/.*/i, "$1");
          if (slug?.length > 1) {
            araSlugCache.set(cacheKey, { slug, base, ts: Date.now() });
            return { slug, base };
          }
        }
      }
    } catch {}
    for (const slug of candidates.slice(0, 6)) {
      if ((await safeHead(`${base}/anime/${slug}/`, ARA_HDRS)) === 200) {
        araSlugCache.set(cacheKey, { slug, base, ts: Date.now() });
        return { slug, base };
      }
    }
  }
  araSlugCache.set(cacheKey, { slug: null, base: "", ts: Date.now() });
  return null;
}

async function getAraAnimeSources(slug: string, base: string, ep: number): Promise<any[]> {
  const ck = `ara:${slug}-${ep}`;
  const cached = araSrcCache.get(ck);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.sources;
  const epUrls = [
    `${base}/episode/${slug}-episode-${ep}/`,
    `${base}/watch/${slug}/${ep}/`,
    `${base}/${slug}-episode-${ep}/`,
    `${base}/episode/${slug}-${ep}/`,
  ];
  for (const epUrl of epUrls) {
    try {
      const r = await fetch(epUrl, { headers: ARA_HDRS, signal: AbortSignal.timeout(7000), redirect: "follow" });
      if (!r.ok) continue;
      const html = await r.text();
      if (isCloudflareBlock(html)) continue;
      const seen = new Set<string>(); const sources: any[] = [];
      for (const m of html.matchAll(/<iframe[^>]+(?:src|data-src)=["'](https?:\/\/(?!araanime)[^"']+)["']/gi)) {
        const url = m[1]; if (seen.has(url)) continue; seen.add(url);
        if (DEAD_FILE_HOSTS.some(h => url.includes(h))) continue;
        const host = url.match(/https?:\/\/([^/]+)/)?.[1]?.replace(/^www\./, "")?.split(".")[0] || "سيرفر";
        sources.push({ name: host, url, quality: "HD", qualityRank: 2, site: "araanime" });
      }
      for (const m of html.matchAll(/"(?:url|file|src|embed)"\s*:\s*"(https?:\/\/[^"\\]+)"/g)) {
        const url = m[1].replace(/\\/g, "");
        if (seen.has(url) || url.includes("araanime")) continue; seen.add(url);
        if (DEAD_FILE_HOSTS.some(h => url.includes(h))) continue;
        sources.push({ name: `سيرفر ${sources.length + 1}`, url, quality: "HD", qualityRank: 2, site: "araanime" });
      }
      if (sources.length) { araSrcCache.set(ck, { sources, ts: Date.now() }); return sources; }
    } catch { continue; }
  }
  return [];
}


// ════════════════════════════════════════════════════════════════════
//  AppsAnime  (apps-anime.com — Arabic)
// ════════════════════════════════════════════════════════════════════
const APPS_BASE = "https://apps-anime.com";
const APPS_HDRS: Record<string, string> = { ...BASE_HDRS, Referer: "https://apps-anime.com/" };
const appsSlugCache = new Map<string, { uid: string | null; ts: number }>();
const appsSrcCache  = new Map<string, { sources: any[]; ts: number }>();

async function resolveAppsAnimeUid(romaji: string, english?: string | null): Promise<string | null> {
  const cacheKey = romaji.toLowerCase().trim();
  const cached = appsSlugCache.get(cacheKey);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.uid;

  const queries = [romaji, english].filter(Boolean) as string[];
  for (const q of queries) {
    try {
      const sr = await fetch(`${APPS_BASE}/search?q=${encodeURIComponent(q)}`, {
        headers: APPS_HDRS, signal: AbortSignal.timeout(8000),
      });
      if (!sr.ok) continue;
      const html = await sr.text();
      if (isCloudflareBlock(html)) continue;
      // Match links like /anime/one-piece-eXawJ8Wy
      const m = html.match(/href=["']https?:\/\/apps-anime\.com\/anime\/([^"']+)["']/i);
      if (m?.[1]) {
        // Extract the 8-char UID at the end of slug
        const uid = m[1].trim();
        appsSlugCache.set(cacheKey, { uid, ts: Date.now() });
        return uid;
      }
    } catch {}
  }
  appsSlugCache.set(cacheKey, { uid: null, ts: Date.now() });
  return null;
}

async function getAppsAnimeSources(uid: string, ep: number): Promise<any[]> {
  const ck = `apps:${uid}-${ep}`;
  const cached = appsSrcCache.get(ck);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.sources;

  const seen = new Set<string>(); const sources: any[] = [];

  const epUrls = [
    `${APPS_BASE}/anime/${uid}`,
  ];

  for (const animeUrl of epUrls) {
    try {
      const r = await fetch(animeUrl, { headers: APPS_HDRS, signal: AbortSignal.timeout(8000), redirect: "follow" });
      if (!r.ok) continue;
      const html = await r.text();
      if (isCloudflareBlock(html)) continue;

      // Find episode-specific links
      const epRe = new RegExp(
        `href=["'](https?://apps-anime\\.com/[^"']+(?:episode|ep|watch)[^"']*[/-]${ep}[^"']*)["']`,
        "gi"
      );
      const epUrls2: string[] = [];
      for (const m of html.matchAll(epRe)) epUrls2.push(m[1]);

      // Also look for player iframes on the anime page
      for (const m of html.matchAll(/<iframe[^>]+src=["'](https?:\/\/apps-player\.com[^"']+)["']/gi)) {
        const url = m[1]; if (seen.has(url)) continue; seen.add(url);
        sources.push({ name: "AppsPlayer", url, quality: "HD", qualityRank: 2, site: "appsanime" });
      }

      // Try fetching episode page
      for (const epUrl2 of epUrls2.slice(0, 3)) {
        try {
          const er = await fetch(epUrl2, { headers: APPS_HDRS, signal: AbortSignal.timeout(6000), redirect: "follow" });
          if (!er.ok) continue;
          const ehtml = await er.text();
          if (isCloudflareBlock(ehtml)) continue;
          for (const m of ehtml.matchAll(/<iframe[^>]+src=["'](https?:\/\/(?:apps-player|[^"']+)\.com[^"']+)["']/gi)) {
            const url = m[1]; if (seen.has(url)) continue; seen.add(url);
            sources.push({ name: "AppsPlayer", url, quality: "HD", qualityRank: 2, site: "appsanime" });
          }
          for (const m of ehtml.matchAll(/(https?:\/\/[^\s"'<>]+\.(?:m3u8|mp4)[^\s"'<>]*)/gi)) {
            const url = m[1]; if (seen.has(url)) continue; seen.add(url);
            const isDirect = url.includes(".m3u8");
            sources.push({ name: "AppsAnime", url, quality: "HD", qualityRank: 2, site: "appsanime",
              ...(isDirect ? { directUrl: url, directType: "hls" as const } : {}) });
          }
        } catch { continue; }
      }

      if (sources.length) break;
    } catch { continue; }
  }

  appsSrcCache.set(ck, { sources, ts: Date.now() });
  return sources;
}


// ════════════════════════════════════════════════════════════════════
//  Probe endpoint  GET /api/anime/probe
// ════════════════════════════════════════════════════════════════════
router.get("/anime/probe", async (req, res) => {
  const url = (req.query.url as string | undefined)?.trim();
  if (!url || !url.startsWith("http")) { res.status(400).json({ error: "valid url required" }); return; }
  try {
    const r = await fetch(url, {
      method: "HEAD",
      headers: { "User-Agent": BROWSER_UA, Referer: url },
      signal: AbortSignal.timeout(5000), redirect: "follow",
    });
    const alive = r.status < 400;
    res.json({ alive, finalUrl: r.url });
  } catch { res.json({ alive: true, finalUrl: url }); }
});


// ════════════════════════════════════════════════════════════════════
//  Extract Direct Video  GET /api/anime/extract-video
//  Multi-hop: follows iframe chain to find real video URL
// ════════════════════════════════════════════════════════════════════
router.get("/anime/extract-video", async (req, res) => {
  const url = (req.query.url as string | undefined)?.trim();
  const referer = (req.query.referer as string | undefined)?.trim();
  if (!url || !url.startsWith("http")) { res.status(400).json({ error: "url required" }); return; }
  try {
    const result = await extractVideoDeep(url, referer);
    res.json({ videoUrl: result?.url ?? null, videoType: result?.type ?? null });
  } catch (e: any) {
    res.json({ videoUrl: null, videoType: null, error: e.message });
  }
});


// ════════════════════════════════════════════════════════════════════
//  AllAnime resolve & search endpoints
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
//  UNIFIED  /api/anime/all-sources  — 9 sites + pre-extraction + DB cache
// ════════════════════════════════════════════════════════════════════
interface UnifiedSource {
  name: string; url: string; quality: string; qualityRank: number; site: string;
  directUrl?: string; directType?: "hls" | "mp4";
}

// Hosts that are impossible to extract server-side (need browser/auth)
// Combined with EMBED_ONLY_HOSTS below — all skipped during extraction
const SKIP_EXTRACT_HOSTS = [
  "drive.google", "mega.nz", "mediafire.com",
  "ok.ru", "odnoklassniki.ru",
  "soraplay.xyz", "anime7u",
  "youtube.com", "youtu.be",
  // embed-player hosts block server requests — send as embed directly
  ...EMBED_ONLY_HOSTS,
];

router.get("/anime/all-sources", async (req, res) => {
  const title     = (req.query.title    as string | undefined)?.trim() || "";
  const english   = (req.query.english  as string | undefined)?.trim() || null;
  const ep        = parseInt((req.query.ep as string) || "1");
  const alekSlug  = (req.query.alekSlug as string | undefined)?.trim() || null;
  const mitSlug   = (req.query.mitSlug  as string | undefined)?.trim() || null;
  const anilistId = parseInt((req.query.anilistId as string) || "0") || 0;
  const malId     = parseInt((req.query.malId     as string) || "0") || 0;

  if (!title && !alekSlug) { res.status(400).json({ error: "title or alekSlug required" }); return; }
  if (!ep || ep < 1) { res.status(400).json({ error: "valid ep number required" }); return; }

  try {
    // ── 1. Check DB cache (returns pre-extracted working sources) ──
    if (anilistId) {
      const cached = await getFromSupabase(anilistId, ep);
      if (cached.length > 0) {
        req.log.info({ anilistId, ep, count: cached.length }, "all-sources: DB cache hit");
        res.json({ sources: cached, total: cached.length, fromCache: true });
        return;
      }
    }

    // Cap each scraper at 10s to keep response fast
    const SCRAPER_MS = 10000;
    const capped = <T>(fn: () => Promise<T>, fallback: T): Promise<T> =>
      Promise.race([fn(), new Promise<T>(r => setTimeout(() => r(fallback), SCRAPER_MS))]);

    const empty = { sources: [] as UnifiedSource[] };

    // ── 2. Scrape 5 working sources in parallel ──
    // Sources confirmed working (HTTP 200): AnimeLek, Anime4Up, AnimeTitans
    // + MitAnime (server-side JSON extraction), + DB cache
    const [alekRes, mitRes, fourRes, titansRes, dbRes] =
      await Promise.allSettled([
        // 1. AnimeLek — confirmed HTTP 200
        capped(async () => {
          const slug = await resolveAlekSlug(title, english, alekSlug);
          if (!slug) return { slug: null, sources: [] as UnifiedSource[] };
          return { slug, sources: (await getAlekSources(slug, ep)) as UnifiedSource[] };
        }, { slug: null, sources: [] as UnifiedSource[] }),
        // 2. MitAnime — works via server-side JSON scraping
        capped(async () => {
          const slug = mitSlug || (title ? await resolveMitSlug(title, english) : null);
          if (!slug) return { slug: null, sources: [] as UnifiedSource[] };
          return { slug, sources: (await getMitSources(slug, ep)) as UnifiedSource[] };
        }, { slug: null, sources: [] as UnifiedSource[] }),
        // 3. Anime4Up — confirmed HTTP 200
        capped(async () => {
          if (!title) return empty;
          const slug = await resolveAnime4upSlug(title, english);
          if (!slug) return empty;
          return { sources: (await getAnime4upSources(slug, ep)) as UnifiedSource[] };
        }, empty),
        // 4. AnimeTitans — confirmed HTTP 200
        capped(async () => {
          if (!title) return empty;
          const slug = await resolveAnimeTitansSlug(title, english);
          if (!slug) return empty;
          return { sources: (await getAnimeTitansSources(slug, ep)) as UnifiedSource[] };
        }, empty),
        // 5. DB sources — 24k pre-collected URLs (anime4arabs, mitanime, okanime)
        capped(async () => {
          const srcs = await getDBSources(title, english, ep, malId || undefined);
          return { sources: srcs as UnifiedSource[] };
        }, empty),
      ]);

    // ── 3. Collect & deduplicate ──
    const rawSources: UnifiedSource[] = [];
    const seenUrls = new Set<string>();
    const addSources = (result: PromiseSettledResult<{ sources: UnifiedSource[] }>) => {
      if (result.status !== "fulfilled") return;
      for (const s of result.value.sources) {
        if (!s.url || seenUrls.has(s.url)) continue;
        if (DEAD_FILE_HOSTS.some(h => s.url.toLowerCase().includes(h))) continue;
        seenUrls.add(s.url);
        rawSources.push(s);
      }
    };
    // DB/cache first, then scrapers
    [dbRes, alekRes, fourRes, titansRes, mitRes].forEach(addSources);

    const SITE_PRIO: Record<string, number> = {
      anime4arabs: 10, mitanime: 10, okanime: 10, db: 10,
      anime4up: 8, animelek: 7, animetitans: 6,
    };
    rawSources.sort((a, b) => {
      // Direct URL sources always come first regardless of site
      const aDirect = a.directUrl ? 1 : 0;
      const bDirect = b.directUrl ? 1 : 0;
      if (bDirect !== aDirect) return bDirect - aDirect;
      if (b.qualityRank !== a.qualityRank) return b.qualityRank - a.qualityRank;
      return (SITE_PRIO[b.site] || 0) - (SITE_PRIO[a.site] || 0);
    });

    // ── 4. Sort: direct-URL sources first, then by site priority ──
    const withDirect = rawSources.filter(s => s.directUrl);
    const embedOnly  = rawSources.filter(s => !s.directUrl);
    const allSources = [...withDirect, ...embedOnly];

    req.log.info({ total: allSources.length, withDirect: withDirect.length }, "all-sources done");
    res.json({
      sources: allSources,
      alekSlug: alekRes.status === "fulfilled" ? (alekRes.value as any).slug : null,
      mitSlug:  mitRes.status  === "fulfilled" ? (mitRes.value  as any).slug  : null,
      total: allSources.length,
    });
  } catch (e: any) {
    req.log.error({ err: e }, "all-sources failed");
    res.status(500).json({ error: e.message });
  }
});


/** HEAD probe — verify a direct HLS/MP4 URL is actually reachable */
async function probeDirectUrl(url: string, referer?: string): Promise<boolean> {
  try {
    const r = await fetch(url, {
      method: "HEAD",
      headers: {
        "User-Agent": BROWSER_UA,
        ...(referer ? { Referer: referer } : {}),
        Range: "bytes=0-1024",
      },
      signal: AbortSignal.timeout(5000),
      redirect: "follow",
    });
    // 200 OK, 206 Partial Content, or 302/301 redirect (CDN signed URLs)
    return r.ok || r.status === 206 || r.status === 302 || r.status === 301;
  } catch {
    // Network error — could still work from client; don't discard
    return true;
  }
}

// ════════════════════════════════════════════════════════════════════
//  Helper: try extractVideoDeep for each embed source in parallel
//  Sends result (with or without directUrl) as each one completes.
//  Probes every directUrl via HEAD before sending to client.
// ════════════════════════════════════════════════════════════════════
async function extractAndSend(
  sources: UnifiedSource[],
  send: (s: UnifiedSource) => void,
  timeoutMs = 9000,
): Promise<void> {
  await Promise.allSettled(sources.map(async (s) => {
    // Already has a direct URL — probe it first
    if (s.directUrl) {
      const alive = await probeDirectUrl(s.directUrl, s.url);
      if (alive) send(s);
      // If dead, skip entirely — don't send as embed fallback (embed might also be dead)
      return;
    }
    // Known un-extractable hosts — send as embed
    if (SKIP_EXTRACT_HOSTS.some(h => s.url.includes(h))) { send(s); return; }
    // Direct m3u8/mp4 in the URL itself
    if (s.url.match(/\.m3u8([?#]|$)/i)) {
      const alive = await probeDirectUrl(s.url);
      if (alive) send({ ...s, directUrl: s.url, directType: "hls" });
      return;
    }
    if (s.url.match(/\.mp4([?#]|$)/i)) {
      const alive = await probeDirectUrl(s.url);
      if (alive) send({ ...s, directUrl: s.url, directType: "mp4" });
      return;
    }
    try {
      const result = await Promise.race([
        extractVideoDeep(s.url, s.url),
        new Promise<null>(r => setTimeout(() => r(null), timeoutMs)),
      ]);
      if (result) {
        // Probe the extracted URL before committing to it
        const alive = await probeDirectUrl(result.url, s.url);
        if (alive) {
          send({ ...s, directUrl: result.url, directType: result.type });
        } else {
          send(s); // extracted URL dead → fall back to embed
        }
      } else {
        send(s);
      }
    } catch {
      send(s);
    }
  }));
}


// ════════════════════════════════════════════════════════════════════
//  Sources Stream  GET /api/anime/sources-stream  (SSE)
//  Streams sources as they arrive — frontend shows them immediately
// ════════════════════════════════════════════════════════════════════
router.get("/anime/sources-stream", async (req, res) => {
  const title     = ((req.query.title    as string) || "").trim();
  const english   = ((req.query.english  as string) || "").trim() || null;
  const ep        = parseInt((req.query.ep as string) || "1");
  const alekSlug  = (req.query.alekSlug as string | undefined)?.trim() || null;
  const mitSlug   = (req.query.mitSlug  as string | undefined)?.trim() || null;
  const anilistId = parseInt((req.query.anilistId as string) || "0") || 0;
  const malId     = parseInt((req.query.malId     as string) || "0") || 0;

  // SSE headers
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
    if (!s.url || seenUrls.has(s.url)) return;
    if (DEAD_FILE_HOSTS.some(h => s.url.toLowerCase().includes(h))) return;
    seenUrls.add(s.url);
    res.write(`data: ${JSON.stringify(s)}\n\n`);
  }

  function sendMany(sources: UnifiedSource[]) {
    for (const s of sources) sendSrc(s);
  }

  try {
    // Check DB cache first — send immediately if hit
    if (anilistId) {
      const cached = await getFromSupabase(anilistId, ep);
      if (cached.length > 0) {
        sendMany(cached as UnifiedSource[]);
        if (!closed) res.write("data: [DONE]\n\n");
        res.end(); return;
      }
    }

    const SCRAPER_MS = 9000;
    const empty = { sources: [] as UnifiedSource[] };

    // Run all scrapers independently, send results as each finishes
    // Each scraper now also tries extractVideoDeep in parallel for embed URLs
    const EXTRACT_MS = 9000;

    const scrapers: Promise<void>[] = [
      // 1. AnimeLek
      (async () => {
        try {
          const slug = await Promise.race([
            resolveAlekSlug(title, english, alekSlug),
            new Promise<null>(r => setTimeout(() => r(null), SCRAPER_MS)),
          ]);
          if (!slug) return;
          if (!closed) res.write(`data: [SLUG]${JSON.stringify({ alekSlug: slug })}\n\n`);
          const srcs = await Promise.race([
            getAlekSources(slug, ep),
            new Promise<any[]>(r => setTimeout(() => r([]), SCRAPER_MS)),
          ]);
          await extractAndSend(srcs as UnifiedSource[], sendSrc, EXTRACT_MS);
        } catch {}
      })(),

      // 2. MitAnime
      (async () => {
        try {
          const slug = mitSlug || (title ? await Promise.race([
            resolveMitSlug(title, english),
            new Promise<null>(r => setTimeout(() => r(null), SCRAPER_MS)),
          ]) : null);
          if (!slug) return;
          if (!closed) res.write(`data: [SLUG]${JSON.stringify({ mitSlug: slug })}\n\n`);
          const srcs = await Promise.race([
            getMitSources(slug, ep),
            new Promise<any[]>(r => setTimeout(() => r([]), SCRAPER_MS)),
          ]);
          await extractAndSend(srcs as UnifiedSource[], sendSrc, EXTRACT_MS);
        } catch {}
      })(),

      // 3. Anime4Up
      (async () => {
        try {
          if (!title) return;
          const slug = await Promise.race([
            resolveAnime4upSlug(title, english),
            new Promise<null>(r => setTimeout(() => r(null), SCRAPER_MS)),
          ]);
          if (!slug) return;
          const srcs = await Promise.race([
            getAnime4upSources(slug, ep),
            new Promise<any[]>(r => setTimeout(() => r([]), SCRAPER_MS)),
          ]);
          await extractAndSend(srcs as UnifiedSource[], sendSrc, EXTRACT_MS);
        } catch {}
      })(),

      // 4. AnimeTitans
      (async () => {
        try {
          if (!title) return;
          const slug = await Promise.race([
            resolveAnimeTitansSlug(title, english),
            new Promise<null>(r => setTimeout(() => r(null), SCRAPER_MS)),
          ]);
          if (!slug) return;
          const srcs = await Promise.race([
            getAnimeTitansSources(slug, ep),
            new Promise<any[]>(r => setTimeout(() => r([]), SCRAPER_MS)),
          ]);
          await extractAndSend(srcs as UnifiedSource[], sendSrc, EXTRACT_MS);
        } catch {}
      })(),

      // 5. DB sources
      (async () => {
        try {
          const srcs = await Promise.race([
            getDBSources(title, english, ep, malId || undefined),
            new Promise<any[]>(r => setTimeout(() => r([]), SCRAPER_MS)),
          ]);
          await extractAndSend(srcs as UnifiedSource[], sendSrc, EXTRACT_MS);
        } catch {}
      })(),

      // 6. AllAnime — free API, returns direct m3u8/mp4 CDN links
      (async () => {
        try {
          if (!title) return;
          const resolved = await Promise.race([
            resolveTitle([title, english].filter(Boolean) as string[]),
            new Promise<null>(r => setTimeout(() => r(null), SCRAPER_MS)),
          ]);
          if (!resolved) return;
          const srcs = await Promise.race([
            getAllAnimeSources(resolved.show._id, ep),
            new Promise<any[]>(r => setTimeout(() => r([]), SCRAPER_MS)),
          ]);
          const direct = srcs.filter(s => s.directUrl);
          const embeds = srcs.filter(s => !s.directUrl);
          for (const s of direct) sendSrc(s);
          if (embeds.length) await extractAndSend(embeds, sendSrc, EXTRACT_MS);
        } catch {}
      })(),

      // 7. AppsAnime
      (async () => {
        try {
          if (!title) return;
          const uid = await Promise.race([
            resolveAppsAnimeUid(title, english),
            new Promise<null>(r => setTimeout(() => r(null), SCRAPER_MS)),
          ]);
          if (!uid) return;
          const srcs = await Promise.race([
            getAppsAnimeSources(uid, ep),
            new Promise<any[]>(r => setTimeout(() => r([]), SCRAPER_MS)),
          ]);
          await extractAndSend(srcs as UnifiedSource[], sendSrc, EXTRACT_MS);
        } catch {}
      })(),

      // 8. Anime Phoenix — embed episode page in iframe directly
      (async () => {
        try {
          if (!title) return;
          const slug = await Promise.race([
            resolvePhoenixSlug(title, english),
            new Promise<null>(r => setTimeout(() => r(null), SCRAPER_MS)),
          ]);
          if (!slug) return;
          const srcs = await Promise.race([
            getPhoenixSources(slug, ep),
            new Promise<any[]>(r => setTimeout(() => r([]), SCRAPER_MS)),
          ]);
          sendMany(srcs as UnifiedSource[]);
        } catch {}
      })(),
    ];

    await Promise.allSettled(scrapers);
  } catch (e: any) {
    req.log?.error?.({ err: e }, "sources-stream failed");
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
    const url = `https://api.mymemory.translated.net/get?q=${encodeURIComponent(text.substring(0,490))}&langpair=${from}|${to}`;
    const r = await fetch(url, { signal: AbortSignal.timeout(8000) });
    const d = await r.json();
    const translated = d.responseData?.translatedText || text;
    translateCache.set(cacheKey, translated);
    res.json({ translated });
  } catch { res.json({ translated: text }); }
});


// ════════════════════════════════════════════════════════════════════
//  Legacy AnimeLek endpoints
// ════════════════════════════════════════════════════════════════════
router.get("/anime/animelek/sources", async (req, res) => {
  const title      = (req.query.title   as string | undefined)?.trim() || "";
  const english    = (req.query.english as string | undefined)?.trim() || null;
  const ep         = parseInt((req.query.ep as string) || "1");
  const passedSlug = (req.query.slug    as string | undefined)?.trim() || null;
  if (!title && !passedSlug) { res.status(400).json({ error: "title or slug required" }); return; }
  if (!ep || ep < 1) { res.status(400).json({ error: "valid ep required" }); return; }
  try {
    const slug = await resolveAlekSlug(title, english, passedSlug);
    if (!slug) { res.json({ sources: [], slug: null }); return; }
    res.json({ sources: await getAlekSources(slug, ep), slug });
  } catch (e: any) { res.status(500).json({ error: e.message }); }
});

router.get("/anime/animelek/search", async (req, res) => {
  const title   = (req.query.title   as string | undefined)?.trim() || "";
  const english = (req.query.english as string | undefined)?.trim() || null;
  if (!title) { res.status(400).json({ error: "title required" }); return; }
  try { res.json({ slug: await resolveAlekSlug(title, english) }); }
  catch (e: any) { res.status(500).json({ error: e.message }); }
});

// ════════════════════════════════════════════════════════════════════
//  Test Embed  GET /api/anime/test-embed?url=ENCODED_URL
//  Quick check: does this embed URL return video content (not CF block)?
// ════════════════════════════════════════════════════════════════════
router.get("/anime/test-embed", async (req, res) => {
  const rawUrl = ((req.query.url as string) || "").trim();
  if (!rawUrl) { res.status(400).json({ working: false, reason: "no url" }); return; }
  let targetUrl: string;
  try { targetUrl = decodeURIComponent(rawUrl); } catch { targetUrl = rawUrl; }
  try {
    new URL(targetUrl);
  } catch { res.status(400).json({ working: false, reason: "invalid url" }); return; }

  try {
    const r = await fetch(targetUrl, {
      method: "GET",
      headers: { "User-Agent": BROWSER_UA, Accept: "text/html,*/*", Referer: targetUrl },
      signal: AbortSignal.timeout(8000),
      redirect: "follow",
    });
    if (!r.ok) { res.json({ working: false, reason: `HTTP ${r.status}` }); return; }
    const text = await r.text();
    if (isCloudflareBlock(text)) { res.json({ working: false, reason: "cloudflare" }); return; }
    // Check for video player indicators
    const hasVideo = /<video/i.test(text) || /\.m3u8/i.test(text) || /jwplayer|plyr|playerjs|flowplayer|vidplayer/i.test(text)
      || /source.*mp4|file.*mp4|url.*mp4/i.test(text) || /videoUrl|video_url|fileUrl|streamUrl/i.test(text);
    const has404 = /404|not found|page not found/i.test(text.slice(0, 2000));
    if (has404 && !hasVideo) { res.json({ working: false, reason: "404" }); return; }
    res.json({ working: hasVideo, reason: hasVideo ? "ok" : "no-video" });
  } catch (e: any) {
    res.json({ working: false, reason: e.message });
  }
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

    // ── If Cloudflare block, return error page ──
    if (isCloudflareBlock(html)) {
      res.send(`<html><body style="background:#000;color:#fff;font-family:sans-serif;display:flex;align-items:center;justify-content:center;height:100vh;margin:0;flex-direction:column;gap:12px">
        <div style="font-size:32px">🛡️</div>
        <p style="margin:0;font-size:14px;opacity:0.6">محمي بـ Cloudflare</p>
        <p style="margin:0;font-size:11px;opacity:0.3">${targetUrl.replace(/"/g,"")}</p>
        <script>window.parent.postMessage({type:'nova-cf-block',url:'${targetUrl.replace(/'/g,"\\'")}'},'*')</script>
      </body></html>`);
      return;
    }

    // ── Strip ad/tracker scripts ──
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
    // Strip inline ad iframes
    html = html.replace(/<iframe[^>]+src=["'][^"']*(?:doubleclick|googlesyndication|adsbygoogle)[^"']*["'][^>]*>.*?<\/iframe>/gis, "");

    // ── Aggressive CSS: hide site chrome, show only the video player ──
    const INJECT = `
<style>
/* === Nova Anime Embed Cleaner === */
html, body {
  margin:0 !important; padding:0 !important;
  overflow:hidden !important;
  background:#000 !important;
  width:100vw !important; height:100vh !important;
}

/* Hide everything that's not the player */
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
[class*="logo"]:not([class*="player"]), [class*="branding"] {
  display: none !important;
}

/* Hide ads */
[id*="ad_"], [id*="_ad"], [id*="banner"], [id*="popup"],
[id*="interstitial"], [id*="overlay"],
[class*="ad-"], [class*="-ad_"], [class*="ads-"], [class*="-ads"],
[class*="banner-ad"], [class*="popup-ad"], [class*="advert"],
[class*="advertisement"], [class*="vpn-banner"],
[class*="click-under"], [class*="popunder"], [class*="clickad"],
.adsbygoogle, ins.adsbygoogle, [id="aswift_iframe_anchor"] {
  display: none !important;
}

/* Hide fixed overlays that are not the player */
body > div[style*="position:fixed"]:not([id*="player"]):not([class*="player"]),
body > div[style*="position: fixed"]:not([id*="player"]):not([class*="player"]) {
  display: none !important;
}

/* Force the main player container to fill the screen */
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
  position: fixed !important;
  top: 0 !important; left: 0 !important;
  width: 100vw !important; height: 100vh !important;
  max-width: none !important; max-height: none !important;
  margin: 0 !important; padding: 0 !important;
  border: none !important; border-radius: 0 !important;
  background: #000 !important;
  z-index: 1 !important;
  transform: none !important;
}

/* Ensure video element itself fills container */
video {
  width: 100% !important; height: 100% !important;
  object-fit: contain !important;
  background: #000 !important;
  display: block !important;
  max-width: none !important; max-height: none !important;
}

/* Hide player internal ads/overlays */
.jw-overlays [class*="ad"], .jw-ad, .jw-flag-ads,
.jw-nextup-container, .jw-logo,
.plyr__ads, [class*="ima-ad"] {
  display: none !important;
}
</style>
<script>
(function(){
  /* ── Block ALL popups / new-window attempts ── */
  window.open = function(){ return { focus:function(){}, closed:false }; };
  window.alert = function(){};
  window.confirm = function(){ return false; };
  window.prompt = function(){ return null; };

  /* ── Block navigation away from embed ── */
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

  /* ── Block location.href changes ── */
  try {
    var _assign = location.assign.bind(location);
    var _replace = location.replace.bind(location);
    Object.defineProperty(window, 'location', {
      configurable: true,
      get: function(){ return location; },
      set: function(v){
        if(typeof v === 'string' && v.indexOf(location.hostname) === -1) return;
        _assign(v);
      }
    });
  } catch(e){}

  /* ── Remove ad elements after DOM ready ── */
  function cleanAds(){
    var adSels = [
      '[id*="ad_"]','[id*="banner"]','[class*="ad-banner"]',
      '[class*="popup"]','[class*="popunder"]','[class*="clickunder"]',
      '[class*="overlay"]:not([class*="player"])',
      '.adsbygoogle','[id*="interstitial"]','[class*="vpn"]',
      '[class*="subscribe"]','[class*="social-"]',
    ];
    adSels.forEach(function(sel){
      try {
        document.querySelectorAll(sel).forEach(function(el){
          el.style.display = 'none';
          el.style.visibility = 'hidden';
          el.style.pointerEvents = 'none';
        });
      } catch(e){}
    });
  }
  if(document.readyState === 'loading'){
    document.addEventListener('DOMContentLoaded', cleanAds);
  } else { cleanAds(); }
  setTimeout(cleanAds, 800);
  setTimeout(cleanAds, 2000);

  /* ── Notify parent when CF block detected ── */
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

    // ── Fix relative URLs so assets load ──
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
//  HLS / Segment Proxy  — bypasses CORS on CDN video streams
//
//  GET /api/anime/hls-proxy?url=<encoded>&ref=<encoded>
//    Fetches an m3u8 manifest server-side and rewrites every segment
//    URL so it routes back through /api/anime/seg-proxy.
//    The browser only ever talks to our server — CDN CORS is irrelevant.
//
//  GET /api/anime/seg-proxy?url=<encoded>&ref=<encoded>
//    Proxies a TS segment (or nested m3u8) to the browser.
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
  const lines = manifest.split("\n");
  return lines.map(line => {
    const trimmed = line.trim();
    if (!trimmed || trimmed.startsWith("#")) return line;
    // Resolve segment/nested playlist URL to absolute
    let absUrl: string;
    try {
      absUrl = new URL(trimmed).href;
    } catch {
      try { absUrl = new URL(trimmed, base).href; } catch { return line; }
    }
    // Use root-relative path — HLS.js resolves it against the manifest origin,
    // which is our Vite/app domain. This way the browser never touches the CDN.
    return `/api/anime/seg-proxy?url=${encodeURIComponent(absUrl)}&ref=${encodeURIComponent(ref)}`;
  }).join("\n");
}

router.get("/anime/hls-proxy", async (req, res) => {
  const rawUrl = (req.query.url as string || "").trim();
  const ref    = (req.query.ref as string || "").trim();
  if (!rawUrl) { res.status(400).send("url required"); return; }

  let url: string;
  try { url = decodeURIComponent(rawUrl); } catch { url = rawUrl; }

  let origin = "";
  try { origin = new URL(url).origin; } catch {}

  try {
    const r = await fetch(url, {
      headers: HLS_PROXY_HDRS(ref || url, origin),
      signal: AbortSignal.timeout(12000),
      redirect: "follow",
    });
    if (!r.ok) { res.status(r.status).send(`upstream ${r.status}`); return; }

    const ct = r.headers.get("content-type") || "";
    const body = await r.text();

    // Work out the self-base so rewrites point back here
    const proto = req.headers["x-forwarded-proto"] || "https";
    const host  = req.headers["x-forwarded-host"] || req.headers.host || "localhost:8080";
    const selfBase = `${proto}://${host}`;

    const rewritten = rewriteM3u8(body, url, selfBase, ref || url);

    res.setHeader("Content-Type", ct.includes("mpegurl") || url.endsWith(".m3u8")
      ? "application/vnd.apple.mpegurl" : ct || "application/vnd.apple.mpegurl");
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Cache-Control", "no-cache");
    res.send(rewritten);
  } catch (e: any) {
    res.status(502).send(`proxy error: ${e?.message ?? e}`);
  }
});

router.get("/anime/seg-proxy", async (req, res) => {
  const rawUrl = (req.query.url as string || "").trim();
  const ref    = (req.query.ref as string || "").trim();
  if (!rawUrl) { res.status(400).send("url required"); return; }

  let url: string;
  try { url = decodeURIComponent(rawUrl); } catch { url = rawUrl; }

  let origin = "";
  try { origin = new URL(url).origin; } catch {}

  try {
    const r = await fetch(url, {
      headers: HLS_PROXY_HDRS(ref || url, origin),
      signal: AbortSignal.timeout(30000),
      redirect: "follow",
    });
    if (!r.ok) { res.status(r.status).send(`upstream ${r.status}`); return; }

    const ct = r.headers.get("content-type") || "video/mp2t";
    const len = r.headers.get("content-length");

    res.setHeader("Content-Type", ct);
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Cache-Control", "public, max-age=3600");
    if (len) res.setHeader("Content-Length", len);

    // If it's a nested m3u8 (chunked playlist / quality variant), rewrite too
    if (ct.includes("mpegurl") || url.includes(".m3u8")) {
      const body = await r.text();
      const proto = req.headers["x-forwarded-proto"] || "https";
      const host  = req.headers["x-forwarded-host"] || req.headers.host || "localhost:8080";
      res.setHeader("Content-Type", "application/vnd.apple.mpegurl");
      res.send(rewriteM3u8(body, url, `${proto}://${host}`, ref || url));
      return;
    }

    // Stream binary segment directly
    const body = await r.arrayBuffer();
    res.send(Buffer.from(body));
  } catch (e: any) {
    res.status(502).send(`proxy error: ${e?.message ?? e}`);
  }
});

export default router;

