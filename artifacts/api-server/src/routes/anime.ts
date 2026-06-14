import { Router } from "express";
import {
  makeSourceCacheKey,
  getFromSourceCache,
  setSourceCache,
  shouldRefreshCache,
} from "../lib/sourceCache.js";
import { db } from "../lib/db.js";
import { subtitleCache as subtitleCacheTable } from "@workspace/db";
import { eq } from "drizzle-orm";

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

async function cfProxyPost(
  url: string,
  body: string,
  contentType = "application/x-www-form-urlencoded",
  referer?: string,
  timeoutMs = 12000,
): Promise<string | null> {
  const now = Date.now();
  if (_cfProxyAlive === null || now - _cfProxyCheckedAt > 60_000) {
    try {
      const h = await fetch(`${CF_PROXY_BASE}/health`, { signal: AbortSignal.timeout(2000) });
      _cfProxyAlive = h.ok;
    } catch { _cfProxyAlive = false; }
    _cfProxyCheckedAt = now;
  }
  if (!_cfProxyAlive) return null;
  try {
    const proxyUrl = new URL(`${CF_PROXY_BASE}/fetch`);
    proxyUrl.searchParams.set("url", url);
    proxyUrl.searchParams.set("method", "POST");
    if (referer) proxyUrl.searchParams.set("ref", referer);
    proxyUrl.searchParams.set("timeout", String(Math.floor(timeoutMs / 1000)));
    const r = await fetch(proxyUrl.toString(), {
      method: "POST",
      headers: { "Content-Type": contentType, "X-Requested-With": "XMLHttpRequest" },
      body,
      signal: AbortSignal.timeout(timeoutMs + 2000),
    });
    if (!r.ok) return null;
    const text = await r.text();
    if (text.length < 10) return null;
    return text;
  } catch { _cfProxyAlive = false; return null; }
}

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
//  cfProxyGet — fetches via Python curl_cffi proxy (port 8000)
//  Used for sites that block Node.js fetch but allow real Chrome TLS.
//  Falls back to cfGet if proxy is unavailable.
// ════════════════════════════════════════════════════════════════════
const CF_PROXY_PORT = process.env.CF_PROXY_PORT || "8000";
const CF_PROXY_BASE = `http://localhost:${CF_PROXY_PORT}`;
let _cfProxyAlive: boolean | null = null;
let _cfProxyCheckedAt = 0;

async function cfProxyGet(
  url: string,
  referer?: string,
  timeoutMs = 18000,
): Promise<string | null> {
  // Health-check proxy once per 60s
  const now = Date.now();
  if (_cfProxyAlive === null || now - _cfProxyCheckedAt > 60_000) {
    try {
      const h = await fetch(`${CF_PROXY_BASE}/health`, { signal: AbortSignal.timeout(2000) });
      _cfProxyAlive = h.ok;
    } catch { _cfProxyAlive = false; }
    _cfProxyCheckedAt = now;
  }

  if (_cfProxyAlive) {
    try {
      const proxyUrl = new URL(`${CF_PROXY_BASE}/fetch`);
      proxyUrl.searchParams.set("url", url);
      if (referer) proxyUrl.searchParams.set("ref", referer);
      proxyUrl.searchParams.set("timeout", String(Math.floor(timeoutMs / 1000)));
      const r = await fetch(proxyUrl.toString(), { signal: AbortSignal.timeout(timeoutMs + 2000) });
      const cfBlocked = r.headers.get("x-cf-blocked") === "1";
      if (!r.ok || cfBlocked) return null;
      return await r.text();
    } catch { _cfProxyAlive = false; }
  }

  // Fallback to regular cfGet
  return cfGet(url, referer ? { Referer: referer } : {});
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
  // If b includes a (b is longer/superset) → good match, full 0.85
  if (b.includes(a)) return 0.85;
  // If a includes b (a is longer, b is a subset) → penalise by word-count ratio
  // e.g. searching "dragon ball super broly" vs site title "dragon ball super" → penalised
  if (a.includes(b)) {
    const aWords = a.split(" ").length;
    const bWords = b.split(" ").length;
    const ratio = bWords / aWords; // 0..1, lower = b covers less of a
    return 0.85 * (0.4 + ratio * 0.6); // range: 0.34 (very short b) → 0.85 (b≈a)
  }
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

// ────── VIDHIDEPRO / FILELIONS CDN ──────────────────────────────────
// vidhidepro.com (FileLions) uses packed JS with var links={hls4,hls2,hls3}
// hls4 is a relative /stream/... URL that follows redirects to callistanise.com CDN
function parseVidhidePro(html: string): string | null {
  // Enhanced packed-JS regex that handles escaped single-quotes inside the encoded string
  const re = /eval\(function\(p,a,c,k,e,?d?\)\{[^}]+\}\('((?:[^'\\]|\\[\s\S])*)',\s*(\d+)\s*,\s*(\d+)\s*,\s*'((?:[^'\\]|\\[\s\S])*)'\s*\.split\('\|'\)/;
  const m = html.match(re);
  if (!m) return null;
  try {
    const packed = m[1].replace(/\\'/g, "'");
    const base   = parseInt(m[2]);
    const count  = parseInt(m[3]);
    const k      = m[4].replace(/\\'/g, "'").split("|");
    const toS = (n: number, b: number): string => {
      const chars = "0123456789abcdefghijklmnopqrstuvwxyz";
      return n < b ? chars[n] : toS(Math.floor(n / b), b) + chars[n % b];
    };
    let unpacked = packed;
    for (let i = count - 1; i >= 0; i--) {
      if (k[i]) unpacked = unpacked.replace(new RegExp("\\b" + toS(i, base) + "\\b", "g"), k[i]);
    }
    // Extract var links={hls4:"/stream/...", hls2:"https://...m3u8?..."}
    const linksM = unpacked.match(/var\s+links\s*=\s*\{([^}]+)\}/);
    if (linksM) {
      const ls = linksM[1];
      // hls4 is a stable relative URL (CDN redirects: vidhidepro→vidhidefast→callistanise)
      const hls4M = ls.match(/"hls4"\s*:\s*"(\/[^"]+)"/);
      const hls2M = ls.match(/"hls2"\s*:\s*"(https?:\/\/[^"]+\.m3u8[^"]*)"/);
      if (hls4M) return `https://vidhidepro.com${hls4M[1]}`;
      if (hls2M) return hls2M[1];
    }
    // Fallback: generic parseVideoUrl on the unpacked content
    return parseVideoUrl(unpacked)?.url ?? null;
  } catch { return null; }
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
          url.includes("swdyu") || url.includes("awish") || url.includes("playerwish") ||
          url.includes("hlswish.com") || url.includes("vidspeed.org") ||
          url.includes("1vid.xyz") || url.includes("1vid1shar.space") ||
          url.includes("uqload.is") || url.includes("uqload.co") ||
          url.includes("voe.sx") || url.includes("vidoza.net") ||
          url.includes("bigwarp.io") || url.includes("forafile.com") ||
          url.includes("anafast.com") || url.includes("listeamed.net")) {
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
      // vidhidepro.com = FileLions CDN: packed JS with var links={hls4,hls2}
      if (url.includes("vidhidepro.com/v/") || url.includes("filelions.online/v/") || url.includes("filelions.to/v/")) {
        const m3u8 = parseVidhidePro(html);
        if (m3u8) return { url: m3u8, type: "hls" };
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
  subtitleUrl?: string;
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
          // Some CDNs block Replit server IP but allow direct browser HLS.js access — skip proxy
          const NO_HLS_PROXY_HOSTS = ["yaviidcdn.com", "vidcache.net"];
          const skipProxy = NO_HLS_PROXY_HOSTS.some(h => result.url.includes(h));
          if (skipProxy) {
            collect({ ...s, url: result.url, directUrl: result.url, directType: "hls" });
          } else {
            // Wrap extracted HLS with hls-proxy to bypass CORS
            const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(result.url)}&ref=${encodeURIComponent(s.url)}`;
            collect({ ...s, url: proxied, directUrl: proxied, directType: "hls" });
          }
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

  // Direct slug check (faster than search) — use cfProxyGet to bypass CF/IP blocks
  for (const slug of [...new Set(slugVariants)]) {
    const html = await cfProxyGet(`${ALK_BASE}/anime/${slug}/`, `${ALK_BASE}/`);
    if (html && html.includes("/episode/")) {
      alkSlugCache.set(ck, { slug, ts: Date.now() });
      return slug;
    }
  }

  // Search fallback — use ?s= (standard WP search, ?search_term_string= is broken)
  for (const q of [english, title].filter(Boolean) as string[]) {
    const html = await cfProxyGet(`${ALK_BASE}/search/?s=${encodeURIComponent(q as string)}`, `${ALK_BASE}/`);
    if (!html || !html.includes("/anime/")) continue;
    let best: string | null = null, bestScore = 0;
    for (const m of html.matchAll(/href="https?:\/\/animelek\.top\/anime\/([^/"]+)\/?"/gi)) {
      const s = m[1];
      const label = s.replace(/-/g, " ");
      const score = Math.max(similarity(label, title), english ? similarity(label, english as string) : 0);
      if (score > bestScore && score > 0.2) { bestScore = score; best = s; }
    }
    if (best && bestScore > 0.25) {
      // Verify the found slug actually has episodes
      const vhtml = await cfProxyGet(`${ALK_BASE}/anime/${best}/`, `${ALK_BASE}/`);
      if (vhtml && vhtml.includes("/episode/")) {
        alkSlugCache.set(ck, { slug: best, ts: Date.now() });
        return best;
      }
    }
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
    const sHtml = await cfProxyGet(seriesUrl, `${ALK_BASE}/`);
    if (!sHtml) return [];

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
        const ph = await cfProxyGet(u, seriesUrl);
        if (ph && ph.includes("data-embed=")) { epUrl = u; break; }
        // fallback: plain HEAD check
        try {
          const pr = await fetch(u, {
            method: "HEAD",
            headers: { ...ALK_HDRS, Referer: seriesUrl },
            signal: AbortSignal.timeout(4000), redirect: "follow",
          });
          if (pr.ok) { epUrl = u; break; }
        } catch {}
      }
    }
    if (!epUrl) return [];

    const eHtml = await cfProxyGet(epUrl, seriesUrl);
    if (!eHtml) return [];

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

      // mega.nz/embed is allowed as sandboxed iframe — handle BEFORE DEAD_FILE_HOSTS
      const isMegaEmbed = rawUrl.includes("mega.nz/embed") || rawUrl.includes("mega.co.nz/embed");
      if (isMegaEmbed) {
        const host = (rawUrl.split("/")[2] || "").replace(/^www\./, "");
        if (seenHosts.has(host)) continue; seenHosts.add(host);
        const nameM = innerHtml.match(/<span[^>]*class="[^"]*server[^"]*"[^>]*>([^<]+)<\/span>/i);
        const label = (nameM?.[1] || "").trim().replace(/\s*\|.*$/, "").trim();
        idx++;
        sources.push({
          name: `AnimeLek · ${label || `Mega ${idx}`}`,
          url: rawUrl, quality: "HD", qualityRank: 2, site: "animelek",
          directUrl: rawUrl, isEmbed: true,
        });
        continue;
      }

      if (DEAD_FILE_HOSTS.some(h => rawUrl.includes(h))) continue;
      if (EMBED_ONLY_HOSTS.some(h => rawUrl.includes(h))) continue;
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

  // ── Step 1: Search first (accurate — avoids slug hitting wrong OVA/movie page) ──
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

      const anchorRe = /<a\s+href="(https?:\/\/animedar\.net\/([^"#?]+))"(?:[^>]*title="([^"]*)")?[^>]*>/gi;
      for (const m of html.matchAll(anchorRe)) {
        const url      = m[1];
        const slug     = m[2];
        const rawLabel = m[3] || "";
        if (SKIP_SLUGS.some(s => slug.includes(s) || decodeURIComponent(slug).includes(s))) continue;
        let slugDecoded = slug;
        try { slugDecoded = decodeURIComponent(slug); } catch {}
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

  // ── Step 2: Direct slug fallback (for cases where search fails / site slow) ──
  // Slug must be 3+ distinct words to avoid ambiguous matches (e.g. "one-piece" = OVA/series/movie)
  const slugCandidates: string[] = [];
  for (const q of [english, title].filter(Boolean) as string[]) {
    const s = toSlug(q as string);
    if (!s) continue;
    // Only use slug when it uniquely identifies the series (colon-variant / stripped season suffix)
    const colonJoined = toSlug((q as string).replace(/[：:]/g, ""));
    if (colonJoined && colonJoined !== s) slugCandidates.push(colonJoined);
    const stripped = s.replace(/[-–](?:season[-–]?\d+|\d+(?:nd|rd|th)[-–]season|s\d+)$/i, "");
    if (stripped !== s && stripped.length > 2) slugCandidates.push(stripped);
    const colonJoinedStripped = colonJoined.replace(/[-–](?:season[-–]?\d+|\d+(?:nd|rd|th)[-–]season|s\d+)$/i, "");
    if (colonJoinedStripped !== colonJoined && colonJoinedStripped.length > 2) slugCandidates.push(colonJoinedStripped);
    // Only add plain slug if it's long enough to be distinctive (3+ words)
    if (s.split("-").length >= 3) slugCandidates.push(s);
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
          // Use the final URL (after any redirects) to get the canonical series URL
          const finalUrl = (r.url || `${ADAR_BASE}/${slug}/`).replace(/\/?$/, "/");
          adarSlugCache.set(ck, { url: finalUrl, ts: Date.now() });
          return finalUrl;
        }
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
      const html = await cfProxyGet(`${APH_BASE}/animes/${slug}`, `${APH_BASE}/`, 10000);
      if (html && html.includes(`/episodes/${slug}-episode-`)) {
        aphSlugCache.set(ck, { slug, ts: Date.now() });
        return slug;
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
        const html = await cfProxyGet(searchUrl, `${APH_BASE}/`, 10000);
        if (!html) continue;
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
    // Encode literal spaces/brackets that appear in paths inside <template> tags
    const url = encodeURI(m[1]);
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

  // Method 3: data-server=urlencoded+base64 (Node.js Buffer, not browser atob)
  for (const m of html.matchAll(/data-server=["']([^"']{20,})["']/gi)) {
    try {
      const raw = m[1].replace(/-/g, "+").replace(/_/g, "/");
      const decoded = JSON.parse(decodeURIComponent(Buffer.from(raw, "base64").toString("utf-8")));
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
  const cKey = `phoenix:${title}|${english ?? ""}|${ep}`;
  const cached = aphSrcCache.get(cKey);
  if (cached && Date.now() - cached.ts < SRC_TTL) return cached.sources;

  const slug = await searchAnimePhoenix(title, english);
  if (!slug) { aphSrcCache.set(cKey, { sources: [], ts: Date.now() }); return []; }

  const epUrl = `${APH_BASE}/episodes/${slug}-episode-${ep}/`;
  const html = await cfProxyGet(epUrl, `${APH_BASE}/`, 18000);
  if (!html) { aphSrcCache.set(cKey, { sources: [], ts: Date.now() }); return []; }

  const videos = parseAnimePhoenixVideo(html);
  if (!videos.length) { aphSrcCache.set(cKey, { sources: [], ts: Date.now() }); return []; }

  const sources: UnifiedSource[] = [];
  let idx = 0;
  for (const v of videos.slice(0, 6)) {
    const lower = v.url.toLowerCase();
    // MKV files on anime-phoenix.com are x265/HEVC — browsers cannot decode them
    // (only Safari on Apple Silicon partially supports HEVC; Chrome/Firefox never do).
    // Skip MKV to prevent guaranteed black-screen playback.
    if (lower.endsWith(".mkv") || lower.includes(".mkv?")) continue;
    const isHls = lower.includes(".m3u8");
    const proxied = isHls
      ? `/api/anime/hls-proxy?url=${encodeURIComponent(v.url)}&ref=${encodeURIComponent(APH_BASE + "/")}`
      : `/api/anime/video-proxy?url=${encodeURIComponent(v.url)}&ref=${encodeURIComponent(APH_BASE + "/")}`;
    sources.push({
      name: v.label || `Phoenix ${idx + 1}`,
      url: proxied,
      directUrl: proxied,
      directType: isHls ? ("hls" as const) : ("mp4" as const),
      quality: "1080p",
      qualityRank: 13,
      site: "animephoenix",
      isEmbed: false,
    });
    idx++;
    if (idx >= 5) break;
  }

  aphSrcCache.set(cKey, { sources, ts: Date.now() });
  return sources;
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
    // Reject non-Japanese-audio series (Hindi, dubbed, multi-audio, fandub, etc.)
    if (/[\-/](?:hindi|dubbed|eng-dub|english-dub|arabic-dub|multi-audio|multi-sub|fandub)(?:[\-/.]|$)/i.test(url)) return;
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
      // Prefer Arabic-dubbed series; reject Hindi
      candidates.sort((a, b) => {
        const aAr = /arabic|عربي/i.test(a.url) ? 1 : 0;
        const bAr = /arabic|عربي/i.test(b.url) ? 1 : 0;
        if (aAr !== bAr) return bAr - aAr;
        return b.score - a.score;
      });
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

  // Method 1: Direct slug check via /anime/{slug} page (try all domains via cfProxy)
  for (const slug of [...new Set(slugVariants)]) {
    for (const domain of OK_DOMAINS) {
      const html = await cfProxyGet(`${domain}/anime/${slug}`, `${domain}/`);
      if (html && html.includes("/episode/")) {
        OK_BASE = domain;
        okSlugCache.set(ck, { slug, ts: Date.now() });
        return slug;
      }
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

const atimeSeriesCache = new Map<string, { urls: string[]; ts: number }>();
const atimeSrcCache    = new Map<string, { sources: UnifiedSource[]; ts: number }>();

/**
 * Search anime-time.live and return ALL matching arc (/anime/) URLs for this title.
 * Multi-arc anime (e.g. One Piece with 20+ seasons) have one /anime/ URL per arc.
 * Returns all arcs so episodes in any arc can be found.
 */
async function searchAnimeTimeArcs(title: string, english: string | null): Promise<string[]> {
  const ck = (title + "|" + (english || "")).toLowerCase();
  const hit = atimeSeriesCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.urls;

  const allArcs: string[] = [];
  const seriesUrls: string[] = [];

  for (const q of [english, title].filter(Boolean) as string[]) {
    try {
      const r = await fetch(
        `${ATIME_BASE}/?s=${encodeURIComponent(q as string)}`,
        { headers: ATIME_HDRS, signal: AbortSignal.timeout(8000), redirect: "follow" },
      );
      if (!r.ok) continue;
      const html = await r.text();
      if (isCloudflareBlock(html)) continue;

      // Collect /series/ parent pages (contain links to all arc pages)
      for (const m of html.matchAll(/href="(https:\/\/anime-time\.live\/series\/[^"]+)"/g)) {
        const u = m[1];
        if (u.includes("/page/") || u.includes("/feed/") || u.includes("download")) continue;
        const slug = decodeURIComponent(u.replace(ATIME_BASE + "/series/", "").replace(/\/$/, ""));
        const score = Math.max(
          similarity(slug, title), english ? similarity(slug, english) : 0,
          asciiSimilarity(slug, title), english ? asciiSimilarity(slug, english) : 0,
        );
        if (score > 0.15 && !seriesUrls.includes(u)) seriesUrls.push(u);
      }

      // Also collect /anime/ arc pages shown directly in search results
      for (const m of html.matchAll(/href="(https:\/\/anime-time\.live\/anime\/[^"]+)"/g)) {
        const u = m[1];
        if (u.includes("/page/") || u.includes("/feed/") || u.includes("download")) continue;
        const slug = decodeURIComponent(u.replace(ATIME_BASE + "/anime/", "").replace(/\/$/, ""));
        const score = Math.max(
          similarity(slug, title), english ? similarity(slug, english) : 0,
          asciiSimilarity(slug, title), english ? asciiSimilarity(slug, english) : 0,
        );
        if (score > 0.12 && !allArcs.includes(u)) allArcs.push(u);
      }

      if (seriesUrls.length > 0 || allArcs.length > 0) break;
    } catch {}
  }

  // Expand each /series/ page to collect ALL its arc (/anime/) links
  await Promise.allSettled(seriesUrls.map(async (seriesUrl) => {
    try {
      const sR = await fetch(seriesUrl, {
        headers: ATIME_HDRS, signal: AbortSignal.timeout(9000), redirect: "follow",
      });
      if (!sR.ok) return;
      const sHtml = await sR.text();
      if (isCloudflareBlock(sHtml)) return;
      for (const m of sHtml.matchAll(/href="(https:\/\/anime-time\.live\/anime\/[^"]+)"/g)) {
        const u = m[1];
        if (!allArcs.includes(u) && !u.includes("/page/") && !u.includes("download")) {
          allArcs.push(u);
        }
      }
    } catch {}
  }));

  atimeSeriesCache.set(ck, { urls: allArcs, ts: Date.now() });
  return allArcs;
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
    // Get ALL arc URLs for this title — searchAnimeTimeArcs expands /series/ parent pages
    const arcUrls = await searchAnimeTimeArcs(title, english);
    if (!arcUrls.length) return [];

    // Build global episode map by fetching all arc pages in parallel (up to 12)
    const globalEpMap = new Map<number, string[]>();

    await Promise.allSettled(arcUrls.slice(0, 12).map(async (arcUrl) => {
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
const RISTOANIME_DISABLED = true; // AJAX endpoint is behind CF JS challenge — cannot bypass from datacenter IPs

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
  if (RISTOANIME_DISABLED) return [];
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
      const postBody = `season=${encodeURIComponent(season)}&post_id=${postId}`;
      // Try cfProxy first (bypasses IP block on AJAX endpoint), fallback to plain fetch
      let epsHtml = await cfProxyPost(`${RISTO_AJAX}/Single/Episodes.php`, postBody, "application/x-www-form-urlencoded", seriesUrl);
      if (!epsHtml) {
        try {
          const eR = await fetch(`${RISTO_AJAX}/Single/Episodes.php`, {
            method: "POST",
            body: postBody,
            headers: {
              ...RISTO_HDRS,
              "Content-Type": "application/x-www-form-urlencoded",
              "X-Requested-With": "XMLHttpRequest",
              Referer: seriesUrl,
            },
            signal: AbortSignal.timeout(8000),
          });
          if (eR.ok) epsHtml = await eR.text();
        } catch {}
      }
      if (!epsHtml || isCloudflareBlock(epsHtml) || epsHtml.length < 50) continue;

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

const A4UP_BASE = "https://anime4up.cam";
const A4UP_HDRS: Record<string, string> = { ...BASE_HDRS, Referer: "https://anime4up.cam/" };

const a4upSeriesCache = new Map<string, { url: string | null; ts: number }>();
const a4upSrcCache    = new Map<string, { sources: UnifiedSource[]; ts: number }>();

/**
 * Fetch an anime4up.cam page, handling the JS bot-protection redirect.
 * The site sometimes returns: <script>window.location.replace('URL?ch=1&js=JWT')</script>
 * We extract the redirect URL and follow it to get the real page.
 */
async function a4upFetchHtml(url: string): Promise<{ ok: boolean; html: string }> {
  try {
    const r = await fetch(url, {
      headers: A4UP_HDRS, signal: AbortSignal.timeout(12000), redirect: "follow",
    });
    if (!r.ok) return { ok: false, html: "" };
    let html = await r.text();
    // Detect JS bot-protection redirect
    const jsRedir = html.match(/window\.location\.replace\(['"]([^'"]+)['"]\)/)?.[1];
    if (jsRedir) {
      const r2 = await fetch(jsRedir, {
        headers: A4UP_HDRS, signal: AbortSignal.timeout(12000), redirect: "follow",
      });
      if (!r2.ok) return { ok: false, html: "" };
      html = await r2.text();
    }
    return { ok: true, html };
  } catch {
    return { ok: false, html: "" };
  }
}

async function searchAnime4up(title: string, english: string | null): Promise<string | null> {
  const ck = (title + "|" + (english || "")).toLowerCase();
  const hit = a4upSeriesCache.get(ck);
  if (hit && Date.now() - hit.ts < SRC_TTL) return hit.url;

  for (const q of [english, title].filter(Boolean) as string[]) {
    const { ok, html } = await a4upFetchHtml(`${A4UP_BASE}/?s=${encodeURIComponent(q)}`);
    if (!ok || isCloudflareBlock(html)) continue;

    const candidates: Array<{ url: string; score: number }> = [];
    for (const m of html.matchAll(/href="(https?:\/\/anime4up\.cam\/anime\/[^"]+)"/g)) {
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

  const epStr = String(ep);
  const epPad = ep < 10 ? `0${ep}` : epStr;
  let cfBlocked = false;

  /* ── try one episode URL → return sources or null ── */
  async function tryEpUrl(url: string): Promise<UnifiedSource[] | null> {
    if (cfBlocked) return null;
    const { ok, html } = await a4upFetchHtml(url);
    if (!ok) return null;
    if (isCloudflareBlock(html)) { cfBlocked = true; return null; }
    /* Real episode pages have the Arabic word for "episode" or data-src attributes */
    if (!html.includes("الحلقة") && !html.includes("data-src") && !html.includes("player")) return null;
    const seen = new Set<string>();
    const iframeUrls: string[] = [];
    for (const m of html.matchAll(/(?:src|data-src)=["']([^"']{10,})["']/gi)) {
      const raw = m[1].trim();
      if (!raw.startsWith("https://")) continue;
      if (raw.includes("anime4up.cam") || raw.includes("w1.anime4up.rest")) continue;
      if (/google-analytics|googleapis|gstatic|facebook|twitter|cloudflare|jquery|bootstrap/i.test(raw)) continue;
      if (!seen.has(raw)) { seen.add(raw); iframeUrls.push(raw); }
    }
    if (!iframeUrls.length) return null;
    return iframeUrls.map((u, i) => ({
      name: `أنمي فور أب · سيرفر ${i + 1}`,
      url: u, quality: "HD", qualityRank: 10, site: "anime4up",
    }));
  }

  /* ── helper: try ep number variants on a known series slug ── */
  async function trySlug(slug: string): Promise<UnifiedSource[] | null> {
    for (const n of [epStr, ...(ep < 10 ? [epPad] : [])]) {
      const u = `${A4UP_BASE}/episode/${encodeURIComponent(slug + "-الحلقة-" + n)}/`;
      const s = await tryEpUrl(u);
      if (cfBlocked) return null;
      if (s && s.length > 0) return s;
    }
    return null;
  }

  // ── Step 1: Search + series page → extract real episode slug ──
  const seriesUrl = await searchAnime4up(title, english);
  if (seriesUrl && !cfBlocked) {
    try {
      const { ok: srOk, html: srHtml } = await a4upFetchHtml(seriesUrl);
      if (srOk) {
        if (isCloudflareBlock(srHtml)) {
          cfBlocked = true;
        } else {
          /* Collect all episode links from the series page */
          const epLinks: string[] = [];
          for (const m of srHtml.matchAll(/href="(https?:\/\/anime4up\.cam\/episode\/[^"]+)"/g)) {
            if (!epLinks.includes(m[1])) epLinks.push(m[1]);
          }
          /* First: look for exact episode in visible links */
          for (const link of epLinks) {
            const rawSlug = decodeURIComponent(link.replace(A4UP_BASE + "/episode/", "").replace(/\/$/, ""));
            if (rawSlug.endsWith(`-الحلقة-${epStr}`) || rawSlug.endsWith(`-الحلقة-${epPad}`)) {
              const sources = await tryEpUrl(link);
              if (cfBlocked) break;
              if (sources && sources.length > 0) {
                a4upSrcCache.set(ck, { sources, ts: Date.now() });
                return sources;
              }
            }
          }
          /* Second: extract series slug prefix from any visible link → construct episode URL */
          if (!cfBlocked && epLinks.length > 0) {
            for (const link of epLinks) {
              const rawSlug = decodeURIComponent(link.replace(A4UP_BASE + "/episode/", "").replace(/\/$/, ""));
              const m = rawSlug.match(/^(.+?)-الحلقة-\d+/);
              if (!m) continue;
              const seriesSlug = m[1];
              const sources = await trySlug(seriesSlug);
              if (cfBlocked) break;
              if (sources && sources.length > 0) {
                a4upSrcCache.set(ck, { sources, ts: Date.now() });
                return sources;
              }
              break; // only use slug from the first valid link
            }
          }
        }
      }
    } catch {}
  }

  if (cfBlocked) {
    a4upSrcCache.set(ck, { sources: [], ts: Date.now() });
    return [];
  }

  // ── Step 2: Fallback — derive slug from title directly ──
  const slugCandidates: string[] = [];
  for (const q of [english, title].filter(Boolean) as string[]) {
    const s = toSlug(q as string);
    if (!s || slugCandidates.includes(s)) continue;
    slugCandidates.push(s);
    const stripped = s.replace(/[-–](?:season[-–]?\d+|\d+(?:nd|rd|th)[-–]season|s\d+)$/i, "");
    if (stripped !== s && stripped.length > 2 && !slugCandidates.includes(stripped)) slugCandidates.push(stripped);
    if (s.startsWith("the-") && !slugCandidates.includes(s.slice(4))) slugCandidates.push(s.slice(4));
    const colonJoined = toSlug((q as string).replace(/[：:]/g, ""));
    if (colonJoined && colonJoined !== s && !slugCandidates.includes(colonJoined)) slugCandidates.push(colonJoined);
  }
  for (const slug of slugCandidates) {
    const sources = await trySlug(slug);
    if (cfBlocked) break;
    if (sources && sources.length > 0) {
      a4upSrcCache.set(ck, { sources, ts: Date.now() });
      return sources;
    }
  }

  a4upSrcCache.set(ck, { sources: [], ts: Date.now() });
  return [];
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
            qualityRank: 15,
            site: "animeify",
            directUrl: proxyUrl,
            directType: "hls",
          });
        }
      } catch {}
    }

    // ── MediaFire MP4 (FRFhdQ=1080p, FRLink=720p, FRLowQ=480p) → مشغّل داخلي مباشر ──
    const mfSlots = [
      { key: "FRFhdQ", label: "ميديافاير · FHD", quality: "FHD", qualityRank: 14 },
      { key: "FRLink",  label: "ميديافاير · HD",  quality: "HD",  qualityRank: 13 },
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
      subtitles?: Array<{ url: string; lang?: string; label?: string }>;
    };
    if (!data.sources?.length) return [];

    // Prefer Arabic subtitle, fall back to English, then first available
    const findSub = (tag: string) => data.subtitles?.find(s =>
      (s.lang || s.label || "").toLowerCase().includes(tag)
    );
    const subEntry = findSub("arabic") || findSub("arab") || findSub("ar")
                  || findSub("english") || findSub("eng")
                  || data.subtitles?.[0];
    const subtitleUrl  = subEntry?.url || undefined;
    const subLangLabel = subEntry
      ? (/(arabic|arab|\bar\b)/i.test(subEntry.lang || subEntry.label || "") ? "عربي" : "إنجليزي")
      : "إنجليزي";

    return data.sources.map((src) => {
      const isHls = src.isM3U8 === true || src.type === "hls";
      // video.kawaii-anime.com CDN: CORS * + no auth → تشغيل مباشر في المتصفح دون hls-proxy
      // (hls-proxy يجعل كل segment يمر عبر السيرفر = بطء شديد)
      // MP4: لا امتداد في الرابط → نمرره عبر video-proxy حتى لا يُحمَّل iframe
      const directUrl = isHls
        ? src.url   // raw CDN URL — hls.js يشغّله مباشرة
        : `/api/anime/video-proxy?url=${encodeURIComponent(src.url)}&ref=${encodeURIComponent(KAWAII_BASE + "/")}`;
      return {
        name: `كواي أنمي · ${src.quality || "1080p"} · ${subLangLabel}`,
        url: src.url,
        quality: src.quality || "1080p",
        qualityRank: 15,
        site: "kawaii",
        directUrl,
        directType: isHls ? "hls" : "mp4",
        subtitleUrl,
      } as UnifiedSource;
    });
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  ANIKOTO (via megaplay.buzz) — صوت ياباني + ترجمة إنجليزية → عربية
//  يستخدم AniList ID مباشرة، لا حاجة للبحث عن slug
// ════════════════════════════════════════════════════════════════════
const MEGAPLAY_BASE = "https://megaplay.buzz";
const MEGAPLAY_SPOOF_REF = "https://hianimes.re/";

async function getAniKotoSources(
  _title: string, _english: string | null, ep: number, anilistId?: number,
): Promise<UnifiedSource[]> {
  if (!anilistId) return [];
  try {
    const embedUrl = `${MEGAPLAY_BASE}/stream/ani/${anilistId}/${ep}/sub`;
    let html = await fetch(embedUrl, {
      headers: { ...BASE_HDRS, Referer: MEGAPLAY_SPOOF_REF, "Accept-Language": "en-US,en;q=0.9" },
      signal: AbortSignal.timeout(10000),
    }).then(r => r.ok ? r.text() : "").catch(() => "");

    // تتبع iframe داخلي إذا لزم الأمر
    const frameSrc = html.match(/<iframe\b[^>]*src="([^"]+)"/i)?.[1];
    let actualEmbedUrl = embedUrl;
    if (!html.match(/data-id="[^"]+?"/) && frameSrc) {
      actualEmbedUrl = frameSrc.startsWith("http") ? frameSrc : `${MEGAPLAY_BASE}${frameSrc}`;
      html = await fetch(actualEmbedUrl, {
        headers: { ...BASE_HDRS, Referer: MEGAPLAY_SPOOF_REF },
        signal: AbortSignal.timeout(8000),
      }).then(r => r.ok ? r.text() : "").catch(() => "");
    }

    const fileId = html.match(/data-id="([^"]+)"/)?.[1];
    if (!fileId) return [];

    const origin = new URL(actualEmbedUrl).origin;
    const data = await fetch(`${origin}/stream/getSources?id=${fileId}&id=${fileId}`, {
      headers: {
        ...BASE_HDRS,
        Referer: `${origin}/`,
        "X-Requested-With": "XMLHttpRequest",
        Accept: "application/json, */*",
      },
      signal: AbortSignal.timeout(8000),
    }).then(r => r.ok ? r.json() : null).catch(() => null) as {
      sources?: { file?: string };
      tracks?: Array<{ file: string; label?: string; kind?: string; default?: boolean }>;
    } | null;

    if (!data?.sources?.file) return [];

    const m3u8Url = data.sources.file;

    // اختر الـ subtitle المتاحة — بدون ترجمة فورية (ثقيلة)
    // نعطي الأولوية للعربية ثم الإنجليزية — عرضها مباشرة عبر proxy-text فقط
    const subTrack =
      data.tracks?.find(t => t.kind !== "thumbnails" && /(arabic|arab|\bar\b)/i.test(t.label || "")) ||
      data.tracks?.find(t => t.kind !== "thumbnails" && /(english|eng)/i.test(t.label || "")) ||
      data.tracks?.find(t => t.kind !== "thumbnails");
    // proxy-text فقط لتجاوز CORS — بدون translate-vtt الثقيل
    const subtitleUrl = subTrack?.file
      ? `/api/anime/proxy-text?url=${encodeURIComponent(subTrack.file)}&ref=${encodeURIComponent(origin + "/")}`
      : undefined;
    const subLang = subTrack
      ? (/(arabic|arab|\bar\b)/i.test(subTrack.label || "") ? "عربي" : "إنجليزي")
      : "";

    const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(m3u8Url)}&ref=${encodeURIComponent(origin + "/")}`;

    return [{
      name: `AniKoto · 1080p · ياباني${subLang ? " · " + subLang : ""}`,
      url: m3u8Url,
      quality: "1080p",
      qualityRank: 10,
      site: "anikoto",
      directUrl: proxied,
      directType: "hls",
      subtitleUrl,
    }];
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  ANINEKO (anineko.to) — صوت ياباني + ترجمة إنجليزية → عربية
//  Multi-quality HLS (360p / 720p / 1080p) عبر vibeplayer.site
// ════════════════════════════════════════════════════════════════════
const ANINEKO_BASE = "https://anineko.to";
const aninekoSlugCache = new Map<string, { slug: string | null; ts: number }>();
const ANINEKO_SLUG_TTL = 12 * 3_600_000;

async function searchAnineko(query: string): Promise<Array<{ slug: string; title: string }>> {
  const html = await fetch(`${ANINEKO_BASE}/browser?keyword=${encodeURIComponent(query)}`, {
    headers: { ...BASE_HDRS, Referer: `${ANINEKO_BASE}/` },
    signal: AbortSignal.timeout(10000),
  }).then(r => r.ok ? r.text() : "").catch(() => "");

  const results: Array<{ slug: string; title: string }> = [];
  for (const m of html.matchAll(/<a\b[^>]*class=["'][^"']*nv-anime-thumb[^"']*["'][^>]*>[\s\S]*?<\/a>/gi)) {
    const tag = m[0].match(/<a\b[^>]*>/i)?.[0] ?? "";
    const hrefM = tag.match(/href=["']([^"']+)["']/i);
    const slug = hrefM?.[1].match(/\/watch\/([^/?#]+)/)?.[1];
    if (!slug) continue;
    const titleM = m[0].match(/<(?:h3|[^>]+class=["'][^"']*nv-anime-title[^"']*["'][^>]*)>([\s\S]*?)<\/(?:h3|span|div)>/i);
    const title = titleM ? titleM[1].replace(/<[^>]+>/g, "").trim() : slug.replace(/-/g, " ");
    results.push({ slug, title });
  }
  return results;
}

async function findAninekoSlug(title: string, english: string | null): Promise<string | null> {
  const ck = (title + "|" + (english || "")).toLowerCase();
  const cached = aninekoSlugCache.get(ck);
  if (cached && Date.now() - cached.ts < ANINEKO_SLUG_TTL) return cached.slug;

  const queries = [...new Set([english, title].filter(Boolean) as string[])];
  for (const q of queries) {
    const results = await searchAnineko(q);
    if (!results.length) continue;
    // مطابقة بالعنوان
    const target = (english || title).toLowerCase();
    const best = results.find(r =>
      r.title.toLowerCase().includes(target.slice(0, 12)) ||
      target.includes(r.title.toLowerCase().slice(0, 10))
    ) || results[0];
    if (best) {
      aninekoSlugCache.set(ck, { slug: best.slug, ts: Date.now() });
      return best.slug;
    }
  }
  aninekoSlugCache.set(ck, { slug: null, ts: Date.now() });
  return null;
}

async function extractAninekoHls(embedUrl: string, seriesSlug: string): Promise<string | null> {
  const html = await fetch(embedUrl, {
    headers: { ...BASE_HDRS, Referer: `${ANINEKO_BASE}/watch/${seriesSlug}` },
    signal: AbortSignal.timeout(10000),
  }).then(r => r.ok ? r.text() : "").catch(() => "");

  const patterns = [
    /const\s+src\s*=\s*["'](https?:\/\/[^"']+\.m3u8[^"']*)["']/i,
    /file\s*:\s*["'](https?:\/\/[^"']+\.m3u8[^"']*)["']/i,
    /["'](https?:\/\/[^"']+\/master\.m3u8[^"']*)["']/i,
    /["'](https?:\/\/[^"']+\.m3u8[^"']*)["']/i,
  ];
  for (const pattern of patterns) {
    const m = html.match(pattern);
    if (m) return m[1].replace(/&amp;/g, "&");
  }
  return null;
}

const ANINEKO_DISABLED = true; // anineko.to returns HTTP 403 on all pages from datacenter IPs

async function getAninekoSources(
  title: string, english: string | null, ep: number,
): Promise<UnifiedSource[]> {
  if (ANINEKO_DISABLED) return [];
  try {
    const slug = await findAninekoSlug(title, english);
    if (!slug) return [];

    // صفحة الحلقة
    const epHtml = await fetch(`${ANINEKO_BASE}/watch/${slug}/ep-${ep}`, {
      headers: { ...BASE_HDRS, Referer: `${ANINEKO_BASE}/watch/${slug}` },
      signal: AbortSignal.timeout(12000),
    }).then(r => r.ok ? r.text() : "").catch(() => "");
    if (!epHtml) return [];

    // استهدف الـ panel الخاص بـ sub مباشرة (class lang-group + data-id="sub")
    // ملاحظة: data-id="dub" يظهر أولاً في tab buttons قبل الـ panels، لذا لا نقسم عليه
    const subPanelMatch = epHtml.match(
      /<div\b[^>]*class=["'][^"']*lang-group[^"']*["'][^>]*data-id=["']sub["'][^>]*>([\s\S]*?)(?=<div\b[^>]*class=["'][^"']*lang-group|$)/i
    );
    const subSection = subPanelMatch?.[1] || epHtml;

    // استخرج data-video من قسم sub — كل قيمة تحتوي على embed URL + subtitle في query params
    const serverEntries: Array<{ embedUrl: string; rawSubUrl: string | null }> = [];
    for (const m of subSection.matchAll(/data-video=["']([^"']+)["']/gi)) {
      const rawVal = m[1].replace(/&amp;/g, "&").replace(/&#34;/g, '"');
      let embedUrl = rawVal;
      let rawSubUrl: string | null = null;
      try {
        const parsed = new URL(rawVal);
        // subtitle مُمرَّر في query params: ?sub= أو ?caption_1=
        const subParam = parsed.searchParams.get("sub") || parsed.searchParams.get("caption_1");
        if (subParam && subParam.startsWith("http")) {
          rawSubUrl = subParam;
          // نظّف الـ embed URL من params الترجمة
          parsed.searchParams.delete("sub");
          parsed.searchParams.delete("caption_1");
          parsed.searchParams.delete("sub_1");
          embedUrl = parsed.toString();
        }
      } catch {}
      serverEntries.push({ embedUrl, rawSubUrl });
    }
    if (!serverEntries.length) return [];

    const sources: UnifiedSource[] = [];

    for (const entry of serverEntries.slice(0, 4)) {
      const { embedUrl, rawSubUrl } = entry;
      let m3u8Url: string | null = null;
      let referer = ANINEKO_BASE + "/";

      // vibeplayer.site: اشتقاق مباشر للـ HLS من الـ token بدون HTTP request إضافي
      // pattern: vibeplayer.site/TOKEN → /public/stream/TOKEN/master.m3u8
      const vibeToken = embedUrl.match(/vibeplayer\.site\/([a-zA-Z0-9]{10,})/i)?.[1];
      if (vibeToken) {
        m3u8Url = `https://vibeplayer.site/public/stream/${vibeToken}/master.m3u8`;
        referer = `https://vibeplayer.site/${vibeToken}`;
      } else {
        // خوادم أخرى: استخراج HLS من صفحة الـ embed
        try { referer = new URL(embedUrl).origin + "/"; } catch {}
        m3u8Url = await extractAninekoHls(embedUrl, slug);
      }

      if (!m3u8Url) continue;

      // وجّه الـ HLS عبر hls-proxy (CORS + Referer)
      const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(m3u8Url)}&ref=${encodeURIComponent(referer)}`;

      // الترجمة: proxy-text لتجاوز CDN → translate-vtt للعربية
      let subtitleUrl: string | undefined;
      if (rawSubUrl) {
        const proxySubUrl = `/api/anime/proxy-text?url=${encodeURIComponent(rawSubUrl)}&ref=${encodeURIComponent(ANINEKO_BASE + "/")}`;
        subtitleUrl = `/api/anime/translate-vtt?url=${encodeURIComponent(proxySubUrl)}&from=en&to=ar`;
      }

      const hostLabel = embedUrl.includes("bibi") ? "BibiEmb"
                      : embedUrl.includes("otakuhg") ? "OtakuHG"
                      : embedUrl.includes("otakuvid") ? "OtakuVid"
                      : "VibePlayer";

      sources.push({
        name: `AniNeko · ${hostLabel} · ياباني مترجم`,
        url: m3u8Url,
        quality: "1080p",
        qualityRank: 9,
        site: "anineko",
        directUrl: proxied,
        directType: "hls",
        subtitleUrl,
      });

      if (sources.length >= 2) break;
    }
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  ANIMEPAHE (via Miruro Kiwi) — صوت ياباني + ترجمة إنجليزية مدمجة
//  CDN: vault-*.owocdn.top / vault-*.uwucdn.top — AES-128 HLS — CORS open
//  Endpoint: mirurotvapi.vercel.app/api/watch/kiwi/{anilistId}/sub/animepahe-{ep}
// ════════════════════════════════════════════════════════════════════
const ANIMEPAHE_KIWI_BASE = "https://mirurotvapi.vercel.app";

async function getAnimePaheSources(
  _title: string, _english: string | null, ep: number, anilistId?: number,
): Promise<UnifiedSource[]> {
  if (!anilistId) return [];
  try {
    const r = await fetch(
      `${ANIMEPAHE_KIWI_BASE}/api/watch/kiwi/${anilistId}/sub/animepahe-${ep}`,
      { signal: AbortSignal.timeout(18000) },
    );
    if (!r.ok) return [];
    const data = await r.json() as {
      success: boolean;
      results?: {
        streams?: Array<{
          url: string; type: string; quality: string;
          isActive: boolean; referer?: string; fansub?: string;
        }>;
      };
    };
    if (!data.success || !data.results?.streams?.length) return [];

    const sources: UnifiedSource[] = [];
    const qualityRankMap: Record<string, number> = { "1080p": 11, "720p": 10, "480p": 9, "360p": 8 };

    for (const stream of data.results.streams) {
      if (stream.type !== "hls") continue;
      if (!stream.isActive) continue;
      const isOwoCdn = stream.url.includes("owocdn.top") || stream.url.includes("uwucdn.top");
      if (!isOwoCdn) continue;

      const referer  = stream.referer || "https://kwik.cx/";
      const proxied  = `/api/anime/hls-proxy?url=${encodeURIComponent(stream.url)}&ref=${encodeURIComponent(referer)}`;
      const qRank    = qualityRankMap[stream.quality] ?? 9;
      const fansub   = stream.fansub ? ` · ${stream.fansub}` : "";

      sources.push({
        name: `AnimePahe · ${stream.quality}${fansub} · ياباني مترجم`,
        url:         stream.url,
        quality:     stream.quality,
        qualityRank: qRank,
        site:        "animepahe",
        directUrl:   proxied,
        directType:  "hls",
      });
    }
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  ANIMEWITCHER (Firebase Firestore) — مصدر ياباني + عربي
//  يستخدم قاعدة بيانات Firebase Firestore خاصة بتطبيق AnimeWitcher
//  البنية: anime_list/{name}/episodes/{001}/servers/{id}
//  يستعلم بـ aniList_id (string) ← يُعيد روابط Streamtape + Pixeldrain
//  الوصول: قراءة عامة بدون مصادقة (Firestore rules تسمح بـ public read)
// ════════════════════════════════════════════════════════════════════
const AW_FS_BASE = "https://firestore.googleapis.com/v1/projects/animewitcher-1c66d/databases/(default)/documents";

async function getAnimeWitcherSources(
  _title: string, _english: string | null, ep: number, anilistId?: number,
): Promise<UnifiedSource[]> {
  if (!anilistId) return [];
  try {
    // 1. ابحث عن الأنمي بالـ AniList ID (مخزّن كـ string) — الوصول العام بدون auth
    const queryR = await fetch(`${AW_FS_BASE}:runQuery`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        structuredQuery: {
          from: [{ collectionId: "anime_list" }],
          where: { fieldFilter: { field: { fieldPath: "aniList_id" }, op: "EQUAL", value: { stringValue: String(anilistId) } } },
          limit: 1,
        }
      }),
      signal: AbortSignal.timeout(10000),
    });
    if (!queryR.ok) return [];
    const queryData = await queryR.json() as Array<{ document?: { name: string } }>;
    const docPath = queryData?.[0]?.document?.name;
    if (!docPath) return [];
    const animeName = docPath.split("/").pop();
    if (!animeName) return [];

    // 2. احصل على الـ servers للحلقة (3 أرقام مع صفر بادئ)
    const epPadded = String(ep).padStart(3, "0");
    const encName  = encodeURIComponent(animeName);
    const srvR = await fetch(`${AW_FS_BASE}/anime_list/${encName}/episodes/${epPadded}/servers?pageSize=20`, {
      signal: AbortSignal.timeout(10000),
    });
    if (!srvR.ok) return [];
    const srvData = await srvR.json() as { documents?: Array<{ fields?: Record<string, { stringValue?: string; booleanValue?: boolean }> }> };
    if (!srvData.documents?.length) return [];

    const sources: UnifiedSource[] = [];

    await Promise.allSettled(srvData.documents.map(async (doc) => {
      const f       = doc.fields || {};
      const srvName = f.name?.stringValue || "";
      const quality = f.quality?.stringValue || "720p";
      const link    = f.link?.stringValue || "";
      const visible = f.visible?.booleanValue !== false;
      if (!link || !visible || !srvName) return;

      const qRank = quality === "1080p" ? 15 : quality === "720p" ? 14 : 12;
      const qLabel = quality === "1080p" ? "FHD 1080p" : quality === "720p" ? "HD 720p" : quality;

      if (srvName === "PD") {
        // Pixeldrain: https://pixeldrain.com/u/{id} → API مباشر
        const pdId = link.split("/").pop();
        if (!pdId || pdId.length < 4) return;
        const apiUrl = `https://pixeldrain.com/api/file/${pdId}`;
        const directUrl = `/api/anime/video-proxy?url=${encodeURIComponent(apiUrl)}&ref=${encodeURIComponent("https://pixeldrain.com/")}`;
        sources.push({ name: `AnimeWitcher · ${qLabel} · PD`, url: link, quality, qualityRank: qRank, site: "animewitcher", directUrl, directType: "mp4" });

      } else if (srvName === "ST") {
        // Streamtape: احصل على الصفحة وحلّل رابط الفيديو المباشر
        try {
          const stHtml = await fetch(link, {
            headers: { ...BASE_HDRS, Referer: "https://streamtape.com/" },
            signal: AbortSignal.timeout(10000),
          }).then(r => r.ok ? r.text() : "").catch(() => "");
          const stResult = parseStreamtape(stHtml);
          if (stResult) {
            const directUrl = `/api/anime/video-proxy?url=${encodeURIComponent(stResult.url)}&ref=${encodeURIComponent("https://streamtape.com/")}`;
            sources.push({ name: `AnimeWitcher · ${qLabel} · ST`, url: link, quality, qualityRank: qRank, site: "animewitcher", directUrl, directType: "mp4" });
          }
        } catch {}

      } else if (srvName === "VT") {
        // VidTube: استخراج الرابط المباشر عبر extractVideoDeep
        try {
          const vtRef = link.includes("vidtube") ? "https://vidtube.xyz/" : link;
          const vtResult = await extractVideoDeep(link, vtRef);
          if (vtResult) {
            const directUrl = vtResult.type === "hls"
              ? `/api/anime/hls-proxy?url=${encodeURIComponent(vtResult.url)}&ref=${encodeURIComponent(link)}`
              : `/api/anime/video-proxy?url=${encodeURIComponent(vtResult.url)}&ref=${encodeURIComponent(link)}`;
            sources.push({ name: `AnimeWitcher · ${qLabel} · VT`, url: link, quality, qualityRank: qRank, site: "animewitcher", directUrl, directType: vtResult.type });
          }
        } catch { /* skip VT on error */ }

      } else if (srvName === "MF") {
        // MediaFire: استخراج رابط التحميل المباشر عبر extractMediafireDirect
        try {
          const mfDirect = await extractMediafireDirect(link);
          if (mfDirect) {
            const directUrl = `/api/anime/video-proxy?url=${encodeURIComponent(mfDirect)}&ref=${encodeURIComponent("https://www.mediafire.com/")}`;
            sources.push({ name: `AnimeWitcher · ${qLabel} · MF`, url: link, quality, qualityRank: qRank, site: "animewitcher", directUrl, directType: "mp4" });
          }
        } catch { /* skip MF on error */ }

      } else if (srvName === "KF") {
        // KrakenFiles: Cloudflare 502 من Replit → يُتخطى تلقائياً
      }
    }));

    return sources;
  } catch { return []; }
}



// ════════════════════════════════════════════════════════════════════
//  ANIMEHUB (123animehub.cc) — ياباني مترجم · HLS عبر echovideo.ru
//  Flow: /ajax/film/search?keyword= → slug →
//        /ajax/episode/info?epr={slug}/1/{ep} → target embed URL →
//        echovideo origin/hs/getSources?id= → HLS m3u8
// ════════════════════════════════════════════════════════════════════
const ANIMEHUB_BASE = "https://123animehub.cc";
const ANIMEHUB_UA   = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36";

async function getAnimeHubSources(
  title: string, english: string | null, ep: number
): Promise<UnifiedSource[]> {
  try {
    // 1. Build candidate keywords (English preferred, romaji fallback)
    const keywords: string[] = [];
    for (const t of [english, title].filter(Boolean) as string[]) {
      const clean = t.toLowerCase().replace(/[^a-z0-9\s]/g, " ").replace(/\s+/g, " ").trim();
      if (clean) keywords.push(clean);
      // First 2–3 words shortcut (helps when full title has season suffix)
      const words = clean.split(/\s+/).filter((w: string) => w.length > 1);
      if (words.length >= 2) {
        const short = words.slice(0, 3).join(" ");
        if (short !== clean) keywords.push(short);
      }
    }

    // Simple title similarity helper (lower-case word overlap ratio)
    function ahSimilarity(a: string, b: string): number {
      const tok = (s: string) => s.toLowerCase().replace(/[^a-z0-9]/g, " ").split(/\s+/).filter(Boolean);
      const ta = new Set(tok(a)); const tb = new Set(tok(b));
      if (!ta.size || !tb.size) return 0;
      let shared = 0; ta.forEach(w => { if (tb.has(w)) shared++; });
      return shared / Math.max(ta.size, tb.size);
    }

    // 2. Search for slug candidates — scored by title similarity, best first
    interface AHCandidate { slug: string; displayTitle: string; score: number; }
    let allCandidates: AHCandidate[] = [];
    for (const keyword of keywords) {
      try {
        const r = await fetch(
          `${ANIMEHUB_BASE}/ajax/film/search?keyword=${encodeURIComponent(keyword)}&_=${Date.now()}`,
          {
            headers: {
              "X-Requested-With": "XMLHttpRequest",
              "Referer": ANIMEHUB_BASE + "/",
              "Accept": "application/json",
              "User-Agent": ANIMEHUB_UA,
            },
            signal: AbortSignal.timeout(8_000),
          }
        );
        if (!r.ok) continue;
        const d: any = await r.json();
        const html: string = d?.html || d?.content || "";
        // Extract slug + display title from each result item
        const itemRe = /href="\/anime\/([^"?#]+)"[^>]*>([^<]+)</g;
        let m: RegExpExecArray | null;
        while ((m = itemRe.exec(html)) !== null) {
          const slug  = m[1].replace(/\/$/, "");
          const dTitle = m[2].trim();
          if (allCandidates.some(c => c.slug === slug)) continue;
          const bestScore = Math.max(
            ahSimilarity(dTitle, english || title),
            ahSimilarity(dTitle, title),
          );
          allCandidates.push({ slug, displayTitle: dTitle, score: bestScore });
        }
        if (allCandidates.length > 0) break;
      } catch { /* try next keyword */ }
    }
    if (!allCandidates.length) return [];

    // Sort by similarity descending — exact/best match first
    allCandidates.sort((a, b) => b.score - a.score);
    const slugCandidates = allCandidates.map(c => c.slug);

    // 3. Try each slug — fetch episode info and extract HLS
    for (const slug of slugCandidates.slice(0, 6)) {
      try {
        // The epr param is {slug}/{season}/{episode}; season is always 1 on animehub
        const epr = `${slug}/1/${ep}`;
        const epR = await fetch(
          `${ANIMEHUB_BASE}/ajax/episode/info?epr=${encodeURIComponent(epr)}&ts=1&_=${Date.now()}`,
          {
            headers: {
              "Referer": `${ANIMEHUB_BASE}/anime/${slug}`,
              "X-Requested-With": "XMLHttpRequest",
              "Accept": "application/json, text/javascript, */*; q=0.01",
              "User-Agent": ANIMEHUB_UA,
            },
            signal: AbortSignal.timeout(10_000),
          }
        );
        if (!epR.ok) continue;
        const epData: any = await epR.json();
        const embedUrl: string = epData?.target || epData?.link || epData?.url || "";
        if (!embedUrl || !embedUrl.startsWith("http")) continue;

        // 4. Identify embed ID and origin from the embed URL
        const embedMatch = embedUrl.match(/\/embed-[^/]*\/([A-Za-z0-9+/=_%-]+)$/);
        if (!embedMatch) continue;
        const encodedId = embedMatch[1];
        const embedOrigin = new URL(embedUrl).origin;

        // 5. Fetch embed page to get session cookie
        const embedR = await fetch(embedUrl, {
          headers: { "User-Agent": ANIMEHUB_UA, "Referer": `${ANIMEHUB_BASE}/` },
          signal: AbortSignal.timeout(10_000),
        });
        if (!embedR.ok) continue;
        const rawCookie = embedR.headers.get("set-cookie") || "";
        const cookie    = rawCookie ? rawCookie.split(";")[0].trim() : "";

        // 6. Call getSources API
        const srcR = await fetch(`${embedOrigin}/hs/getSources?id=${encodedId}`, {
          headers: {
            "Referer": embedUrl,
            "Accept": "*/*",
            "User-Agent": ANIMEHUB_UA,
            "X-Requested-With": "XMLHttpRequest",
            ...(cookie ? { "Cookie": cookie } : {}),
          },
          signal: AbortSignal.timeout(10_000),
        });
        if (!srcR.ok) continue;
        const srcData: any = await srcR.json();
        if (!srcData) continue;

        // 7. Extract HLS URL from response
        let hlsUrl: string | null = null;
        if (typeof srcData.sources === "string" && srcData.sources.startsWith("http")) {
          hlsUrl = srcData.sources;
        } else if (Array.isArray(srcData.sources) && srcData.sources.length > 0) {
          const first = srcData.sources[0];
          hlsUrl = first?.file || first?.src || first?.url || null;
        }
        if (!hlsUrl || !hlsUrl.startsWith("http")) continue;

        const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(hlsUrl)}&ref=${encodeURIComponent(embedOrigin + "/")}`;
        return [{
          name:        "AnimeHub · ياباني مترجم",
          url:         proxied,
          quality:     "1080p",
          qualityRank: 9,
          site:        "animehub",
          directUrl:   proxied,
          directType:  "hls",
        }];
      } catch { continue; }
    }
    return [];
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  ANIMEGG (www.animegg.org) — ياباني مترجم · MP4 مباشر عبر video-proxy
//  Flow (Anivexa): /search/?q= → /series/{slug} → anm_det_pop links
//        → data-toggle="tab" embed tabs → /embed/{id} → videoSources
// ════════════════════════════════════════════════════════════════════
const ANIMEGG_BASE = "https://www.animegg.org";

async function getAnimeGGSources(
  title: string, english: string | null, ep: number
): Promise<UnifiedSource[]> {
  try {
    const q = (english || title).replace(/[^\w\s]/g, " ").trim();

    // 1. Search (trailing slash required!) → /series/{slug} links
    const searchHtml = await cfGet(
      `${ANIMEGG_BASE}/search/?q=${encodeURIComponent(q)}`,
      { "Referer": ANIMEGG_BASE },
    );
    if (!searchHtml) return [];

    // Parse series from <a class="...mse..." href="/series/{slug}">
    const slugCandidates: { slug: string; text: string }[] = [];
    for (const m of searchHtml.matchAll(/<a\b[^>]*class=["'][^"']*\bmse\b[^"']*["'][^>]*>[\s\S]*?<\/a>/gi)) {
      const tag = m[0].match(/<a\b[^>]*>/i)?.[0] ?? "";
      const href = tag.match(/href=["']([^"']+)["']/i)?.[1] ?? "";
      const slug = href.match(/^\/series\/([^/?#]+)/)?.[1];
      if (!slug) continue;
      const strong = m[0].match(/<strong[^>]*>([\s\S]*?)<\/strong>/i)?.[1];
      slugCandidates.push({ slug, text: strong ? strong.replace(/<[^>]+>/g, "").trim() : slug.replace(/-/g, " ") });
    }
    // Fallback: any /series/ href
    if (!slugCandidates.length) {
      for (const m of searchHtml.matchAll(/href="(\/series\/[^"?#]+)"/gi)) {
        const slug = m[1].replace("/series/", "");
        if (!slug.includes("/page/") && !slugCandidates.find(c => c.slug === slug))
          slugCandidates.push({ slug, text: slug.replace(/-/g, " ") });
      }
    }
    if (!slugCandidates.length) return [];

    // 2. Best match by title similarity
    const scored = slugCandidates.slice(0, 8).map(c => ({
      slug: c.slug, score: similarity(q, c.text)
    })).sort((a, b) => b.score - a.score);
    if (!scored[0] || scored[0].score < 0.1) return [];
    const seriesSlug = scored[0].slug;

    // 3. Build episode URL directly: /{seriesSlug}-episode-{N}
    // AnimeGG series pages only show the latest ~15 episodes (pagination),
    // so we construct the URL directly instead of searching the series page.
    let epPath: string | null = `/${seriesSlug}-episode-${ep}`;

    // Verify the direct URL is a real episode page (not soft-404)
    const testHtml = await cfGet(
      `${ANIMEGG_BASE}${epPath}`,
      { "Referer": `${ANIMEGG_BASE}/series/${seriesSlug}` },
    );
    const hasTabs = testHtml && (
      testHtml.includes('data-version="subbed"') ||
      testHtml.includes("data-version='subbed'") ||
      testHtml.includes('data-version=&quot;subbed&quot;')
    );
    if (!hasTabs) {
      // Fallback: load series page and scan episode list (works for recent eps)
      const seriesHtml = await cfGet(
        `${ANIMEGG_BASE}/series/${seriesSlug}`,
        { "Referer": `${ANIMEGG_BASE}/search/?q=${encodeURIComponent(q)}` },
      );
      if (!seriesHtml) return [];
      epPath = null;
      for (const m of seriesHtml.matchAll(/<a\b[^>]*class=["'][^"']*anm_det_pop[^"']*["'][^>]*>([\s\S]*?)<\/a>/gi)) {
        const tag = m[0].match(/<a\b[^>]*>/i)?.[0] ?? "";
        const href = (tag.match(/href=["']([^"']+)["']/i)?.[1] ?? "").split("#")[0];
        const strong = (m[0].match(/<strong[^>]*>([\s\S]*?)<\/strong>/i)?.[1] ?? "").replace(/<[^>]+>/g, "").trim();
        const numM = strong.match(/\b(\d+)\s*$/);
        if (numM && parseInt(numM[1]) === ep && href) {
          epPath = href.startsWith("/") ? href : "/" + href;
          break;
        }
      }
      if (!epPath) return [];
    }

    // 4. Episode page → server tabs (data-toggle="tab" data-id data-version)
    const epUrl  = `${ANIMEGG_BASE}${epPath}`;
    // Reuse testHtml if it was fetched for the direct URL (same page); otherwise fetch now
    const epHtml = (hasTabs && testHtml) ? testHtml
      : await cfGet(epUrl, { "Referer": `${ANIMEGG_BASE}/series/${seriesSlug}` });
    if (!epHtml) return [];

    const tabs: { embedId: string; server: string }[] = [];
    for (const m of epHtml.matchAll(/<a\b[^>]*data-toggle=["']tab["'][^>]*>/gi)) {
      const tag = m[0];
      const getA = (n: string) => tag.match(new RegExp(`\\b${n}=["']([^"']*)["']`, "i"))?.[1] ?? "";
      const embedId = getA("data-id");
      const version = (getA("data-version") || "").toLowerCase();
      const server  = getA("data-mirror") || "AnimeGG";
      // Only keep subbed versions — skip any dubbed/dub/english-dub content
      if (!embedId) continue;
      if (version && !version.includes("sub")) continue;
      if (!tabs.find(t => t.embedId === embedId)) tabs.push({ embedId, server });
    }
    // No fallback: if no subbed tabs found, this episode has no subtitled version
    if (!tabs.length) return [];

    // 5. Fetch embed pages → videoSources[{file, label, bk}] + tracks[{file, label, kind}]
    const sources: UnifiedSource[] = [];
    for (const tab of tabs.slice(0, 3)) {
      const embedUrl  = `${ANIMEGG_BASE}/embed/${tab.embedId}`;
      const embedHtml = await cfGet(embedUrl, { "Referer": epUrl });
      if (!embedHtml) continue;

      const vsMatch = /var\s+videoSources\s*=\s*(\[[\s\S]*?\]);/.exec(embedHtml);
      if (!vsMatch) continue;

      /* Extract subtitle tracks: var tracks = [...] */
      let embedSubUrl: string | undefined;
      const tracksMatch = /var\s+tracks\s*=\s*(\[[\s\S]*?\]);/.exec(embedHtml);
      if (tracksMatch) {
        try {
          const tracksJson = tracksMatch[1]
            .replace(/([{,]\s*)([a-zA-Z_]\w*)\s*:/g, '$1"$2":')
            .replace(/:\s*'([^']*)'/g, ': "$1"');
          const tracks: Array<{ file?: string; label?: string; kind?: string }> = JSON.parse(tracksJson);
          /* Prefer explicit captions/subtitles kind; fallback to any non-thumbnail track */
          const subTrack =
            tracks.find(t => (t.kind === "captions" || t.kind === "subtitles") && t.file?.startsWith("http")) ||
            tracks.find(t => t.kind !== "thumbnails" && t.kind !== "chapters" && t.file?.startsWith("http"));
          if (subTrack?.file) {
            const rawProxy = `/api/anime/proxy-text?url=${encodeURIComponent(subTrack.file)}&ref=${encodeURIComponent(embedUrl)}`;
            embedSubUrl = `/api/anime/translate-vtt?url=${encodeURIComponent(rawProxy)}&from=en&to=ar`;
          }
        } catch { /* bad JSON */ }
      }

      try {
        const json = vsMatch[1]
          .replace(/([{,]\s*)([a-zA-Z_]\w*)\s*:/g, '$1"$2":')
          .replace(/:\s*'([^']*)'/g, ': "$1"');
        const arr: { file?: string; label?: string; bk?: string }[] = JSON.parse(json);
        for (const item of arr) {
          if (!item.file) continue;
          let finalUrl = item.file.startsWith("http") ? item.file : `${ANIMEGG_BASE}${item.file}`;
          // bk = backup embed URL (base64 of URL-encoded href) — it decodes to an embed page
          // (e.g. mp4upload.com/embed-*.html), NOT a direct video URL, so we do NOT use it
          // as finalUrl. The primary /play/N/video.mp4 URL works via video-proxy.
          const proxied = `/api/anime/video-proxy?url=${encodeURIComponent(finalUrl)}&ref=${encodeURIComponent(embedUrl)}`;
          const label   = item.label || "360p";
          const rank    = label.includes("1080") ? 10 : label.includes("720") ? 9 : 7;
          sources.push({
            name: `AnimeGG · ${tab.server} · ${label} · ياباني مترجم`,
            url: finalUrl, quality: label, qualityRank: rank,
            site: "animegg", directUrl: proxied, directType: "mp4",
            subtitleUrl: embedSubUrl,
          });
        }
      } catch { /* bad JSON */ }
    }
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  ALLMANGA (via AllAnime API — api.allanime.day)
//  صوت ياباني + ترجمة إنجليزية | AES-CTR + hex decode + AES-CBC
// ════════════════════════════════════════════════════════════════════
const ALLANIME_API   = "https://api.allanime.day";
const ALLANIME_REF   = "https://allmanga.to";
const ALLANIME_UA    = "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/121.0";
const ALLANIME_PASS  = "Xot36i3lK3:v1";
const ALLANIME_EP_H  = "d405d0edd690624b66baba3068e0edc3ac90f1597d898a1ec8db4e5c43c00fec";

const ALLANIME_HEX: Record<string, string> = {
  "79":"A","7a":"B","7b":"C","7c":"D","7d":"E","7e":"F","7f":"G","70":"H","71":"I","72":"J",
  "73":"K","74":"L","75":"M","76":"N","77":"O","68":"P","69":"Q","6a":"R","6b":"S","6c":"T",
  "6d":"U","6e":"V","6f":"W","60":"X","61":"Y","62":"Z","59":"a","5a":"b","5b":"c","5c":"d",
  "5d":"e","5e":"f","5f":"g","50":"h","51":"i","52":"j","53":"k","54":"l","55":"m","56":"n",
  "57":"o","48":"p","49":"q","4a":"r","4b":"s","4c":"t","4d":"u","4e":"v","4f":"w","40":"x",
  "41":"y","42":"z","08":"0","09":"1","0a":"2","0b":"3","0c":"4","0d":"5","0e":"6","0f":"7",
  "00":"8","01":"9","15":"-","16":".","67":"_","46":"~","02":":","17":"/","07":"?","1b":"#",
  "63":"[","65":"]","78":"@","19":"!","1c":"$","1e":"&","10":"(","11":")","12":"*","13":"+",
  "14":",","03":";","05":"=","1d":"%",
};

let _aaKey: CryptoKey | null = null;
async function getAllAnimeKey(): Promise<CryptoKey> {
  if (_aaKey) return _aaKey;
  const h = await crypto.subtle.digest("SHA-256", new TextEncoder().encode(ALLANIME_PASS));
  _aaKey = await crypto.subtle.importKey("raw", h, { name: "AES-CTR" }, false, ["decrypt"]);
  return _aaKey;
}
async function aaDecryptB64(b64: string): Promise<string> {
  const buf = Uint8Array.from(atob(b64), c => c.charCodeAt(0));
  const ctr = new Uint8Array(16); ctr.set(buf.slice(1, 13)); ctr[15] = 2;
  const key = await getAllAnimeKey();
  const ctLen = buf.length - 13 - 16;
  const plain = await crypto.subtle.decrypt({ name: "AES-CTR", counter: ctr, length: 32 }, key, buf.slice(13, 13 + ctLen));
  return new TextDecoder().decode(plain);
}
function aaHexDecode(hex: string): string {
  let out = "";
  for (let i = 0; i < hex.length; i += 2) out += ALLANIME_HEX[hex.substring(i, i+2).toLowerCase()] ?? hex.substring(i, i+2);
  return out;
}
async function aaUnsDec(hex: string): Promise<string> {
  const hexToU8 = (h: string) => { const b = new Uint8Array(h.length/2); for (let i=0;i<b.length;i++) b[i]=parseInt(h.slice(i*2,i*2+2),16); return b; };
  const k = await crypto.subtle.importKey("raw", new TextEncoder().encode("kiemtienmua911ca"), { name: "AES-CBC" }, false, ["decrypt"]);
  const p = await crypto.subtle.decrypt({ name: "AES-CBC", iv: new TextEncoder().encode("1234567890oiuytr") }, k, hexToU8(hex));
  return new TextDecoder().decode(p);
}
async function aaPost(gql: string, vars: object): Promise<any> {
  const r = await fetch(`${ALLANIME_API}/api`, {
    method: "POST",
    headers: { "User-Agent": ALLANIME_UA, "Referer": ALLANIME_REF, "Origin": ALLANIME_REF, "Content-Type": "application/json" },
    body: JSON.stringify({ variables: vars, query: gql }),
    signal: AbortSignal.timeout(12000),
  });
  if (!r.ok) throw new Error(`AllAnime POST ${r.status}`);
  const j = await r.json() as any;
  if (j?.data?.tobeparsed) j.data = JSON.parse(await aaDecryptB64(j.data.tobeparsed));
  return j.data;
}
async function aaGet(url: string): Promise<any> {
  const r = await fetch(url, { headers: { "User-Agent": ALLANIME_UA, "Referer": ALLANIME_REF, "Origin": ALLANIME_REF }, signal: AbortSignal.timeout(12000) });
  if (!r.ok) throw new Error(`AllAnime GET ${r.status}`);
  const j = await r.json() as any;
  if (j?.data?.tobeparsed) j.data = JSON.parse(await aaDecryptB64(j.data.tobeparsed));
  return j.data;
}

async function getAllMangaSources(
  title: string, english: string | null, ep: number, anilistId?: number,
): Promise<UnifiedSource[]> {
  try {
    const q = english || title;
    // 1. Search
    const sd = await aaPost(
      `query($search:SearchInput $limit:Int $page:Int $translationType:VaildTranslationTypeEnumType $countryOrigin:VaildCountryOriginEnumType){shows(search:$search limit:$limit page:$page translationType:$translationType countryOrigin:$countryOrigin){edges{_id name englishName nativeName availableEpisodes aniListId __typename}}}`,
      { search: { allowAdult: false, allowUnknown: false, query: q }, limit: 40, page: 1, translationType: "sub", countryOrigin: "ALL" }
    );
    const results: any[] = sd?.shows?.edges ?? [];
    if (!results.length) return [];

    // 2. Best match (prefer AniList ID)
    const normQ = q.toLowerCase().replace(/[^\p{L}\p{N}]/gu, "");
    let best = results[0];
    for (const r of results) {
      if (anilistId && String(r.aniListId) === String(anilistId)) { best = r; break; }
      const names = [r.name, r.englishName].filter(Boolean).map((s: string) => s.toLowerCase().replace(/[^\p{L}\p{N}]/gu, ""));
      if (names.includes(normQ)) { best = r; break; }
    }

    // 3. Episode sources (persisted query)
    const epVars = { showId: best._id, translationType: "sub", episodeString: String(ep) };
    const epData = await aaGet(
      `${ALLANIME_API}/api?variables=${encodeURIComponent(JSON.stringify(epVars))}&extensions=${encodeURIComponent(JSON.stringify({ persistedQuery: { version: 1, sha256Hash: ALLANIME_EP_H } }))}`
    );
    const srcUrls: any[] = epData?.episode?.sourceUrls ?? [];
    const sources: UnifiedSource[] = [];

    for (const src of srcUrls.slice(0, 8)) {
      let url: string = src.sourceUrl ?? "";
      if (!url) continue;
      if (url.startsWith("--")) url = aaHexDecode(url.slice(2));
      if (url.startsWith("/apivtwo/clock")) url = "https://allanime.day" + url.replace("/clock", "/clock.json");

      // allanime.uns.bio — AES-CBC encrypted HLS
      if (url.includes("allanime.uns.bio")) {
        try {
          const token = url.split("#").pop() ?? "";
          if (!token || token.length <= 2) continue;
          const base = "https://allanime.uns.bio";
          const vr = await fetch(`${base}/api/v1/video?id=${token}&w=1280&h=720&r=`, {
            headers: { "User-Agent": ALLANIME_UA, "Referer": `${base}/#${token}`, "Origin": base },
            signal: AbortSignal.timeout(8000),
          });
          if (!vr.ok) continue;
          const hexStr = (await vr.text()).trim();
          if (!hexStr || !/^[0-9a-f]+$/i.test(hexStr)) continue;
          const parsed = JSON.parse(await aaUnsDec(hexStr));
          const hlsUrl: string = parsed.source || parsed.cf || "";
          if (!hlsUrl.startsWith("http")) continue;
          sources.push({
            name: "AllManga · HLS · ياباني مترجم",
            url: hlsUrl, quality: "1080p", qualityRank: 8, site: "allmanga",
            directUrl: `/api/anime/hls-proxy?url=${encodeURIComponent(hlsUrl)}&ref=${encodeURIComponent(ALLANIME_REF + "/")}`,
            directType: "hls",
          });
        } catch { /* skip */ }
      }
      // mp4upload — scrape embed for MP4
      else if (url.includes("mp4upload.com")) {
        try {
          const m = url.match(/embed-([a-zA-Z0-9]+)\.html/);
          if (!m) continue;
          const er = await fetch(`https://www.mp4upload.com/embed-${m[1]}.html`, {
            headers: { "User-Agent": ALLANIME_UA, "Referer": ALLANIME_REF + "/" },
            signal: AbortSignal.timeout(8000),
          });
          if (!er.ok) continue;
          const html = await er.text();
          const mp = html.match(/player\.src\s*\(\s*\{[^}]*\bsrc\s*:\s*"([^"]+)"/) || html.match(/"file"\s*:\s*"(https?:[^"]+\.mp4[^"]*)"/);
          const mp4Url = mp?.[1]?.replace(/\\/g, "");
          if (!mp4Url) continue;
          sources.push({
            name: "AllManga · MP4 · ياباني مترجم",
            url: mp4Url, quality: "1080p", qualityRank: 7, site: "allmanga",
            directUrl: `/api/anime/video-proxy?url=${encodeURIComponent(mp4Url)}&ref=${encodeURIComponent("https://www.mp4upload.com/")}`,
            directType: "mp4",
          });
        } catch { /* skip */ }
      }
      if (sources.length >= 2) break;
    }
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  REANIME (reanime.to via FlixCloud) — صوت ياباني + ترجمة
//  Flow: api/flix/{anilistId}/{ep} → embed HTML → WASM+PBKDF2+AES-CBC decrypt → HLS
// ════════════════════════════════════════════════════════════════════
const REANIME_BASE = "https://reanime.to";
const REANIME_FLIX = "https://flixcloud.cc";
const REANIME_UA   = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36";
const REANIME_H    = { "User-Agent": REANIME_UA, "Accept": "application/json, */*" };

const re_enc = new TextEncoder();
const re_dec = new TextDecoder();

async function re_sha256hex(s: string): Promise<string> {
  const buf = await crypto.subtle.digest("SHA-256", re_enc.encode(s));
  return Array.from(new Uint8Array(buf)).map(b => b.toString(16).padStart(2, "0")).join("");
}
function re_b64toU8(b64: string): Uint8Array {
  const bin = atob(b64); const out = new Uint8Array(bin.length);
  for (let i = 0; i < bin.length; i++) out[i] = bin.charCodeAt(i);
  return out;
}
async function re_deriveFields(seed: string) {
  let e = seed;
  for (let i = 0; i < 3; i++) e = await re_sha256hex(e + i);
  let l = e;
  for (let i = 0; i < 3; i++) l = await re_sha256hex(l + i);
  return {
    keyField: "kf_" + e.substring(8, 16),
    ivField:  "ivf_" + e.substring(16, 24),
    containerName: "cd_" + e.substring(24, 32),
    arrayName:     "ad_" + e.substring(32, 40),
    objectName:    "od_" + e.substring(40, 48),
    tokenField:    e.substring(48, 64) + "_" + e.substring(56, 64),
    keyFrag2Field: l.substring(0, 16) + "_" + l.substring(16, 24),
  };
}
function re_extractSsrObj(html: string): string {
  const m = html.match(/\{type:"data",data:(\{)/);
  if (!m) throw new Error("SSR data block not found");
  let depth = 0;
  const start = html.indexOf("{", m.index! + m[0].length - 1);
  for (let i = start; i < html.length; i++) {
    if (html[i] === "{") depth++;
    else if (html[i] === "}") { if (--depth === 0) return html.slice(start, i + 1); }
  }
  throw new Error("SSR brace matching failed");
}
function re_parseJsLiteral(src: string): any {
  let i = 0;
  const ws = () => { while (i < src.length && /\s/.test(src[i])) i++; };
  function parseValue(): any {
    ws();
    if (src[i] === "{") return parseObject();
    if (src[i] === "[") return parseArray();
    if (src[i] === '"') return parseDStr();
    if (src[i] === "'") return parseSStr();
    if (src.startsWith("true", i))  { i += 4; return true; }
    if (src.startsWith("false", i)) { i += 5; return false; }
    if (src.startsWith("null", i))  { i += 4; return null; }
    if (src.startsWith("undefined", i)) { i += 9; return null; }
    if (src.startsWith("!0", i)) { i += 2; return true; }
    if (src.startsWith("!1", i)) { i += 2; return false; }
    const m = src.slice(i).match(/^-?[\d.]+([eE][+-]?\d+)?/);
    if (m) { i += m[0].length; return parseFloat(m[0]); }
    throw new Error(`JS parse error at ${i}: ${src.slice(i, i+20)}`);
  }
  function parseDStr(): string {
    let r = ""; i++;
    while (i < src.length && src[i] !== '"') {
      if (src[i] === "\\") { i++; const e: Record<string,string> = {n:"\n",t:"\t",r:"\r",'"':'"',"\\":"\\"}; r += e[src[i]] ?? src[i]; i++; }
      else r += src[i++];
    } i++; return r;
  }
  function parseSStr(): string {
    let r = ""; i++;
    while (i < src.length && src[i] !== "'") {
      if (src[i] === "\\") { i++; r += src[i] === "'" ? "'" : ({n:"\n",t:"\t",r:"\r","\\":"\\"}[src[i]] ?? src[i]); i++; }
      else r += src[i++];
    } i++; return r;
  }
  function parseKey(): string {
    ws();
    if (src[i] === '"') return parseDStr();
    if (src[i] === "'") return parseSStr();
    const m = src.slice(i).match(/^[a-zA-Z_$][a-zA-Z0-9_$]*/);
    if (m) { i += m[0].length; return m[0]; }
    throw new Error(`Bad key at ${i}: ${src.slice(i, i+20)}`);
  }
  function parseObject(): any {
    const obj: any = {}; i++; ws();
    while (i < src.length && src[i] !== "}") {
      if (src[i] === ",") { i++; ws(); continue; }
      const k = parseKey(); ws(); i++; obj[k] = parseValue(); ws();
    } i++; return obj;
  }
  function parseArray(): any[] {
    const arr: any[] = []; i++; ws();
    while (i < src.length && src[i] !== "]") {
      if (src[i] === ",") { i++; ws(); continue; }
      arr.push(parseValue()); ws();
    } i++; return arr;
  }
  return parseValue();
}
function re_parseWasm(wasm: Uint8Array): { step: number; transform: (b: number) => number } {
  const b = wasm; let pos = 8;
  while (pos < b.length) {
    const secId = b[pos++]; let sz = 0, sh = 0, by: number;
    do { by = b[pos++]; sz |= (by & 127) << sh; sh += 7; } while (by & 128);
    if (secId === 10) {
      pos++; let sbs = 0, sh2 = 0, by2: number;
      do { by2 = b[pos++]; sbs |= (by2 & 127) << sh2; sh2 += 7; } while (by2 & 128);
      pos += sbs; break;
    } pos += sz;
  }
  let rbs = 0, sh3 = 0, by3: number;
  do { by3 = b[pos++]; rbs |= (by3 & 127) << sh3; sh3 += 7; } while (by3 & 128);
  const r = b.slice(pos, pos + rbs);
  function leb(arr: Uint8Array, ii: number): [number, number] {
    let v = 0, s = 0, bx: number;
    do { bx = arr[ii++]; v |= (bx & 127) << s; s += 7; } while (bx & 128);
    return [v, ii];
  }
  const XOR_END = [32, 2, 32, 5, 106, 45, 0, 0, 115, 33, 6];
  let txStart = -1;
  outer: for (let ii = 0; ii < r.length - XOR_END.length; ii++) {
    for (let j = 0; j < XOR_END.length; j++) if (r[ii+j] !== XOR_END[j]) continue outer;
    txStart = ii + XOR_END.length; break;
  }
  if (txStart < 0) throw new Error("WASM: transform start not found");
  let txEnd = -1, step = 36;
  for (let ii = txStart; ii < r.length - 4; ii++) {
    if (r[ii] === 32 && r[ii+1] === 5 && r[ii+2] === 65) {
      const [val, ni] = leb(r, ii + 3);
      if (r[ni] === 108) { txEnd = ii; step = val; break; }
    }
  }
  if (txEnd < 0) throw new Error("WASM: keystream not found");
  const code = r.slice(txStart, txEnd);
  function transform(inputByte: number): number {
    let local6 = inputByte & 255; const stk: number[] = []; let ii = 0;
    while (ii < code.length) {
      const op = code[ii++];
      if (op === 32) { const [idx, ni] = leb(code, ii); ii = ni; stk.push(idx === 6 ? local6 : 0); }
      else if (op === 33) { const [idx, ni] = leb(code, ii); ii = ni; const v = stk.pop()!; if (idx === 6) local6 = v & 255; }
      else if (op === 65) { const [v, ni] = leb(code, ii); ii = ni; stk.push(v); }
      else if (op === 106) { const bv = stk.pop()!, a = stk.pop()!; stk.push((a + bv) & 255); }
      else if (op === 107) { const bv = stk.pop()!, a = stk.pop()!; stk.push((a - bv + 256) & 255); }
      else if (op === 113) { const bv = stk.pop()!, a = stk.pop()!; stk.push(a & bv & 255); }
      else if (op === 114) { const bv = stk.pop()!, a = stk.pop()!; stk.push((a | bv) & 255); }
      else if (op === 115) { const bv = stk.pop()!, a = stk.pop()!; stk.push((a ^ bv) & 255); }
      else if (op === 116) { const bv = stk.pop()!, a = stk.pop()!; stk.push((a << (bv & 7)) & 255); }
      else if (op === 118) { const bv = stk.pop()!, a = stk.pop()!; stk.push(a >>> (bv & 7) & 255); }
    }
    return local6;
  }
  return { step, transform };
}
function re_runDecrypt(wasm: Uint8Array, frag1: Uint8Array, kf2: Uint8Array, T: Uint8Array, seedInt: number): Uint8Array {
  const { step, transform } = re_parseWasm(wasm);
  const out = new Uint8Array(frag1.length);
  for (let i = 0; i < frag1.length; i++) out[i] = transform((frag1[i] ^ kf2[i] ^ T[i]) & 255) ^ ((i * step + seedInt) & 255);
  return out;
}
async function re_decryptEmbed(html: string): Promise<{ url: string; subtitles: any[] }> {
  const raw  = re_extractSsrObj(html);
  const data = re_parseJsLiteral(raw);
  const seed: string = data.obfuscation_seed;
  if (!seed) throw new Error("obfuscation_seed missing");
  const fields = await re_deriveFields(seed);
  const ocd = data.obfuscated_crypto_data;
  if (!ocd) throw new Error("obfuscated_crypto_data missing");
  const container = ocd[fields.containerName];
  if (!container) throw new Error(`containerName "${fields.containerName}" missing`);
  const arr = container[fields.arrayName];
  if (!arr) throw new Error(`arrayName "${fields.arrayName}" missing`);
  const obj = arr[0][fields.objectName];
  if (!obj) throw new Error(`objectName "${fields.objectName}" missing`);
  const frag1 = re_b64toU8(obj[fields.keyField]);
  const iv    = re_b64toU8(obj[fields.ivField]);
  const kf2raw: string = data[fields.keyFrag2Field];
  if (!kf2raw) throw new Error(`kf2 field "${fields.keyFrag2Field}" missing`);
  const kf2   = re_b64toU8(kf2raw);
  const token: string = data[fields.tokenField];
  if (!token) throw new Error(`tokenField "${fields.tokenField}" missing`);
  const tokData: any = await fetch(`${REANIME_FLIX}/api/m3u8/${token}`, {
    headers: { ...REANIME_H, "Referer": `${REANIME_BASE}/` },
    signal: AbortSignal.timeout(8000),
  }).then(r => { if (!r.ok) throw new Error(`Token API ${r.status}`); return r.json(); });
  const vidKey  = (await re_sha256hex(token + "vid")).substring(0, 10);
  const keyKey  = (await re_sha256hex(token + "key")).substring(0, 10);
  const v_bytes = re_b64toU8(tokData[vidKey]);
  const T_bytes = re_b64toU8(tokData[keyKey]);
  if (!v_bytes.length || !T_bytes.length) throw new Error("Token fields missing");
  const seedInt  = parseInt(seed.substring(0, 8), 16);
  const wPayload = re_b64toU8(data.w_payload ?? "");
  if (!wPayload.length) throw new Error("w_payload missing");
  const wasmOut  = re_runDecrypt(wPayload, frag1, kf2, T_bytes, seedInt);
  const keyMat   = await crypto.subtle.importKey("raw", Buffer.from(wasmOut), { name: "PBKDF2" }, false, ["deriveBits"]);
  const derivedBuf = await crypto.subtle.deriveBits(
    { name: "PBKDF2", salt: re_enc.encode(seed), iterations: 1000, hash: "SHA-256" }, keyMat, 256
  );
  const derived  = new Uint8Array(derivedBuf);
  for (let i = 0; i < 32; i++) derived[i] ^= seed.charCodeAt(i % seed.length);
  const aesKeyBytes = new Uint8Array(await crypto.subtle.digest("SHA-256", Buffer.from(derived)));
  const aesKey = await crypto.subtle.importKey("raw", Buffer.from(aesKeyBytes), { name: "AES-CBC" }, false, ["decrypt"]);
  const plain  = await crypto.subtle.decrypt({ name: "AES-CBC", iv: Buffer.from(iv) }, aesKey, Buffer.from(v_bytes));
  const url    = re_dec.decode(plain).trim().replace(/\0+$/, "");
  if (!url.startsWith("http")) throw new Error(`Unexpected decrypted value: ${url.substring(0, 60)}`);
  return { url, subtitles: data.subtitles ?? [] };
}

const reanimeSrcCache = new Map<string, { sources: UnifiedSource[]; ts: number }>();
const REANIME_TTL = 30 * 60_000;

async function getReanímeSources(
  title: string, english: string | null, ep: number, anilistId?: number,
): Promise<UnifiedSource[]> {
  if (!anilistId) return [];
  const ck = `reanime:${anilistId}:${ep}`;
  const cached = reanimeSrcCache.get(ck);
  if (cached && Date.now() - cached.ts < REANIME_TTL) return cached.sources;
  try {
    // رانيمي يستخدم AniList ID مباشرة عبر endpoint مخصص
    const flixRes = await fetch(`${REANIME_BASE}/api/flix/${anilistId}/${ep}`, {
      headers: { ...REANIME_H, "Referer": `${REANIME_BASE}/` },
      signal: AbortSignal.timeout(10000),
    });
    if (!flixRes.ok) return [];
    const flixData: any = await flixRes.json();
    // flixData: { servers: [{serverName, dataType, dataLink, ...}] }
    const servers: any[] = flixData?.servers ?? flixData?.episode_links ?? [];
    const subServer = servers.find((s: any) =>
      (s.dataType || s.type || "").toLowerCase().includes("sub") ||
      !(s.dataType || s.type || "").toLowerCase().includes("dub")
    ) ?? servers[0];
    if (!subServer) return [];
    const embedUrl: string = subServer.dataLink || subServer.link || "";
    if (!embedUrl.startsWith("http")) return [];

    // جلب صفحة الـ embed وفك تشفيرها
    const embedHtml = await fetch(embedUrl, {
      headers: { "User-Agent": REANIME_UA, "Referer": `${REANIME_BASE}/` },
      signal: AbortSignal.timeout(12000),
    }).then(r => r.ok ? r.text() : "").catch(() => "");
    if (!embedHtml) return [];

    const { url: m3u8Url, subtitles } = await re_decryptEmbed(embedHtml);

    // subtitle: أول ترجمة إنجليزية متاحة
    const subTrack = subtitles.find((s: any) =>
      (s.label || s.lang || "").toLowerCase().includes("eng") ||
      (s.label || s.lang || "").toLowerCase().includes("english")
    ) ?? subtitles[0];
    let subtitleUrl: string | undefined;
    if (subTrack?.file || subTrack?.url) {
      const rawVtt: string = subTrack.file || subTrack.url;
      const proxyVtt = `/api/anime/proxy-text?url=${encodeURIComponent(rawVtt)}&ref=${encodeURIComponent(embedUrl)}`;
      subtitleUrl = `/api/anime/translate-vtt?url=${encodeURIComponent(proxyVtt)}&from=en&to=ar`;
    }

    // أرسل عبر hls-proxy أولاً
    const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(m3u8Url)}&ref=${encodeURIComponent(embedUrl)}`;
    const sources: UnifiedSource[] = [{
      name: "Reanime · FlixCloud · ياباني مترجم",
      url: m3u8Url, quality: "1080p", qualityRank: 9,
      site: "reanime",
      directUrl: proxied,
      directType: "hls",
      subtitleUrl,
    }];
    reanimeSrcCache.set(ck, { sources, ts: Date.now() });
    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  ANIME-DAY.COM scraper  (Arabic dubbed anime — مدبلج)
//  APK API: GET /app/anime.php    → catalog (12 entries, Arabic+English names)
//           GET /app/servers.php  → all episode/server entries (474 entries)
//  Video:   FileLions → vidhidepro.com (packed JS → HLS via parseVidhidePro)
//           embedwish.com        → streamwish-family (parseStreamwish)
// ════════════════════════════════════════════════════════════════════
const ANIMEDAY_BASE = "https://www.anime-day.com";
const ANIMEDAY_HDRS: Record<string, string> = {
  ...BASE_HDRS,
  "User-Agent": "com.anime.day/4.0 (Android)",
};

let animeDayAnimeListCache: { data: any[]; ts: number } | null = null;
let animeDayServersCache: { data: any[]; ts: number } | null = null;

async function fetchAnimeDayAnimeList(): Promise<any[]> {
  const now = Date.now();
  if (animeDayAnimeListCache && now - animeDayAnimeListCache.ts < 3_600_000)
    return animeDayAnimeListCache.data;
  try {
    const r = await fetch(`${ANIMEDAY_BASE}/app/anime.php`, {
      headers: ANIMEDAY_HDRS,
      signal: AbortSignal.timeout(8_000),
    });
    if (!r.ok) return [];
    const j = await r.json() as any;
    const data: any[] = j.data ?? [];
    animeDayAnimeListCache = { data, ts: now };
    return data;
  } catch { return []; }
}

async function fetchAnimeDayServers(): Promise<any[]> {
  const now = Date.now();
  if (animeDayServersCache && now - animeDayServersCache.ts < 3_600_000)
    return animeDayServersCache.data;
  try {
    const r = await fetch(`${ANIMEDAY_BASE}/app/servers.php`, {
      headers: ANIMEDAY_HDRS,
      signal: AbortSignal.timeout(10_000),
    });
    if (!r.ok) return [];
    const j = await r.json() as any;
    const data: any[] = j.data ?? (Array.isArray(j) ? j : []);
    animeDayServersCache = { data, ts: now };
    return data;
  } catch { return []; }
}

/**
 * يحوّل URL نسبي من servers.php إلى URL كامل باستخدام اسم السيرفر
 * للتمييز بين المزودين الذين يشتركون في نفس نمط الـ URL.
 */
function animeDayResolveUrl(server: any): string | null {
  const url: string   = server.url || "";
  const name: string  = (server.name || "").toLowerCase();
  const provider      = name.split(" ").pop() || "";

  if (!url) return null;
  if (url.startsWith("https://")) return url; // direct URL

  // ── /v/{code} → FileLions (vidhidepro.com) ──────────────────────────────
  if (url.startsWith("/v/")) return `https://vidhidepro.com${url}`;

  // ── /e/{code}[.html] → بحسب المزود ──────────────────────────────────────
  if (/^\/e\//.test(url)) {
    if (provider === "dood" || name.includes("doodstream"))
      return `https://dood.to${url}`;
    if (provider === "mixdrop")  return `https://mixdrop.ag${url}`;
    if (provider === "kerapoxy") return `https://kerapoxy.cc${url}`;
    if (provider === "filemoon") return `https://filemoon.sx${url}`;
    if (provider === "voe_sx" || provider === "voe") return `https://voe.sx${url}`;
    if (provider === "wish")     return `https://embedwish.com${url}`;
    // افتراضي: embedwish (wish-family)
    return `https://embedwish.com${url}`;
  }

  // ── /embed-{code}.html → بحسب المزود ────────────────────────────────────
  if (/^\/embed-[^/]+\.html$/.test(url)) {
    if (provider === "upstream")  return `https://upstream.to${url}`;
    if (provider === "uqload")    return `https://uqload.co${url}`;
    if (provider === "vadbam")    return `https://vadbam.net${url}`;
    if (provider === "viidshar")  return `https://viidshar.com${url}`;
    if (provider === "segavid")   return `https://segavid.com${url}`;
    if (provider === "mp4upload") return `https://www.mp4upload.com${url}`;
    return `https://upstream.to${url}`; // افتراضي
  }

  // ── /ajax/ , /tv/ , /watch/ → كلها ميتة أو JS-rendered ──────────────────
  return null;
}

async function getAnimeDaySources(
  title: string, english: string | null, ep: number,
): Promise<UnifiedSource[]> {
  const sources: UnifiedSource[] = [];
  try {
    const [animeList, serverList] = await Promise.all([
      fetchAnimeDayAnimeList(),
      fetchAnimeDayServers(),
    ]);
    if (!animeList.length || !serverList.length) return sources;

    // ── المطابقة: ابحث في second_name (يحتوي كلمات عربية وإنجليزية) ──
    const searchQ = (english || title).toLowerCase().replace(/[^a-z0-9\s]/g, " ").trim();
    let bestAnime: any = null;
    let bestScore = 0;

    for (const anime of animeList) {
      // حاول المطابقة عبر second_name (بدائل إنجليزية/عربية)
      const sn = (anime.second_name || "").toLowerCase().replace(/[^a-z0-9\s\u0600-\u06ff]/g, " ");
      // وأيضًا الاسم الرئيسي بعد حذف "الموسم/Season N"
      const nm = (anime.name || "").toLowerCase().replace(/\s*(season|الموسم)\s+\d+.*/i, "").replace(/[^a-z0-9\s\u0600-\u06ff]/g, " ").trim();
      const sc = Math.max(similarity(searchQ, sn), similarity(searchQ, nm));
      if (sc > bestScore) { bestScore = sc; bestAnime = anime; }
    }

    if (!bestAnime || bestScore < 0.38) return sources;

    // ── ابنِ prefix المطابقة حسب نوع الأنمي ───────────────────────────────
    const animeName: string = bestAnime.name || "";
    // العنوان عربي إذا بدأ بحرف عربي (لا مجرد احتواء "الموسم")
    const firstWord = animeName.split(/\s+/)[0] || "";
    const isArabic = /[\u0600-\u06FF]/.test(firstWord);

    let matchPrefix: string;
    let epStr: string;
    if (isArabic) {
      // اسم عربي مثل "جوجوتسو كايسن" — servers تطابق بـ "الحلقة N"
      // نستخدم 3 كلمات عربية على الأقل لتجنب التقاطع بين عناوين متشابهة
      const arabicWords = animeName.split(/\s+/).filter((w: string) => /[\u0600-\u06FF]/.test(w));
      matchPrefix = arabicWords.slice(0, Math.min(4, arabicWords.length)).join(" ");
      epStr = `الحلقة ${ep}`;
    } else {
      // اسم إنجليزي مثل "Regular Show" — servers: "regular show season N eps M"
      matchPrefix = animeName.toLowerCase().replace(/\s+(season|الموسم)\s+.*/i, "").trim();
      // نُحدد الـ season من الاسم (رقم عادي أو كلمة عربية)
      const arOrdinal: Record<string, number> = {
        'الأول':1,'الاول':1,'الأولى':1,'الأولي':1,
        'الثاني':2,'الثانى':2,'الثانية':2,
        'الثالث':3,'الثالثة':3,'الرابع':4,'الرابعة':4,
        'الخامس':5,'السادس':6,'السابع':7,'الثامن':8,'التاسع':9,'العاشر':10,
      };
      let season = 1;
      const digitSeason = animeName.match(/(?:season)\s+(\d+)/i);
      if (digitSeason) {
        season = parseInt(digitSeason[1], 10);
      } else {
        const arabicSeason = animeName.match(/الموسم\s+(\S+)/);
        if (arabicSeason) season = arOrdinal[arabicSeason[1]] ?? 1;
      }
      epStr = `season ${season} eps ${ep}`;
    }
    if (!matchPrefix) return sources;

    // ── فلترة السيرفرات المطابقة ───────────────────────────────────────────
    const epServers = serverList.filter((s: any) => {
      const name: string = (s.name || "").toLowerCase();
      return name.includes(matchPrefix.toLowerCase()) && name.includes(epStr.toLowerCase());
    });
    if (!epServers.length) return sources;

    // ── بناء مصادر UnifiedSource لكل سيرفر ────────────────────────────────
    const seen = new Set<string>();
    for (const server of epServers) {
      const relUrl: string = server.url || "";
      if (!relUrl || seen.has(relUrl)) continue;
      seen.add(relUrl);

      const fullUrl = animeDayResolveUrl(server);
      if (!fullUrl) continue;

      const provName = (server.name || "").split(" ").pop() || "";
      const quality  = isArabic ? "مدبلج HD" : "HD";
      const qRank    = fullUrl.includes("vidhidepro") ? 9
                     : fullUrl.includes("filemoon")   ? 8
                     : fullUrl.includes("dood")        ? 7
                     : fullUrl.includes("mixdrop")     ? 7
                     : 6;

      sources.push({
        url      : fullUrl,
        directUrl: undefined,
        quality  : `${quality} · ${provName}`,
        qualityRank: qRank,
        site     : "animeday",
        label    : `أنمي داي · ${provName}`,
      });
    }
  } catch { /* silently fail */ }
  return sources;
}


// ════════════════════════════════════════════════════════════════════
//  SEEPANEL (panel.seepanel.top) — Arabic dubbed/subbed anime + movies
//  API key + UUID hardcoded in APK (com.seedrama.orgs v4.3)
//  Sources: hlswish (streamwish), vidhideplus, uqload, hgcloud, etc.
// ════════════════════════════════════════════════════════════════════
const SEEPANEL_BASE = "https://panel.seepanel.top/api";
const SEEPANEL_KEY  = "4F5A9C3D9A86FA54EACEDDD635185";
const SEEPANEL_UUID = "d506abfd-9fe2-4b71-b979-feff21bcad13";
const seepanelSearchCache = new Map<string, { data: any; ts: number }>();
const SEEPANEL_SEARCH_TTL = 3_600_000; // 1h

async function seepanelFetch<T>(path: string): Promise<T | null> {
  try {
    const r = await fetch(
      `${SEEPANEL_BASE}/${path}/${SEEPANEL_KEY}/${SEEPANEL_UUID}/`,
      {
        headers: { "User-Agent": "okhttp/4.12.0", Accept: "application/json" },
        signal: AbortSignal.timeout(10000),
      },
    );
    if (!r.ok) return null;
    const text = await r.text();
    if (text.startsWith("<!")) return null; // HTML 404 page
    return JSON.parse(text) as T;
  } catch { return null; }
}

interface SeepanelSource {
  id: number; type: string; quality: string;
  premium: string; external: boolean; url: string;
}
interface SeepanelEpisode {
  id: number; title: string; sources: SeepanelSource[];
}
interface SeepanelSeason {
  id: number; title: string; episodes: SeepanelEpisode[];
}
interface SeepanelPoster {
  id: number; title: string; type: "serie" | "movie"; year?: number;
}
interface SeepanelSearchResult {
  posters: SeepanelPoster[];
  channels: any[];
}
interface SeepanelMovie {
  id: number; title: string; type: string; sources: SeepanelSource[];
}

async function seepanelSearch(query: string): Promise<SeepanelPoster[]> {
  const cKey = `sp:search:${query.toLowerCase()}`;
  const cached = seepanelSearchCache.get(cKey);
  if (cached && Date.now() - cached.ts < SEEPANEL_SEARCH_TTL) return cached.data;
  const data = await seepanelFetch<SeepanelSearchResult>(
    `search/${encodeURIComponent(query)}`,
  );
  const posters = data?.posters ?? [];
  seepanelSearchCache.set(cKey, { data: posters, ts: Date.now() });
  return posters;
}

function seepanelQualityRank(q: string): number {
  const u = q.toUpperCase();
  if (u.includes("1080")) return 11;
  if (u.includes("720") || u.includes("متعدد")) return 10;
  if (u.includes("480")) return 9;
  return 8;
}

// hostLabel for the source name
function seepanelHostLabel(url: string): string {
  if (url.includes("hlswish"))      return "HLSwish";
  if (url.includes("vidhideplus"))  return "VidHidePlus";
  if (url.includes("vidspeed"))     return "VidSpeed";
  if (url.includes("uqload"))       return "UQLoad";
  if (url.includes("hgcloud"))      return "HGCloud";
  if (url.includes("bigwarp"))      return "BigWarp";
  if (url.includes("filemoon"))     return "Filemoon";
  if (url.includes("1vid"))         return "1Vid";
  if (url.includes("goveed"))       return "GovEed";
  if (url.includes("vdbtm"))        return "VidBTM";
  if (url.includes("forafile"))     return "ForaFile";
  if (url.includes("okprime"))      return "OKPrime";
  return new URL(url).hostname.replace(/^www\./, "").split(".")[0];
}

// Hosts that return empty / HTML pages / are blocked from server-side extraction
const SEEPANEL_DEAD_HOSTS = [
  "wecima.video",          // dead → MPAA redirect
  "dailymotion",           // iframe-only
  "faselhds.life",         // Arabic HTML page (162 bytes), not an embed
  "goveed1.space",         // empty response from Replit
  "vdbtm.shop",            // empty response from Replit
  "okprime.site",          // 40-byte redirect/empty
  "vk.com",                // VK social media video_ext
  "hgcloud.to",            // CF-protected, blocks server-side extraction
  "vidhideplus.com",       // CF-protected, blocks server-side extraction
  "mixdrop",               // embed-only, no server extraction
];

function seepanelBuildSources(
  rawSrcs: SeepanelSource[], siteName: string, labelPrefix: string,
): UnifiedSource[] {
  const out: UnifiedSource[] = [];
  const seen = new Set<string>();
  for (const src of rawSrcs) {
    const url = src.url || "";
    if (!url || !url.startsWith("http")) continue;
    if (seen.has(url)) continue;
    seen.add(url);
    if (SEEPANEL_DEAD_HOSTS.some(h => url.includes(h))) continue;
    try {
      out.push({
        name: `${labelPrefix} · ${seepanelHostLabel(url)} · ${src.quality}`,
        url,
        quality: src.quality,
        qualityRank: seepanelQualityRank(src.quality),
        site: siteName,
      });
    } catch { /* bad URL */ }
  }
  return out;
}

// Extract episode sources from a known SeePanal serie ID
async function seepanelGetEpSources(
  poster: SeepanelPoster, ep: number, labelPrefix: string,
): Promise<UnifiedSource[]> {
  if (poster.type === "movie") {
    const movie = await seepanelFetch<SeepanelMovie>(`movie/by/${poster.id}`);
    if (!movie?.sources?.length) return [];
    return seepanelBuildSources(movie.sources, "seepanel", labelPrefix);
  }

  const seasons = await seepanelFetch<SeepanelSeason[]>(
    `season/by/serie/${poster.id}`,
  );
  if (!seasons?.length) return [];

  const activeSeasons = seasons
    .filter(s => !s.title.includes("قريبا") && s.episodes.some(e => e.sources?.length))
    .sort((a, b) => a.id - b.id);

  // First pass: match by episode number embedded in title (e.g. "الحلقة : 800" or "الحلقة 800")
  const EP_NUM_RE = /الحلقة\s*:?\s*(\d+)/;
  for (const season of activeSeasons) {
    for (const episode of season.episodes) {
      if (!episode.sources?.length) continue;
      const m = EP_NUM_RE.exec(episode.title ?? "");
      if (m && parseInt(m[1], 10) === ep) {
        return seepanelBuildSources(
          episode.sources, "seepanel",
          `${labelPrefix} · ${season.title}`,
        );
      }
    }
  }

  // Second pass: fallback to global sequential index (works for series stored in order, e.g. DBZ)
  let globalIdx = 0;
  for (const season of activeSeasons) {
    for (const episode of season.episodes) {
      if (!episode.sources?.length) continue;
      globalIdx++;
      if (globalIdx === ep) {
        return seepanelBuildSources(
          episode.sources, "seepanel",
          `${labelPrefix} · ${season.title}`,
        );
      }
    }
  }
  return [];
}

async function getSeepanelSources(
  title: string, english: string | null, ep: number,
): Promise<UnifiedSource[]> {
  try {
    const queries = [title, english].filter(Boolean) as string[];
    const seen = new Set<number>();
    // Map: posterId → score
    const candidates: Array<{ poster: SeepanelPoster; score: number }> = [];

    for (const q of queries) {
      const posters = await seepanelSearch(q);
      for (const p of posters) {
        if (seen.has(p.id)) continue;
        seen.add(p.id);
        const spTitle = p.title.replace(/\s*-\s*[\u0600-\u06ff].*$/u, "").trim();
        const spLow = spTitle.toLowerCase();
        const tLow  = title.toLowerCase();
        const eLow  = english?.toLowerCase() ?? "";
        const score = Math.max(
          similarity(tLow, spLow),
          eLow ? similarity(eLow, spLow) : 0,
          asciiSimilarity(spTitle, title),
          eLow ? asciiSimilarity(spTitle, english!) : 0,
          // Substring bonus: if the search title appears inside the SeePanal title
          // (e.g. "one piece" inside "Anime One Piece Egghead Saga Arc") → 0.55
          (spLow.includes(tLow) || (eLow && spLow.includes(eLow))) ? 0.55 : 0,
        );
        if (score >= 0.35) candidates.push({ poster: p, score });
      }
    }

    if (!candidates.length) return [];

    // Sort: highest similarity first; ties → prefer serie over movie (more likely to have ep)
    candidates.sort((a, b) =>
      b.score !== a.score ? b.score - a.score :
      (a.poster.type === "serie" ? -1 : 1),
    );

    // Try each candidate — return the first that has the requested episode
    // For ep > 1, skip movie-type posters (they only have 1 episode)
    const filtered = ep > 1
      ? candidates.filter(c => c.poster.type !== "movie")
      : candidates;

    for (const { poster } of filtered.slice(0, 6)) {
      const srcs = await seepanelGetEpSources(
        poster, ep, `SeePanal · مدبلج`,
      );
      if (srcs.length > 0) return srcs;
    }
    return [];
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  ARABSEED (m.asd.ink) — Arabic dubbed/subbed anime (مدبلج/مترجم)
//  WordPress site — mirror of m.arabseed.show
//  Search:  GET /wp-json/wp/v2/posts?search={title}+الحلقة+{ep}&per_page=10
//           → episode posts with "الحلقة N" in title (exact URL per ep)
//  Servers: POST /get__quality__servers/ → server list HTML
//           POST /get__watch__server/    → embed URL per server index
//  Server 0: m.reviewrate.net → <source src> direct MP4 via video-proxy
// ════════════════════════════════════════════════════════════════════
const ARABSEED_BASE = "https://m.asd.ink";
const ARABSEED_HDRS: Record<string, string> = {
  ...BASE_HDRS,
  "Referer": `${ARABSEED_BASE}/`,
  "Origin": ARABSEED_BASE,
};

type ArabseedPost = { id: number; link: string; title: { rendered: string } };

function arabseedDecodeTitle(raw: string): string {
  return raw.replace(/&#(\d+);/g, (_, n) => String.fromCharCode(+n))
            .replace(/&amp;/g, "&").replace(/&lt;/g, "<").replace(/&gt;/g, ">");
}

async function arabseedFetchPosts(params: string): Promise<ArabseedPost[]> {
  const url = `${ARABSEED_BASE}/wp-json/wp/v2/posts?${params}&_fields=id,link,title`;
  try {
    const r = await fetch(url, {
      headers: { "User-Agent": BROWSER_UA, Accept: "application/json" },
      signal: AbortSignal.timeout(10000),
    });
    if (!r.ok) return [];
    const data = await r.json() as ArabseedPost[];
    return Array.isArray(data) ? data : [];
  } catch { return []; }
}

/** Find the direct episode page URL via WP REST API.
 *  Three parallel search strategies to cover all episode ranges:
 *  1. Targeted: "{title} الحلقة {ep}" — best for mid-range eps
 *  2. ASC date order: oldest first — covers ep 1-100
 *  3. DESC date order: newest first — covers last 100 eps */
async function arabseedFindEpisodeUrl(q: string, ep: number): Promise<string | null> {
  const EP_RE = /الحلقة\s+(\d+)/;
  const qWords = q.toLowerCase().split(/\s+/).filter(w => w.length > 2);

  function matchEp(posts: ArabseedPost[]): string | null {
    for (const post of posts) {
      const title = arabseedDecodeTitle(post.title?.rendered || "");
      const epM   = EP_RE.exec(title);
      if (!epM || parseInt(epM[1], 10) !== ep) continue;
      const titleLow = title.toLowerCase();
      if (qWords.some(w => titleLow.includes(w))) return post.link;
    }
    return null;
  }

  const enc = encodeURIComponent(q);
  // Run all three searches in parallel
  const [targeted, asc, desc] = await Promise.all([
    arabseedFetchPosts(`search=${encodeURIComponent(q + " الحلقة " + ep)}&per_page=20`),
    arabseedFetchPosts(`search=${enc}&per_page=100&orderby=date&order=asc`),
    arabseedFetchPosts(`search=${enc}&per_page=100&orderby=date&order=desc`),
  ]);

  // Try targeted first (most precise), then asc (early eps), then desc (recent)
  return matchEp(targeted) ?? matchEp(asc) ?? matchEp(desc) ?? null;
}

async function getArabSeedSources(
  title: string, english: string | null, ep: number,
): Promise<UnifiedSource[]> {
  try {
    // Try English title first (most reliable), then romaji
    const queries = [english, title].filter((q): q is string => !!q && q.trim().length > 0);
    let epUrl: string | null = null;
    for (const q of queries) {
      epUrl = await arabseedFindEpisodeUrl(q, ep);
      if (epUrl) break;
    }
    if (!epUrl) return [];

    // Fetch episode page → extract psot_id and csrf_token
    const epHtml = await cfGet(epUrl, { ...ARABSEED_HDRS, "Referer": `${ARABSEED_BASE}/` });
    if (!epHtml) return [];

    // psot_id: object__info = {'psot_id': '12345'} or psot_id: "12345"
    const psotMatch = epHtml.match(/psot_id['"]?\s*[:']\s*['"](\d+)['"]/i);
    if (!psotMatch) return [];
    const psotId = psotMatch[1];

    // csrf__token: main__obj = {'csrf__token': "87c547ce81"} — typically ~10 hex chars
    const csrfMatch = epHtml.match(/csrf[_]{1,2}token['"]?\s*[:']\s*["']([a-zA-Z0-9_/-]{4,80})["']/i);
    if (!csrfMatch) return [];
    const csrf = csrfMatch[1];

    const ajaxHdrs: Record<string, string> = {
      ...ARABSEED_HDRS,
      "Content-Type": "application/x-www-form-urlencoded",
      "X-Requested-With": "XMLHttpRequest",
      "Referer": epUrl,
    };

    // POST /get__quality__servers/ → {html: serverButtonsHtml, server: firstEmbedUrl}
    let serverIndices: number[] = [];
    let firstEmbedUrl = "";
    try {
      const qRes = await fetch(`${ARABSEED_BASE}/get__quality__servers/`, {
        method: "POST",
        headers: ajaxHdrs,
        body: new URLSearchParams({ post_id: psotId, quality: "1080", csrf_token: csrf }).toString(),
        signal: AbortSignal.timeout(10000),
      });
      if (qRes.ok) {
        const qData = await qRes.json() as { html?: string; server?: string };
        firstEmbedUrl = qData.server || "";
        const btnHtml = qData.html || "";
        for (const m of btnHtml.matchAll(/data-server=["'](\d+)["']/gi)) {
          const idx = parseInt(m[1], 10);
          if (!serverIndices.includes(idx)) serverIndices.push(idx);
        }
      }
    } catch { /* use fallback indices */ }

    if (!serverIndices.length) serverIndices = [0, 1, 2, 3, 4];

    const sources: UnifiedSource[] = [];

    await Promise.allSettled(serverIndices.slice(0, 5).map(async (serverIdx) => {
      try {
        // POST /get__watch__server/ → {type, server: embedUrl}
        const sRes = await fetch(`${ARABSEED_BASE}/get__watch__server/`, {
          method: "POST",
          headers: ajaxHdrs,
          body: new URLSearchParams({
            post_id: psotId, quality: "1080",
            server: String(serverIdx), csrf_token: csrf,
          }).toString(),
          signal: AbortSignal.timeout(9000),
        });
        if (!sRes.ok) return;
        const sData = await sRes.json() as { type?: string; server?: string };
        const embedUrl: string = sData.server || (serverIdx === 0 ? firstEmbedUrl : "");
        if (!embedUrl || !embedUrl.startsWith("http")) return;

        // Skip dead/blocked servers
        if (embedUrl.includes("luluvid")) return;

        const srvLabel = `عرب سيد · سيرفر ${serverIdx + 1} · 1080p FHD`;

        // m.reviewrate.net → extract <source src="..."> → direct MP4 via video-proxy
        if (embedUrl.includes("reviewrate.net")) {
          const rvHtml = await fetch(embedUrl, {
            headers: { ...ARABSEED_HDRS, "Referer": epUrl! },
            signal: AbortSignal.timeout(8000),
          }).then(r2 => r2.ok ? r2.text() : "").catch(() => "");
          const srcMatch = rvHtml.match(/<source\b[^>]*src=["'](https?:\/\/[^"']+)["']/i);
          if (srcMatch) {
            const mp4Url = srcMatch[1];
            const proxied = `/api/anime/video-proxy?url=${encodeURIComponent(mp4Url)}&ref=${encodeURIComponent(embedUrl)}`;
            sources.push({
              name: `عرب سيد · ReviewRate · 1080p FHD · مترجم عربي`,
              url: mp4Url, quality: "1080p", qualityRank: 12,
              site: "arabseed", directUrl: proxied, directType: "mp4",
            });
          }
          return;
        }

        // vidmoly من عرب سيد → يُحذف كلياً (بناءً على طلب المستخدم)
        if (VIDMOLY_HOSTS.some(h => embedUrl.includes(h))) return;

        // vidaraa / bysezejataos / other → push for extractAndCollect
        sources.push({
          name: `${srvLabel} · مترجم عربي`,
          url: embedUrl, quality: "1080p", qualityRank: 10,
          site: "arabseed",
        });
      } catch { /* skip failing server */ }
    }));

    return sources;
  } catch { return []; }
}


// ════════════════════════════════════════════════════════════════════
//  TMDB-native sources for anime (Videasy / VidLink / LordFlix / Vyla / StarCima)
//  Each uses TMDB TV ID resolved from the English title via TMDB search.
//  These same sources were confirmed working with anime in animation tests.
// ════════════════════════════════════════════════════════════════════

// Simple in-memory cache for TMDB ID lookups (6h TTL)
const animeTmdbCache = new Map<string, { id: number | null; ts: number }>();
const ANIME_TMDB_TTL = 6 * 60 * 60 * 1000;
const TMDB_KEY_ANIME = "8265bd1679663a7ea12ac168da84d2e8";

async function fetchAnimeTmdbId(english: string | null, romaji: string): Promise<number | null> {
  const query = (english || romaji || "").trim();
  if (!query) return null;
  const cKey = query.toLowerCase();
  const hit = animeTmdbCache.get(cKey);
  if (hit && Date.now() - hit.ts < ANIME_TMDB_TTL) return hit.id;

  // Try English title first, then romaji
  const attempts = [english, romaji].filter((v): v is string => !!v && v.trim().length > 0);
  for (const q of attempts) {
    try {
      const r = await fetch(
        `https://api.themoviedb.org/3/search/tv?api_key=${TMDB_KEY_ANIME}&query=${encodeURIComponent(q)}&language=en`,
        { headers: { "User-Agent": BROWSER_UA }, signal: AbortSignal.timeout(8_000) },
      );
      if (!r.ok) continue;
      const data = await r.json() as { results?: Array<{ id: number; name: string }> };
      const id = data.results?.[0]?.id ?? null;
      if (id) {
        animeTmdbCache.set(cKey, { id, ts: Date.now() });
        return id;
      }
    } catch { continue; }
  }
  animeTmdbCache.set(cKey, { id: null, ts: Date.now() });
  return null;
}

// ── Videasy anime sources (api.videasy.to, TMDB-native multi-quality HLS) ──
async function getVideasyAnimeSources(title: string, english: string | null, ep: number): Promise<UnifiedSource[]> {
  const tmdbId = await fetchAnimeTmdbId(english, title);
  if (!tmdbId) return [];
  const sources: UnifiedSource[] = [];
  const encTitle = encodeURIComponent(encodeURIComponent(english || title));
  const VEA_HDRS = {
    "User-Agent": BROWSER_UA,
    "Accept": "application/json, */*; q=0.01",
    "Referer": "https://player.videasy.to/",
    "Origin": "https://player.videasy.to",
  };
  await Promise.allSettled(["mb-flix", "cdn"].map(async (server) => {
    try {
      const params = `title=${encTitle}&mediaType=tv&year=&tmdbId=${tmdbId}&imdbId=&episodeId=${ep}&seasonId=1`;
      const r = await fetch(`https://api.videasy.to/${server}/sources-with-title?${params}`,
        { headers: VEA_HDRS, signal: AbortSignal.timeout(12_000) });
      if (!r.ok) return;
      const blob = await r.text();
      if (!blob || blob.length < 20) return;

      // Try decryption — downloader2 may use a different key derivation:
      // attempt 1: with tmdbId, attempt 2: with empty id (fallback for downloader2)
      const tryDecrypt = async (id: string) =>
        fetch("https://enc-dec.app/api/dec-videasy", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ text: blob, id, server }),
          signal: AbortSignal.timeout(10_000),
        }).then(r2 => r2.ok ? r2.json() : null).catch(() => null) as
        Promise<{ status: number; result?: { sources?: any[]; subtitles?: any[] } } | null>;

      let dec = await tryDecrypt(String(tmdbId));
      if (!dec || dec.status !== 200 || !dec.result?.sources?.length) {
        // Fallback for downloader2: try without id
        dec = await tryDecrypt("");
      }
      if (!dec || dec.status !== 200 || !dec.result?.sources) return;

      const araSub = (dec.result.subtitles ?? []).find((s: any) => s.lang === "ara" || s.lang === "ar");
      for (const src of (dec.result.sources ?? [])) {
        if (!src?.url) continue;
        const q = src.quality || "HD";
        const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(src.url)}&ref=${encodeURIComponent("https://player.videasy.to/")}`;
        sources.push({ name: `Videasy · ${server} · ${q}`, url: proxied, quality: q, qualityRank: 10, site: "videasy_anim", directUrl: proxied, directType: "hls", ...(araSub?.url ? { subtitleUrl: araSub.url } : {}) });
      }
    } catch { /* silent per server */ }
  }));
  return sources;
}

// ── VidLink via enc-dec.app (TMDB-native, auth-token IP-tied → hls-proxy) ──
async function getVidLinkAnimeSources(title: string, english: string | null, ep: number): Promise<UnifiedSource[]> {
  const tmdbId = await fetchAnimeTmdbId(english, title);
  if (!tmdbId) return [];
  try {
    const encR = await fetch(`https://enc-dec.app/api/enc-vidlink?text=${tmdbId}`,
      { headers: { "User-Agent": BROWSER_UA }, signal: AbortSignal.timeout(8_000) });
    if (!encR.ok) return [];
    const encData = await encR.json() as { status: number; result?: string };
    if (encData.status !== 200 || !encData.result) return [];
    const vlUrl = `https://vidlink.pro/api/b/tv/${encData.result}/1/${ep}`;
    const vlR = await fetch(vlUrl, {
      headers: { "User-Agent": BROWSER_UA, "Origin": "https://vidlink.pro", "Referer": "https://vidlink.pro/" },
      signal: AbortSignal.timeout(12_000),
    });
    if (!vlR.ok) return [];
    const vlData = await vlR.json() as { stream?: { playlist?: string; captions?: any[] } };
    const hlsUrl = vlData.stream?.playlist;
    if (!hlsUrl) return [];
    const araCap = (vlData.stream?.captions ?? []).find((c: any) => c.language === "ara" || c.language === "ar");
    const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(hlsUrl)}&ref=${encodeURIComponent("https://vidlink.pro/")}`;
    return [{ name: "VidLink · HLS", url: proxied, quality: "HD", qualityRank: 9, site: "vidlink_anim", directUrl: proxied, directType: "hls", ...(araCap?.url ? { subtitleUrl: araCap.url } : {}) }];
  } catch { return []; }
}

// ── LordFlix (snowhouse.lordflix.club, enc-dec.app, CDN Referer: lordflix.org) ──
async function getLordFlixAnimeSources(title: string, english: string | null, ep: number): Promise<UnifiedSource[]> {
  const tmdbId = await fetchAnimeTmdbId(english, title);
  if (!tmdbId) return [];
  const engTitle = (english || title).trim();
  try {
    const lfUrl = `https://snowhouse.lordflix.club/?title=${encodeURIComponent(engTitle)}&type=series&year=&imdb=&tmdb=${tmdbId}&server=Orion&season=1&episode=${ep}`;
    const encLfR = await fetch(`https://enc-dec.app/api/enc-lordflix?url=${encodeURIComponent(lfUrl)}`,
      { headers: { "User-Agent": BROWSER_UA }, signal: AbortSignal.timeout(10_000) }).then(r => r.json()) as { status: number; result?: { url: string; sign: string } };
    if (encLfR.status !== 200 || !encLfR.result?.url) return [];
    const { url: encUrl, sign } = encLfR.result;
    const encResp = await fetch(encUrl, {
      headers: { "User-Agent": BROWSER_UA, "Origin": "https://lordflix.org", "Referer": "https://lordflix.org/", "Accept": "*/*" },
      signal: AbortSignal.timeout(15_000),
    }).then(r => r.text());
    if (!encResp || encResp.length < 20) return [];
    const decR = await fetch("https://enc-dec.app/api/dec-lordflix", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ text: encResp, sign }),
      signal: AbortSignal.timeout(10_000),
    }).then(r => r.json()) as { status: number; result?: { stream?: any[]; captions?: any[] } };
    if (decR.status !== 200 || !decR.result?.stream?.length) return [];
    const araCap = (decR.result.captions ?? []).find((c: any) => String(c.id || "").includes("ar") || String(c.language || "").match(/^ar/i));
    const sources: UnifiedSource[] = [];
    for (const st of decR.result.stream) {
      const hlsUrl = st?.playlist || "";
      if (!hlsUrl || st?.type !== "hls") continue;
      const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(hlsUrl)}&ref=${encodeURIComponent("https://lordflix.org/")}`;
      sources.push({ name: `LordFlix · ${st.id || "primary"}`, url: proxied, quality: "HD", qualityRank: 9, site: "lordflix_anim", directUrl: proxied, directType: "hls", ...(araCap?.url ? { subtitleUrl: araCap.url } : {}) });
    }
    return sources;
  } catch { return []; }
}

// ── Vyla SSE (missourimonster-vyla.hf.space, TMDB TV with season=1) ──
async function getVylaAnimeSources(title: string, english: string | null, ep: number): Promise<UnifiedSource[]> {
  const tmdbId = await fetchAnimeTmdbId(english, title);
  if (!tmdbId) return [];
  const VYLA_BASE = "https://missourimonster-vyla.hf.space";
  const sources: UnifiedSource[] = [];
  try {
    const sseUrl = `${VYLA_BASE}/api/tv?id=${tmdbId}&season=1&episode=${ep}`;
    const r = await fetch(sseUrl, {
      headers: { "User-Agent": BROWSER_UA, "Accept": "text/event-stream" },
      signal: AbortSignal.timeout(22_000),
    });
    if (!r.ok || !r.body) return [];
    const reader = r.body.getReader();
    const dec = new TextDecoder();
    let buf = "";
    let provIdx = 0;
    const seen = new Set<string>();
    outer: while (true) {
      const { done, value } = await reader.read();
      if (done) break;
      buf += dec.decode(value, { stream: true });
      const lines = buf.split("\n");
      buf = lines.pop() ?? "";
      for (const rawLine of lines) {
        const line = rawLine.trim();
        if (!line.startsWith("data:")) continue;
        try {
          const d = JSON.parse(line.slice(5).trim()) as any;
          if (d.type === "source") {
            const proxyUrl: string = d.source?.url || "";
            if (!proxyUrl) continue;
            // deduplicate by inner URL
            let innerUrl = proxyUrl;
            try { const pu = new URL(proxyUrl); const enc = pu.searchParams.get("url"); if (enc) innerUrl = enc; } catch {}
            if (!innerUrl || seen.has(innerUrl)) continue;
            seen.add(innerUrl);
            // Quick probe
            const ok = await fetch(proxyUrl, { method: "HEAD", headers: { "User-Agent": BROWSER_UA, "Origin": "https://www.netflix.com" }, signal: AbortSignal.timeout(5_000) }).then(r => r.ok).catch(() => false);
            if (!ok) continue;
            const provLabel = d.source?.provider ? `Vyla · ${d.source.provider}` : `Vyla · ${++provIdx}`;
            sources.push({ name: provLabel, url: proxyUrl, quality: "HD", qualityRank: 9, site: "vyla_anim", directUrl: proxyUrl });
          } else if (d.type === "done" || d.type === "end") { break outer; }
        } catch {}
      }
    }
    reader.cancel().catch(() => {});
  } catch {}
  return sources;
}

// ── StarCima vidzee (TMDB-native, direct HLS CDN) ──
async function getStarCimaAnimeSources(title: string, english: string | null, ep: number): Promise<UnifiedSource[]> {
  const tmdbId = await fetchAnimeTmdbId(english, title);
  if (!tmdbId) return [];
  const SC_BASE = "https://starcima.com";
  const SC_VIDZEE = `${SC_BASE}/api/vidzee`;
  const SC_REF_HLS = "https://player.vidzee.wtf/";
  const watchRef = `${SC_BASE}/watch/${tmdbId}?type=tv`;
  const scHeaders = {
    "User-Agent": BROWSER_UA,
    "Referer": watchRef,
    "Origin": SC_BASE,
    "Accept": "application/json",
    "Accept-Language": "ar,en;q=0.9",
  };
  try {
    const r = await fetch(
      `${SC_VIDZEE}?tmdbId=${tmdbId}&type=tv&title=${encodeURIComponent(title)}&season=1&episode=${ep}`,
      { headers: scHeaders, signal: AbortSignal.timeout(18_000) },
    );
    if (!r.ok) return [];
    const data: any = await r.json();
    const servers: any[] = data.servers || [];
    if (!servers.length) return [];
    const PROBE_PORT = parseInt(String(process.env.PORT || 8080), 10);
    const prepared = servers
      .filter((srv: any) => !!srv.url)
      .map((srv: any) => {
        let rawUrl = String(srv.url);
        let referer = SC_REF_HLS;
        if (rawUrl.includes(`${SC_BASE}/cdn/?`)) {
          try { const pu = new URL(rawUrl); rawUrl = pu.searchParams.get("url") || rawUrl; referer = pu.searchParams.get("referer") || SC_REF_HLS; } catch {}
        }
        const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(rawUrl)}&ref=${encodeURIComponent(referer)}`;
        return { proxied, rawUrl, label: `StarCima · ${srv.name || "HD"}` };
      });
    const probeResults = await Promise.allSettled(
      prepared.map(async ({ proxied, rawUrl, label }) => {
        try {
          const pr = await fetch(`http://127.0.0.1:${PROBE_PORT}${proxied}`, { signal: AbortSignal.timeout(6_000) });
          return { proxied, rawUrl, label, ok: pr.ok || pr.status === 206 };
        } catch { return { proxied, rawUrl, label, ok: false }; }
      }),
    );
    return probeResults
      .filter((r): r is PromiseFulfilledResult<{ proxied: string; rawUrl: string; label: string; ok: boolean }> => r.status === "fulfilled")
      .map(r => {
        const { proxied, rawUrl, label, ok } = r.value;
        const finalUrl = ok ? proxied : rawUrl;
        return { name: label, url: finalUrl, quality: "HD", qualityRank: 9, site: "starcima_anim", directUrl: ok ? rawUrl : rawUrl, directType: "hls" as const };
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
    const SCRAPER_MS = 12000;
    const EXTRACT_MS = 15000;
    const race = <T>(p: Promise<T>, ms: number, fallback: T) =>
      Promise.race([p, new Promise<T>(r => setTimeout(() => r(fallback), ms))]);

    // ── مساعد: probe سريع للمصادر عبر proxy الداخلي ──
    const PORT_NUM = parseInt(String(process.env.PORT || 8080), 10);
    async function probeOwnProxy(s: UnifiedSource): Promise<boolean> {
      const cu = s.directUrl || s.url;
      if (!cu.startsWith("/api/")) return true; // روابط خارجية: نثق بها
      const localUrl = `http://127.0.0.1:${PORT_NUM}${cu}`;
      try {
        const pr = await fetch(localUrl, { signal: AbortSignal.timeout(6_000) });
        return pr.ok; // 200 أو 206
      } catch { return false; }
    }

    async function probeAndFilter(srcs: UnifiedSource[]): Promise<UnifiedSource[]> {
      const results = await Promise.allSettled(
        srcs.map(async s => ({ s, ok: await probeOwnProxy(s) }))
      );
      return results
        .filter((r): r is PromiseFulfilledResult<{ s: UnifiedSource; ok: boolean }> =>
          r.status === "fulfilled")
        .filter(r => r.value.ok)
        .map(r => r.value.s);
    }

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

        // تجديد خلفي إذا اقترب الانتهاء أو انتهى فعلاً (stale-while-revalidate)
        if (hit.stale || shouldRefreshCache(hit.expiresAt)) {
          setImmediate(async () => {
            try {
              const srcs = await race(scrape(), SCRAPER_MS, []);
              if (!srcs.length) return;
              if (useExtract) {
                const buf: UnifiedSource[] = [];
                await extractAndCollect(srcs, buf, new Set<string>(), EXTRACT_MS);
                if (buf.length) {
                  await setSourceCache(cKey, site, buf);
                  // أرسل المصادر الجديدة للاتصال المفتوح إن وُجد
                  if (!closed) buf.forEach(s => sendSrc(s));
                }
              } else {
                const alive = await probeAndFilter(srcs);
                if (alive.length) {
                  await setSourceCache(cKey, site, alive);
                  if (!closed) alive.forEach(s => sendSrc(s));
                }
              }
            } catch {}
          });
        }
        return; // لا حاجة للانتظار
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
        // إرسال فوري بدون انتظار الـ probe — يظهر في الواجهة فوراً
        if (!closed) srcs.forEach(s => sendSrc(s));
        // Probe في الخلفية لبناء cache دقيق فقط
        probeAndFilter(srcs).then(async alive => {
          if (alive.length) await setSourceCache(cKey, site, alive);
        }).catch(() => {});
      }
    }

    // جميع الكاشطات تعمل بالتوازي
    await Promise.allSettled([
      // ── مصادر عربية مدبلجة / مترجمة ──────────────────────────────
      scrapeCached("shahiid",      () => getShahiidSources(title, english, ep)),
      scrapeCached("animelek",     () => getAnimelekSources(title, english, ep)),
      scrapeCached("animedar",     () => getAnimadarSources(title, english, ep)),
      scrapeCached("okanime",      () => getOkAnimeSources(title, english, ep)),
      scrapeCached("ristoanime",   () => getRistoAnimeSources(title, english, ep)),
      scrapeCached("animeify",     () => getAnimeifySources(title, english, ep),  false),
      scrapeCached("animeday",     () => getAnimeDaySources(title, english, ep)),
      scrapeCached("seepanel",     () => getSeepanelSources(title, english, ep)),
      scrapeCached("arabseed",     () => getArabSeedSources(title, english, ep)),
      // ── ياباني مترجم (AniList ID) ─────────────────────────────────
      scrapeCached("kawaii",       () => getKawaiiAnimeSources(title, english, ep, anilistId), false),
      scrapeCached("anikoto",      () => getAniKotoSources(title, english, ep, anilistId),      false),
      // animepahe: mirurotvapi + owocdn AES-128 HLS — 18ث timeout — ثقيل
      scrapeCached("anineko",      () => getAninekoSources(title, english, ep),                 false),
      scrapeCached("animewitcher", () => getAnimeWitcherSources(title, english, ep, anilistId), false),
      // ── ياباني مترجم (بدون ID) ────────────────────────────────────
      scrapeCached("mitanime",     () => getMitanimeSources(title, english, ep),  false),
      scrapeCached("animephoenix", () => getAnimePhoenixSources(title, english, ep)),
      // ── StarCima — TMDB-native ياباني (CDN: phim1280.tv/dzink418hun → صوت ياباني ✅) ──
      scrapeCached("starcima_anim", () => getStarCimaAnimeSources(title, english, ep), false),
      // ── معطّلة: Videasy/VidLink/LordFlix/Vyla — CDN غربي → إنجليزي فقط ❌ ──────────
      // videasy_anim / vidlink_anim / lordflix_anim / vyla_anim محذوفة من قسم الأنمي
      // ── معطّلة / محذوفة ────────────────────────────────────────────
      // toonstream:   للأنيميشن فقط، غير مناسب للأنمي
      // witanime:     CF IP block حقيقي، curl_cffi لا تنفع
      // anime3rb:     CF IP block حقيقي، curl_cffi لا تنفع
      // animetime:    جميع روابط CDN ميتة
      // animehub:     ترجمة إنجليزية مدمجة في الفيديو
      // animegg:      معطّل بطلب المستخدم
      // allmanga:     clock.json→500, fast4speed→401
      // reanime:      FlixCloud يبلوك Replit IP
      // animepahe:    mirurotvapi + owocdn AES-128 HLS — 18ث timeout — ثقيل جداً في التشغيل
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

  // ── فحص الكاش أولاً ─────────────────────────────────────────────
  const cKey = makeSourceCacheKey(site, title, ep);
  const cached = await getFromSourceCache(cKey);
  if (cached && !shouldRefreshCache(cached.expiresAt)) {
    res.json({ sources: cached.sources, fromCache: true });
    return;
  }

  const SCRAPER_MS = 20000;
  const EXTRACT_MS = 15000;
  const race = <T>(p: Promise<T>, ms: number, fallback: T) =>
    Promise.race([p, new Promise<T>(r => setTimeout(() => r(fallback), ms))]);

  const seen    = new Set<string>();
  const sources: UnifiedSource[] = [];

  function collectSrc(s: UnifiedSource) {
    if (!s.directUrl && !s.isEmbed) return;
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

  // scrapers that use probe-only (no deep extraction)
  const probeOnly = new Set(["animeify","kawaii","anikoto","animewitcher","anineko","mitanime"]);

  try {
    switch (site) {
      case "shahiid":      await runExtract(await race(getShahiidSources(title, english, ep),    SCRAPER_MS, [])); break;
      case "animelek":     await runExtract(await race(getAnimelekSources(title, english, ep),   SCRAPER_MS, [])); break;
      case "animedar":     await runExtract(await race(getAnimadarSources(title, english, ep),   SCRAPER_MS, [])); break;
      case "okanime":      await runExtract(await race(getOkAnimeSources(title, english, ep),    SCRAPER_MS, [])); break;
      case "ristoanime":   await runExtract(await race(getRistoAnimeSources(title, english, ep), SCRAPER_MS, [])); break;
      case "animeify":    (await race(getAnimeifySources(title, english, ep),  SCRAPER_MS, [])).forEach(collectSrc); break;
      case "animeday":     await runExtract(await race(getAnimeDaySources(title, english, ep),   SCRAPER_MS, [])); break;
      case "seepanel":     await runExtract(await race(getSeepanelSources(title, english, ep),   SCRAPER_MS, [])); break;
      case "arabseed":     await runExtract(await race(getArabSeedSources(title, english, ep),   SCRAPER_MS, [])); break;
      case "kawaii":      (await race(getKawaiiAnimeSources(title, english, ep, anilistId), SCRAPER_MS, [])).forEach(collectSrc); break;
      case "anikoto":     (await race(getAniKotoSources(title, english, ep, anilistId),     SCRAPER_MS, [])).forEach(collectSrc); break;
      case "animewitcher":(await race(getAnimeWitcherSources(title, english, ep, anilistId),SCRAPER_MS, [])).forEach(collectSrc); break;
      case "anineko":       (await race(getAninekoSources(title, english, ep),                SCRAPER_MS, [])).forEach(collectSrc); break;
      case "mitanime":      (await race(getMitanimeSources(title, english, ep),               SCRAPER_MS, [])).forEach(collectSrc); break;
      case "animephoenix":  await runExtract(await race(getAnimePhoenixSources(title, english, ep), SCRAPER_MS, [])); break;
      // ── StarCima — TMDB-native (CDN ياباني ✅) ───────────────────────────────
      case "starcima_anim": (await race(getStarCimaAnimeSources(title, english, ep), SCRAPER_MS, [])).forEach(collectSrc); break;
      // videasy_anim / vidlink_anim / lordflix_anim / vyla_anim: CDN غربي → إنجليزي → محذوفة
      default: break;
    }

    // ── حفظ في الكاش بعد الكشط ──────────────────────────────────
    if (sources.length) {
      setSourceCache(cKey, site, sources).catch(() => {});
    }

    res.json({ sources });
  } catch (e: any) {
    res.status(500).json({ error: e?.message ?? String(e), sources: [] });
  }
});


// ════════════════════════════════════════════════════════════════════
//  Check Arabic availability  GET /api/anime/check-arabic?t[]=title1&t[]=title2
// ════════════════════════════════════════════════════════════════════
const _arabicCheckCache = new Map<string, { time: number; ok: boolean }>();
const ARABIC_CACHE_TTL = 12 * 3600 * 1000; // 12h

router.get("/anime/check-arabic", async (req, res) => {
  const raw = req.query.t;
  const titles: string[] = Array.isArray(raw) ? (raw as string[]) : raw ? [raw as string] : [];
  if (!titles.length) { res.json({ available: [] }); return; }
  const now = Date.now();
  const results = await Promise.all(
    titles.map(async (t) => {
      const key = t.toLowerCase().trim();
      const cached = _arabicCheckCache.get(key);
      if (cached && now - cached.time < ARABIC_CACHE_TTL) return { t, ok: cached.ok };
      try {
        const resp = await fetch("https://shahiid-anime.net/wp-admin/admin-ajax.php", {
          method: "POST",
          headers: { "Content-Type": "application/x-www-form-urlencoded", "User-Agent": BROWSER_UA, "Referer": "https://shahiid-anime.net/" },
          body: `action=data_fetch&keyword=${encodeURIComponent(t)}`,
          signal: AbortSignal.timeout(3500),
        });
        const json = await resp.json().catch(() => []) as any[];
        const ok = Array.isArray(json) && json.length > 0;
        _arabicCheckCache.set(key, { time: now, ok });
        return { t, ok };
      } catch {
        return { t, ok: false };
      }
    })
  );
  res.json({ available: results.filter(r => r.ok).map(r => r.t) });
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
//  aniskip-proxy  GET /api/anime/aniskip?malId=&ep=
// ════════════════════════════════════════════════════════════════════
//  AniList GraphQL proxy (avoids CORS issues from browser)
// ════════════════════════════════════════════════════════════════════
router.post("/anime/anilist", async (req, res) => {
  const { query, variables } = req.body || {};
  if (!query) { res.status(400).json({ error: "query required" }); return; }
  try {
    const r = await fetch("https://graphql.anilist.co", {
      method: "POST",
      headers: { "Content-Type": "application/json", "Accept": "application/json" },
      body: JSON.stringify({ query, variables }),
      signal: AbortSignal.timeout(14_000),
    });
    if (!r.ok) { res.status(r.status).json({ error: "AniList error" }); return; }
    const data = await r.json();
    res.json(data);
  } catch (e) {
    res.status(500).json({ error: String(e) });
  }
});

// ════════════════════════════════════════════════════════════════════
//  Proxies AniSkip API to avoid CORS/network issues from browser
// ════════════════════════════════════════════════════════════════════
// ════════════════════════════════════════════════════════════════════
//  ep-title  GET /api/anime/ep-title?malId=&ep=
//  يجلب عنوان الحلقة من Jikan (MyAnimeList) عندما يكون AniList فارغاً
// ════════════════════════════════════════════════════════════════════
const epTitleCache = new Map<string, { title: string; ts: number }>();
router.get("/anime/ep-title", async (req, res) => {
  const malId = String(req.query.malId || "").trim();
  const ep    = parseInt(String(req.query.ep || "1"), 10);
  if (!malId || isNaN(ep)) { res.json({ title: "" }); return; }
  const cKey = `${malId}-${ep}`;
  const hit = epTitleCache.get(cKey);
  if (hit && Date.now() - hit.ts < 86400_000) { res.json({ title: hit.title }); return; }
  try {
    // Jikan v4: GET https://api.jikan.moe/v4/anime/:id/episodes/:ep
    const r = await fetch(
      `https://api.jikan.moe/v4/anime/${malId}/episodes/${ep}`,
      { headers: { "User-Agent": BROWSER_UA }, signal: AbortSignal.timeout(8_000) }
    );
    if (!r.ok) { res.json({ title: "" }); return; }
    const data = await r.json() as { data?: { title?: string; title_romanji?: string } };
    const title = data?.data?.title || data?.data?.title_romanji || "";
    epTitleCache.set(cKey, { title, ts: Date.now() });
    res.json({ title });
  } catch { res.json({ title: "" }); }
});

router.get("/anime/aniskip", async (req, res) => {
  const malId = String(req.query.malId || "");
  const ep    = String(req.query.ep    || "");
  if (!malId || !ep) { res.status(400).json({ found: false }); return; }
  try {
    const url = `https://api.aniskip.com/v2/skip-times/${malId}/${ep}?types[]=op&types[]=ed&episodeLength=0`;
    const r   = await fetch(url, {
      headers: { "User-Agent": BROWSER_UA },
      signal: AbortSignal.timeout(8_000),
    });
    if (!r.ok) { res.json({ found: false }); return; }
    const data = await r.json();
    res.json(data);
  } catch { res.json({ found: false }); }
});

// ════════════════════════════════════════════════════════════════════
//  baha-skip  GET /api/anime/baha-skip?title=&native=&ep=
//  يجلب توقيتات تخطي المقدمة/الخاتمة من قاعدة baha-anime-skip (GitHub)
//  عبر البحث في Bahamut Anime API للحصول على SN الحلقة
// ════════════════════════════════════════════════════════════════════

const BAHA_DB_URL = "https://raw.githubusercontent.com/JacobLinCool/baha-anime-skip/main/packages/baha-anime-skip-db/data.json";
let bahaDbCache: Record<string, Record<string, [number, number]>> | null = null;
let bahaDbFetchedAt = 0;
const BAHA_DB_TTL = 3_600_000; // 1 hour

async function getBahaDb(): Promise<Record<string, Record<string, [number, number]>> | null> {
  if (bahaDbCache && Date.now() - bahaDbFetchedAt < BAHA_DB_TTL) return bahaDbCache;
  try {
    const r = await fetch(BAHA_DB_URL, {
      headers: { "User-Agent": BROWSER_UA },
      signal: AbortSignal.timeout(15_000),
    });
    if (!r.ok) return bahaDbCache;
    bahaDbCache = await r.json() as Record<string, Record<string, [number, number]>>;
    bahaDbFetchedAt = Date.now();
    return bahaDbCache;
  } catch { return bahaDbCache; }
}

// ذاكرة مؤقتة للبحث عن Bahamut SN بالعنوان
const bahaSearchCache = new Map<string, { sn: string | null; ts: number }>();

async function getBahaAnimeSN(title: string, nativeTitle: string): Promise<string | null> {
  const cacheKey = `${title}::${nativeTitle}`.toLowerCase();
  const cached = bahaSearchCache.get(cacheKey);
  if (cached && Date.now() - cached.ts < BAHA_DB_TTL) return cached.sn;

  const keywords = [nativeTitle, title].filter(Boolean);
  for (const kw of keywords) {
    if (!kw) continue;
    try {
      const url = `https://api.gamer.com.tw/anime/v1/search.php?keyword=${encodeURIComponent(kw)}`;
      const r = await cfProxyGet(url, {});
      if (!r) continue;
      const data = JSON.parse(r) as any;
      if (data?.error || !data?.data?.length) continue;
      const sn = String(data.data[0]?.animeSN || data.data[0]?.sn || "");
      if (sn) {
        bahaSearchCache.set(cacheKey, { sn, ts: Date.now() });
        return sn;
      }
    } catch { continue; }
  }
  bahaSearchCache.set(cacheKey, { sn: null, ts: Date.now() });
  return null;
}

async function getBahaEpSN(animeSN: string, epNum: number): Promise<string | null> {
  try {
    const url = `https://api.gamer.com.tw/anime/v1/episode.php?animeSN=${animeSN}&page=0`;
    const r = await cfProxyGet(url, {});
    if (!r) return null;
    const data = JSON.parse(r) as any;
    const episodes: any[] = data?.data?.episodes || data?.episodes || [];
    const ep = episodes.find((e: any) => {
      const n = parseInt(String(e.episode || e.epNumber || e.num || ""), 10);
      return n === epNum;
    });
    if (ep) return String(ep.videoSN || ep.sn || ep.animeSN || "");
    return null;
  } catch { return null; }
}

router.get("/anime/baha-skip", async (req, res) => {
  const title   = String(req.query.title   || "").trim();
  const native  = String(req.query.native  || "").trim();
  const epNum   = parseInt(String(req.query.ep || "1"), 10);

  if (!title && !native) { res.json({ found: false }); return; }

  try {
    const [db2, animeSN] = await Promise.all([
      getBahaDb(),
      getBahaAnimeSN(title, native),
    ]);

    if (!db2) { res.json({ found: false }); return; }

    if (!animeSN) { res.json({ found: false }); return; }

    const epSN = await getBahaEpSN(animeSN, epNum);
    if (!epSN) { res.json({ found: false }); return; }

    const skipData = db2[epSN];
    if (!skipData) { res.json({ found: false }); return; }

    const result: Record<string, { start: number; end: number }> = {};
    for (const [type, [start, duration]] of Object.entries(skipData)) {
      result[type.toLowerCase()] = { start, end: start + duration };
    }

    res.json({ found: true, animeSN, epSN, skip: result });
  } catch (e: any) {
    res.json({ found: false, error: e?.message });
  }
});

// ════════════════════════════════════════════════════════════════════
//  proxy-text  GET /api/anime/proxy-text?url=
//  Fetches a text file (VTT/SRT/plain) server-side and returns body
//  Used for fetching subtitle files that block browser CORS requests
// ════════════════════════════════════════════════════════════════════
router.get("/anime/proxy-text", async (req, res) => {
  const url = String(req.query.url || "");
  const ref = String(req.query.ref || "");
  if (!url.startsWith("http")) { res.status(400).json({ error: "bad url" }); return; }
  try {
    const extraHdrs: Record<string, string> = { Accept: "text/plain,text/vtt,*/*" };
    if (ref) { extraHdrs["Referer"] = ref; extraHdrs["Origin"] = (() => { try { return new URL(ref).origin; } catch { return ref; } })(); }
    const text = await cfGet(url, extraHdrs);
    if (!text) { res.status(502).json({ error: "upstream failed" }); return; }
    res.setHeader("Content-Type", "text/plain; charset=utf-8");
    res.setHeader("Cache-Control", "public, max-age=3600");
    res.send(text);
  } catch (e: any) {
    res.status(502).json({ error: e.message });
  }
});


// ════════════════════════════════════════════════════════════════════
//  translate-vtt  GET /api/anime/translate-vtt?url=&from=en&to=ar
//  Fetches a VTT/SRT subtitle file and returns translated cue array
// ════════════════════════════════════════════════════════════════════

/** Parse a VTT or SRT file into timing + plain-text pairs */
function parseVttCues(text: string): Array<{ timing: string; rawText: string }> {
  const normalized = text.replace(/\r\n/g, "\n").replace(/\r/g, "\n");
  const blocks = normalized.split(/\n{2,}/);
  const cues: Array<{ timing: string; rawText: string }> = [];
  for (const block of blocks) {
    const trimmed = block.trim();
    if (!trimmed || /^WEBVTT|^NOTE|^STYLE/.test(trimmed)) continue;
    const lines = trimmed.split("\n");
    const timingIdx = lines.findIndex(l => l.includes("-->"));
    if (timingIdx === -1) continue;
    // Keep only the timestamp part (drop VTT cue settings like "align:start")
    const timingFull = lines[timingIdx];
    const timing = timingFull.split("-->").map(s => s.trim().split(/\s/)[0]).join(" --> ");
    const rawText = lines
      .slice(timingIdx + 1)
      .join(" ")
      .replace(/<[^>]+>/g, "")    // strip HTML/VTT tags
      .replace(/\{[^}]+\}/g, "")  // strip ASS/SSA tags
      .trim();
    if (!rawText) continue;
    cues.push({ timing, rawText });
  }
  return cues;
}

/** Translate a batch of texts using Google Translate unofficial API (gtx).
 *  Uses ||| separator to preserve cue order even when Google collapses whitespace.
 *  Groups cues into chunks of 10 and processes 6 chunks in parallel. */
async function translateBatchFree(texts: string[], from: string, to: string): Promise<string[]> {
  const CHUNK = 10; // Smaller chunks → more reliable separator preservation

  const chunks: string[][] = [];
  for (let i = 0; i < texts.length; i += CHUNK) {
    chunks.push(texts.slice(i, i + CHUNK));
  }

  const PARALLEL = 6;
  const results: string[] = new Array(texts.length).fill("");
  const SEP = " ||| "; // Preserved literally by Google Translate

  for (let i = 0; i < chunks.length; i += PARALLEL) {
    const batch = chunks.slice(i, i + PARALLEL);
    await Promise.allSettled(
      batch.map(async (chunk, batchIdx) => {
        const start = (i + batchIdx) * CHUNK;
        // Strip any stray ||| from source text to avoid false splits
        const cleaned = chunk.map(t => t.replace(/\|\|\|/g, "").trim());
        const joined = cleaned.join(SEP);
        try {
          const url = `https://translate.googleapis.com/translate_a/single?client=gtx&sl=${from}&tl=${to}&dt=t&q=${encodeURIComponent(joined)}`;
          const r = await fetch(url, {
            headers: { "User-Agent": BROWSER_UA, Accept: "application/json" },
            signal: AbortSignal.timeout(15000),
          });
          if (!r.ok) { chunk.forEach((t, j) => { results[start + j] = t; }); return; }
          const data = await r.json() as any;
          const translated: string = data?.[0]?.map((x: any) => x?.[0] || "").join("") || "";
          if (!translated) { chunk.forEach((t, j) => { results[start + j] = t; }); return; }
          // Split by ||| separator — preserves index alignment even if some cues are empty
          const parts = translated.split(/\s*\|\|\|\s*/);
          chunk.forEach((t, j) => { results[start + j] = parts[j]?.trim() || t; });
        } catch {
          // Fallback: try MyMemory API for each text individually
          await Promise.allSettled(chunk.map(async (t, j) => {
            try {
              const mmUrl = `https://api.mymemory.translated.net/get?q=${encodeURIComponent(t.slice(0, 300))}&langpair=${from}|${to}`;
              const mmR = await fetch(mmUrl, { signal: AbortSignal.timeout(8000) });
              if (!mmR.ok) { results[start + j] = t; return; }
              const mmData = await mmR.json() as any;
              results[start + j] = mmData?.responseData?.translatedText || t;
            } catch { results[start + j] = t; }
          }));
        }
      }),
    );
  }
  return results;
}

const translateVttCache = new Map<string, { cues: Array<{ timing: string; text: string }>; ts: number }>();
const SUB_CACHE_TTL = 30 * 24 * 3_600_000; // 30 days

async function getSubFromDb(cacheKey: string): Promise<Array<{ timing: string; text: string }> | null> {
  try {
    const rows = await db.select().from(subtitleCacheTable).where(eq(subtitleCacheTable.cacheKey, cacheKey)).limit(1);
    if (rows.length && rows[0].expiresAt > Date.now()) {
      return rows[0].cues as Array<{ timing: string; text: string }>;
    }
  } catch { /* DB unavailable — continue */ }
  return null;
}

async function saveSubToDb(cacheKey: string, cues: Array<{ timing: string; text: string }>): Promise<void> {
  try {
    const now = Date.now();
    await db.insert(subtitleCacheTable)
      .values({ cacheKey, cues: cues as any, fetchedAt: now, expiresAt: now + SUB_CACHE_TTL })
      .onConflictDoUpdate({
        target: subtitleCacheTable.cacheKey,
        set: { cues: cues as any, fetchedAt: now, expiresAt: now + SUB_CACHE_TTL },
      });
  } catch { /* DB unavailable — skip */ }
}

router.get("/anime/translate-vtt", async (req, res) => {
  const rawUrl = ((req.query.url  as string) || "").trim();
  const from   = ((req.query.from as string) || "en").trim();
  const to     = ((req.query.to   as string) || "ar").trim();
  if (!rawUrl) { res.status(400).json({ error: "url required" }); return; }

  // دعم URLs نسبية مثل /api/anime/proxy-text?... (تُحوَّل لـ localhost)
  const PORT = process.env.PORT || 8080;
  const url = rawUrl.startsWith("/") ? `http://localhost:${PORT}${rawUrl}` : rawUrl;

  const cacheKey = `${from}→${to}:${rawUrl}`;

  // L1: ذاكرة داخلية
  const memCached = translateVttCache.get(cacheKey);
  if (memCached && Date.now() - memCached.ts < 3_600_000) {
    res.json({ cues: memCached.cues, cached: true }); return;
  }

  // L2: قاعدة البيانات (مُخزَّن للأبد حتى 30 يوم)
  const dbCached = await getSubFromDb(cacheKey);
  if (dbCached) {
    translateVttCache.set(cacheKey, { cues: dbCached, ts: Date.now() });
    res.json({ cues: dbCached, cached: true }); return;
  }

  try {
    const r = await fetch(url, {
      headers: {
        ...BASE_HDRS,
        Accept: "text/vtt,text/plain,*/*",
        Referer: (() => { try { return new URL(url).origin + "/"; } catch { return url; } })(),
        Origin:  (() => { try { return new URL(url).origin; } catch { return ""; } })(),
      },
      signal: AbortSignal.timeout(12000),
    });
    if (!r.ok) { res.status(502).json({ error: `Subtitle fetch failed: ${r.status}` }); return; }
    const vttText = await r.text();
    const cues = parseVttCues(vttText);
    if (!cues.length) { res.json({ cues: [] }); return; }

    const translatedTexts = await translateBatchFree(cues.map(c => c.rawText), from, to);

    const result = cues.map((c, i) => ({
      timing: c.timing,
      text: translatedTexts[i] ?? c.rawText,
    }));

    // حفظ في L1 و L2
    translateVttCache.set(cacheKey, { cues: result, ts: Date.now() });
    void saveSubToDb(cacheKey, result); // fire & forget

    res.json({ cues: result });
  } catch (e: any) {
    res.status(500).json({ error: e?.message || "Translation failed" });
  }
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
  "Connection": "keep-alive",
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
      // 5-minute timeout — large MKV/MP4 files (e.g. anime-phoenix 400MB+) need time to stream
      signal: AbortSignal.timeout(300000),
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
    const r = await fetch(url, { headers: HLS_PROXY_HDRS(ref || url, origin), signal: AbortSignal.timeout(25000), redirect: "follow" });
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
    /* Stream binary TS/AAC segments directly — avoids buffering entire chunk before sending,
       which significantly reduces time-to-first-byte and improves playback smoothness */
    res.setHeader("Content-Type", ct);
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Cache-Control", "public, max-age=3600");
    if (len) res.setHeader("Content-Length", len);
    if (r.body) {
      const { Readable } = await import("stream");
      const readable = Readable.fromWeb(r.body as any);
      readable.on("error", () => { try { res.destroy(); } catch {} });
      res.on("close", () => { try { readable.destroy(); } catch {} });
      readable.pipe(res);
    } else {
      const body = Buffer.from(await r.arrayBuffer());
      if (isCdnCacheable(url)) cdnCache.set(cacheKey, { body, ct, ts: Date.now() });
      res.send(body);
    }
  } catch (e: any) { if (!res.headersSent) res.status(502).send(`proxy error: ${e?.message ?? e}`); }
});

// ══════════════════════════════════════════════════════════════════
//  ANIMEWITCHER CATALOG — قائمة أنمي ويتشر المتاحة (مع AniList IDs)
// ══════════════════════════════════════════════════════════════════
const AW_CATALOG_CACHE: { ts: number; items: any[] } = { ts: 0, items: [] };
const AW_CATALOG_TTL = 15 * 60_000; // 15 دقيقة

async function fetchAWCatalog(): Promise<any[]> {
  if (Date.now() - AW_CATALOG_CACHE.ts < AW_CATALOG_TTL && AW_CATALOG_CACHE.items.length) {
    return AW_CATALOG_CACHE.items;
  }
  try {
    // قراءة عامة بدون مصادقة (Firestore public read) — جلب الكتالوج كاملاً بدون حد للصفحات
    const all: any[] = [];
    let pageToken: string | undefined;
    do {
      const url = `${AW_FS_BASE}/anime_list?pageSize=300${pageToken ? `&pageToken=${pageToken}` : ""}`;
      const r = await fetch(url, { signal: AbortSignal.timeout(20_000) });
      if (!r.ok) break;
      const data: any = await r.json();
      (data.documents || []).forEach((doc: any) => {
        const f  = doc.fields || {};
        const id = doc.name?.split("/").pop() || "";
        const al = f.aniList_id?.stringValue || "";
        if (!al || al === "undefined") return;
        // poster: قد يكون mapValue أو stringValue مباشرة
        const poster =
          f.poster?.mapValue?.fields?.large?.stringValue ||
          f.poster?.mapValue?.fields?.medium?.stringValue ||
          f.poster_uri?.stringValue ||
          f.poster?.stringValue || "";
        all.push({
          name   : id.trim(),
          anilist: al,
          type   : f.type?.stringValue || "",
          poster,
          arLink : f.ar_link?.stringValue || "",
        });
      });
      pageToken = data.nextPageToken || undefined;
    } while (pageToken);

    AW_CATALOG_CACHE.ts = Date.now();
    AW_CATALOG_CACHE.items = all;
    return all;
  } catch { return []; }
}

router.get("/anime/animewitcher-catalog", async (req, res) => {
  try {
    const typeFilter = String(req.query.type || "all");
    const q          = String(req.query.q || "").toLowerCase().trim();
    const page       = Math.max(1, parseInt(String(req.query.page || "1"), 10));
    const limit      = 60;

    let items = await fetchAWCatalog();

    if (typeFilter !== "all") {
      items = items.filter(x => x.type === typeFilter);
    }
    if (q) {
      items = items.filter(x => x.name.toLowerCase().includes(q));
    }

    const total  = items.length;
    const start  = (page - 1) * limit;
    const paged  = items.slice(start, start + limit);

    res.json({ total, page, limit, has_more: start + limit < total, items: paged });
  } catch (e: any) {
    res.status(500).json({ error: e?.message });
  }
});

export default router;
