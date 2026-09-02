import React, { useState, useEffect, useRef, useCallback, useMemo } from "react";
import {
  View, Text, Image, ScrollView, ActivityIndicator,
  StyleSheet, Platform, Animated, Easing, Alert,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { WebView } from "react-native-webview";
import { useVideoPlayer, VideoView } from "expo-video";
import { useLocalSearchParams, useRouter } from "expo-router";
import { RiftPlayer, PlayerSource } from "@/components/RiftPlayer";
import { HiddenResolverWebView, ResolvedStream } from "@/components/HiddenResolverWebView";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { useApp } from "@/context/AppContext";
import { isTvDevice, tvFocusStyle, TvFocusGuideView, TvPressable } from "@/utils/tv";
const Pressable = TvPressable;
import { useTvFocusMemory } from "@/utils/tvFocus";
import { getBaseUrl } from "@/utils/api";
import { secureFetch, secureStreamFetch, warmAuthToken, getAuthToken, getDownloadToken } from "@/utils/secureApi";
import {
  startGlobalDownload,
  subscribeActiveDownloads,
  getActiveDownloadsSnapshot,
  cancelActiveDownload,
} from "@/utils/downloadManager";
import * as ScreenOrientation from "expo-screen-orientation";
import { openIsolatedPlayer } from "@/lib/isolatedPlayer";
import { ensureDownloadAllowed, ensureWatchAccess, getAdState } from "@/utils/adPolicy";
import { RewardedAdPrompt } from "@/components/RewardedAdPrompt";
import { startMobileWatchAnalytics } from "@/utils/analytics";

/* ── Types ── */
type Quality    = "1080p FHD" | "720p HD" | "360p SD";
type Screen     = "loading" | "picker" | "native" | "embed" | "resolving";
type AvailabilityQuality = "1080p" | "720p" | "360p";

/**
 * Expo Router may already decode route params, while older links can still
 * contain percent-encoded values. A malformed/partial percent sequence must
 * never crash the whole watch route during render.
 */
function safeDecodeURIComponent(value: string | undefined): string {
  if (!value) return "";
  try {
    return decodeURIComponent(value);
  } catch {
    return value;
  }
}

/* ── مواقع محمية بـ Cloudflare/Turnstile يفشل الخادم (VPS) بجلب فيديوها المباشر —
   نحاول أولاً حلّها عبر WebView مخفي (IP سكني حقيقي للجهاز) قبل عرض بطاقة "يحتاج تطبيق أصلي" ── */
// animephoenix أُزيل من WEBVIEW_RESOLVE_SITES — الآن يُرجع روابط مباشرة (phoenixpr CDN) لا iframes
const WEBVIEW_RESOLVE_SITES = new Set(["animelek", "animedar", "ristoanime", "faselhd_db", "mycima"]);
function needsHiddenResolve(s: Src): boolean {
  return !!s.isEmbed && !!s.site && WEBVIEW_RESOLVE_SITES.has(s.site);
}

interface Src {
  url?: string;
  directUrl?: string;
  /** The signed provider URL, kept separately from the mobile playback proxy. */
  rawUrl?: string;
  qualityRank?: number;
  label?: string;
  quality?: string;
  site?: string;
  isEmbed?: boolean;
  subtitleUrl?: string;
  corsOk?: boolean;
  name?: string;
  directType?: string;
  skipIntro?: { start: number; end: number };
  skipOutro?: { start: number; end: number };
  /** Referer/Origin headers مطلوبة للـ CDN — مُعادة من الخادم لتجنب الاعتماد على تحليل رابط الـ proxy */
  headers?: Record<string, string>;
}

const SUBTITLE_DISABLED_SITES = new Set([
  "animeify", "af",
  "animewitcher", "aw",
  "sanime", "sa",
  "anifox", "fx",
  "anslayer", "as",
]);

/* Playback and download providers are separate product surfaces. */
const DOWNLOAD_SOURCE_SITES = new Set([
  "animewitcher", // AW
  "sanime",       // SA
  "anslayer",     // AS
  "animeify",     // AF — direct MediaFire/FileMoon sources
  "anifox",       // FX
]);

function subtitlesDisabledForSite(site?: string): boolean {
  return SUBTITLE_DISABLED_SITES.has(String(site || "").trim().toLowerCase());
}

/* ── Site → 2-letter tag (mirrors web SCRAPER_DEFS tags exactly) ── */
const SITE_TAG: Record<string, string> = {
  shahiid: "SH", animelek: "EK", animedar: "AD", okanime: "OK",
  ristoanime: "RS", animeify: "AF", animeday: "DY", arabseed: "AR",
  anime4up2: "4U", mycima: "MC", topcinemaa: "TC",
  animewitcher: "AW", kawaii: "KW", megaplay: "MP", anineko: "AN",
  animekai: "AK", consumet_gogo: "GO",
  vidlink_anim: "VL", vidfast: "VF",
  animetime: "AT", animepahe: "AP", dulo_anim: "DL",
  faselhd_db: "FH",
  notorrent: "NO", sanime: "SA", anipm: "PM", anslayer: "AS",
  akwam: "AQ",
  anivexa_animegg: "GG", anivexa_anidbapp: "DB", anivexa_2dhive: "2D",
  anivexa_anibd: "BD", anivexa_senshi: "SE", anivexa_kaa: "KA",
};

/* ── اسم عرض لكل موقع في منتقي المصادر ── */
const SITE_LABEL: Record<string, string> = {
  kawaii: "Kawaii", megaplay: "MegaPlay", animekai: "AnimeKai",
  consumet_gogo: "GogoAnime", animewitcher: "AnimeWitcher",
  anineko: "AniNeko",
  dulo_anim: "Dulo",
  anikototv: "AniKotoTV", mitanime: "MITanime", vidfast: "VidFast",
  animepahe: "AnimePahe", shahiid: "Shahiid", animelek: "Animelek",
  animedar: "Animedar", okanime: "OkAnime", ristoanime: "RistoAnime",
  animeify: "AnimeIfy", animeday: "AnimeDay", arabseed: "ArabSeed",
  anime4up2: "Anime4Up", mycima: "MyCima", topcinemaa: "TopCinema",
  faselhd_db: "FaselHD", animetime: "AnimeTime",
  notorrent: "Notorrent", sanime: "SAnime", anipm: "AniPm", anslayer: "AnimeSlayer",
  akwam: "Akwam",
  anivexa_anikoto: "AniKoto", anivexa_animegg: "AnimeGG",
  anivexa_anidbapp: "AniDB App", anivexa_2dhive: "2dhive",
  anivexa_anibd: "AniBD", anivexa_senshi: "Senshi",
  anivexa_kaa: "Kickassanime",
};
function getSiteTag(site: string): string {
  return SITE_TAG[site] || site.slice(0, 2).toUpperCase();
}

/* ── وصف قصير لكل مصدر في شبكة الاختيار (يطابق نظام الويب) ── */
const SITE_DESC: Record<string, string> = {
  kawaii: "1080p · مباشر", megaplay: "HLS · صوت خام · ترجمة Kawaii",
  anineko: "HLS · متعدد الجودات", animekai: "HLS · ياباني + ترجمة",
  consumet_gogo: "HLS · صوت خام · كل الجودات", animewitcher: "PD/ST · مباشر",
  dulo_anim: "ياباني/إنجليزي · HLS مباشر",
  vidlink_anim: "ياباني مترجم · مباشر",
  mitanime: "ياباني مترجم · مباشر", vidfast: "TMDB · HLS · متعدد الخوادم",
  animepahe: "ياباني مترجم · HLS نظيف", anipm: "ياباني مترجم · 37 سيرفر/حلقة",
  shahiid: "عربي مدبلج / مترجم", animelek: "عربي مدبلج / مترجم",
  animedar: "عربي مترجم", okanime: "عربي مترجم",
  ristoanime: "عربي مترجم · MP4 مباشر", animeify: "عربي · ميغا",
  animeday: "عربي مدبلج · HLS مباشر", arabseed: "عربي مدبلج/مترجم · MP4",
  anime4up2: "عربي مترجم · HLS/ميغا", mycima: "عربي مترجم · HLS/فيديو",
  topcinemaa: "عربي مترجم · HLS/فيديو",
  faselhd_db: "عربي مترجم · GitHub DB", animetime: "عربي مترجم · مباشر",
  notorrent: "IMDB · مصادر متعددة", sanime: "عربي مدبلج/مترجم · MP4",
  anslayer: "مشغلات خارجية · MixDrop/MediaFire",
  akwam: "عربي مترجم · MP4 مباشر",
  anivexa_mkissa: "HLS · صوت خام", anivexa_re: "HLS · FlixCloud · ياباني مترجم",
  anivexa_anikoto: "HLS · صوت خام", anivexa_animegg: "HLS · صوت خام",
  anivexa_anidbapp: "HLS · صوت خام", anivexa_2dhive: "HLS · صوت خام",
  anivexa_anibd: "HLS · صوت خام", anivexa_senshi: "HLS · صوت خام",
  anivexa_kaa: "HLS · صوت خام",
};
function getSiteDesc(site: string): string {
  return SITE_DESC[site] || "";
}

/* Sources disabled by product policy. AniNeko is supported through the
   full VPS HLS proxy, so it must remain available on mobile. */
const BLOCKED_SOURCE_SITES = new Set(["hianime", "hi"]);
function isBlockedSource(src: Pick<Src, "site">): boolean {
  return BLOCKED_SOURCE_SITES.has(String(src.site || "").trim().toLowerCase());
}

/* ── Quality helpers ── */
const TIER_RANK: Record<Quality, number> = { "1080p FHD": 3, "720p HD": 2, "360p SD": 1 };
const QUALITY_STYLE: Record<Quality, { dot: string; badge: string; border: string; text: string }> = {
  "1080p FHD": { dot: "#fbbf24", badge: "rgba(251,191,36,0.10)", border: "rgba(251,191,36,0.26)", text: "rgba(253,224,71,0.95)" },
  "720p HD":   { dot: "#34d399", badge: "rgba(52,211,153,0.09)", border: "rgba(52,211,153,0.24)", text: "rgba(110,231,183,0.92)" },
  "360p SD":   { dot: "#94a3b8", badge: "rgba(148,163,184,0.07)", border: "rgba(148,163,184,0.16)", text: "rgba(148,163,184,0.70)" },
};
const Q_SHORT: Record<Quality, string> = { "1080p FHD": "FHD", "720p HD": "HD", "360p SD": "SD" };
const Q_LABEL: Record<Quality, string> = {
  "1080p FHD": "جودة عالية جداً · FHD 1080",
  "720p HD":   "جودة عالية · HD 720",
  "360p SD":   "جودة متوسطة · SD 360",
};

function getSrcQuality(s: Src): Quality {
  const rank = s.qualityRank ?? 0;
  /* The API's explicit quality is authoritative.  Looking at the proxy URL
     first can misread a quality token inside an encoded upstream URL and make
     the player run a different tier than the row the user selected. */
  const explicit = String(s.quality || "").toLowerCase();
  if (/(?:2160|1440|1080)\s*p?|fhd|full[ ._-]*hd/.test(explicit)) return "1080p FHD";
  if (/(?:720)\s*p?|(?<!f)\bhd\b/.test(explicit)) return "720p HD";
  if (/(?:480|360)\s*p?|sd/.test(explicit)) return "360p SD";

  const text = `${s.label || ""} ${s.name || ""} ${s.url || ""} ${s.directUrl || ""}`.toLowerCase();
  const pixels = text.match(/(?:^|[^0-9])(2160|1440|1080|720|480|360)(?:p)?(?:[^0-9]|$)/)?.[1];
  const height = pixels ? Number(pixels) : 0;
  if (height >= 1080 || /\bfhd\b|\bfull[ ._-]*hd\b/.test(text)) return "1080p FHD";
  if (height >= 720 || /\bhd\b/.test(text)) return "720p HD";
  if (height >= 360 || /\bsd\b/.test(text)) return "360p SD";
  if (rank >= 13) return "1080p FHD";
  if (rank >= 9)  return "720p HD";
  return "360p SD";
}
function isDirectPlayable(s: Src): boolean {
  if (s.isEmbed) return false;
  /* fetch-source may encrypt directUrl while retaining the readable internal
     proxy in url. Validate the URL the player can actually consume. */
  const playableUrl = getPlayUrl(s);
  const url = playableUrl.toLowerCase();
  if (!isValidSourceUrl(playableUrl)) return false;
  if (url.includes("mega.nz") || url.includes("mega.co.nz")) return false;
  // mp4upload: HEVC codec — يُشغَّل بدون صوت/صورة على أغلب الأجهزة
  if (url.includes("mp4upload")) return false;
  return true;
}
function isEmbedSrc(s: Src): boolean {
  if (!s.isEmbed) return false;
  const url = (s.directUrl || s.url || "").toLowerCase();
  // vidmoly و mega → عرض داخل WebView
  return url.includes("mega.nz") || url.includes("mega.co.nz") || url.includes("vidmoly");
}
function isMobilePlayable(s: Src): boolean {
  return isDirectPlayable(s) || (Boolean(s.isEmbed) && isValidSourceUrl(getPlayUrl(s)));
}
function getPlayUrl(s: Src): string {
  /* Mobile responses may contain an encrypted directUrl plus an unencrypted
     /api/... URL in `url`. Prefer the readable proxy URL or the player receives
     the ciphertext and silently fails. */
  const candidates = [s.url, s.directUrl].filter((value): value is string => !!value);
  const readableProxy = candidates.find((value) =>
    /\/api\/(?:anime|animation)\/(?:hls|video)-proxy/i.test(value)
    && /[?&]url=(?:https?%3A|https?:\/\/)/i.test(value),
  );
  if (readableProxy) return readableProxy;
  if (s.url?.startsWith("/api/")) return s.url;
  if (s.directUrl?.startsWith("/api/")) return s.directUrl;
  return s.directUrl || s.url || "";
}

function isValidSourceUrl(url: string | undefined): boolean {
  if (!url) return false;
  try {
    const parsed = new URL(url.startsWith("/") ? `https://nova.local${url}` : url);
    return parsed.protocol === "http:" || parsed.protocol === "https:";
  } catch {
    return false;
  }
}

/**
 * استخراج Referer/Origin من رابط proxy (hls-proxy أو video-proxy).
 * يُمرَّران لـ ExoPlayer/AVPlayer كـ HTTP headers مع كل طلب.
 * بدون هذه الـ headers يعيد CDN 403 لأن الطلب يبدو من مصدر مجهول.
 */
function extractProxyHeaders(url: string): Record<string, string> | undefined {
  if (!url) return undefined;
  /* روابط VPS proxy — ref الخاص بها hex مشفَّر وليس URL حقيقي؛ تخطَّها */
  if (url.includes("/api/anime/") || url.includes("/api/animation/")) return undefined;
  try {
    const fullUrl = url.startsWith("/") ? `http://x.com${url}` : url;
    const u = new URL(fullUrl);
    const ref = u.searchParams.get("ref");
    if (!ref) return undefined;
    let origin = "";
    try { origin = new URL(ref).origin; } catch {}
    return origin ? { Referer: ref, Origin: origin } : { Referer: ref };
  } catch {
    return undefined;
  }
}

function resolveUrl(url: string | undefined, base: string): string {
  if (!url) return "";
  return url.startsWith("/") ? base + url : url;
}

/**
 * يضمن أن رابط الفيديو يمرّ عبر VPS proxy لضمان التوافق مع ExoPlayer/AVPlayer.
 * إذا كان الرابط بالفعل عبر /api/ → يتركه كما هو.
 * إذا كان رابطاً مباشراً للـ CDN → يلفّه في hls-proxy أو video-proxy.
 */
function ensureVpsProxy(
  url: string,
  headers: Record<string, string> | undefined,
  base: string,
  hlsHint = false,
): string {
  if (!url) return url;
  // بالفعل proxy عبر VPS
  if (url.includes("/api/anime/") || url.includes("/api/animation/") || url.includes("/proxy/hls")) return url;
  // Shirayuki already rewrites child playlists and segments. Do not wrap
  // its proxy URL in Nova's HLS proxy a second time.
  if (url.includes("proxy.anikuro.ru/")) return url;
  // روابط embed (mega / vidmoly) — لا نلفّها
  if (url.includes("mega.nz") || url.includes("mega.co.nz")) return url;
  if (url.includes("mp4upload")) return url;
  // LookMovie CDN — يعمل مباشرة من IP سكني مع Referer؛ يحجب VPS/datacenter
  if (url.includes("lookmovie.")) return url;
  const ref = headers?.Referer || "";
  const isHls = hlsHint || /\.(m3u8)(\?|$)|\/hls\/|\/playlist\//i.test(url);
  if (isHls) {
    return ref
      ? `${base}/api/anime/hls-proxy?url=${encodeURIComponent(url)}&ref=${encodeURIComponent(ref)}`
      : `${base}/api/anime/hls-proxy?url=${encodeURIComponent(url)}`;
  }
  if (ref) {
    return `${base}/api/anime/video-proxy?url=${encodeURIComponent(url)}&ref=${encodeURIComponent(ref)}`;
  }
  return url; // لا Referer متاح — استخدم كما هو
}

/* Kawaii signed media must be fetched by the VPS with the provider Referer.
   Older API/cache rows can still contain the raw CDN URL, so normalize those
   rows on mobile before they reach ExoPlayer. */
const KAWAII_MOBILE_CDN_HOSTS = new Set([
  "cdn.momentoai.dev",
  "video.kawaii-anime.com",
  "cdn.mewstream.buzz",
  "cdn.watching.onl",
]);

function isKawaiiMobileCdnHost(hostname: string): boolean {
  const host = hostname.toLowerCase();
  return (
    KAWAII_MOBILE_CDN_HOSTS.has(host) ||
    host.endsWith(".kawaii-anime.com") ||
    host.endsWith(".momentoai.dev") ||
    host.endsWith(".mewstream.buzz")
  );
}

function normalizeKawaiiMobileSource(source: Src, base: string): Src {
  if (String(source.site || "").toLowerCase() !== "kawaii") return source;

  const candidates = [source.rawUrl, source.url, source.directUrl]
    .filter((value): value is string => typeof value === "string" && value.length > 0);
  const rawUrl = candidates.find((value) => {
    try {
      return isKawaiiMobileCdnHost(new URL(value).hostname);
    } catch {
      return false;
    }
  });
  if (!rawUrl) return source;

  let host = "";
  try { host = new URL(rawUrl).hostname.toLowerCase(); } catch {}
  /* Kawaii has historically mislabeled some signed MP4 responses as HLS.
     The media URL is authoritative, matching the web player and API. */
  const isHls = /\.m3u8(?:[?#]|$)/i.test(rawUrl)
    || /\/(?:hls|playlist)(?:\/|[?#]|$)/i.test(rawUrl);
  const referer = host === "cdn.mewstream.buzz"
    ? "https://megaplay.buzz/"
    : source.headers?.Referer || "https://kawaiianime.cc/";
  const proxyPath = isHls ? "/api/anime/hls-proxy" : "/api/anime/video-proxy";
  const proxyUrl = `${base}${proxyPath}?url=${encodeURIComponent(rawUrl)}&ref=${encodeURIComponent(referer)}`;

  return {
    ...source,
    url: proxyUrl,
    directUrl: proxyUrl,
    rawUrl,
    directType: isHls ? "hls" : "mp4",
    corsOk: false,
    headers: {
      ...(source.headers || {}),
      Referer: referer,
      Origin: new URL(referer).origin,
    },
  };
}

function isHlsMediaUrl(url: string): boolean {
  return /\.m3u8(?:[?#]|$)|\/api\/anime\/hls-proxy|\/(?:hls|playlist)(?:\/|$)/i.test(url);
}

/* These providers sign media for the viewer's device and can reject the
   VPS/datacenter IP even when the Referer is correct. Keep their original
   URL on mobile and send provider headers with every ExoPlayer request. */
const MOBILE_DIRECT_SITES = new Set(["kawaii", "animekai"]);

function getMobileDirectUrl(source: Src): string | null {
  if (!MOBILE_DIRECT_SITES.has(String(source.site || "").toLowerCase())) return null;
  const candidate = source.rawUrl;
  if (!candidate || !isValidSourceUrl(candidate)) return null;
  /* Kawaii's rotating CDN now returns HLS for many entries in the latest
     episodes feed. Keep HLS on the VPS proxy so the manifest and every
     rewritten segment receive the provider Referer/Origin consistently.
     Raw direct playback remains useful for signed MP4 responses. */
  if (String(source.site || "").toLowerCase() === "kawaii" && isHlsMediaUrl(candidate)) {
    return null;
  }
  /* Kawaii's rotating CDN now returns HLS for many entries in the latest
     episodes feed. Keep HLS on the VPS proxy so the manifest and every
     rewritten segment receive the provider Referer/Origin consistently.
     Raw direct playback remains useful for signed MP4 responses. */
  if (String(source.site || "").toLowerCase() === "kawaii" && isHlsMediaUrl(candidate)) {
    return null;
  }
  return candidate;
}

/* HLS is a playlist, not an MP4. Route it through the VPS converter; direct
   MP4/proxy streams remain resumable downloads. Subtitles stay sidecars. */
function buildEmbeddedDownloadUrl(
  site: string,
  mediaUrl: string,
  subtitleUrl: string | undefined,
  base: string,
): string {
  const needsConversion = site === "kawaii" || isHlsMediaUrl(mediaUrl);
  if (!needsConversion) return mediaUrl;
  const query = new URLSearchParams({
    site,
    url: mediaUrl,
  });
  if (subtitleUrl) {
    query.set("subtitleUrl", subtitleUrl);
  }
  return `${base}/api/anime/download-mp4?${query.toString()}`;
}

/* Web's canonical Arabic subtitle policy: KW supplies the track for the
   Japanese raw-audio providers AN/AK/MP as well as for KW itself. */
const KAWAII_SUBTITLE_SITES = new Set(["kawaii", "anineko", "animekai", "megaplay"]);
const DOWNLOAD_SUBTITLE_SITES = KAWAII_SUBTITLE_SITES;

function normalizeProviderSubtitleUrl(
  site: string,
  url: string | undefined,
  base: string,
): string | undefined {
  if (!url) return undefined;
  const resolved = resolveUrl(url, base);
  if (!KAWAII_SUBTITLE_SITES.has(site)) return resolved;
  if (resolved.includes("/api/anime/translate-vtt") || resolved.includes("/api/anime/proxy-text")) {
    return resolved;
  }
  return `${base}/api/anime/proxy-text?url=${encodeURIComponent(resolved)}&ref=${encodeURIComponent("https://kawaiianime.cc/")}`;
}

function normalizeKawaiiSubtitleUrl(url: string | undefined, base: string): string | undefined {
  return normalizeProviderSubtitleUrl("kawaii", url, base);
}

/**
 * Reusable subtitle lookup for both the background metadata load and the
 * download button. The button can be pressed before the effect completes.
 */
async function fetchArabicSubtitleUrl(
  animeId: string,
  ep: number,
  base: string,
  title: string,
  english: string,
  signal?: AbortSignal,
): Promise<string | undefined> {
  try {
    const response = await secureFetch(
      `${base}/api/anime/kawaii-meta?anilistId=${encodeURIComponent(animeId)}&ep=${ep}` +
      `&title=${encodeURIComponent(title)}&english=${encodeURIComponent(english)}`,
      { signal, headers: { Accept: "application/json" } },
    );
    if (!response.ok) return undefined;
    const data = await response.json() as {
      arabicSubUrl?: unknown;
      englishSubUrl?: unknown;
      subtitleRef?: unknown;
    };
    const rawArabic = typeof data.arabicSubUrl === "string" ? data.arabicSubUrl : "";
    const rawEnglish = typeof data.englishSubUrl === "string" ? data.englishSubUrl : "";
    const raw = rawArabic || rawEnglish;
    if (!raw) return undefined;
    const subtitleRef = typeof data.subtitleRef === "string" && data.subtitleRef
      ? data.subtitleRef
      : "https://kawaiianime.cc/";
    const proxied = raw.includes("/api/anime/translate-vtt") || raw.includes("/api/anime/proxy-text")
      ? resolveUrl(raw, base)
      : `${base}/api/anime/proxy-text?url=${encodeURIComponent(raw)}&ref=${encodeURIComponent(subtitleRef)}`;
    if (!proxied) return undefined;
    return rawArabic
      ? proxied
      : `${base}/api/anime/translate-vtt?url=${encodeURIComponent(proxied)}&from=en&to=ar`;
  } catch {
    return undefined;
  }
}

/* ── مصادر تُشغَّل native مباشرةً عبر RiftPlayer (seg-proxy يُعيد روابط مطلقة الآن) ── */

/* ── أولويات المصادر: KW → MP → AN → AK → AW → rest ── */
const SITE_PRIORITY: Record<string, number> = {
  kawaii: 100, megaplay: 98, anineko: 96, animekai: 94, animewitcher: 90,
  anivexa_mkissa: 88, anivexa_re: 87, anivexa_anikoto: 86,
  anivexa_animegg: 85, anivexa_anidbapp: 84, anivexa_2dhive: 83,
  anivexa_anibd: 82, anivexa_senshi: 81, anivexa_kaa: 80,
  animeify: 85, sanime: 80,
  dulo_anim: 70, vidlink_anim: 55,
  vidfast: 35,
};

/* ── قائمة المصادر المعتمدة — الصفوف لا تظهر إلا بعد نتيجة mode=check ── */
type QualityKey = "1080p" | "720p" | "360p";

const STATIC_PICKER: Record<QualityKey, { site: string; name: string; tag: string }[]> = {
  "1080p": [
    { site: "kawaii",       name: "كواي أنمي",   tag: "KW" },
    { site: "megaplay",     name: "MegaPlay",    tag: "MP" },
    { site: "anineko",      name: "AniNeko",      tag: "AN" },
    { site: "animewitcher", name: "AnimeWitcher", tag: "AW" },
    { site: "anslayer",     name: "AnimeSlayer",  tag: "AS" },
    { site: "sanime",       name: "سـAnime",      tag: "SA" },
    { site: "animeify",     name: "أنمي فاي",    tag: "AF" },
    { site: "anifox",        name: "ANIFOX",      tag: "FX" },
    { site: "animekai",      name: "AnimeKai",   tag: "AK" },
    { site: "consumet_gogo", name: "GogoAnime",  tag: "GO" },
  ],
  "720p": [
    { site: "megaplay",     name: "MegaPlay",    tag: "MP" },
    { site: "anineko",      name: "AniNeko",      tag: "AN" },
    { site: "animewitcher", name: "AnimeWitcher", tag: "AW" },
    { site: "anslayer",     name: "AnimeSlayer",  tag: "AS" },
    { site: "sanime",       name: "سـAnime",      tag: "SA" },
    { site: "animeify",     name: "أنمي فاي",    tag: "AF" },
    { site: "anifox",        name: "ANIFOX",      tag: "FX" },
    { site: "animekai",      name: "AnimeKai",   tag: "AK" },
    { site: "consumet_gogo", name: "GogoAnime",  tag: "GO" },
  ],
  "360p": [
    { site: "megaplay",     name: "MegaPlay",    tag: "MP" },
    { site: "anineko",      name: "AniNeko",      tag: "AN" },
    { site: "animewitcher", name: "AnimeWitcher", tag: "AW" },
    { site: "animeify",     name: "أنمي فاي",    tag: "AF" },
    { site: "anifox",        name: "ANIFOX",      tag: "FX" },
    { site: "animekai",      name: "AnimeKai",   tag: "AK" },
    { site: "consumet_gogo", name: "GogoAnime",  tag: "GO" },
  ],
};

const Q_KEYS: QualityKey[] = ["1080p", "720p", "360p"];
function downloadQualityKey(quality: string): QualityKey {
  if (quality.includes("1080")) return "1080p";
  if (quality.includes("720")) return "720p";
  return "360p";
}

/* أحدث الحلقات تبدأ من كتالوج AnimeSlayer، لكن صفحة المشاهدة تستخدم فحص
   المصادر العام حتى تظهر AW وباقي المصادر المتاحة للحلقة مثل الويب. */
const ANSLAYER_PICKER: Record<QualityKey, { site: string; name: string; tag: string }[]> = {
  "1080p": [{ site: "anslayer", name: "AnimeSlayer", tag: "AS" }],
  "720p":  [{ site: "anslayer", name: "AnimeSlayer", tag: "AS" }],
  "360p": [],
};
const PICKER_QUALITY: Record<QualityKey, Quality> = {
  "1080p": "1080p FHD",
  "720p": "720p HD",
  "360p": "360p SD",
};
const Q_KEY_LABEL: Record<QualityKey, string> = {
  "1080p": "1080p",
  "720p":  "720p",
  "360p":  "360p",
};
const Q_KEY_SUB: Record<QualityKey, string> = {
  "1080p": "دقة كاملة",
  "720p":  "دقة عالية",
  "360p":  "دقة متوسطة",
};

function pickerSlotKey(site: string, quality: QualityKey): string {
  return `${site}::${quality}`;
}

function getAvailabilityQualityKey(row: any): QualityKey | null {
  /* Keep the mobile availability parser aligned with the web parser. The API
     may send "1080p FHD", "FHD 1080", or a provider-specific label instead of
     the compact picker key. */
  const text = `${row?.quality || ""} ${row?.name || ""} ${row?.label || ""}`.toLowerCase();
  if (/(?:2160|1440|1080)\s*p?|\bfhd\b|full[ ._-]*hd/.test(text)) return "1080p";
  if (/(?:720)\s*p?|(?<!f)\bhd\b/.test(text)) return "720p";
  if (/(?:480|360)\s*p?|\bsd\b/.test(text)) return "360p";
  const rank = Number(row?.qualityRank) || 0;
  if (rank >= 13) return "1080p";
  if (rank >= 8) return "720p";
  return "360p";
}

function ServerScanAnimation() {
  const pulse = useRef(new Animated.Value(0)).current;

  useEffect(() => {
    const animation = Animated.loop(
      Animated.sequence([
        Animated.timing(pulse, {
          toValue: 1,
          duration: 900,
          easing: Easing.inOut(Easing.ease),
          useNativeDriver: true,
        }),
        Animated.timing(pulse, {
          toValue: 0,
          duration: 900,
          easing: Easing.inOut(Easing.ease),
          useNativeDriver: true,
        }),
      ]),
    );
    animation.start();
    return () => animation.stop();
  }, [pulse]);

  const scale = pulse.interpolate({ inputRange: [0, 1], outputRange: [0.88, 1.12] });
  const opacity = pulse.interpolate({ inputRange: [0, 1], outputRange: [0.45, 1] });

  return (
    <Animated.View style={[d.serverScanAnimation, { transform: [{ scale }], opacity }]}>
      <Ionicons name="radio-outline" size={42} color="#a78bfa" />
      <View style={d.serverScanDots}>
        <View style={[d.serverScanDot, { backgroundColor: "#fbbf24" }]} />
        <View style={[d.serverScanDot, { backgroundColor: "#34d399" }]} />
        <View style={[d.serverScanDot, { backgroundColor: "#a78bfa" }]} />
      </View>
    </Animated.View>
  );
}

/* Native MP4 replaces animated GIF/WebP rendering. This keeps the loading
   animation reliable on Android and avoids a WebView dependency in this
   critical screen. */
function ServerScanGif() {
  const player = useVideoPlayer(require("../assets/nova-loading.mp4"), (instance) => {
    instance.loop = true;
    instance.muted = true;
    instance.play();
  });

  return (
    <VideoView
      player={player}
      style={d.availabilityGif}
      nativeControls={false}
      contentFit="contain"
      surfaceType={Platform.OS === "android" ? "textureView" : undefined}
      pointerEvents="none"
      accessible={false}
    />
  );
}

/* timeout موحّد افتراضي */
const SITE_TIMEOUT_MS = 28_000;
const SITE_TIMEOUT_MAP: Record<string, number> = {
  anifox:       35_000,
  animewitcher: 38_000,
  animeify:     22_000,
  /* Keep this above the backend's 20s SAnime extraction budget. The web
     client uses 28s; mobile must not abort the same repaired source early. */
  sanime:       28_000,
  kawaii:       15_000,
  anineko:      45_000,
  anivexa_re: 32_000, anivexa_anikoto: 32_000, anivexa_animegg: 32_000,
  anivexa_anidbapp: 32_000, anivexa_2dhive: 32_000,
  anivexa_anibd: 32_000, anivexa_senshi: 32_000, anivexa_kaa: 32_000,
};
/* أحدث الحلقات قد تُعلن جودة من الكاش قبل أن يحدّثها المزود فعلياً.
   إذا أعاد الطلب بلا فلتر جودة رابطاً حياً، شغّله بدلاً من إسقاط المصدر. */
const QUALITY_FALLBACK_SITES = new Set(["kawaii", "anineko", "animekai", "animewitcher", "sanime"]);

/* ── Spinning loader ── */
function SpinRing({ size = 36 }: { size?: number }) {
  const rot = useRef(new Animated.Value(0)).current;
  useEffect(() => {
    const anim = Animated.loop(
      Animated.timing(rot, { toValue: 1, duration: 900, easing: Easing.linear, useNativeDriver: true })
    );
    anim.start();
    return () => anim.stop();
  }, []);
  const rotate = rot.interpolate({ inputRange: [0, 1], outputRange: ["0deg", "360deg"] });
  const r = size / 2;
  return (
    <View style={{ width: size, height: size }}>
      <View style={[StyleSheet.absoluteFill, { borderRadius: r, borderWidth: 2, borderColor: "rgba(139,92,246,0.15)" }]} />
      <Animated.View style={[StyleSheet.absoluteFill, { borderRadius: r, borderWidth: 2, borderColor: "transparent", borderTopColor: "#8B5CF6", borderRightColor: "rgba(139,92,246,0.4)", transform: [{ rotate }] }]} />
    </View>
  );
}

/* ── Source row: "السيرفر KW" ── */
function SrcRow({ src, idx, onPlay }: { src: Src; idx: number; onPlay: (s: Src) => void }) {
  const q = getSrcQuality(src);
  const qs = QUALITY_STYLE[q];
  const tag = getSiteTag(src.site || "");
  const tvMode = isTvDevice();
  return (
    <Pressable onPress={() => onPlay(src)} focusable={tvMode}
      style={({ focused }) => [d.srcRow, tvMode && tvFocusStyle(focused)]}>
      <View style={[d.srcIcon, { backgroundColor: qs.badge, borderColor: qs.border }]}>
        <Ionicons name="play-circle" size={11} color={qs.text} />
      </View>
      <View style={{ flex: 1, minWidth: 0 }}>
        <Text style={d.srcNum}>
          السيرفر <Text style={d.srcTagInline}>{tag}</Text>
        </Text>
      </View>
      <View style={d.srcRight}>
        <View style={[d.srcQBadge, { backgroundColor: qs.badge, borderColor: qs.border }]}>
          <Text style={[d.srcQText, { color: qs.text }]}>{Q_SHORT[q]}</Text>
        </View>
        <View style={d.srcPlayBtn}>
          <Ionicons name="play" size={10} color="#fff" />
          <Text style={d.srcPlayText}>تشغيل</Text>
        </View>
      </View>
    </Pressable>
  );
}

/* ═══════════════════════════════════════ MAIN SCREEN ═══ */
export default function WatchScreen() {
  const {
    anime, ep, title, english, format, etitle,
    totalEps: totalEpsParam, year, episodes, native, titleAr,
    titles: titlesParam, anslayerId,
  } = useLocalSearchParams<{
    anime: string; ep: string; title: string; english: string;
    format?: string; etitle?: string; totalEps?: string;
    year?: string; episodes?: string; native?: string; titleAr?: string;
    titles?: string;
    anslayerId?: string;
  }>();
  const insets   = useSafeAreaInsets();
  const router   = useRouter();
  const { addToHistory } = useApp();
  const tvMode   = isTvDevice();
  const topPad   = insets.top > 0 ? insets.top : (Platform.OS === "ios" ? 44 : 24);

  const titleStr    = safeDecodeURIComponent(title);
  const englishStr  = safeDecodeURIComponent(english);
  const titleArStr  = safeDecodeURIComponent(titleAr);
  const titleVariants = useMemo(() => {
    const values = [titleStr, englishStr, safeDecodeURIComponent(native), titleArStr];
    try {
      const parsed = titlesParam ? JSON.parse(safeDecodeURIComponent(titlesParam)) : [];
      if (Array.isArray(parsed)) values.push(...parsed);
    } catch {}
    return Array.from(new Set(values
      .filter((value): value is string => typeof value === "string" && value.trim().length > 1)
      .map(value => value.trim())));
  }, [titleStr, englishStr, native, titleArStr, titlesParam]);
  const epNum      = parseInt(ep || "1", 10) || 1;
  const cover      = useLocalSearchParams<{ cover?: string }>().cover;
  const coverUrl   = safeDecodeURIComponent(cover);
  /* لا نسمح بالتالية عندما لا نملك حداً مؤكداً. بطاقات «أحدث الحلقات»
     تمرر الحلقة الحالية كآخر حلقة مؤكدة، بينما شاشة الحلقات تمرر العدد
     الكامل/المبثوث من الكتالوج. */
  const totalEpsCount = (() => {
    const explicit = parseInt(totalEpsParam || "", 10);
    if (Number.isFinite(explicit) && explicit > 0) return explicit;
    const legacy = parseInt(episodes || "", 10);
    return Number.isFinite(legacy) && legacy > 0 ? legacy : undefined;
  })();
  const canGoNextEpisode = totalEpsCount !== undefined && epNum < totalEpsCount;
  const displayTitle = titleArStr || englishStr || titleStr;

  useEffect(() => {
    if (!anime) return;
    return startMobileWatchAnalytics({
      animeId: anime,
      episode: epNum,
      title: displayTitle,
    });
  }, [anime, epNum, displayTitle]);

  /* ── State ── */
  const [screen,      setScreen]      = useState<Screen>("picker"); // يبدأ مباشرةً بالـ picker — بدون تشغيل تلقائي
  const [sources,     setSources]     = useState<Src[]>([]);
  const [playingSrc,  setPlayingSrc]  = useState<Src | null>(null);
  const [resumeTime,  setResumeTime]  = useState(0);
  const [resolveFailed, setResolveFailed] = useState(false);
  const [globalSubUrl, setGlobalSubUrl] = useState<string | undefined>();
  const [arEpTitle,   setArEpTitle]   = useState<string | undefined>();
  /* slotStatus: حالة كل مصدر في المنتقي (idle → fetching → ready/failed) */
  const [slotStatus,  setSlotStatus]  = useState<Record<string, "idle" | "fetching" | "ready" | "failed">>({});
  /* حالات التنزيل لكل موقع وجودة (site:quality) */
  const [downloadStates,   setDownloadStates]   = useState<Record<string, "idle" | "downloading" | "done" | "error">>({});
  const [downloadProgress, setDownloadProgress] = useState<Record<string, number>>({});
  /* صفوف يجري جلبها خصيصاً للتنزيل (بدون فتح المشغّل) */
  const [dlFetchingSites,  setDlFetchingSites]  = useState<Set<string>>(new Set());
  /* نتائج الاستعلام المسبق: نفس صفوف المصادر التي يرسلها الخادم للويب */
  type AvailableSlot = {
    serverCount: number;
    name?: string;
    tag?: string;
    qualityRank?: number;
  };
  const [availableSlots, setAvailableSlots] = useState<Record<string, Partial<Record<QualityKey, AvailableSlot>>>>({});
  const [availabilityDone, setAvailabilityDone] = useState(false);
  const [availabilityError, setAvailabilityError] = useState(false);
  const [availabilityAttempt, setAvailabilityAttempt] = useState(0);
  const [watchUnlocked, setWatchUnlocked] = useState(false);
  /* Only the pressed server row is waiting for the ad decision. A single
     boolean here made every server button show a spinner at once. */
  const [watchAdSite, setWatchAdSite] = useState<string | null>(null);
  const { preferredKey, ready: focusMemoryReady, rememberFocus } =
    useTvFocusMemory(`watch-picker:${anime || titleStr}:${epNum}`);

  const visiblePickerKeys = useMemo(
    () => Q_KEYS.flatMap((quality) =>
      Object.entries(availableSlots)
        .filter(([, tiers]) => Boolean(tiers[quality]))
        .map(([site]) => pickerSlotKey(site, quality)),
    ),
    [availableSlots],
  );
  const pickerFocusKey = visiblePickerKeys.includes(preferredKey || "")
    ? preferredKey
    : (visiblePickerKeys[0] || null);

  const abortRef          = useRef<AbortController | null>(null);
  const availabilityAbortRef = useRef<AbortController | null>(null);
  /* siteCtrls: نتتبع AbortController لكل موقع جارٍ جلبه — لضمان إلغاء كل الطلبات عند الخروج */
  const siteCtrls         = useRef<Map<string, AbortController>>(new Map());
  const seenKeys          = useRef(new Set<string>());
  const lastTimeRef       = useRef(0);
  const lastDurationRef   = useRef(0);
  const isMountedRef      = useRef(true);
  const fetchEpochRef     = useRef(0);
  const inFlightSitesRef  = useRef<Set<string>>(new Set());
  const fetchedSitesRef   = useRef<Set<string>>(new Set());

  /* ── تعقّب الـ mount ── */
  useEffect(() => {
    isMountedRef.current = true;
    return () => { isMountedRef.current = false; };
  }, []);

  /* The server, not AsyncStorage, decides whether this picker is unlocked.
     Premium/admin users arrive unlocked; free users see the locked rows. */
  useEffect(() => {
    getAdState().then((state) => {
      if (state && isMountedRef.current) setWatchUnlocked(state.privileged || !state.watchNeedsReward);
    }).catch(() => {});
  }, []);

  /* ── ترجمة عنوان الحلقة من الإنجليزية للعربية ── */
  useEffect(() => {
    if (!etitle) return;
    const raw = safeDecodeURIComponent(etitle);
    if (!raw || /[\u0600-\u06FF]/.test(raw)) { setArEpTitle(raw); return; }
    const base = getBaseUrl();
    secureFetch(`${base}/api/anime/translate?text=${encodeURIComponent(raw)}&from=en&to=ar&kind=title`)
      .then(r => r.ok ? r.json() : null)
      .then((d: any) => { if (!isMountedRef.current) return; if (d?.translated) setArEpTitle(d.translated); })
      .catch(() => {});
  }, [etitle]); // eslint-disable-line

  /* ── Kawaii Arabic subtitle for every raw-audio source ──
     Anivexa streams are deliberately returned without provider subtitles so
     that the user gets one consistent Arabic track across all raw sources.
     Kawaii may return Arabic directly or English only; translate the latter
     through Nova after proxying the signed subtitle file server-side. */
  useEffect(() => {
    if (!anime) {
      setGlobalSubUrl(undefined);
      return;
    }
    setGlobalSubUrl(undefined);
    const ctrl = new AbortController();
    const base = getBaseUrl();
    fetchArabicSubtitleUrl(anime, epNum, base, titleStr, englishStr, ctrl.signal)
      .then(subtitleUrl => {
        if (!ctrl.signal.aborted && subtitleUrl) setGlobalSubUrl(subtitleUrl);
      });
    return () => ctrl.abort();
  }, [anime, epNum]);

  const progressKey    = `progress-${anime}-${epNum}`;
  const srcCacheKey    = anime ? `anime-srcs-${anime}-e${epNum}` : null;
  const SRC_CACHE_TTL  = 5 * 60 * 1000; // 5 minutes

  /* ── Load resume time فقط ── */
  useEffect(() => {
    AsyncStorage.getItem(progressKey).then(v => {
      if (!isMountedRef.current) return;
      if (v) setResumeTime(parseFloat(v) || 0);
    }).catch(() => {});
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [progressKey]);

  /* المصادر تُعرض ثابتة؛ التحقق المسبق غير موثوق لبعض المواقع. */
  /* ── Parallel per-source HTTP fetch (يحل محل SSE تماماً) ── */
  /* ── Cleanup: إلغاء كل طلبات الجلب الجارية عند تغيير الحلقة أو إلغاء mount ── */
  useEffect(() => {
    return () => {
      abortRef.current?.abort();
      availabilityAbortRef.current?.abort();
      /* إلغاء جميع controllers للمواقع الجارية — يمنع تسرب الذاكرة عند التنقل السريع */
      siteCtrls.current.forEach(c => c.abort());
      siteCtrls.current.clear();
    };
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [anime, epNum]);

  /* ── Availability-only scan: مطابق للويب، بدون روابط تشغيل ──
     لا نستخدم الكاش ولا نعرض STATIC_PICKER قبل وصول صف موثّق من الخادم. */
  useEffect(() => {
    if (!titleStr) return;
    availabilityAbortRef.current?.abort();
    const controller = new AbortController();
    availabilityAbortRef.current = controller;
    setAvailabilityDone(false);
    setAvailabilityError(false);
    setAvailableSlots({});
    setSlotStatus({});

    const params = new URLSearchParams();
    params.set("title", titleStr);
    if (englishStr) params.set("english", englishStr);
    if (anime) params.set("anime", anime);
    if (epNum) params.set("ep", String(epNum));
    if (format) params.set("format", format);
    if (year) params.set("year", year);
    if (episodes) params.set("episodes", episodes);
    if (native) params.set("native", native);
    if (titleArStr) params.set("titleAr", titleArStr);
    if (anslayerId) params.set("anslayerId", anslayerId);
    if (titleVariants.length) params.set("titles", JSON.stringify(titleVariants));
    params.set("mode", "check");

    let cancelled = false;
    let timedOut = false;

    /* Keep a local aggregate for the final commit, but publish every row
       immediately. Waiting for [DONE] makes a slow provider hold the picker
       open for 20–35 seconds. */
    const stagedSlots: Record<string, Partial<Record<QualityKey, AvailableSlot>>> = {};

    const applyRow = (row: any) => {
      /* Availability may be emitted from a versioned cache namespace while
         fetch-source still accepts the canonical provider id. Normalize both
         forms so repaired AN/SA rows are not silently discarded on mobile. */
      const rawSite = String(row?.site || "").trim().toLowerCase();
      const site = rawSite === "anineko-v2" || rawSite === "an" ? "anineko"
        : rawSite === "sanime-v2" || rawSite === "sa" ? "sanime"
        : rawSite;
      const qk = getAvailabilityQualityKey(row);
      /* The backend is the source of truth. Do not discard a verified
         provider merely because its label is not in the legacy static
         catalog; that was why valid sources disappeared from mobile. */
      if (!site || !qk) return;
      const previous = stagedSlots[site]?.[qk];
      stagedSlots[site] = {
        ...stagedSlots[site],
        [qk]: {
          serverCount: Math.max(
            Number(previous?.serverCount) || 1,
            Number(row.serverCount) || 1,
          ),
          name: typeof row?.name === "string" ? row.name : previous?.name,
          tag: typeof row?.tag === "string" ? row.tag : previous?.tag,
          qualityRank: Number(row?.qualityRank) || previous?.qualityRank,
        },
      };
      setAvailableSlots((current) => ({
        ...current,
        [site]: stagedSlots[site],
      }));
      setSlotStatus((current) => ({
        ...current,
        [pickerSlotKey(site, qk)]: "ready",
      }));
    };

    const commitRows = () => {
      if (!isMountedRef.current) return;
      const nextStatus: Record<string, "ready"> = {};
      for (const [site, tiers] of Object.entries(stagedSlots)) {
        for (const qk of Object.keys(tiers) as QualityKey[]) {
          nextStatus[pickerSlotKey(site, qk)] = "ready";
        }
      }
      setAvailableSlots(stagedSlots);
      setSlotStatus(nextStatus);
    };

    const run = async () => {
      try {
        const response = await secureStreamFetch(
          `${getBaseUrl()}/api/anime/sources-stream?${params.toString()}`,
          { signal: controller.signal },
        );
        if (!response.ok || !response.body) throw new Error(`availability_${response.status}`);
        const reader = response.body.getReader();
        const decoder = new TextDecoder();
        let buffer = "";
        const consume = (text: string) => {
          buffer += text;
          const blocks = buffer.split(/\r?\n\r?\n/);
          buffer = blocks.pop() || "";
          for (const block of blocks) {
            /* SSE permits event/data fields in either order and allows more
               than one data line in a block. Keep only data fields; comments
               are the server keepalive and must not affect parsing. */
            const eventName = block
              .split(/\r?\n/)
              .find(line => line.startsWith("event:"))
              ?.slice(6)
              .trim()
              .toLowerCase();
            const payload = block
              .split(/\r?\n/)
              .filter(line => line.startsWith("data:"))
              .map(line => line.slice(5).trim())
              .join("\n");
            if (!payload || payload === "[DONE]" || eventName === "done") continue;
            try {
              /* Match the web picker: a valid availability row is enough.
                 Some backend versions use a different SSE event name and
                 still send the same {site, quality} metadata. */
              applyRow(JSON.parse(payload));
            } catch {
              /* تجاهل حدث SSE غير صالح */
            }
          }
        };
        while (!cancelled) {
          const { value, done } = await reader.read();
          if (done) break;
          if (value) consume(decoder.decode(value, { stream: true }));
        }
        /* Flush TextDecoder and then parse a final SSE block even if the
           server/proxy closes without appending the usual blank line. */
        consume(decoder.decode());
        if (buffer.trim()) {
          const eventName = buffer
            .split(/\r?\n/)
            .find(line => line.startsWith("event:"))
            ?.slice(6)
            .trim()
            .toLowerCase();
          const payload = buffer
            .split(/\r?\n/)
            .filter(line => line.startsWith("data:"))
            .map(line => line.slice(5).trim())
            .join("\n");
          if (payload && payload !== "[DONE]" && eventName !== "done") {
            try { applyRow(JSON.parse(payload)); } catch { /* ignore */ }
          }
          buffer = "";
        }
      } catch {
        if ((timedOut || !controller.signal.aborted) && isMountedRef.current) {
          setAvailabilityError(true);
        }
      } finally {
        clearTimeout(timeoutId);
        if (!cancelled && isMountedRef.current) {
          commitRows();
          setAvailabilityDone(true);
        }
      }
    };
    const timeoutId = setTimeout(() => {
      timedOut = true;
      controller.abort();
    }, 32_000);
    void run();
    return () => {
      cancelled = true;
      clearTimeout(timeoutId);
      controller.abort();
    };
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [anime, epNum, titleStr, englishStr, titleArStr, format, year, episodes, native, anslayerId, availabilityAttempt]);

  /* ── Orientation lock ── */
  useEffect(() => {
    if (screen === "picker") {
      ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.PORTRAIT_UP).catch(() => { });
    } else if (screen === "embed") {
      /* LANDSCAPE_RIGHT لمطابقة اتجاه RiftPlayer — كلاهما يقفل نفس الاتجاه */
      ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.LANDSCAPE_RIGHT).catch(() => { });
    }
  }, [screen]);

  /* ── Progress save ── */
  const saveProgress = useCallback(async () => {
    const t = lastTimeRef.current;
    if (t <= 10) return;
    await AsyncStorage.setItem(progressKey, String(Math.floor(t)));
    if (anime) {
      await addToHistory({
        animeId: parseInt(anime, 10),
        ep: epNum,
        title: titleStr,
        english: englishStr,
        thumbnail: coverUrl || `https://img.anili.st/media/${anime}`,
        position: t,
        duration: lastDurationRef.current || undefined,
        updatedAt: Date.now(),
      });
    }
  }, [progressKey, anime, epNum, titleStr, englishStr, coverUrl, addToHistory]);

  /* ── Navigate episode ── */
  const goEp = useCallback((n: number, _auto = false) => {
    /* An unknown upper bound is fail-closed: the next button must never
       invent a future episode. Previous/explicit episode selection remains
       available when it is inside a known catalog bound. */
    if (n < 1 || (n > epNum && (totalEpsCount === undefined || n > totalEpsCount))) return;
    saveProgress();
    abortRef.current?.abort();
    /* إلغاء جميع طلبات المواقع الجارية قبل الانتقال للحلقة التالية */
    siteCtrls.current.forEach(c => c.abort());
    siteCtrls.current.clear();
    setSources([]);
    seenKeys.current.clear();
    inFlightSitesRef.current.clear();
    fetchedSitesRef.current.clear();
    setSlotStatus({});
    setScreen("picker");
    const coverParam = coverUrl ? `&cover=${encodeURIComponent(coverUrl)}` : "";
    const arParam    = titleArStr ? `&titleAr=${encodeURIComponent(titleArStr)}` : "";
    const anslayerParam = anslayerId ? `&anslayerId=${encodeURIComponent(anslayerId)}` : "";
    const totalParam = totalEpsCount ? `&totalEps=${totalEpsCount}` : "";
    router.replace(`/watch?anime=${anime}&ep=${n}&title=${encodeURIComponent(titleStr)}&english=${encodeURIComponent(englishStr)}&format=${encodeURIComponent(format || "")}${totalParam}${coverParam}${arParam}${anslayerParam}`);
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [saveProgress, coverUrl, titleArStr, router, anime, titleStr, englishStr, format, anslayerId, epNum, totalEpsCount]);

  /* ── إعادة تعيين حالة المصادر (زر تحديث) — مسح الأخطاء للسماح بالمحاولة مجدداً ── */
  function refreshAllSources() {
    abortRef.current?.abort();
    availabilityAbortRef.current?.abort();
    /* إلغاء كل طلبات المواقع الجارية — كانت تتراكم بدون إلغاء عند الضغط على تحديث */
    siteCtrls.current.forEach(c => c.abort());
    siteCtrls.current.clear();
    ++fetchEpochRef.current;
    setSources([]);
    seenKeys.current.clear();
    inFlightSitesRef.current.clear();
    fetchedSitesRef.current.clear();
    setSlotStatus({});
    setAvailableSlots({});
    setAvailabilityDone(false);
    setAvailabilityError(false);
    setAvailabilityAttempt(v => v + 1);
  }

  /* ── Play a source ── */
  const playSrc = useCallback((src: Src) => {
    const subtitleUrl = subtitlesDisabledForSite(src.site)
      ? undefined
      : normalizeProviderSubtitleUrl(src.site || "", src.subtitleUrl || globalSubUrl, getBaseUrl());
    setPlayingSrc({ ...src, subtitleUrl });
    setResolveFailed(false);
    /* على web: HLS → embed WebView مع hls-proxy URL مباشرة */
    if (Platform.OS === "web") {
      setScreen(isEmbedSrc(src) ? "embed" : "native");
      return;
    }
    if (isDirectPlayable(src)) { setScreen("native"); return; }
    /* مواقع محمية (Cloudflare/Turnstile) — حاول استخراج رابط الفيديو الحقيقي
       عبر WebView مخفي (IP الجهاز السكني) قبل عرض بطاقة "يحتاج تطبيق أصلي" */
    if (needsHiddenResolve(src)) { setScreen("resolving"); return; }
    setScreen("embed");
  }, [globalSubUrl]); // eslint-disable-line

  /* ── نتيجة استخراج WebView المخفي ── */
  const handleHiddenResolved = useCallback((stream: ResolvedStream) => {
    if (!playingSrc) return;
    const resolved: Src = {
      ...playingSrc,
      directUrl: stream.url,
      url: stream.url,
      isEmbed: false,
      headers: stream.headers || playingSrc.headers,
      directType: stream.type,
    };
    setPlayingSrc(resolved);
    setScreen("native");
  }, [playingSrc]);

  const handleHiddenFailed = useCallback(() => {
    setResolveFailed(true);
    setScreen("embed");
  }, []);

  /* ── جلب مصدر واحد عند ضغط المستخدم على زر المصدر ── */
  const handlePickSite = useCallback(async (site: string, preferredQuality?: QualityKey) => {
    if (BLOCKED_SOURCE_SITES.has(site.toLowerCase())) return;
    /* أظهر استجابة اللمس فوراً. فحص صلاحية المشاهدة/الإعلان قد يستغرق
       ثواني، ولا ينبغي أن يبدو الزر ميتاً أثناء انتظاره. */
    const fetchKey = preferredQuality ? `${site}::${preferredQuality}` : site;
    if (preferredQuality) {
      setSlotStatus(prev => ({ ...prev, [pickerSlotKey(site, preferredQuality)]: "fetching" }));
    }
    if (!watchUnlocked) {
      if (watchAdSite && watchAdSite !== site) return;
      if (watchAdSite === site) return;
      setWatchAdSite(site);
      try {
        const allowed = await ensureWatchAccess();
        if (isMountedRef.current && allowed) setWatchUnlocked(true);
        if (!allowed) {
          if (preferredQuality) {
            setSlotStatus(prev => ({ ...prev, [pickerSlotKey(site, preferredQuality)]: "idle" }));
          }
          return;
        }
      } finally {
        if (isMountedRef.current) setWatchAdSite(null);
      }
    }
    /* منع الضغط المزدوج أثناء الجلب — يسمح بإعادة المحاولة بعد الفشل */
    if (inFlightSitesRef.current.has(fetchKey)) return;
    /* إذا نجح سابقاً → شغّل أفضل مصدر من نفس الجودة فقط */
    if (fetchedSitesRef.current.has(fetchKey)) {
      const cached = sources.filter(s => s.site === site);
      const preferred = preferredQuality
        ? cached.find(s => getSrcQuality(s) === PICKER_QUALITY[preferredQuality] && isMobilePlayable(s))
        : undefined;
      const best = preferredQuality ? preferred : (cached.find(isMobilePlayable) ?? cached[0]);
      if (best) { playSrc(best); return; }
      if (preferredQuality) {
        setSlotStatus(prev => ({ ...prev, [pickerSlotKey(site, preferredQuality)]: "failed" }));
        setAvailableSlots(prev => {
          const next = { ...prev };
          const siteSlots = { ...(next[site] || {}) };
          delete siteSlots[preferredQuality];
          if (Object.keys(siteSlots).length) next[site] = siteSlots;
          else delete next[site];
          return next;
        });
      }
      return;
    }

    inFlightSitesRef.current.add(fetchKey);

    const base = getBaseUrl();
    const qs = new URLSearchParams({
      anime: anime || "0", ep: String(epNum), title: titleStr,
      english: englishStr, format: format || "",
      year: year || "", episodes: episodes || "", native: native || "",
    });
    qs.set("titles", JSON.stringify(titleVariants));
    if (preferredQuality) qs.set("quality", preferredQuality);
    if (titleArStr) qs.set("titleAr", titleArStr);
    if (site === "anslayer" && anslayerId) qs.set("anslayerId", anslayerId);

    let tid: ReturnType<typeof setTimeout> | null = null;
    try {
      await warmAuthToken();
      const siteCtrl = new AbortController();
      /* تسجيل الـ controller لضمان إلغائه عند الخروج من الشاشة */
       siteCtrls.current.set(fetchKey, siteCtrl);
      const timeout = SITE_TIMEOUT_MAP[site] ?? SITE_TIMEOUT_MS;
      tid = setTimeout(() => siteCtrl.abort(), timeout);
      const res = await secureFetch(`${base}/api/anime/fetch-source?site=${site}&${qs}`, { signal: siteCtrl.signal });

      if (!res.ok || !isMountedRef.current) throw new Error("fetch failed");
      const data = await res.json();
      /* تحقق مجدداً بعد await — الـ component قد يكون unmounted أثناء parse الـ JSON */
      if (!isMountedRef.current) return;
      const rawSrcs: Src[] = data.sources || [];

      if (!rawSrcs.length) {
        if (preferredQuality) {
          setSlotStatus(prev => ({ ...prev, [pickerSlotKey(site, preferredQuality)]: "failed" }));
        }
        return;
      }

        const mappedSrcs = rawSrcs
        .map((s): Src => {
          const sourceSite = s.site || site;
           const mapped: Src = {
            ...s,
            site: sourceSite,
            directUrl: resolveUrl(s.directUrl, base),
            url: resolveUrl(s.url, base),
            subtitleUrl: normalizeProviderSubtitleUrl(sourceSite, s.subtitleUrl, base),
          };
           return normalizeKawaiiMobileSource(mapped, base);
        })
        .filter(s => !isBlockedSource(s))
        .filter(s => !(s.isEmbed && s.url && (s.url.includes("mega.nz") || s.url.includes("mega.co.nz"))))
         .filter(s => isValidSourceUrl(getPlayUrl(s)));

       /* لا تخلط 1080p و720p إذا أعاد الكاش رابطَي AnimeSlayer معاً.
          الويب يثبت رابطاً واحداً للصف الذي ضغطه المستخدم؛ الموبايل يجب أن
          يفعل الشيء نفسه حتى لا يشغل أول رابط عشوائياً. */
       const requestedTier = preferredQuality ? PICKER_QUALITY[preferredQuality] : undefined;
        const sameTier = requestedTier
         ? mappedSrcs.filter(s => getSrcQuality(s) === requestedTier)
         : mappedSrcs;
        const candidates = requestedTier
          ? (sameTier.length || !QUALITY_FALLBACK_SITES.has(site) ? sameTier : mappedSrcs)
          : mappedSrcs;
       const selected = [...candidates].sort(
         (a, b) => (b.qualityRank ?? 0) - (a.qualityRank ?? 0),
       )[0];
       /* The same adaptive URL can legitimately be advertised for more than
          one picker tier. Deduplicating it globally here made a later, exact
          quality click look like a missing source. */
       const newSrcs = selected ? [selected] : [];

       if (!newSrcs.length) {
          if (preferredQuality) {
            setSlotStatus(prev => ({ ...prev, [pickerSlotKey(site, preferredQuality)]: "failed" }));
          }
         if (preferredQuality) {
           setAvailableSlots(prev => {
             const next = { ...prev };
             const siteSlots = { ...(next[site] || {}) };
             delete siteSlots[preferredQuality];
             if (Object.keys(siteSlots).length) next[site] = siteSlots;
             else delete next[site];
             return next;
           });
         }
         return;
       }

      fetchedSitesRef.current.add(fetchKey);
       if (preferredQuality) {
         setSlotStatus(prev => ({ ...prev, [pickerSlotKey(site, preferredQuality)]: "ready" }));
       }
      const selectedTier = preferredQuality ? PICKER_QUALITY[preferredQuality] : undefined;
      setSources(prev => [...prev.filter(s => !(s.site === site && (!selectedTier || getSrcQuality(s) === selectedTier))), ...newSrcs]);

      /* شغّل فوراً عند النجاح */
      const preferred = preferredQuality
         ? newSrcs.find(s => getSrcQuality(s) === PICKER_QUALITY[preferredQuality] && isMobilePlayable(s))
        : undefined;
       const best = preferredQuality ? preferred : (newSrcs.find(isMobilePlayable) ?? newSrcs[0]);
       /* A successful response is not enough: the selected tier itself must
          be playable. Never silently fall through to another tier. */
        if (preferredQuality && !preferred && !QUALITY_FALLBACK_SITES.has(site)) {
         fetchedSitesRef.current.delete(fetchKey);
         setSlotStatus(prev => ({ ...prev, [pickerSlotKey(site, preferredQuality)]: "failed" }));
         setAvailableSlots(prev => {
           const next = { ...prev };
           const siteSlots = { ...(next[site] || {}) };
           delete siteSlots[preferredQuality];
           if (Object.keys(siteSlots).length) next[site] = siteSlots;
           else delete next[site];
           return next;
         });
         return;
       }
       if (best && (!preferredQuality || isMobilePlayable(best))) playSrc(best);

    } catch {
       if (isMountedRef.current) {
          if (preferredQuality) {
            setSlotStatus(prev => ({ ...prev, [pickerSlotKey(site, preferredQuality)]: "failed" }));
          }
         if (preferredQuality) {
           setAvailableSlots(prev => {
             const next = { ...prev };
             const siteSlots = { ...(next[site] || {}) };
             delete siteSlots[preferredQuality];
             if (Object.keys(siteSlots).length) next[site] = siteSlots;
             else delete next[site];
             return next;
           });
         }
       }
      fetchedSitesRef.current.delete(fetchKey); // يسمح بإعادة المحاولة
    } finally {
      /* نضمن مسح الـ timeout دائماً — حتى عند abort أو خطأ */
      if (tid !== null) clearTimeout(tid);
      inFlightSitesRef.current.delete(fetchKey);
       siteCtrls.current.delete(fetchKey); // تنظيف الـ controller بعد انتهاء الطلب
    }
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [anime, epNum, titleStr, englishStr, titleArStr, format, year, episodes, native, playSrc, anslayerId, sources]);

  /* ── مزامنة حالة التنزيل من Global Singleton ── */
  useEffect(() => {
    const animeIdNum = parseInt(anime || "0");
    const sync = () => {
      const snapshot = getActiveDownloadsSnapshot();
      /* خريطة: site:quality → ActiveDownload للحلقة الحالية فقط */
      const activeForEp = new Map(
        snapshot
          .filter(d => d.animeId === animeIdNum && d.ep === epNum)
          .map(d => [`${d.site}:${downloadQualityKey(d.quality)}`, d])
      );
      setDownloadStates(prev => {
        const next = { ...prev };
        /* downloading → done: إذا اختفى من الـ snapshot (اكتمل بنجاح) */
        for (const k of Object.keys(next)) {
          if (next[k] === "downloading" && !activeForEp.has(k)) {
            next[k] = "done";
          }
        }
        /* حدِّث من الـ snapshot الحالي */
        for (const [stateKey, d] of activeForEp) {
          next[stateKey] = d.status === "error" ? "error" : "downloading";
        }
        return next;
      });
      setDownloadProgress(prev => {
        const next = { ...prev };
        for (const [stateKey, d] of activeForEp) {
          next[stateKey] = d.progress;
        }
        return next;
      });
    };
    sync(); // قراءة فورية عند mount
    return subscribeActiveDownloads(sync);
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [anime, epNum]);

  /* ── تنزيل حلقة من موقع معين (Global — يستمر عند التنقل) ── */
  const handleDownloadSite = useCallback(async (site: string, preferredQuality?: QualityKey) => {
    if (!DOWNLOAD_SOURCE_SITES.has(site)) return;
    const stateKey = preferredQuality ? `${site}:${preferredQuality}` : site;
    const wantedQuality = preferredQuality ? PICKER_QUALITY[preferredQuality] : undefined;
    const dlState = downloadStates[stateKey] || "idle";
    if (dlState === "downloading" || dlState === "done") return;

    const siteSrcs = sources.filter(s => s.site === site);
    const best = (wantedQuality
      ? siteSrcs.find(s => getSrcQuality(s) === wantedQuality && isDirectPlayable(s))
      : undefined) ?? siteSrcs.find(isDirectPlayable) ?? siteSrcs[0];
    if (!best || !isDirectPlayable(best)) return;

    const rawUrl   = getPlayUrl(best);
    const headers  = best.headers || extractProxyHeaders(rawUrl);
    const base     = getBaseUrl();
    const proxyUrl = ensureVpsProxy(rawUrl, headers, base, best.directType === "hls");

    /* الترجمة الجانبية اختيارية: لا نمنع تنزيل الفيديو إذا لم تتوفر. */
    const subRaw     = subtitlesDisabledForSite(site)
      ? undefined
      : (best.subtitleUrl || globalSubUrl);
    /* Subtitle download is optional. Do not block the video task on a slow
       fallback translation lookup; source-provided tracks still remain
       available and the video starts immediately. */
    const subtitleCandidate = subRaw;
    const subtitleUrl = normalizeProviderSubtitleUrl(site, subtitleCandidate, base);

    const token = await getAuthToken();
    const downloadToken = await getDownloadToken();
    /* Fire-and-forget — يعمل في الخلفية بمستقل عن lifecycle هذه الشاشة */
     const isHlsDownload = best.directType === "hls" || isHlsMediaUrl(proxyUrl);
     const downloadUrl = (DOWNLOAD_SUBTITLE_SITES.has(site) || isHlsDownload)
      ? buildEmbeddedDownloadUrl(site, site === "kawaii" ? (best.rawUrl || proxyUrl) : proxyUrl, subtitleUrl, base)
      : proxyUrl;
    void startGlobalDownload({
      animeId:  parseInt(anime || "0"),
      ep:       epNum,
      title:    displayTitle,
      cover:    coverUrl,
      site,
      quality:  getSrcQuality(best),
      url:      downloadUrl,
      authToken: token,
      downloadToken,
      headers,
      subtitleUrl,
       hlsManifestUrl: isHlsDownload ? proxyUrl : undefined,
    });
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [downloadStates, sources, anime, epNum, displayTitle, coverUrl, globalSubUrl, watchUnlocked]);

  /**
   * handleFetchAndDownload — يُنزَّل مباشرةً بدون الحاجة لفتح المشغّل أولاً.
   * - إذا كان المصدر مجلوباً مسبقاً → يُنزَّل من الكاش مباشرةً.
   * - إذا لم يُجلب بعد → يجلبه أولاً ثم يبدأ التنزيل.
   */
  const handleFetchAndDownload = useCallback(async (site: string, preferredQuality: QualityKey) => {
    if (!DOWNLOAD_SOURCE_SITES.has(site)) return;
    const stateKey = `${site}:${preferredQuality}`;
    const wantedQuality = PICKER_QUALITY[preferredQuality];
    const dlState = downloadStates[stateKey] || "idle";
    if (dlState === "downloading" || dlState === "done") return;
    if (dlFetchingSites.has(stateKey)) return; // جلب جارٍ بالفعل
    if (!(await ensureDownloadAllowed())) return;

    // إذا كان المصدر مجلوباً → نزّل مباشرةً من sources الحالية
    if (fetchedSitesRef.current.has(site)) {
      await handleDownloadSite(site, preferredQuality);
      return;
    }

    // جلب المصدر ثم التنزيل
    setDlFetchingSites(prev => { const s = new Set(prev); s.add(stateKey); return s; });

    const base = getBaseUrl();
    const qs = new URLSearchParams({
      anime: anime || "0", ep: String(epNum), title: titleStr,
      english: englishStr, format: format || "",
      year: year || "", episodes: episodes || "", native: native || "",
    });
    qs.set("titles", JSON.stringify(titleVariants));
    if (titleArStr) qs.set("titleAr", titleArStr);
    if (site === "anslayer" && anslayerId) qs.set("anslayerId", anslayerId);

    let tid: ReturnType<typeof setTimeout> | null = null;
    try {
      await warmAuthToken();
      const siteCtrl = new AbortController();
      /* تسجيل الـ controller — يُلغى عند navigation/refresh/goEp تماماً كـ handlePickSite */
      siteCtrls.current.set(site, siteCtrl);
      const timeout = SITE_TIMEOUT_MAP[site] ?? SITE_TIMEOUT_MS;
      tid = setTimeout(() => siteCtrl.abort(), timeout);
      const res = await secureFetch(`${base}/api/anime/fetch-source?site=${site}&${qs}`, { signal: siteCtrl.signal });

      if (!res.ok || !isMountedRef.current) throw new Error("fetch failed");
      const data = await res.json();
      const rawSrcs: Src[] = data.sources || [];
      if (!rawSrcs.length) throw new Error("no sources");

       const newSrcs = rawSrcs
        .map((s): Src => {
          const sourceSite = s.site || site;
           const mapped: Src = {
            ...s,
            site: sourceSite,
            directUrl: resolveUrl(s.directUrl, base),
            url: resolveUrl(s.url, base),
            subtitleUrl: normalizeProviderSubtitleUrl(sourceSite, s.subtitleUrl, base),
          };
           return normalizeKawaiiMobileSource(mapped, base);
        })
        .filter(s => !isBlockedSource(s))
        .filter(s => !(s.isEmbed && s.url && (s.url.includes("mega.nz") || s.url.includes("mega.co.nz"))))
        .filter(s => { const k = getPlayUrl(s); if (!k || seenKeys.current.has(k)) return false; seenKeys.current.add(k); return true; });

      if (!newSrcs.length) throw new Error("no direct sources");

      fetchedSitesRef.current.add(site);
      setSlotStatus(prev => ({ ...prev, [site]: "ready" }));
      setSources(prev => [...prev.filter(s => s.site !== site), ...newSrcs]);

      // لا تستخدم أعلى جودة تلقائياً: صف التنزيل يحدد الجودة المطلوبة.
      const best = newSrcs.find(s => getSrcQuality(s) === wantedQuality && isDirectPlayable(s));
      if (!best || !isDirectPlayable(best)) throw new Error("no playable source");

      const rawUrl    = getPlayUrl(best);
      const hdrs      = best.headers || extractProxyHeaders(rawUrl);
      const proxyUrl  = ensureVpsProxy(rawUrl, hdrs, base, best.directType === "hls");
      const subRaw    = best.subtitleUrl || globalSubUrl;
        const subtitleCandidate = subRaw;
       const subtitleUrl = normalizeProviderSubtitleUrl(site, subtitleCandidate, base);
       const token     = await getAuthToken();
       const downloadToken = await getDownloadToken();
       const isHlsDownload = best.directType === "hls" || isHlsMediaUrl(proxyUrl);
       const downloadUrl = (DOWNLOAD_SUBTITLE_SITES.has(site) || isHlsDownload)
         ? buildEmbeddedDownloadUrl(site, site === "kawaii" ? (best.rawUrl || proxyUrl) : proxyUrl, subtitleUrl, base)
         : proxyUrl;

      void startGlobalDownload({
        animeId:    parseInt(anime || "0"),
        ep:         epNum,
        title:      displayTitle,
        cover:      coverUrl,
        site,
        quality:    getSrcQuality(best),
        url:        downloadUrl,
        authToken:  token,
        downloadToken,
        headers:    hdrs,
        subtitleUrl,
         hlsManifestUrl: isHlsDownload ? proxyUrl : undefined,
      });

    } catch {
      if (isMountedRef.current)
        setDownloadStates(prev => ({ ...prev, [stateKey]: "error" }));
    } finally {
      if (tid !== null) clearTimeout(tid);
      siteCtrls.current.delete(site); // تنظيف الـ controller بعد انتهاء الطلب
      if (isMountedRef.current)
        setDlFetchingSites(prev => { const s = new Set(prev); s.delete(stateKey); return s; });
    }
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [downloadStates, dlFetchingSites, anime, epNum, titleStr, englishStr, titleArStr, format, year, episodes, native, anslayerId, displayTitle, coverUrl, globalSubUrl, handleDownloadSite]);

  /* ── خروج آمن من شاشة المشاهدة ──
     مسار "أحدث الحلقات" لا يملك صفحة حلقات خلفه دائماً، كما أن router.back()
     قد يعيد استخدام شاشة مشاهدة قديمة وتبقى في حالة التحميل. لذلك نعود
     مباشرةً إلى الرئيسية لهذا المسار، ونبقي الرجوع التقليدي للحلقات العادية. */
  const leaveWatch = useCallback(() => {
    saveProgress();
    abortRef.current?.abort();
    siteCtrls.current.forEach(c => c.abort());
    siteCtrls.current.clear();
    inFlightSitesRef.current.clear();
    fetchedSitesRef.current.clear();
    ScreenOrientation.unlockAsync().catch(() => {});

    if (router.canGoBack()) router.back();
    else router.replace(`/episodes/${anime}` as any);
  }, [saveProgress, router, anime]);

  /* ── Handle back ── */
  const handleBack = useCallback(() => {
    /* الخروج من المشغل يرجع أولاً إلى منتقي المصادر حتى لو دخل المستخدم
       من بطاقة أحدث الحلقات. */
    if (screen === "native" || screen === "embed") {
      saveProgress();
      setScreen("picker");
      return;
    }
    leaveWatch();
  }, [screen, saveProgress, leaveWatch]);

  /* ── Memoized RiftPlayer callbacks — يمنع إعادة render المشغّل عند كل تغيير في الـ parent ── */
  const onRiftBack = useCallback(() => {
    saveProgress();
    setScreen("picker");
  }, [saveProgress]);

  const onRiftError = useCallback(() => {
    console.warn("[Anime Watch] جميع المصادر فشلت — العودة للـ picker");
    saveProgress();
    if (srcCacheKey) AsyncStorage.removeItem(srcCacheKey).catch(() => {});
    inFlightSitesRef.current.clear();
    fetchedSitesRef.current.clear();
    setSources([]);
    seenKeys.current.clear();
    setSlotStatus({});
    setScreen("picker");
  }, [saveProgress, srcCacheKey]);

  const onRiftProgress = useCallback((pos: number, dur: number) => {
    lastTimeRef.current = pos;
    if (dur > 0) lastDurationRef.current = dur;
  }, []);

  const onRiftNextEpisode = useCallback(() => {
    if (canGoNextEpisode) goEp(epNum + 1, true);
  }, [canGoNextEpisode, goEp, epNum]);
  const onRiftPrevEpisode = useCallback(() => goEp(epNum - 1), [goEp, epNum]);
  const onRiftEpisodeSelect = useCallback((n: number) => goEp(n), [goEp]);

  /* ── Group sources ── */
  const { directSrcs, embedSrcs } = useMemo(() => {
    const seen = new Set<string>();
    const direct: Src[] = [];
    const embeds: Src[] = [];
    for (const src of sources) {
      const key = getPlayUrl(src);
      if (seen.has(key)) continue;
      seen.add(key);
      if (isDirectPlayable(src)) direct.push(src);
      else if (isEmbedSrc(src)) embeds.push(src);
    }
    /* ترتيب: جودة أعلى أولاً، ثم أولوية الموقع (KW → AW → HI → DU → rest) */
    direct.sort((a, b) => {
      const qDiff = TIER_RANK[getSrcQuality(b)] - TIER_RANK[getSrcQuality(a)];
      if (qDiff !== 0) return qDiff;
      return (SITE_PRIORITY[b.site || ""] ?? 0) - (SITE_PRIORITY[a.site || ""] ?? 0);
    });
    return { directSrcs: direct, embedSrcs: embeds }; // embedSrcs reserved for future WebView fallback
  }, [sources]);

  const downloadSlots = useMemo(() => {
    return Q_KEYS.flatMap((quality) =>
      Object.entries(availableSlots)
        .filter(([site, tiers]) => DOWNLOAD_SOURCE_SITES.has(site) && Boolean(tiers[quality]))
        .map(([site]) => ({ site, tag: SITE_TAG[site] || getSiteTag(site), quality }))
        .sort((a, b) => {
          const order = (STATIC_PICKER[quality] || []).map(item => item.site);
          return order.indexOf(a.site) - order.indexOf(b.site);
        }),
    );
  }, [availableSlots]);

  /* ── RiftPlayer sources (live, used for picker) ── */
  const riftSources = useMemo((): PlayerSource[] => {
    const base = getBaseUrl();
    const srcs = directSrcs;
    /* مطابق لـ isArabic في web SCRAPER_DEFS — مصادر عربية لا تحتاج SmartSub */
    const ARABIC_SITES = new Set(["shahiid","animelek","animedar","okanime","arabseed","animeify","animeday","mycima","topcinemaa","anime4up2","animewitcher","ristoanime","faselhd_db","animetime","sanime"]);
    return srcs.map(s => {
      const rawUrl = getPlayUrl(s);
      /* headers: استخدم الـ headers المُرسَلة من الخادم أولاً (Referer/Origin المباشرة)،
         ثم احسبها من رابط الـ proxy كـ fallback للإصدارات القديمة من الكاش */
      const headers = s.headers || extractProxyHeaders(rawUrl);
      const mobileDirectUrl = getMobileDirectUrl(s);
      /* Kawaii/AnimeKai reject datacenter IPs for some signed media URLs.
         Their original URL is safe on the device when provider headers travel
         with every ExoPlayer request. Other sources keep the VPS proxy. */
      const url = mobileDirectUrl
        ? mobileDirectUrl
        : ensureVpsProxy(rawUrl, headers, base, s.directType === "hls");
      return {
        url,
        headers,
        label: `سيرفر · ${getSiteTag(s.site || "")}`,
        quality: getSrcQuality(s),
        site: s.site,
        /* Keep the source subtitle URL so KW's translated VTT is available
           both during streaming and after it is saved with a download. */
        subtitleUrl: subtitlesDisabledForSite(s.site)
          ? undefined
          : (s.subtitleUrl ? resolveUrl(s.subtitleUrl, base) : globalSubUrl),
        isArabic: ARABIC_SITES.has(s.site || ""),
        wantsSmartSub: !ARABIC_SITES.has(s.site || ""),
        skipIntro: s.skipIntro,
        skipOutro: s.skipOutro,
      };
    }).filter(s => s.url);
  }, [directSrcs, globalSubUrl]);

  /* ── Frozen sources: تُجمَّد لحظة اختيار المستخدم للمصدر ولا تتغير أثناء التشغيل.
     هذا يمنع تغيير مصفوفة sources في RiftPlayer بسبب وصول مصادر SSE جديدة.
     الإصلاح: نحفظ riftSources في ref حتى نقرأه داخل playSrc بدون إضافته للـ deps ── */
  const [frozenSources, setFrozenSources] = useState<PlayerSource[]>([]);
  const riftSourcesRef = useRef<PlayerSource[]>([]);
  useEffect(() => { riftSourcesRef.current = riftSources; }, [riftSources]);

  /* تجميد قائمة المصادر لحظة دخول المشغّل، ومسحها عند الخروج (picker/embed/loading).
     — عند دخول native: إذا كانت فارغة نملأها بـ riftSources الحالية (التجميد الأول).
       إذا وصلت مصادر جديدة أثناء التشغيل نُضيفها للنهاية فقط (append) بدون تغيير
       المصادر الموجودة حتى لا يُعيد RiftPlayer ترتيبها ويُعطّل التشغيل.
     — هذا يحل مشكلة auto-play الذي كان يُجمِّد مصدراً واحداً فقط فيُفشل كل المصادر. */
  useEffect(() => {
    if (screen === "native") {
      setFrozenSources(prev => {
        if (prev.length === 0) return riftSources.length > 0 ? riftSources : prev;
        // أضف المصادر الجديدة فقط (بدون إزاحة الحالية)
        const existingUrls = new Set(prev.map(s => s.url));
        const newOnes = riftSources.filter(s => s.url && !existingUrls.has(s.url));
        if (!newOnes.length) return prev;
        /* حد أقصى 10 مصادر في frozenSources — بدون هذا الحد يواصل RiftPlayer
           الدوران عبر كل المصادر الجديدة (كل منها 12s timeout) → OOM → كراش */
        return [...prev, ...newOnes].slice(0, 10);
      });
    } else {
      setFrozenSources([]);
    }
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [screen, riftSources]);


  /* ── loading: صحيح عندما يكون أي موقع قيد الجلب (مرجع للمستقبل) ── */
  const _loading = Object.values(slotStatus).some(s => s === "fetching"); void _loading;

  /* ══════════════ LOADING SCREEN ══════════════ */
  if (screen === "loading") {
    return (
      <View style={{ flex: 1, backgroundColor: "#07070d" }}>
        {coverUrl ? <Image source={{ uri: coverUrl }} style={[StyleSheet.absoluteFill, { opacity: 0.13 }]} blurRadius={Platform.OS === "ios" ? 28 : 10} resizeMode="cover" /> : null}
        <LinearGradient colors={["rgba(7,7,13,0.90)", "rgba(12,8,24,0.60)", "rgba(7,7,13,0.95)"]} style={StyleSheet.absoluteFill} />
        <Pressable onPress={handleBack} focusable={tvMode} style={({ focused }) => [d.ldBackBtn, { top: topPad + 4 }, tvMode && tvFocusStyle(focused)]}>
          <Ionicons name="arrow-back" size={20} color="rgba(255,255,255,0.65)" />
        </Pressable>
        <View style={d.ldContent}>
          <Text style={d.ldPrayer}>اللهم صلِّ وسلِّم على نبينا محمد ﷺ</Text>
          <View style={d.ldPosterWrap}>
            {coverUrl ? (
              <Image source={{ uri: coverUrl }} style={d.ldPoster} resizeMode="contain" />
            ) : (
              <View style={[d.ldPoster, { backgroundColor: "rgba(18,10,40,0.95)", alignItems: "center", justifyContent: "center" }]}>
                <Ionicons name="film" size={36} color="rgba(139,92,246,0.4)" />
              </View>
            )}
          </View>
          {displayTitle ? (
            <Text style={{ fontSize: 16, fontFamily: "Cairo_700Bold", color: "#fff", textAlign: "center", paddingHorizontal: 12 }} numberOfLines={2}>{displayTitle}</Text>
          ) : null}
          <View style={d.ldEpBadge}><Ionicons name="tv" size={10} color="#a78bfa" /><Text style={d.ldEpText}>الحلقة {epNum}</Text></View>
          <View style={{ alignItems: "center", gap: 10 }}>
            <SpinRing />
            <Text style={{ fontSize: 13, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.45)", textAlign: "center" }}>⏳ جاري تجهيز الحلقة، قد يستغرق بضع ثوانٍ.</Text>
          </View>
        </View>
      </View>
    );
  }

  /* ══════════════ RIFT PLAYER ══════════════ */
  const playerSources = frozenSources.length > 0 ? frozenSources : riftSources;
  if (screen === "native" && playerSources.length > 0 && playingSrc) {
    /* نحسب الرابط النهائي لـ playingSrc (بعد ensureVpsProxy) لمطابقة صحيحة مع playerSources */
    const _playRaw = getPlayUrl(playingSrc);
    const _playHeaders = playingSrc?.headers || extractProxyHeaders(_playRaw);
    const _playFinal = ensureVpsProxy(_playRaw, _playHeaders, getBaseUrl(), playingSrc?.directType === "hls");
    const startIdx = Math.max(0, playerSources.findIndex(s => playingSrc && s.url === _playFinal));
    return (
      <RiftPlayer
        /* ⚠️ key فريد لكل حلقة — يجبر React على تفكيك المشغّل بالكامل (unmount حقيقي)
           بدل إعادة استخدام نفس native player عبر player.replace() فقط. بدون هذا الـ key
           فإن router.replace لنفس المسار (/watch) بمعاملات مختلفة لا يُعيد mount الشاشة،
           فتتراكم موارد ExoPlayer/AVPlayer الأصلية (buffers/codecs) عبر الحلقات المتتالية
           حتى يحدث OOM أصلي (native) يُغلق التطبيق بصمت دون أي سجل خطأ JS.
           هذا الـ key يحل المشكلة جذرياً: كل حلقة = مشغّل native جديد تماماً + Master
           cleanup الحالي يعمل فعلياً بين كل حلقة وأخرى. */
        key={`${anime}-${epNum}`}
        sources={playerSources}
        initialSourceIndex={startIdx}
        title={displayTitle}
        episode={epNum}
        anilistId={anime ? parseInt(anime) : undefined}
        episodeTitle={arEpTitle ?? (etitle ? safeDecodeURIComponent(etitle) : undefined)}
        initialPosition={resumeTime}
        totalEps={totalEpsCount}
        onBack={onRiftBack}
        onError={onRiftError}
        onProgress={onRiftProgress}
        onNextEpisode={canGoNextEpisode ? onRiftNextEpisode : undefined}
        onPrevEpisode={epNum > 1 ? onRiftPrevEpisode : undefined}
        onEpisodeSelect={onRiftEpisodeSelect}
      />
    );
  }

  /* ══════════════ RESOLVING (WebView مخفي — لا يُعرض للمستخدم) ══════════════ */
  if (screen === "resolving" && playingSrc) {
    const resolveUrl2 = getPlayUrl(playingSrc);
    return (
      <View style={{ flex: 1, backgroundColor: "#07070d", alignItems: "center", justifyContent: "center", gap: 14 }}>
        <Pressable onPress={handleBack} focusable={tvMode} style={({ focused }) => [d.playerBackBtn, { position: "absolute", top: topPad + 4, right: 12 }, tvMode && tvFocusStyle(focused)]}>
          <Ionicons name="arrow-back" size={18} color="#fff" />
        </Pressable>
        <SpinRing />
        <Text style={{ fontSize: 13, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.45)", textAlign: "center" }}>
          ⏳ جاري تجهيز المصدر…
        </Text>
        {/* WebView مخفي 100% — يزور الصفحة المحمية خلفياً ثم يُستبدل تلقائياً بالمشغّل الداخلي */}
        {resolveUrl2 ? (
          <HiddenResolverWebView
            pageUrl={resolveUrl2}
            onResolved={handleHiddenResolved}
            onFailed={handleHiddenFailed}
          />
        ) : null}
      </View>
    );
  }

  /* ══════════════ EMBED (WebView) ══════════════ */
  if (screen === "embed" && playingSrc) {
    const embedUrl = getPlayUrl(playingSrc);
    if (Platform.OS === "web") {
      return (
        <View style={{ flex: 1, backgroundColor: "#07070d", alignItems: "center", justifyContent: "center", gap: 16 }}>
          <Pressable onPress={handleBack} focusable={tvMode} style={({ focused }) => [d.playerBackBtn, { position: "absolute", top: topPad + 4, right: 12 }, tvMode && tvFocusStyle(focused)]}>
            <Ionicons name="arrow-back" size={18} color="#fff" />
          </Pressable>
          <View style={{ width: 72, height: 72, borderRadius: 36, backgroundColor: "rgba(139,92,246,0.15)", alignItems: "center", justifyContent: "center" }}>
            <Ionicons name="tv-outline" size={36} color="rgba(139,92,246,0.7)" />
          </View>
          <Text style={{ color: "#fff", fontFamily: "Cairo_700Bold", fontSize: 16, textAlign: "center" }}>هذا المصدر يحتاج التطبيق الأصلي</Text>
          <Pressable onPress={() => setScreen("picker")} focusable={tvMode}
            style={({ focused }) => [tvMode && tvFocusStyle(focused)]}>
            <Text style={{ color: "rgba(255,255,255,0.35)", fontFamily: "Cairo_400Regular", fontSize: 13 }}>العودة للمصادر</Text>
          </Pressable>
        </View>
      );
    }
    // Native: no WebView — show info card
    return (
      <View style={{ flex: 1, backgroundColor: "#07070d", alignItems: "center", justifyContent: "center", gap: 16 }}>
        <Pressable onPress={handleBack} focusable={tvMode} style={({ focused }) => [d.playerBackBtn, { position: "absolute", top: topPad + 4, right: 12 }, tvMode && tvFocusStyle(focused)]}>
          <Ionicons name="arrow-back" size={18} color="#fff" />
        </Pressable>
        <View style={{ width: 72, height: 72, borderRadius: 36, backgroundColor: "rgba(139,92,246,0.15)", alignItems: "center", justifyContent: "center" }}>
          <Ionicons name="tv-outline" size={36} color="rgba(139,92,246,0.7)" />
        </View>
        <Text style={{ color: "#fff", fontFamily: "Cairo_700Bold", fontSize: 16, textAlign: "center" }}>هذا المصدر يحتاج التطبيق الأصلي</Text>
        <Pressable onPress={() => { saveProgress(); setScreen("picker"); }} focusable={tvMode}
          style={({ focused }) => [tvMode && tvFocusStyle(focused)]}>
          <Text style={{ color: "rgba(255,255,255,0.35)", fontFamily: "Cairo_400Regular", fontSize: 13 }}>العودة للمصادر</Text>
        </Pressable>
      </View>
    );
  }

  /* ══════════════ PICKER ══════════════ */

  const hasAvailableSlot = Object.values(availableSlots).some(slots => Object.keys(slots).length > 0);

  return (
    <View style={{ flex: 1, backgroundColor: "#07070d" }}>
      <RewardedAdPrompt />
      {coverUrl ? <Image source={{ uri: coverUrl }} style={[StyleSheet.absoluteFill, { opacity: 0.08 }]} blurRadius={Platform.OS === "ios" ? 28 : 10} resizeMode="cover" /> : null}
      <LinearGradient colors={["rgba(7,7,13,0.97)", "rgba(7,7,13,0.88)"]} style={StyleSheet.absoluteFill} />

      {/* ── Header ── */}
      <View style={[d.header, tvMode && d.tvHeader, { paddingTop: topPad + 4 }]}>
        <View style={d.headerLeft}>
          <Pressable disabled={epNum <= 1} onPress={() => epNum > 1 && goEp(epNum - 1)} focusable={tvMode}
            style={({ focused }) => [d.epNavBtn, tvMode && d.tvEpNavBtn, epNum <= 1 && { opacity: 0.22 }, tvMode && tvFocusStyle(focused)]}>
            <Ionicons name="chevron-forward" size={tvMode ? 22 : 12} color="rgba(255,255,255,0.55)" />
            <Text style={[d.epNavText, tvMode && d.tvEpNavText]}>السابقة</Text>
          </Pressable>
          <Pressable
            disabled={!canGoNextEpisode}
            onPress={() => canGoNextEpisode && goEp(epNum + 1)}
            focusable={tvMode}
            style={({ focused }) => [d.epNavBtn, tvMode && d.tvEpNavBtn, { borderColor: "rgba(139,92,246,0.35)", backgroundColor: "rgba(139,92,246,0.10)" },
              !canGoNextEpisode && { opacity: 0.22 }, tvMode && tvFocusStyle(focused)]}>
            <Text style={[d.epNavText, tvMode && d.tvEpNavText, { color: "#c4b5fd" }]}>التالية</Text>
            <Ionicons name="chevron-back" size={tvMode ? 22 : 12} color="rgba(196,181,253,0.9)" />
          </Pressable>
          <Pressable onPress={refreshAllSources} focusable={tvMode}
            style={({ focused }) => [d.headerRefreshBtn, tvMode && d.tvHeaderActionBtn, tvMode && tvFocusStyle(focused)]}>
            <Ionicons name="refresh" size={tvMode ? 24 : 13} color="#8B5CF6" />
          </Pressable>
        </View>
        <View style={d.headerCenter}>
          <Text style={[d.headerTitle, tvMode && d.tvHeaderTitle]} numberOfLines={1}>{displayTitle}</Text>
          <Text style={[d.headerSub, tvMode && d.tvHeaderSub]}>الحلقة {epNum}</Text>
        </View>
        <Pressable onPress={handleBack} focusable={tvMode}
          style={({ focused }) => [d.headerBack, tvMode && d.tvHeaderActionBtn, tvMode && tvFocusStyle(focused)]}>
          <Ionicons name="arrow-back" size={tvMode ? 25 : 17} color="rgba(255,255,255,0.75)" />
        </Pressable>
      </View>

      <TvFocusGuideView autoFocus={tvMode} style={d.tvFocusGuide}>
        <ScrollView
          showsVerticalScrollIndicator={false}
          removeClippedSubviews={false}
          keyboardShouldPersistTaps="handled"
          contentContainerStyle={[d.scrollContent, tvMode && d.tvScrollContent]}
        >

        {/* ── Info card ── */}
        <View style={[d.infoCard, tvMode && d.tvInfoCard]}>
          {coverUrl ? (
              <View style={[d.infoPosterWrap, tvMode && d.tvInfoPosterWrap]}>
                <View style={[d.infoPosterGlow, tvMode && d.tvInfoPosterGlow]} />
                <Image source={{ uri: coverUrl }} style={[d.infoPoster, tvMode && d.tvInfoPoster]} resizeMode="cover" />
            </View>
          ) : null}
          <View style={d.infoMeta}>
            <Text style={[d.infoTitle, tvMode && d.tvInfoTitle]} numberOfLines={2}>{displayTitle}</Text>
            <View style={d.infoEpRow}>
              <View style={[d.infoEpBadge, tvMode && d.tvInfoEpBadge]}>
                <Ionicons name="play-circle" size={tvMode ? 22 : 10} color="#a78bfa" />
                <Text style={[d.infoEpText, tvMode && d.tvInfoEpText]}>الحلقة {epNum}</Text>
              </View>
            </View>
          </View>
        </View>

          {!availabilityDone && !hasAvailableSlot && (
            <View style={d.availabilityState}>
              <Pressable
                onPress={handleBack}
                hitSlop={10}
                focusable={tvMode}
                style={({ focused }) => [d.scanExitBtn, tvMode && d.tvScanExitBtn, tvMode && tvFocusStyle(focused)]}
                accessibilityRole="button"
                accessibilityLabel="الخروج إلى السيرفرات"
              >
                <Ionicons name="close" size={tvMode ? 22 : 16} color="rgba(255,255,255,0.72)" />
                <Text style={[d.scanExitText, tvMode && d.tvScanExitText]}>خروج</Text>
              </Pressable>
              <View style={d.availabilityGifWrap}>
                <ServerScanGif />
                <LinearGradient
                  colors={["transparent", "rgba(7,7,13,0.82)"]}
                  style={StyleSheet.absoluteFill}
                  pointerEvents="none"
                />
              </View>
              <SpinRing size={24} />
              <Text style={[d.availabilityHeadline, tvMode && d.tvAvailabilityHeadline]}>سوكونا يقاتل غوجو بجهد من اجل السيرفرات</Text>
              <Text style={[d.availabilityText, tvMode && d.tvAvailabilityText]}>يتم فحص السيرفرات… ستظهر السيرفرات الجاهزة أولاً</Text>
            </View>
          )}

          {!availabilityDone && hasAvailableSlot && (
            <View style={d.availabilityPartialState}>
              <SpinRing size={16} />
              <Text style={d.availabilityPartialText}>يتم فحص باقي السيرفرات…</Text>
            </View>
          )}

         {availabilityDone && !hasAvailableSlot && (
           <View style={d.availabilityEmpty}>
             <Ionicons name={availabilityError ? "cloud-offline-outline" : "search"} size={34} color="rgba(139,92,246,0.45)" />
             <Text style={d.availabilityEmptyTitle}>
               {availabilityError ? "تعذر التحقق من المصادر" : "لا توجد مصادر متاحة لهذه الحلقة"}
             </Text>
             <Text style={d.availabilityEmptyText}>
               {availabilityError ? "تحقق من الاتصال ثم أعد المحاولة." : "لم يُرجع الخادم أي مصدر صالح حالياً."}
             </Text>
              <Pressable onPress={refreshAllSources} accessibilityRole="button" style={d.retryBigBtn}>
               <Ionicons name="refresh" size={16} color="#c4b5fd" />
               <Text style={d.retryBigText}>إعادة المحاولة</Text>
             </Pressable>
           </View>
         )}

          {/* تظهر بطاقات المصادر المؤكدة تدريجيًا أثناء الفحص، ثم تكتمل
              القائمة عند وصول [DONE] من مرحلة availability. */}
            {hasAvailableSlot && Q_KEYS.map(qk => {
            const pickerDefs = STATIC_PICKER[qk] || [];
           const dynamicSlots = Object.entries(availableSlots)
             .filter(([, tiers]) => !!tiers[qk])
             .map(([site, tiers]) => {
               const pickerDef = pickerDefs.find(def => def.site === site);
               return {
                 site,
                 name: pickerDef?.name || tiers[qk]?.name || SITE_LABEL[site] || site,
                 tag: pickerDef?.tag || tiers[qk]?.tag || getSiteTag(site),
               };
            })
            .sort((a, b) => {
              const ai = pickerDefs.findIndex(def => def.site === a.site);
              const bi = pickerDefs.findIndex(def => def.site === b.site);
              return (ai < 0 ? Number.MAX_SAFE_INTEGER : ai)
                - (bi < 0 ? Number.MAX_SAFE_INTEGER : bi);
            });
           /* Do not fall back to the static catalog after the scan. The web
              picker renders only provider/quality rows confirmed by
              mode=check; using STATIC_PICKER here was the source of phantom
              mobile rows and web/mobile list drift. */
           const slots = dynamicSlots;
           if (!slots.length) return null;
          const dotColor = qk === "1080p" ? "#fbbf24" : qk === "720p" ? "#34d399" : "#94a3b8";
          return (
            <View key={qk} style={{ gap: 6 }}>
              {/* رأس الجودة */}
                 <View style={[d.qPill, tvMode && d.tvQPill]}>
                 <Text style={[d.qPillText, tvMode && d.tvQPillText, { color: dotColor }]}>
                  {qk.replace("p", "P")}
                </Text>
                <View style={[d.qPillDot, { backgroundColor: dotColor }]} />
              </View>

              {/* قائمة السيرفرات */}
              <View style={d.srcSection}>
                {slots.map((slot, idx) => {
                  const status   = slotStatus[pickerSlotKey(slot.site, qk)] || "idle";
                  const isFetching = status === "fetching";
                  const isFailed   = status === "failed";
                  const isReady    = status === "ready";
                  return (
                    <Pressable
                      key={slot.site}
                      onPress={() => handlePickSite(slot.site, qk)}
                      hasTVPreferredFocus={
                        tvMode &&
                        focusMemoryReady &&
                        pickerFocusKey === pickerSlotKey(slot.site, qk)
                      }
                      onFocus={() => {
                        if (tvMode) rememberFocus(pickerSlotKey(slot.site, qk));
                      }}
                      accessibilityRole="button"
                      accessibilityLabel={`اختيار سيرفر ${slot.tag} بجودة ${qk}`}
                      style={({ focused, pressed }) => [
                         d.webRow,
                        tvMode && d.tvWebRow,
                        tvMode && tvFocusStyle(focused),
                        idx < slots.length - 1 && d.webRowBorder,
                        !watchUnlocked && { opacity: 0.72 },
                        isReady && watchUnlocked && { backgroundColor: "rgba(34,197,94,0.035)" },
                        isFailed && { opacity: 0.40 },
                        pressed  && { opacity: 0.72 },
                      ]}
                    >
                      <View style={d.webRowActions}>
                        {!watchUnlocked ? (
                          <View style={[d.lockBtn, tvMode && d.tvLockBtn]}>
                            {watchAdSite === slot.site ? <SpinRing size={tvMode ? 28 : 14} /> : <Ionicons name="lock-closed" size={tvMode ? 24 : 11} color="#c4b5fd" />}
                            <Text style={[d.lockBtnText, tvMode && d.tvActionText]}>فتح</Text>
                          </View>
                        ) : isFetching ? (
                          <SpinRing size={tvMode ? 26 : 16} />
                        ) : isReady ? (
                          <View style={[d.playBtnGreen, tvMode && d.tvPlayBtn]}>
                            <Ionicons name="play" size={tvMode ? 24 : 10} color="#fff" />
                            <Text style={[d.playBtnGreenText, tvMode && d.tvActionText]}>تشغيل</Text>
                          </View>
                        ) : (
                          <View style={[d.pickBtn, tvMode && d.tvPickBtn, isFailed && { opacity: 0.4 }]}>
                            <Text style={[d.pickBtnText, tvMode && d.tvActionText]}>اختيار</Text>
                          </View>
                        )}
                      </View>

                      {/* Center: السيرفر XX */}
                      <Text
                        style={[
                           d.webRowTag,
                           tvMode && d.tvWebRowTag,
                          { flex: 1, textAlign: "right" },
                          isReady  && { color: "rgba(255,255,255,0.90)" },
                          isFailed && { color: "rgba(255,255,255,0.35)" },
                        ]}
                        numberOfLines={1}
                      >
                        السيرفر {slot.tag}
                      </Text>

                      {/* Status only; the download action sits beside اختيار. */}
                      <View style={d.webRowRight}>
                        {!isFetching && (
                          <View style={[d.webRowDot, tvMode && d.tvWebRowDot, {
                            backgroundColor:
                              isReady  ? "#34d399" :
                              isFailed ? "rgba(239,68,68,0.50)" :
                              "rgba(255,255,255,0.18)",
                          }]} />
                        )}
                      </View>
                    </Pressable>
                  );
         })}
              </View>
            </View>
          );
        })}

        {availabilityDone && downloadSlots.length > 0 && (
          <View style={d.downloadSection}>
            <View style={d.downloadHeader}>
              <View style={d.downloadHeaderIcon}>
                <Ionicons name="download-outline" size={17} color="#c4b5fd" />
              </View>
              <View style={{ flex: 1 }}>
                <Text style={d.downloadTitle}>سيرفرات التحميل</Text>
                <Text style={d.downloadSubtitle}>مصادر مخصصة للتحميل السلس: AW · SA · AS · FX</Text>
              </View>
            </View>
            <Text style={d.downloadHint}>
              اختر سيرفرًا لتحميل الحلقة. سيرفرات المشاهدة أعلاه مخصصة للمشاهدة فقط.
            </Text>
            <View style={d.downloadRows}>
              {downloadSlots.map((slot) => {
                const stateKey = `${slot.site}:${slot.quality}`;
                const dlState = downloadStates[stateKey] || "idle";
                const dlPct = Math.round((downloadProgress[stateKey] || 0) * 100);
                return (
                  <View key={stateKey} style={d.downloadRow}>
                    <View style={d.downloadRowInfo}>
                      <View style={d.downloadTag}>
                        <Text style={d.downloadTagText}>{slot.tag}</Text>
                      </View>
                      <Text style={d.downloadRowLabel}>سيرفر {slot.tag}</Text>
                      <Text style={d.downloadQuality}>{slot.quality.replace("p", "P")}</Text>
                    </View>
                    {dlState === "idle" && (
                      <Pressable
                        onPress={() => void handleFetchAndDownload(slot.site, slot.quality)}
                        hitSlop={8}
                        style={d.downloadAction}
                        accessibilityLabel={`تحميل ${slot.quality} من سيرفر ${slot.tag}`}
                      >
                        {dlFetchingSites.has(stateKey) ? <SpinRing size={15} /> : (
                          <>
                            <Ionicons name="download-outline" size={15} color="#fff" />
                            <Text style={d.downloadActionText}>تحميل</Text>
                          </>
                        )}
                      </Pressable>
                    )}
                    {dlState === "downloading" && (
                      <View style={d.dlPctBadge}>
                        <Text style={d.dlPctText}>{dlPct}%</Text>
                      </View>
                    )}
                    {dlState === "done" && <Ionicons name="checkmark-circle" size={19} color="#8B5CF6" />}
                    {dlState === "error" && <Ionicons name="close-circle" size={19} color="rgba(239,68,68,0.70)" />}
                  </View>
                );
              })}
            </View>
          </View>
        )}



        </ScrollView>
      </TvFocusGuideView>
    </View>
  );
}

/* ═══════════════ STYLES ═══════════════ */
const d = StyleSheet.create({
  tvFocusGuide: { flex: 1 },
  /* Loading */
  ldBackBtn:    { position: "absolute", right: 16, width: 36, height: 36, borderRadius: 18, backgroundColor: "rgba(0,0,0,0.45)", alignItems: "center", justifyContent: "center", borderWidth: 1, borderColor: "rgba(255,255,255,0.12)", zIndex: 10 },
  ldContent:    { flex: 1, alignItems: "center", justifyContent: "center", gap: 20, paddingHorizontal: 24 },
  ldPrayer:     { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.85)", textAlign: "center" },
  ldPosterWrap: { position: "relative", alignItems: "center", justifyContent: "center", width: 176, height: 264, overflow: "visible" },
  ldPoster:     { width: 176, height: 264, borderRadius: 20, borderWidth: 1, borderColor: "rgba(255,255,255,0.09)" },
  ldEpBadge:    { flexDirection: "row", alignItems: "center", gap: 5, paddingHorizontal: 14, paddingVertical: 5, borderRadius: 20, backgroundColor: "rgba(124,58,237,0.22)", borderWidth: 1, borderColor: "rgba(139,92,246,0.3)" },
  ldEpText:     { fontSize: 12, fontFamily: "Cairo_700Bold", color: "rgba(196,181,253,0.9)" },

  /* Player chrome */
  playerBackBtn: { width: 36, height: 36, borderRadius: 14, backgroundColor: "rgba(0,0,0,0.5)", alignItems: "center", justifyContent: "center", borderWidth: 1, borderColor: "rgba(255,255,255,0.15)" },
  playerTitle:   { fontSize: 13, fontFamily: "Cairo_700Bold", color: "#fff" },
  embedTopRow:   { position: "absolute", top: 0, left: 0, right: 0, flexDirection: "row", alignItems: "center", paddingHorizontal: 14, paddingBottom: 10, backgroundColor: "rgba(0,0,0,0.7)", gap: 10, zIndex: 10 },

  /* Picker header */
  header:        { flexDirection: "row", alignItems: "center", paddingHorizontal: 12, paddingBottom: 10, borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.07)", gap: 8 },
  tvHeader:     { paddingHorizontal: 28, paddingBottom: 10, gap: 8 },
  headerLeft:    { flexDirection: "row", alignItems: "center", gap: 5 },
  headerCenter:  { flex: 1, alignItems: "center" },
  headerBack:    { width: 36, height: 36, borderRadius: 12, backgroundColor: "rgba(255,255,255,0.07)", borderWidth: 1, borderColor: "rgba(255,255,255,0.11)", alignItems: "center", justifyContent: "center", flexShrink: 0 },
  headerTitle:   { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "#fff", textAlign: "center" },
  headerSub:     { fontSize: 10, color: "rgba(255,255,255,0.35)", fontFamily: "Cairo_400Regular", textAlign: "center" },
  tvHeaderTitle: { fontSize: 19, lineHeight: 27 },
  tvHeaderSub: { fontSize: 13, lineHeight: 20 },
  headerRefreshBtn: { width: 32, height: 32, borderRadius: 10, backgroundColor: "rgba(139,92,246,0.12)", borderWidth: 1, borderColor: "rgba(139,92,246,0.25)", alignItems: "center", justifyContent: "center" },
  tvHeaderActionBtn: { width: 42, height: 42, borderRadius: 12 },
  epNavBtn:      { flexDirection: "row", alignItems: "center", gap: 2, height: 32, borderRadius: 10, backgroundColor: "rgba(255,255,255,0.06)", borderWidth: 1, borderColor: "rgba(255,255,255,0.09)", paddingHorizontal: 8, justifyContent: "center" },
  tvEpNavBtn:    { minWidth: 96, height: 44, borderRadius: 12, paddingHorizontal: 12, gap: 5 },
  epNavText:     { fontSize: 10, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.65)" },
  tvEpNavText:   { fontSize: 13, lineHeight: 20 },

  /* Info card */
  infoCard:      { flexDirection: "row", alignItems: "flex-start", gap: 14, backgroundColor: "rgba(15,12,28,0.80)", borderRadius: 18, borderWidth: 1, borderColor: "rgba(139,92,246,0.14)", padding: 14 },
  tvInfoCard:    { padding: 18, gap: 16, borderRadius: 18 },
  infoPosterWrap:{ width: 72, height: 102, position: "relative", alignItems: "center", justifyContent: "center" },
  tvInfoPosterWrap: { width: 96, height: 136 },
  infoPosterGlow:{ position: "absolute", width: 80, height: 110, borderRadius: 20, backgroundColor: "rgba(109,40,217,0.28)" },
  tvInfoPosterGlow: { width: 92, height: 128, borderRadius: 15 },
  infoPoster:    { width: 72, height: 102, borderRadius: 12, borderWidth: 1, borderColor: "rgba(139,92,246,0.30)" },
  tvInfoPoster: { width: 96, height: 136, borderRadius: 14, borderWidth: 1 },
  infoMeta:      { flex: 1, gap: 8, paddingTop: 2 },
  infoTitle:     { fontSize: 15, fontFamily: "Cairo_800ExtraBold", color: "#fff", textAlign: "right", lineHeight: 22 },
  tvInfoTitle: { fontSize: 19, lineHeight: 28 },
  infoEpRow:     { flexDirection: "row", gap: 8, flexWrap: "wrap" },
  infoEpBadge:   { flexDirection: "row", alignItems: "center", gap: 5, backgroundColor: "rgba(124,58,237,0.18)", borderRadius: 8, borderWidth: 1, borderColor: "rgba(139,92,246,0.28)", paddingHorizontal: 10, paddingVertical: 5 },
  tvInfoEpBadge: { gap: 6, borderRadius: 10, paddingHorizontal: 12, paddingVertical: 7 },
  infoEpText:    { fontSize: 11, fontFamily: "Cairo_700Bold", color: "#c4b5fd" },
  tvInfoEpText: { fontSize: 14, lineHeight: 21 },
  availabilityState: { alignItems: "center", justifyContent: "center", gap: 10, paddingVertical: 22 },
  availabilityGifWrap: { width: "100%", maxWidth: 330, height: 184, borderRadius: 22, overflow: "hidden", backgroundColor: "rgba(255,255,255,0.025)", marginBottom: 2, alignItems: "center", justifyContent: "center" },
  availabilityGif: { width: "100%", height: "100%", backgroundColor: "transparent" },
  serverScanAnimation: { width: 110, height: 110, borderRadius: 55, alignItems: "center", justifyContent: "center", backgroundColor: "rgba(124,58,237,0.14)", borderWidth: 1, borderColor: "rgba(167,139,250,0.30)" },
  serverScanDots: { flexDirection: "row", gap: 7, marginTop: 8 },
  serverScanDot: { width: 7, height: 7, borderRadius: 4 },
  scanExitBtn: { alignSelf: "flex-end", flexDirection: "row", alignItems: "center", gap: 5, paddingHorizontal: 12, paddingVertical: 7, borderRadius: 12, backgroundColor: "rgba(255,255,255,0.07)", borderWidth: 1, borderColor: "rgba(255,255,255,0.12)", marginBottom: 12 },
  scanExitText: { color: "rgba(255,255,255,0.72)", fontFamily: "Cairo_700Bold", fontSize: 11 },
  tvScanExitBtn: { paddingHorizontal: 14, paddingVertical: 8, borderRadius: 11, gap: 6 },
  tvScanExitText: { fontSize: 13 },
  availabilityHeadline: { fontSize: 15, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.85)", textAlign: "center", lineHeight: 24 },
  tvAvailabilityHeadline: { fontSize: 17, lineHeight: 26 },
  availabilityText: { fontSize: 12, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.42)", textAlign: "center" },
  tvAvailabilityText: { fontSize: 14, lineHeight: 22 },
  availabilityPartialState: { flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 8, paddingVertical: 8 },
  availabilityPartialText: { fontSize: 11, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.38)" },
  availabilityEmpty: { alignItems: "center", justifyContent: "center", gap: 10, paddingVertical: 42, paddingHorizontal: 18 },
  availabilityEmptyTitle: { fontSize: 14, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.62)", textAlign: "center" },
  availabilityEmptyText: { fontSize: 11, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.30)", textAlign: "center" },

  /* Scroll */
  scrollContent: { padding: 14, paddingBottom: 100, gap: 12 },
  tvScrollContent: { paddingHorizontal: 28, paddingTop: 18, gap: 16 },

  /* Tier sections */
  tierSection:   { gap: 6 },
  tierHeader:    { flexDirection: "row", alignItems: "center", gap: 8, paddingHorizontal: 2 },
  tierDot:       { width: 6, height: 6, borderRadius: 3 },
  tierTitle:     { flex: 1, fontSize: 11, fontFamily: "Cairo_700Bold" },
  tierCount:     { paddingHorizontal: 7, paddingVertical: 2, borderRadius: 7, borderWidth: 1 },
  tierCountText: { fontSize: 9, fontFamily: "Cairo_700Bold" },

  /* Source section */
  srcSection:    { borderRadius: 16, overflow: "hidden", backgroundColor: "rgba(14,12,24,0.92)", borderWidth: 1, borderColor: "rgba(255,255,255,0.07)" },

  /* Source row: "Server N · KW" */
  srcRow:        { flexDirection: "row", alignItems: "center", paddingHorizontal: 14, paddingVertical: 8, gap: 12, borderBottomWidth: StyleSheet.hairlineWidth, borderBottomColor: "rgba(255,255,255,0.05)" },
  srcIcon:       { width: 28, height: 28, borderRadius: 8, alignItems: "center", justifyContent: "center", borderWidth: 1 },
  srcNum:        { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.92)", textAlign: "right", direction: "rtl" } as any,
  srcTagInline:  { fontFamily: "Cairo_800ExtraBold", letterSpacing: 0.5 },
  srcSubBadge:   { backgroundColor: "rgba(34,197,94,0.12)", borderRadius: 5, paddingHorizontal: 5, paddingVertical: 1, borderWidth: 1, borderColor: "rgba(34,197,94,0.25)" },
  srcSubText:    { fontSize: 8, fontFamily: "Cairo_700Bold", color: "rgba(134,239,172,0.85)" },
  srcHlsBadge:   { backgroundColor: "rgba(99,102,241,0.12)", borderRadius: 5, paddingHorizontal: 5, paddingVertical: 1, borderWidth: 1, borderColor: "rgba(99,102,241,0.25)" },
  srcHlsText:    { fontSize: 8, fontFamily: "Cairo_700Bold", color: "rgba(165,180,252,0.85)" },
  srcRight:      { flexDirection: "row", alignItems: "center", gap: 6, flexShrink: 0 },
  srcQBadge:     { paddingHorizontal: 8, paddingVertical: 3, borderRadius: 7, borderWidth: 1 },
  srcQText:      { fontSize: 8, fontFamily: "Cairo_800ExtraBold" },
  srcPlayBtn:    { flexDirection: "row", alignItems: "center", gap: 4, paddingHorizontal: 10, paddingVertical: 7, borderRadius: 10, backgroundColor: "rgba(16,185,129,0.88)", borderWidth: 1, borderColor: "rgba(52,211,153,0.35)" },
  srcPlayText:   { fontSize: 10, fontFamily: "Cairo_800ExtraBold", color: "#fff" },

  /* Site selector */
  siteSelectorCard:   { backgroundColor: "rgba(14,12,24,0.92)", borderRadius: 18, borderWidth: 1, borderColor: "rgba(139,92,246,0.18)", overflow: "hidden" },
  siteSelectorHeader: { flexDirection: "row", alignItems: "center", gap: 8, paddingHorizontal: 14, paddingVertical: 12, borderBottomWidth: StyleSheet.hairlineWidth, borderBottomColor: "rgba(255,255,255,0.07)" },
  siteSelectorTitle:  { fontSize: 12, fontFamily: "Cairo_700Bold", color: "#a78bfa" },
  /* قائمة عمودية بدل شبكة */
  siteList:           { flexDirection: "column" },
  siteRow:            { flexDirection: "row", alignItems: "center", gap: 10, paddingHorizontal: 14, paddingVertical: 13 },
  siteRowBorder:      { borderBottomWidth: StyleSheet.hairlineWidth, borderBottomColor: "rgba(255,255,255,0.06)" },
  siteRowDot:         { width: 18, alignItems: "center", justifyContent: "center", flexShrink: 0 },
  siteRowDotInner:    { width: 9, height: 9, borderRadius: 5 },
  siteRowName:        { flex: 1, fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.55)", textAlign: "right", direction: "rtl" } as any,
  siteRowTag:         { fontFamily: "Cairo_800ExtraBold", letterSpacing: 0.5 },
  siteRowPlayBtn:     { flexDirection: "row", alignItems: "center", gap: 4, paddingHorizontal: 11, paddingVertical: 6, borderRadius: 10, backgroundColor: "rgba(16,185,129,0.88)", borderWidth: 1, borderColor: "rgba(52,211,153,0.35)", flexShrink: 0 },
  siteRowPlayText:    { fontSize: 11, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  siteRowSelectBtn:   { paddingHorizontal: 11, paddingVertical: 6, borderRadius: 10, backgroundColor: "rgba(139,92,246,0.15)", borderWidth: 1, borderColor: "rgba(139,92,246,0.30)", flexShrink: 0 },
  siteRowRetryBtn:    { backgroundColor: "rgba(239,68,68,0.10)", borderColor: "rgba(239,68,68,0.28)" },
  siteRowSelectText:  { fontSize: 11, fontFamily: "Cairo_800ExtraBold", color: "rgba(196,181,253,0.90)" },
  loadAllBtn:         { flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 6, paddingVertical: 12, borderTopWidth: StyleSheet.hairlineWidth, borderTopColor: "rgba(255,255,255,0.07)" },
  loadAllText:        { fontSize: 11, fontFamily: "Cairo_700Bold", color: "#c4b5fd" },

  /* Empty state */
  empty:         { alignItems: "center", justifyContent: "center", gap: 14, paddingVertical: 50 },
  emptyIcon:     { width: 72, height: 72, borderRadius: 36, backgroundColor: "rgba(239,68,68,0.08)", borderWidth: 1, borderColor: "rgba(239,68,68,0.18)", alignItems: "center", justifyContent: "center" },
  emptyTitle:    { fontSize: 15, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.45)" },
  emptySub:      { fontSize: 12, color: "rgba(255,255,255,0.22)", fontFamily: "Cairo_400Regular", textAlign: "center", lineHeight: 20, paddingHorizontal: 24 },
  retryBtn:      { flexDirection: "row", alignItems: "center", gap: 8, backgroundColor: "rgba(139,92,246,0.15)", borderRadius: 14, borderWidth: 1, borderColor: "rgba(139,92,246,0.28)", paddingHorizontal: 20, paddingVertical: 11 },
  retryBtnText:  { fontSize: 13, fontFamily: "Cairo_700Bold", color: "#c4b5fd" },
  webAppBtn:     { flexDirection: "row", alignItems: "center", gap: 12, backgroundColor: "rgba(109,40,217,0.10)", borderRadius: 16, borderWidth: 1, borderColor: "rgba(139,92,246,0.22)", paddingHorizontal: 14, paddingVertical: 13, marginTop: 4 },
  webAppIcon:    { width: 40, height: 40, borderRadius: 12, backgroundColor: "rgba(139,92,246,0.16)", alignItems: "center", justifyContent: "center", borderWidth: 1, borderColor: "rgba(139,92,246,0.28)" },
  webAppTitle:   { fontSize: 13, fontFamily: "Cairo_700Bold", color: "rgba(196,181,253,0.95)", textAlign: "right" },
  webAppSub:     { fontSize: 10, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.30)", textAlign: "right" },

  /* ── Web-style quality pill header ── */
  qPill:         { flexDirection: "row", alignItems: "center", gap: 6, paddingHorizontal: 4 },
  qPillText:     { fontSize: 12, fontFamily: "Cairo_800ExtraBold", letterSpacing: 0.5 },
  tvQPill:       { paddingHorizontal: 16, paddingVertical: 9, borderRadius: 11 },
  tvQPillText:   { fontSize: 15, lineHeight: 22 },
  qPillDot:      { width: 6, height: 6, borderRadius: 3 },

  /* ── Web-style server row ── */
  webRow:         { flexDirection: "row", alignItems: "center", paddingHorizontal: 10, paddingVertical: 11, gap: 7 },
  tvWebRow:       { minHeight: 82, paddingHorizontal: 16, paddingVertical: 14, gap: 12, borderRadius: 14 },
  tvWebRowTag:    { fontSize: 16, lineHeight: 24 },
  tvWebRowDot:    { width: 12, height: 12, borderRadius: 6 },
  tvSiteRowPlayBtn: { minWidth: 116, minHeight: 46, paddingHorizontal: 16, paddingVertical: 10, borderRadius: 12 },
  webRowBorder:   { borderBottomWidth: StyleSheet.hairlineWidth, borderBottomColor: "rgba(255,255,255,0.06)" },
  webRowPlayIcon: { alignItems: "center", justifyContent: "center", flexShrink: 0 },
  webRowActions: { flexDirection: "row", alignItems: "center", gap: 4, flexShrink: 0 },
  webRowName:     { flex: 1, minWidth: 0, fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.48)", textAlign: "right" } as any,
  webRowTag:      { flex: 1, minWidth: 0, flexShrink: 1, fontFamily: "Cairo_800ExtraBold", letterSpacing: 0.2, fontSize: 10, lineHeight: 16, color: "rgba(255,255,255,0.60)" },
  webRowRight:    { flexDirection: "row", alignItems: "center", gap: 7, flexShrink: 0 },
  webRowDot:      { width: 8, height: 8, borderRadius: 4 },
  lockBtn:        { flexDirection: "row", alignItems: "center", gap: 4, paddingHorizontal: 9, paddingVertical: 5, borderRadius: 9, backgroundColor: "rgba(139,92,246,0.15)", borderWidth: 1, borderColor: "rgba(139,92,246,0.30)" },
  lockBtnText:    { fontSize: 10, fontFamily: "Cairo_700Bold", color: "#c4b5fd" },
  tvLockBtn:      { minWidth: 112, minHeight: 46, paddingHorizontal: 16, paddingVertical: 10, borderRadius: 12, gap: 6 },
  tvPickBtn:      { minWidth: 112, minHeight: 46, paddingHorizontal: 16, paddingVertical: 10, borderRadius: 12 },
  tvPlayBtn:      { minWidth: 132, minHeight: 46, paddingHorizontal: 16, paddingVertical: 10, borderRadius: 12, gap: 6 },
  tvActionText:   { fontSize: 15, lineHeight: 23 },

  /* ── Separate download servers ── */
  downloadSection:    { marginTop: 18, gap: 9, padding: 12, borderRadius: 18, backgroundColor: "rgba(14,12,24,0.92)", borderWidth: 1, borderColor: "rgba(139,92,246,0.22)" },
  downloadHeader:     { flexDirection: "row", alignItems: "center", gap: 9 },
  downloadHeaderIcon: { width: 32, height: 32, borderRadius: 10, alignItems: "center", justifyContent: "center", backgroundColor: "rgba(139,92,246,0.16)", borderWidth: 1, borderColor: "rgba(139,92,246,0.28)" },
  downloadTitle:      { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "#c4b5fd", textAlign: "right" },
  downloadSubtitle:   { marginTop: 2, fontSize: 9, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.43)", textAlign: "right" },
  downloadHint:       { fontSize: 10, lineHeight: 17, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.48)", textAlign: "right" },
  downloadRows:       { borderRadius: 13, overflow: "hidden", backgroundColor: "rgba(7,7,13,0.40)" },
  downloadRow:        { minHeight: 52, flexDirection: "row", alignItems: "center", justifyContent: "space-between", gap: 8, paddingHorizontal: 10, borderBottomWidth: StyleSheet.hairlineWidth, borderBottomColor: "rgba(255,255,255,0.07)" },
  downloadRowInfo:    { flex: 1, flexDirection: "row", alignItems: "center", justifyContent: "flex-end", gap: 8 },
  downloadTag:        { width: 27, height: 27, borderRadius: 8, alignItems: "center", justifyContent: "center", backgroundColor: "rgba(139,92,246,0.16)", borderWidth: 1, borderColor: "rgba(139,92,246,0.26)" },
  downloadTagText:    { fontSize: 9, fontFamily: "Cairo_800ExtraBold", color: "#c4b5fd" },
  downloadRowLabel:   { fontSize: 11, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.78)" },
  downloadQuality:    { fontSize: 9, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.40)" },
  downloadAction:     { minWidth: 78, height: 36, flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 5, borderRadius: 10, backgroundColor: "rgba(124,58,237,0.82)", borderWidth: 1, borderColor: "rgba(196,181,253,0.26)" },
  downloadActionText: { fontSize: 10, fontFamily: "Cairo_800ExtraBold", color: "#fff" },

  /* ── أزرار الاختيار/التشغيل ── */
  pickBtn:        { paddingHorizontal: 9, paddingVertical: 5, borderRadius: 9, backgroundColor: "rgba(124,58,237,0.18)", borderWidth: 1, borderColor: "rgba(139,92,246,0.35)" },
  pickBtnText:    { fontSize: 11, fontFamily: "Cairo_700Bold", color: "#c4b5fd" },
  playBtnGreen:   { flexDirection: "row", alignItems: "center", gap: 3, paddingHorizontal: 9, paddingVertical: 5, borderRadius: 9, backgroundColor: "rgba(16,185,129,0.88)", borderWidth: 1, borderColor: "rgba(52,211,153,0.35)" },
  playBtnGreenText: { fontSize: 11, fontFamily: "Cairo_800ExtraBold", color: "#fff" },

  /* ── Download button ── */
  dlIconBtn:     { width: 40, height: 40, borderRadius: 12, backgroundColor: "rgba(139,92,246,0.14)", borderWidth: 1, borderColor: "rgba(139,92,246,0.28)", alignItems: "center", justifyContent: "center" },
  dlPctBadge:    { minWidth: 40, height: 40, paddingHorizontal: 8, borderRadius: 12, backgroundColor: "rgba(139,92,246,0.15)", borderWidth: 1, borderColor: "rgba(139,92,246,0.28)", alignItems: "center", justifyContent: "center" },
  dlPctText:     { fontSize: 11, fontFamily: "Cairo_800ExtraBold", color: "#c4b5fd" },
});
