export const DIRECT_STREAM_MIN_VERSION = [1, 0, 10];

export function parseAppVersion(raw) {
  const m = String(raw || "").trim().match(/(\d+)\.(\d+)\.(\d+)/);
  if (!m) return null;
  return [Number(m[1]), Number(m[2]), Number(m[3])];
}

export function isDirectStreamVersion(appVersion) {
  const parsed = parseAppVersion(appVersion);
  if (!parsed) return false;
  if (parsed[0] !== DIRECT_STREAM_MIN_VERSION[0]) return parsed[0] > DIRECT_STREAM_MIN_VERSION[0];
  if (parsed[1] !== DIRECT_STREAM_MIN_VERSION[1]) return parsed[1] > DIRECT_STREAM_MIN_VERSION[1];
  return parsed[2] >= DIRECT_STREAM_MIN_VERSION[2];
}

export function buildDirectStreamHeaders(appVersion) {
  if (!isDirectStreamVersion(appVersion)) return {};
  return {
    "X-Nova-Direct-Mode": "1",
    "X-Nova-Version": String(appVersion).trim(),
  };
}

export function appendDirectStreamParams(urlOrParams, enabled) {
  if (!enabled) return urlOrParams;
  if (urlOrParams instanceof URLSearchParams) {
    urlOrParams.set("directOnly", "1");
    urlOrParams.set("clientExtract", "1");
    return urlOrParams;
  }
  const str = String(urlOrParams || "");
  if (!str) return str;
  const sep = str.includes("?") ? "&" : "?";
  if (str.includes("directOnly=1")) return str;
  return `${str}${sep}directOnly=1&clientExtract=1`;
}

export function classifyDeliveryBadge(url, deliveryModeHint) {
  const lower = String(url || "").trim().toLowerCase();
  if (deliveryModeHint === "vps-vip" || lower.includes("/api/tg-stream/")) {
    return { mode: "vps-vip", shortLabel: "VIP", badgeLabel: "👑 NOVA VIP" };
  }
  if (lower.includes("/api/anime/hls-proxy") && lower.includes("directsegs=1")) {
    return { mode: "direct", shortLabel: "مباشر", badgeLabel: "⚡ مباشر من جهازك" };
  }
  if (
    lower.includes("/api/anime/hls-proxy") ||
    lower.includes("/api/anime/video-proxy") ||
    lower.includes("/api/anime/seg-proxy") ||
    lower.includes("/api/aw-dubbed/mf-stream")
  ) {
    return { mode: "vps-proxy", shortLabel: "خادم", badgeLabel: "☁️ عبر الخادم" };
  }
  if (deliveryModeHint === "client-extract") {
    return { mode: "client-extract", shortLabel: "هاتفك", badgeLabel: "⚡ استخراج من هاتفك" };
  }
  return { mode: "direct", shortLabel: "مباشر", badgeLabel: "⚡ مباشر من جهازك" };
}

/**
 * Unpacks Dean Edwards p,a,c,k,e,d obfuscated JS blocks commonly used by
 * Filemoon, StreamWish, EarnVids, LuluStream, Vidmoly, and similar embed hosts.
 */
export function unpackPackerBlocks(html) {
  if (typeof html !== "string" || !html.includes("eval(function(p,a,c,k,e,")) return [];
  const results = [];
  const re = /eval\(function\(p,a,c,k,e,[dr]\)\{[\s\S]*?\}\('([\s\S]*?)',\s*(\d+),\s*(\d+),\s*'([\s\S]*?)'\.split\('\|'\)/g;
  let m;
  while ((m = re.exec(html)) !== null && results.length < 6) {
    try {
      const payload = m[1].replace(/\\'/g, "'").replace(/\\\\/g, "\\");
      const radix = Number(m[2]);
      let count = Number(m[3]);
      const symtab = m[4].split("|");
      const encode = (num) => {
        const first = num < radix ? "" : encode(Math.floor(num / radix));
        const rem = num % radix;
        return first + (rem > 35 ? String.fromCharCode(rem + 29) : rem.toString(36));
      };
      let unpacked = payload;
      while (count--) {
        if (symtab[count]) {
          unpacked = unpacked.replace(new RegExp(`\\b${encode(count)}\\b`, "g"), symtab[count]);
        }
      }
      results.push(unpacked);
    } catch {
      /* skip malformed block */
    }
  }
  return results;
}

function decodeBase64Bytes(input) {
  const clean = String(input || "").replace(/-/g, "+").replace(/_/g, "/").replace(/[^A-Za-z0-9+/=]/g, "");
  if (!clean) return new Uint8Array(0);
  if (typeof atob === "function") {
    try {
      const bin = atob(clean);
      const out = new Uint8Array(bin.length);
      for (let i = 0; i < bin.length; i += 1) out[i] = bin.charCodeAt(i);
      return out;
    } catch { /* fallback below */ }
  }
  const alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
  let bits = 0;
  let value = 0;
  const bytes = [];
  for (let i = 0; i < clean.length; i += 1) {
    const ch = clean[i];
    if (ch === "=") break;
    const idx = alphabet.indexOf(ch);
    if (idx < 0) continue;
    value = (value << 6) | idx;
    bits += 6;
    if (bits >= 8) {
      bits -= 8;
      bytes.push((value >>> bits) & 0xff);
    }
  }
  return new Uint8Array(bytes);
}

function decodeBase64String(input) {
  const bytes = decodeBase64Bytes(input);
  if (!bytes.length) return "";
  try {
    if (typeof TextDecoder === "function") {
      return new TextDecoder("utf-8", { fatal: false }).decode(bytes);
    }
  } catch { /* fallback below */ }
  let out = "";
  for (let i = 0; i < bytes.length; i += 1) {
    out += String.fromCharCode(bytes[i]);
  }
  return out;
}

function isDecoyMediaUrl(url) {
  const lower = String(url || "").toLowerCase();
  if (!lower) return false;
  return (
    lower.includes("test-videos.co.uk") ||
    lower.includes("big_buck_bunny") ||
    lower.includes("samplelib.com") ||
    lower.includes("commondatastorage.googleapis.com/gtv-videos-bucket")
  );
}

function evalStreamTapeConcatExpr(expr) {
  const parts = [];
  const tokenRe = /\(?\s*(?:'((?:\\.|[^'\\])*)'|"((?:\\.|[^"\\])*)")\s*\)?((?:\.substring\(\s*\d+(?:\s*,\s*\d+)?\s*\))*)/g;
  let m;
  while ((m = tokenRe.exec(expr)) !== null) {
    let val = (m[1] ?? m[2] ?? "").replace(/\\'/g, "'").replace(/\\"/g, '"').replace(/\\\//g, "/");
    const subChain = m[3] || "";
    const subRe = /\.substring\(\s*(\d+)(?:\s*,\s*(\d+))?\s*\)/g;
    let sm;
    while ((sm = subRe.exec(subChain)) !== null) {
      const start = Number(sm[1]);
      val = sm[2] !== undefined ? val.substring(start, Number(sm[2])) : val.substring(start);
    }
    parts.push(val);
  }
  return parts.join("");
}

function extractStreamTapeUrl(text, baseUrl) {
  if (typeof text !== "string" || !text.includes("get_video")) return null;
  const assignRe = /getElementById\(\s*['"](?:robotlink|ideoolink|norobotlink)['"]\s*\)\.innerHTML\s*=\s*([^;\n]+)/gi;
  let lastValid = null;
  let m;
  while ((m = assignRe.exec(text)) !== null) {
    const built = evalStreamTapeConcatExpr(m[1]).trim();
    if (!built || !built.includes("get_video?") || !built.includes("token=")) continue;
    const candidate = built.startsWith("http")
      ? built
      : built.startsWith("//")
        ? `https:${built}`
        : `https://${built.replace(/^\/+/, "")}`;
    const normalized = normalizeExtractedUrl(candidate, baseUrl);
    if (normalized) {
      lastValid = normalized.includes("stream=1") ? normalized : `${normalized}&stream=1`;
    }
  }
  if (lastValid) return { url: lastValid, type: "mp4" };
  return null;
}

function decodeVoeJsonPayload(html, baseUrl) {
  if (typeof html !== "string" || !html.includes("application/json")) return null;
  const re = /<script[^>]*type=["']application\/json["'][^>]*>([\s\S]*?)<\/script>/gi;
  let jm;
  while ((jm = re.exec(html)) !== null) {
    try {
      const arr = JSON.parse(jm[1].trim());
      const raw = Array.isArray(arr) ? arr[0] : null;
      if (typeof raw !== "string" || raw.length < 40) continue;
      // 1. ROT13
      let s = raw.replace(/[a-zA-Z]/g, (c) => {
        const base = c <= "Z" ? 65 : 97;
        return String.fromCharCode(((c.charCodeAt(0) - base + 13) % 26) + base);
      });
      // 2. Strip junk tokens
      for (const tok of ["@$", "^^", "~@", "%?", "*~", "!!", "#&"]) {
        s = s.split(tok).join("");
      }
      // 3. Base64 decode -> shift -3 -> reverse -> Base64 decode -> JSON
      s = decodeBase64String(s);
      s = [...s].map((ch) => String.fromCharCode(ch.charCodeAt(0) - 3)).join("");
      s = [...s].reverse().join("");
      s = decodeBase64String(s);
      const parsed = JSON.parse(s);
      const rawMedia = typeof parsed?.source === "string"
        ? parsed.source
        : typeof parsed?.hls === "string"
          ? parsed.hls
          : null;
      const url = normalizeExtractedUrl(rawMedia, baseUrl);
      if (url) {
        const type = /\.m3u8(?:[?#]|$)/i.test(url) || typeof parsed?.hls === "string" ? "hls" : "mp4";
        return { url, type };
      }
    } catch {
      /* ignore non-VOE json scripts */
    }
  }
  return null;
}

/**
 * Extracts a MediaFire file key from /api/aw-dubbed/mf-stream?link=...,
 * standard mediafire.com/file/<key>/... URLs, or IP-bound downloadXXXX.mediafire.com/<tok>/<key>/<file> CDN links.
 */
export function extractMediaFireFileKey(rawUrl) {
  const input = String(rawUrl || "").trim();
  if (!input) return null;
  try {
    const parsed = new URL(input.startsWith("/") ? `https://nova.local${input}` : input);
    const wrapped = parsed.searchParams.get("link") || parsed.searchParams.get("url");
    if (wrapped && wrapped !== input && wrapped.toLowerCase().includes("mediafire")) {
      const inner = extractMediaFireFileKey(wrapped);
      if (inner) return inner;
    }
    const host = parsed.hostname.toLowerCase();
    if (!host.endsWith("mediafire.com")) return null;
    if (/^download\d*\.mediafire\.com$/i.test(host)) {
      const parts = parsed.pathname.split("/").filter(Boolean);
      // Format: /<token>/<key>/<filename>
      if (parts.length >= 3 && /^[a-zA-Z0-9_-]{8,30}$/.test(parts[1])) {
        return parts[1];
      }
      return null;
    }
    const pathMatch = parsed.pathname.match(/\/(?:file(?:_premium)?|download|view)\/([a-zA-Z0-9_-]{8,30})(?:\/|$)/i);
    if (pathMatch?.[1]) return pathMatch[1];
    const qsKey = parsed.search.replace(/^\?/, "").split("&")[0];
    if (/^[a-zA-Z0-9_-]{8,30}$/.test(qsKey)) return qsKey;
    return null;
  } catch {
    return null;
  }
}

/**
 * Extracts a fresh phone-IP MediaFire CDN download link from a MediaFire file page HTML.
 */
export function extractMediaFireDirectUrlFromHtml(html) {
  if (typeof html !== "string" || !html) return null;
  const directRe = /href=["'](https?:\/\/download\d*\.mediafire\.com\/[^"'\s<>]+)["']/i;
  const m1 = html.match(directRe);
  if (m1?.[1]) return m1[1].replace(/&amp;/gi, "&").trim();

  const btn1 = html.match(/id=["']downloadButton["'][^>]*href=["'](https?:\/\/[^"'\s<>]+)["']/i);
  if (btn1?.[1] && /mediafire\.com\//i.test(btn1[1])) return btn1[1].replace(/&amp;/gi, "&").trim();

  const btn2 = html.match(/href=["'](https?:\/\/[^"'\s<>]+)["'][^>]*id=["']downloadButton["']/i);
  if (btn2?.[1] && /mediafire\.com\//i.test(btn2[1])) return btn2[1].replace(/&amp;/gi, "&").trim();

  const scrambled = html.match(/data-scrambled-url=["']([A-Za-z0-9+/=]{16,})["']/i);
  if (scrambled?.[1]) {
    const decoded = decodeBase64String(scrambled[1]).trim();
    if (/^https?:\/\/download\d*\.mediafire\.com\//i.test(decoded)) {
      return decoded;
    }
  }

  const bare = html.match(/(https?:\/\/download\d*\.mediafire\.com\/[^\s"'<>\\]+)/i);
  if (bare?.[1]) return bare[1].replace(/&amp;/gi, "&").trim();
  return null;
}

/**
 * Detects a single-hop JS redirect (e.g. voe.sx/e/... -> caseyseemavoid.com/e/...)
 * so the mobile extractor can follow it once on the phone's residential IP.
 */
export function extractSingleHopRedirect(html, baseUrl = "") {
  if (typeof html !== "string" || !html) return null;
  const patterns = [
    /window\.location(?:\.href)?\s*=\s*["'](https?:\/\/[^"'\s<>]+)["']/i,
    /location\.replace\(\s*["'](https?:\/\/[^"'\s<>]+)["']\s*\)/i,
  ];
  for (const re of patterns) {
    const m = html.match(re);
    if (!m?.[1]) continue;
    const target = normalizeExtractedUrl(m[1], baseUrl);
    if (!target || target === baseUrl) continue;
    try {
      const u = new URL(target);
      if (u.pathname === "/" || /doubleclick|googlesyndication|popads|exoclick/i.test(u.hostname)) continue;
      return target;
    } catch { /* ignore */ }
  }
  return null;
}

function normalizeExtractedUrl(candidate, baseUrl) {
  let clean = String(candidate || "")
    .trim()
    .replace(/\\u0026/gi, "&")
    .replace(/\\\//g, "/")
    .replace(/&amp;/gi, "&");
  if (!clean) return null;
  if (clean.startsWith("//")) clean = `https:${clean}`;
  if (clean.startsWith("/") && baseUrl) {
    try {
      clean = new URL(clean, baseUrl).toString();
    } catch {
      return null;
    }
  }
  if (!/^https?:\/\//i.test(clean)) return null;
  if (/\.(?:jpe?g|png|gif|webp|svg|ico|css|js|vtt|srt|woff2?)(?:[?#]|$)/i.test(clean)) return null;
  if (isDecoyMediaUrl(clean)) return null;
  return clean;
}

/**
 * Pure HTML/JS media extractor executed on the user's phone (residential IP).
 * Finds direct .m3u8 (HLS) or .mp4 streams from standard embed pages, OK.ru,
 * MixDrop (MDCore.wurl), StreamTape (robotlink + substring), and VOE.
 */
export function extractMediaUrlFromHtml(html, baseUrl = "", hostKind = "standard") {
  if (typeof html !== "string" || !html) return null;

  // 1. OK.ru embedded JSON metadata (data-options -> flashvars.metadata)
  if (hostKind === "okru" || /ok\.ru|odnoklassniki/i.test(baseUrl)) {
    const metaMatch = html.match(/data-options="([^"]+)"/i);
    if (metaMatch) {
      try {
        const decoded = metaMatch[1]
          .replace(/&quot;/g, '"')
          .replace(/&amp;/g, "&")
          .replace(/&#39;/g, "'");
        const opts = JSON.parse(decoded);
        const metaStr = opts?.flashvars?.metadata;
        if (typeof metaStr === "string") {
          const meta = JSON.parse(metaStr);
          if (typeof meta?.hlsManifestUrl === "string") {
            const url = normalizeExtractedUrl(meta.hlsManifestUrl, baseUrl);
            if (url) return { url, type: "hls" };
          }
          if (Array.isArray(meta?.videos) && meta.videos.length > 0) {
            const sorted = [...meta.videos].sort((a, b) => {
              const rank = { full: 5, hd: 4, sd: 3, low: 2, lowest: 1, mobile: 0 };
              return (rank[b?.name] ?? 0) - (rank[a?.name] ?? 0);
            });
            const url = normalizeExtractedUrl(sorted[0]?.url, baseUrl);
            if (url) return { url, type: "mp4" };
          }
        }
      } catch { /* fall through to generic scan */ }
    }
  }

  // 1b. VOE obfuscated <script type="application/json">["..."]</script> (must run before decoy MP4 scan)
  const voeDecoded = decodeVoeJsonPayload(html, baseUrl);
  if (voeDecoded) return voeDecoded;

  // 2. Scan raw HTML + unpacked Dean Edwards packer blocks
  const unpackedBlocks = unpackPackerBlocks(html);
  const haystacks = [...unpackedBlocks, html];

  // 2a. StreamTape robotlink / ideoolink concatenation with .substring()
  for (const text of haystacks) {
    const st = extractStreamTapeUrl(text, baseUrl);
    if (st) return st;
  }

  // 2b. MixDrop MDCore.wurl (often protocol-relative inside packed JS)
  for (const text of haystacks) {
    const mdMatch = text.match(/MDCore\.wurl\s*=\s*["']((?:https?:)?\/\/[^"'\s<>]+)["']/i);
    if (mdMatch?.[1]) {
      const url = normalizeExtractedUrl(mdMatch[1], baseUrl);
      if (url) {
        return { url, type: /\.m3u8(?:[?#]|$)/i.test(url) ? "hls" : "mp4" };
      }
    }
  }

  // 2c. VOE / similar hosts using base64 atob() or raw aHR0c... for HLS source
  for (const text of haystacks) {
    const b64Match = text.match(/['"]?hls['"]?\s*[:=]\s*atob\(\s*["']([A-Za-z0-9+/=]{16,})["']\s*\)/i);
    if (b64Match?.[1]) {
      const decoded = decodeBase64String(b64Match[1]);
      const url = normalizeExtractedUrl(decoded, baseUrl);
      if (url && /\.m3u8/i.test(url)) return { url, type: "hls" };
    }
    const rawB64Match = text.match(/['"](?:hls|source)['"]\s*[:=]\s*["'](aHR0cHM6Ly9[A-Za-z0-9+/=]+)["']/i);
    if (rawB64Match?.[1]) {
      const decoded = decodeBase64String(rawB64Match[1]);
      const url = normalizeExtractedUrl(decoded, baseUrl);
      if (url) return { url, type: /\.m3u8/i.test(url) ? "hls" : "mp4" };
    }
  }

  const hlsPatterns = [
    /(?:file|src|hls|url|source|manifest|['"]hls['"])\s*[:=]\s*["']((?:https?:)?\/\/[^"'\s<>]+\.m3u8[^"'\s<>]*)["']/i,
    /["']((?:https?:)?\/\/[^"'\s<>\\]+\.m3u8(?:[^"'\s<>\\]*)?)["']/i,
    /(https?:\/\/[^\s"'<>\\]+\.m3u8[^\s"'<>\\]*)/i,
  ];
  for (const text of haystacks) {
    for (const pattern of hlsPatterns) {
      const m = text.match(pattern);
      if (m?.[1]) {
        const url = normalizeExtractedUrl(m[1], baseUrl);
        if (url) return { url, type: "hls" };
      }
    }
  }

  const mp4Patterns = [
    /(?:file|src|url|source|wurl)\s*[:=]\s*["']((?:https?:)?\/\/[^"'\s<>]+\.mp4[^"'\s<>]*)["']/i,
    /<source[^>]+src=["']((?:https?:)?\/\/[^"'\s<>]+\.mp4[^"'\s<>]*)["']/i,
    /["']((?:https?:)?\/\/[^"'\s<>\\]+\.mp4(?:\?[^"'\s<>\\]*)?)["']/i,
  ];
  for (const text of haystacks) {
    for (const pattern of mp4Patterns) {
      const m = text.match(pattern);
      if (m?.[1]) {
        const url = normalizeExtractedUrl(m[1], baseUrl);
        if (url && !/\/(?:e|v|d|embed)\//i.test(url)) {
          return { url, type: "mp4" };
        }
      }
    }
  }

  return null;
}
