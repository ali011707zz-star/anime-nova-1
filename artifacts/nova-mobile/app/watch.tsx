import React, { useState, useEffect, useRef, useCallback, useMemo } from "react";
import {
  View, Text, Pressable, Image, ScrollView,
  StyleSheet, Platform, Animated, Easing, Alert,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { WebView } from "react-native-webview";
import { useLocalSearchParams, useRouter } from "expo-router";
import { RiftPlayer, PlayerSource } from "@/components/RiftPlayer";
import { HiddenResolverWebView, ResolvedStream } from "@/components/HiddenResolverWebView";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { useApp } from "@/context/AppContext";
import { getBaseUrl } from "@/utils/api";
import { secureFetch, secureStreamFetch, warmAuthToken, getAuthToken } from "@/utils/secureApi";
import {
  startGlobalDownload,
  subscribeActiveDownloads,
  getActiveDownloadsSnapshot,
  cancelActiveDownload,
} from "@/utils/downloadManager";
import * as ScreenOrientation from "expo-screen-orientation";
import { openIsolatedPlayer } from "@/lib/isolatedPlayer";

/* ── Types ── */
type Quality    = "1080p FHD" | "720p HD" | "360p SD";
type Screen     = "loading" | "picker" | "native" | "embed" | "resolving";
type AvailabilityQuality = "1080p" | "720p" | "360p";

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
  const url = (s.directUrl || s.url || "").toLowerCase();
  if (!isValidSourceUrl(s.directUrl || s.url)) return false;
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

function buildEmbeddedDownloadUrl(
  site: string,
  mediaUrl: string,
  subtitleUrl: string | undefined,
  base: string,
): string {
  const query = new URLSearchParams({
    site,
    url: mediaUrl,
  });
  if (subtitleUrl) {
    // The subtitle is always saved as a local VTT sidecar after the video
    // completes. The API receives it too so non-KW HLS downloads use the
    // same authenticated conversion contract.
    const isInternalSubtitle = subtitleUrl.includes("/api/anime/proxy-text")
      || subtitleUrl.includes("/api/anime/translate-vtt");
    const downloadSubtitle = site === "kawaii" && !isInternalSubtitle
      ? `${base}/api/anime/proxy-text?url=${encodeURIComponent(subtitleUrl)}&ref=${encodeURIComponent("https://kawaiianime.cc/")}`
      : subtitleUrl;
    query.set("subtitleUrl", downloadSubtitle);
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
  signal?: AbortSignal,
): Promise<string | undefined> {
  try {
    const response = await secureFetch(
      `${base}/api/anime/kawaii-meta?anilistId=${encodeURIComponent(animeId)}&ep=${ep}`,
      { signal, headers: { Accept: "application/json" } },
    );
    if (!response.ok) return undefined;
    const data = await response.json() as {
      arabicSubUrl?: unknown;
      englishSubUrl?: unknown;
    };
    const rawArabic = typeof data.arabicSubUrl === "string" ? data.arabicSubUrl : "";
    const rawEnglish = typeof data.englishSubUrl === "string" ? data.englishSubUrl : "";
    const raw = rawArabic || rawEnglish;
    if (!raw) return undefined;
    const proxied = normalizeKawaiiSubtitleUrl(raw, base);
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
/* أوّل جودة يظهر فيها كل موقع — يُستخدم لعرض زر التنزيل مرّة واحدة فقط.
   بدون هذا يُضاف اسم الموقع لـ dlFetchingSites فيظهر SpinRing
   لكل صفوف نفس الموقع في الجودات الثلاث (1080p/720p/360p). */
const SITE_FIRST_QUALITY: Map<string, QualityKey> = (() => {
  const m = new Map<string, QualityKey>();
  for (const qk of (["1080p", "720p", "360p"] as QualityKey[])) {
    for (const slot of (STATIC_PICKER[qk] || [])) {
      if (!m.has(slot.site)) m.set(slot.site, qk);
    }
  }
  return m;
})();
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

/* React Native's Image component is not a reliable animated-GIF renderer on
   all Expo/Android builds.  A tiny WebView keeps the GIF animation smooth,
   matching the web loading screen, without showing the GIFDB page chrome. */
const SERVER_SCAN_GIF =
  "https://gifdb.com/images/branded/high/satoru-gojo-vs-ryomen-sukuna-gif-tt4cnmnevgpxt99u.gif";

function ServerScanGif() {
  const [failed, setFailed] = useState(false);
  const html = `<!doctype html><html><head><meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1"></head><body><img src="${SERVER_SCAN_GIF}" alt="" /></body><style>html,body{margin:0;width:100%;height:100%;overflow:hidden;background:#07070d}img{display:block;width:100%;height:100%;object-fit:cover}</style></html>`;
  if (failed) return <ServerScanAnimation />;
  return (
    <WebView
      source={{ html, baseUrl: "https://gifdb.com/gif/satoru-gojo-vs-ryomen-sukuna-gif-tt4cnmnevgpxt99u.html" }}
      style={d.availabilityGif}
      originWhitelist={["*"]}
      javaScriptEnabled
      domStorageEnabled
      scrollEnabled={false}
      overScrollMode="never"
      showsVerticalScrollIndicator={false}
      showsHorizontalScrollIndicator={false}
      pointerEvents="none"
      accessible={false}
      onError={() => setFailed(true)}
    />
  );
}

/* timeout موحّد افتراضي */
const SITE_TIMEOUT_MS = 28_000;
const SITE_TIMEOUT_MAP: Record<string, number> = {
  anifox:       35_000,
  animewitcher: 38_000,
  animeify:     22_000,
  sanime:       18_000,
  kawaii:       15_000,
  anineko:      45_000,
  anivexa_re: 32_000, anivexa_anikoto: 32_000, anivexa_animegg: 32_000,
  anivexa_anidbapp: 32_000, anivexa_2dhive: 32_000,
  anivexa_anibd: 32_000, anivexa_senshi: 32_000, anivexa_kaa: 32_000,
};

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
  return (
    <Pressable onPress={() => onPlay(src)} style={d.srcRow}>
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
    titles: titlesParam, site: singleSiteParam, anslayerId, single,
  } = useLocalSearchParams<{
    anime: string; ep: string; title: string; english: string;
    format?: string; etitle?: string; totalEps?: string;
    year?: string; episodes?: string; native?: string; titleAr?: string;
    titles?: string;
    site?: string; anslayerId?: string; single?: string;
  }>();
  /* single=1 → آتٍ من قسم "أحدث الحلقات" (مصدر anslayer مباشرةً بمعرّفه الخاص من
     كتالوجه) — يطابق نظام الويب: يجب ألا يُجلب أي مصدر آخر سوى anslayer نفسه. */
  const singleSite = single === "1" && singleSiteParam ? singleSiteParam : null;
  const insets   = useSafeAreaInsets();
  const router   = useRouter();
  const { addToHistory } = useApp();
  const topPad   = insets.top > 0 ? insets.top : (Platform.OS === "ios" ? 44 : 24);

  const titleStr    = title   ? decodeURIComponent(title)   : "";
  const englishStr  = english ? decodeURIComponent(english) : "";
  const titleArStr  = titleAr ? decodeURIComponent(titleAr) : "";
  const titleVariants = useMemo(() => {
    const values = [titleStr, englishStr, native ? decodeURIComponent(native) : "", titleArStr];
    try {
      const parsed = titlesParam ? JSON.parse(decodeURIComponent(titlesParam)) : [];
      if (Array.isArray(parsed)) values.push(...parsed);
    } catch {}
    return Array.from(new Set(values
      .filter((value): value is string => typeof value === "string" && value.trim().length > 1)
      .map(value => value.trim())));
  }, [titleStr, englishStr, native, titleArStr, titlesParam]);
  const epNum      = parseInt(ep || "1", 10) || 1;
  const cover      = useLocalSearchParams<{ cover?: string }>().cover;
  const coverUrl   = cover ? decodeURIComponent(cover) : "";
  const totalEpsCount = totalEpsParam ? parseInt(totalEpsParam) || undefined : undefined;
  const displayTitle = titleArStr || englishStr || titleStr;

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
  /* حالات التنزيل لكل موقع */
  const [downloadStates,   setDownloadStates]   = useState<Record<string, "idle" | "downloading" | "done" | "error">>({});
  const [downloadProgress, setDownloadProgress] = useState<Record<string, number>>({});
  /* مواقع يجري جلبها خصيصاً للتنزيل (بدون فتح المشغّل) */
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

  const abortRef          = useRef<AbortController | null>(null);
  const availabilityAbortRef = useRef<AbortController | null>(null);
  /* siteCtrls: نتتبع AbortController لكل موقع جارٍ جلبه — لضمان إلغاء كل الطلبات عند الخروج */
  const siteCtrls         = useRef<Map<string, AbortController>>(new Map());
  const seenKeys          = useRef(new Set<string>());
  const lastTimeRef       = useRef(0);
  const lastHistoryWriteRef = useRef(0);
  /* آخر كتابة فعلية لـ progressKey — نحدّها بمرة واحدة كل 10ث بدل كل 500ms */
  const lastProgressSaveRef = useRef(0);
  const isMountedRef      = useRef(true);
  const fetchEpochRef     = useRef(0);
  const inFlightSitesRef  = useRef<Set<string>>(new Set());
  const fetchedSitesRef   = useRef<Set<string>>(new Set());

  /* ── تعقّب الـ mount ── */
  useEffect(() => {
    isMountedRef.current = true;
    return () => { isMountedRef.current = false; };
  }, []);

  /* ── ترجمة عنوان الحلقة من الإنجليزية للعربية ── */
  useEffect(() => {
    if (!etitle) return;
    const raw = decodeURIComponent(etitle);
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
    fetchArabicSubtitleUrl(anime, epNum, base, ctrl.signal)
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

    const allowedSites = new Set(
      (singleSite ? [singleSite] : Q_KEYS.flatMap(q => STATIC_PICKER[q].map(s => s.site))),
    );
    let cancelled = false;

    const applyRow = (row: any) => {
      const site = String(row?.site || "").trim();
      const quality = String(row?.quality || "").toLowerCase();
      const qk: QualityKey | null =
        quality === "1080p" ? "1080p" :
        quality === "720p" ? "720p" :
        quality === "360p" || quality === "480p" ? "360p" : null;
      if (!site || !qk || !allowedSites.has(site)) return;
      setAvailableSlots(prev => ({
        ...prev,
        [site]: {
          ...prev[site],
          [qk]: { serverCount: Math.max(1, Number(row.serverCount) || 1) },
        },
      }));
      setSlotStatus(prev => ({ ...prev, [site]: "ready" }));
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
        let currentEvent = "";
        const consume = (text: string) => {
          buffer += text;
          const lines = buffer.split(/\r?\n/);
          buffer = lines.pop() || "";
          for (const line of lines) {
            if (!line) { currentEvent = ""; continue; }
            if (line.startsWith("event: ")) { currentEvent = line.slice(7).trim(); continue; }
            if (!line.startsWith("data: ")) continue;
            const payload = line.slice(6).trim();
            if (!payload || payload === "[DONE]") continue;
            try {
              const row = JSON.parse(payload);
              if (currentEvent === "source" || row?.checkOnly || row?.available) applyRow(row);
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
        consume(decoder.decode());
      } catch {
        if (!controller.signal.aborted && isMountedRef.current) setAvailabilityError(true);
      } finally {
        if (!cancelled && isMountedRef.current) setAvailabilityDone(true);
      }
    };
    void run();
    return () => {
      cancelled = true;
      controller.abort();
    };
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [anime, epNum, titleStr, englishStr, titleArStr, format, year, episodes, native, anslayerId, singleSite, availabilityAttempt]);

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
    if (t > 10) await AsyncStorage.setItem(progressKey, String(Math.floor(t)));
  }, [progressKey]);

  /* ── Navigate episode ── */
  const goEp = useCallback((n: number, _auto = false) => {
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
    const latestParams = [
      anslayerId ? `&anslayerId=${encodeURIComponent(anslayerId)}` : "",
      singleSite ? `&single=1&site=${encodeURIComponent(singleSite)}` : "",
    ].join("");
    router.replace(`/watch?anime=${anime}&ep=${n}&title=${encodeURIComponent(titleStr)}&english=${encodeURIComponent(englishStr)}&format=${encodeURIComponent(format || "")}${coverParam}${arParam}${latestParams}`);
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [saveProgress, coverUrl, titleArStr, router, anime, titleStr, englishStr, format, singleSite, anslayerId]);

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
    const thumb = coverUrl || (anime ? `https://img.anili.st/media/${anime}` : "");
    if (anime) addToHistory({ animeId: parseInt(anime), ep: epNum, title: titleStr, english: englishStr, thumbnail: thumb, updatedAt: Date.now() });

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
  }, [anime, epNum, titleStr, englishStr, coverUrl, globalSubUrl]); // eslint-disable-line

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
    /* منع الضغط المزدوج أثناء الجلب — يسمح بإعادة المحاولة بعد الفشل */
    const fetchKey = preferredQuality ? `${site}::${preferredQuality}` : site;
    if (inFlightSitesRef.current.has(fetchKey)) return;
    /* إذا نجح سابقاً → شغّل أفضل مصدر من نفس الجودة فقط */
    if (fetchedSitesRef.current.has(fetchKey)) {
      const cached = sources.filter(s => s.site === site);
      const preferred = preferredQuality
        ? cached.find(s => getSrcQuality(s) === PICKER_QUALITY[preferredQuality] && isDirectPlayable(s))
        : undefined;
      const best = preferredQuality ? preferred : (cached.find(isDirectPlayable) ?? cached[0]);
      if (best) { playSrc(best); return; }
    }

    inFlightSitesRef.current.add(fetchKey);
    setSlotStatus(prev => ({ ...prev, [site]: "fetching" }));

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
      siteCtrls.current.set(site, siteCtrl);
      const timeout = SITE_TIMEOUT_MAP[site] ?? SITE_TIMEOUT_MS;
      tid = setTimeout(() => siteCtrl.abort(), timeout);
      const res = await secureFetch(`${base}/api/anime/fetch-source?site=${site}&${qs}`, { signal: siteCtrl.signal });

      if (!res.ok || !isMountedRef.current) throw new Error("fetch failed");
      const data = await res.json();
      /* تحقق مجدداً بعد await — الـ component قد يكون unmounted أثناء parse الـ JSON */
      if (!isMountedRef.current) return;
      const rawSrcs: Src[] = data.sources || [];

      if (!rawSrcs.length) { setSlotStatus(prev => ({ ...prev, [site]: "failed" })); return; }

       const mappedSrcs = rawSrcs
        .map((s): Src => {
          const sourceSite = s.site || site;
          return {
            ...s,
            site: sourceSite,
            directUrl: resolveUrl(s.directUrl, base),
            url: resolveUrl(s.url, base),
            subtitleUrl: normalizeProviderSubtitleUrl(sourceSite, s.subtitleUrl, base),
          };
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
       const candidates = requestedTier ? sameTier : mappedSrcs;
       const selected = [...candidates].sort(
         (a, b) => (b.qualityRank ?? 0) - (a.qualityRank ?? 0),
       )[0];
       const newSrcs = selected && !seenKeys.current.has(getPlayUrl(selected))
         ? [selected]
         : [];
       if (selected && newSrcs.length) seenKeys.current.add(getPlayUrl(selected));

       if (!newSrcs.length) {
         setSlotStatus(prev => ({ ...prev, [site]: "failed" }));
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
      setSlotStatus(prev => ({ ...prev, [site]: "ready" }));
      const selectedTier = preferredQuality ? PICKER_QUALITY[preferredQuality] : undefined;
      setSources(prev => [...prev.filter(s => !(s.site === site && (!selectedTier || getSrcQuality(s) === selectedTier))), ...newSrcs]);

      /* شغّل فوراً عند النجاح */
      const preferred = preferredQuality
        ? newSrcs.find(s => getSrcQuality(s) === PICKER_QUALITY[preferredQuality] && isDirectPlayable(s))
        : undefined;
      const best = preferredQuality ? preferred : (newSrcs.find(isDirectPlayable) ?? newSrcs[0]);
      if (best) playSrc(best);

    } catch {
       if (isMountedRef.current) {
         setSlotStatus(prev => ({ ...prev, [site]: "failed" }));
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
      siteCtrls.current.delete(site); // تنظيف الـ controller بعد انتهاء الطلب
    }
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [anime, epNum, titleStr, englishStr, titleArStr, format, year, episodes, native, playSrc, anslayerId, sources]);

  /* ── مزامنة حالة التنزيل من Global Singleton ── */
  useEffect(() => {
    const animeIdNum = parseInt(anime || "0");
    const sync = () => {
      const snapshot = getActiveDownloadsSnapshot();
      /* خريطة: site → ActiveDownload للحلقة الحالية فقط */
      const activeForEp = new Map(
        snapshot
          .filter(d => d.animeId === animeIdNum && d.ep === epNum)
          .map(d => [d.site, d])
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
        for (const [site, d] of activeForEp) {
          next[site] = d.status === "error" ? "error" : "downloading";
        }
        return next;
      });
      setDownloadProgress(prev => {
        const next = { ...prev };
        for (const [site, d] of activeForEp) {
          next[site] = d.progress;
        }
        return next;
      });
    };
    sync(); // قراءة فورية عند mount
    return subscribeActiveDownloads(sync);
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [anime, epNum]);

  /* ── تنزيل حلقة من موقع معين (Global — يستمر عند التنقل) ── */
  const handleDownloadSite = useCallback(async (site: string) => {
    const dlState = downloadStates[site] || "idle";
    if (dlState === "downloading" || dlState === "done") return;

    const siteSrcs = sources.filter(s => s.site === site);
    const best = siteSrcs.find(isDirectPlayable) ?? siteSrcs[0];
    if (!best || !isDirectPlayable(best)) return;

    const rawUrl   = getPlayUrl(best);
    const headers  = best.headers || extractProxyHeaders(rawUrl);
    const base     = getBaseUrl();
    const proxyUrl = ensureVpsProxy(rawUrl, headers, base, best.directType === "hls");

    /* ترجمة: استخدم subtitleUrl المصدر أولاً ثم الترجمة العالمية */
    const subRaw     = subtitlesDisabledForSite(site)
      ? undefined
      : (best.subtitleUrl || globalSubUrl);
    const subtitleCandidate = DOWNLOAD_SUBTITLE_SITES.has(site) && !subtitlesDisabledForSite(site)
      ? subRaw || (await fetchArabicSubtitleUrl(anime || "0", epNum, base))
      : subRaw;
    const subtitleUrl = normalizeProviderSubtitleUrl(site, subtitleCandidate, base);

    const token = await getAuthToken();
    /* Fire-and-forget — يعمل في الخلفية بمستقل عن lifecycle هذه الشاشة */
    if (DOWNLOAD_SUBTITLE_SITES.has(site) && !subtitleUrl) {
      Alert.alert("الترجمة غير جاهزة", "تعذر تجهيز الترجمة العربية لهذه الحلقة. أعد المحاولة بعد لحظات.");
      return;
    }
    const downloadUrl = DOWNLOAD_SUBTITLE_SITES.has(site)
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
      subtitleUrl,
    });
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [downloadStates, sources, anime, epNum, displayTitle, coverUrl, globalSubUrl]);

  /**
   * handleFetchAndDownload — يُنزَّل مباشرةً بدون الحاجة لفتح المشغّل أولاً.
   * - إذا كان المصدر مجلوباً مسبقاً → يُنزَّل من الكاش مباشرةً.
   * - إذا لم يُجلب بعد → يجلبه أولاً ثم يبدأ التنزيل.
   */
  const handleFetchAndDownload = useCallback(async (site: string) => {
    const dlState = downloadStates[site] || "idle";
    if (dlState === "downloading" || dlState === "done") return;
    if (dlFetchingSites.has(site)) return; // جلب جارٍ بالفعل

    // إذا كان المصدر مجلوباً → نزّل مباشرةً من sources الحالية
    if (fetchedSitesRef.current.has(site)) {
      await handleDownloadSite(site);
      return;
    }

    // جلب المصدر ثم التنزيل
    setDlFetchingSites(prev => { const s = new Set(prev); s.add(site); return s; });

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
          return {
            ...s,
            site: sourceSite,
            directUrl: resolveUrl(s.directUrl, base),
            url: resolveUrl(s.url, base),
            subtitleUrl: normalizeProviderSubtitleUrl(sourceSite, s.subtitleUrl, base),
          };
        })
        .filter(s => !isBlockedSource(s))
        .filter(s => !(s.isEmbed && s.url && (s.url.includes("mega.nz") || s.url.includes("mega.co.nz"))))
        .filter(s => { const k = getPlayUrl(s); if (!k || seenKeys.current.has(k)) return false; seenKeys.current.add(k); return true; });

      if (!newSrcs.length) throw new Error("no direct sources");

      fetchedSitesRef.current.add(site);
      setSlotStatus(prev => ({ ...prev, [site]: "ready" }));
      setSources(prev => [...prev.filter(s => s.site !== site), ...newSrcs]);

      // ابحث عن أفضل مصدر قابل للتشغيل المباشر
      const best = newSrcs.find(isDirectPlayable) ?? newSrcs[0];
      if (!best || !isDirectPlayable(best)) throw new Error("no playable source");

      const rawUrl    = getPlayUrl(best);
      const hdrs      = best.headers || extractProxyHeaders(rawUrl);
      const proxyUrl  = ensureVpsProxy(rawUrl, hdrs, base, best.directType === "hls");
      const subRaw    = best.subtitleUrl || globalSubUrl;
       const subtitleCandidate = DOWNLOAD_SUBTITLE_SITES.has(site) && !subtitlesDisabledForSite(site)
         ? subRaw || (await fetchArabicSubtitleUrl(anime || "0", epNum, base))
         : subRaw;
       const subtitleUrl = normalizeProviderSubtitleUrl(site, subtitleCandidate, base);
      const token     = await getAuthToken();
       if (DOWNLOAD_SUBTITLE_SITES.has(site) && !subtitleUrl) {
         throw new Error("Arabic subtitle is not ready");
       }
       const downloadUrl = DOWNLOAD_SUBTITLE_SITES.has(site)
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
        subtitleUrl,
      });

    } catch {
      if (isMountedRef.current)
        setDownloadStates(prev => ({ ...prev, [site]: "error" }));
    } finally {
      if (tid !== null) clearTimeout(tid);
      siteCtrls.current.delete(site); // تنظيف الـ controller بعد انتهاء الطلب
      if (isMountedRef.current)
        setDlFetchingSites(prev => { const s = new Set(prev); s.delete(site); return s; });
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

    if (singleSite !== null) {
      router.replace("/(tabs)" as any);
      return;
    }
    if (router.canGoBack()) router.back();
    else router.replace(`/episodes/${anime}` as any);
  }, [saveProgress, singleSite, router, anime]);

  /* ── Handle back ── */
  const handleBack = useCallback(() => {
    /* في أحدث الحلقات: الخروج من المشغل يخرج من المسار بالكامل،
       أما الحلقات العادية فترجع أولاً إلى منتقي السيرفرات. */
    if (singleSite === null && (screen === "native" || screen === "embed")) {
      saveProgress();
      setScreen("picker");
      return;
    }
    leaveWatch();
  }, [screen, singleSite, saveProgress, leaveWatch]);

  /* ── Memoized RiftPlayer callbacks — يمنع إعادة render المشغّل عند كل تغيير في الـ parent ── */
  const onRiftBack = useCallback(() => {
    if (singleSite !== null) {
      leaveWatch();
      return;
    }
    saveProgress();
    setScreen("picker");
  }, [singleSite, leaveWatch, saveProgress]);

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
    if (pos > 10) AsyncStorage.setItem(progressKey, String(Math.floor(pos))).catch(() => {});
    const now = Date.now();
    if (dur > 0 && anime && now - lastHistoryWriteRef.current > 30_000) {
      lastHistoryWriteRef.current = now;
      addToHistory({
        animeId: parseInt(anime), ep: epNum, title: titleStr, english: englishStr,
        thumbnail: coverUrl || (anime ? `https://img.anili.st/media/${anime}` : ""),
        position: pos, duration: dur, updatedAt: now,
      });
    }
  }, [progressKey, anime, epNum, titleStr, englishStr, coverUrl, addToHistory]);

  const onRiftNextEpisode = useCallback(() => goEp(epNum + 1, true), [goEp, epNum]);
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
      /* نضمن أن كل الروابط تمرّ عبر VPS proxy — ExoPlayer/AVPlayer لا يُرسل Referer
         بشكل موثوق لـ CDNs، وكثير من CDNs تحجب IPs مراكز البيانات بدون Referer صحيح */
      const url = ensureVpsProxy(rawUrl, headers, base, s.directType === "hls");
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
        <Pressable onPress={handleBack} style={[d.ldBackBtn, { top: topPad + 4 }]}>
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
        episodeTitle={arEpTitle ?? (etitle ? decodeURIComponent(etitle) : undefined)}
        initialPosition={resumeTime}
        totalEps={totalEpsCount}
        onBack={onRiftBack}
        onError={onRiftError}
        onProgress={onRiftProgress}
        onNextEpisode={onRiftNextEpisode}
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
        <Pressable onPress={handleBack} style={[d.playerBackBtn, { position: "absolute", top: topPad + 4, right: 12 }]}>
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
          <Pressable onPress={handleBack} style={[d.playerBackBtn, { position: "absolute", top: topPad + 4, right: 12 }]}>
            <Ionicons name="arrow-back" size={18} color="#fff" />
          </Pressable>
          <View style={{ width: 72, height: 72, borderRadius: 36, backgroundColor: "rgba(139,92,246,0.15)", alignItems: "center", justifyContent: "center" }}>
            <Ionicons name="tv-outline" size={36} color="rgba(139,92,246,0.7)" />
          </View>
          <Text style={{ color: "#fff", fontFamily: "Cairo_700Bold", fontSize: 16, textAlign: "center" }}>هذا المصدر يحتاج التطبيق الأصلي</Text>
          <Pressable onPress={() => setScreen("picker")}>
            <Text style={{ color: "rgba(255,255,255,0.35)", fontFamily: "Cairo_400Regular", fontSize: 13 }}>العودة للمصادر</Text>
          </Pressable>
        </View>
      );
    }
    // Native: no WebView — show info card
    return (
      <View style={{ flex: 1, backgroundColor: "#07070d", alignItems: "center", justifyContent: "center", gap: 16 }}>
        <Pressable onPress={handleBack} style={[d.playerBackBtn, { position: "absolute", top: topPad + 4, right: 12 }]}>
          <Ionicons name="arrow-back" size={18} color="#fff" />
        </Pressable>
        <View style={{ width: 72, height: 72, borderRadius: 36, backgroundColor: "rgba(139,92,246,0.15)", alignItems: "center", justifyContent: "center" }}>
          <Ionicons name="tv-outline" size={36} color="rgba(139,92,246,0.7)" />
        </View>
        <Text style={{ color: "#fff", fontFamily: "Cairo_700Bold", fontSize: 16, textAlign: "center" }}>هذا المصدر يحتاج التطبيق الأصلي</Text>
        <Pressable onPress={() => { saveProgress(); setScreen("picker"); }}>
          <Text style={{ color: "rgba(255,255,255,0.35)", fontFamily: "Cairo_400Regular", fontSize: 13 }}>العودة للمصادر</Text>
        </Pressable>
      </View>
    );
  }

  /* ══════════════ PICKER ══════════════ */

  const hasAvailableSlot = Object.values(availableSlots).some(slots => Object.keys(slots).length > 0);

  return (
    <View style={{ flex: 1, backgroundColor: "#07070d" }}>
      {coverUrl ? <Image source={{ uri: coverUrl }} style={[StyleSheet.absoluteFill, { opacity: 0.08 }]} blurRadius={Platform.OS === "ios" ? 28 : 10} resizeMode="cover" /> : null}
      <LinearGradient colors={["rgba(7,7,13,0.97)", "rgba(7,7,13,0.88)"]} style={StyleSheet.absoluteFill} />

      {/* ── Header ── */}
      <View style={[d.header, { paddingTop: topPad + 4 }]}>
        <View style={d.headerLeft}>
          <Pressable disabled={epNum <= 1} onPress={() => epNum > 1 && goEp(epNum - 1)}
            style={[d.epNavBtn, epNum <= 1 && { opacity: 0.22 }]}>
            <Ionicons name="chevron-forward" size={12} color="rgba(255,255,255,0.55)" />
            <Text style={d.epNavText}>السابقة</Text>
          </Pressable>
          <Pressable
            disabled={singleSite !== null || (totalEpsCount !== undefined && epNum >= totalEpsCount)}
            onPress={() => goEp(epNum + 1)}
            style={[d.epNavBtn, { borderColor: "rgba(139,92,246,0.35)", backgroundColor: "rgba(139,92,246,0.10)" },
              (singleSite !== null || (totalEpsCount !== undefined && epNum >= totalEpsCount)) && { opacity: 0.22 }]}>
            <Text style={[d.epNavText, { color: "#c4b5fd" }]}>التالية</Text>
            <Ionicons name="chevron-back" size={12} color="rgba(196,181,253,0.9)" />
          </Pressable>
          <Pressable onPress={refreshAllSources} style={d.headerRefreshBtn}>
            <Ionicons name="refresh" size={13} color="#8B5CF6" />
          </Pressable>
        </View>
        <View style={d.headerCenter}>
          <Text style={d.headerTitle} numberOfLines={1}>{displayTitle}</Text>
          <Text style={d.headerSub}>الحلقة {epNum}</Text>
        </View>
        <Pressable onPress={handleBack} style={d.headerBack}>
          <Ionicons name="arrow-back" size={17} color="rgba(255,255,255,0.75)" />
        </Pressable>
      </View>

      <ScrollView showsVerticalScrollIndicator={false} contentContainerStyle={d.scrollContent}>

        {/* ── Info card ── */}
        <View style={d.infoCard}>
          {coverUrl ? (
            <View style={d.infoPosterWrap}>
              <View style={d.infoPosterGlow} />
              <Image source={{ uri: coverUrl }} style={d.infoPoster} resizeMode="cover" />
            </View>
          ) : null}
          <View style={d.infoMeta}>
            <Text style={d.infoTitle} numberOfLines={2}>{displayTitle}</Text>
            <View style={d.infoEpRow}>
              <View style={d.infoEpBadge}>
                <Ionicons name="play-circle" size={10} color="#a78bfa" />
                <Text style={d.infoEpText}>الحلقة {epNum}</Text>
              </View>
            </View>
          </View>
        </View>

          {!availabilityDone && (
            <View style={d.availabilityState}>
              <View style={d.availabilityGifWrap}>
                <ServerScanGif />
                <LinearGradient
                  colors={["transparent", "rgba(7,7,13,0.82)"]}
                  style={StyleSheet.absoluteFill}
                  pointerEvents="none"
                />
              </View>
              <SpinRing size={24} />
              <Text style={d.availabilityHeadline}>سوكونا يقاتل غوجو بجهد من اجل السيرفرات</Text>
              <Text style={d.availabilityText}>يتم فحص جميع السيرفرات… ستظهر النتائج تباعاً ويمكنك التشغيل فوراً</Text>
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
             <Pressable onPress={refreshAllSources} style={d.retryBigBtn}>
               <Ionicons name="refresh" size={16} color="#c4b5fd" />
               <Text style={d.retryBigText}>إعادة المحاولة</Text>
             </Pressable>
           </View>
         )}

         {/* لا تظهر أي بطاقة أثناء الفحص. هذا هو الفاصل المرئي بين مرحلة
             availability في الويب ومرحلة منتقي المصادر. */}
          {(availabilityDone || Object.keys(availableSlots).length > 0) && (singleSite === "anslayer" ? (["1080p", "720p"] as QualityKey[]) : Q_KEYS).map(qk => {
          const staticSlots = singleSite === "anslayer"
            ? (ANSLAYER_PICKER[qk] || [])
            : singleSite
              ? (STATIC_PICKER[qk] || []).filter(slot => slot.site === singleSite)
              : (STATIC_PICKER[qk] || []);
          const dynamicSlots = Object.entries(availableSlots)
            .filter(([site, tiers]) => !!tiers[qk] && (!singleSite || site === singleSite))
            .map(([site, tiers]) => ({
              site,
              name: tiers[qk]?.name || SITE_LABEL[site] || site,
              tag: tiers[qk]?.tag || getSiteTag(site),
            }));
          const slots = dynamicSlots.length > 0 ? dynamicSlots : staticSlots;
           if (!slots.length) return null;
          const dotColor = qk === "1080p" ? "#fbbf24" : qk === "720p" ? "#34d399" : "#94a3b8";
          return (
            <View key={qk} style={{ gap: 6 }}>
              {/* رأس الجودة */}
              <View style={d.qPill}>
                <Text style={[d.qPillText, { color: dotColor }]}>
                  {qk.replace("p", "P")}
                </Text>
                <View style={[d.qPillDot, { backgroundColor: dotColor }]} />
              </View>

              {/* قائمة السيرفرات */}
              <View style={d.srcSection}>
                {slots.map((slot, idx) => {
                  const status   = slotStatus[slot.site] || "idle";
                  const firstQuality = Q_KEYS.find(key => !!availableSlots[slot.site]?.[key]) || SITE_FIRST_QUALITY.get(slot.site);
                  const isFetching = status === "fetching";
                  const isFailed   = status === "failed";
                  const isReady    = status === "ready";
                  const dlState    = downloadStates[slot.site] || "idle";
                  const dlPct      = Math.round((downloadProgress[slot.site] || 0) * 100);
                  return (
                    <Pressable
                      key={slot.site}
                      onPress={() => handlePickSite(slot.site, qk)}
                      style={({ pressed }) => [
                        d.webRow,
                        idx < slots.length - 1 && d.webRowBorder,
                        isReady  && { backgroundColor: "rgba(34,197,94,0.035)" },
                        isFailed && { opacity: 0.40 },
                        pressed  && { opacity: 0.72 },
                      ]}
                    >
                      {/* Keep download immediately beside the server action. */}
                      <View style={d.webRowActions}>
                        {isFetching ? (
                          <SpinRing size={16} />
                        ) : isReady ? (
                          <View style={d.playBtnGreen}>
                            <Ionicons name="play" size={10} color="#fff" />
                            <Text style={d.playBtnGreenText}>تشغيل</Text>
                          </View>
                        ) : (
                          <View style={[d.pickBtn, isFailed && { opacity: 0.4 }]}>
                            <Text style={d.pickBtnText}>اختيار</Text>
                          </View>
                        )}
                        {dlState === "idle" && firstQuality === qk && (
                          <Pressable
                            onPress={(event) => {
                              event.stopPropagation();
                              void handleFetchAndDownload(slot.site);
                            }}
                            hitSlop={8}
                            style={d.dlIconBtn}
                            accessibilityLabel="تنزيل الحلقة"
                          >
                            {dlFetchingSites.has(slot.site) ? (
                              <SpinRing size={14} />
                            ) : (
                              <Ionicons name="download-outline" size={15} color="rgba(139,92,246,0.80)" />
                            )}
                          </Pressable>
                        )}
                        {dlState === "downloading" && (
                          <View style={d.dlPctBadge}>
                            <Text style={d.dlPctText}>{dlPct}%</Text>
                          </View>
                        )}
                        {dlState === "done" && (
                          <Ionicons name="checkmark-circle" size={16} color="#8B5CF6" />
                        )}
                        {dlState === "error" && (
                          <Ionicons name="close-circle" size={16} color="rgba(239,68,68,0.70)" />
                        )}
                      </View>

                      {/* Center: السيرفر XX */}
                      <Text
                        style={[
                          d.webRowTag,
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
                          <View style={[d.webRowDot, {
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



      </ScrollView>
    </View>
  );
}

/* ═══════════════ STYLES ═══════════════ */
const d = StyleSheet.create({
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
  headerLeft:    { flexDirection: "row", alignItems: "center", gap: 5 },
  headerCenter:  { flex: 1, alignItems: "center" },
  headerBack:    { width: 36, height: 36, borderRadius: 12, backgroundColor: "rgba(255,255,255,0.07)", borderWidth: 1, borderColor: "rgba(255,255,255,0.11)", alignItems: "center", justifyContent: "center", flexShrink: 0 },
  headerTitle:   { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "#fff", textAlign: "center" },
  headerSub:     { fontSize: 10, color: "rgba(255,255,255,0.35)", fontFamily: "Cairo_400Regular", textAlign: "center" },
  headerRefreshBtn: { width: 32, height: 32, borderRadius: 10, backgroundColor: "rgba(139,92,246,0.12)", borderWidth: 1, borderColor: "rgba(139,92,246,0.25)", alignItems: "center", justifyContent: "center" },
  epNavBtn:      { flexDirection: "row", alignItems: "center", gap: 2, height: 32, borderRadius: 10, backgroundColor: "rgba(255,255,255,0.06)", borderWidth: 1, borderColor: "rgba(255,255,255,0.09)", paddingHorizontal: 8, justifyContent: "center" },
  epNavText:     { fontSize: 10, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.65)" },

  /* Info card */
  infoCard:      { flexDirection: "row", alignItems: "flex-start", gap: 14, backgroundColor: "rgba(15,12,28,0.80)", borderRadius: 18, borderWidth: 1, borderColor: "rgba(139,92,246,0.14)", padding: 14 },
  infoPosterWrap:{ width: 72, height: 102, position: "relative", alignItems: "center", justifyContent: "center" },
  infoPosterGlow:{ position: "absolute", width: 80, height: 110, borderRadius: 20, backgroundColor: "rgba(109,40,217,0.28)" },
  infoPoster:    { width: 72, height: 102, borderRadius: 12, borderWidth: 1, borderColor: "rgba(139,92,246,0.30)" },
  infoMeta:      { flex: 1, gap: 8, paddingTop: 2 },
  infoTitle:     { fontSize: 15, fontFamily: "Cairo_800ExtraBold", color: "#fff", textAlign: "right", lineHeight: 22 },
  infoEpRow:     { flexDirection: "row", gap: 8, flexWrap: "wrap" },
  infoEpBadge:   { flexDirection: "row", alignItems: "center", gap: 5, backgroundColor: "rgba(124,58,237,0.18)", borderRadius: 8, borderWidth: 1, borderColor: "rgba(139,92,246,0.28)", paddingHorizontal: 10, paddingVertical: 5 },
  infoEpText:    { fontSize: 11, fontFamily: "Cairo_700Bold", color: "#c4b5fd" },
  availabilityState: { alignItems: "center", justifyContent: "center", gap: 10, paddingVertical: 22 },
  availabilityGifWrap: { width: "100%", maxWidth: 330, height: 184, borderRadius: 22, overflow: "hidden", backgroundColor: "rgba(255,255,255,0.025)", marginBottom: 2, alignItems: "center", justifyContent: "center" },
  availabilityGif: { width: "100%", height: "100%", backgroundColor: "transparent" },
  serverScanAnimation: { width: 110, height: 110, borderRadius: 55, alignItems: "center", justifyContent: "center", backgroundColor: "rgba(124,58,237,0.14)", borderWidth: 1, borderColor: "rgba(167,139,250,0.30)" },
  serverScanDots: { flexDirection: "row", gap: 7, marginTop: 8 },
  serverScanDot: { width: 7, height: 7, borderRadius: 4 },
  availabilityHeadline: { fontSize: 15, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.85)", textAlign: "center", lineHeight: 24 },
  availabilityText: { fontSize: 12, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.42)", textAlign: "center" },
  availabilityEmpty: { alignItems: "center", justifyContent: "center", gap: 10, paddingVertical: 42, paddingHorizontal: 18 },
  availabilityEmptyTitle: { fontSize: 14, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.62)", textAlign: "center" },
  availabilityEmptyText: { fontSize: 11, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.30)", textAlign: "center" },

  /* Scroll */
  scrollContent: { padding: 14, paddingBottom: 100, gap: 12 },

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
  qPillDot:      { width: 6, height: 6, borderRadius: 3 },

  /* ── Web-style server row ── */
  webRow:         { flexDirection: "row", alignItems: "center", paddingHorizontal: 10, paddingVertical: 11, gap: 7 },
  webRowBorder:   { borderBottomWidth: StyleSheet.hairlineWidth, borderBottomColor: "rgba(255,255,255,0.06)" },
  webRowPlayIcon: { alignItems: "center", justifyContent: "center", flexShrink: 0 },
  webRowActions: { flexDirection: "row", alignItems: "center", gap: 4, flexShrink: 0 },
  webRowName:     { flex: 1, minWidth: 0, fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.48)", textAlign: "right" } as any,
  webRowTag:      { flex: 1, minWidth: 0, flexShrink: 1, fontFamily: "Cairo_800ExtraBold", letterSpacing: 0.2, fontSize: 10, lineHeight: 16, color: "rgba(255,255,255,0.60)" },
  webRowRight:    { flexDirection: "row", alignItems: "center", gap: 7, flexShrink: 0 },
  webRowDot:      { width: 8, height: 8, borderRadius: 4 },

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
