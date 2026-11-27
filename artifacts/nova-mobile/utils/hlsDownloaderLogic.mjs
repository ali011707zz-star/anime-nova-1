/**
 * Pure HLS playlist & segment-plan helpers for phone-side direct HLS downloading.
 * Zero React Native / Expo runtime imports so `node --test` verifies every branch.
 */

const VPS_ONLY_CDN_HOSTS = [
  "stream.foupix.com",
  "foupix.com",
  "pegasus.5387692.xyz",
  "sanime.net",
  "carateen.tv",
  "arabic-toons.com",
  "stardima.com.im",
  "hyperwatching.com",
  "hyperwatching.net",
  "hyperwatching.xyz",
];

function hostMatches(hostname, suffix) {
  const h = String(hostname || "").trim().toLowerCase();
  const s = String(suffix || "").trim().toLowerCase();
  return Boolean(h && s && (h === s || h.endsWith(`.${s}`)));
}

export function resolvePlaylistEntryUrl(value, baseUrl) {
  const raw = String(value || "").trim();
  if (!raw) return "";
  try {
    return new URL(raw, baseUrl).toString();
  } catch {
    return raw;
  }
}

export function parseM3u8AttrList(attrString) {
  const attrs = {};
  const src = String(attrString || "");
  for (const match of src.matchAll(/([A-Z0-9-]+)=("(?:[^"]|"")*"|[^,]*)/g)) {
    attrs[match[1]] = match[2].replace(/^"|"$/g, "");
  }
  return attrs;
}

function parseQualityTargetHeight(quality) {
  const q = String(quality || "").toLowerCase();
  if (q.includes("2160") || q.includes("4k")) return 2160;
  if (q.includes("1080") || q.includes("fhd")) return 1080;
  if (q.includes("720") || q.includes("hd")) return 720;
  if (q.includes("480") || q.includes("sd")) return 480;
  if (q.includes("360")) return 360;
  return 0;
}

export function parseMasterM3u8(playlistText, baseUrl) {
  const lines = String(playlistText || "")
    .replace(/\r/g, "")
    .split("\n")
    .map((l) => l.trim());

  const variants = [];
  for (let i = 0; i < lines.length; i += 1) {
    const line = lines[i];
    if (!line.startsWith("#EXT-X-STREAM-INF:")) continue;
    const attrs = parseM3u8AttrList(line.slice("#EXT-X-STREAM-INF:".length));
    let uri = "";
    for (let j = i + 1; j < lines.length; j += 1) {
      const next = lines[j];
      if (!next) continue;
      if (next.startsWith("#")) continue;
      uri = resolvePlaylistEntryUrl(next, baseUrl);
      i = j;
      break;
    }
    if (!uri) continue;
    const bandwidth = Number(attrs.BANDWIDTH || attrs["AVERAGE-BANDWIDTH"] || 0) || 0;
    const resolution = String(attrs.RESOLUTION || "");
    const resMatch = resolution.match(/(\d+)x(\d+)/i);
    const width = resMatch ? Number(resMatch[1]) || 0 : 0;
    const height = resMatch ? Number(resMatch[2]) || 0 : 0;
    variants.push({
      uri,
      bandwidth,
      width,
      height,
      resolution,
      codecs: attrs.CODECS || "",
    });
  }

  return {
    isMaster: variants.length > 0,
    variants,
  };
}

export function selectBestHlsVariant(variants, preferredQuality = "") {
  if (!Array.isArray(variants) || variants.length === 0) return null;
  const targetHeight = parseQualityTargetHeight(preferredQuality);
  if (targetHeight > 0) {
    const exact = variants
      .filter((v) => v.height === targetHeight)
      .sort((a, b) => b.bandwidth - a.bandwidth);
    if (exact.length > 0) return exact[0];

    const withHeight = variants.filter((v) => v.height > 0);
    if (withHeight.length > 0) {
      const sorted = [...withHeight].sort((a, b) => {
        const diffA = Math.abs(a.height - targetHeight);
        const diffB = Math.abs(b.height - targetHeight);
        if (diffA !== diffB) return diffA - diffB;
        return b.bandwidth - a.bandwidth;
      });
      return sorted[0];
    }
  }
  return [...variants].sort((a, b) => {
    if (b.height !== a.height) return b.height - a.height;
    return b.bandwidth - a.bandwidth;
  })[0];
}

export function parseMediaM3u8(playlistText, baseUrl) {
  const lines = String(playlistText || "")
    .replace(/\r/g, "")
    .split("\n")
    .map((l) => l.trim());

  if (!lines.some((l) => l.startsWith("#EXTM3U"))) {
    return { supported: false, reason: "not_m3u8", segments: [], isVod: false, totalDurationSec: 0 };
  }

  let hasEndList = false;
  let hasByteRange = false;
  let initUri = null;
  let encryptedMethod = null;
  let nextDuration = 0;
  let totalDurationSec = 0;
  const segments = [];

  for (const line of lines) {
    if (!line) continue;
    if (line === "#EXT-X-ENDLIST") {
      hasEndList = true;
      continue;
    }
    if (line.startsWith("#EXT-X-BYTERANGE")) {
      hasByteRange = true;
      continue;
    }
    if (line.startsWith("#EXT-X-KEY:")) {
      const attrs = parseM3u8AttrList(line.slice("#EXT-X-KEY:".length));
      const method = String(attrs.METHOD || "").trim().toUpperCase();
      if (method && method !== "NONE") {
        encryptedMethod = method;
      }
      continue;
    }
    if (line.startsWith("#EXT-X-MAP:")) {
      const attrs = parseM3u8AttrList(line.slice("#EXT-X-MAP:".length));
      if (attrs.URI) {
        initUri = resolvePlaylistEntryUrl(attrs.URI, baseUrl);
      }
      continue;
    }
    if (line.startsWith("#EXTINF:")) {
      const dur = parseFloat(line.slice("#EXTINF:".length).split(",")[0]);
      nextDuration = Number.isFinite(dur) && dur > 0 ? dur : 0;
      continue;
    }
    if (line.startsWith("#")) continue;

    const segUrl = resolvePlaylistEntryUrl(line, baseUrl);
    if (!segUrl) continue;
    segments.push({
      uri: segUrl,
      durationSec: nextDuration,
    });
    totalDurationSec += nextDuration;
    nextDuration = 0;
  }

  if (encryptedMethod) {
    return {
      supported: false,
      reason: `encrypted_${encryptedMethod.toLowerCase()}`,
      segments: [],
      isVod: hasEndList,
      totalDurationSec,
    };
  }
  if (hasByteRange) {
    return {
      supported: false,
      reason: "byterange_not_supported",
      segments: [],
      isVod: hasEndList,
      totalDurationSec,
    };
  }
  if (segments.length === 0) {
    return {
      supported: false,
      reason: "no_segments",
      segments: [],
      isVod: hasEndList,
      totalDurationSec: 0,
    };
  }

  return {
    supported: true,
    reason: "ok",
    initUri,
    segments,
    isVod: hasEndList || segments.length >= 2,
    totalDurationSec,
  };
}

export function canPhoneFetchHlsDirectly(url) {
  const raw = String(url || "").trim();
  if (!raw || !/^https?:\/\//i.test(raw)) return false;
  let parsed;
  try {
    parsed = new URL(raw);
  } catch {
    return false;
  }
  const host = parsed.hostname.toLowerCase();
  if (host === "animenovaa.duckdns.org") return false;
  if (parsed.pathname.startsWith("/api/")) return false;
  for (const blocked of VPS_ONLY_CDN_HOSTS) {
    if (hostMatches(host, blocked)) return false;
  }
  // Signed CDN links carrying VPS IP bindings (e.g. ?i=95.182) return 403 from phone IPs.
  const ipParam = parsed.searchParams.get("i") || parsed.searchParams.get("ip") || "";
  if (/^(?:\d{1,3}\.){1,3}\d{1,3}$/.test(ipParam)) return false;
  return true;
}

/**
 * Resolves candidate manifest sources in preference order for phone-side HLS download:
 * 1) Direct CDN manifest (0% VPS bandwidth) when URL is plain & not VPS-IP-bound.
 * 2) Own VPS `/api/anime/hls-proxy` manifest + `/api/anime/seg-proxy` segments (0% ffmpeg/disk).
 */
export function buildHlsManifestCandidates({ manifestUrl, fallbackUrl, headers, baseUrl }) {
  const candidates = [];
  const seen = new Set();
  const pushCandidate = (url, hdrs, mode) => {
    const clean = String(url || "").trim();
    if (!clean || seen.has(clean)) return;
    seen.add(clean);
    candidates.push({ url: clean, headers: hdrs, mode });
  };

  const primary = String(manifestUrl || "").trim();
  const fallback = String(fallbackUrl || "").trim();

  // Check if primary is an /api/anime/hls-proxy wrapper with an unencrypted URL inside
  if (primary) {
    try {
      const parsed = new URL(primary, baseUrl || "https://animenovaa.duckdns.org");
      if (parsed.pathname.includes("/api/anime/hls-proxy")) {
        const innerUrl = parsed.searchParams.get("url") || "";
        const innerRef = parsed.searchParams.get("ref") || "";
        if (innerUrl && /^https?:\/\//i.test(innerUrl) && canPhoneFetchHlsDirectly(innerUrl)) {
          const directHdrs = {
            ...(headers || {}),
            ...(innerRef ? { Referer: innerRef, Origin: new URL(innerRef).origin } : {}),
          };
          pushCandidate(innerUrl, directHdrs, "direct-unwrapped");
        }
        pushCandidate(parsed.toString(), headers, "vps-hls-proxy");
      } else if (canPhoneFetchHlsDirectly(parsed.toString())) {
        pushCandidate(parsed.toString(), headers, "direct");
        if (baseUrl) {
          const ref = headers?.Referer || headers?.referer || "";
          const proxied = ref
            ? `${baseUrl.replace(/\/+$/, "")}/api/anime/hls-proxy?url=${encodeURIComponent(parsed.toString())}&ref=${encodeURIComponent(ref)}`
            : `${baseUrl.replace(/\/+$/, "")}/api/anime/hls-proxy?url=${encodeURIComponent(parsed.toString())}`;
          pushCandidate(proxied, undefined, "vps-hls-proxy");
        }
      } else {
        pushCandidate(parsed.toString(), headers, "vps-hls-proxy");
      }
    } catch {}
  }

  if (fallback && !fallback.includes("/api/anime/download-mp4")) {
    try {
      const parsedFallback = new URL(fallback, baseUrl || "https://animenovaa.duckdns.org").toString();
      pushCandidate(parsedFallback, undefined, "vps-hls-proxy");
    } catch {}
  }

  return candidates;
}
