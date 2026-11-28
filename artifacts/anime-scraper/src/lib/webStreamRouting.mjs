/**
 * Deterministic Browser-Safe Stream Routing for Anime NOVA Web.
 *
 * Aligns the web client with the mobile app's Fixed Deterministic Direct Streaming
 * while respecting web browser CORS and Referer restrictions:
 * - Browser-Direct (0% VPS video bytes): Kawaii CDN (with referrerPolicy="no-referrer"),
 *   Pixeldrain (/api/file/...), MediaFire CDN (download*.mediafire.com), Google Drive /
 *   GoogleUserContent, OK.ru / VK CDN, BuzzHeavier, Workers.dev — with a silent VPS proxy
 *   backup candidate so playback never dead-ends if a network/CDN blocks direct access.
 * - VPS Proxy from start (Browser-safe, zero 403/CORS failures): SA (sanime), NOVA VIP
 *   (nova_tg / nova_tg_dub / nova_vip), Referer/CORS-locked HLS manifests (strips
 *   directSegs=1 because external segment CDNs like inletcdn.space reject browser Origin
 *   and forbid custom Referer headers), and Referer-locked hosts (foupix, carateen,
 *   arabic-toons, stardima, streamtape, sendvid, mp4upload).
 */

export const WEB_DIRECT_MODE_VERSION = "1.0.11";

export const VPS_ONLY_SITES = new Set([
  "sanime",
  "sa",
  "nova_tg",
  "nova_tg_dub",
  "nova_vip",
]);

const VPS_ONLY_HOSTS = [
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
  "streamtape.com",
  "strtape.cloud",
  "tapecontent.net",
  "sendvid.com",
  "mp4upload.com",
  "pixeldrain.com",
  "pixeldrain.net",
];

const KAWAII_CDN_HOSTS = new Set([
  "cdn.momentoai.dev",
  "video.kawaii-anime.com",
  "cdn.mewstream.buzz",
  "hls.krussdomi.com",
  "bl.krussdomi.com",
  "cdn.imgnex.top",
  "cdn.watching.onl",
  "cdn.kryntal.top",
  "fetch.nexabloom.top",
]);

const HLS_URL_RE = /\.m3u8(?:[?#]|$)|\/(?:hls|playlist|manifest)(?:\/|[?#]|$)|\/api\/(?:anime|animation)\/hls-proxy/i;
const MP4_EXT_RE = /\.(?:mp4|m4v|mkv|webm|mov)(?:[?#]|$)/i;

function safeLower(v) {
  return String(v || "").trim().toLowerCase();
}

function hostMatches(hostname, suffix) {
  const h = safeLower(hostname);
  const s = safeLower(suffix);
  return h === s || h.endsWith(`.${s}`);
}

export function getWebDirectRequestHeaders(appToken) {
  const headers = {
    "X-Nova-Direct-Mode": "1",
    "X-Nova-Version": WEB_DIRECT_MODE_VERSION,
  };
  if (appToken) headers["X-App-Token"] = appToken;
  return headers;
}

export function isOwnVpsProxyUrl(url) {
  const s = safeLower(url);
  if (!s) return false;
  if (s.includes("/api/anime/hls-proxy")) {
    return !/[?&]directsegs=1(?:&|$)/i.test(s);
  }
  return (
    s.includes("/api/anime/video-proxy") ||
    s.includes("/api/anime/seg-proxy") ||
    s.includes("/api/anime/download-mp4") ||
    s.includes("/api/animation/hls-proxy") ||
    s.includes("/api/animation/video-proxy") ||
    s.includes("/api/dubbed/stream") ||
    s.includes("/api/dubbed/carateen/stream") ||
    s.includes("/api/aw-dubbed/mf-stream") ||
    s.includes("/api/tg-media/stream") ||
    s.includes("/api/tg-stream/")
  );
}

export function isPreProxiedDirectVideoUrl(url) {
  const s = safeLower(url);
  return (
    s.includes("/api/anime/video-proxy") ||
    s.includes("/api/animation/video-proxy") ||
    s.includes("/api/aw-dubbed/mf-stream") ||
    s.includes("/api/dubbed/stream") ||
    s.includes("/api/dubbed/carateen/stream") ||
    s.includes("/api/tg-media/stream") ||
    s.includes("/api/tg-stream/")
  );
}

export function stripDirectSegsParam(url) {
  const raw = String(url || "").trim();
  if (!raw || !/directsegs=1/i.test(raw)) return raw;
  try {
    const isRel = raw.startsWith("/");
    const parsed = new URL(isRel ? `https://nova.local${raw}` : raw);
    parsed.searchParams.delete("directSegs");
    parsed.searchParams.delete("directsegs");
    return isRel ? `${parsed.pathname}${parsed.search}` : parsed.toString();
  } catch {
    return raw.replace(/([?&])directsegs=1(&|$)/gi, (_, p1, p2) => (p2 === "&" ? p1 : ""));
  }
}

export function isKawaiiCdnUrl(url) {
  try {
    const parsed = new URL(url, "https://player.invalid");
    const host = parsed.hostname.toLowerCase();
    return (
      KAWAII_CDN_HOSTS.has(host) ||
      host.endsWith(".kawaii-anime.com") ||
      host.endsWith(".momentoai.dev") ||
      host.endsWith(".mewstream.buzz") ||
      host.endsWith(".imgnex.top") ||
      host.endsWith(".watching.onl") ||
      host.endsWith(".kryntal.top") ||
      (parsed.searchParams.has("md5") && /^(cdn|video)([.-][a-z0-9-]+)*\./i.test(host))
    );
  } catch {
    return false;
  }
}

export function isKawaiiHlsUrl(url, directType) {
  return (
    safeLower(directType) === "hls" ||
    /\.m3u8(?:[?#]|$)/i.test(String(url || "")) ||
    /\/(?:hls|playlist)(?:\/|[?#]|$)/i.test(String(url || ""))
  );
}

export function isBrowserDirectMediaUrl(url, opts = {}) {
  const clean = String(url || "").trim();
  if (!clean || !/^https?:\/\//i.test(clean)) return false;
  if (isOwnVpsProxyUrl(clean)) return false;
  const site = safeLower(opts.site);
  if (VPS_ONLY_SITES.has(site) || opts.deliveryMode === "vps-vip") return false;

  let parsed;
  try {
    parsed = new URL(clean);
  } catch {
    return false;
  }
  const host = parsed.hostname.toLowerCase();
  const path = parsed.pathname;

  for (const blocked of VPS_ONLY_HOSTS) {
    if (hostMatches(host, blocked)) return false;
  }

  if (isKawaiiCdnUrl(clean)) return true;
  if (/^download\d*\.mediafire\.com$/i.test(host) && path.length > 8) return true;
  if (host === "drive.google.com" || host.endsWith(".googleusercontent.com")) return true;
  if (hostMatches(host, "okcdn.ru") || hostMatches(host, "userapi.com") || hostMatches(host, "vkvideo.ru")) {
    return true;
  }
  if (
    (host === "dl.buzzheavier.com" || host.endsWith(".buzzheavier.com") || host.endsWith(".buzzheav.com")) &&
    path.length > 4
  ) {
    return true;
  }
  if (host.endsWith(".workers.dev")) return true;
  return false;
}

export function isBrowserNonIframeMediaUrl(url) {
  const clean = String(url || "").trim();
  if (!clean) return false;
  if (clean.startsWith("/")) return true;
  if (isOwnVpsProxyUrl(clean) || isPreProxiedDirectVideoUrl(clean)) return true;
  if (isBrowserDirectMediaUrl(clean)) return true;
  if (/^https?:\/\/(?:www\.)?pixeldrain\.(?:com|net)\/api\/file\/[a-zA-Z0-9_-]+/i.test(clean)) return true;
  if (clean.includes("streamtape.com") || clean.includes("sendvid.com")) return true;
  if (clean.includes("missourimonster-vyla.hf.space")) return true;
  if (/\.(m3u8|mp4|mkv|webm|ts)([?#]|$)/i.test(clean)) return true;
  return false;
}

function buildProxyUrlForSource(rawUrl, referer, isHls) {
  const cleanUrl = String(rawUrl || "").trim();
  if (!cleanUrl || cleanUrl.startsWith("/")) return cleanUrl;
  const ref = String(referer || "").trim();
  const basePath = isHls ? "/api/anime/hls-proxy" : "/api/anime/video-proxy";
  return ref
    ? `${basePath}?url=${encodeURIComponent(cleanUrl)}&ref=${encodeURIComponent(ref)}`
    : `${basePath}?url=${encodeURIComponent(cleanUrl)}`;
}

/**
 * Builds an ordered list of browser-playable URLs for a selected source:
 * [primaryUrl, ...fallbackUrls]
 *
 * Guarantees parity with mobile's direct-first policy while keeping every
 * browser stream protected from CORS/Referer 403 errors.
 */
export function buildWebPlaybackCandidates(src) {
  const rawCandidate = String(src?.directUrl || src?.url || "").trim();
  const altUrl = String(src?.url || "").trim();
  const site = safeLower(src?.site);
  const directType = safeLower(src?.directType);
  const deliveryMode = safeLower(src?.deliveryMode);
  const explicitRef = String(src?.headers?.Referer || src?.headers?.referer || "").trim();

  if (!rawCandidate) {
    return { primaryUrl: "", fallbackUrls: [], isHls: false, isDirect: false, needsNoReferrer: false };
  }

  // 1. HLS proxy URLs returned by API (including Manifest-Only directSegs=1 for RE / RE DUB / AD 2):
  //    Web browsers cannot spoof external Referer headers and require CORS on every HLS segment.
  //    Strip directSegs=1 so /api/anime/hls-proxy delivers segments cleanly with ACAO: *.
  if (/\/api\/(?:anime|animation)\/hls-proxy/i.test(rawCandidate)) {
    const safeHlsProxy = stripDirectSegsParam(rawCandidate);
    return {
      primaryUrl: safeHlsProxy,
      fallbackUrls: [],
      isHls: true,
      isDirect: false,
      needsNoReferrer: false,
    };
  }

  // 2. Pre-proxied VPS streams (SA, NOVA VIP /api/tg-stream/, cached video-proxy, dubbed proxy)
  if (isPreProxiedDirectVideoUrl(rawCandidate) || VPS_ONLY_SITES.has(site) || deliveryMode === "vps-vip") {
    const isHls = directType === "hls" || HLS_URL_RE.test(rawCandidate);
    const primaryUrl = rawCandidate.startsWith("/") || isOwnVpsProxyUrl(rawCandidate)
      ? rawCandidate
      : buildProxyUrlForSource(rawCandidate, explicitRef || rawCandidate, isHls);
    return {
      primaryUrl,
      fallbackUrls: [],
      isHls,
      isDirect: false,
      needsNoReferrer: false,
    };
  }

  // 3. Confirmed browser-direct CDNs (Kawaii, Pixeldrain, MediaFire, Drive, OK/VK, BuzzHeavier, Workers)
  if (isBrowserDirectMediaUrl(rawCandidate, { site, deliveryMode })) {
    const isKawaii = isKawaiiCdnUrl(rawCandidate);
    const isHls = isKawaii
      ? isKawaiiHlsUrl(rawCandidate, directType)
      : directType === "hls" || HLS_URL_RE.test(rawCandidate);

    let fallbackRef = explicitRef;
    if (!fallbackRef && isKawaii) {
      let host = "";
      try { host = new URL(rawCandidate).hostname.toLowerCase(); } catch {}
      fallbackRef = host.endsWith(".mewstream.buzz")
        ? "https://megaplay.buzz/"
        : "https://kawaiianime.cc/";
    }
    const proxyBackup = buildProxyUrlForSource(rawCandidate, fallbackRef, isHls);
    const fallbackUrls = proxyBackup && proxyBackup !== rawCandidate ? [proxyBackup] : [];
    return {
      primaryUrl: rawCandidate,
      fallbackUrls,
      isHls,
      isDirect: true,
      needsNoReferrer: isKawaii,
    };
  }

  // 4. External HLS URLs not yet wrapped in hls-proxy: proxy through /api/anime/hls-proxy so CORS succeeds
  const looksHls = directType === "hls" || HLS_URL_RE.test(rawCandidate);
  if (looksHls && /^https?:\/\//i.test(rawCandidate) && !rawCandidate.includes("missourimonster-vyla.hf.space")) {
    const proxied = buildProxyUrlForSource(rawCandidate, explicitRef, true);
    return {
      primaryUrl: proxied,
      fallbackUrls: [],
      isHls: true,
      isDirect: false,
      needsNoReferrer: false,
    };
  }

  // 5. External Referer-locked MP4 hosts (streamtape, sendvid, mp4upload, foupix, etc.)
  if (/^https?:\/\//i.test(rawCandidate)) {
    let host = "";
    try { host = new URL(rawCandidate).hostname.toLowerCase(); } catch {}
    const isVpsHost = VPS_ONLY_HOSTS.some((blocked) => hostMatches(host, blocked));
    if (isVpsHost || (MP4_EXT_RE.test(rawCandidate) && explicitRef)) {
      const proxied = buildProxyUrlForSource(rawCandidate, explicitRef || rawCandidate, false);
      return {
        primaryUrl: proxied,
        fallbackUrls: [],
        isHls: false,
        isDirect: false,
        needsNoReferrer: false,
      };
    }
  }

  // 6. Default pass-through (embed URL or direct URL with fallback if altUrl is a proxy)
  const fallbackUrls = altUrl && altUrl !== rawCandidate && isOwnVpsProxyUrl(altUrl) ? [altUrl] : [];
  return {
    primaryUrl: rawCandidate,
    fallbackUrls,
    isHls: looksHls,
    isDirect: !looksHls && !src?.isEmbed,
    needsNoReferrer: false,
  };
}

/**
 * Expands a prioritized array of fetched sources (e.g. multiple mirrors returned
 * for the same provider/tier) into a deduplicated ordered list of browser-playable
 * URLs: [src1.primary, ...src1.fallbacks, src2.primary, ...src2.fallbacks, ...].
 */
export function expandWebPlaybackCandidates(sources) {
  const list = Array.isArray(sources) ? sources : sources ? [sources] : [];
  const urls = [];
  for (const src of list) {
    if (!src) continue;
    const plan = buildWebPlaybackCandidates(src);
    if (plan.primaryUrl && !urls.includes(plan.primaryUrl)) {
      urls.push(plan.primaryUrl);
    }
    for (const fb of plan.fallbackUrls || []) {
      if (fb && !urls.includes(fb)) {
        urls.push(fb);
      }
    }
  }
  return urls;
}
