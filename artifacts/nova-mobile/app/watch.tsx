import React, { useState, useEffect, useRef, useCallback, useMemo } from "react";
import {
  View, Text, Pressable, Image, ScrollView,
  StyleSheet, Platform, Animated, Easing,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useLocalSearchParams, useRouter } from "expo-router";
import { RiftPlayer, PlayerSource } from "@/components/RiftPlayer";
import { HiddenResolverWebView, ResolvedStream } from "@/components/HiddenResolverWebView";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { useApp } from "@/context/AppContext";
import { getBaseUrl } from "@/utils/api";
import { secureFetch, warmAuthToken } from "@/utils/secureApi";
import * as ScreenOrientation from "expo-screen-orientation";

/* ── Types ── */
type Quality    = "1080p FHD" | "720p HD" | "360p SD";
type Screen     = "loading" | "picker" | "native" | "embed" | "resolving";

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

/* ── Site → 2-letter tag (mirrors web SCRAPER_DEFS tags exactly) ── */
const SITE_TAG: Record<string, string> = {
  shahiid: "SH", animelek: "EK", animedar: "AD", okanime: "OK",
  ristoanime: "RS", animeify: "AF", animeday: "DY", arabseed: "AR",
  anime4up2: "4U", mycima: "MC", topcinemaa: "TC",
  animewitcher: "AW", kawaii: "KW",
  anikototv: "ATV", animekai: "KI", mitanime: "MT",
  vidlink_anim: "VL", vidfast: "VF",
  animetime: "AT", animepahe: "AP", dulo_anim: "DL",
  faselhd_db: "FH",
  notorrent: "NO", sanime: "SA", anipm: "PM", anslayer: "AS",
  akwam: "AQ",
};

/* ── اسم عرض لكل موقع في منتقي المصادر ── */
const SITE_LABEL: Record<string, string> = {
  kawaii: "Kawaii", animewitcher: "AnimeWitcher",
  dulo_anim: "Dulo",
  anikototv: "AniKotoTV", mitanime: "MITanime", vidfast: "VidFast",
  vidlink_anim: "VidLink", animekai: "AnimeKai",
  animepahe: "AnimePahe", shahiid: "Shahiid", animelek: "Animelek",
  animedar: "Animedar", okanime: "OkAnime", ristoanime: "RistoAnime",
  animeify: "AnimeIfy", animeday: "AnimeDay", arabseed: "ArabSeed",
  anime4up2: "Anime4Up", mycima: "MyCima", topcinemaa: "TopCinema",
  faselhd_db: "FaselHD", animetime: "AnimeTime",
  notorrent: "Notorrent", sanime: "SAnime", anipm: "AniPm", anslayer: "AnimeSlayer",
  akwam: "Akwam",
};
function getSiteTag(site: string): string {
  return SITE_TAG[site] || site.slice(0, 2).toUpperCase();
}

/* ── وصف قصير لكل مصدر في شبكة الاختيار (يطابق نظام الويب) ── */
const SITE_DESC: Record<string, string> = {
  kawaii: "1080p · مباشر", animewitcher: "PD/ST · مباشر",
  dulo_anim: "ياباني/إنجليزي · HLS مباشر",
  vidlink_anim: "ياباني مترجم · مباشر",
  mitanime: "ياباني مترجم · مباشر", vidfast: "TMDB · HLS · متعدد الخوادم",
  anikototv: "ياباني مترجم · skip مدمج", animekai: "ياباني مترجم · DB مباشر",
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
};
function getSiteDesc(site: string): string {
  return SITE_DESC[site] || "";
}

/* مصادر محظورة في Nova Mobile — لا تُجلب ولا تُعرض حتى لو جاءت من كاش قديم. */
const BLOCKED_SOURCE_SITES = new Set(["anikoto", "anineko", "hianime", "ak", "an", "hi"]);
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
  const name = (s.label || s.name || s.quality || "").toLowerCase();
  if (name.includes("1080") || name.includes("fhd")) return "1080p FHD";
  if (name.includes("720")  || name.includes("hd"))  return "720p HD";
  if (name.includes("360")  || name.includes("sd"))  return "360p SD";
  if (rank >= 13) return "1080p FHD";
  if (rank >= 9)  return "720p HD";
  return "360p SD";
}
function isDirectPlayable(s: Src): boolean {
  if (s.isEmbed) return false;
  const url = (s.directUrl || s.url || "").toLowerCase();
  if (!url) return false;
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
  return s.directUrl || s.url || "";
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
function ensureVpsProxy(url: string, headers: Record<string, string> | undefined, base: string): string {
  if (!url) return url;
  // بالفعل proxy عبر VPS
  if (url.includes("/api/anime/") || url.includes("/api/animation/")) return url;
  // روابط embed (mega / vidmoly) — لا نلفّها
  if (url.includes("mega.nz") || url.includes("mega.co.nz")) return url;
  if (url.includes("mp4upload")) return url;
  // LookMovie CDN — يعمل مباشرة من IP سكني مع Referer؛ يحجب VPS/datacenter
  if (url.includes("lookmovie.")) return url;
  const ref = headers?.Referer || "";
  const isHls = /\.(m3u8)(\?|$)|\/hls\/|\/playlist\//i.test(url);
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

/* ── مصادر تُشغَّل native مباشرةً عبر RiftPlayer (seg-proxy يُعيد روابط مطلقة الآن) ── */

/* ── أولويات المصادر: KW → AW → AF → SA → rest ── */
const SITE_PRIORITY: Record<string, number> = {
  kawaii: 100, animewitcher: 90,
  animeify: 85, sanime: 80,
  dulo_anim: 70, vidlink_anim: 55,
  vidfast: 35,
  anikototv: 30, animekai: 25, animepahe: 20, anipm: 18,
  sanime: 15,
};

/* ── قائمة المصادر (KW أولاً — الأولوية القصوى للتشغيل الفوري) ── */
/* ── Picker ثابت: جودة → مصادر (تظهر فوراً دون أي جلب مسبق) ── */
type QualityKey = "1080p" | "720p" | "480p";

const STATIC_PICKER: Record<QualityKey, { site: string; name: string; tag: string }[]> = {
  "1080p": [
    { site: "kawaii",       name: "كواي أنمي",   tag: "KW" },
    { site: "animewitcher", name: "AnimeWitcher", tag: "AW" },
    { site: "sanime",       name: "سـAnime",      tag: "SA" },
    { site: "animeify",     name: "أنمي فاي",    tag: "AF" },
    { site: "anifox",       name: "ANIFOX",      tag: "FX" },
  ],
  "720p": [
    { site: "animewitcher", name: "AnimeWitcher", tag: "AW" },
    { site: "sanime",       name: "سـAnime",      tag: "SA" },
    { site: "animeify",     name: "أنمي فاي",    tag: "AF" },
    { site: "anifox",       name: "ANIFOX",      tag: "FX" },
  ],
  "480p": [
    { site: "animewitcher", name: "AnimeWitcher", tag: "AW" },
    { site: "animeify",     name: "أنمي فاي",    tag: "AF" },
    { site: "anifox",       name: "ANIFOX",      tag: "FX" },
  ],
};

const Q_KEYS: QualityKey[] = ["1080p", "720p", "480p"];
const Q_KEY_LABEL: Record<QualityKey, string> = {
  "1080p": "1080p",
  "720p":  "720p",
  "480p":  "480p",
};
const Q_KEY_SUB: Record<QualityKey, string> = {
  "1080p": "دقة كاملة",
  "720p":  "دقة عالية",
  "480p":  "دقة متوسطة",
};

/* timeout موحّد افتراضي */
const SITE_TIMEOUT_MS = 28_000;
const SITE_TIMEOUT_MAP: Record<string, number> = {
  anifox:       35_000,
  animewitcher: 38_000,
  animeify:     22_000,
  sanime:       18_000,
  kawaii:       15_000,
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
  const hasSub = !!src.subtitleUrl;

  return (
    <Pressable onPress={() => onPlay(src)} style={d.srcRow}>
      <View style={[d.srcIcon, { backgroundColor: qs.badge, borderColor: qs.border }]}>
        <Ionicons name="play-circle" size={11} color={qs.text} />
      </View>
      <View style={{ flex: 1, minWidth: 0 }}>
        <Text style={d.srcNum}>
          السيرفر <Text style={d.srcTagInline}>{tag}</Text>
        </Text>
        {hasSub && (
          <View style={d.srcSubBadge}><Text style={d.srcSubText}>ترجمة</Text></View>
        )}
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
    site: singleSiteParam, anslayerId, single,
  } = useLocalSearchParams<{
    anime: string; ep: string; title: string; english: string;
    format?: string; etitle?: string; totalEps?: string;
    year?: string; episodes?: string; native?: string; titleAr?: string;
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
  /* الجودة المختارة في الـ picker */
  const [selQuality,  setSelQuality]  = useState<QualityKey>("1080p");

  const abortRef          = useRef<AbortController | null>(null);
  /* siteCtrls: نتتبع AbortController لكل موقع جارٍ جلبه — لضمان إلغاء كل الطلبات عند الخروج */
  const siteCtrls         = useRef<Map<string, AbortController>>(new Map());
  const seenKeys          = useRef(new Set<string>());
  const lastTimeRef       = useRef(0);
  const lastHistoryWriteRef = useRef(0);
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
    secureFetch(`${base}/api/anime/translate?text=${encodeURIComponent(raw)}&from=en&to=ar`)
      .then(r => r.ok ? r.json() : null)
      .then((d: any) => { if (!isMountedRef.current) return; if (d?.translated) setArEpTitle(d.translated); })
      .catch(() => {});
  }, [etitle]); // eslint-disable-line

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

  /* ── Parallel per-source HTTP fetch (يحل محل SSE تماماً) ── */
  /* ── Cleanup: إلغاء كل طلبات الجلب الجارية عند تغيير الحلقة أو إلغاء mount ── */
  useEffect(() => {
    return () => {
      abortRef.current?.abort();
      /* إلغاء جميع controllers للمواقع الجارية — يمنع تسرب الذاكرة عند التنقل السريع */
      siteCtrls.current.forEach(c => c.abort());
      siteCtrls.current.clear();
    };
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [anime, epNum]);

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
  function goEp(n: number, _auto = false) {
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
    router.replace(`/watch?anime=${anime}&ep=${n}&title=${encodeURIComponent(titleStr)}&english=${encodeURIComponent(englishStr)}&format=${encodeURIComponent(format || "")}${coverParam}${arParam}`);
  }

  /* ── إعادة تعيين حالة المصادر (زر تحديث) — مسح الأخطاء للسماح بالمحاولة مجدداً ── */
  function refreshAllSources() {
    abortRef.current?.abort();
    ++fetchEpochRef.current;
    setSources([]);
    seenKeys.current.clear();
    inFlightSitesRef.current.clear();
    fetchedSitesRef.current.clear();
    setSlotStatus({});
  }

  /* ── Play a source ── */
  const playSrc = useCallback((src: Src) => {
    const thumb = coverUrl || (anime ? `https://img.anili.st/media/${anime}` : "");
    if (anime) addToHistory({ animeId: parseInt(anime), ep: epNum, title: titleStr, english: englishStr, thumbnail: thumb, updatedAt: Date.now() });

    setPlayingSrc(src);
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
  }, [anime, epNum, titleStr, englishStr, coverUrl]); // eslint-disable-line

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
  const handlePickSite = useCallback(async (site: string) => {
    if (BLOCKED_SOURCE_SITES.has(site.toLowerCase())) return;
    /* منع الضغط المزدوج أثناء الجلب — يسمح بإعادة المحاولة بعد الفشل */
    if (inFlightSitesRef.current.has(site)) return;
    /* إذا نجح سابقاً → شغّل أفضل مصدر متاح منه مباشرة */
    if (fetchedSitesRef.current.has(site)) {
      const cached = sources.filter(s => s.site === site);
      const best = cached.find(isDirectPlayable) ?? cached[0];
      if (best) { playSrc(best); return; }
    }

    inFlightSitesRef.current.add(site);
    setSlotStatus(prev => ({ ...prev, [site]: "fetching" }));

    const base = getBaseUrl();
    const qs = new URLSearchParams({
      anime: anime || "0", ep: String(epNum), title: titleStr,
      english: englishStr, format: format || "",
      year: year || "", episodes: episodes || "", native: native || "",
    });
    if (titleArStr) qs.set("titleAr", titleArStr);
    if (site === "anslayer" && anslayerId) qs.set("anslayerId", anslayerId);

    try {
      await warmAuthToken();
      const siteCtrl = new AbortController();
      /* تسجيل الـ controller لضمان إلغائه عند الخروج من الشاشة */
      siteCtrls.current.set(site, siteCtrl);
      const timeout = SITE_TIMEOUT_MAP[site] ?? SITE_TIMEOUT_MS;
      const tid = setTimeout(() => siteCtrl.abort(), timeout);
      const res = await secureFetch(`${base}/api/anime/fetch-source?site=${site}&${qs}`, { signal: siteCtrl.signal });
      clearTimeout(tid);

      if (!res.ok || !isMountedRef.current) throw new Error("fetch failed");
      const data = await res.json();
      const rawSrcs: Src[] = data.sources || [];

      if (!rawSrcs.length) { setSlotStatus(prev => ({ ...prev, [site]: "failed" })); return; }

      const newSrcs = rawSrcs
        .map((s): Src => ({ ...s, site: s.site || site, directUrl: resolveUrl(s.directUrl, base), url: resolveUrl(s.url, base) }))
        .filter(s => !isBlockedSource(s))
        .filter(s => !(s.isEmbed && s.url && (s.url.includes("mega.nz") || s.url.includes("mega.co.nz"))))
        .filter(s => { const k = getPlayUrl(s); if (!k || seenKeys.current.has(k)) return false; seenKeys.current.add(k); return true; });

      if (!newSrcs.length) { setSlotStatus(prev => ({ ...prev, [site]: "failed" })); return; }

      fetchedSitesRef.current.add(site);
      setSlotStatus(prev => ({ ...prev, [site]: "ready" }));
      setSources(prev => [...prev.filter(s => s.site !== site), ...newSrcs]);

      /* شغّل فوراً عند النجاح */
      const best = newSrcs.find(isDirectPlayable) ?? newSrcs[0];
      if (best) playSrc(best);

    } catch {
      if (isMountedRef.current) setSlotStatus(prev => ({ ...prev, [site]: "failed" }));
      fetchedSitesRef.current.delete(site); // يسمح بإعادة المحاولة
    } finally {
      inFlightSitesRef.current.delete(site);
      siteCtrls.current.delete(site); // تنظيف الـ controller بعد انتهاء الطلب
    }
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [anime, epNum, titleStr, englishStr, titleArStr, format, year, episodes, native, playSrc, anslayerId, sources]);

  /* ── Handle back ── */
  const handleBack = useCallback(() => {
    if (screen === "native" || screen === "embed") {
      saveProgress();
      setScreen("picker");
      return;
    }
    saveProgress();
    if (router.canGoBack()) router.back();
    else router.replace(`/episodes/${anime}` as any);
  }, [screen, anime, router, saveProgress]);

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
    return { directSrcs: direct, embedSrcs: embeds };
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
      const url = ensureVpsProxy(rawUrl, headers, base);
      return {
        url,
        headers,
        label: `سيرفر · ${getSiteTag(s.site || "")}`,
        quality: getSrcQuality(s),
        subtitleUrl: s.subtitleUrl ? resolveUrl(s.subtitleUrl, base) : globalSubUrl,
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

  /* ── Grouped by quality for picker ── */
  const grouped = useMemo<Record<Quality, Src[]>>(() => ({
    "1080p FHD": directSrcs.filter(s => getSrcQuality(s) === "1080p FHD"),
    "720p HD":   directSrcs.filter(s => getSrcQuality(s) === "720p HD"),
    "360p SD":   directSrcs.filter(s => getSrcQuality(s) === "360p SD"),
  }), [directSrcs]);

  /* ── loading: صحيح عندما يكون أي موقع قيد الجلب ── */
  const loading = Object.values(slotStatus).some(s => s === "fetching");

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
    const _playFinal = ensureVpsProxy(_playRaw, _playHeaders, getBaseUrl());
    const startIdx = Math.max(0, playerSources.findIndex(s => playingSrc && s.url === _playFinal));
    return (
      <RiftPlayer
        sources={playerSources}
        initialSourceIndex={startIdx}
        title={displayTitle}
        episode={epNum}
        anilistId={anime ? parseInt(anime) : undefined}
        episodeTitle={arEpTitle ?? (etitle ? decodeURIComponent(etitle) : undefined)}
        initialPosition={resumeTime}
        totalEps={totalEpsCount}
        onBack={() => { saveProgress(); setScreen("picker"); }}
        onError={() => {
          /* جميع مصادر المشغّل فشلت → العودة للـ picker */
          console.warn("[Anime Watch] جميع المصادر فشلت — العودة للـ picker");
          saveProgress();
          /* ⚠️ احذف كاش المصادر التالفة — يمنع تكرار الكراش عند فتح الحلقة مجدداً */
          if (srcCacheKey) AsyncStorage.removeItem(srcCacheKey).catch(() => {});
          inFlightSitesRef.current.clear();
          fetchedSitesRef.current.clear();
          /* ⚠️ لا نستدعي abortRef.current?.abort() — الطلبات الجارية لمواقع أخرى
             تستمر وتُضيف مصادر للـ picker حتى يجد المستخدم بديلاً يعمل */
          setSources([]);
          seenKeys.current.clear();
          setSlotStatus({});
          setScreen("picker");
        }}
        onProgress={(pos, dur) => {
          lastTimeRef.current = pos;
          if (pos > 10) AsyncStorage.setItem(progressKey, String(Math.floor(pos))).catch(() => { });
          // throttle: write watch-history at most once every 30s (not on every progress tick)
          const now = Date.now();
          if (dur > 0 && anime && now - lastHistoryWriteRef.current > 30_000) {
            lastHistoryWriteRef.current = now;
            addToHistory({ animeId: parseInt(anime), ep: epNum, title: titleStr, english: englishStr, thumbnail: coverUrl || (anime ? `https://img.anili.st/media/${anime}` : ""), position: pos, duration: dur, updatedAt: now });
          }
        }}
        onNextEpisode={() => goEp(epNum + 1, true)}
        onPrevEpisode={epNum > 1 ? () => goEp(epNum - 1) : undefined}
        onEpisodeSelect={(n) => goEp(n)}
      />
    );
  }

  /* ══════════════ RESOLVING (WebView مخفي — لا يُعرض للمستخدم) ══════════════ */
  if (screen === "resolving" && playingSrc) {
    const resolveUrl2 = getPlayUrl(playingSrc);
    return (
      <View style={{ flex: 1, backgroundColor: "#07070d", alignItems: "center", justifyContent: "center", gap: 14 }}>
        <Pressable onPress={() => { setScreen("picker"); }} style={[d.playerBackBtn, { position: "absolute", top: topPad + 4, right: 12 }]}>
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
          <Pressable onPress={() => setScreen("picker")} style={[d.playerBackBtn, { position: "absolute", top: topPad + 4, right: 12 }]}>
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
        <Pressable onPress={() => { saveProgress(); setScreen("picker"); }} style={[d.playerBackBtn, { position: "absolute", top: topPad + 4, right: 12 }]}>
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
              {loading && (
                <View style={[d.infoEpBadge, { backgroundColor: "rgba(139,92,246,0.08)", borderColor: "rgba(139,92,246,0.18)" }]}>
                  <SpinRing size={12} />
                  <Text style={[d.infoEpText, { color: "rgba(196,181,253,0.7)" }]}>جاري الجلب…</Text>
                </View>
              )}
            </View>
          </View>
        </View>

        {/* ── تبويبات الجودة ── */}
        <View style={{ flexDirection: "row", gap: 8 }}>
          {Q_KEYS.map(qk => {
            const isActive = selQuality === qk;
            return (
              <Pressable key={qk} onPress={() => setSelQuality(qk)}
                style={{ flex: 1, alignItems: "center", paddingVertical: 10, borderRadius: 14, borderWidth: 1,
                  backgroundColor: isActive ? "rgba(109,40,217,0.25)" : "rgba(255,255,255,0.04)",
                  borderColor: isActive ? "rgba(139,92,246,0.55)" : "rgba(255,255,255,0.09)" }}>
                <Text style={{ fontSize: 13, fontFamily: "Cairo_800ExtraBold",
                  color: isActive ? "#c4b5fd" : "rgba(255,255,255,0.50)" }}>
                  {Q_KEY_LABEL[qk]}
                </Text>
                <Text style={{ fontSize: 9, fontFamily: "Cairo_400Regular", marginTop: 2,
                  color: isActive ? "rgba(196,181,253,0.50)" : "rgba(255,255,255,0.22)" }}>
                  {Q_KEY_SUB[qk]}
                </Text>
              </Pressable>
            );
          })}
        </View>

        {/* ── بطاقات المصادر للجودة المختارة ── */}
        <View style={d.siteSelectorCard}>
          <View style={d.siteSelectorHeader}>
            <Ionicons name="server-outline" size={12} color="#a78bfa" />
            <Text style={d.siteSelectorTitle}>اختر مصدراً — يبدأ التشغيل فوراً</Text>
          </View>
          <View style={d.siteList}>
            {(STATIC_PICKER[selQuality] || []).map((slot, idx) => {
              const status = slotStatus[slot.site] || "idle";
              const isFetching = status === "fetching";
              const isFailed   = status === "failed";
              const isReady    = status === "ready";
              return (
                <Pressable key={slot.site} onPress={() => handlePickSite(slot.site)}
                  style={({ pressed }) => [
                    d.siteRow,
                    idx < (STATIC_PICKER[selQuality] || []).length - 1 && d.siteRowBorder,
                    isFailed   && { backgroundColor: "rgba(239,68,68,0.04)" },
                    isReady    && { backgroundColor: "rgba(34,197,94,0.05)" },
                    isFetching && { backgroundColor: "rgba(139,92,246,0.06)" },
                    pressed    && { opacity: 0.75 },
                  ]}>
                  {/* Status indicator */}
                  <View style={d.siteRowDot}>
                    {isFetching ? (
                      <SpinRing size={14} />
                    ) : (
                      <View style={[d.siteRowDotInner, {
                        backgroundColor: isReady ? "#22c55e" : isFailed ? "rgba(239,68,68,0.50)" : "rgba(255,255,255,0.18)",
                        boxShadow: isReady ? "0 0 6px rgba(34,197,94,0.55)" : undefined,
                      } as any]} />
                    )}
                  </View>
                  {/* Name: "السيرفر KW" */}
                  <Text style={[d.siteRowName,
                    isReady  && { color: "rgba(255,255,255,0.90)" },
                    isFailed && { color: "rgba(255,255,255,0.25)" },
                  ]} numberOfLines={1}>
                    السيرفر <Text style={d.siteRowTag}>{slot.tag}</Text>
                  </Text>
                  {/* Action button */}
                  {isReady ? (
                    <View style={d.siteRowPlayBtn}>
                      <Ionicons name="play" size={9} color="#fff" />
                      <Text style={d.siteRowPlayText}>تشغيل</Text>
                    </View>
                  ) : isFetching ? null : (
                    <View style={[d.siteRowSelectBtn, isFailed && d.siteRowRetryBtn]}>
                      <Text style={[d.siteRowSelectText, isFailed && { color: "rgba(248,113,113,0.80)" }]}>
                        {isFailed ? "إعادة" : "اختيار"}
                      </Text>
                    </View>
                  )}
                </Pressable>
              );
            })}
          </View>
        </View>

        {/* ── مصادر جاهزة (بعد الجلب) — يظهر زر تشغيل مباشر لكل مصدر ── */}
        {directSrcs.length > 0 && (
          <View style={d.tierSection}>
            <View style={d.tierHeader}>
              <View style={[d.tierDot, { backgroundColor: "#34d399" }]} />
              <Text style={[d.tierTitle, { color: "rgba(134,239,172,0.80)" }]}>مصادر جاهزة للتشغيل</Text>
              <View style={[d.tierCount, { backgroundColor: "rgba(52,211,153,0.09)", borderColor: "rgba(52,211,153,0.24)" }]}>
                <Text style={[d.tierCountText, { color: "rgba(110,231,183,0.92)" }]}>{directSrcs.length}</Text>
              </View>
            </View>
            <View style={d.srcSection}>
              {directSrcs.map((src, i) => (
                <SrcRow key={i} src={src} idx={i} onPlay={playSrc} />
              ))}
            </View>
          </View>
        )}

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
});
