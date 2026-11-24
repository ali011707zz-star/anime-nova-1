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
 * Finds direct .m3u8 (HLS) or .mp4 streams from standard embed pages and OK.ru.
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

  const hlsPatterns = [
    /(?:file|src|hls|url|source|manifest)\s*[:=]\s*["'](https?:\/\/[^"'\s<>]+\.m3u8[^"'\s<>]*)["']/i,
    /["'](https?:\/\/[^"'\s<>\\]+\.m3u8(?:[^"'\s<>\\]*)?)["']/i,
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
    /(?:file|src|url|source)\s*[:=]\s*["'](https?:\/\/[^"'\s<>]+\.mp4[^"'\s<>]*)["']/i,
    /<source[^>]+src=["'](https?:\/\/[^"'\s<>]+\.mp4[^"'\s<>]*)["']/i,
    /["'](https?:\/\/[^"'\s<>\\]+\.mp4(?:\?[^"'\s<>\\]*)?)["']/i,
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
