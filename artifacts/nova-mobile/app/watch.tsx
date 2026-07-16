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
const WEBVIEW_RESOLVE_SITES = new Set(["animelek", "animedar", "animephoenix", "anime3rb", "ristoanime", "faselhd_db", "witanime", "witanime_db", "mycima"]);
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
  anime4up2: "4U", mycima: "MC", topcinemaa: "TC", animephoenix: "PH",
  animewitcher: "AW", kawaii: "KW",
  anikoto: "AK", anikototv: "ATV", animekai: "KI", hianime: "HI",
  anineko: "AN", mitanime: "MT",
  vidlink_anim: "VL", vidfast: "VF",
  animetime: "AT", animepahe: "AP", dulo_anim: "DL",
  faselhd_db: "FH", witanime: "WI", witanime_db: "WD",
  notorrent: "NO", sanime: "SA", anipm: "PM", anslayer: "AS",
  anime3rb: "A3", akwam: "AQ",
};

/* ── اسم عرض لكل موقع في منتقي المصادر ── */
const SITE_LABEL: Record<string, string> = {
  kawaii: "Kawaii", hianime: "HiAnime", animewitcher: "AnimeWitcher",
  dulo_anim: "Dulo", anineko: "Anineko", anikoto: "AniKoto",
  anikototv: "AniKotoTV", mitanime: "MITanime", vidfast: "VidFast",
  vidlink_anim: "VidLink", animekai: "AnimeKai",
  animepahe: "AnimePahe", shahiid: "Shahiid", animelek: "Animelek",
  animedar: "Animedar", okanime: "OkAnime", ristoanime: "RistoAnime",
  animeify: "AnimeIfy", animeday: "AnimeDay", arabseed: "ArabSeed",
  anime4up2: "Anime4Up", mycima: "MyCima", topcinemaa: "TopCinema",
  animephoenix: "AnimePhoenix", faselhd_db: "FaselHD", animetime: "AnimeTime",
  witanime: "WITanime", witanime_db: "WIT مدبلج",
  notorrent: "Notorrent", sanime: "SAnime", anipm: "AniPm", anslayer: "AnimeSlayer",
  anime3rb: "Anime3rb", akwam: "Akwam",
};
function getSiteTag(site: string): string {
  return SITE_TAG[site] || site.slice(0, 2).toUpperCase();
}

/* ── وصف قصير لكل مصدر في شبكة الاختيار (يطابق نظام الويب) ── */
const SITE_DESC: Record<string, string> = {
  kawaii: "1080p · مباشر", animewitcher: "PD/ST · مباشر",
  hianime: "ياباني مترجم · HLS نظيف", dulo_anim: "ياباني/إنجليزي · HLS مباشر",
  vidlink_anim: "ياباني مترجم · مباشر",
  anineko: "ياباني مترجم · HLS", anikoto: "ياباني مترجم · 1080p",
  mitanime: "ياباني مترجم · مباشر", vidfast: "TMDB · HLS · متعدد الخوادم",
  anikototv: "ياباني مترجم · skip مدمج", animekai: "ياباني مترجم · DB مباشر",
  animepahe: "ياباني مترجم · HLS نظيف", anipm: "ياباني مترجم · 37 سيرفر/حلقة",
  shahiid: "عربي مدبلج / مترجم", animelek: "عربي مدبلج / مترجم",
  animedar: "عربي مترجم", okanime: "عربي مترجم",
  ristoanime: "عربي مترجم · MP4 مباشر", animeify: "عربي · ميغا",
  animeday: "عربي مدبلج · HLS مباشر", arabseed: "عربي مدبلج/مترجم · MP4",
  anime4up2: "عربي مترجم · HLS/ميغا", mycima: "عربي مترجم · HLS/فيديو",
  topcinemaa: "عربي مترجم · HLS/فيديو", animephoenix: "عربي مترجم · مباشر",
  faselhd_db: "عربي مترجم · GitHub DB", animetime: "عربي مترجم · مباشر",
  witanime: "عربي مترجم · CycleTLS", witanime_db: "عربي مدبلج · WP",
  notorrent: "IMDB · مصادر متعددة", sanime: "عربي مدبلج/مترجم · MP4",
  anslayer: "مشغلات خارجية · MixDrop/MediaFire",
  anime3rb: "عربي مترجم · embed مباشر", akwam: "عربي مترجم · MP4 مباشر",
};
function getSiteDesc(site: string): string {
  return SITE_DESC[site] || "";
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

/* ── أولويات المصادر: KW → HI → AW → DU → rest ── */
const SITE_PRIORITY: Record<string, number> = {
  kawaii: 100, hianime: 95, animewitcher: 90,
  dulo_anim: 70, vidlink_anim: 55,
  anineko: 50, mitanime: 45, anikoto: 40, vidfast: 35,
  anikototv: 30, animekai: 25, animepahe: 20, anipm: 18,
  witanime: 12,
};

/* ── قائمة المصادر (KW أولاً — الأولوية القصوى للتشغيل الفوري) ── */
/* مصادر موحَّدة مع الويب — نفس المصادر الـ 8 المفعَّلة في SCRAPER_DEFS */
const ANIME_SITES = [
  "kawaii", "anikoto", "hianime", "animewitcher",
  "anineko", "anslayer", "animeify", "allmanga",
] as const;

/* timeout موحّد افتراضي — يُستبدل بـ SITE_TIMEOUT_MAP للمواقع التي تحتاج وقتاً أطول */
const SITE_TIMEOUT_MS = 28_000;

/* timeout مُخصَّص لكل موقع — يجب أن يكون >= timeout الباكند + هامش
   وإلا يُقتل الطلب قبل أن يرد الباكند (سبب اختفاء المصادر في cache البارد) */
const SITE_TIMEOUT_MAP: Partial<Record<typeof ANIME_SITES[number], number>> = {
  animekai:     46_000,  // backend = 40s + 6s هامش
  animewitcher: 32_000,  // backend = 28s + 4s هامش
  cinesrc_anim: 38_000,  // backend = 35s + 3s هامش
  mycima:       34_000,  // backend = 30s + 4s هامش
  anime4up2:    28_000,  // backend = 25s + 3s هامش
  anikototv:    28_000,  // backend = 25s + 3s هامش
  hianime:      26_000,  // backend = 22s + 4s هامش
  anipm:        24_000,  // backend = 20s + 4s هامش
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

/* ── Source row: "Server N · KW" ── */
function SrcRow({ src, idx, onPlay }: { src: Src; idx: number; onPlay: (s: Src) => void }) {
  const q = getSrcQuality(src);
  const qs = QUALITY_STYLE[q];
  const tag = getSiteTag(src.site || "");
  const isHls = (src.directUrl || src.url || "").includes("hls-proxy") || src.directType === "hls";
  const hasSub = !!src.subtitleUrl;

  return (
    <Pressable onPress={() => onPlay(src)} style={d.srcRow}>
      <View style={[d.srcIcon, { backgroundColor: qs.badge, borderColor: qs.border }]}>
        <Ionicons name="play-circle" size={11} color={qs.text} />
      </View>
      <View style={{ flex: 1, minWidth: 0 }}>
        <View style={{ flexDirection: "row", alignItems: "center", gap: 6, flexWrap: "wrap" }}>
          <Text style={d.srcNum}>سيرفر {idx + 1}</Text>
          <View style={d.srcTag}><Text style={d.srcTagText}>{tag}</Text></View>
          {hasSub && <View style={d.srcSubBadge}><Text style={d.srcSubText}>ترجمة</Text></View>}
        </View>
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
  const [screen,      setScreen]      = useState<Screen>("picker"); // يبدأ بـ picker مباشرة — المستخدم يختار المصدر
  const [sources,     setSources]     = useState<Src[]>([]);
  const [loading,     setLoading]     = useState(false);
  const [playingSrc,  setPlayingSrc]  = useState<Src | null>(null);
  const [resumeTime,  setResumeTime]  = useState(0);
  const [resolveFailed, setResolveFailed] = useState(false); // آخر محاولة WebView مخفي فشلت → نعرض بطاقة "يحتاج تطبيق أصلي"
  const [globalSubUrl, setGlobalSubUrl] = useState<string | undefined>();
  const [arEpTitle,   setArEpTitle]   = useState<string | undefined>();
  /* slotStatus: حالة كل مصدر في المنتقي */
  const [slotStatus,  setSlotStatus]  = useState<Record<string, "idle" | "fetching" | "ready" | "failed">>({});

  const abortRef          = useRef<AbortController | null>(null);
  const seenKeys          = useRef(new Set<string>());
  const lastTimeRef       = useRef(0);
  const autoPlayFiredRef  = useRef(false);
  const hasCachedRef      = useRef(false);
  const isMountedRef      = useRef(true);
  const fetchEpochRef     = useRef(0);
  const autoPlayTimerRef  = useRef<ReturnType<typeof setTimeout> | null>(null);
  const inFlightSitesRef  = useRef<Set<string>>(new Set());
  const fetchedSitesRef   = useRef<Set<string>>(new Set()); // يمنع إعادة جلب نفس المصدر مرتين (فقط الناجحة)
  const bgTimersRef       = useRef<ReturnType<typeof setTimeout>[]>([]); // background-load timers للإلغاء عند تغيير الحلقة
  /* true بعد جدولة موجة "تحميل كل المصادر" عند فتح الشاشة — يمنع handlePickSite من
     جدولة موجة ثانية مكرّرة عند نجاح أول مصدر (نفس منطق autoFetchAllRef في نظام الويب) */
  const autoFetchAllRef   = useRef(false);

  /* ── ترجمة عنوان الحلقة من الإنجليزية للعربية ── */
  useEffect(() => {
    if (!etitle) return;
    const raw = decodeURIComponent(etitle);
    if (!raw || /[\u0600-\u06FF]/.test(raw)) { setArEpTitle(raw); return; }
    const base = getBaseUrl();
    secureFetch(`${base}/api/anime/translate?text=${encodeURIComponent(raw)}&from=en&to=ar`)
      .then(r => r.ok ? r.json() : null)
      .then((d: any) => { if (d?.translated) setArEpTitle(d.translated); })
      .catch(() => {});
  }, [etitle]); // eslint-disable-line

  useEffect(() => {
    isMountedRef.current = true;
    return () => { isMountedRef.current = false; };
  }, []);

  const progressKey    = `progress-${anime}-${epNum}`;
  const srcCacheKey    = anime ? `anime-srcs-${anime}-e${epNum}` : null;
  const SRC_CACHE_TTL  = 5 * 60 * 1000; // 5 minutes

  /* ── Load resume time + cached sources ── */
  useEffect(() => {
    AsyncStorage.getItem(progressKey).then(v => { if (v) setResumeTime(parseFloat(v) || 0); });

    if (!srcCacheKey) return;
    AsyncStorage.getItem(srcCacheKey).then(raw => {
      if (!raw) return;
      try {
        const { sources: cached, ts }: { sources: Src[]; ts: number } = JSON.parse(raw);
        if (!cached?.length || Date.now() - ts > SRC_CACHE_TTL) return;
        const base = getBaseUrl();
        const resolved = cached.map(s => ({
          ...s,
          directUrl: resolveUrl(s.directUrl, base),
          url: resolveUrl(s.url, base),
        }));
        hasCachedRef.current = true;
        setSources(resolved);
        seenKeys.current = new Set(resolved.map(s => getPlayUrl(s)).filter(Boolean));
        setLoading(false);
        setScreen("picker");
      } catch { }
    }).catch(() => { });
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [progressKey, srcCacheKey]);

  /* ── Parallel per-source HTTP fetch (يحل محل SSE تماماً) ── */
  const fetchSources = useCallback(async () => {
    if (!anime) return;
    const myEpoch = ++fetchEpochRef.current;
    if (autoPlayTimerRef.current) { clearTimeout(autoPlayTimerRef.current); autoPlayTimerRef.current = null; }
    autoPlayFiredRef.current = false;
    setLoading(true);
    const hasCached = hasCachedRef.current;
    if (!hasCached) {
      setSources([]);
      seenKeys.current.clear();
      setScreen("loading");
    }

    abortRef.current?.abort();
    abortRef.current = new AbortController();
    const mainSignal = abortRef.current.signal;

    const base = getBaseUrl();
    const qs = new URLSearchParams({
      anime: anime || "0",
      ep: String(epNum),
      title: titleStr,
      english: englishStr,
      format: format || "",
      year: year || "",
      episodes: episodes || "",
      native: native || "",
    });

    const allFresh: Src[] = [];

    /* pre-warm التوكن مرة واحدة قبل الطلبات المتوازية —
       يمنع 20+ طلب token متوازٍ عند فتح الشاشة (السبب الجذري لـ 403 الجماعي) */
    await warmAuthToken();

    /* جلب مصدر واحد — يُستدعى بالتوازي لكل site */
    const fetchOneSite = async (site: string) => {
      /* مهلة مستقلة لكل مصدر مع ربطها بـ abort الرئيسي */
      const siteCtrl = new AbortController();
      const effectiveTimeout = SITE_TIMEOUT_MAP[site as keyof typeof SITE_TIMEOUT_MAP] ?? SITE_TIMEOUT_MS;
      const tid = setTimeout(() => siteCtrl.abort(), effectiveTimeout);
      const onMainAbort = () => siteCtrl.abort();
      mainSignal.addEventListener("abort", onMainAbort, { once: true });

      try {
        const res = await secureFetch(
          `${base}/api/anime/fetch-source?site=${site}&${qs}`,
          { signal: siteCtrl.signal }
        );
        clearTimeout(tid);
        mainSignal.removeEventListener("abort", onMainAbort);

        if (!res.ok || !isMountedRef.current || fetchEpochRef.current !== myEpoch) return;
        const data = await res.json();
        const rawSrcs: Src[] = data.sources || [];
        if (!rawSrcs.length) return;

        /* فلتر التكرار وإصلاح URLs النسبية */
        const newSrcs = rawSrcs
          .map((s): Src => ({
            ...s,
            site: s.site || site,
            directUrl: resolveUrl(s.directUrl, base),
            url: resolveUrl(s.url, base),
          }))
          .filter(s => {
            const key = getPlayUrl(s);
            if (!key || seenKeys.current.has(key)) return false;
            seenKeys.current.add(key);
            return true;
          });

        if (!newSrcs.length || !isMountedRef.current || fetchEpochRef.current !== myEpoch) return;
        allFresh.push(...newSrcs);

        setSources(prev => [...prev, ...newSrcs]);

        /* تشغيل تلقائي مباشر — يتجاوز صفحة الـ picker تماماً */
        if (!autoPlayFiredRef.current) {
          const good = newSrcs.find(isDirectPlayable);
          if (good) {
            /* الأولوية: KW → HI → AW → DU → أي مصدر مباشر */
            const pickBest = (pool: Src[]): Src => {
              const direct = pool.filter(isDirectPlayable);
              return (
                direct.find(s => s.site === "kawaii") ??
                direct.find(s => s.site === "hianime") ??
                direct.find(s => s.site === "animewitcher") ??
                direct.find(s => s.site === "dulo_anim") ??
                direct[0]
              ) || good;
            };
            /* تأخير 400ms — يمنح KW/HI/AW فرصة الوصول قبل الاختيار */
            const isHighPriority = ["kawaii", "hianime", "animewitcher"].includes(site);
            autoPlayTimerRef.current = setTimeout(() => {
              autoPlayTimerRef.current = null;
              if (!isMountedRef.current || autoPlayFiredRef.current || fetchEpochRef.current !== myEpoch) return;
              /* أعد جمع كل المصادر المتاحة حتى الآن */
              setSources(latest => {
                const best = pickBest(latest);
                if (isDirectPlayable(best)) {
                  autoPlayFiredRef.current = true;
                  setPlayingSrc(best);
                  setScreen("native");
                } else {
                  setScreen(s => s === "loading" ? "picker" : s);
                }
                return latest;
              });
            }, isHighPriority ? 0 : 400);
          } else {
            /* embed فقط — أظهر الـ picker */
            setScreen(s => s === "loading" ? "picker" : s);
          }
        }
      } catch (e: any) {
        clearTimeout(tid);
        mainSignal.removeEventListener("abort", onMainAbort);
        /* تجاهل AbortError — مصادر أخرى لا تزال تعمل */
      }
    };

    /* شغّل جميع المصادر بالتوازي الكامل */
    await Promise.allSettled(ANIME_SITES.map(site => fetchOneSite(site)));

    if (!isMountedRef.current) return;
    setLoading(false);
    setScreen(s => s === "loading" ? "picker" : s);

    /* احفظ الكاش من مجموع المصادر الناجحة */
    if (srcCacheKey && allFresh.length) {
      AsyncStorage.setItem(
        srcCacheKey,
        JSON.stringify({ sources: allFresh, ts: Date.now() })
      ).catch(() => {});
    }
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [anime, epNum, titleStr, englishStr, format, year, episodes, native, srcCacheKey]);

  /* ── لا تحميل تلقائي — المستخدم يختار المصدر بنفسه لتقليل الضغط على VPS ──
     الـ picker يظهر فوراً عند فتح الشاشة. عند الضغط على مصدر:
       handlePickSite(site, true) → يجلب ذلك المصدر → يُشغّل أول نتيجة → يُحمّل الباقي خلفياً. ── */

  /* ── Cleanup bgTimers on unmount/episode-change ── */
  useEffect(() => {
    return () => {
      bgTimersRef.current.forEach(clearTimeout);
      bgTimersRef.current = [];
    };
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [anime, ep]);

  /* ── 30-second hard timeout (only for "loading" screen — not used in lazy mode) ── */
  useEffect(() => {
    const t = setTimeout(() => { setScreen(s => s === "loading" ? "picker" : s); setLoading(false); }, 30000);
    return () => clearTimeout(t);
  }, [anime, ep]);

  /* ── Orientation lock ── */
  useEffect(() => {
    if (screen === "loading" || screen === "picker") {
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
  function goEp(n: number, auto = false) {
    saveProgress();
    setSources([]);
    seenKeys.current.clear();
    autoPlayFiredRef.current = false;
    inFlightSitesRef.current.clear();
    fetchedSitesRef.current.clear();
    /* إلغاء background timers من الحلقة السابقة — يمنع stale fetches */
    bgTimersRef.current.forEach(clearTimeout);
    bgTimersRef.current = [];
    setSlotStatus({});
    setScreen("picker");
    const coverParam = coverUrl ? `&cover=${encodeURIComponent(coverUrl)}` : "";
    const arParam    = titleArStr ? `&titleAr=${encodeURIComponent(titleArStr)}` : "";
    router.replace(`/watch?anime=${anime}&ep=${n}&title=${encodeURIComponent(titleStr)}&english=${encodeURIComponent(englishStr)}&format=${encodeURIComponent(format || "")}${coverParam}${arParam}${auto ? "&autoplay=1" : ""}`);
  }

  /* ── إعادة تحميل كل المصادر (زر تحديث) ── */
  function refreshAllSources() {
    bgTimersRef.current.forEach(clearTimeout);
    bgTimersRef.current = [];
    setSources([]);
    seenKeys.current.clear();
    autoPlayFiredRef.current = false;
    inFlightSitesRef.current.clear();
    fetchedSitesRef.current.clear();
    hasCachedRef.current = false;
    setSlotStatus({});
    setScreen("picker");
    /* تحميل كل المصادر الآن بالتوازي */
    ANIME_SITES.forEach((site, i) => {
      const tid = setTimeout(() => { handlePickSite(site, i === 0); }, i * 80);
      bgTimersRef.current.push(tid);
    });
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

  /* ── جلب مصدر واحد عند اختيار المستخدم ──
     autoPlayResult=true → يشغّل أول مصدر جاهز تلقائياً ثم يُحمّل الباقي خلفياً.
     autoPlayResult=false → تحميل خلفي فقط (يُضيف المصادر للـ picker). ── */
  const handlePickSite = useCallback(async (site: string, autoPlayResult = true) => {
    /* fetchedSitesRef يمنع re-fetch بعد إتمام الجلب (يحل stale-closure في setTimeout) */
    if (inFlightSitesRef.current.has(site) || fetchedSitesRef.current.has(site)) return;

    inFlightSitesRef.current.add(site);
    /* لا نضيف لـ fetchedSitesRef هنا — فقط نضيفه عند النجاح لنسمح بإعادة المحاولة عند الفشل */
    setSlotStatus(prev => ({ ...prev, [site]: "fetching" }));

    const base = getBaseUrl();
    const qs = new URLSearchParams({
      anime: anime || "0", ep: String(epNum), title: titleStr,
      english: englishStr, format: format || "",
      year: year || "", episodes: episodes || "", native: native || "",
    });
    /* anslayerId: يمرَّر من قسم "أحدث الحلقات" — معرّف anslayer المباشر من كتالوجه
       يتجاوز البحث بالاسم ويحدّد الأنمي الصحيح 100% (يطابق نظام الويب). */
    if (site === "anslayer" && anslayerId) qs.set("anslayerId", anslayerId);

    try {
      await warmAuthToken();
      const siteCtrl = new AbortController();
      const lazyTimeout = SITE_TIMEOUT_MAP[site as keyof typeof SITE_TIMEOUT_MAP] ?? SITE_TIMEOUT_MS;
      const tid = setTimeout(() => siteCtrl.abort(), lazyTimeout);
      const res = await secureFetch(`${base}/api/anime/fetch-source?site=${site}&${qs}`, { signal: siteCtrl.signal });
      clearTimeout(tid);

      if (!res.ok || !isMountedRef.current) throw new Error("fetch failed");
      const data = await res.json();
      const rawSrcs: Src[] = data.sources || [];

      if (!rawSrcs.length) {
        setSlotStatus(prev => ({ ...prev, [site]: "failed" }));
        return;
      }

      const newSrcs = rawSrcs
        .map((s): Src => ({ ...s, site: s.site || site, directUrl: resolveUrl(s.directUrl, base), url: resolveUrl(s.url, base) }))
        .filter(s => { const k = getPlayUrl(s); if (!k || seenKeys.current.has(k)) return false; seenKeys.current.add(k); return true; });

      if (newSrcs.length) {
        fetchedSitesRef.current.add(site); // ✓ نجح — امنع الإعادة
        setSlotStatus(prev => ({ ...prev, [site]: "ready" }));
        setSources(prev => [...prev, ...newSrcs]);
      } else {
        setSlotStatus(prev => ({ ...prev, [site]: "failed" }));
        // لا نضيف لـ fetchedSitesRef — يسمح بإعادة المحاولة يدوياً
      }

      /* كشط كسول: المصدر تحمَّل — المستخدم يختار الصف من القائمة ليُشغَّل */
    } catch {
      if (isMountedRef.current) setSlotStatus(prev => ({ ...prev, [site]: "failed" }));
      // لا نضيف لـ fetchedSitesRef عند الخطأ — يسمح بإعادة المحاولة
    } finally {
      inFlightSitesRef.current.delete(site);
    }
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [anime, epNum, titleStr, englishStr, format, year, episodes, native, playSrc, anslayerId]);

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
    const ARABIC_SITES = new Set(["shahiid","animelek","animedar","okanime","arabseed","animephoenix","animeify","animeday","mycima","topcinemaa","anime4up2","animewitcher","ristoanime","faselhd_db","animetime","witanime","witanime_db","sanime"]);
    return srcs.map(s => {
      const url = getPlayUrl(s);
      /* headers: استخدم الـ headers المُرسَلة من الخادم أولاً (Referer/Origin المباشرة)،
         ثم احسبها من رابط الـ proxy كـ fallback للإصدارات القديمة من الكاش */
      const headers = s.headers || extractProxyHeaders(url);
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
     بدون هذا، أي مصدر خلفي جديد يصل أثناء التشغيل (من موجة التحميل الكلي) يُعيد حساب
     riftSources بمصفوفة جديدة (ترتيب مختلف) → RiftPlayer يستقبل sources prop جديد
     أثناء التشغيل الفعلي مما يُسبِّب توقف/إعادة تعيين غير متوقعة والعودة لشاشة الـ picker. */
  useEffect(() => {
    if (screen === "native") {
      if (frozenSources.length === 0 && riftSources.length > 0) setFrozenSources(riftSources);
    } else {
      setFrozenSources([]);
    }
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [screen]);

  /* ── Grouped by quality for picker ── */
  const grouped = useMemo<Record<Quality, Src[]>>(() => ({
    "1080p FHD": directSrcs.filter(s => getSrcQuality(s) === "1080p FHD"),
    "720p HD":   directSrcs.filter(s => getSrcQuality(s) === "720p HD"),
    "360p SD":   directSrcs.filter(s => getSrcQuality(s) === "360p SD"),
  }), [directSrcs]);

  /* ══════════════ LOADING SCREEN ══════════════ */
  if (screen === "loading") {
    return (
      <View style={{ flex: 1, backgroundColor: "#07070d" }}>
        {coverUrl ? <Image source={{ uri: coverUrl }} style={[StyleSheet.absoluteFill, { opacity: 0.13 }]} blurRadius={Platform.OS === "ios" ? 28 : 10} resizeMode="cover" /> : null}
        <LinearGradient colors={["rgba(7,7,13,0.90)", "rgba(12,8,24,0.60)", "rgba(7,7,13,0.95)"]} style={StyleSheet.absoluteFill} />
        <Pressable onPress={handleBack} style={[d.ldBackBtn, { top: topPad + 4 }]}>
          <Ionicons name="chevron-forward" size={20} color="rgba(255,255,255,0.65)" />
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
  if (screen === "native" && playerSources.length > 0) {
    const startIdx = Math.max(0, playerSources.findIndex(s => playingSrc && s.url === getPlayUrl(playingSrc)));
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
          /* جميع مصادر المشغّل فشلت → العودة للـ picker حتى يرى المستخدم بقية المصادر */
          console.warn("[Anime Watch] جميع المصادر فشلت — العودة للـ picker");
          saveProgress();
          setScreen("picker");
        }}
        onProgress={(pos, dur) => {
          lastTimeRef.current = pos;
          if (pos > 10) AsyncStorage.setItem(progressKey, String(Math.floor(pos))).catch(() => { });
          if (dur > 0 && anime) addToHistory({ animeId: parseInt(anime), ep: epNum, title: titleStr, english: englishStr, thumbnail: coverUrl || (anime ? `https://img.anili.st/media/${anime}` : ""), position: pos, duration: dur, updatedAt: Date.now() });
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
          <Ionicons name="arrow-forward" size={18} color="#fff" />
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
            <Ionicons name="arrow-forward" size={18} color="#fff" />
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
          <Ionicons name="arrow-forward" size={18} color="#fff" />
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
  const allSrcs = [...directSrcs, ...embedSrcs];

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
            disabled={totalEpsCount !== undefined && epNum >= totalEpsCount}
            onPress={() => goEp(epNum + 1)}
            style={[d.epNavBtn, { borderColor: "rgba(139,92,246,0.35)", backgroundColor: "rgba(139,92,246,0.10)" },
              (totalEpsCount !== undefined && epNum >= totalEpsCount) && { opacity: 0.22 }]}>
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
          <Ionicons name="arrow-forward" size={17} color="rgba(255,255,255,0.75)" />
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
                  <Text style={[d.infoEpText, { color: "rgba(196,181,253,0.7)" }]}>جاري البحث عن مصادر...</Text>
                </View>
              )}
            </View>
          </View>
        </View>

        {/* ── Site selector: اختر مصدراً لبدء التشغيل ── */}
        {allSrcs.length === 0 && !loading && (
          <View style={d.siteSelectorCard}>
            <View style={d.siteSelectorHeader}>
              <Ionicons name="play-circle" size={16} color="#a78bfa" />
              <Text style={d.siteSelectorTitle}>اختر مصدراً للتشغيل</Text>
            </View>
            <View style={d.siteGrid}>
              {(ANIME_SITES as readonly string[]).map(site => {
                const st = slotStatus[site] || "idle";
                const isFetching = st === "fetching";
                const isFailed = st === "failed";
                return (
                  <Pressable
                    key={site}
                    style={[d.siteCard, isFailed && d.siteCardFailed]}
                    onPress={() => handlePickSite(site, true)}
                    disabled={isFetching}
                  >
                    <View style={d.siteCardTopRow}>
                      <View style={d.siteTagBadge}>
                        <Text style={d.siteTagText}>{getSiteTag(site)}</Text>
                      </View>
                      <Text style={d.siteCardName} numberOfLines={1}>{SITE_LABEL[site] || site}</Text>
                      {isFetching && <SpinRing size={14} />}
                      {st === "ready" && <Ionicons name="checkmark-circle" size={14} color="#34d399" />}
                      {isFailed && <Text style={d.siteCardFailedText}>فشل</Text>}
                    </View>
                    {!!getSiteDesc(site) && (
                      <Text style={d.siteCardDesc} numberOfLines={1}>{getSiteDesc(site)}</Text>
                    )}
                  </Pressable>
                );
              })}
            </View>
            <Pressable style={d.loadAllBtn} onPress={refreshAllSources}>
              <Ionicons name="flash" size={13} color="#c4b5fd" />
              <Text style={d.loadAllText}>تحميل كل المصادر</Text>
            </Pressable>
          </View>
        )}

        {/* ── Quality tiers ── */}
        {(["1080p FHD", "720p HD", "360p SD"] as Quality[]).map(q => {
          const srcs = grouped[q];
          if (!srcs.length) return null;
          const qs = QUALITY_STYLE[q];
          return (
            <View key={q} style={d.tierSection}>
              <View style={d.tierHeader}>
                <View style={[d.tierDot, { backgroundColor: qs.dot }]} />
                <Text style={[d.tierTitle, { color: qs.text }]}>{Q_LABEL[q]}</Text>
                <View style={[d.tierCount, { backgroundColor: qs.badge, borderColor: qs.border }]}>
                  <Text style={[d.tierCountText, { color: qs.text }]}>{srcs.length}</Text>
                </View>
              </View>
              <View style={d.srcSection}>
                {srcs.map((src, i) => (
                  <SrcRow key={i} src={src} idx={allSrcs.indexOf(src)} onPlay={playSrc} />
                ))}
              </View>
            </View>
          );
        })}

        {/* ── Embeds ── */}
        {embedSrcs.length > 0 && (
          <View style={d.tierSection}>
            <View style={d.tierHeader}>
              <View style={[d.tierDot, { backgroundColor: "#64748b" }]} />
              <Text style={[d.tierTitle, { color: "rgba(148,163,184,0.7)" }]}>سيرفرات احتياطية (مدمج)</Text>
            </View>
            <View style={d.srcSection}>
              {embedSrcs.map((src, i) => (
                <SrcRow key={`emb-${i}`} src={src} idx={directSrcs.length + i} onPlay={playSrc} />
              ))}
            </View>
          </View>
        )}


        {/* ── Loading indicator while more sources stream in ── */}
        {loading && allSrcs.length > 0 && (
          <View style={{ flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 8, paddingVertical: 12 }}>
            <SpinRing size={20} />
            <Text style={{ fontSize: 11, fontFamily: "Cairo_400Regular", color: "rgba(139,92,246,0.7)" }}>جاري البحث عن مصادر إضافية...</Text>
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
  srcNum:        { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.92)" },
  srcTag:        { backgroundColor: "rgba(139,92,246,0.18)", borderRadius: 6, paddingHorizontal: 6, paddingVertical: 2, borderWidth: 1, borderColor: "rgba(139,92,246,0.30)" },
  srcTagText:    { fontSize: 9, fontFamily: "Cairo_800ExtraBold", color: "rgba(196,181,253,0.90)", fontVariant: ["tabular-nums"] },
  srcSubBadge:   { backgroundColor: "rgba(34,197,94,0.12)", borderRadius: 5, paddingHorizontal: 5, paddingVertical: 1, borderWidth: 1, borderColor: "rgba(34,197,94,0.25)" },
  srcSubText:    { fontSize: 8, fontFamily: "Cairo_700Bold", color: "rgba(134,239,172,0.85)" },
  srcHlsBadge:   { backgroundColor: "rgba(99,102,241,0.12)", borderRadius: 5, paddingHorizontal: 5, paddingVertical: 1, borderWidth: 1, borderColor: "rgba(99,102,241,0.25)" },
  srcHlsText:    { fontSize: 8, fontFamily: "Cairo_700Bold", color: "rgba(165,180,252,0.85)" },
  srcRight:      { flexDirection: "row", alignItems: "center", gap: 6, flexShrink: 0 },
  srcQBadge:     { paddingHorizontal: 8, paddingVertical: 3, borderRadius: 7, borderWidth: 1 },
  srcQText:      { fontSize: 8, fontFamily: "Cairo_800ExtraBold" },
  srcPlayBtn:    { flexDirection: "row", alignItems: "center", gap: 4, paddingHorizontal: 10, paddingVertical: 7, borderRadius: 10, backgroundColor: "rgba(109,40,217,0.88)", borderWidth: 1, borderColor: "rgba(167,139,250,0.28)" },
  srcPlayText:   { fontSize: 10, fontFamily: "Cairo_800ExtraBold", color: "#fff" },

  /* Site selector */
  siteSelectorCard: { backgroundColor: "rgba(14,12,24,0.92)", borderRadius: 18, borderWidth: 1, borderColor: "rgba(139,92,246,0.18)", overflow: "hidden" },
  siteSelectorHeader: { flexDirection: "row", alignItems: "center", gap: 8, paddingHorizontal: 14, paddingVertical: 12, borderBottomWidth: StyleSheet.hairlineWidth, borderBottomColor: "rgba(255,255,255,0.07)" },
  siteSelectorTitle: { fontSize: 12, fontFamily: "Cairo_700Bold", color: "#a78bfa" },
  siteGrid:      { flexDirection: "row", flexWrap: "wrap", gap: 10, padding: 12 },
  siteCard:      { width: "47%", flexDirection: "column", alignItems: "flex-start", gap: 4, paddingHorizontal: 12, paddingVertical: 11, borderRadius: 16, backgroundColor: "rgba(255,255,255,0.04)", borderWidth: 1, borderColor: "rgba(255,255,255,0.09)" },
  siteCardFailed:{ backgroundColor: "rgba(239,68,68,0.07)", borderColor: "rgba(239,68,68,0.22)" },
  siteCardTopRow:{ flexDirection: "row-reverse", alignItems: "center", gap: 6, width: "100%" },
  siteTagBadge:  { paddingHorizontal: 6, paddingVertical: 2, borderRadius: 6, backgroundColor: "rgba(139,92,246,0.20)" },
  siteTagText:   { fontSize: 9, fontFamily: "Cairo_800ExtraBold", color: "rgba(196,181,253,0.9)" },
  siteCardName:  { flex: 1, fontSize: 11.5, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.8)", textAlign: "right" },
  siteCardFailedText: { fontSize: 9, fontFamily: "Cairo_700Bold", color: "rgba(248,113,113,0.7)" },
  siteCardDesc:  { fontSize: 9, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.25)", textAlign: "right", width: "100%" },
  loadAllBtn:    { flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 6, paddingVertical: 12, borderTopWidth: StyleSheet.hairlineWidth, borderTopColor: "rgba(255,255,255,0.07)" },
  loadAllText:   { fontSize: 11, fontFamily: "Cairo_700Bold", color: "#c4b5fd" },

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
