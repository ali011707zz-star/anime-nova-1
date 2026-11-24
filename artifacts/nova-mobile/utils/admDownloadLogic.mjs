/**
 * admDownloadLogic.mjs — Pure, strict, zero-VPS-load rules for ADM (Advanced Download Manager).
 *
 * Security & Bandwidth Guarantee:
 * - ONLY external direct MP4 URLs are ever allowed into ADM.
 * - NEVER allows VPS-hosted streams (NOVA VIP / Telegram / video-proxy / hls-proxy / download-mp4 / dubbed/stream).
 * - NEVER allows HLS (.m3u8), DASH (.mpd), HTML embed pages, IP-bound URLs, or custom-UA/Referer-locked hosts.
 * - Hidden completely on Android TV, iOS, and Web.
 */

export const DOWNLOAD_METHOD_STORAGE_KEY = "nova-download-method-v1";
export const ADM_PLAY_STORE_URL = "https://play.google.com/store/apps/details?id=com.dv.adm";
export const ADM_MARKET_URL = "market://details?id=com.dv.adm";
export const ADM_PACKAGES = ["com.dv.adm", "com.dv.adm.pay"];

/** @typedef {"ask" | "internal" | "adm"} DownloadMethodPref */

const VALID_PREFS = new Set(["ask", "internal", "adm"]);

export function normalizeDownloadMethodPref(value) {
  const s = String(value || "").trim().toLowerCase();
  return VALID_PREFS.has(s) ? s : "ask";
}

/**
 * ADM is strictly Android phone/tablet only — hidden in TV mode, Web, and iOS.
 */
export function isAdmAvailableOnDevice({ platformOs, tvMode }) {
  return String(platformOs || "").toLowerCase() === "android" && !tvMode;
}

const ADM_BLOCKED_SITE_EXACT = new Set([
  "nova_tg",
  "nova_tg_dub",
  "nova_vip",
  "kawaii",
  "megaplay",
  "megaplay_dub",
  "reflix",
  "reflix_dub",
  "reanime",
  "vidfast",
  "sanime",
  "carateen",
  "sp",
  "arabic-toons",
  "arabictoons",
]);

const ADM_BLOCKED_SITE_PREFIXES = [
  "nova_tg",
  "nova_vip",
  "anivexa_",
  "dubbed_sp_",
  "dubbed_carateen_",
  "dubbed_direct_",
];

/**
 * Fast static check on site/provider BEFORE fetching stream URLs.
 * Returns false if this site is known to ALWAYS be VPS-hosted, HLS-only, IP-bound, or custom-UA-locked.
 */
export function isSiteStaticallyEligibleForAdm(site, provider) {
  const s = String(site || "").trim().toLowerCase();
  const p = String(provider || "").trim().toLowerCase();

  if (p === "sp" || p === "carateen" || p === "arabic-toons" || p === "arabictoons") {
    return false;
  }
  if (!s) return true;
  if (ADM_BLOCKED_SITE_EXACT.has(s)) return false;
  for (const prefix of ADM_BLOCKED_SITE_PREFIXES) {
    if (s.startsWith(prefix)) return false;
  }
  return true;
}

const BLOCKED_HOST_SUFFIXES = [
  "streamtape.com",
  "streamtape.to",
  "streamtape.net",
  "streamta.pe",
  "tapecontent.net",
  "dood.to",
  "dood.la",
  "dood.ws",
  "dood.so",
  "dood.wf",
  "dood.li",
  "doodstream.com",
  "d000d.com",
  "filemoon.sx",
  "filemoon.to",
  "filemoon.in",
  "voe.sx",
  "mixdrop.co",
  "mixdrop.to",
  "mixdrop.ag",
  "vidmoly.to",
  "vidmoly.me",
  "sendvid.com",
  "sendvid.net",
  "megamax.me",
  "share4max.com",
  "mega.nz",
  "mega.co.nz",
  "krakenfiles.com",
  "gofile.io",
  "1fichier.com",
  "animenovaa.duckdns.org",
  "foupix.com",
  "pegasus.5387692.xyz",
  "kawaii-anime.com",
  "momentoai.dev",
  "mewstream.buzz",
  "krussdomi.com",
  "imgnex.top",
  "watching.onl",
  "kryntal.top",
  "nexabloom.top",
  "ok.ru",
  "okcdn.ru",
  "stardima.com.im",
  "hyperwatching.com",
  "hyperwatching.net",
  "hyperwatching.xyz",
  "sanime.net",
  "carateen.tv",
  "arabic-toons.com",
  "starcima.com",
  "vidking.net",
  "videasy.to",
];

const REFERER_LOCKED_DOMAINS = [
  "sanime.net",
  "carateen.tv",
  "kawaiianime",
  "megaplay.buzz",
  "stardima.com.im",
  "hyperwatching",
  "arabic-toons.com",
  "foupix.com",
  "starcima.com",
  "vidking.net",
  "videasy.to",
  "ok.ru",
];

const VPS_OWN_PATHS = [
  "/api/tg-media/",
  "/api/anime/hls-proxy",
  "/api/anime/seg-proxy",
  "/api/anime/download-mp4",
  "/api/dubbed/stream",
  "/api/animation/hls-proxy",
];

const NON_MP4_EXT_RE = /\.(?:m3u8|mpd|ts|m4s|vtt|srt|ass|ssa|html|htm|php|aspx|jsp|txt|xml|json|jpg|jpeg|png|webp|gif|zip|rar|7z)(?:[?#]|$)/i;
const HLS_PATH_RE = /\/(?:hls|playlist|manifest)(?:\/|[?#]|$)/i;
const EMBED_PAGE_PATH_RE = /\/(?:e|v|d|f|embed|iframe|embed-\d+|watch|player|file\/d)\//i;
const MP4_EXT_RE = /\.mp4(?:[?#]|$)/i;

function hostMatchesSuffix(hostname, suffix) {
  const h = String(hostname || "").toLowerCase();
  const s = String(suffix || "").toLowerCase();
  return h === s || h.endsWith("." + s);
}

function isPrivateOrLocalHost(hostname) {
  const h = String(hostname || "").toLowerCase().replace(/^\[|\]$/g, "");
  if (!h || h === "localhost" || h === "::1" || h === "0.0.0.0") return true;
  if (h === "95.182.93.105") return true;
  if (/^127\./.test(h)) return true;
  if (/^10\./.test(h)) return true;
  if (/^192\.168\./.test(h)) return true;
  if (/^169\.254\./.test(h)) return true;
  if (/^172\.(1[6-9]|2\d|3[01])\./.test(h)) return true;
  if (h.endsWith(".local") || h.endsWith(".internal")) return true;
  return false;
}

function isKnownDirectMp4Endpoint(parsed) {
  const host = parsed.hostname.toLowerCase();
  const path = parsed.pathname;

  // 1. Explicit .mp4 file path (never a webpage)
  if (MP4_EXT_RE.test(path)) return true;

  // 2. Pixeldrain direct file API: https://pixeldrain.com/api/file/<id>
  if ((host === "pixeldrain.com" || host === "pixeldrain.net" || host.endsWith(".pixeldrain.com")) &&
      /^\/api\/file\/[a-zA-Z0-9_-]+$/i.test(path)) {
    return true;
  }

  // 3. Direct MediaFire CDN download host (downloadXXXX.mediafire.com/...)
  if (/^download\d*\.mediafire\.com$/i.test(host) && path.length > 8 && !NON_MP4_EXT_RE.test(path)) {
    return true;
  }

  // 4. Buzzheavier direct download endpoint
  if ((host === "dl.buzzheavier.com" || host.endsWith(".buzzheavier.com") || host.endsWith(".buzzheav.com")) &&
      path.length > 4 && !NON_MP4_EXT_RE.test(path) && !EMBED_PAGE_PATH_RE.test(path)) {
    return true;
  }

  return false;
}

function fail(reason, messageAr) {
  return {
    eligible: false,
    directUrl: null,
    needsMfResolve: false,
    mfLink: null,
    reason,
    messageAr,
  };
}

/**
 * Ultra-strict validator that decides if a stream/download source can be safely
 * sent directly to ADM with ZERO bandwidth load on our VPS.
 */
export function resolveAdmDirectMp4(input = {}) {
  const {
    url = "",
    rawUrl = "",
    directUrl = "",
    directType = "",
    mediaType = "",
    site = "",
    provider = "",
    isEmbed = false,
    headers = null,
    apiBase = "https://animenovaa.duckdns.org",
  } = input;

  if (!isSiteStaticallyEligibleForAdm(site, provider)) {
    return fail(
      "site_not_eligible",
      "هذا السيرفر محمي أو يعمل عبر خادم التطبيق فقط — لا يدعم ADM.",
    );
  }

  if (isEmbed) {
    return fail("embed_not_supported", "هذا المصدر صفحة عرض وليس رابط MP4 مباشر.");
  }

  const dt = String(directType || "").trim().toLowerCase();
  const mt = String(mediaType || "").trim().toLowerCase();
  if (dt === "hls" || dt === "m3u8" || dt === "dash" || mt === "hls" || mt === "m3u8" || mt === "dash") {
    return fail("hls_not_supported", "بث HLS غير مدعوم عبر ADM — يدعم ADM ملفات MP4 المباشرة فقط.");
  }

  // Reject if explicit headers require a custom User-Agent (ADM won't send it)
  if (headers && typeof headers === "object") {
    const ua = String(headers["User-Agent"] || headers["user-agent"] || "").trim();
    if (ua && !/^Mozilla\/5\.0/i.test(ua)) {
      return fail("requires_custom_ua", "هذا السيرفر يتطلب ترويسة خاصة لا يدعمها ADM.");
    }
    const ref = String(headers.Referer || headers.referer || "").trim().toLowerCase();
    if (ref && REFERER_LOCKED_DOMAINS.some((d) => ref.includes(d))) {
      return fail("requires_referer", "هذا السيرفر يتطلب مرجع حماية خاص ولا يعمل مباشرة عبر ADM.");
    }
  }

  let ownHost = "animenovaa.duckdns.org";
  try {
    ownHost = new URL(apiBase).hostname.toLowerCase();
  } catch {}

  const candidates = [rawUrl, directUrl, url]
    .map((v) => String(v || "").trim())
    .filter(Boolean);

  if (!candidates.length) {
    return fail("empty_url", "لم يتوفر رابط تحميل مباشر لهذا السيرفر.");
  }

  // First check if ANY candidate is a VPS-only route or MediaFire resolver route
  for (const cand of candidates) {
    const lower = cand.toLowerCase();
    for (const blockedPath of VPS_OWN_PATHS) {
      if (lower.includes(blockedPath)) {
        return fail("vps_only_stream", "هذا السيرفر يمر عبر خادم التطبيق فقط — التحميل متاح داخل التطبيق.");
      }
    }
  }

  // Check if candidate is /api/aw-dubbed/mf-stream?link=...
  for (const cand of candidates) {
    if (cand.includes("/api/aw-dubbed/mf-stream")) {
      try {
        const parsed = new URL(cand, apiBase);
        const mfLink = String(parsed.searchParams.get("link") || "").trim();
        if (/^https?:\/\/(?:www\.)?mediafire\.com\//i.test(mfLink)) {
          return {
            eligible: false,
            directUrl: null,
            needsMfResolve: true,
            mfLink,
            reason: "needs_mf_resolve",
            messageAr: "جاري استخراج رابط MediaFire المباشر...",
          };
        }
      } catch {}
    }
  }

  let lastReason = "not_verified_direct_mp4";
  let lastMessage = "هذا السيرفر لا يوفر رابط MP4 خارجي مباشر صالح لـ ADM.";

  for (const cand of candidates) {
    let working = cand;

    // Unwrap /api/anime/video-proxy?url=<plain_external_url>&ref=...&ua=...
    if (working.includes("/api/anime/video-proxy")) {
      try {
        const parsedProxy = new URL(working, apiBase);
        const customUa = String(parsedProxy.searchParams.get("ua") || "").trim();
        if (customUa) {
          lastReason = "requires_custom_ua";
          lastMessage = "هذا السيرفر يتطلب ترويسة خاصة لا يدعمها ADM.";
          continue;
        }
        const proxyRef = String(parsedProxy.searchParams.get("ref") || "").trim().toLowerCase();
        if (proxyRef && REFERER_LOCKED_DOMAINS.some((d) => proxyRef.includes(d))) {
          lastReason = "requires_referer";
          lastMessage = "هذا السيرفر محمي بمرجع خاص ولا يعمل مباشرة عبر ADM.";
          continue;
        }
        const inner = String(parsedProxy.searchParams.get("url") || "").trim();
        if (!/^https?:\/\//i.test(inner)) {
          lastReason = "opaque_proxy_url";
          lastMessage = "رابط هذا السيرفر مشفّر للتحميل الداخلي فقط.";
          continue;
        }
        working = inner;
      } catch {
        continue;
      }
    }

    if (!/^https?:\/\//i.test(working)) {
      continue;
    }

    let parsed;
    try {
      parsed = new URL(working);
    } catch {
      continue;
    }

    if (parsed.protocol !== "https:" && parsed.protocol !== "http:") {
      continue;
    }

    const host = parsed.hostname.toLowerCase();

    // Never allow our own VPS or private/local networks
    if (host === ownHost || isPrivateOrLocalHost(host)) {
      lastReason = "vps_host_blocked";
      lastMessage = "الرابط تابع لخادم التطبيق — التحميل متاح داخل التطبيق فقط.";
      continue;
    }

    // Never allow IP-bound or Referer-locked domains
    if (BLOCKED_HOST_SUFFIXES.some((s) => hostMatchesSuffix(host, s))) {
      lastReason = "blocked_host";
      lastMessage = "هذا المصدر مقيد بحماية السيرفر ولا يعمل مباشرة عبر ADM.";
      continue;
    }

    // Reject VPS IP-bound query tokens (e.g. ?ips=95.182.93.105)
    const ipsParam = parsed.searchParams.get("ips") || parsed.searchParams.get("ip") || "";
    if (ipsParam.includes("95.182.93.105")) {
      lastReason = "ip_bound_url";
      lastMessage = "الرابط مربوط بعنوان الخادم ولن يعمل خارج التطبيق.";
      continue;
    }

    // Reject HLS/DASH/non-MP4/webpages
    if (NON_MP4_EXT_RE.test(parsed.pathname) || HLS_PATH_RE.test(parsed.pathname) || parsed.href.toLowerCase().includes(".m3u8")) {
      lastReason = "hls_not_supported";
      lastMessage = "بث HLS غير مدعوم عبر ADM — يدعم ADM ملفات MP4 المباشرة فقط.";
      continue;
    }

    // Reject raw MediaFire HTML landing pages (must be downloadXXXX.mediafire.com)
    if (host === "mediafire.com" || host === "www.mediafire.com") {
      lastReason = "html_landing_page";
      lastMessage = "الرابط صفحة ويب وليس ملف MP4 مباشر.";
      continue;
    }

    if (EMBED_PAGE_PATH_RE.test(parsed.pathname)) {
      lastReason = "embed_not_supported";
      lastMessage = "هذا الرابط مشغّل ويب وليس ملف MP4 مباشر.";
      continue;
    }

    // Ultra-strict positive verification: must be a verified direct MP4 file/endpoint
    if (!isKnownDirectMp4Endpoint(parsed)) {
      lastReason = "not_verified_direct_mp4";
      lastMessage = "لم يتم التحقق أن الرابط ملف MP4 مباشر صالح لـ ADM.";
      continue;
    }

    return {
      eligible: true,
      directUrl: parsed.toString(),
      needsMfResolve: false,
      mfLink: null,
      reason: "direct_mp4",
      messageAr: "",
    };
  }

  return fail(lastReason, lastMessage);
}

/**
 * Clean, filesystem-safe MP4 filename for ADM.
 */
export function buildAdmFileName({ title, ep, quality }) {
  const cleanTitle = String(title || "Anime_NOVA")
    .replace(/[\\/:*?"<>|#%&{}$!'@+=`~[\]()]+/g, " ")
    .replace(/\s+/g, "_")
    .replace(/^_+|_+$/g, "")
    .slice(0, 64) || "Anime_NOVA";

  const epNum = Number(ep);
  const epPart = Number.isFinite(epNum) && epNum > 0 ? `_EP${Math.floor(epNum)}` : "";

  const cleanQ = String(quality || "")
    .replace(/[^a-zA-Z0-9]+/g, "")
    .toUpperCase()
    .slice(0, 12);
  const qPart = cleanQ ? `_${cleanQ}` : "";

  return `${cleanTitle}${epPart}${qPart}.mp4`;
}

/**
 * Builds Android Intent URIs targeting ADM Standard (com.dv.adm) and ADM Pro (com.dv.adm.pay).
 */
export function buildAdmIntentUrls(directUrl, fileName) {
  let parsed;
  try {
    parsed = new URL(directUrl);
  } catch {
    return [];
  }
  const scheme = parsed.protocol.replace(":", "");
  if (scheme !== "https" && scheme !== "http") return [];

  const target = `${parsed.host}${parsed.pathname}${parsed.search}`;
  const safeName = fileName ? encodeURIComponent(fileName) : "";
  const extraFilename = safeName ? `S.com.android.extra.filename=${safeName};` : "";

  return ADM_PACKAGES.map(
    (pkg) =>
      `intent://${target}` +
      `#Intent;scheme=${scheme};` +
      "action=android.intent.action.VIEW;" +
      "type=video/mp4;" +
      `package=${pkg};` +
      extraFilename +
      "end",
  );
}
