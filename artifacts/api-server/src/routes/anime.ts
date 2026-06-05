import { Router } from "express";
import {
  makeSourceCacheKey,
  getFromSourceCache,
  setSourceCache,
  shouldRefreshCache,
} from "../lib/sourceCache.js";

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
const adarSlugCache  = new Map<string, { url: string | null; ts: number }>();

// CDN response cache
const cdnCache = new Map<string, { body: Buffer; ct: string; ts: number }>();
const CDN_CACHE_TTL = 8 * 60_000;
const CDN_CACHE_HOSTS = ["vault-13.owocdn.top", "owocdn.top", "kwik.cx"];
function isCdnCacheable(url: string): boolean {
  try { return CDN_CACHE_HOSTS.some(h => new URL(url).hostname.endsWith(h)); } catch { return false; }
}
function evictCdnCache() {
  const now = Date.now();
  for (const [k, v] of cdnCache) { if (now - v.ts > CDN_CACHE_TTL) cdnCache.delete(k); }
}
setInterval(evictCdnCache, 2 * 60_000);
const adarSrcCache = new Map<string, { sources: UnifiedSource[]; ts: number }>();

// ── Known-dead / unplayable file hosts ──
const DEAD_FILE_HOSTS = [
  "4shared.com","solidfiles.com","d000d.com",
  "vadbam.net","vadbam.com","okfiles.com","gofile.io","uploadfiles.io","hexupload.net",
  "filerio.in","doodstream.com","dood.watch","dood.to","dood.la","dood.ws","dood.pm",
  "dooood.com","doodrive.com","megaup.net","1fichier.com",
  "bayfiles.com","uploadhaven.com","tusfiles.com","letsupload.co","letsupload.io","workupload.com",
  "hexload.com","mp4upload.com","uqload.net","uqload.com","file-up.org",
  "mega.nz","mega.co.nz","mediafire.com",
  "drive.google","docs.google","googleapis.com/drive",
  "ok.ru","odnoklassniki.ru","youtube.com","youtu.be",
  "cloudflareinsights.com","beacon.min.js",
  "jquery.min.js","bootstrap.min.js",
  ".css",".png",".jpg",".jpeg",".gif",".svg",".ico",
  "favicon","robots.txt","sitemap",
  "larhu.net","larhu.website","larhu.tv","larhu.me","larhu.io","larhu.org","larhu.co",
  "file-upload.com","file-upload.org","file-upload.net","fileupload.pw","fileupload.net",
  "uptobox.com","uptobox.fr","upstream.to",
  "flashx.tv","gostream.site","embedrise.com",
  "megaplay.buzz",
  "dood.wf","dood.gg","dood.li","dood.re","dood.sh","dood.cx",
  "doodstream.io","ds2play.com","doods.pro",
];

// ── Embed-only hosts (skip server-side extraction) ──
// Hosts allowed as sandboxed iframe embed (vidmoly has Cloudflare Turnstile — can't extract server-side)
const VIDMOLY_HOSTS = ["vidmoly.biz","vidmoly.to","vidmoly.net"];

// Hosts that cannot be extracted AND are NOT allowed as embed → skip entirely
const EMBED_ONLY_HOSTS = [
  "vidbm.com","vidbm.me","uptostream.com",
  "playerwish.com","wishfast.top",
  "streamvid.net","streamlare.com",
  "asnwish.com",
  "uqload.is","uqload.co","uqload.com",
  "dailymotion.com",
  "videa.hu",
  "vkvideo.ru","vk.com",
  "ok.ru","odnoklassniki.ru",
  "yourupload.com",
  "voe.sx","voe.tv",
  "megamax.me","megamax.io","megamax.tv",
];

const CLOUDFLARE_PATTERNS = ["just a moment", "cf_chl_"];

function isCloudflareBlock(html: string): boolean {
  const lower = html.toLowerCase();
  return CLOUDFLARE_PATTERNS.some(p => lower.includes(p));
}

// ════════════════════════════════════════════════════════════════════
//  cfGet — attempt fetch with browser-like headers (best-effort CF bypass)
//  Works on sites where CF JS challenge is not triggered server-side.
//  Returns null if Cloudflare blocks the request.
// ════════════════════════════════════════════════════════════════════
const CF_BROWSER_HDRS: Record<string, string> = {
  "sec-ch-ua": '"Chromium";v="124", "Google Chrome";v="124", "Not-A.Brand";v="99"',
  "sec-ch-ua-mobile": "?0",
  "sec-ch-ua-platform": '"Windows"',
  "sec-fetch-dest": "document",
  "sec-fetch-mode": "navigate",
  "sec-fetch-site": "none",
  "sec-fetch-user": "?1",
  "upgrade-insecure-requests": "1",
  "accept-language": "ar,en-US;q=0.9,en;q=0.8",
};

async function cfGet(url: string, extraHdrs: Record<string, string> = {}): Promise<string | null> {
  try {
    const r = await fetch(url, {
      headers: { ...BASE_HDRS, ...CF_BROWSER_HDRS, ...extraHdrs },
      signal: AbortSignal.timeout(12000),
      redirect: "follow",
    });
    if (!r.ok) return null;
    const html = await r.text();
    return isCloudflareBlock(html) ? null : html;
  } catch { return null; }
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
  const aw = a.split(" ");
  const bw = b.split(" ");
  // Fuzzy word match: also match if one word is a prefix of the other (≥4 chars)
  // e.g. "haikyu" matches "haikyuu", "boku" matches "bokurano"
  const matches = bw.filter(bWord =>
    aw.some(aWord =>
      aWord === bWord ||
      (aWord.length >= 4 && bWord.length >= 4 &&
        (aWord.startsWith(bWord) || bWord.startsWith(aWord)))
    )
  ).length;
  return matches / Math.max(aw.length, bw.length);
}

/**
 * Similarity that works for mixed Arabic-English slug strings.
 * Replaces non-ASCII chars and hyphens with spaces before comparing,
 * so "انمي-ون-بيس-one-piece-hg" → "one piece hg" which matches "One Piece".
 */
function asciiSimilarity(a: string, b: string): number {
  const toAscii = (s: string) => s.replace(/[^\x00-\x7F]/g, " ").replace(/-/g, " ");
  return similarity(toAscii(a), b);
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
      // Quoted keys: "file":"url"
      /"(?:file|src|url|source|hls|videoUrl|streamUrl)"\s*:\s*"(https?:\/\/[^"\\]+\.m3u8[^"\\]*)"/i,
      /'(?:file|src|url|source)'\s*:\s*'(https?:\/\/[^'\\]+\.m3u8[^'\\]*)'/i,
      // Unquoted keys (after JS unpacking): file:"url" or src:'url'
      /\b(?:file|src|url|source|hls|videoUrl|streamUrl)\s*:\s*["'`](https?:\/\/[^"'`\s]+\.m3u8[^"'`\s]*)["'`]/i,
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
      /\b(?:file|src|url|source|videoUrl|mp4)\s*:\s*["'`](https?:\/\/[^"'`\s]+\.mp4[^"'`\s]*)["'`]/i,
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
    // DASH manifests (.mpd)
    const mpdPats = [
      /"(?:file|src|url|source|dash|mpd)[^"]*"\s*:\s*"(https?:\/\/[^"\\]+\.mpd[^"\\]*)"/i,
      /\b(?:file|src|url|dash|mpd)\s*:\s*["'`](https?:\/\/[^"'`\s]+\.mpd[^"'`\s]*)["'`]/i,
      /['"](https?:\/\/[^\s"'<>\\]+\.mpd(?:\?[^\s"'<>\\]*)?)["']/i,
    ];
    for (const p of mpdPats) {
      const m = text.match(p);
      if (m) {
        const url = (m[1] || m[0]).replace(/[\\,;\)\s]+$/, "");
        if (url.startsWith("http") && url.length > 20) return { url, type: "mp4" }; // treat as mp4 stream
      }
    }
    // WebM
    const webmPats = [
      /"(?:file|src|url|source)[^"]*"\s*:\s*"(https?:\/\/[^"\\]+\.webm[^"\\]*)"/i,
      /['"](https?:\/\/[^\s"'<>\\]+\.webm(?:\?[^\s"'<>\\]*)?)["']/i,
    ];
    for (const p of webmPats) {
      const m = text.match(p);
      if (m) {
        const url = (m[1] || m[0]).replace(/[\\,;\)\s]+$/, "");
        if (url.startsWith("http") && url.length > 20) return { url, type: "mp4" };
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
  const unpacked = unpackPacked(html);
  const texts = unpacked ? [unpacked, html] : [html];
  const pats = [
    /sources\s*:\s*\[\s*\{[^}]*file\s*:\s*["'`](https?:\/\/[^"'`]+)["'`]/i,
    /jwplayer\([^)]+\)\.setup\s*\([^{]*\{[^}]*file\s*:\s*["'`](https?:\/\/[^"'`]+)["'`]/i,
    /["']file["']\s*:\s*["'`](https?:\/\/[^"'`]+\.m3u8[^"'`]*)["'`]/i,
    /\bfile\s*:\s*["'`](https?:\/\/[^"'`\s]+\.m3u8[^"'`\s]*)["'`]/i,
    /['"](https?:\/\/[^\s"'<>\\]+\.m3u8(?:\?[^\s"'<>\\]*)?)["']/i,
  ];
  for (const text of texts) {
    for (const p of pats) {
      const m = text.match(p);
      if (m) {
        const url = m[1];
        if (url.includes(".m3u8")) return { url, type: "hls" };
        if (url.includes(".mp4")) return { url, type: "mp4" };
      }
    }
  }
  return null;
}

function parseMp4Upload(html: string): string | null {
  const m = html.match(/\bsrc\s*:\s*["'](https?:\/\/[^"']+\.mp4[^"']*)["']/i);
  if (m?.[1]?.startsWith("http")) return m[1];
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
async function parseShareMaxStreams(
  host: string,
  fileId: string,
  referer: string,
): Promise<{ url: string; type: "hls" | "mp4" } | null> {
  const iframeUrl = `https://${host}/iframe/${fileId}`;
  const FALLBACK_VERSION = "d98bcc9c79d1c5ff36a86cc41dfcd275";
  try {
    const pageRes = await fetch(iframeUrl, {
      headers: { "User-Agent": BROWSER_UA, Referer: referer, Accept: "text/html" },
      signal: AbortSignal.timeout(12000),
      redirect: "follow",
    });
    if (!pageRes.ok) return null;
    const pageHtml = await pageRes.text();
    if (isCloudflareBlock(pageHtml)) return null;
    const version = pageHtml.match(/"version"\s*:\s*"([a-f0-9]{20,})"/)?.[1] || FALLBACK_VERSION;
    const rawCookies = pageRes.headers.getSetCookie?.() ?? [pageRes.headers.get("set-cookie") ?? ""];
    const cookieStr = rawCookies.map(c => c.split(";")[0]).filter(Boolean).join("; ");

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
    const data = (await reload.json()) as any;

    const streams = data?.props?.streams;
    if (streams?.status !== "success" || !Array.isArray(streams.data) || !streams.data.length) {
      return null;
    }

    for (const quality of streams.data) {
      for (const mirror of (quality.mirrors ?? [])) {
        let link: string = mirror.link ?? "";
        if (link.startsWith("//")) link = "https:" + link;
        if (!link.startsWith("http")) continue;
        const drv: string = mirror.driver ?? "";
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
        } else if (drv === "streamtape") {
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

// ── vidhls.com parser ──────────────────────────────────────────────
// The player page includes a FirePlayer() call with the full video config inline.
// Config has: videoUrl (relative path), videoServer (key), hostList (key→[hostname])
// Constructed URL: https://{hostList[videoServer][0]}{videoUrl}
// Call format: FirePlayer(vhash, {config}) OR FirePlayer(vhash, {config}, true/false)
// The site has 14 CDN servers — probes each until one returns 200.
async function parseVidHls(
  html: string,
  referer?: string,
): Promise<{ url: string; type: "hls" | "mp4" } | null> {
  // Match the config object — third boolean arg is optional
  const configMatch = html.match(
    /FirePlayer\s*\([^,]+,\s*(\{[\s\S]+?\})\s*(?:,\s*(?:true|false)\s*)?\)/,
  );
  if (!configMatch) return null;
  try {
    const config = JSON.parse(configMatch[1]);
    const rawVideoUrl: string = config.videoUrl || "";
    if (!rawVideoUrl) return null;
    const cleanUrl = rawVideoUrl.replace(/\\\//g, "/");
    const type: "hls" | "mp4" = cleanUrl.includes(".mp4") ? "mp4" : "hls";
    const videoServer: string = String(config.videoServer ?? "1");
    const hostList: Record<string, string[]> = config.hostList || {};

    // Collect CDN hosts: selected server first, then all others
    const seen = new Set<string>();
    const allHosts: string[] = [];
    for (const key of [videoServer, ...Object.keys(hostList)]) {
      for (const h of (hostList[key] ?? [])) {
        if (!seen.has(h)) { seen.add(h); allHosts.push(h); }
      }
    }
    if (!allHosts.length) return null;

    const hdrs: Record<string, string> = {
      "User-Agent": BROWSER_UA,
      ...(referer ? { Referer: referer } : {}),
    };

    // Probe each CDN host (max 6 attempts) for a working URL
    for (const host of allHosts.slice(0, 6)) {
      const fullUrl = `https://${host}${cleanUrl}`;
      const status = await safeHead(fullUrl, hdrs);
      if (status === 200 || status === 206 || status === 301 || status === 302) {
        return { url: fullUrl, type };
      }
    }

    // Fallback: return first host (may still work from browser with different IP)
    return { url: `https://${allHosts[0]}${cleanUrl}`, type };
  } catch {
    return null;
  }
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
      if (url.includes("share4max.com/iframe/") || url.includes("megamax.me/iframe/")) {
        const m2 = url.match(/\/iframe\/([^/?#]+)/);
        if (m2) {
          let hn = "";
          try { hn = new URL(url).hostname; } catch {}
          const v = await parseShareMaxStreams(hn, m2[1], ref);
          if (v) return v;
          break;
        }
      }
      if (url.includes("vidbm.com") || url.includes("uptostream.com") ||
          url.includes("vidlink") || url.includes("vidhide") || url.includes("streamlare")) {
        const v = parseMegamax(html); if (v) return v;
      }
      if (url.includes("vidhls.com/player/")) {
        const v = await parseVidHls(html, ref); if (v) return v;
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
//  SHAHIID-ANIME.NET scraper
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
      const nearby = html.slice(m.index!, m.index! + 400);
      const h2m = nearby.match(/<h2>([^<]{1,80})<\/h2>/i);
      const label = (h2m?.[1] || slugLabel).trim();
      results.push({ url, label });
    }
    return results;
  } catch { return []; }
}

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
    if (best && bestScore > 0.5) break;
  }

  shahiidSeriesCache.set(cacheKey, { url: best, ts: Date.now() });
  return best;
}

async function resolveAllShahiidUrls(romaji: string, english?: string | null): Promise<string[]> {
  const seen = new Set<string>();
  const all: Array<{ url: string; score: number }> = [];

  for (const q of [english, romaji].filter(Boolean) as string[]) {
    const results = await searchShahiid(q);
    for (const r of results) {
      if (seen.has(r.url)) continue;
      seen.add(r.url);
      const s = Math.max(
        similarity(r.label, romaji),
        english ? similarity(r.label, english) : 0,
      );
      if (s > 0.15) all.push({ url: r.url, score: s });
    }
  }

  // Sort: higher score first, then prefer seasons/seasonses URLs (fastest to find episodes)
  all.sort((a, b) => {
    if (b.score !== a.score) return b.score - a.score;
    const aIsSeason = a.url.includes("/seasons") ? 1 : 0;
    const bIsSeason = b.url.includes("/seasons") ? 1 : 0;
    return bIsSeason - aIsSeason;
  });
  return all.map(x => x.url);
}

async function getShahiidSeasonsUrl(seriesUrl: string): Promise<string> {
  if (seriesUrl.includes("/anime/")) return seriesUrl;
  if (seriesUrl.includes("/seasonses/") || seriesUrl.includes("?serie=")) return seriesUrl;
  if (seriesUrl.includes("/seasons/") && !seriesUrl.includes("/serieses/")) return seriesUrl;

  try {
    const r = await fetch(seriesUrl, {
      headers: SHAHIID_HDRS,
      signal: AbortSignal.timeout(10000),
      redirect: "follow",
    });
    if (r.ok) {
      const html = await r.text();
      const jsRedir = html.match(/window\.location\s*=\s*["'](https?:\/\/shahiid-anime\.net\/seasonses\/?[^"']+)["']/i);
      if (jsRedir) return jsRedir[1];
      const hrefSeasonses = html.match(/href="(https?:\/\/shahiid-anime\.net\/seasonses\/[^"]+)"/i);
      if (hrefSeasonses) return hrefSeasonses[1];
      const seasonsHref = html.match(/href="(https?:\/\/shahiid-anime\.net\/seasons\/(?!(?:page|feed|tag|category|author)\/)[^"]+)"/i);
      if (seasonsHref) return seasonsHref[1].replace(/\/?$/, "/");
    }
  } catch {}

  return seriesUrl.replace(/\/(series|serieses|seasonses)\//, "/seasons/");
}

interface ShahiidServerBtn {
  post: string;
  serv: string;
  frameserver: string;
  serverCode: string;
  isFilm: string;
}

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
    const iframeSrc = extractIframeSrc(html, SHAHIID_BASE + "/");
    if (iframeSrc) return iframeSrc;
    const urlM = html.match(/(?:src|href|url)=["'](https?:\/\/[^"']+)["']/i);
    if (urlM) return urlM[1];
  } catch {}
  return null;
}

function epNumInSlug(link: string, epNum: number): boolean {
  const padded2 = String(epNum).padStart(2, "0");
  const padded3 = String(epNum).padStart(3, "0");
  const decoded = decodeURIComponent(link).toLowerCase();
  const raw = link.toLowerCase();
  if (decoded.includes(`-${padded2}-`) || decoded.includes(`-${padded3}-`) ||
      decoded.includes(`-${epNum}-`) ||
      raw.includes(`-${padded2}-`) || raw.includes(`-${padded3}-`) ||
      raw.includes(`-${epNum}-`) ||
      raw.includes(`-%d8%a7%d9%84%d8%ad%d9%84%d9%82%d8%a9-${padded2}-`) ||
      raw.includes(`-%d8%a7%d9%84%d8%ad%d9%84%d9%82%d8%a9-${padded3}-`) ||
      raw.includes(`-%d8%a7%d9%84%d8%ad%d9%84%d9%82%d8%a9-${epNum}-`)) return true;
  // -eN or -ep-N patterns at segment boundary (e.g. s4-e6/, s4-ep-7/)
  const epPat = new RegExp(`-ep?-?${epNum}(?:[/_.-]|$)`, "i");
  if (epPat.test(raw) || epPat.test(decoded)) return true;
  // URL ending in -01/ or -1/ (without anything after)
  if (raw.endsWith(`-${padded2}/`) || raw.endsWith(`-${epNum}/`)) return true;
  return false;
}

function extractEpLinks(html: string): string[] {
  const seen = new Set<string>();
  const links: string[] = [];
  for (const m of html.matchAll(/href="(https?:\/\/shahiid-anime\.net\/episodes(?:es)?\/[^"]+)"/gi)) {
    if (!seen.has(m[1])) { seen.add(m[1]); links.push(m[1]); }
  }
  return links;
}

async function shahiidLoadMore(html: string, seasonsUrl: string, page: number): Promise<string[]> {
  try {
    // Try "misha_nonce" key first, then "nonce" inside misha_loadmore_params JSON
    const nonceM =
      html.match(/["']misha_nonce["']\s*:\s*["']([a-f0-9]+)["']/i) ??
      html.match(/"nonce"\s*:\s*"([a-f0-9]{8,12})"/i);
    if (!nonceM) return [];
    const nonce = nonceM[1];

    // Extract WP_Query args: try "query":{...} first, then "posts":"JSON_STRING"
    let query = "{}";
    const queryM = html.match(/["']query["']\s*:\s*(\{[\s\S]*?\})\s*,\s*["'](?:current_page|page|nonce)/);
    if (queryM) {
      query = queryM[1];
    } else {
      // misha_loadmore_params uses "posts":"<escaped-json>" instead of "query":
      const postsM = html.match(/"posts"\s*:\s*"((?:[^"\\]|\\.)*)"/);
      if (postsM) {
        try { query = JSON.parse(`"${postsM[1]}"`); } catch { query = postsM[1].replace(/\\"/g, '"').replace(/\\\\/g, '\\'); }
      }
    }
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

async function findShahiidEpisodeUrl(seasonsUrl: string, epNum: number): Promise<string | null> {
  const epCacheKey = `${seasonsUrl}:${epNum}`;
  const cached = shahiidEpUrlCache.get(epCacheKey);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.url;

  const padded2 = String(epNum).padStart(2, "0");

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

    // For ?serie= filtered pages, episodes load via AJAX (not in initial HTML)
    const isSerieFilter = seasonsUrl.includes("?serie=") || seasonsUrl.includes("&serie=");
    const needsMore = !links.some(l => epNumInSlug(l, epNum));
    if (needsMore && (links.length > 0 || isSerieFilter)) {
      const maxPages = isSerieFilter && links.length === 0 ? 10 : 3;
      for (let page = 2; page <= maxPages; page++) {
        const moreLinks = await shahiidLoadMore(html, seasonsUrl, page);
        if (!moreLinks.length) break;
        links = [...links, ...moreLinks];
        if (links.some(l => epNumInSlug(l, epNum))) break;
      }
    }

    // Fallback for ?serie= pages where misha_loadmore fails (empty query → no results):
    // try WP paged pagination: ?serie=N&paged=M which works for query-filtered pages
    if (isSerieFilter && !links.some(l => epNumInSlug(l, epNum))) {
      const serieBase = seasonsUrl.split("?")[0].replace(/\/?$/, "/");
      const serieParam = seasonsUrl.match(/[?&]serie=(\d+)/)?.[1];
      if (serieParam) {
        const epsPerPage = 20;
        const startPage = Math.max(1, Math.floor((epNum - 1) / epsPerPage) + 1);
        for (let p = startPage; p <= startPage + 3; p++) {
          try {
            const pagedUrl = `${serieBase}?serie=${serieParam}&paged=${p}`;
            const pr = await fetch(pagedUrl, {
              headers: SHAHIID_HDRS,
              signal: AbortSignal.timeout(8000),
              redirect: "follow",
            });
            if (!pr.ok) break;
            const pHtml = await pr.text();
            if (isCloudflareBlock(pHtml)) break;
            const pLinks = extractEpLinks(pHtml);
            if (!pLinks.length) break;
            links = [...links, ...pLinks];
            if (links.some(l => epNumInSlug(l, epNum))) break;
          } catch { break; }
        }
      }
    }

    if (!links.length) { shahiidEpUrlCache.set(epCacheKey, { url: null, ts: Date.now() }); return null; }

    for (const link of links) {
      if (epNumInSlug(link, epNum)) {
        shahiidEpUrlCache.set(epCacheKey, { url: link, ts: Date.now() });
        return link;
      }
    }

    for (const sample of links.slice(0, 3)) {
      const firstDecoded = decodeURIComponent(sample);
      const tmpl = firstDecoded.match(/\/episodeses?\/(.+?)-(?:الحلقة|%d8%a7%d9%84%d8%ad%d9%84%d9%82%d8%a9)-(\d+)(?:-(.+))?\//i);
      if (!tmpl) continue;
      const [, seriesBase, , suffix] = tmpl;
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

async function getShahiidSources(
  romaji: string, english?: string | null, ep: number = 1
): Promise<UnifiedSource[]> {
  const ck = `shahiid:${romaji.toLowerCase()}:${ep}`;
  const cached = shahiidSrcCache.get(ck);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.sources;

  try {
    let candidateUrls = await resolveAllShahiidUrls(romaji, english);

    // Supplement with direct slug construction (covers Season 1 not returned by search)
    const slugsToTry: string[] = [];
    for (const q of [romaji, english].filter(Boolean) as string[]) {
      const s = toSlug(q);
      if (s) {
        slugsToTry.push(s);
        const noColon = toSlug(q.replace(/[:：].*/g, "").trim());
        if (noColon && noColon !== s) slugsToTry.push(noColon);
      }
    }
    const extraUrls: string[] = [];
    for (const slug of [...new Set(slugsToTry)]) {
      for (const prefix of ["seasons", "series", "serieses", "seasonses"]) {
        const u = `${SHAHIID_BASE}/${prefix}/${slug}/`;
        if (!candidateUrls.includes(u)) extraUrls.push(u);
      }
    }
    // Search results FIRST (already sorted: seasons > series by score), slug URLs as fallback
    // Rationale: slug-constructed URLs often 404 for non-ASCII anime titles (Arabic slugs),
    // wasting serial time before the correct search result URL is even attempted.
    candidateUrls = [...candidateUrls, ...extraUrls];
    if (!candidateUrls.length) return [];

    let episodePage: string | null = null;

    for (const seriesUrl of candidateUrls) {
      if (seriesUrl.includes("/anime/")) {
        episodePage = seriesUrl;
        break;
      }
      const seasonsUrl = await getShahiidSeasonsUrl(seriesUrl);
      const epUrl = await findShahiidEpisodeUrl(seasonsUrl, ep);
      if (epUrl) { episodePage = epUrl; break; }
    }

    if (!episodePage) return [];

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
  isEmbed?: boolean;
}

const SKIP_EXTRACT_HOSTS = [
  "drive.google","mega.nz","mediafire.com",
  "ok.ru","odnoklassniki.ru","youtube.com","youtu.be",
  ...EMBED_ONLY_HOSTS,
];

async function probeDirectUrl(url: string, referer?: string): Promise<boolean> {
  // HLS m3u8 manifests: CDN servers frequently reject HEAD with HTML error pages
  // but serve fine on GET — trust extracted m3u8 URLs without probing
  if (url.match(/\.m3u8([?#]|$)/i)) return true;
  // Direct MKV/MP4 on workers.dev CDN: blocks server HEAD but plays fine in browser
  if (url.includes("workers.dev")) return true;
  try {
    const r = await fetch(url, {
      method: "HEAD",
      headers: { "User-Agent": BROWSER_UA, ...(referer ? { Referer: referer } : {}), Range: "bytes=0-1024" },
      signal: AbortSignal.timeout(5000),
      redirect: "follow",
    });
    const ct = r.headers.get("content-type") || "";
    if (ct.includes("text/html")) return false;
    // Accept 403/405 — CDN blocks HEAD but serves GET (URL is valid)
    return r.ok || r.status === 206 || r.status === 302 || r.status === 301 || r.status === 403 || r.status === 405;
  } catch { return true; }
}

async function extractAndCollect(
  sources: UnifiedSource[],
  out: UnifiedSource[],
  seenKeys: Set<string>,
  timeoutMs = 14000,
): Promise<void> {
  function collect(s: UnifiedSource) {
    if (!s.directUrl && !s.isEmbed) return;
    // iframe policy: only mega.nz and vidmoly allowed as sandboxed embed
    if (s.isEmbed) {
      const eu = (s.directUrl || s.url).toLowerCase();
      if (!eu.includes("mega.nz") && !eu.includes("mega.co.nz") && !VIDMOLY_HOSTS.some(h => eu.includes(h))) return;
    }
    const checkUrl = s.directUrl || s.url;
    const isOwnProxy = checkUrl.startsWith("/api/");
    if (!s.isEmbed && !isOwnProxy && DEAD_FILE_HOSTS.some(h => checkUrl.toLowerCase().includes(h))) return;
    const key = checkUrl.includes("workers.dev")
      ? "cdn:" + checkUrl.replace(/^https?:\/\/[^/]+/, "")
      : checkUrl;
    if (seenKeys.has(key)) return;
    seenKeys.add(key);
    out.push(s);
  }

  await Promise.allSettled(sources.map(async (s) => {
    // isEmbed sources (e.g. mega.nz/embed) pass through without extraction
    if (s.isEmbed) { collect(s); return; }
    // Already has directUrl (e.g. Phoenix direct MKV/MP4)
    if (s.directUrl) {
      const alive = await probeDirectUrl(s.directUrl, s.url);
      if (alive) collect(s);
      return;
    }
    // mega.nz/embed → allowed as sandboxed iframe (MUST be before DEAD_FILE_HOSTS since
    // "mega.nz" appears in that list but /embed/ URLs are safe to show in a sandboxed iframe)
    if (s.url.includes("mega.nz/embed") || s.url.includes("mega.co.nz/embed")) {
      collect({ ...s, directUrl: s.url, isEmbed: true }); return;
    }
    // Vidmoly → allowed as sandboxed iframe (Cloudflare Turnstile blocks server-side extraction)
    // Must also be before DEAD_FILE_HOSTS in case any vidmoly domain lands there
    if (VIDMOLY_HOSTS.some(h => s.url.includes(h))) {
      collect({ ...s, directUrl: s.url, isEmbed: true }); return;
    }
    // Dead file hosts → skip entirely
    if (DEAD_FILE_HOSTS.some(h => s.url.includes(h))) return;
    // Bare .m3u8 → wrap with hls-proxy to bypass CORS restrictions
    if (s.url.match(/\.m3u8([?#]|$)/i)) {
      const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(s.url)}&ref=${encodeURIComponent(s.url)}`;
      collect({ ...s, directUrl: proxied, directType: "hls" });
      return;
    }
    // Bare .mp4 → direct MP4
    if (s.url.match(/\.mp4([?#]|$)/i)) {
      collect({ ...s, directUrl: s.url, directType: "mp4" });
      return;
    }
    // Known un-extractable hosts (social media, junk CDNs) → skip entirely (no embed)
    if (EMBED_ONLY_HOSTS.some(h => s.url.includes(h))) return;
    // Other skippable extraction blockers (drive.google, mega.nz plain, etc.) → skip entirely
    if (SKIP_EXTRACT_HOSTS.some(h => s.url.includes(h))) return;

    // Try to extract a direct MP4/HLS URL from the embed page
    try {
      const result = await Promise.race([
        extractVideoDeep(s.url, s.url),
        new Promise<null>(r => setTimeout(() => r(null), timeoutMs)),
      ]);
      if (result?.url) {
        if (result.type === "hls") {
          // Wrap extracted HLS with hls-proxy to bypass CORS
          const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(result.url)}&ref=${encodeURIComponent(s.url)}`;
          collect({ ...s, url: proxied, directUrl: proxied, directType: "hls" });
        } else {
          // MP4: probe to filter dead links
          const alive = await probeDirectUrl(result.url, s.url);
          if (alive) {
            // sendvid CDN URLs are IP-tied (contain ip=SERVER_IP in URL)
            // Must go through video-proxy so the request comes from our server IP
            const isIpTied = result.url.includes("sendvid.com") || result.url.includes("sendvid.net");
            if (isIpTied) {
              const proxied = `/api/anime/video-proxy?url=${encodeURIComponent(result.url)}&ref=${encodeURIComponent(s.url)}`;
              collect({ ...s, url: proxied, directUrl: proxied, directType: "mp4" });
            } else {
              collect({ ...s, url: result.url, directUrl: result.url, directType: "mp4" });
            }
          }
        }
      }
      // Extraction failed → drop (only mega.nz/embed and vidmoly allowed as iframes)
    } catch {
      // Exception during extraction → drop
    }
  }));
}


// ════════════════════════════════════════════════════════════════════
//  ANIMELEK.TOP scraper  (Arabic anime — عربي مترجم)
// ════════════════════════════════════════════════════════════════════

const ALK_BASE = "https://animelek.top";
const ALK_HDRS: Record<string, string> = { ...BASE_HDRS, Referer: "https://animelek.top/" };

const alkSlugCache = new Map<string, { slug: string | null; ts: number }>();
const alkSrcCache  = new Map<string, { sources: UnifiedSource[]; ts: number }>();

async function searchAnimelek(title: string, english: string | null): Promise<string | null> {
  const ck = (title + "|" + (english || "")).toLowerCase();
  const hit = alkSlugCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.slug;

  // Build slug variations from english + title
  const slugVariants: string[] = [];
  for (const q of [english, title].filter(Boolean) as string[]) {
    const s = toSlug(q as string);
    if (!s) continue;
    slugVariants.push(s);
    // Without colon suffix (e.g. "fullmetal-alchemist-brotherhood" from "fullmetal-alchemist:-brotherhood")
    const noColon = toSlug((q as string).replace(/[:：].*/g, "").trim());
    if (noColon && noColon !== s) slugVariants.push(noColon);
    // Without trailing season indicator
    const stripped = s.replace(/[-–](?:season[-–]?\d+|\d+(?:nd|rd|th)[-–]season)$/i, "");
    if (stripped !== s) slugVariants.push(stripped);
  }

  // Direct slug check (faster than search)
  for (const slug of [...new Set(slugVariants)]) {
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

  // Search fallback — use ?s= (standard WP search, ?search_term_string= is broken)
  for (const q of [english, title].filter(Boolean) as string[]) {
    try {
      const r = await fetch(`${ALK_BASE}/search/?s=${encodeURIComponent(q as string)}`, {
        headers: ALK_HDRS, signal: AbortSignal.timeout(8000), redirect: "follow",
      });
      if (!r.ok) continue;
      const html = await r.text();
      if (isCloudflareBlock(html)) continue;
      // Search page may return 404 page with no anime results
      if (!html.includes("/anime/")) continue;
      let best: string | null = null, bestScore = 0;
      for (const m of html.matchAll(/href="https?:\/\/animelek\.top\/anime\/([^/"]+)\/?"/gi)) {
        const s = m[1];
        const label = s.replace(/-/g, " ");
        const score = Math.max(similarity(label, title), english ? similarity(label, english as string) : 0);
        if (score > bestScore && score > 0.2) { bestScore = score; best = s; }
      }
      if (best && bestScore > 0.25) {
        // Verify the found slug actually has episodes
        try {
          const vr = await fetch(`${ALK_BASE}/anime/${best}/`, {
            headers: ALK_HDRS, signal: AbortSignal.timeout(5000), redirect: "follow",
          });
          if (vr.ok) {
            const vhtml = await vr.text();
            if (!isCloudflareBlock(vhtml) && vhtml.includes("/episode/")) {
              alkSlugCache.set(ck, { slug: best, ts: Date.now() });
              return best;
            }
          }
        } catch {}
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

    let epUrl: string | null = null;
    for (const m of sHtml.matchAll(/href="(https?:\/\/animelek\.top\/episode\/[^"]+)"/gi)) {
      const url = m[1];
      const decoded = decodeURIComponent(url);
      const m1 = decoded.match(/[-](\d+)[-](?:والاخيرة|الحلقة)/);
      const m2 = decoded.match(/والاخيرة(\d+)[-]/);
      const num = parseInt((m2?.[1] ?? m1?.[1]) || "");
      if (!isNaN(num) && num === ep) { epUrl = url; break; }
    }

    if (!epUrl) {
      const epPad = String(ep).padStart(2, "0");
      const candidates = [
        `${ALK_BASE}/episode/${slug}-${ep}-%D8%A7%D9%84%D8%AD%D9%84%D9%82%D8%A9/`,
        `${ALK_BASE}/episode/${slug}-${ep}-الحلقة/`,
        `${ALK_BASE}/episode/${slug}-${epPad}-%D8%A7%D9%84%D8%AD%D9%84%D9%82%D8%A9/`,
        `${ALK_BASE}/episode/${slug}-${epPad}-الحلقة/`,
        `${ALK_BASE}/episode/${slug}-%D8%A7%D9%84%D8%AD%D9%84%D9%82%D8%A9-${ep}/`,
        `${ALK_BASE}/episode/${slug}-%D8%A7%D9%84%D8%AD%D9%84%D9%82%D8%A9-${epPad}/`,
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

    const sources: UnifiedSource[] = [];
    const seenHosts = new Set<string>();
    let idx = 0;
    for (const aM of eHtml.matchAll(/<a\b[^>]*\bdata-embed="([^"]*)"[^>]*>([\s\S]*?)<\/a>/gi)) {
      const embedAttr = aM[1];
      const innerHtml = aM[2];
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
// ════════════════════════════════════════════════════════════════════

const ADAR_BASE = "https://animedar.net";
const ADAR_HDRS: Record<string, string> = {
  ...BASE_HDRS,
  Referer: "https://animedar.net/",
};

const ADAR_DEAD_TYPES = new Set([
  "4shared","drive","ok","okru","uqload","fembed","videa",
  "doodstream","dood","waaw","facebook","dailymotion",
  "highload","sblanh","upvideo","turbobit","1fichier","solidfiles",
]);

function buildAnimestreamEmbed(type: string, data: string): string | null {
  const t = type.toLowerCase().trim();
  const d = data.trim();
  if (!d || d.length < 3) return null;
  if (ADAR_DEAD_TYPES.has(t)) return null;
  switch (t) {
    case "mega": {
      // Full URL already (starts with https)
      if (d.startsWith("https://mega.nz/embed") || d.startsWith("https://mega.co.nz/embed")) return d;
      // Protocol-relative: "//mega.nz/embed#!..." → "https://mega.nz/embed#!..."
      if (d.startsWith("//mega.nz") || d.startsWith("//mega.co.nz")) return "https:" + d;
      // Truncated scheme: ":/mega.nz/embed#!..." (https was stripped, leaving colon+1-slash)
      if (d.startsWith(":/mega.nz") || d.startsWith(":/mega.co.nz")) return "https://" + d.slice(2);
      // Old-style hash-bang "!fileId!key" — no # in this format, must check before the # guard
      if (d.startsWith("!")) return `https://mega.nz/embed#${d}`;
      // Standard format: "fileId#key" — requires a # separator
      if (!d.includes("#")) return null;
      return `https://mega.nz/embed/${d}`;
    }
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
      if (d.startsWith("http")) return d;
      return null;
  }
}

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
      if (!/source=["']ani["']/i.test(attrs)) continue;
      const type    = attrs.match(/\btype=["']([^"']+)["']/)?.[1]         || "";
      const data    = attrs.match(/(?:^|\s)data=["']([^"']+)["']/)?.[1]    || "";
      const quality = attrs.match(/\bquality-data=["']([^"']+)["']/)?.[1] || "HD";
      if (type && data && data.length >= 3) servers.push({ type, data, quality });
    }
    if (servers.length) episodes.push(servers);
  }
  return episodes;
}

async function searchAnimedar(title: string, english: string | null): Promise<string | null> {
  const ck = (title + "|" + (english || "")).toLowerCase();
  const hit = adarSlugCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.url;

  const SKIP_SLUGS = ["feed/", "wp-", "/page/", "genre/", "cast/", "tag/", "category/",
    "dmca", "contact", "about", "privacy", "xmlrpc", "wp-json"];

  // ── Step 1: Try direct slug construction (much faster than search) ──
  const slugCandidates: string[] = [];
  for (const q of [english, title].filter(Boolean) as string[]) {
    const s = toSlug(q as string);
    if (!s) continue;
    slugCandidates.push(s);
    // Colon-removed join: "Re:Zero" → "ReZero" → "rezero-kara-..." (AnimeDar style)
    const colonJoined = toSlug((q as string).replace(/[：:]/g, ""));
    if (colonJoined && colonJoined !== s) slugCandidates.push(colonJoined);
    const stripped = s.replace(/[-–](?:season[-–]?\d+|\d+(?:nd|rd|th)[-–]season|s\d+)$/i, "");
    if (stripped !== s && stripped.length > 2) slugCandidates.push(stripped);
    const colonJoinedStripped = colonJoined.replace(/[-–](?:season[-–]?\d+|\d+(?:nd|rd|th)[-–]season|s\d+)$/i, "");
    if (colonJoinedStripped !== colonJoined && colonJoinedStripped.length > 2) slugCandidates.push(colonJoinedStripped);
  }
  for (const slug of [...new Set(slugCandidates)]) {
    try {
      const r = await fetch(`${ADAR_BASE}/${slug}/`, {
        headers: ADAR_HDRS,
        signal: AbortSignal.timeout(7000),
        redirect: "follow",
      });
      if (r.ok) {
        const html = await r.text();
        if (!isCloudflareBlock(html) && html.includes("ul-server-position")) {
          const url = `${ADAR_BASE}/${slug}/`;
          adarSlugCache.set(ck, { url, ts: Date.now() });
          return url;
        }
      }
    } catch {}
  }

  // ── Step 2: Fall back to search ──
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

      // Try both itemprop="url" anchors and plain article/post anchors
      // Note: AnimeDar now uses Arabic percent-encoded slugs (e.g. /انمي-ون-بيس-مترجم/)
      const anchorRe = /<a\s+href="(https?:\/\/animedar\.net\/([^"#?]+))"(?:[^>]*title="([^"]*)")?[^>]*>/gi;
      for (const m of html.matchAll(anchorRe)) {
        const url      = m[1];
        const slug     = m[2];
        const rawLabel = m[3] || "";
        if (SKIP_SLUGS.some(s => slug.includes(s) || decodeURIComponent(slug).includes(s))) continue;
        // Decode percent-encoded slug (supports Arabic URLs like /انمي-ون-بيس-مترجم/)
        let slugDecoded = slug;
        try { slugDecoded = decodeURIComponent(slug); } catch {}
        // Extract ASCII portion of decoded slug for similarity matching
        const slugAscii = slugDecoded.replace(/-/g, " ").replace(/[^\x00-\x7F]/g, " ").replace(/\s+/g, " ").trim();
        const label = rawLabel.replace(/&amp;/g, "&").replace(/&#\d+;/g, "").replace(/&[a-z]+;/g, " ").trim()
          || slugAscii
          || slugDecoded.replace(/-/g, " ");
        const score = Math.max(
          similarity(label, title),
          english ? similarity(label, english) : 0,
          slugAscii ? similarity(slugAscii, title) : 0,
          slugAscii && english ? similarity(slugAscii, english) : 0,
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

    const allEpisodes = parseAnimadarServers(html);
    if (!allEpisodes.length) return [];

    let epIndex = ep - 1;
    const firstEpLabel = html.match(/id=["']IDSB1["'][^>]*>([\s\S]*?)<\/div>/i)?.[1] || "";
    const firstEpNum   = parseInt(firstEpLabel.replace(/\D/g, ""));
    if (!isNaN(firstEpNum) && firstEpNum > 1) {
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
      const t = type.toLowerCase();
      const isMegaEmbed = t === "mega";
      const qRank = quality.toUpperCase().includes("FHD") ? 3
                  : quality.toUpperCase().includes("HD")  ? 2 : 1;
      sources.push({
        name: `AnimeDar · ${type.toUpperCase()} · ${quality}`,
        url: embedUrl,
        quality,
        qualityRank: isMegaEmbed ? 8 : qRank,
        site: "animedar",
        directUrl: isMegaEmbed ? embedUrl : undefined,
        isEmbed: isMegaEmbed || undefined,
      });
    }

    if (sources.length) adarSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  ANIME-PHOENIX.COM scraper  (Arabic anime — direct MKV/MP4 via CF Workers CDN)
//  Search: GET /?s={query}  →  /animes/{slug}/
//  Episode: GET /animes/{slug}/  →  episode links  →  fetch episode page
//  Video: <source src="https://*.workers.dev/0:/Server/...">
//         OR data-server=base64url → JSON {type:"direct", link:"https://..."}
// ════════════════════════════════════════════════════════════════════

const APH_BASE = "https://anime-phoenix.com";
const APH_HDRS: Record<string, string> = { ...BASE_HDRS, Referer: "https://anime-phoenix.com/" };
const aphSlugCache = new Map<string, { slug: string | null; ts: number }>();
const aphSrcCache  = new Map<string, { sources: UnifiedSource[]; ts: number }>();

async function searchAnimePhoenix(title: string, english: string | null): Promise<string | null> {
  const ck = (title + "|" + (english || "")).toLowerCase();
  const hit = aphSlugCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.slug;

  // Method 1: Direct slug construction — try toSlug() variants
  const slugCandidates: string[] = [];
  for (const q of [english, title].filter(Boolean) as string[]) {
    const s = toSlug(q as string);
    if (!s) continue;
    slugCandidates.push(s);
    // Without "The " prefix
    const noThe = toSlug((q as string).replace(/^the\s+/i, "").trim());
    if (noThe && noThe !== s) slugCandidates.push(noThe);
    // Without colon suffix (e.g. "fullmetal-alchemist" from "fullmetal-alchemist-brotherhood")
    const noColon = toSlug((q as string).replace(/[:：].*/g, "").trim());
    if (noColon && noColon !== s) slugCandidates.push(noColon);
    // Without trailing season indicator
    const stripped = s.replace(/[-–](?:season[-–]?\d+|\d+(?:nd|rd|th)[-–]season|s\d+)$/i, "");
    if (stripped !== s && stripped.length > 2) slugCandidates.push(stripped);
  }
  for (const slug of [...new Set(slugCandidates)]) {
    try {
      const r = await fetch(`${APH_BASE}/animes/${slug}`, {
        headers: APH_HDRS,
        signal: AbortSignal.timeout(7000),
        redirect: "follow",
      });
      if (r.ok) {
        const html = await r.text();
        // Verify this is a real series page (soft-404 returns homepage with 200)
        // Must contain episode links for this specific slug
        if (!isCloudflareBlock(html) && html.includes(`/episodes/${slug}-episode-`)) {
          aphSlugCache.set(ck, { slug, ts: Date.now() });
          return slug;
        }
      }
    } catch {}
  }

  // Method 2 + 3: Search using /search/ then /?s= query params
  for (const q of [english, title].filter(Boolean) as string[]) {
    for (const searchUrl of [
      `${APH_BASE}/search/${encodeURIComponent((q as string).toLowerCase().replace(/\s+/g, "+"))}`,
      `${APH_BASE}/?s=${encodeURIComponent(q as string)}`,
    ]) {
      try {
        const r = await fetch(searchUrl, {
          headers: APH_HDRS,
          signal: AbortSignal.timeout(8000),
          redirect: "follow",
        });
        if (!r.ok) continue;
        const html = await r.text();
        if (isCloudflareBlock(html)) continue;
        // Skip if redirected to homepage (no search results)
        if (html.includes('<div class="home-slider"') && !html.includes("/animes/")) continue;

        let best: string | null = null;
        let bestScore = 0;

        for (const m of html.matchAll(/href="(https?:\/\/anime-phoenix\.com\/animes\/([^/"]+)\/?)"/gi)) {
          const slug  = m[2];
          const label = slug.replace(/-/g, " ");
          const score = Math.max(
            similarity(label, title),
            english ? similarity(label, english) : 0,
          );
          if (score > bestScore && score > 0.25) { bestScore = score; best = slug; }
        }

        if (best) {
          aphSlugCache.set(ck, { slug: best, ts: Date.now() });
          return best;
        }
      } catch {}
    }
  }

  aphSlugCache.set(ck, { slug: null, ts: Date.now() });
  return null;
}

/** Extract direct video URL(s) from an anime-phoenix episode page */
function parseAnimePhoenixVideo(html: string): Array<{ url: string; label: string }> {
  const results: Array<{ url: string; label: string }> = [];
  const seen = new Set<string>();

  // Method 1: <source src="https://*.workers.dev/0:/...">
  for (const m of html.matchAll(/<source[^>]+src=["'](https?:\/\/[^"']+\.(?:mkv|mp4|m3u8)[^"']*)["']/gi)) {
    const url = m[1];
    if (!seen.has(url) && url.startsWith("http")) {
      seen.add(url);
      results.push({ url, label: "مباشر" });
    }
  }

  // Method 2: data-server=base64url → JSON {type:"direct", link:"..."}
  for (const m of html.matchAll(/data-server=["']([A-Za-z0-9+/=_-]{20,})["']/gi)) {
    try {
      const raw = m[1].replace(/-/g, "+").replace(/_/g, "/");
      const decoded = JSON.parse(Buffer.from(raw, "base64").toString("utf-8"));
      if (decoded?.type === "direct" && decoded?.link?.startsWith("http")) {
        const url = decoded.link;
        if (!seen.has(url)) {
          seen.add(url);
          results.push({ url, label: decoded.label || "مباشر" });
        }
      }
    } catch {}
  }

  // Method 3: data-server=urlencoded+base64
  for (const m of html.matchAll(/data-server=["']([^"']{20,})["']/gi)) {
    try {
      const decoded = JSON.parse(decodeURIComponent(atob(m[1])));
      if (decoded?.type === "direct" && decoded?.link?.startsWith("http")) {
        const url = decoded.link;
        if (!seen.has(url)) {
          seen.add(url);
          results.push({ url, label: decoded.label || "مباشر" });
        }
      }
    } catch {}
  }

  // Method 4: any workers.dev / CDN direct video link in script tags
  for (const m of html.matchAll(/["'](https?:\/\/[^"']+\.workers\.dev\/[^"']+\.(?:mkv|mp4))["']/gi)) {
    const url = m[1];
    if (!seen.has(url)) {
      seen.add(url);
      results.push({ url, label: "مباشر" });
    }
  }

  return results;
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

    // Fast path: try direct episode URL first (new site structure — skips series page fetch)
    let epUrl: string | null = null;
    const directCandidates = [
      `${APH_BASE}/episodes/${slug}-episode-${ep}`,
      `${APH_BASE}/episodes/${slug}-episode-${String(ep).padStart(2, "0")}`,
    ];
    for (const u of directCandidates) {
      const status = await safeHead(u, APH_HDRS);
      if (status === 200 || status === 301 || status === 302) { epUrl = u; break; }
    }

    // Fallback: fetch series page to find episode link
    if (!epUrl) {
      const seriesUrl = `${APH_BASE}/animes/${slug}/`;
      const sr = await fetch(seriesUrl, {
        headers: APH_HDRS, signal: AbortSignal.timeout(8000), redirect: "follow",
      });
      if (sr.ok) {
        const sHtml = await sr.text();
        if (!isCloudflareBlock(sHtml)) {
          // Pattern 1: episode link matching exact number
          for (const m of sHtml.matchAll(/href="(https?:\/\/anime-phoenix\.com\/[^"]*episode[^"]*)"[^>]*/gi)) {
            const url = m[1];
            const numM = url.match(/[-_](\d+)\/?$/);
            if (numM && parseInt(numM[1]) === ep) { epUrl = url; break; }
          }
          // Pattern 2: any numbered link
          if (!epUrl) {
            for (const m of sHtml.matchAll(/href="(https?:\/\/anime-phoenix\.com\/[^"]+)"/gi)) {
              const url = m[1];
              if (url === seriesUrl) continue;
              const numM = url.match(/[-_\/](\d+)\/?(?:[?#]|$)/);
              if (numM && parseInt(numM[1]) === ep) { epUrl = url; break; }
            }
          }
        }
      }
    }

    // Last resort candidates
    if (!epUrl) {
      const fallbackCandidates = [
        `${APH_BASE}/animes/${slug}/episodes/${slug}-${ep}/`,
        `${APH_BASE}/watch/${slug}-episode-${ep}/`,
        `${APH_BASE}/animes/${slug}/${ep}/`,
      ];
      for (const u of fallbackCandidates) {
        const status = await safeHead(u, APH_HDRS);
        if (status === 200 || status === 301 || status === 302) { epUrl = u; break; }
      }
    }
    if (!epUrl) return [];

    const er = await fetch(epUrl, {
      headers: { ...APH_HDRS, Referer: `${APH_BASE}/animes/${slug}/` },
      signal: AbortSignal.timeout(10000), redirect: "follow",
    });
    if (!er.ok) return [];
    const eHtml = await er.text();
    if (isCloudflareBlock(eHtml)) return [];

    const videos = parseAnimePhoenixVideo(eHtml);
    if (!videos.length) return [];

    // Build sources — deduplicate CDN mirrors by file path (keep only first per unique file)
    const seenPaths = new Set<string>();
    const sources: UnifiedSource[] = [];
    for (const [i, v] of videos.entries()) {
      const filePath = v.url.includes("workers.dev")
        ? v.url.replace(/^https?:\/\/[^/]+/, "")
        : v.url;
      if (seenPaths.has(filePath)) continue;
      seenPaths.add(filePath);
      const isM3u8 = v.url.includes(".m3u8");
      sources.push({
        name: `فينكس · ${v.label || `سيرفر ${i + 1}`}`,
        url: v.url,
        quality: "HD",
        qualityRank: 3,
        site: "animephoenix",
        directUrl: v.url,
        directType: isM3u8 ? "hls" : "mp4",
      });
    }

    if (sources.length) aphSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  MITANIME.COM scraper  (RSC endpoint — Japanese audio + Arabic subtitles)
// ════════════════════════════════════════════════════════════════════
const MITANIME_BASE = "https://mitanime.com";
const MITANIME_RSC_HDRS: Record<string, string> = {
  "User-Agent": BROWSER_UA,
  "Rsc": "1",
  "Accept": "text/x-component,text/html,*/*",
  "Accept-Language": "ar,en-US;q=0.9,en;q=0.8",
};

const mitanimeSlugCache = new Map<string, { slug: string | null; ts: number }>();
const mitanimeSrcCache  = new Map<string, { sources: UnifiedSource[]; ts: number }>();

function parseMitanimeServers(
  rsc: string,
): Array<{ name: string; quality: string; url: string; isLocked: boolean }> {
  const idx = rsc.indexOf('"servers":[');
  if (idx === -1) return [];
  const start = idx + '"servers":'.length;
  let depth = 0;
  let end = start;
  for (let i = start; i < rsc.length; i++) {
    if (rsc[i] === "[") depth++;
    else if (rsc[i] === "]") { depth--; if (depth === 0) { end = i + 1; break; } }
  }
  try {
    const arr = JSON.parse(rsc.slice(start, end));
    if (Array.isArray(arr)) return arr;
  } catch {}
  return [];
}

async function resolveMitanimeSlug(title: string, english: string | null): Promise<string | null> {
  const ck = (title + "|" + (english || "")).toLowerCase();
  const cached = mitanimeSlugCache.get(ck);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.slug;

  // Try slug candidates derived directly from titles
  const candidates: string[] = [];
  for (const t of [english, title].filter(Boolean) as string[]) {
    const slug = toSlug(t);
    if (slug) candidates.push(slug);
  }

  for (const slug of [...new Set(candidates)]) {
    try {
      const r = await fetch(`${MITANIME_BASE}/watch/${slug}/1`, {
        headers: MITANIME_RSC_HDRS,
        signal: AbortSignal.timeout(8000),
        redirect: "follow",
      });
      if (!r.ok) continue;
      const text = await r.text();
      if (text.includes('"servers":[') && !text.includes('"/_not-found"')) {
        mitanimeSlugCache.set(ck, { slug, ts: Date.now() });
        return slug;
      }
    } catch {}
  }

  // Fallback: search RSC endpoint
  for (const q of [english, title].filter(Boolean) as string[]) {
    try {
      const r = await fetch(
        `${MITANIME_BASE}/search?q=${encodeURIComponent(q as string)}`,
        { headers: MITANIME_RSC_HDRS, signal: AbortSignal.timeout(8000), redirect: "follow" },
      );
      if (!r.ok) continue;
      const text = await r.text();
      // Extract ASCII-only slugs (anime slugs, not Arabic genre slugs)
      const slugsFound: string[] = [];
      for (const m of text.matchAll(/"slug":"([a-z0-9][a-z0-9-]*)"/g)) {
        if (/^[a-z0-9-]+$/.test(m[1]) && m[1].length > 2) slugsFound.push(m[1]);
      }
      const unique = [...new Set(slugsFound)];
      // Score each slug by similarity to titles
      let best: string | null = null;
      let bestScore = 0;
      for (const slug of unique) {
        const label = slug.replace(/-/g, " ");
        const score = Math.max(
          similarity(label, title),
          english ? similarity(label, english) : 0,
        );
        if (score > bestScore && score > 0.3) { bestScore = score; best = slug; }
      }
      if (best) {
        mitanimeSlugCache.set(ck, { slug: best, ts: Date.now() });
        return best;
      }
    } catch {}
  }

  mitanimeSlugCache.set(ck, { slug: null, ts: Date.now() });
  return null;
}

async function getMitanimeSources(
  title: string, english: string | null, ep: number,
): Promise<UnifiedSource[]> {
  const ck = `mitanime:${(title + "|" + (english || "")).toLowerCase()}:${ep}`;
  const hit = mitanimeSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;

  try {
    const slug = await resolveMitanimeSlug(title, english);
    if (!slug) return [];

    const r = await fetch(`${MITANIME_BASE}/watch/${slug}/${ep}`, {
      headers: MITANIME_RSC_HDRS,
      signal: AbortSignal.timeout(10000),
      redirect: "follow",
    });
    if (!r.ok) return [];
    const text = await r.text();
    if (!text.includes('"servers":[')) return [];

    const servers = parseMitanimeServers(text);
    const sources: UnifiedSource[] = [];
    // Skip file-hosting/download sites (not streamable embeds)
    const SKIP_URL_FRAGMENTS = ["mediafire.com","workupload","gofile.io","4shared.com",
                                "drive.google","videa.hu","soraplay"];

    for (const server of servers) {
      if (server.isLocked) continue;
      const sUrl = server.url;
      if (!sUrl || sUrl === "premium" || !sUrl.startsWith("http")) continue;
      if (SKIP_URL_FRAGMENTS.some(n => sUrl.toLowerCase().includes(n))) continue;

      const qRank = server.quality === "FHD" ? 12 : server.quality === "HD" ? 11 : 10;
      const qLabel = server.quality === "FHD" ? "1080p" : server.quality === "HD" ? "720p" : "480p";

      // mega.nz/embed → allowed as isEmbed directly
      if (sUrl.includes("mega.nz/embed") || sUrl.includes("mega.co.nz/embed")) {
        sources.push({
          name: `ميتانيمي · ميغا · ${qLabel}`,
          url: sUrl,
          quality: qLabel,
          qualityRank: qRank,
          site: "mitanime",
          directUrl: sUrl,
          isEmbed: true,
        });
        continue;
      }

      // All other embed hosts — attempt extractVideoDeep (streamwish, filemoon, vidhide, etc.)
      try {
        const result = await Promise.race([
          extractVideoDeep(sUrl, `${MITANIME_BASE}/`),
          new Promise<null>(resolve => setTimeout(() => resolve(null), 10000)),
        ]);
        if (result?.url) {
          let directUrl: string;
          if (result.type === "hls") {
            directUrl = `/api/anime/hls-proxy?url=${encodeURIComponent(result.url)}&ref=${encodeURIComponent(sUrl)}`;
          } else {
            // MP4: check for non-standard ports (e.g. vidcache.net:8161) which are blocked by Replit.
            // Route through video-proxy so the request comes from our server which has no port restrictions.
            const hasNonStdPort = /:\d{4,5}\//.test(result.url) &&
              !/:(80|443|8080|8443)\//.test(result.url);
            directUrl = hasNonStdPort
              ? `/api/anime/video-proxy?url=${encodeURIComponent(result.url)}&ref=${encodeURIComponent(sUrl)}`
              : result.url;
          }
          sources.push({
            name: `ميتانيمي · ستريم · ${qLabel}`,
            url: sUrl,
            quality: qLabel,
            qualityRank: qRank,
            site: "mitanime",
            directUrl,
            directType: result.type,
          });
        }
      } catch {}
    }

    if (sources.length) mitanimeSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  TOONSTREAM.VIP scraper  (Japanese/multi-audio HLS)
//  Episode slug: {anime-slug}-1x{ep}
//  Player chain: episode page → outer server iframe → .Video iframe
//                → as-cdn21.top (HEAD cookie + POST getVideo → m3u8)
//                → OR rubystm.com (packed JS → m3u8)
// ════════════════════════════════════════════════════════════════════

const TOON_VIP = "https://toonstream.vip";
const AS_CDN_B = "https://as-cdn21.top";
const RUBY_B   = "https://rubystm.com";

const toonSrcCache    = new Map<string, { sources: UnifiedSource[]; ts: number }>();
const toonSeriesCache = new Map<string, { urls: string[]; ts: number }>();

async function extractAsCdn(playerUrl: string): Promise<string | null> {
  try {
    const r1 = await fetch(playerUrl, {
      method: "HEAD",
      headers: { "User-Agent": BROWSER_UA },
      signal: AbortSignal.timeout(7000),
    });
    const rawCookies = (r1.headers.getSetCookie?.() ?? [r1.headers.get("set-cookie") ?? ""])
      .filter(Boolean);
    const cook = rawCookies.map((c: string) => c.split(";")[0]).join("; ");
    const hash = playerUrl.split("/").pop() || "";
    if (!hash || hash.length < 5) return null;

    const r2 = await fetch(`${AS_CDN_B}/player/index.php?data=${hash}&do=getVideo`, {
      method: "POST",
      body: JSON.stringify({ hash, r: "" }),
      headers: {
        "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8",
        "X-Requested-With": "XMLHttpRequest",
        Origin: AS_CDN_B,
        Referer: playerUrl,
        "User-Agent": BROWSER_UA,
        ...(cook ? { Cookie: cook } : {}),
      },
      signal: AbortSignal.timeout(8000),
    });
    if (!r2.ok) return null;
    const j = await r2.json() as any;
    const url = j.securedLink || j.videoSource;
    return (url && typeof url === "string" && url.startsWith("http")) ? url : null;
  } catch { return null; }
}

async function extractRubyStm(playerUrl: string, referer: string): Promise<string | null> {
  const fc = playerUrl.replace(".html", "").split("/").pop() || "";
  if (!fc) return null;
  try {
    const r = await fetch(`${RUBY_B}/dl`, {
      method: "POST",
      body: `op=embed&file_code=${fc}&auto=1&referer=${encodeURIComponent(referer)}`,
      headers: {
        "Content-Type": "application/x-www-form-urlencoded",
        Referer: playerUrl,
        "User-Agent": BROWSER_UA,
      },
      signal: AbortSignal.timeout(10000),
    });
    if (!r.ok) return null;
    const html = await r.text();
    const direct = parseVideoUrl(html);
    if (direct?.url && direct.url.includes(".m3u8")) return direct.url;
    return null;
  } catch { return null; }
}

/** Decode HTML entities in URLs captured from HTML attributes */
function decodeHtmlEntities(s: string): string {
  return s.replace(/&amp;/g, "&").replace(/&#038;/g, "&").replace(/&lt;/g, "<")
          .replace(/&gt;/g, ">").replace(/&quot;/g, '"').replace(/&#39;/g, "'");
}

/**
 * Resolve ALL ToonStream series page URLs for a given title.
 * Returns multiple candidates (ordered best-first) so the caller
 * can try each until one yields working HLS sources.
 */
async function resolveToonSeriesUrls(title: string, english: string | null): Promise<string[]> {
  const ck = (title + "|" + (english || "")).toLowerCase();
  const hit = toonSeriesCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.urls;

  const slugCandidates: string[] = [];
  for (const q of [english, title].filter(Boolean) as string[]) {
    const s = toSlug(q as string);
    if (!s) continue;
    slugCandidates.push(s);
    if (s.startsWith("the-")) slugCandidates.push(s.slice(4));
    const stripped = s.replace(/[-–](?:season[-–]?\d+|\d+(?:nd|rd|th)[-–]season|s\d+)$/i, "");
    if (stripped !== s && stripped.length > 2) slugCandidates.push(stripped);
    const noColon = toSlug((q as string).replace(/[:：].*/g, "").trim());
    if (noColon && noColon !== s) slugCandidates.push(noColon);
  }

  const found: string[] = [];
  const seenUrls = new Set<string>();

  function addCandidate(url: string) {
    if (!seenUrls.has(url)) { seenUrls.add(url); found.push(url); }
  }

  // Direct slug check — collect ALL matching series pages
  for (const slug of [...new Set(slugCandidates)]) {
    try {
      const r = await fetch(`${TOON_VIP}/series/${slug}/`, {
        headers: { "User-Agent": BROWSER_UA, Referer: TOON_VIP + "/" },
        signal: AbortSignal.timeout(7000), redirect: "follow",
      });
      if (r.ok) {
        const html = await r.text();
        if (html.includes("/episode/") && !html.includes("Page not found")) {
          addCandidate(`${TOON_VIP}/series/${slug}/`);
          // Also check for cross-domain episode links (toonstream.co slugs) that
          // point to alternative series on toonstream.vip
          for (const m of html.matchAll(/href="https?:\/\/toonstream\.co\/episode\/([^/"]+)-\d+x\d+\/"/gi)) {
            // Extract series slug from episode URL: "haikyu-multi-audio-1x1" → "haikyu-multi-audio"
            const epSlug = m[1];
            const altSeriesSlug = epSlug.replace(/-\d+x\d+$/, "");
            const altUrl = `${TOON_VIP}/series/${altSeriesSlug}/`;
            if (!seenUrls.has(altUrl)) {
              // Verify the alt series exists on toonstream.vip
              try {
                const rAlt = await fetch(altUrl, {
                  headers: { "User-Agent": BROWSER_UA, Referer: TOON_VIP + "/" },
                  signal: AbortSignal.timeout(5000), redirect: "follow",
                });
                if (rAlt.ok) {
                  const hAlt = await rAlt.text();
                  if (hAlt.includes("/episode/") && !hAlt.includes("Page not found")) {
                    addCandidate(altUrl);
                  }
                }
              } catch {}
            }
          }
        }
      }
    } catch {}
  }

  // Search /?s= — collect all matching series pages by score
  for (const q of [english, title].filter(Boolean) as string[]) {
    try {
      const r = await fetch(`${TOON_VIP}/?s=${encodeURIComponent(q as string)}`, {
        headers: { "User-Agent": BROWSER_UA, Referer: TOON_VIP + "/" },
        signal: AbortSignal.timeout(10000), redirect: "follow",
      });
      if (!r.ok) continue;
      const html = await r.text();

      const candidates: Array<{ url: string; score: number }> = [];
      for (const m of html.matchAll(/href="(https?:\/\/toonstream\.vip\/series\/([^/"]+)\/)"/gi)) {
        const seriesUrl = m[1];
        const slug = m[2];
        const label = slug.replace(/-/g, " ");
        const score = Math.max(
          similarity(label, title),
          english ? similarity(label, english) : 0,
        );
        if (score > 0.22) candidates.push({ url: seriesUrl, score });
      }
      candidates.sort((a, b) => b.score - a.score);
      for (const c of candidates.slice(0, 4)) addCandidate(c.url);
      if (found.length) break;
    } catch {}
  }

  toonSeriesCache.set(ck, { urls: found, ts: Date.now() });
  return found;
}

/** Extract the episode URL from a ToonStream episode page and pull HLS sources. */
async function extractToonEpisodeSources(epPageUrl: string): Promise<UnifiedSource[]> {
  const sources: UnifiedSource[] = [];
  try {
    const r = await fetch(epPageUrl, {
      headers: { "User-Agent": BROWSER_UA, Referer: TOON_VIP + "/" },
      signal: AbortSignal.timeout(12000), redirect: "follow",
    });
    if (!r.ok) return [];
    const html = await r.text();
    if (html.length < 500) return [];

    const outerSrcs: string[] = [];
    for (const m of html.matchAll(/data-src=["']([^"']+)["']/gi)) {
      const decoded = decodeHtmlEntities(m[1]);
      if (decoded.includes("toonstream.vip") && decoded.includes("trembed")) {
        if (!outerSrcs.includes(decoded)) outerSrcs.push(decoded);
      }
    }
    if (!outerSrcs.length) return [];

    for (const outerSrc of outerSrcs.slice(0, 3)) {
      try {
        const r2 = await fetch(outerSrc, {
          headers: { "User-Agent": BROWSER_UA, Referer: TOON_VIP + "/" },
          signal: AbortSignal.timeout(10000),
        });
        if (!r2.ok) continue;
        const html2 = await r2.text();

        const innerM = html2.match(
          /<iframe[^>]+src=["']([^"']*(?:as-cdn21\.top|rubystm\.com)[^"']*)["']/i
        );
        if (!innerM) continue;
        const playerUrl = innerM[1];

        if (playerUrl.includes("as-cdn21.top")) {
          const m3u8 = await extractAsCdn(playerUrl);
          if (m3u8) {
            const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(m3u8)}&ref=${encodeURIComponent(playerUrl)}`;
            sources.push({
              name: "تون ستريم · ياباني",
              url: playerUrl,
              quality: "HD",
              qualityRank: 10,
              site: "toonstream",
              directUrl: proxied,
              directType: "hls",
            });
            if (sources.length >= 2) break;
          }
        } else if (playerUrl.includes("rubystm.com")) {
          const m3u8 = await extractRubyStm(playerUrl, outerSrc);
          if (m3u8) {
            const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(m3u8)}&ref=${encodeURIComponent(playerUrl)}`;
            sources.push({
              name: "تون ستريم · ياباني",
              url: playerUrl,
              quality: "HD",
              qualityRank: 10,
              site: "toonstream",
              directUrl: proxied,
              directType: "hls",
            });
            if (sources.length >= 2) break;
          }
        }
      } catch {}
      if (sources.length >= 2) break;
    }
  } catch {}
  return sources;
}

async function getToonStreamSources(
  title: string, english: string | null, ep: number,
): Promise<UnifiedSource[]> {
  const ck = `toon:${(title + "|" + (english || "")).toLowerCase()}:${ep}`;
  const hit = toonSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;

  // ── Step 1: Try direct episode URL guess (fast path, works for many anime) ─
  const slugCandidates: string[] = [];
  for (const q of [english, title].filter(Boolean) as string[]) {
    const s = toSlug(q as string);
    if (!s) continue;
    slugCandidates.push(s);
    if (s.startsWith("the-")) slugCandidates.push(s.slice(4));
    const stripped = s.replace(/[-–](?:season[-–]?\d+|\d+(?:nd|rd|th)[-–]season|s\d+)$/i, "");
    if (stripped !== s && stripped.length > 2) slugCandidates.push(stripped);
    const noColon = toSlug((q as string).replace(/[:：].*/g, "").trim());
    if (noColon && noColon !== s) slugCandidates.push(noColon);
  }

  for (const baseSlug of [...new Set(slugCandidates)]) {
    const epSlug = `${baseSlug}-1x${ep}`;
    try {
      const r = await fetch(`${TOON_VIP}/episode/${epSlug}/`, {
        headers: { "User-Agent": BROWSER_UA, Referer: TOON_VIP + "/" },
        signal: AbortSignal.timeout(8000), redirect: "follow",
      });
      if (r.ok) {
        const html = await r.text();
        if (html.length > 500 && html.includes("trembed")) {
          const sources = await extractToonEpisodeSources(`${TOON_VIP}/episode/${epSlug}/`);
          if (sources.length) {
            toonSrcCache.set(ck, { sources, ts: Date.now() });
            return sources;
          }
        }
      }
    } catch {}
  }

  // ── Step 2: Find series page(s) via search, then pick episode by position ─
  const seriesPageUrls = await resolveToonSeriesUrls(title, english);
  if (!seriesPageUrls.length) return [];

  for (const seriesPageUrl of seriesPageUrls) {
    try {
      const r = await fetch(seriesPageUrl, {
        headers: { "User-Agent": BROWSER_UA, Referer: TOON_VIP + "/" },
        signal: AbortSignal.timeout(10000), redirect: "follow",
      });
      if (!r.ok) continue;
      const html = await r.text();

      // Collect ordered, deduplicated episode links (toonstream.vip only)
      const epLinks: string[] = [];
      for (const m of html.matchAll(/href="(https?:\/\/toonstream\.vip\/episode\/[^"]+)"/gi)) {
        if (!epLinks.includes(m[1])) epLinks.push(m[1]);
      }
      if (!epLinks.length || ep > epLinks.length) continue;

      const epPageUrl = epLinks[ep - 1];
      const sources = await extractToonEpisodeSources(epPageUrl);
      if (sources.length) {
        toonSrcCache.set(ck, { sources, ts: Date.now() });
        return sources;
      }
    } catch {}
  }
  return [];
}


// ════════════════════════════════════════════════════════════════════
//  OKANIME.XYZ scraper  (Arabic anime — عربي مترجم)
//  Search: GET /api/search?q= → JSON [{name, slug, ...}]
//  Episode: GET /episode/{slug}-episode-{N}
//  Servers: Alpine.js @click="setServer('URL')" pattern
// ════════════════════════════════════════════════════════════════════

const OK_DOMAINS = [
  "https://ww3.okanime.xyz",
  "https://ww4.okanime.xyz",
  "https://ww1.okanime.xyz",
  "https://ww2.okanime.xyz",
  "https://okanime.xyz",
];
let OK_BASE = OK_DOMAINS[0];
const OK_HDRS: Record<string, string> = { ...BASE_HDRS, Referer: `${OK_BASE}/` };

const okSlugCache = new Map<string, { slug: string | null; ts: number }>();
const okSrcCache  = new Map<string, { sources: UnifiedSource[]; ts: number }>();

async function searchOkAnime(title: string, english: string | null): Promise<string | null> {
  const ck = (title + "|" + (english || "")).toLowerCase();
  const hit = okSlugCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.slug;

  // Build slug variants from titles (same strategy as other scrapers)
  const slugVariants: string[] = [];
  for (const q of [english, title].filter(Boolean) as string[]) {
    const s = toSlug(q as string);
    if (!s) continue;
    slugVariants.push(s);
    // Without trailing season indicator e.g. "-2nd-season" → "dandadan"
    const stripped = s.replace(/[-–](?:season[-–]?\d+|\d+(?:nd|rd|th)[-–]season|s\d+)$/i, "");
    if (stripped !== s && stripped.length > 2) slugVariants.push(stripped);
    // Without colon suffix
    const noColon = toSlug((q as string).replace(/[:：].*/g, "").trim());
    if (noColon && noColon !== s) slugVariants.push(noColon);
  }

  // Resolve the active OkAnime domain (try all variants)
  async function resolveOkBase(): Promise<string> {
    for (const domain of OK_DOMAINS) {
      try {
        const r = await fetch(`${domain}/api/search?q=naruto`, {
          headers: { ...BASE_HDRS, Referer: `${domain}/` },
          signal: AbortSignal.timeout(5000), redirect: "follow",
        });
        if (r.ok) { OK_BASE = domain; return domain; }
      } catch {}
    }
    return OK_BASE;
  }

  // Method 1: Direct slug check via /anime/{slug} page (try all domains)
  for (const slug of [...new Set(slugVariants)]) {
    for (const domain of OK_DOMAINS) {
      try {
        const r = await fetch(`${domain}/anime/${slug}`, {
          headers: { ...BASE_HDRS, Referer: `${domain}/` },
          signal: AbortSignal.timeout(6000), redirect: "follow",
        });
        if (r.ok) {
          const html = await r.text();
          if (!isCloudflareBlock(html) && html.includes("/episode/")) {
            OK_BASE = domain;
            okSlugCache.set(ck, { slug, ts: Date.now() });
            return slug;
          }
        }
      } catch {}
    }
  }

  // Method 2: JSON search API (try all domains)
  const activeBase = await resolveOkBase();
  for (const q of [english, title].filter(Boolean) as string[]) {
    try {
      const r = await fetch(
        `${activeBase}/api/search?q=${encodeURIComponent(q as string)}`,
        { headers: { ...BASE_HDRS, Referer: `${activeBase}/` }, signal: AbortSignal.timeout(8000), redirect: "follow" },
      );
      if (!r.ok) continue;
      const data = await r.json() as Array<{ name?: string; slug?: string }>;
      if (!Array.isArray(data) || !data.length) continue;

      let best: string | null = null, bestScore = 0;
      for (const item of data) {
        if (!item.slug) continue;
        const nameLabel = (item.name || "").toLowerCase();
        const slugLabel = item.slug.replace(/-/g, " ");
        const score = Math.max(
          similarity(nameLabel, title),
          english ? similarity(nameLabel, english) : 0,
          similarity(slugLabel, title),
          english ? similarity(slugLabel, english) : 0,
        );
        if (score > bestScore && score > 0.28) { bestScore = score; best = item.slug; }
      }
      if (best) { okSlugCache.set(ck, { slug: best, ts: Date.now() }); return best; }
    } catch {}
  }

  okSlugCache.set(ck, { slug: null, ts: Date.now() });
  return null;
}

async function getOkAnimeSources(
  title: string, english: string | null, ep: number,
): Promise<UnifiedSource[]> {
  const ck = `ok:${(title + "|" + (english || "")).toLowerCase()}:${ep}`;
  const hit = okSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;

  try {
    const slug = await searchOkAnime(title, english);
    if (!slug) return [];

    // Try padded and non-padded episode number variants, across active domain
    let r: Response | null = null;
    for (const epCandidate of [
      `${OK_BASE}/episode/${slug}-episode-${ep}`,
      `${OK_BASE}/episode/${slug}-episode-${String(ep).padStart(2, "0")}`,
    ]) {
      try {
        const tryR = await fetch(epCandidate, {
          headers: { ...BASE_HDRS, Referer: `${OK_BASE}/` }, signal: AbortSignal.timeout(10000), redirect: "follow",
        });
        if (tryR.ok) { r = tryR; break; }
      } catch {}
    }
    if (!r) return [];
    const html = await r.text();
    if (html.length < 500) return [];

    // Extract Alpine.js server URLs: @click="setServer('URL')"
    const serverUrls: string[] = [];
    for (const m of html.matchAll(/@click="setServer\('([^']+)'\)"/g)) {
      const url = decodeHtmlEntities(m[1].trim());
      if (url.startsWith("http") && !serverUrls.includes(url)) serverUrls.push(url);
    }
    if (!serverUrls.length) return [];

    const sources: UnifiedSource[] = serverUrls.map((url, i) => ({
      name: `أوك أنمي · سيرفر ${i + 1}`,
      url,
      quality: "HD",
      qualityRank: 11,
      site: "okanime",
    }));

    okSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  ANIME-TIME.LIVE scraper  (Arabic anime — عربي مترجم)
//  Search: GET /?s={title} → /series/{slug}/ links
//  Series page: → /anime/{arc-slug}/ sub-pages
//  Arc page: buttons onclick="...iframe_area.location.href='URL'..."
//            Button text contains: "الحلقة N" (Arabic episode number)
// ════════════════════════════════════════════════════════════════════

const ATIME_BASE = "https://anime-time.live";
const ATIME_HDRS: Record<string, string> = { ...BASE_HDRS, Referer: "https://anime-time.live/" };

const atimeSeriesCache = new Map<string, { url: string | null; ts: number }>();
const atimeSrcCache    = new Map<string, { sources: UnifiedSource[]; ts: number }>();

async function searchAnimeTime(title: string, english: string | null): Promise<string | null> {
  const ck = (title + "|" + (english || "")).toLowerCase();
  const hit = atimeSeriesCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.url;

  for (const q of [english, title].filter(Boolean) as string[]) {
    try {
      const r = await fetch(
        `${ATIME_BASE}/?s=${encodeURIComponent(q as string)}`,
        { headers: ATIME_HDRS, signal: AbortSignal.timeout(8000), redirect: "follow" },
      );
      if (!r.ok) continue;
      const html = await r.text();
      if (isCloudflareBlock(html)) continue;

      const candidates: Array<{ url: string; score: number }> = [];

      // Match /series/ parent pages
      for (const m of html.matchAll(/href="(https:\/\/anime-time\.live\/series\/[^"]+)"/g)) {
        const u = m[1];
        if (u.includes("/page/") || u.includes("/feed/") || u.includes("download")) continue;
        const slug = decodeURIComponent(u.replace(ATIME_BASE + "/series/", "").replace(/\/$/, ""));
        // Use both regular + ASCII-only similarity to handle mixed Arabic-English slugs
        // e.g. "أنمي-one-piece-مترجم-الموسم-الثالث-عشر" → asciiSimilarity extracts "one piece" first
        const score = Math.max(
          similarity(slug, title), english ? similarity(slug, english) : 0,
          asciiSimilarity(slug, title), english ? asciiSimilarity(slug, english) : 0,
        );
        candidates.push({ url: u, score });
      }

      // Also match /anime/ arc pages directly (some anime have no /series/ parent)
      for (const m of html.matchAll(/href="(https:\/\/anime-time\.live\/anime\/[^"]+)"/g)) {
        const u = m[1];
        if (u.includes("/page/") || u.includes("/feed/") || u.includes("download")) continue;
        const slug = decodeURIComponent(u.replace(ATIME_BASE + "/anime/", "").replace(/\/$/, ""));
        const score = Math.max(
          similarity(slug, title), english ? similarity(slug, english) : 0,
          asciiSimilarity(slug, title), english ? asciiSimilarity(slug, english) : 0,
        );
        candidates.push({ url: u, score });
      }

      const best = candidates.sort((a, b) => b.score - a.score)[0];
      if (best && best.score > 0.2) {
        atimeSeriesCache.set(ck, { url: best.url, ts: Date.now() });
        return best.url;
      }
    } catch {}
  }

  atimeSeriesCache.set(ck, { url: null, ts: Date.now() });
  return null;
}

/** Parse episode buttons from an anime-time arc/season page → Map<epNumber, embedUrls[]> */
function parseAtimeEpButtons(html: string): Map<number, string[]> {
  const epMap = new Map<number, string[]>();

  function addEntry(url: string, text: string) {
    if (!url.startsWith("http")) return;
    const numM = text.match(/(\d+)/);
    if (!numM) return;
    const n = parseInt(numM[1]);
    if (!n) return;
    if (!epMap.has(n)) epMap.set(n, []);
    const arr = epMap.get(n)!;
    if (!arr.includes(url)) arr.push(url);
  }

  // Pattern 1: onclick="...iframe_area.location.href='URL'..."
  const re1 = /onclick="[^"]*?iframe_area\.location\.href='([^']+)'[^"]*"[^>]*>([\s\S]*?)<\/button>/gi;
  for (const m of html.matchAll(re1)) addEntry(m[1].trim(), m[2].replace(/<[^>]+>/g, "").trim());

  // Pattern 2: data-src="URL" on button/a tags with episode text
  const re2 = /<(?:button|a)[^>]+data-src="(https?:\/\/[^"]+)"[^>]*>([\s\S]*?)<\/(?:button|a)>/gi;
  for (const m of html.matchAll(re2)) addEntry(m[1].trim(), m[2].replace(/<[^>]+>/g, "").trim());

  // Pattern 3: data-url="URL" on button/a tags
  const re3 = /<(?:button|a)[^>]+data-url="(https?:\/\/[^"]+)"[^>]*>([\s\S]*?)<\/(?:button|a)>/gi;
  for (const m of html.matchAll(re3)) addEntry(m[1].trim(), m[2].replace(/<[^>]+>/g, "").trim());

  // Pattern 4: data-embed="URL" on button/a tags
  const re4 = /<(?:button|a)[^>]+data-embed="(https?:\/\/[^"]+)"[^>]*>([\s\S]*?)<\/(?:button|a)>/gi;
  for (const m of html.matchAll(re4)) addEntry(m[1].trim(), m[2].replace(/<[^>]+>/g, "").trim());

  // Pattern 5: setServer('URL') in onclick (OkAnime-style buttons on atime)
  const re5 = /onclick="[^"]*?setServer\('(https?:\/\/[^']+)'\)[^"]*"[^>]*>([\s\S]*?)<\/(?:button|a)>/gi;
  for (const m of html.matchAll(re5)) addEntry(m[1].trim(), m[2].replace(/<[^>]+>/g, "").trim());

  return epMap;
}

async function getAnimeTimeSources(
  title: string, english: string | null, ep: number,
): Promise<UnifiedSource[]> {
  const ck = `atime:${(title + "|" + (english || "")).toLowerCase()}:${ep}`;
  const hit = atimeSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;

  try {
    const seriesUrl = await searchAnimeTime(title, english);
    if (!seriesUrl) return [];

    // If already an /anime/ arc page → use it directly; else fetch series page for arc links
    const isArcPage = seriesUrl.includes("/anime/");
    let arcUrls: string[] = [];

    if (isArcPage) {
      arcUrls = [seriesUrl];
    } else {
      const sR = await fetch(seriesUrl, {
        headers: ATIME_HDRS, signal: AbortSignal.timeout(10000), redirect: "follow",
      });
      if (!sR.ok) return [];
      const seriesHtml = await sR.text();
      if (isCloudflareBlock(seriesHtml)) return [];

      for (const m of seriesHtml.matchAll(/href="(https:\/\/anime-time\.live\/anime\/[^"]+)"/g)) {
        const u = m[1];
        if (!arcUrls.includes(u) && !u.includes("/page/") && !u.includes("download")) {
          arcUrls.push(u);
        }
      }
    }

    // Build global episode map by fetching all arc pages in parallel (up to 6)
    const globalEpMap = new Map<number, string[]>();

    await Promise.allSettled(arcUrls.slice(0, 6).map(async (arcUrl) => {
      try {
        const r = await fetch(arcUrl, {
          headers: ATIME_HDRS, signal: AbortSignal.timeout(9000), redirect: "follow",
        });
        if (!r.ok) return;
        const h = await r.text();
        if (isCloudflareBlock(h)) return;
        for (const [n, urls] of parseAtimeEpButtons(h)) {
          if (!globalEpMap.has(n)) globalEpMap.set(n, []);
          globalEpMap.get(n)!.push(...urls);
        }
      } catch {}
    }));

    const epUrls = globalEpMap.get(ep);
    if (!epUrls || !epUrls.length) return [];

    const sources: UnifiedSource[] = [...new Set(epUrls)].map((url, i) => ({
      name: `أنمي تايم · سيرفر ${i + 1}`,
      url,
      quality: "HD",
      qualityRank: 2,
      site: "animetime",
    }));

    atimeSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  RISTOANIME.CO scraper  (Arabic anime — WordPress TopAnime theme)
//  Search: POST /wp-content/themes/TopAnime/Ajaxt/Searching.php
//  Series page → extract post_id + season IDs
//  Episodes AJAX: POST /wp-content/themes/TopAnime/Ajaxt/Single/Episodes.php
//  Episode page: ul#watch li[data-watch="IFRAME_URL"]
// ════════════════════════════════════════════════════════════════════

const RISTO_BASE = "https://ristoanime.co";
const RISTO_AJAX = `${RISTO_BASE}/wp-content/themes/TopAnime/Ajaxt`;
const RISTO_HDRS: Record<string, string> = { ...BASE_HDRS, Referer: "https://ristoanime.co/" };

const ristoSeriesCache = new Map<string, { url: string | null; ts: number }>();
const ristoSrcCache    = new Map<string, { sources: UnifiedSource[]; ts: number }>();

async function searchRistoAnime(title: string, english: string | null): Promise<string | null> {
  const ck = (title + "|" + (english || "")).toLowerCase();
  const hit = ristoSeriesCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.url;

  for (const q of [english, title].filter(Boolean) as string[]) {
    try {
      const r = await fetch(`${RISTO_AJAX}/Searching.php`, {
        method: "POST",
        body: `search=${encodeURIComponent(q as string)}`,
        headers: {
          ...RISTO_HDRS,
          "Content-Type": "application/x-www-form-urlencoded",
          "X-Requested-With": "XMLHttpRequest",
        },
        signal: AbortSignal.timeout(8000),
      });
      if (!r.ok) continue;
      const html = await r.text();
      if (isCloudflareBlock(html) || html.length < 50) continue;

      const seriesUrls: Array<{ url: string; score: number }> = [];
      for (const m of html.matchAll(/href="(https:\/\/ristoanime\.co\/series\/[^"]+)"/g)) {
        const u = m[1];
        const slug = decodeURIComponent(u.replace(RISTO_BASE + "/series/", "").replace(/\/$/, "")).toLowerCase();
        // Use both regular + ASCII-only similarity to handle mixed Arabic-English slugs
        // e.g. "انمي-ون-بيس-one-piece-hg" → asciiSimilarity extracts "one piece hg" first
        const score = Math.max(
          similarity(slug, title),
          english ? similarity(slug, english) : 0,
          asciiSimilarity(slug, title),
          english ? asciiSimilarity(slug, english) : 0,
        );
        seriesUrls.push({ url: u, score });
      }

      const best = seriesUrls.sort((a, b) => b.score - a.score)[0];
      if (best && best.score > 0.2) {
        ristoSeriesCache.set(ck, { url: best.url, ts: Date.now() });
        return best.url;
      }
    } catch {}
  }

  ristoSeriesCache.set(ck, { url: null, ts: Date.now() });
  return null;
}

async function getRistoAnimeSources(
  title: string, english: string | null, ep: number,
): Promise<UnifiedSource[]> {
  const ck = `risto:${(title + "|" + (english || "")).toLowerCase()}:${ep}`;
  const hit = ristoSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;

  try {
    const seriesUrl = await searchRistoAnime(title, english);
    if (!seriesUrl) return [];

    // Fetch series page → get post_id and session cookies
    const sR = await fetch(seriesUrl, {
      headers: RISTO_HDRS, signal: AbortSignal.timeout(10000), redirect: "follow",
    });
    if (!sR.ok) return [];
    const seriesHtml = await sR.text();
    if (isCloudflareBlock(seriesHtml)) return [];

    const postIdM = seriesHtml.match(/post_id:\s*'(\d+)'/);
    if (!postIdM) return [];
    const postId = postIdM[1];

    // Collect season IDs from the series page (WordPress category/term IDs, not sequential)
    const seasonIds = [...seriesHtml.matchAll(/data-season="([^"]+)"/g)].map(m => m[1]);
    const seasons = seasonIds.length ? [...new Set(seasonIds)] : ["1"];

    let epUrl: string | null = null;

    for (const season of seasons.slice(0, 4)) {
      // AJAX works without session cookies
      const eR = await fetch(`${RISTO_AJAX}/Single/Episodes.php`, {
        method: "POST",
        body: `season=${encodeURIComponent(season)}&post_id=${postId}`,
        headers: {
          ...RISTO_HDRS,
          "Content-Type": "application/x-www-form-urlencoded",
          "X-Requested-With": "XMLHttpRequest",
          Referer: seriesUrl,
        },
        signal: AbortSignal.timeout(8000),
      });
      if (!eR.ok) continue;
      const epsHtml = await eR.text();
      if (isCloudflareBlock(epsHtml) || epsHtml.length < 50) continue;

      // Episode links are at root domain (e.g. https://ristoanime.co/انمي-dandadan-الحلقة-1-...)
      const epLinks: string[] = [];
      for (const m of epsHtml.matchAll(/href="(https?:\/\/ristoanime\.co\/[^"]+)"/g)) {
        const u = m[1];
        // Skip WP system paths, series pages, feed/tag/category
        if (/\/(series|category|tag|wp-admin|wp-content|wp-json|feed|page)\//i.test(u)) continue;
        if (u === RISTO_BASE + "/" || u.endsWith("/series/")) continue;
        if (!epLinks.includes(u)) epLinks.push(u);
      }
      if (!epLinks.length) continue;

      // Match episode by Arabic URL pattern: الحلقة-{N}- or الحلقة-{N}/
      const byArabic = epLinks.find(u => {
        const dec = decodeURIComponent(u);
        return dec.includes(`الحلقة-${ep}-`) || dec.includes(`الحلقة-${ep}/`);
      });
      if (byArabic) { epUrl = byArabic; break; }

      // Fallback: slug ends with -N/ or -0N/
      const bySlug = epLinks.find(u => {
        const slug = decodeURIComponent(u).toLowerCase();
        return slug.endsWith(`-${ep}/`) || slug.endsWith(`-${String(ep).padStart(2, "0")}/`);
      });
      if (bySlug) { epUrl = bySlug; break; }

      // No position-based fallback: wrong episodes are worse than no source
    }

    if (!epUrl) return [];

    // Fetch episode page with ?watch=1 → server list is only in this variant
    const watchEpUrl = epUrl + (epUrl.includes("?") ? "&" : "?") + "watch=1";
    const epR = await fetch(watchEpUrl, {
      headers: { ...RISTO_HDRS, Referer: seriesUrl },
      signal: AbortSignal.timeout(10000),
      redirect: "follow",
    });
    if (!epR.ok) return [];
    const epHtml = await epR.text();
    if (isCloudflareBlock(epHtml)) return [];

    const watchUrls: string[] = [];
    for (const m of epHtml.matchAll(/data-watch=["']([^"']+)["']/g)) {
      const url = decodeHtmlEntities(m[1].trim());
      if (url.startsWith("http") && !watchUrls.includes(url)) watchUrls.push(url);
    }
    if (!watchUrls.length) return [];

    const sources: UnifiedSource[] = watchUrls.map((url, i) => ({
      name: `ريستو أنمي · سيرفر ${i + 1}`,
      url,
      quality: "HD",
      qualityRank: 11,
      site: "ristoanime",
    }));

    ristoSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  W1.ANIME4UP.REST scraper  (Arabic anime — Anime4up WordPress theme)
//  Search:  GET /?s={query} → /anime/{slug}/ links
//  Series:  GET /anime/{slug}/ → 48 visible episode links + old-format slug prefix
//  Episode: GET /episode/{slug}-الحلقة-{N}/ → src= iframe video embeds
//  Old-format URL (works for ALL episodes): /episode/{romaji-slug}-الحلقة-{N}/
// ════════════════════════════════════════════════════════════════════

const A4UP_BASE = "https://w1.anime4up.rest";
const A4UP_HDRS: Record<string, string> = { ...BASE_HDRS, Referer: "https://w1.anime4up.rest/" };

const a4upSeriesCache = new Map<string, { url: string | null; ts: number }>();
const a4upSrcCache    = new Map<string, { sources: UnifiedSource[]; ts: number }>();

async function searchAnime4up(title: string, english: string | null): Promise<string | null> {
  const ck = (title + "|" + (english || "")).toLowerCase();
  const hit = a4upSeriesCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.url;

  for (const q of [english, title].filter(Boolean) as string[]) {
    let r: Response;
    try {
      r = await fetch(`${A4UP_BASE}/?s=${encodeURIComponent(q)}`, {
        headers: A4UP_HDRS, signal: AbortSignal.timeout(10000), redirect: "follow",
      });
    } catch { continue; }
    if (!r.ok) continue;
    const html = await r.text();
    if (isCloudflareBlock(html)) continue;

    const candidates: Array<{ url: string; score: number }> = [];
    for (const m of html.matchAll(/href="(https?:\/\/w1\.anime4up\.rest\/anime\/[^"]+)"/g)) {
      const u = m[1];
      if (u.includes("/page/") || u.includes("/feed/")) continue;
      const slug = decodeURIComponent(u.replace(A4UP_BASE + "/anime/", "").replace(/\/$/, "")).toLowerCase();
      const score = Math.max(
        asciiSimilarity(slug, title),
        english ? asciiSimilarity(slug, english) : 0,
        similarity(slug, title),
        english ? similarity(slug, english) : 0,
      );
      if (score > 0.25) candidates.push({ url: u, score });
    }
    if (candidates.length) {
      candidates.sort((a, b) => b.score - a.score);
      const best = candidates[0].url;
      a4upSeriesCache.set(ck, { url: best, ts: Date.now() });
      return best;
    }
  }

  a4upSeriesCache.set(ck, { url: null, ts: Date.now() });
  return null;
}

async function getAnime4upSources(
  title: string, english: string | null, ep: number,
): Promise<UnifiedSource[]> {
  const ck = `a4up:${(title + "|" + (english || "")).toLowerCase()}:${ep}`;
  const hit = a4upSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;

  try {
    const seriesUrl = await searchAnime4up(title, english);
    if (!seriesUrl) return [];

    // Fetch series page → collect visible episode links + extract romaji prefix
    const sR = await fetch(seriesUrl, {
      headers: A4UP_HDRS, signal: AbortSignal.timeout(10000), redirect: "follow",
    });
    if (!sR.ok) return [];
    const seriesHtml = await sR.text();
    if (isCloudflareBlock(seriesHtml)) return [];

    // Unique episode URLs from series page (up to 48 recent episodes)
    const visibleEps = [
      ...new Set(
        [...seriesHtml.matchAll(/href="(https?:\/\/w1\.anime4up\.rest\/episode\/[^"]+)"/g)]
          .map(m => m[1])
      ),
    ];

    // Match target episode from visible list by الحلقة-N in decoded slug
    let epUrl = visibleEps.find(u => {
      const dec = decodeURIComponent(u);
      return new RegExp(`الحلقة[\\-\\u200f]0*${ep}[\\-\\/]`).test(dec) ||
             dec.includes(`الحلقة-${ep}-`) || dec.includes(`الحلقة-${ep}/`);
    }) ?? null;

    // ── Old-format URL construction for episodes not in the visible 48 ──
    // Pattern: /episode/{romaji-slug}-الحلقة-{N}/  (works for ep 1 through 1100+)
    if (!epUrl) {
      // Extract romaji slug from old-format visible episodes (no Arabic prefix, no -مترجمة suffix)
      let romajiSlug: string | null = null;
      const oldFmtEp = visibleEps.find(u => {
        const dec = decodeURIComponent(u);
        return !dec.includes("مترجمة") && !dec.includes("انمي-") && dec.includes("الحلقة-");
      });
      if (oldFmtEp) {
        const dec = decodeURIComponent(oldFmtEp);
        const path = dec.replace(A4UP_BASE + "/episode/", "").replace(/\/$/, "");
        romajiSlug = path.replace(/الحلقة.*$/, "").replace(/-$/, "");
      }
      // Fallback: derive slug from english title
      if (!romajiSlug && english) {
        romajiSlug = english.toLowerCase()
          .replace(/[^a-z0-9\s]/g, " ").trim()
          .replace(/\s+/g, "-").replace(/-+/g, "-").replace(/^-|-$/g, "");
      }

      if (romajiSlug) {
        const candidate = `${A4UP_BASE}/episode/${encodeURIComponent(romajiSlug + "-الحلقة-" + ep)}/`;
        // Quick HEAD probe to confirm URL exists before fetching the full page
        const headStatus = await safeHead(candidate, A4UP_HDRS);
        if (headStatus === 200) epUrl = candidate;
        // Also try zero-padded (ep < 10)
        if (!epUrl && ep < 10) {
          const padded = `${A4UP_BASE}/episode/${encodeURIComponent(romajiSlug + "-الحلقة-0" + ep)}/`;
          const hs = await safeHead(padded, A4UP_HDRS);
          if (hs === 200) epUrl = padded;
        }
      }
    }

    if (!epUrl) return [];

    // Fetch episode page → extract iframe src= video embed URLs
    const epR = await fetch(epUrl, {
      headers: { ...A4UP_HDRS, Referer: seriesUrl },
      signal: AbortSignal.timeout(10000), redirect: "follow",
    });
    if (!epR.ok) return [];
    const epHtml = await epR.text();
    if (isCloudflareBlock(epHtml)) return [];

    // Collect all iframe src= URLs that look like video embeds
    const iframeUrls: string[] = [];
    const VIDEO_HOSTS_RE = /(?:mega\.nz|mega\.co\.nz|vidmoly|share4max|voe\.sx|voe\.tv|rubyvidhub|dsvplay|streamwish|filemoon|streamtape|ok\.ru)/i;
    for (const m of epHtml.matchAll(/(?:src|data-src)=["']([^"']{10,})["']/gi)) {
      const raw = m[1].trim();
      const url = raw.startsWith("http") ? raw : null;
      if (!url) continue;
      if (!VIDEO_HOSTS_RE.test(url)) continue;
      if (!iframeUrls.includes(url)) iframeUrls.push(url);
    }

    if (!iframeUrls.length) return [];

    const sources: UnifiedSource[] = iframeUrls.map((url, i) => ({
      name: `أنمي فور أب · سيرفر ${i + 1}`,
      url,
      quality: "HD",
      qualityRank: 10,
      site: "anime4up",
    }));

    a4upSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  Animeify.net scraper (ani-cli-arabic API → FileMoon HLS + MediaFire MP4 + Mega embed)
// ════════════════════════════════════════════════════════════════════
let _animeifyCreds: { base: string; token: string; ts: number } | null = null;
let _animeifyFallbackCreds: { base: string; token: string } | null = null; // last known good
const ANIMEIFY_CREDS_TTL = 60 * 60_000; // 1 hour

function invalidateAnimeifyCreds() { _animeifyCreds = null; }

async function getAnimeifyCreds(force = false): Promise<{ base: string; token: string } | null> {
  if (!force && _animeifyCreds && Date.now() - _animeifyCreds.ts < ANIMEIFY_CREDS_TTL) {
    return { base: _animeifyCreds.base, token: _animeifyCreds.token };
  }
  try {
    const r = await fetch("https://api.ani-cli-arabic.dev/credentials", {
      headers: { "X-Auth-Key": "6rK9z0XyW8vQ3J7pL2mN4sB1tH5gD0fA", "User-Agent": "AniCliAr/2.0" },
      signal: AbortSignal.timeout(8000),
    });
    if (!r.ok) {
      invalidateAnimeifyCreds();
      return _animeifyFallbackCreds; // use last known good if server down
    }
    const data = await r.json() as Record<string, string>;
    const base = String(data.ANI_CLI_AR_API_BASE || "");
    const token = String(data.ANI_CLI_AR_TOKEN || "");
    if (!base || !token) {
      invalidateAnimeifyCreds();
      return _animeifyFallbackCreds;
    }
    _animeifyCreds = { base, token, ts: Date.now() };
    _animeifyFallbackCreds = { base, token }; // persist as last known good
    return { base, token };
  } catch {
    invalidateAnimeifyCreds();
    return _animeifyFallbackCreds; // fallback on network error
  }
}

/** Fetch a URL with the animeify API token; auto-refresh on 401/403 and retry once */
async function animeifyPost(base: string, token: string, path: string, body: URLSearchParams): Promise<Response | null> {
  const doFetch = (tok: string) => fetch(base + path, {
    method: "POST",
    body: new URLSearchParams([...body.entries(), ["Token", tok]]),
    headers: { "User-Agent": "AniCliAr/2.0" },
    signal: AbortSignal.timeout(10000),
  });
  let r = await doFetch(token);
  if (r.status === 401 || r.status === 403) {
    // Token expired — force-refresh and retry once
    invalidateAnimeifyCreds();
    const fresh = await getAnimeifyCreds(true);
    if (!fresh) return null;
    r = await doFetch(fresh.token);
  }
  return r.ok ? r : null;
}

/** Extract a direct MediaFire download link from a serverId or full URL */
async function extractMediafireDirect(serverId: string): Promise<string | null> {
  try {
    const url = serverId.startsWith("http") ? serverId : `https://www.mediafire.com/file/${serverId}`;
    const r = await fetch(url, {
      headers: { "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36" },
      signal: AbortSignal.timeout(10000),
      redirect: "follow",
    });
    if (!r.ok) return null;
    const html = await r.text();
    // Try multiple patterns — MediaFire changes their HTML periodically
    const raw =
      (/(https:\/\/download\d*\.mediafire\.com\/[^"' \n<>]+)/.exec(html))?.[1] ||
      (/(https:\/\/download[^"' \n<>]*mediafire[^"' \n<>]+\.(?:mp4|mkv|avi|mov|webm)[^"' \n<>]*)/.exec(html))?.[1] ||
      (/id="downloadButton"[^>]*href="([^"]+)"/.exec(html))?.[1] ||
      (/aria-label="[Dd]ownload [Ff]ile"[^>]*href="([^"]+)"/.exec(html))?.[1] ||
      (/class="[^"]*download[^"]*"[^>]*href="(https:\/\/[^"]+)"/.exec(html))?.[1] ||
      (/(https:\/\/download\d*[^"' \n<>]+)/.exec(html))?.[1] ||
      null;
    return raw?.replace(/&amp;/g, "&") || null;
  } catch { return null; }
}

async function getAnimeifySources(title: string, english: string | null, ep: number): Promise<UnifiedSource[]> {
  try {
    const creds = await getAnimeifyCreds();
    if (!creds) return [];
    let { base, token } = creds;

    // Search with both titles; pick best match across SERIES + MOVIE
    const queries = [...new Set([english, title].filter(Boolean) as string[])];
    let best: { score: number; item: any } = { score: 0, item: null };

    for (const q of queries) {
      for (const type of ["SERIES", "MOVIE"]) {
        try {
          const body = new URLSearchParams({
            UserId: "0", Language: "English", FilterType: "SEARCH",
            FilterData: q, Type: type, From: "0",
          });
          const r = await animeifyPost(base, token, "anime/load_anime_list_v2.php", body);
          if (!r) continue;
          const data = await r.json() as any[];
          if (!Array.isArray(data)) continue;
          for (const item of data) {
            const enTitle = String(item.EN_Title || "");
            const s = Math.max(
              similarity(q, enTitle),
              similarity(title, enTitle),
              english ? similarity(english, enTitle) : 0,
            );
            if (s > best.score) best = { score: s, item: { ...item, _type: type } };
          }
        } catch {}
      }
    }

    if (!best.item || best.score < 0.35) return [];

    const animeId: string = String(best.item.AnimeId);
    const animeType: string = best.item._type || "SERIES";

    // Refresh creds in case animeifyPost rotated the token
    const latestCreds = await getAnimeifyCreds();
    if (latestCreds) { base = latestCreds.base; token = latestCreds.token; }

    // Get episode list
    const epsRes = await animeifyPost(base, token, "episodes/load_episodes.php",
      new URLSearchParams({ AnimeID: animeId }));
    if (!epsRes) return [];
    const epsData = await epsRes.json() as any[];
    if (!Array.isArray(epsData) || !epsData.length) return [];

    const epItem = epsData.find(e => Math.abs(parseFloat(String(e.Episode || 0)) - ep) < 0.5);
    if (!epItem) return [];

    // Get streaming servers for this episode
    const srvRes = await animeifyPost(base, token, "anime/load_servers.php",
      new URLSearchParams({ UserId: "0", AnimeId: animeId, Episode: String(epItem.Episode), AnimeType: animeType }));
    if (!srvRes) return [];
    const srvData = await srvRes.json() as any;
    const epData = srvData.CurrentEpisode || epItem;

    const sources: UnifiedSource[] = [];

    // ── FileMoon (FDLink) → HLS مباشر → مشغّل داخلي بدون إعلانات ──
    const fdLink = String(epData.FDLink || "").trim();
    if (fdLink) {
      const filemoonUrl = `https://filemoon.sx/e/${fdLink}`;
      try {
        const extracted = await extractVideoDeep(filemoonUrl, filemoonUrl);
        if (extracted?.url) {
          const proxyUrl = `/api/anime/hls-proxy?url=${encodeURIComponent(extracted.url)}&ref=${encodeURIComponent(filemoonUrl)}`;
          sources.push({
            name: "فايل مون · 1080p",
            url: filemoonUrl,
            quality: "FHD",
            qualityRank: 11,
            site: "animeify",
            directUrl: proxyUrl,
            directType: "hls",
          });
        }
      } catch {}
    }

    // ── MediaFire MP4 (FRFhdQ=1080p, FRLink=720p, FRLowQ=480p) → مشغّل داخلي مباشر ──
    const mfSlots = [
      { key: "FRFhdQ", label: "ميديافاير · FHD", quality: "FHD", qualityRank: 10 },
      { key: "FRLink",  label: "ميديافاير · HD",  quality: "HD",  qualityRank: 9  },
      { key: "FRLowQ", label: "ميديافاير · SD",  quality: "SD",  qualityRank: 5  },
    ] as const;

    await Promise.all(mfSlots.map(async ({ key, label, quality, qualityRank }) => {
      const serverId = String((epData as any)[key] || "").trim();
      if (!serverId) return;
      const directMp4 = await extractMediafireDirect(serverId);
      if (!directMp4) return;
      const proxyUrl = `/api/anime/video-proxy?url=${encodeURIComponent(directMp4)}&ref=https://www.mediafire.com/`;
      sources.push({
        name: label,
        url: directMp4,
        quality,
        qualityRank,
        site: "animeify",
        directUrl: proxyUrl,
        directType: "mp4",
      });
    }));

    // ── SendVid (SVLink) → MP4 مباشر عبر video-proxy بدون إعلانات ──
    const svLink = String(epData.SVLink || "").trim();
    if (svLink) {
      const sendvidUrl = `https://sendvid.com/embed/${svLink}`;
      try {
        const svHtml = await (await fetch(sendvidUrl, {
          headers: { "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36" },
          signal: AbortSignal.timeout(8000),
        })).text();
        const mp4Match = svHtml.match(/"(https:\/\/[^"]+\.mp4[^"]*)"/) ||
                         svHtml.match(/src\s*:\s*"(https:\/\/[^"]+\.mp4[^"]*)"/);
        if (mp4Match) {
          const directMp4 = mp4Match[1];
          const proxyUrl = `/api/anime/video-proxy?url=${encodeURIComponent(directMp4)}&ref=${encodeURIComponent(sendvidUrl)}`;
          sources.push({
            name: "سيندفيد · HD",
            url: sendvidUrl,
            quality: "HD",
            qualityRank: 9,
            site: "animeify",
            directUrl: proxyUrl,
            directType: "mp4",
          });
        }
      } catch {}
    }

    // ── Mega.nz embed (MALink) — يدعم عدة صيغ ──
    // الصيغ الممكنة: "fileId!key" | "fileId#key" | "https://mega.nz/embed/fileId#key"
    //               | "https://mega.nz/file/fileId#key" | "fileId" (بدون مفتاح)
    const maLinkRaw = String(epData.MALink || "").trim();
    if (maLinkRaw) {
      let embedUrl: string | null = null;

      if (maLinkRaw.startsWith("https://mega.nz/embed/") || maLinkRaw.startsWith("https://mega.co.nz/embed/")) {
        // صيغة كاملة جاهزة
        embedUrl = maLinkRaw;
      } else if (maLinkRaw.startsWith("https://mega.nz/") || maLinkRaw.startsWith("https://mega.co.nz/")) {
        // رابط عادي → حوّله لـ embed
        const u = new URL(maLinkRaw);
        const pathParts = u.pathname.split("/").filter(Boolean); // ["file","fileId"] أو ["embed","fileId"]
        const fileId = pathParts[pathParts.length - 1];
        const key    = u.hash.replace(/^#/, "");
        if (fileId) embedUrl = key ? `https://mega.nz/embed/${fileId}#${key}` : `https://mega.nz/embed/${fileId}`;
      } else if (maLinkRaw.includes("!")) {
        // صيغة "fileId!key"
        const bang   = maLinkRaw.indexOf("!");
        const fileId = maLinkRaw.slice(0, bang);
        const key    = maLinkRaw.slice(bang + 1);
        if (fileId) embedUrl = key ? `https://mega.nz/embed/${fileId}#${key}` : `https://mega.nz/embed/${fileId}`;
      } else if (maLinkRaw.includes("#")) {
        // صيغة "fileId#key"
        const hash   = maLinkRaw.indexOf("#");
        const fileId = maLinkRaw.slice(0, hash);
        const key    = maLinkRaw.slice(hash + 1);
        if (fileId) embedUrl = key ? `https://mega.nz/embed/${fileId}#${key}` : `https://mega.nz/embed/${fileId}`;
      } else if (maLinkRaw.length > 4) {
        // مجرد fileId بدون مفتاح
        embedUrl = `https://mega.nz/embed/${maLinkRaw}`;
      }

      if (embedUrl) {
        // تحقق سريع: Mega API ترجع [-9] إذا الملف محذوف
        let megaOk = true;
        try {
          const u2      = new URL(embedUrl);
          const pathSeg = u2.pathname.split("/").filter(Boolean);
          const fileId  = pathSeg[pathSeg.length - 1];
          const megaCheck = await fetch("https://g.api.mega.co.nz/cs?id=0", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify([{ a: "g", p: fileId }]),
            signal: AbortSignal.timeout(5000),
          });
          const megaData = await megaCheck.json();
          megaOk = !(Array.isArray(megaData) && megaData[0] === -9);
        } catch { megaOk = true; }

        if (megaOk) {
          sources.push({
            name: "ميغا · embed",
            url: embedUrl,
            quality: "HD",
            qualityRank: 8,
            site: "animeify",
            directUrl: embedUrl,
            isEmbed: true,
          });
        }
      }
    }

    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  WITANIME.LIFE scraper  (CF-protected Arabic WordPress anime site)
//  Uses Playwright-cached CF cookies → regular fetch for all pages
//  Search: WP AJAX action=data_fetch OR /?s=
//  Series page: /anime/{slug}/ → episode links
//  Episode page: server buttons with AJAX or data-* attrs → embed → extract
// ════════════════════════════════════════════════════════════════════
const WITANIME_BASE  = "https://witanime.life";
const WITANIME_HDRS: Record<string, string> = { ...BASE_HDRS, Referer: WITANIME_BASE + "/" };

const witaSeriesCache = new Map<string, { url: string | null; ts: number }>();
const witaSrcCache    = new Map<string, { sources: UnifiedSource[]; ts: number }>();

async function searchWitanime(query: string): Promise<string | null> {
  // Try WP AJAX search first (faster)
  try {
    const hdrs: Record<string, string> = {
      ...WITANIME_HDRS,
      "Content-Type": "application/x-www-form-urlencoded",
      "X-Requested-With": "XMLHttpRequest",
    };
    const r = await fetch(`${WITANIME_BASE}/wp-admin/admin-ajax.php`, {
      method: "POST",
      headers: hdrs,
      body: new URLSearchParams({ action: "data_fetch", keyword: query }).toString(),
      signal: AbortSignal.timeout(10000),
    });
    if (r.ok) {
      const html = await r.text();
      if (!isCloudflareBlock(html) && html.includes("/anime/")) {
        const best = findBestLink(html, query, /href="(https?:\/\/witanime\.life\/anime\/([^/"]+)\/?)"[^>]*>[\s\S]{0,300}?<h\d[^>]*>([^<]{1,80})<\/h\d>/gi, 1, 3);
        if (best) return best;
        // Simple href parse
        const m = html.match(/href="(https?:\/\/witanime\.life\/anime\/[^/"]+\/?)"/)
        if (m) return m[1];
      }
    }
  } catch {}

  // Fallback: GET search page via CF bypass
  const html = await cfGet(`${WITANIME_BASE}/?s=${encodeURIComponent(query)}`);
  if (!html) return null;
  const re = /href="(https?:\/\/witanime\.life\/anime\/([^/"]+)\/?)"/gi;
  const candidates: Array<{ url: string; score: number }> = [];
  for (const m of html.matchAll(re)) {
    const slug = decodeURIComponent(m[2]).replace(/-/g, " ");
    const score = Math.max(similarity(slug, query), asciiSimilarity(m[2], query));
    candidates.push({ url: m[1], score });
  }
  candidates.sort((a, b) => b.score - a.score);
  return candidates[0]?.score > 0.1 ? candidates[0].url : null;
}

/** Generic helper: find best-matching href from html */
function findBestLink(
  html: string, query: string,
  re: RegExp, hrefGroup: number, labelGroup: number,
): string | null {
  let best: { url: string; score: number } | null = null;
  for (const m of html.matchAll(re)) {
    const label = m[labelGroup]?.replace(/<[^>]+>/g, "").trim() || "";
    const score = Math.max(similarity(label, query), asciiSimilarity(label, query));
    if (!best || score > best.score) best = { url: m[hrefGroup], score };
  }
  return best && best.score > 0.1 ? best.url : null;
}

/** Extract episode URL from a witanime series page */
async function findWitaEpisodeUrl(seriesUrl: string, ep: number): Promise<string | null> {
  const html = await cfGet(seriesUrl);
  if (!html) return null;
  // Episode links: /ep/{slug}-N/ or /episode/{slug}-episode-N/ or /watch/{slug}/N/
  const patterns = [
    /href="(https?:\/\/witanime\.life\/ep\/([^/"]+)\/?)"[^>]*>([\s\S]{0,100}?الحلقة[\s\S]{0,20}?(\d+)[\s\S]{0,10}?)<\/a>/gi,
    /href="(https?:\/\/witanime\.life\/(?:ep|episode|watch)\/[^"]+\/?)"[^>]*>/gi,
  ];
  // First try structured match with episode number
  for (const m of html.matchAll(patterns[0])) {
    if (parseInt(m[4] || "0") === ep) return m[1];
  }
  // Fallback: any ep link that contains the episode number in the slug
  for (const m of html.matchAll(patterns[1])) {
    const slug = decodeURIComponent(m[1]);
    if (slug.match(new RegExp(`[/-]0*${ep}[/-]?$`)) || slug.endsWith(`-${ep}/`) || slug.endsWith(`/${ep}`)) {
      return m[1];
    }
  }
  return null;
}

/** Fetch server embed URLs from a witanime episode page (various WP theme patterns) */
async function fetchWitaServerUrls(epUrl: string): Promise<string[]> {
  const html = await cfGet(epUrl);
  if (!html) return [];
  const urls: string[] = [];
  const seen = new Set<string>();

  const addUrl = (u: string) => {
    if (!u || !u.startsWith("http") || seen.has(u)) return;
    seen.add(u); urls.push(u);
  };

  // Pattern A: data-src="URL" on server buttons
  for (const m of html.matchAll(/data-src="(https?:\/\/[^"]+)"/gi)) addUrl(m[1]);
  // Pattern B: data-url="URL" or data-embed="URL"
  for (const m of html.matchAll(/data-(?:url|embed)="(https?:\/\/[^"]+)"/gi)) addUrl(m[1]);
  // Pattern C: iframe src directly
  for (const m of html.matchAll(/<iframe[^>]+src="(https?:\/\/[^"]+)"/gi)) addUrl(m[1]);
  // Pattern D: onclick="...window.location='URL'..." or similar
  for (const m of html.matchAll(/onclick="[^"]*(?:location\.href|src)\s*=\s*'(https?:\/\/[^']+)'/gi)) addUrl(m[1]);
  // Pattern E: WP AJAX server buttons (post_id + nonce) — decode and POST
  if (!urls.length) {
    const nonce = html.match(/["']nonce["']\s*:\s*["']([a-f0-9]{10,})["']/)?.[1]
      || html.match(/nonce['"]\s*:\s*['"]([a-f0-9]+)['"]/)?.[1] || "";
    const postId = html.match(/["']post["']\s*:\s*["']?(\d+)["']?/)?.[1]
      || html.match(/post_id\s*=\s*(\d+)/)?.[1] || "";
    if (nonce && postId) {
      try {
        const r = await fetch(`${WITANIME_BASE}/wp-admin/admin-ajax.php`, {
          method: "POST",
          headers: { ...WITANIME_HDRS, "Content-Type": "application/x-www-form-urlencoded" },
          body: new URLSearchParams({ action: "anime_get_servers", post_id: postId, nonce }).toString(),
          signal: AbortSignal.timeout(10000),
        });
        if (r.ok) {
          const data = await r.text();
          for (const m of data.matchAll(/(https?:\/\/[^"'<>\s]+)/g)) addUrl(m[1]);
        }
      } catch {}
    }
  }
  return urls;
}

async function getWitanimeSources(
  title: string, english: string | null, ep: number,
): Promise<UnifiedSource[]> {
  const ck = `wita:${(title + "|" + (english || "")).toLowerCase()}:${ep}`;
  const hit = witaSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;

  try {
    // Try both title and english title for search
    let seriesUrl: string | null = null;
    const sCacheKey = (title + "|" + (english || "")).toLowerCase();
    const sHit = witaSeriesCache.get(sCacheKey);
    if (sHit && Date.now() - sHit.ts < SRC_TTL) {
      seriesUrl = sHit.url;
    } else {
      for (const q of [...new Set([english, title].filter(Boolean) as string[])]) {
        seriesUrl = await searchWitanime(q);
        if (seriesUrl) break;
      }
      witaSeriesCache.set(sCacheKey, { url: seriesUrl, ts: Date.now() });
    }
    if (!seriesUrl) return [];

    const epUrl = await findWitaEpisodeUrl(seriesUrl, ep);
    if (!epUrl) return [];

    const serverUrls = await fetchWitaServerUrls(epUrl);
    if (!serverUrls.length) return [];

    const sources: UnifiedSource[] = serverUrls.map((url, i) => ({
      name: `ويتأنمي · سيرفر ${i + 1}`,
      url,
      quality: "HD",
      qualityRank: 9,
      site: "witanime",
    }));

    witaSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  ANIME3RB.COM scraper  (CF-protected Arabic WordPress anime site)
//  Same Playwright cookie strategy as witanime.life
//  Search: /?s={query} or AJAX
//  Episode URL patterns vary by theme
// ════════════════════════════════════════════════════════════════════
const A3RB_BASE  = "https://anime3rb.com";
const A3RB_HDRS: Record<string, string> = { ...BASE_HDRS, Referer: A3RB_BASE + "/" };

const a3rbSeriesCache = new Map<string, { url: string | null; ts: number }>();
const a3rbSrcCache    = new Map<string, { sources: UnifiedSource[]; ts: number }>();

async function searchAnime3rb(query: string): Promise<string | null> {
  const html = await cfGet(`${A3RB_BASE}/?s=${encodeURIComponent(query)}`);
  if (!html) return null;

  const candidates: Array<{ url: string; score: number }> = [];
  // Pattern: series/anime pages with slug in URL
  for (const re of [
    /href="(https?:\/\/anime3rb\.com\/(?:anime|series)\/([^/"]+)\/?)"/gi,
    /href="(https?:\/\/anime3rb\.com\/(?:manga|watch|show)\/([^/"]+)\/?)"/gi,
  ]) {
    for (const m of html.matchAll(re)) {
      if (m[2].includes("/page/") || m[2].includes("/feed/")) continue;
      const slug = decodeURIComponent(m[2]).replace(/-/g, " ");
      const score = Math.max(similarity(slug, query), asciiSimilarity(m[2], query));
      candidates.push({ url: m[1], score });
    }
  }
  if (!candidates.length) {
    // Broad match: any link with title-like text near it
    for (const m of html.matchAll(/href="(https?:\/\/anime3rb\.com\/[^"]+)"[^>]*>([^<]{3,60})<\/a>/gi)) {
      const label = m[2].trim();
      const score = Math.max(similarity(label, query), asciiSimilarity(label, query));
      if (score > 0.25) candidates.push({ url: m[1], score });
    }
  }
  candidates.sort((a, b) => b.score - a.score);
  return candidates[0]?.score > 0.1 ? candidates[0].url : null;
}

async function getAnime3rbSources(
  title: string, english: string | null, ep: number,
): Promise<UnifiedSource[]> {
  const ck = `a3rb:${(title + "|" + (english || "")).toLowerCase()}:${ep}`;
  const hit = a3rbSrcCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.sources;

  try {
    let seriesUrl: string | null = null;
    const sCacheKey = (title + "|" + (english || "")).toLowerCase();
    const sHit = a3rbSeriesCache.get(sCacheKey);
    if (sHit && Date.now() - sHit.ts < SRC_TTL) {
      seriesUrl = sHit.url;
    } else {
      for (const q of [...new Set([english, title].filter(Boolean) as string[])]) {
        seriesUrl = await searchAnime3rb(q);
        if (seriesUrl) break;
      }
      a3rbSeriesCache.set(sCacheKey, { url: seriesUrl, ts: Date.now() });
    }
    if (!seriesUrl) return [];

    // Fetch series page → find episode link
    const seriesHtml = await cfGet(seriesUrl);
    if (!seriesHtml) return [];

    // Find episode link by number
    let epUrl: string | null = null;
    const epPatterns = [
      /href="(https?:\/\/anime3rb\.com\/(?:episode|ep|watch)\/([^/"]+)\/?)"/gi,
      /href="(https?:\/\/anime3rb\.com\/[^"]+(?:episode|ep|الحلقة)[^"]+)"/gi,
    ];
    for (const re of epPatterns) {
      for (const m of seriesHtml.matchAll(re)) {
        const slug = decodeURIComponent(m[1]);
        if (slug.match(new RegExp(`[-/]0*${ep}[-/]?$`)) || slug.endsWith(`-${ep}/`) || slug.includes(`الحلقة-${ep}`)) {
          epUrl = m[1]; break;
        }
      }
      if (epUrl) break;
    }
    if (!epUrl) return [];

    // Fetch episode page via CF bypass
    const epHtml = await cfGet(epUrl);
    if (!epHtml) return [];

    const urls: string[] = [];
    const seen = new Set<string>();
    const addUrl = (u: string) => { if (u?.startsWith("http") && !seen.has(u)) { seen.add(u); urls.push(u); } };

    for (const m of epHtml.matchAll(/data-(?:src|url|embed)="(https?:\/\/[^"]+)"/gi)) addUrl(m[1]);
    for (const m of epHtml.matchAll(/<iframe[^>]+src="(https?:\/\/[^"]+)"/gi)) addUrl(m[1]);
    for (const m of epHtml.matchAll(/"(?:file|src|url)"\s*:\s*"(https?:\/\/[^"]+)"/gi)) addUrl(m[1]);

    if (!urls.length) return [];

    const sources: UnifiedSource[] = urls.map((url, i) => ({
      name: `أنمي 3رب · سيرفر ${i + 1}`,
      url,
      quality: "HD",
      qualityRank: 9,
      site: "anime3rb",
    }));

    a3rbSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  KAWAII-ANIME.COM scraper  (Next.js Arabic anime — no CF)
//  API: GET /api/watch?anilistId={id}&ep={ep}
//  Returns sources from video.kawaii-anime.com CDN (CORS *, Range: bytes)
//  AniList ID used directly — no slug lookup needed
// ════════════════════════════════════════════════════════════════════
const KAWAII_BASE = "https://www.kawaii-anime.com";

async function getKawaiiAnimeSources(
  _title: string, _english: string | null, ep: number, anilistId?: number,
): Promise<UnifiedSource[]> {
  if (!anilistId) return [];
  try {
    const apiUrl = `${KAWAII_BASE}/api/watch?anilistId=${anilistId}&ep=${ep}`;
    const r = await fetch(apiUrl, {
      headers: {
        ...BASE_HDRS,
        Accept: "application/json",
        Referer: KAWAII_BASE + "/",
      },
      signal: AbortSignal.timeout(10000),
    });
    if (!r.ok) return [];
    const data = await r.json() as {
      sources?: Array<{ url: string; quality?: string; isM3U8?: boolean; type?: string }>;
    };
    if (!data.sources?.length) return [];

    return data.sources.map((src) => {
      const isHls = src.isM3U8 === true || src.type === "hls";
      // Direct MP4: CORS *, no auth, range-supported — no proxy needed
      const directUrl = isHls
        ? `/api/anime/hls-proxy?url=${encodeURIComponent(src.url)}&ref=${encodeURIComponent(KAWAII_BASE + "/")}`
        : src.url;
      return {
        name: `كواي أنمي · ${src.quality || "1080p"}`,
        url: src.url,
        quality: src.quality || "1080p",
        qualityRank: 14,
        site: "kawaii",
        directUrl,
        directType: isHls ? "hls" : "mp4",
      } as UnifiedSource;
    });
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  sources-stream  SSE endpoint — runs all 4 scrapers in parallel
//  Streams sources as found (keeps proxy alive), sends [DONE] at end
//  Frontend waits for [DONE] before rendering all sources at once
// ════════════════════════════════════════════════════════════════════
router.get("/anime/sources-stream", async (req, res) => {
  const title     = ((req.query.title   as string) || "").trim();
  const english   = ((req.query.english as string) || "").trim() || null;
  const ep        = parseInt((req.query.ep    as string) || "1");
  const anilistId = parseInt((req.query.anime as string) || "0") || undefined;

  res.setHeader("Content-Type", "text/event-stream");
  res.setHeader("Cache-Control", "no-cache");
  res.setHeader("Connection", "keep-alive");
  res.setHeader("X-Accel-Buffering", "no");
  res.flushHeaders?.();

  // globalSeen: cross-scraper dedup used ONLY in sendSrc (not shared with extractAndCollect)
  const globalSeen = new Set<string>();
  let closed = false;
  req.on("close", () => { closed = true; });

  // Keepalive: send SSE comment every 5 s to prevent proxy timeout
  const keepalive = setInterval(() => {
    if (!closed) res.write(": keepalive\n\n");
  }, 5000);

  function sendSrc(s: UnifiedSource) {
    if (closed) return;
    if (!s.directUrl && !s.isEmbed) return;
    // iframe policy: only mega.nz and vidmoly allowed as sandboxed embed
    if (s.isEmbed) {
      const eu = (s.directUrl || s.url).toLowerCase();
      if (!eu.includes("mega.nz") && !eu.includes("mega.co.nz") && !VIDMOLY_HOSTS.some(h => eu.includes(h))) return;
    }
    const checkUrl = s.directUrl || s.url;
    const isOwnProxy = checkUrl.startsWith("/api/");
    if (!s.isEmbed && !isOwnProxy && DEAD_FILE_HOSTS.some(h => checkUrl.toLowerCase().includes(h))) return;
    const key = checkUrl.includes("workers.dev")
      ? "cdn:" + checkUrl.replace(/^https?:\/\/[^/]+/, "")
      : checkUrl;
    if (globalSeen.has(key)) return;
    globalSeen.add(key);
    res.write(`data: ${JSON.stringify(s)}\n\n`);
  }

  try {
    const SCRAPER_MS = 14000;
    const EXTRACT_MS = 12000;
    const race = <T>(p: Promise<T>, ms: number, fallback: T) =>
      Promise.race([p, new Promise<T>(r => setTimeout(() => r(fallback), ms))]);

    // ── مساعد: كاشط بـ cache + extractAndCollect ──
    async function scrapeCached(
      site: string,
      scrape: () => Promise<UnifiedSource[]>,
      useExtract = true,
    ) {
      if (!title || closed) return;
      const cKey = makeSourceCacheKey(site, title, ep);
      const hit  = await getFromSourceCache(cKey);

      if (hit) {
        // ✅ تقديم من الـ Cache فوراً (< 5ms)
        hit.sources.forEach(s => sendSrc(s));

        // تجديد خلفي إذا اقترب الانتهاء
        if (shouldRefreshCache(hit.expiresAt)) {
          setImmediate(async () => {
            try {
              const srcs = await race(scrape(), SCRAPER_MS, []);
              if (!srcs.length) return;
              if (useExtract) {
                const buf: UnifiedSource[] = [];
                await extractAndCollect(srcs, buf, new Set<string>(), EXTRACT_MS);
                if (buf.length) await setSourceCache(cKey, site, buf);
              } else {
                await setSourceCache(cKey, site, srcs);
              }
            } catch {}
          });
        }
        return; // لا حاجة للكشط
      }

      // ❌ لا يوجد cache → اكشط
      const srcs = await race(scrape(), SCRAPER_MS, []);
      if (!srcs.length) return;

      if (useExtract) {
        const buf: UnifiedSource[] = [];
        await extractAndCollect(srcs, buf, new Set<string>(), EXTRACT_MS);
        if (!closed) buf.forEach(s => sendSrc(s));
        if (buf.length) await setSourceCache(cKey, site, buf);
      } else {
        if (!closed) srcs.forEach(s => sendSrc(s));
        await setSourceCache(cKey, site, srcs);
      }
    }

    // جميع الكاشطات تعمل بالتوازي
    await Promise.allSettled([
      scrapeCached("animephoenix", () => getAnimePhoenixSources(title, english, ep)),
      scrapeCached("shahiid",      () => getShahiidSources(title, english, ep)),
      scrapeCached("animelek",     () => getAnimelekSources(title, english, ep)),
      scrapeCached("animedar",     () => getAnimadarSources(title, english, ep)),
      scrapeCached("mitanime",     () => getMitanimeSources(title, english, ep),  false),
      scrapeCached("toonstream",   () => getToonStreamSources(title, english, ep), false),
      scrapeCached("okanime",      () => getOkAnimeSources(title, english, ep)),
      scrapeCached("animetime",    () => getAnimeTimeSources(title, english, ep)),
      scrapeCached("ristoanime",   () => getRistoAnimeSources(title, english, ep)),
      scrapeCached("animeify",     () => getAnimeifySources(title, english, ep),  false),
      scrapeCached("anime4up",     () => getAnime4upSources(title, english, ep)),
      scrapeCached("witanime",     () => getWitanimeSources(title, english, ep)),
      scrapeCached("anime3rb",     () => getAnime3rbSources(title, english, ep)),
      scrapeCached("kawaii",       () => getKawaiiAnimeSources(title, english, ep, anilistId), false),
    ]);

  } catch (e: any) {
    console.error("sources-stream error:", e?.message ?? e);
  }

  clearInterval(keepalive);
  if (!closed) { res.write("data: [DONE]\n\n"); res.end(); }
});


// ════════════════════════════════════════════════════════════════════
//  fetch-source  GET /api/anime/fetch-source?site=&title=&english=&ep=
//  Runs ONE scraper on-demand and returns its sources as JSON.
//  Used by the two-phase picker: all scrapers shown immediately,
//  video URL fetched only when user taps a specific source row.
// ════════════════════════════════════════════════════════════════════
router.get("/anime/fetch-source", async (req, res) => {
  const site      = ((req.query.site    as string) || "").trim().toLowerCase();
  const title     = ((req.query.title   as string) || "").trim();
  const english   = ((req.query.english as string) || "").trim() || null;
  const ep        = parseInt((req.query.ep    as string) || "1");
  const anilistId = parseInt((req.query.anime as string) || "0") || undefined;

  if (!site || !title) {
    res.status(400).json({ error: "site and title required", sources: [] });
    return;
  }

  const SCRAPER_MS = 14000;
  const EXTRACT_MS = 12000;
  const race = <T>(p: Promise<T>, ms: number, fallback: T) =>
    Promise.race([p, new Promise<T>(r => setTimeout(() => r(fallback), ms))]);

  const seen    = new Set<string>();
  const sources: UnifiedSource[] = [];

  function collectSrc(s: UnifiedSource) {
    if (!s.directUrl && !s.isEmbed) return;
    // iframe policy: only mega.nz and vidmoly allowed as sandboxed embed
    if (s.isEmbed) {
      const eu = (s.directUrl || s.url).toLowerCase();
      if (!eu.includes("mega.nz") && !eu.includes("mega.co.nz") && !VIDMOLY_HOSTS.some(h => eu.includes(h))) return;
    }
    const checkUrl = s.directUrl || s.url;
    const isOwnProxy = checkUrl.startsWith("/api/");
    if (!s.isEmbed && !isOwnProxy && DEAD_FILE_HOSTS.some(h => checkUrl.toLowerCase().includes(h))) return;
    const key = checkUrl.includes("workers.dev")
      ? "cdn:" + checkUrl.replace(/^https?:\/\/[^/]+/, "")
      : checkUrl;
    if (seen.has(key)) return;
    seen.add(key);
    sources.push(s);
  }

  async function runExtract(rawSrcs: UnifiedSource[]) {
    if (!rawSrcs.length) return;
    const buf: UnifiedSource[] = [];
    await extractAndCollect(rawSrcs, buf, new Set<string>(), EXTRACT_MS);
    buf.forEach(collectSrc);
  }

  try {
    switch (site) {
      case "animephoenix": await runExtract(await race(getAnimePhoenixSources(title, english, ep), SCRAPER_MS, [])); break;
      case "shahiid":      await runExtract(await race(getShahiidSources(title, english, ep),      SCRAPER_MS, [])); break;
      case "animelek":     await runExtract(await race(getAnimelekSources(title, english, ep),     SCRAPER_MS, [])); break;
      case "animedar":     await runExtract(await race(getAnimadarSources(title, english, ep),     SCRAPER_MS, [])); break;
      case "mitanime":    (await race(getMitanimeSources(title, english, ep),   SCRAPER_MS, [])).forEach(collectSrc); break;
      case "toonstream":  (await race(getToonStreamSources(title, english, ep), SCRAPER_MS, [])).forEach(collectSrc); break;
      case "okanime":      await runExtract(await race(getOkAnimeSources(title, english, ep),      SCRAPER_MS, [])); break;
      case "animetime":    await runExtract(await race(getAnimeTimeSources(title, english, ep),    SCRAPER_MS, [])); break;
      case "ristoanime":   await runExtract(await race(getRistoAnimeSources(title, english, ep),   SCRAPER_MS, [])); break;
      case "animeify":    (await race(getAnimeifySources(title, english, ep),   SCRAPER_MS, [])).forEach(collectSrc); break;
      case "anime4up":     await runExtract(await race(getAnime4upSources(title, english, ep),   SCRAPER_MS, [])); break;
      case "witanime":     await runExtract(await race(getWitanimeSources(title, english, ep),   SCRAPER_MS, [])); break;
      case "anime3rb":     await runExtract(await race(getAnime3rbSources(title, english, ep),   SCRAPER_MS, [])); break;
      case "kawaii":      (await race(getKawaiiAnimeSources(title, english, ep, anilistId), SCRAPER_MS, [])).forEach(collectSrc); break;
      default: break;
    }
    res.json({ sources });
  } catch (e: any) {
    res.status(500).json({ error: e?.message ?? String(e), sources: [] });
  }
});


// ════════════════════════════════════════════════════════════════════
//  Probe  GET /api/anime/probe?url=
// ════════════════════════════════════════════════════════════════════
router.get("/anime/probe", async (req, res) => {
  const rawUrl = ((req.query.url as string) || "").trim();
  if (!rawUrl) { res.status(400).json({ ok: false }); return; }
  let url: string;
  try { url = decodeURIComponent(rawUrl); } catch { url = rawUrl; }
  try {
    const r = await fetch(url, {
      method: "HEAD",
      headers: { "User-Agent": BROWSER_UA, Accept: "*/*" },
      signal: AbortSignal.timeout(8000),
      redirect: "follow",
    });
    res.json({ ok: r.ok || r.status === 206, status: r.status, contentType: r.headers.get("content-type") });
  } catch (e: any) {
    res.json({ ok: false, error: e?.message });
  }
});


// ════════════════════════════════════════════════════════════════════
//  Extract Video  GET /api/anime/extract-video?url=
// ════════════════════════════════════════════════════════════════════
router.get("/anime/extract-video", async (req, res) => {
  const rawUrl = ((req.query.url as string) || "").trim();
  if (!rawUrl) { res.status(400).json({ error: "url required" }); return; }
  let url: string;
  try { url = decodeURIComponent(rawUrl); } catch { url = rawUrl; }
  try {
    const result = await extractVideoDeep(url, url);
    if (result) {
      res.json({ directUrl: result.url, type: result.type });
    } else {
      res.status(404).json({ error: "no video found" });
    }
  } catch (e: any) {
    res.status(500).json({ error: e?.message ?? String(e) });
  }
});


// ════════════════════════════════════════════════════════════════════
//  Subtitles  GET /api/anime/subtitles?title=&ep=&season=
//  Returns { lang: string|null, content: string|null }
//  Uses SUBDL_API_KEY env var (free key from subdl.com)
//  Falls back gracefully to null when no key or no subtitles found
// ════════════════════════════════════════════════════════════════════
const subCache = new Map<string, { lang: string | null; content: string | null; ts: number }>();
const SUB_TTL  = 24 * 3_600_000;

router.get("/anime/subtitles", async (req, res) => {
  const title  = ((req.query.title  as string) || "").trim();
  const ep     = parseInt((req.query.ep     as string) || "1");
  const season = parseInt((req.query.season as string) || "1");
  if (!title) { res.json({ lang: null, content: null }); return; }

  const ck = `sub:${title.toLowerCase()}:${season}:${ep}`;
  const cached = subCache.get(ck);
  if (cached && Date.now() - cached.ts < SUB_TTL) {
    res.json({ lang: cached.lang, content: cached.content }); return;
  }

  const apiKey = (process.env.SUBDL_API_KEY || "").trim();
  if (apiKey) {
    try {
      const searchUrl = `https://api.subdl.com/api/v1/subtitles?api_key=${apiKey}&film_name=${encodeURIComponent(title)}&season_number=${season}&episode_number=${ep}&languages=AR&subs_per_page=5`;
      const r = await fetch(searchUrl, {
        headers: { "User-Agent": BROWSER_UA },
        signal: AbortSignal.timeout(10000),
      });
      if (r.ok) {
        const data = await r.json() as any;
        const subs: any[] = (data.subtitles || []).filter((s: any) => s.url);
        if (subs.length) {
          const dlPath = subs[0].url as string;
          const dlUrl = dlPath.startsWith("http") ? dlPath : `https://dl.subdl.com${dlPath}`;
          const sr = await fetch(dlUrl, {
            headers: { "User-Agent": BROWSER_UA },
            signal: AbortSignal.timeout(15000),
          });
          if (sr.ok) {
            const ct = sr.headers.get("content-type") || "";
            if (!ct.includes("zip") && !dlUrl.endsWith(".zip")) {
              const content = await sr.text();
              if (content.includes("-->")) {
                subCache.set(ck, { lang: "ara", content, ts: Date.now() });
                res.json({ lang: "ara", content }); return;
              }
            }
          }
        }
      }
    } catch {}
  }

  subCache.set(ck, { lang: null, content: null, ts: Date.now() });
  res.json({ lang: null, content: null });
});


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
  window.open = function(){ return { focus:function(){}, closed:false, document:{write:function(){}}, location:{} }; };
  window.alert = function(){};
  window.confirm = function(){ return false; };
  window.prompt = function(){ return null; };
  try {
    Object.defineProperty(window, 'top',    { get: function(){ return window.self; }, configurable: true });
    Object.defineProperty(window, 'parent', { get: function(){ return window.self; }, configurable: true });
  } catch(e){}
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
  function closePopups(){
    var adSels = [
      '[id*="ad_"]','[id*="_ad"]','[id*="banner"]','[class*="ad-banner"]',
      '[class*="popup"]','[class*="popunder"]','[class*="clickunder"]',
      '[class*="overlay"]:not([id*="player"]):not([class*="player"])',
      '[id*="overlay"]:not([id*="player"])',
      '.adsbygoogle','[id*="interstitial"]','[class*="vpn"]',
      '[class*="subscribe"]','[class*="age"]','[id*="age"]',
      '[class*="gdpr"]','[class*="cookie"]',
    ];
    adSels.forEach(function(sel){
      try {
        document.querySelectorAll(sel).forEach(function(el){
          var txt = el.textContent || '';
          if(txt.indexOf('18') !== -1 || txt.indexOf('vpn') !== -1 ||
             txt.indexOf('VPN') !== -1 || txt.indexOf('ad') !== -1 ||
             el.getAttribute('class')?.includes('ad') ||
             (el.style.zIndex && parseInt(el.style.zIndex) > 999 && el.tagName === 'DIV')){
            el.style.setProperty('display','none','important');
          }
        });
      } catch(e){}
    });
  }
  if(document.readyState === 'loading'){
    document.addEventListener('DOMContentLoaded', closePopups);
  } else { closePopups(); }
  setTimeout(closePopups, 300); setTimeout(closePopups, 800);
  setTimeout(closePopups, 2000); setInterval(closePopups, 3000);
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
    if ((trimmed.startsWith("#EXT-X-KEY") || trimmed.startsWith("#EXT-X-MEDIA") || trimmed.startsWith("#EXT-X-I-FRAME-STREAM-INF")) && trimmed.includes('URI="')) {
      return trimmed.replace(/URI="([^"]+)"/g, (_, uri) => `URI="${toProxy(uri)}"`);
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

  let baseForSegments = url;
  if (url.includes("animanga.fun") && url.includes("url=")) {
    try {
      const pu = new URL(url);
      const inner = pu.searchParams.get("url");
      if (inner) baseForSegments = inner;
    } catch {}
  }

  let origin = "";
  try { origin = new URL(ref || url).origin; } catch {}
  if (!origin) try { origin = new URL(url).origin; } catch {}
  const cacheKey = `hls:${url}`;
  const hit = cdnCache.get(cacheKey);
  if (hit && isCdnCacheable(url) && Date.now() - hit.ts < CDN_CACHE_TTL) {
    res.setHeader("Content-Type", hit.ct);
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Cache-Control", "no-store");
    res.setHeader("X-Cache", "HIT");
    res.send(hit.body);
    return;
  }
  try {
    const r = await fetch(url, { headers: HLS_PROXY_HDRS(ref || url, origin), signal: AbortSignal.timeout(18000), redirect: "follow" });
    if (!r.ok) { res.status(r.status).send(`upstream ${r.status}`); return; }
    const ct = r.headers.get("content-type") || "";
    const body = await r.text();
    const proto = req.headers["x-forwarded-proto"] || "https";
    const host  = req.headers["x-forwarded-host"] || req.headers.host || "localhost:8080";
    const selfBase = `${proto}://${host}`;
    const rewritten = rewriteM3u8(body, baseForSegments, selfBase, ref || url);
    const finalCt = ct.includes("mpegurl") || url.endsWith(".m3u8") ? "application/vnd.apple.mpegurl" : ct || "application/vnd.apple.mpegurl";
    if (isCdnCacheable(url)) {
      cdnCache.set(cacheKey, { body: Buffer.from(rewritten), ct: finalCt, ts: Date.now() });
    }
    res.setHeader("Content-Type", finalCt);
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
    res.setHeader("Pragma", "no-cache");
    res.send(rewritten);
  } catch (e: any) { res.status(502).send(`proxy error: ${e?.message ?? e}`); }
});

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

  if (req.method === "HEAD") {
    try {
      const r = await fetch(url, { method: "HEAD", headers: reqHeaders, signal: AbortSignal.timeout(8000), redirect: "follow" });
      res.status(r.status);
      res.setHeader("Access-Control-Allow-Origin", "*");
      res.setHeader("Access-Control-Allow-Headers", "Range");
      res.setHeader("Accept-Ranges", "bytes");
      const passHead = ["content-type","content-length","cache-control"];
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
    // Always declare range support so browsers can seek without full download
    res.setHeader("Accept-Ranges", "bytes");

    const pass = ["content-length","content-range","cache-control","last-modified","etag"];
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

  const cacheKey = `seg:${url}`;
  const hit = cdnCache.get(cacheKey);
  if (hit && isCdnCacheable(url) && Date.now() - hit.ts < CDN_CACHE_TTL) {
    res.setHeader("Content-Type", hit.ct);
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Cache-Control", "public, max-age=3600");
    res.setHeader("Content-Length", String(hit.body.length));
    res.setHeader("X-Cache", "HIT");
    res.send(hit.body);
    return;
  }

  try {
    const r = await fetch(url, { headers: HLS_PROXY_HDRS(ref || url, origin), signal: AbortSignal.timeout(30000), redirect: "follow" });
    if (!r.ok) { res.status(r.status).send(`upstream ${r.status}`); return; }
    const ct = r.headers.get("content-type") || "video/mp2t";
    const len = r.headers.get("content-length");
    if (ct.includes("mpegurl") || url.includes(".m3u8")) {
      const body = await r.text();
      const proto = req.headers["x-forwarded-proto"] || "https";
      const host  = req.headers["x-forwarded-host"] || req.headers.host || "localhost:8080";
      const rewritten = rewriteM3u8(body, url, `${proto}://${host}`, ref || url);
      if (isCdnCacheable(url)) cdnCache.set(cacheKey, { body: Buffer.from(rewritten), ct: "application/vnd.apple.mpegurl", ts: Date.now() });
      res.setHeader("Content-Type", "application/vnd.apple.mpegurl");
      res.setHeader("Access-Control-Allow-Origin", "*");
      res.setHeader("Cache-Control", "public, max-age=3600");
      res.send(rewritten);
      return;
    }
    const body = Buffer.from(await r.arrayBuffer());
    if (isCdnCacheable(url)) cdnCache.set(cacheKey, { body, ct, ts: Date.now() });
    res.setHeader("Content-Type", ct);
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Cache-Control", "public, max-age=3600");
    if (len) res.setHeader("Content-Length", len);
    res.send(body);
  } catch (e: any) { res.status(502).send(`proxy error: ${e?.message ?? e}`); }
});

export default router;
