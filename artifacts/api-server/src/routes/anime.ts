import { Router } from "express";
import { createClient } from "@supabase/supabase-js";

const router = Router();

// ── Supabase client for persistent video source cache ──
const SUPABASE_URL = process.env.SUPABASE_URL || "https://lylapkfnizpjoyutnlin.supabase.co";
const SUPABASE_KEY = process.env.SUPABASE_SERVICE_KEY || process.env.SUPABASE_ANON_KEY ||
  "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx5bGFwa2ZuaXpwam95dXRubGluIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Nzg0OTQxNDYsImV4cCI6MjA5NDA3MDE0Nn0.VXSyeqOBaCSR9SD8R7goF3zsleeDbvb8MLnrtOC5Keo";
const sbClient = createClient(SUPABASE_URL, SUPABASE_KEY);

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

// ── Known-dead file hosts ──
const DEAD_FILE_HOSTS = [
  "4shared.com","solidfiles.com","d000d.com","uqload.co","uqload.com",
  "vadbam.net","okfiles.com","gofile.io","uploadfiles.io","hexupload.net",
  "filerio.in","doodstream.com","dood.watch","megaup.net","1fichier.com",
  "bayfiles.com","uploadhaven.com","tusfiles.com","letsupload.co",
];

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
      signal: AbortSignal.timeout(8000), redirect: "follow",
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
//  AllAnime  (search & resolve)
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

  const epPath = `${slug}-${epNum}-\u0627\u0644\u062d\u0644\u0642\u0629`;
  const epUrl  = `${ALEK_BASE}/episode/${encodeURIComponent(epPath)}/`;
  try {
    const r = await fetch(epUrl, { headers: ALEK_HDRS, signal: AbortSignal.timeout(15000) });
    if (!r.ok) return [];
    const html = await r.text();
    if (isCloudflareBlock(html)) return [];

    const seen = new Set<string>();
    const sources: any[] = [];

    // Method 1: data-embed attribute
    // AnimeLek wraps embeds as card.php?random=ACTUAL_URL — extract the real URL directly
    const embedRe = /data-embed="(https?:\/\/[^"]+)"/g;
    const nameRe  = /<span class="server">([^<]+)<\/span>/g;
    const embeds  = [...html.matchAll(embedRe)].map(m => m[1].replace(/&amp;/g, "&"));
    const names   = [...html.matchAll(nameRe)].map(m => m[1].trim());

    for (let i = 0; i < embeds.length; i++) {
      let url = embeds[i];
      // Unwrap card.php?random=ACTUAL_URL
      const randomMatch = url.match(/[?&]random=([^&]+)/);
      if (randomMatch) {
        try { url = decodeURIComponent(randomMatch[1]); } catch {}
      }
      if (seen.has(url)) continue; seen.add(url);
      // Skip known dead hosts
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
        sources.push({ name: `سيرفر ${sources.length + 1}`, url, quality: "HD", qualityRank: 2, site: "animelek" });
      }
    }

    if (sources.length) alekSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch (e: any) {
    console.error("[alek] getAlekSources error:", e?.message ?? e);
    return [];
  }
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
    const r = await fetch(`${MIT_BASE}/watch/${slug}/${epNum}/`, { headers: MIT_HDRS, signal: AbortSignal.timeout(15000) });
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
    const r = await fetch(`${base}/episode/${slug}-${epNum}/`, { headers: WIT_HDRS, signal: AbortSignal.timeout(15000) });
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
      const r = await fetch(epUrl, { headers: FOUR_HDRS, signal: AbortSignal.timeout(15000), redirect: "follow" });
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
      const r = await fetch(epUrl, { headers: BLKOM_HDRS, signal: AbortSignal.timeout(15000), redirect: "follow" });
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
      const r = await fetch(epUrl, { headers: ASAQ_HDRS, signal: AbortSignal.timeout(15000), redirect: "follow" });
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
      const r = await fetch(epUrl, { headers: TITANS_HDRS, signal: AbortSignal.timeout(12000), redirect: "follow" });
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
//  Supabase video cache helpers
// ════════════════════════════════════════════════════════════════════
interface CachedSource {
  name: string; url: string; quality: string; qualityRank: number; site: string;
  directUrl?: string; directType?: "hls" | "mp4";
}

async function getFromSupabase(anilistId: number, ep: number): Promise<CachedSource[]> {
  try {
    const cutoff = new Date(Date.now() - 12 * 3_600_000).toISOString();
    const { data, error } = await sbClient
      .from("episodes")
      .select("*")
      .eq("anilist_id", anilistId)
      .eq("episode_number", ep)
      .not("server_url", "is", null)
      .gt("created_at", cutoff)
      .order("priority");
    if (error || !data?.length) return [];
    return data.map((row: any) => ({
      name: row.server_name || row.title || "سيرفر",
      url: row.episode_page_url || row.server_url,
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
      created_at: new Date().toISOString(),
    }));
    await sbClient.from("episodes").upsert(rows, { onConflict: "id" });
  } catch {}
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
      const r = await fetch(epUrl, { headers: GATE_HDRS, signal: AbortSignal.timeout(12000), redirect: "follow" });
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
      const r = await fetch(epUrl, { headers: ARA_HDRS, signal: AbortSignal.timeout(12000), redirect: "follow" });
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
//  UNIFIED  /api/anime/all-sources  — 9 sites + pre-extraction + Supabase cache
// ════════════════════════════════════════════════════════════════════
interface UnifiedSource {
  name: string; url: string; quality: string; qualityRank: number; site: string;
  directUrl?: string; directType?: "hls" | "mp4";
}

// Hosts that are impossible to extract server-side (need browser/auth)
const SKIP_EXTRACT_HOSTS = [
  "drive.google", "mega.nz", "mediafire.com",
  "ok.ru", "odnoklassniki.ru",
  "soraplay.xyz", "anime7u",
  "youtube.com", "youtu.be",
];

router.get("/anime/all-sources", async (req, res) => {
  const title     = (req.query.title    as string | undefined)?.trim() || "";
  const english   = (req.query.english  as string | undefined)?.trim() || null;
  const ep        = parseInt((req.query.ep as string) || "1");
  const alekSlug  = (req.query.alekSlug as string | undefined)?.trim() || null;
  const mitSlug   = (req.query.mitSlug  as string | undefined)?.trim() || null;
  const anilistId = parseInt((req.query.anilistId as string) || "0") || 0;

  if (!title && !alekSlug) { res.status(400).json({ error: "title or alekSlug required" }); return; }
  if (!ep || ep < 1) { res.status(400).json({ error: "valid ep number required" }); return; }

  try {
    // ── 1. Check Supabase cache (returns pre-extracted working sources) ──
    if (anilistId) {
      const cached = await getFromSupabase(anilistId, ep);
      if (cached.length > 0) {
        req.log.info({ anilistId, ep, count: cached.length }, "all-sources: Supabase cache hit");
        res.json({ sources: cached, total: cached.length, fromCache: true });
        return;
      }
    }

    // ── 2. Scrape all 9 sites in parallel ──
    const [alekRes, mitRes, witRes, fourRes, blkomRes, asaqRes, titansRes, gateRes, araRes] =
      await Promise.allSettled([
        // AnimeLek
        (async () => {
          const slug = await resolveAlekSlug(title, english, alekSlug);
          if (!slug) return { slug: null, sources: [] as UnifiedSource[] };
          return { slug, sources: (await getAlekSources(slug, ep)) as UnifiedSource[] };
        })(),
        // MitAnime
        (async () => {
          const slug = mitSlug || (title ? await resolveMitSlug(title, english) : null);
          if (!slug) return { slug: null, sources: [] as UnifiedSource[] };
          return { slug, sources: (await getMitSources(slug, ep)) as UnifiedSource[] };
        })(),
        // WitAnime
        (async () => {
          if (!title) return { sources: [] as UnifiedSource[] };
          const res2 = await resolveWitSlug(title, english);
          if (!res2) return { sources: [] as UnifiedSource[] };
          return { sources: (await getWitSources(res2.slug, res2.base, ep)) as UnifiedSource[] };
        })(),
        // Anime4Up
        (async () => {
          if (!title) return { sources: [] as UnifiedSource[] };
          const slug = await resolveAnime4upSlug(title, english);
          if (!slug) return { sources: [] as UnifiedSource[] };
          return { sources: (await getAnime4upSources(slug, ep)) as UnifiedSource[] };
        })(),
        // AnimeBlkom
        (async () => {
          if (!title) return { sources: [] as UnifiedSource[] };
          const slug = await resolveAnimeblkomSlug(title, english);
          if (!slug) return { sources: [] as UnifiedSource[] };
          return { sources: (await getAnimeblkomSources(slug, ep)) as UnifiedSource[] };
        })(),
        // 3asq
        (async () => {
          if (!title) return { sources: [] as UnifiedSource[] };
          const slug = await resolve3asqSlug(title, english);
          if (!slug) return { sources: [] as UnifiedSource[] };
          return { sources: (await get3asqSources(slug, ep)) as UnifiedSource[] };
        })(),
        // AnimeTitans
        (async () => {
          if (!title) return { sources: [] as UnifiedSource[] };
          const slug = await resolveAnimeTitansSlug(title, english);
          if (!slug) return { sources: [] as UnifiedSource[] };
          return { sources: (await getAnimeTitansSources(slug, ep)) as UnifiedSource[] };
        })(),
        // AnimeGate
        (async () => {
          if (!title) return { sources: [] as UnifiedSource[] };
          const res2 = await resolveAnimeGateSlug(title, english);
          if (!res2) return { sources: [] as UnifiedSource[] };
          return { sources: (await getAnimeGateSources(res2.slug, res2.base, ep)) as UnifiedSource[] };
        })(),
        // AraAnime
        (async () => {
          if (!title) return { sources: [] as UnifiedSource[] };
          const res2 = await resolveAraAnimeSlug(title, english);
          if (!res2) return { sources: [] as UnifiedSource[] };
          return { sources: (await getAraAnimeSources(res2.slug, res2.base, ep)) as UnifiedSource[] };
        })(),
      ]);

    // ── 3. Collect & deduplicate all embed sources ──
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
    [alekRes, witRes, fourRes, blkomRes, asaqRes, titansRes, mitRes, gateRes, araRes].forEach(addSources);

    const SITE_PRIO: Record<string, number> = {
      witanime: 9, animeblkom: 8, anime4up: 7, "3asq": 6,
      animegate: 5, araanime: 4, mitanime: 3, animelek: 2, animetitans: 1,
    };
    rawSources.sort((a, b) => {
      if (b.qualityRank !== a.qualityRank) return b.qualityRank - a.qualityRank;
      return (SITE_PRIO[b.site] || 0) - (SITE_PRIO[a.site] || 0);
    });

    // ── 4. Extract direct video URLs for all sources in parallel (7s timeout each) ──
    const extractedSources = await Promise.all(
      rawSources.map(async (src): Promise<UnifiedSource> => {
        if (SKIP_EXTRACT_HOSTS.some(h => src.url.toLowerCase().includes(h))) return src;
        try {
          const result = await Promise.race([
            extractVideoDeep(src.url, src.url),
            new Promise<null>(r => setTimeout(() => r(null), 7000)),
          ]);
          if (result?.url) return { ...src, directUrl: result.url, directType: result.type };
        } catch {}
        return src;
      })
    );

    // ── 5. Sort: sources with direct URL first (play instantly), embed-only last ──
    const withDirect = extractedSources.filter(s => s.directUrl);
    const embedOnly  = extractedSources.filter(s => !s.directUrl);
    const allSources = [...withDirect, ...embedOnly];

    // ── 6. Cache working sources in Supabase (fire-and-forget) ──
    if (anilistId && withDirect.length > 0) {
      saveToSupabase(anilistId, ep, title, allSources as CachedSource[]).catch(() => {});
    }

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

export default router;
