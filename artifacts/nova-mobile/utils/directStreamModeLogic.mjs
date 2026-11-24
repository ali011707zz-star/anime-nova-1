export const DIRECT_STREAM_MIN_VERSION = [1, 0, 11];

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

function decodeBase64String(input) {
  const clean = String(input || "").replace(/[^A-Za-z0-9+/=]/g, "");
  if (!clean) return "";
  try {
    if (typeof atob === "function") return atob(clean);
  } catch { /* fallback below */ }
  const alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
  let bits = 0;
  let value = 0;
  let output = "";
  for (let i = 0; i < clean.length; i += 1) {
    const ch = clean[i];
    if (ch === "=") break;
    const idx = alphabet.indexOf(ch);
    if (idx < 0) continue;
    value = (value << 6) | idx;
    bits += 6;
    if (bits >= 8) {
      bits -= 8;
      output += String.fromCharCode((value >>> bits) & 0xff);
    }
  }
  return output;
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

  // 2c. VOE / similar hosts using base64 atob() for HLS source
  for (const text of haystacks) {
    const b64Match = text.match(/['"]?hls['"]?\s*[:=]\s*atob\(\s*["']([A-Za-z0-9+/=]{16,})["']\s*\)/i);
    if (b64Match?.[1]) {
      const decoded = decodeBase64String(b64Match[1]);
      const url = normalizeExtractedUrl(decoded, baseUrl);
      if (url && /\.m3u8/i.test(url)) return { url, type: "hls" };
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
