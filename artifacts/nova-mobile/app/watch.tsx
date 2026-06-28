import React, { useState, useEffect, useRef, useCallback, useMemo } from "react";
import {
  View, Text, Pressable, Image, ScrollView,
  StyleSheet, Platform, Animated, Easing, Linking,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import WebView from "react-native-webview";
import { useLocalSearchParams, useRouter } from "expo-router";
import { RiftPlayer, PlayerSource } from "@/components/RiftPlayer";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { useApp } from "@/context/AppContext";
import { getBaseUrl } from "@/utils/api";
import * as ScreenOrientation from "expo-screen-orientation";

/* ── Types ── */
type Quality    = "1080p FHD" | "720p HD" | "360p SD";
type Screen     = "picker" | "source-loading" | "quality-picker" | "native" | "embed";
type ScraperStat = "idle" | "loading" | "failed";

interface Src {
  url?: string; directUrl?: string; qualityRank?: number;
  label?: string; server?: string; quality?: string;
  site?: string; isEmbed?: boolean; subtitleUrl?: string;
  corsOk?: boolean; name?: string; directType?: string;
  skipIntro?: { start: number; end: number };
  skipOutro?: { start: number; end: number };
}

/* ── Japanese sources that benefit from smart subtitle ── */
const PROVIDER_WANTS_SMART_SUB = new Set([
  "hianime", "animepahe", "anineko", "mitanime", "reanime",
  "starcima_anim", "anikototv", "animekai",
]);

/* ── Scraper definitions (static list — shown immediately, no fetching) ── */
const SCRAPER_DEFS: { site: string; tag: string; name: string; desc: string; isEn?: boolean; isArabic?: boolean }[] = [
  { site: "shahiid",       tag: "SH",  name: "شاهيد أنمي",   desc: "عربي مدبلج / مترجم",      isArabic: true },
  { site: "animelek",      tag: "AL",  name: "أنمي ليك",     desc: "عربي مدبلج / مترجم",      isArabic: true },
  { site: "animedar",      tag: "AD",  name: "أنمي دار",     desc: "عربي مترجم",               isArabic: true },
  { site: "okanime",       tag: "OK",  name: "أوك أنمي",     desc: "عربي مترجم",               isArabic: true },
  { site: "ristoanime",    tag: "RS",  name: "ريستو أنمي",   desc: "عربي مترجم",               isArabic: true },
  { site: "animeify",      tag: "MG",  name: "أنمي فاي",     desc: "عربي · ميغا",              isArabic: true },
  { site: "animeday",      tag: "DY",  name: "أنمي داي",     desc: "عربي مدبلج · HLS مباشر",  isArabic: true },
  { site: "arabseed",      tag: "AS",  name: "عرب سيد",       desc: "عربي مدبلج/مترجم · MP4",  isArabic: true },
  { site: "anime4up2",     tag: "4U",  name: "أنمي فور أب",  desc: "عربي مترجم · HLS/ميغا",   isArabic: true },
  { site: "mycima",        tag: "MC",  name: "ماي سيما",      desc: "عربي مترجم · HLS",        isArabic: true },
  { site: "topcinemaa",    tag: "TC",  name: "توب سيما",      desc: "عربي مترجم · HLS",        isArabic: true },
  { site: "animephoenix",  tag: "PH",  name: "فينكس أنمي",   desc: "1080p · MKV مباشر",       isArabic: true },
  { site: "animewitcher",  tag: "AW",  name: "AnimeWitcher",  desc: "عربي / مترجم · مباشر",    isArabic: true },
  { site: "kawaii",        tag: "KW",  name: "كواي أنمي",    desc: "1080p · مباشر" },
  { site: "anikoto",       tag: "AK",  name: "AniKoto",       desc: "ياباني مترجم · 1080p" },
  { site: "hianime",       tag: "HI",  name: "HiAnime",       desc: "ياباني مترجم · HLS نظيف" },
  { site: "animekai",      tag: "KI",  name: "AnimeKai",      desc: "ياباني مترجم · مباشر" },
  { site: "anineko",       tag: "AN",  name: "AniNeko",       desc: "ياباني مترجم · HLS" },
  { site: "mitanime",      tag: "MT",  name: "ميتا أنمي",    desc: "ياباني مترجم" },
  { site: "videasy_anim",  tag: "VE",  name: "Videasy",       desc: "TMDB · ترجمة عربية",      isEn: true },
  { site: "vidlink_anim",  tag: "VL",  name: "VidLink",       desc: "TMDB · ترجمة عربية",      isEn: true },
  { site: "vidfast",       tag: "VF",  name: "VidFast",       desc: "TMDB · متعدد الخوادم",    isEn: true },
];

/* Priority order for auto-fallback */
const FALLBACK_ORDER = SCRAPER_DEFS.map(d => d.site);

/* ── Quality helpers ── */
function getSrcQualityTier(s: Src): Quality {
  const rank = s.qualityRank ?? 0;
  const name = (s.label || s.name || s.server || s.quality || "").toLowerCase();
  if (name.includes("1080") || name.includes("fhd")) return "1080p FHD";
  if (name.includes("720")  || name.includes("hd"))  return "720p HD";
  if (name.includes("360")  || name.includes("sd"))  return "360p SD";
  if (rank >= 13) return "1080p FHD";
  if (rank >= 9)  return "720p HD";
  return "360p SD";
}
function shouldShowSrc(s: Src): boolean {
  const url = (s.directUrl || s.url || "").toLowerCase();
  if (url.includes("mp4upload")) return false;
  if (s.isEmbed) return false;
  return true;
}
function isEmbedFallback(s: Src): boolean {
  if (!s.isEmbed) return false;
  const url = (s.directUrl || s.url || "").toLowerCase();
  return url.includes("mega.nz") || url.includes("mega.co.nz") || url.includes("vidmoly");
}
function getCdnDisplayName(url: string): string {
  const u = url.toLowerCase();
  if (u.includes("workers.dev"))                           return "Phoenix CDN";
  if (u.includes("filemoon"))                              return "FileMoon";
  if (u.includes("streamwish") || u.includes("wishembed")) return "StreamWish";
  if (u.includes("vidhide"))                               return "VidHide";
  if (u.includes("streamtape"))                            return "StreamTape";
  if (u.includes("sendvid"))                               return "SendVid";
  if (u.includes("vidmoly"))                               return "VidMoly";
  if (u.includes("hls-proxy"))                             return "HLS بث";
  if (u.includes("video-proxy"))                           return "مباشر MP4";
  if (u.match(/\.(mp4|mkv|webm)([?#]|$)/i))               return "مباشر";
  if (u.match(/\.m3u8([?#]|$)/i))                         return "HLS";
  return "مصدر";
}

const QUALITY_STYLE: Record<Quality, { dot: string; badge: string; border: string; text: string }> = {
  "1080p FHD": { dot: "#fbbf24", badge: "rgba(251,191,36,0.10)", border: "rgba(251,191,36,0.26)", text: "rgba(253,224,71,0.95)" },
  "720p HD":   { dot: "#34d399", badge: "rgba(52,211,153,0.09)", border: "rgba(52,211,153,0.24)", text: "rgba(110,231,183,0.92)" },
  "360p SD":   { dot: "#94a3b8", badge: "rgba(148,163,184,0.07)",border: "rgba(148,163,184,0.16)",text: "rgba(148,163,184,0.70)" },
};
const Q_LABEL: Record<Quality, string> = {
  "1080p FHD": "جودة عالية جداً · FHD 1080",
  "720p HD":   "جودة عالية · HD 720",
  "360p SD":   "جودة متوسطة · SD 360",
};
const Q_SHORT: Record<Quality, string> = { "1080p FHD": "FHD", "720p HD": "HD", "360p SD": "SD" };

/* ── Spinning loader ── */
function SpinRing({ size = 36 }: { size?: number }) {
  const rot = useRef(new Animated.Value(0)).current;
  useEffect(() => {
    Animated.loop(
      Animated.timing(rot, { toValue: 1, duration: 900, easing: Easing.linear, useNativeDriver: true })
    ).start();
  }, []);
  const rotate = rot.interpolate({ inputRange: [0, 1], outputRange: ["0deg", "360deg"] });
  const r = size / 2;
  return (
    <View style={{ width: size, height: size, position: "relative" }}>
      <View style={[StyleSheet.absoluteFill, { borderRadius: r, borderWidth: 2, borderColor: "rgba(139,92,246,0.15)" }]} />
      <Animated.View style={[StyleSheet.absoluteFill, { borderRadius: r, borderWidth: 2, borderColor: "transparent", borderTopColor: "#8B5CF6", borderRightColor: "rgba(139,92,246,0.4)", transform: [{ rotate }] }]} />
    </View>
  );
}

/* ── Source Loading Screen ── */
function SourceLoadingScreen({ cover, title, ep, siteName, onCancel }: {
  cover?: string; title: string; ep: number; siteName: string; onCancel: () => void;
}) {
  const insets = useSafeAreaInsets();
  const [imgErr, setImgErr] = useState(false);
  return (
    <View style={{ flex: 1, backgroundColor: "#07070d" }}>
      {cover && !imgErr ? (
        <Image source={{ uri: cover }} style={[StyleSheet.absoluteFill, { opacity: 0.13 }]}
          blurRadius={Platform.OS === "ios" ? 28 : 10} resizeMode="cover" />
      ) : null}
      <LinearGradient colors={["rgba(7,7,13,0.90)", "rgba(12,8,24,0.60)", "rgba(7,7,13,0.95)"]} style={StyleSheet.absoluteFill} />
      <Pressable onPress={onCancel} style={[d.ldBackBtn, { top: (Platform.OS === "ios" ? insets.top : 16) + 4 }]}>
        <Ionicons name="chevron-forward" size={20} color="rgba(255,255,255,0.65)" />
      </Pressable>
      <View style={d.ldContent}>
        <Text style={d.ldPrayer}>اللهم صلِّ وسلِّم على نبينا محمد ﷺ</Text>
        <View style={d.ldPosterWrap}>
          <View style={[d.ldPoster, d.ldPosterFallback]}>
            <Ionicons name="film" size={36} color="rgba(139,92,246,0.4)" />
          </View>
          {cover ? <Image source={{ uri: cover }} style={[d.ldPoster, { position: "absolute" }]} resizeMode="contain" onError={() => setImgErr(true)} /> : null}
        </View>
        <View style={d.ldEpBadge}><Text style={d.ldEpText}>الحلقة {ep}</Text></View>
        <View style={{ alignItems: "center", gap: 12 }}>
          <SpinRing />
          <View style={{ alignItems: "center", gap: 3 }}>
            <Text style={{ fontSize: 12, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.45)", textAlign: "center" }}>جاري تجهيز الحلقة عبر</Text>
            <Text style={{ fontSize: 16, fontFamily: "Cairo_800ExtraBold", color: "#c4b5fd", textAlign: "center" }}>{siteName}</Text>
          </View>
          <Pressable onPress={onCancel} style={{ paddingHorizontal: 18, paddingVertical: 9, borderRadius: 12, backgroundColor: "rgba(255,255,255,0.06)", borderWidth: 1, borderColor: "rgba(255,255,255,0.10)" }}>
            <Text style={{ fontSize: 12, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.45)" }}>إلغاء والعودة للمصادر</Text>
          </Pressable>
        </View>
      </View>
    </View>
  );
}

/* ── Scraper Card (shown in picker — static, no sources fetched yet) ── */
function ScraperCard({ def, status, onTap }: {
  def: typeof SCRAPER_DEFS[0]; status: ScraperStat; onTap: () => void;
}) {
  const isLoading = status === "loading";
  const isFailed  = status === "failed";
  return (
    <Pressable
      onPress={onTap}
      disabled={isLoading}
      style={[
        d.scraperCard,
        isFailed  && { backgroundColor: "rgba(239,68,68,0.06)",    borderColor: "rgba(239,68,68,0.18)" },
        isLoading && { backgroundColor: "rgba(139,92,246,0.08)",   borderColor: "rgba(139,92,246,0.25)" },
      ]}
    >
      {/* Tag badge */}
      <View style={[d.scraperTag, def.isArabic ? d.scraperTagAr : def.isEn ? d.scraperTagEn : d.scraperTagJp]}>
        <Text style={[d.scraperTagText,
          def.isArabic ? { color: "#86efac" } : def.isEn ? { color: "#93c5fd" } : { color: "#c4b5fd" }
        ]}>{def.tag}</Text>
      </View>
      {/* Name + desc */}
      <View style={{ flex: 1, minWidth: 0 }}>
        <Text style={d.scraperName} numberOfLines={1}>{def.name}</Text>
        <Text style={d.scraperDesc} numberOfLines={1}>{def.desc}</Text>
      </View>
      {/* Status */}
      <View style={{ alignItems: "center", justifyContent: "center", width: 36 }}>
        {isLoading ? <SpinRing size={22} /> : isFailed
          ? <View style={d.scraperFailIcon}><Ionicons name="close" size={12} color="rgba(239,68,68,0.85)" /></View>
          : <View style={d.scraperPlayBtn}><Ionicons name="play" size={11} color="#fff" /></View>}
      </View>
    </Pressable>
  );
}

/* ── Resolve relative API URLs to absolute ── */
function resolveUrl(url: string | undefined, base: string): string {
  if (!url) return "";
  if (url.startsWith("/")) return base + url;
  return url;
}

/* ═══════════════════════════════════════ MAIN SCREEN ═══ */
export default function WatchScreen() {
  const {
    anime, ep, title, english, format, etitle,
    totalEps: totalEpsParam, year, episodes, native,
  } = useLocalSearchParams<{
    anime: string; ep: string; title: string; english: string;
    format?: string; etitle?: string; totalEps?: string;
    year?: string; episodes?: string; native?: string;
  }>();
  const insets   = useSafeAreaInsets();
  const router   = useRouter();
  const { addToHistory } = useApp();
  const topPad   = insets.top > 0 ? insets.top : (Platform.OS === "ios" ? 44 : 24);

  /* ── Core state ── */
  const [screen,         setScreen]         = useState<Screen>("picker");
  const [playKey,        setPlayKey]        = useState(0);
  const [riftInitialIdx, setRiftInitialIdx] = useState(0);
  const [fetchedSources, setFetchedSources] = useState<Src[]>([]);
  const [playingSrc,     setPlayingSrc]     = useState<Src | null>(null);
  const [activeSite,     setActiveSite]     = useState<string | null>(null);
  const [scraperStatus,  setScraperStatus]  = useState<Record<string, ScraperStat>>({});

  /* ── Media state ── */
  const [cover, setCover] = useState(() => {
    const id = parseInt(anime || "0");
    return id ? `https://img.anili.st/media/${id}` : "";
  });
  const [resumeTime,       setResumeTime]       = useState(0);
  const [globalSubUrl,     setGlobalSubUrl]     = useState<string | undefined>();
  const [anilistTotalEps,  setAnilistTotalEps]  = useState<number | null>(null);
  const [kawaiiSkip,       setKawaiiSkip]       = useState<{
    intro?: { start: number; end: number };
    outro?: { start: number; end: number };
  } | null>(null);

  const triedSitesRef = useRef<Set<string>>(new Set());
  const lastTimeRef   = useRef(0);
  const abortFetchRef = useRef<AbortController | null>(null);

  const epNum       = parseInt(ep || "1");
  const titleStr    = decodeURIComponent(title || "");
  const englishStr  = decodeURIComponent(english || "");
  const displayTitle = englishStr || titleStr;
  const progressKey  = `wp-${anime}-${epNum}`;

  /* ── Cover + resume + AniList episode count ── */
  useEffect(() => {
    if (!anime) return;
    const id = parseInt(anime);
    setCover(`https://img.anili.st/media/${id}`);
    AsyncStorage.getItem(progressKey).then(v => { if (v) setResumeTime(parseFloat(v) || 0); });
    fetch("https://graphql.anilist.co", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ query: "query($id:Int){Media(id:$id){episodes}}", variables: { id } }),
      signal: AbortSignal.timeout(8000),
    }).then(r => r.ok ? r.json() : null).then(data => {
      const count = data?.data?.Media?.episodes;
      if (count && count > 0) setAnilistTotalEps(count);
    }).catch(() => {});
  }, [anime, progressKey]);

  /* ── kawaii-meta: Arabic subtitle + skip times ── */
  useEffect(() => {
    if (!anime || !ep) return;
    const anilistId = parseInt(anime);
    if (!anilistId) return;
    const base = getBaseUrl();
    const controller = new AbortController();
    setKawaiiSkip(null);
    setGlobalSubUrl(undefined);
    (async () => {
      try {
        const kawaiiRes = await fetch(
          `${base}/api/anime/kawaii-meta?anilistId=${anilistId}&ep=${ep}`,
          { signal: controller.signal }
        );
        const data: any = kawaiiRes.ok ? await kawaiiRes.json() : null;
        if (data) {
          const subUrl: string | undefined = data.arabicSubUrl
            ? resolveUrl(data.arabicSubUrl, base)
            : (data.englishSubUrl
                ? `${base}/api/anime/translate-vtt?url=${encodeURIComponent(data.englishSubUrl)}&from=en&to=ar`
                : undefined);
          if (subUrl) setGlobalSubUrl(subUrl);
          if (data.intro || data.outro) setKawaiiSkip({ intro: data.intro, outro: data.outro });
          if (subUrl) return;
        }
        if (controller.signal.aborted) return;
        const params = new URLSearchParams({ anilistId: String(anilistId), ep: String(ep), title: titleStr, english: englishStr });
        const tracksRes = await fetch(`${base}/api/anime/subtitle-tracks?${params}`, { signal: controller.signal });
        if (!tracksRes.ok) return;
        const { tracks = [] }: any = await tracksRes.json();
        const arTrack = tracks.find((t: any) => t.lang === "ar" || t.label?.includes("عرب") || t.label?.toLowerCase().includes("arabic"));
        const enTrack = tracks.find((t: any) => t.lang === "en" || t.label?.toLowerCase().includes("english"));
        if (arTrack?.url) setGlobalSubUrl(resolveUrl(arTrack.url, base));
        else if (enTrack?.url) {
          const proxyUrl = `${base}/api/anime/proxy-text?url=${encodeURIComponent(enTrack.url)}`;
          setGlobalSubUrl(`${base}/api/anime/translate-vtt?url=${encodeURIComponent(proxyUrl)}&from=en&to=ar`);
        }
      } catch (e: any) { if (e?.name !== "AbortError") { /* silent */ } }
    })();
    return () => controller.abort();
  }, [anime, ep]); // eslint-disable-line

  /* ── Screen orientation ── */
  useEffect(() => {
    if (screen === "picker" || screen === "source-loading" || screen === "quality-picker") {
      ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.PORTRAIT_UP).catch(() => {});
    } else if (screen === "embed") {
      ScreenOrientation.unlockAsync().catch(() => {});
    }
  }, [screen]);

  /* ── History ── */
  useEffect(() => {
    if (playingSrc && anime) {
      addToHistory({ animeId: parseInt(anime), ep: epNum, title: titleStr, english: englishStr, thumbnail: cover, updatedAt: Date.now() });
    }
  }, [playingSrc]); // eslint-disable-line

  /* ── Progress save ── */
  const saveProgress = useCallback(async () => {
    const t = lastTimeRef.current;
    if (t > 10) await AsyncStorage.setItem(progressKey, String(Math.floor(t)));
  }, [progressKey]);

  const totalEpsCount = anilistTotalEps || (totalEpsParam ? parseInt(totalEpsParam) || undefined : undefined);

  /* ── Navigate episode ── */
  function goEp(n: number, auto = false) {
    saveProgress();
    triedSitesRef.current = new Set();
    setScraperStatus({});
    setFetchedSources([]);
    setActiveSite(null);
    setScreen("picker");
    router.replace(`/watch?anime=${anime}&ep=${n}&title=${encodeURIComponent(titleStr)}&english=${encodeURIComponent(englishStr)}&format=${encodeURIComponent(format || "")}${auto ? "&autoplay=1" : ""}`);
  }

  /* ── Per-site cache (5-minute TTL) ── */
  const CACHE_TTL = 5 * 60_000;
  async function loadSiteCache(site: string): Promise<Src[] | null> {
    if (!anime || !ep) return null;
    try {
      const raw = await AsyncStorage.getItem(`src-${anime}-${epNum}-${site}`);
      if (!raw) return null;
      const { sources, ts } = JSON.parse(raw) as { sources: Src[]; ts: number };
      return Date.now() - ts > CACHE_TTL ? null : sources;
    } catch { return null; }
  }
  async function saveSiteCache(site: string, sources: Src[]) {
    if (!anime || !ep) return;
    try { await AsyncStorage.setItem(`src-${anime}-${epNum}-${site}`, JSON.stringify({ sources, ts: Date.now() })); }
    catch {}
  }

  /* ── Fetch a single source on demand (with auto-fallback) ── */
  const fetchSingleSource = useCallback(async (site: string) => {
    const base = getBaseUrl();
    const def = SCRAPER_DEFS.find(d => d.site === site);
    if (!def) return;

    abortFetchRef.current?.abort();
    abortFetchRef.current = new AbortController();
    triedSitesRef.current.add(site);
    setActiveSite(site);
    setScraperStatus(prev => ({ ...prev, [site]: "loading" }));
    setScreen("source-loading");

    try {
      /* Cache check */
      const cached = await loadSiteCache(site);
      let rawSrcs: Src[] = [];

      if (cached && cached.length > 0) {
        rawSrcs = cached;
      } else {
        const params = new URLSearchParams({
          site, title: titleStr, english: englishStr,
          ep: String(epNum), anime: String(anime || "0"),
          format: format || "", year: year || "",
          episodes: episodes || "", native: native || "",
        });
        const res = await fetch(`${base}/api/anime/fetch-source?${params}`, {
          signal: abortFetchRef.current.signal,
          headers: { Accept: "application/json" },
        });
        if (!res.ok) throw new Error(`HTTP ${res.status}`);
        const data: any = await res.json();
        rawSrcs = ((data.sources || []) as Src[]).map(s => ({
          ...s,
          directUrl: resolveUrl(s.directUrl, base),
          url: resolveUrl(s.url, base),
        }));
        if (rawSrcs.length > 0) saveSiteCache(site, rawSrcs).catch(() => {});
      }

      const directSrcs = rawSrcs.filter(shouldShowSrc);
      const embedSrcs  = rawSrcs.filter(isEmbedFallback);
      const goodSrcs   = [...directSrcs, ...embedSrcs];

      if (goodSrcs.length === 0) throw new Error("no sources");

      setScraperStatus(prev => ({ ...prev, [site]: "idle" }));
      setFetchedSources(goodSrcs);

      /* Single quality → auto-play. Multiple → show quality picker. */
      const uniqueQ = new Set(directSrcs.map(getSrcQualityTier));
      if (directSrcs.length === 0) {
        /* Embed only */
        playSource(embedSrcs[0], goodSrcs, site);
      } else if (directSrcs.length === 1 || uniqueQ.size === 1) {
        playSource(directSrcs[0], goodSrcs, site);
      } else {
        setScreen("quality-picker");
      }
    } catch (e: any) {
      if (e?.name === "AbortError") return;
      setScraperStatus(prev => ({ ...prev, [site]: "failed" }));
      /* Auto-fallback to next untried site */
      const nextSite = FALLBACK_ORDER.find(s => !triedSitesRef.current.has(s));
      if (nextSite) {
        setTimeout(() => fetchSingleSource(nextSite), 400);
      } else {
        setActiveSite(null);
        setScreen("picker");
      }
    }
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [anime, ep, titleStr, englishStr, format, year, episodes, native]);

  /* ── Play a specific source ── */
  function playSource(src: Src, allSrcs: Src[], site: string) {
    setPlayingSrc(src);
    const srcKey    = src.directUrl || src.url || "";
    const directAll = allSrcs.filter(shouldShowSrc);
    const idx       = directAll.findIndex(s => (s.directUrl || s.url) === srcKey);
    setRiftInitialIdx(Math.max(0, idx));
    setPlayKey(k => k + 1);
    const url = src.directUrl || src.url || "";
    if (src.isEmbed || (!src.directUrl && !url.match(/\.(m3u8|mp4|mkv|webm)/i) && url.startsWith("https://"))) {
      setScreen("embed");
    } else {
      setScreen("native");
    }
  }

  /* ── RiftPlayer sources from fetchedSources ── */
  const riftSources = useMemo((): PlayerSource[] => {
    const base = getBaseUrl();
    const srcs = Platform.OS === "web"
      ? fetchedSources.filter(s => s.directType !== "hls" && shouldShowSrc(s))
      : fetchedSources.filter(shouldShowSrc);
    return srcs.map(s => {
      const def = SCRAPER_DEFS.find(d => d.site === s.site);
      const isArabicSrc   = def?.isArabic === true;
      const wantsSmartSub = !isArabicSrc && PROVIDER_WANTS_SMART_SUB.has(s.site || "");
      const rawUrl = s.directUrl || s.url || "";
      return {
        url: resolveUrl(rawUrl, base),
        label: def?.name || getCdnDisplayName(rawUrl),
        quality: getSrcQualityTier(s),
        isArabic: isArabicSrc,
        wantsSmartSub,
        subtitleUrl: s.subtitleUrl
          ? resolveUrl(s.subtitleUrl, base)
          : isArabicSrc ? undefined : globalSubUrl,
      };
    }).filter(s => s.url);
  }, [fetchedSources, globalSubUrl]);

  /* ── Quality groups for the quality picker screen ── */
  const qualityGroups = useMemo((): Record<Quality, Src[]> => {
    const direct = fetchedSources.filter(shouldShowSrc);
    return {
      "1080p FHD": direct.filter(s => getSrcQualityTier(s) === "1080p FHD"),
      "720p HD":   direct.filter(s => getSrcQualityTier(s) === "720p HD"),
      "360p SD":   direct.filter(s => getSrcQualityTier(s) === "360p SD"),
    };
  }, [fetchedSources]);

  const activeDef = SCRAPER_DEFS.find(d => d.site === activeSite);

  /* ══════════════════ RENDERS ══════════════════ */

  /* ── Source Loading (جاري تجهيز الحلقة عبر [site]) ── */
  if (screen === "source-loading") {
    return (
      <SourceLoadingScreen
        cover={cover} title={displayTitle} ep={epNum}
        siteName={activeDef?.name || activeSite || "المصدر"}
        onCancel={() => { abortFetchRef.current?.abort(); setActiveSite(null); setScreen("picker"); }}
      />
    );
  }

  /* ── RiftPlayer (native video) ── */
  if (screen === "native" && riftSources.length > 0) {
    const hasSub = !!(globalSubUrl || riftSources.some(s => !!s.subtitleUrl));
    return (
      <RiftPlayer
        key={`rift-${playKey}`}
        sources={riftSources}
        initialSourceIndex={riftInitialIdx}
        subEnabled={hasSub}
        title={displayTitle}
        episode={epNum}
        episodeTitle={etitle ? decodeURIComponent(etitle) : undefined}
        anilistId={anime ? Number(anime) : undefined}
        initialPosition={resumeTime}
        skipIntro={playingSrc?.skipIntro || kawaiiSkip?.intro}
        skipOutro={playingSrc?.skipOutro || kawaiiSkip?.outro}
        onBack={() => { saveProgress(); setScreen("picker"); }}
        totalEps={totalEpsCount}
        onNextEpisode={() => goEp(epNum + 1, true)}
        onPrevEpisode={epNum > 1 ? () => goEp(epNum - 1) : undefined}
        onEpisodeSelect={(n) => goEp(n)}
        onProgress={(pos, dur) => {
          lastTimeRef.current = pos;
          if (pos > 10) AsyncStorage.setItem(progressKey, String(Math.floor(pos))).catch(() => {});
          if (dur > 0) addToHistory({ animeId: parseInt(anime!), ep: epNum, title: titleStr, english: englishStr, thumbnail: cover, position: pos, duration: dur, updatedAt: Date.now() });
        }}
      />
    );
  }

  /* ── Embed Player (WebView) ── */
  if (screen === "embed" && playingSrc) {
    const embedUrl = playingSrc.directUrl || playingSrc.url || "";
    if (Platform.OS === "web") {
      return (
        <View style={{ flex: 1, backgroundColor: "#07070d", alignItems: "center", justifyContent: "center", gap: 16 }}>
          <Pressable onPress={() => setScreen("picker")} style={[d.playerBackBtn, { position: "absolute", top: topPad + 4, left: 12 }]}>
            <Ionicons name="arrow-back" size={18} color="#fff" />
          </Pressable>
          <View style={{ width: 72, height: 72, borderRadius: 36, backgroundColor: "rgba(139,92,246,0.15)", alignItems: "center", justifyContent: "center" }}>
            <Ionicons name="tv-outline" size={36} color="rgba(139,92,246,0.7)" />
          </View>
          <Text style={{ color: "#fff", fontFamily: "Cairo_700Bold", fontSize: 16, textAlign: "center" }}>هذا المصدر يحتاج التطبيق الأصلي</Text>
          <Pressable onPress={() => Linking.openURL(embedUrl)} style={{ backgroundColor: "rgba(139,92,246,0.25)", borderRadius: 14, paddingHorizontal: 24, paddingVertical: 12, borderWidth: 1, borderColor: "rgba(139,92,246,0.4)" }}>
            <Text style={{ color: "#c4b5fd", fontFamily: "Cairo_700Bold", fontSize: 14 }}>فتح في المتصفح</Text>
          </Pressable>
          <Pressable onPress={() => setScreen("picker")}>
            <Text style={{ color: "rgba(255,255,255,0.35)", fontFamily: "Cairo_400Regular", fontSize: 13 }}>العودة للمصادر</Text>
          </Pressable>
        </View>
      );
    }
    return (
      <View style={{ flex: 1, backgroundColor: "#000" }}>
        <WebView source={{ uri: embedUrl }} style={{ flex: 1 }}
          allowsFullscreenVideo allowsInlineMediaPlayback
          mediaPlaybackRequiresUserAction={false}
          javaScriptEnabled domStorageEnabled />
        <View style={[d.embedTopRow, { paddingTop: topPad + 4 }]}>
          <Pressable onPress={() => setScreen("picker")} style={d.playerBackBtn}>
            <Ionicons name="arrow-back" size={18} color="#fff" />
          </Pressable>
          <Text style={[d.playerTitle, { flex: 1 }]} numberOfLines={1}>{displayTitle}</Text>
          <Pressable onPress={() => setScreen("picker")} style={d.srcSwitchBtn}>
            <Ionicons name="layers" size={16} color="#fff" />
          </Pressable>
        </View>
      </View>
    );
  }

  /* ── Quality Picker (shown after fetch-source returns multiple qualities) ── */
  if (screen === "quality-picker") {
    const site = activeSite || "";
    const def  = SCRAPER_DEFS.find(d => d.site === site);
    return (
      <View style={{ flex: 1, backgroundColor: "#07070d" }}>
        {cover ? <Image source={{ uri: cover }} style={[StyleSheet.absoluteFill, { opacity: 0.08 }]} blurRadius={Platform.OS === "ios" ? 28 : 10} resizeMode="cover" /> : null}
        <LinearGradient colors={["rgba(7,7,13,0.97)", "rgba(7,7,13,0.88)"]} style={StyleSheet.absoluteFill} />
        <View style={[d.header, { paddingTop: topPad + 4 }]}>
          <View style={{ flex: 1 }} />
          <View style={d.headerCenter}>
            <Text style={d.headerTitle}>{def?.name || site}</Text>
            <Text style={d.headerSub}>اختر الجودة</Text>
          </View>
          <Pressable onPress={() => setScreen("picker")} style={d.headerBack}>
            <Ionicons name="arrow-back" size={17} color="rgba(255,255,255,0.75)" />
          </Pressable>
        </View>
        <ScrollView contentContainerStyle={d.pickerScrollContent} showsVerticalScrollIndicator={false}>
          {(["1080p FHD", "720p HD", "360p SD"] as Quality[]).map(q => {
            const srcs = qualityGroups[q];
            if (!srcs.length) return null;
            const qs = QUALITY_STYLE[q];
            return (
              <View key={q} style={d.tierSection}>
                <View style={d.tierHeader}>
                  <View style={[d.tierDot, { backgroundColor: qs.dot }]} />
                  <Text style={[d.tierTitle, { color: qs.text }]}>{Q_LABEL[q]}</Text>
                </View>
                <View style={d.srcSection}>
                  {srcs.map((src, i) => (
                    <Pressable key={i} onPress={() => playSource(src, fetchedSources, site)} style={d.qualityRow}>
                      <View style={[d.scraperTag, { backgroundColor: qs.badge, borderColor: qs.border }]}>
                        <Text style={[d.scraperTagText, { color: qs.text }]}>{Q_SHORT[q]}</Text>
                      </View>
                      <View style={{ flex: 1 }}>
                        <Text style={d.scraperName}>{getCdnDisplayName(src.directUrl || src.url || "")}</Text>
                        <Text style={d.scraperDesc}>{(src.directUrl || src.url || "").includes("hls-proxy") ? "HLS بث مباشر" : "MP4 مباشر"}</Text>
                      </View>
                      <View style={d.scraperPlayBtn}>
                        <Ionicons name="play" size={11} color="#fff" />
                        <Text style={{ fontSize: 10.5, fontFamily: "Cairo_800ExtraBold", color: "#fff" }}>تشغيل</Text>
                      </View>
                    </Pressable>
                  ))}
                </View>
              </View>
            );
          })}
          {/* Embeds */}
          {fetchedSources.filter(isEmbedFallback).length > 0 && (
            <View style={d.tierSection}>
              <View style={d.tierHeader}>
                <View style={[d.tierDot, { backgroundColor: "#64748b" }]} />
                <Text style={[d.tierTitle, { color: "rgba(148,163,184,0.7)" }]}>سيرفرات احتياطية</Text>
              </View>
              <View style={d.srcSection}>
                {fetchedSources.filter(isEmbedFallback).map((src, i) => (
                  <Pressable key={i} onPress={() => playSource(src, fetchedSources, site)} style={d.qualityRow}>
                    <View style={[d.scraperTag, { backgroundColor: "rgba(100,116,139,0.1)", borderColor: "rgba(100,116,139,0.2)" }]}>
                      <Text style={[d.scraperTagText, { color: "rgba(148,163,184,0.8)" }]}>EMB</Text>
                    </View>
                    <Text style={[d.scraperName, { flex: 1 }]}>Embed</Text>
                    <View style={d.scraperPlayBtn}><Ionicons name="play" size={11} color="#fff" /></View>
                  </Pressable>
                ))}
              </View>
            </View>
          )}
        </ScrollView>
      </View>
    );
  }

  /* ══ SOURCE PICKER (static list — no fetching on open) ══ */
  const arabicDefs   = SCRAPER_DEFS.filter(d => d.isArabic);
  const japaneseDefs = SCRAPER_DEFS.filter(d => !d.isArabic && !d.isEn);
  const enDefs       = SCRAPER_DEFS.filter(d => d.isEn);
  const allFailed    = triedSitesRef.current.size >= SCRAPER_DEFS.length &&
                       fetchedSources.length === 0;

  return (
    <View style={{ flex: 1, backgroundColor: "#07070d" }}>
      {cover ? <Image source={{ uri: cover }} style={[StyleSheet.absoluteFill, { opacity: 0.08 }]} blurRadius={Platform.OS === "ios" ? 28 : 10} resizeMode="cover" /> : null}
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
          <Pressable
            onPress={() => { triedSitesRef.current = new Set(); setScraperStatus({}); setFetchedSources([]); }}
            style={d.headerRefreshBtn}>
            <Ionicons name="refresh" size={13} color="#8B5CF6" />
          </Pressable>
        </View>
        <View style={d.headerCenter}>
          <Text style={d.headerTitle} numberOfLines={1}>{displayTitle}</Text>
          <Text style={d.headerSub}>الحلقة {epNum}</Text>
        </View>
        <Pressable onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)")} style={d.headerBack}>
          <Ionicons name="arrow-back" size={17} color="rgba(255,255,255,0.75)" />
        </Pressable>
      </View>

      <ScrollView showsVerticalScrollIndicator={false} contentContainerStyle={d.pickerScrollContent}>

        {/* ── Anime info card ── */}
        <View style={d.infoCard}>
          {cover ? (
            <View style={d.infoPosterWrap}>
              <View style={d.infoPosterGlow} />
              <Image source={{ uri: cover }} style={d.infoPoster} resizeMode="cover" />
            </View>
          ) : null}
          <View style={d.infoMeta}>
            <Text style={d.infoTitle} numberOfLines={2}>{displayTitle}</Text>
            <View style={d.infoEpRow}>
              <View style={d.infoEpBadge}>
                <Ionicons name="play-circle" size={10} color="#a78bfa" />
                <Text style={d.infoEpText}>الحلقة {epNum}</Text>
              </View>
              <View style={[d.infoEpBadge, { backgroundColor: "rgba(139,92,246,0.08)", borderColor: "rgba(139,92,246,0.18)" }]}>
                <Text style={[d.infoEpText, { color: "rgba(196,181,253,0.7)" }]}>اضغط على مصدر للتشغيل</Text>
              </View>
            </View>
          </View>
        </View>

        {/* ── All failed banner ── */}
        {allFailed && (
          <View style={d.empty}>
            <View style={d.emptyIcon}>
              <Ionicons name="warning-outline" size={32} color="rgba(239,68,68,0.55)" />
            </View>
            <Text style={d.emptyTitle}>الحلقة {epNum} غير متوفرة بعد</Text>
            <Text style={d.emptySub}>المصادر العربية تتأخر عادةً ٢–٣ حلقات عن البث الأصلي.</Text>
            <Pressable onPress={() => { triedSitesRef.current = new Set(); setScraperStatus({}); }} style={d.retryBigBtn}>
              <Ionicons name="refresh" size={15} color="#c4b5fd" />
              <Text style={d.retryBigText}>إعادة المحاولة</Text>
            </Pressable>
          </View>
        )}

        {/* ── Arabic sources ── */}
        {arabicDefs.length > 0 && (
          <View style={d.tierSection}>
            <View style={d.tierHeader}>
              <View style={[d.tierDot, { backgroundColor: "#22c55e" }]} />
              <Text style={[d.tierTitle, { color: "rgba(134,239,172,0.85)" }]}>مصادر عربية</Text>
              <View style={[d.tierCount, { backgroundColor: "rgba(34,197,94,0.10)", borderColor: "rgba(34,197,94,0.22)" }]}>
                <Text style={[d.tierCountText, { color: "rgba(134,239,172,0.85)" }]}>{arabicDefs.length}</Text>
              </View>
            </View>
            <View style={d.srcSection}>
              {arabicDefs.map(def => (
                <ScraperCard key={def.site} def={def}
                  status={scraperStatus[def.site] || "idle"}
                  onTap={() => fetchSingleSource(def.site)} />
              ))}
            </View>
          </View>
        )}

        {/* ── Japanese sources ── */}
        {japaneseDefs.length > 0 && (
          <View style={d.tierSection}>
            <View style={d.tierHeader}>
              <View style={[d.tierDot, { backgroundColor: "#a78bfa" }]} />
              <Text style={[d.tierTitle, { color: "rgba(196,181,253,0.85)" }]}>مصادر يابانية</Text>
              <View style={[d.tierCount, { backgroundColor: "rgba(139,92,246,0.10)", borderColor: "rgba(139,92,246,0.22)" }]}>
                <Text style={[d.tierCountText, { color: "rgba(196,181,253,0.85)" }]}>{japaneseDefs.length}</Text>
              </View>
            </View>
            <View style={d.srcSection}>
              {japaneseDefs.map(def => (
                <ScraperCard key={def.site} def={def}
                  status={scraperStatus[def.site] || "idle"}
                  onTap={() => fetchSingleSource(def.site)} />
              ))}
            </View>
          </View>
        )}

        {/* ── English sources ── */}
        {enDefs.length > 0 && (
          <View style={d.tierSection}>
            <View style={d.tierHeader}>
              <View style={[d.tierDot, { backgroundColor: "#60a5fa" }]} />
              <Text style={[d.tierTitle, { color: "rgba(147,197,253,0.85)" }]}>مصادر إنجليزية + ترجمة</Text>
              <View style={[d.tierCount, { backgroundColor: "rgba(59,130,246,0.10)", borderColor: "rgba(59,130,246,0.22)" }]}>
                <Text style={[d.tierCountText, { color: "rgba(147,197,253,0.85)" }]}>{enDefs.length}</Text>
              </View>
            </View>
            <View style={d.srcSection}>
              {enDefs.map(def => (
                <ScraperCard key={def.site} def={def}
                  status={scraperStatus[def.site] || "idle"}
                  onTap={() => fetchSingleSource(def.site)} />
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
  /* Source loading screen */
  ldBackBtn:      { position: "absolute", right: 16, width: 36, height: 36, borderRadius: 18, backgroundColor: "rgba(0,0,0,0.45)", alignItems: "center", justifyContent: "center", borderWidth: 1, borderColor: "rgba(255,255,255,0.12)", zIndex: 10 },
  ldContent:      { flex: 1, alignItems: "center", justifyContent: "center", gap: 20, paddingHorizontal: 24 },
  ldPrayer:       { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.85)", textAlign: "center" },
  ldPosterWrap:   { position: "relative", alignItems: "center", justifyContent: "center", width: 176, height: 264, overflow: "visible" },
  ldPoster:       { width: 176, height: 264, borderRadius: 20, borderWidth: 1, borderColor: "rgba(255,255,255,0.09)", shadowColor: "#000", shadowOpacity: 0.90, shadowRadius: 36, shadowOffset: { width: 0, height: 16 }, elevation: 20 },
  ldPosterFallback: { backgroundColor: "rgba(18,10,40,0.95)", alignItems: "center", justifyContent: "center" },
  ldEpBadge:      { paddingHorizontal: 14, paddingVertical: 5, borderRadius: 20, backgroundColor: "rgba(124,58,237,0.22)", borderWidth: 1, borderColor: "rgba(139,92,246,0.3)" },
  ldEpText:       { fontSize: 12, fontFamily: "Cairo_700Bold", color: "rgba(196,181,253,0.9)" },

  /* Native/Embed player chrome */
  playerBackBtn:  { width: 36, height: 36, borderRadius: 14, backgroundColor: "rgba(0,0,0,0.5)", alignItems: "center", justifyContent: "center", borderWidth: 1, borderColor: "rgba(255,255,255,0.15)" },
  playerTitle:    { fontSize: 13, fontFamily: "Cairo_700Bold", color: "#fff" },
  srcSwitchBtn:   { flexDirection: "row", alignItems: "center", gap: 4, paddingHorizontal: 10, paddingVertical: 6, backgroundColor: "rgba(0,0,0,0.5)", borderRadius: 10, borderWidth: 1, borderColor: "rgba(255,255,255,0.12)" },
  embedTopRow:    { position: "absolute", top: 0, left: 0, right: 0, flexDirection: "row", alignItems: "center", paddingHorizontal: 14, paddingBottom: 10, backgroundColor: "rgba(0,0,0,0.7)", gap: 10, zIndex: 10 },

  /* Picker header */
  header:         { flexDirection: "row", alignItems: "center", paddingHorizontal: 12, paddingBottom: 10, borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.07)", gap: 8 },
  headerLeft:     { flexDirection: "row", alignItems: "center", gap: 5 },
  headerCenter:   { flex: 1, alignItems: "center" },
  headerBack:     { width: 36, height: 36, borderRadius: 12, backgroundColor: "rgba(255,255,255,0.07)", borderWidth: 1, borderColor: "rgba(255,255,255,0.11)", alignItems: "center", justifyContent: "center", flexShrink: 0 },
  headerTitle:    { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "#fff", textAlign: "center" },
  headerSub:      { fontSize: 10, color: "rgba(255,255,255,0.35)", fontFamily: "Cairo_400Regular", textAlign: "center" },
  headerRefreshBtn: { width: 32, height: 32, borderRadius: 10, backgroundColor: "rgba(139,92,246,0.12)", borderWidth: 1, borderColor: "rgba(139,92,246,0.25)", alignItems: "center", justifyContent: "center" },
  epNavBtn:       { flexDirection: "row", alignItems: "center", gap: 2, height: 32, borderRadius: 10, backgroundColor: "rgba(255,255,255,0.06)", borderWidth: 1, borderColor: "rgba(255,255,255,0.09)", paddingHorizontal: 8, justifyContent: "center" },
  epNavText:      { fontSize: 10, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.65)" },

  /* Info card */
  infoCard:       { flexDirection: "row", alignItems: "flex-start", gap: 14, backgroundColor: "rgba(15,12,28,0.80)", borderRadius: 18, borderWidth: 1, borderColor: "rgba(139,92,246,0.14)", padding: 14 },
  infoPosterWrap: { width: 72, height: 102, position: "relative", alignItems: "center", justifyContent: "center" },
  infoPosterGlow: { position: "absolute", width: 80, height: 110, borderRadius: 20, backgroundColor: "rgba(109,40,217,0.28)" },
  infoPoster:     { width: 72, height: 102, borderRadius: 12, borderWidth: 1, borderColor: "rgba(139,92,246,0.30)" },
  infoMeta:       { flex: 1, gap: 8, paddingTop: 2 },
  infoTitle:      { fontSize: 15, fontFamily: "Cairo_800ExtraBold", color: "#fff", textAlign: "right", lineHeight: 22 },
  infoEpRow:      { flexDirection: "row", gap: 8, flexWrap: "wrap" },
  infoEpBadge:    { flexDirection: "row", alignItems: "center", gap: 5, backgroundColor: "rgba(124,58,237,0.18)", borderRadius: 8, borderWidth: 1, borderColor: "rgba(139,92,246,0.28)", paddingHorizontal: 10, paddingVertical: 5 },
  infoEpText:     { fontSize: 11, fontFamily: "Cairo_700Bold", color: "#c4b5fd" },

  /* Scroll content */
  pickerScrollContent: { padding: 14, paddingBottom: 100, gap: 12 },

  /* Tier sections */
  tierSection:    { gap: 6 },
  tierHeader:     { flexDirection: "row", alignItems: "center", gap: 8, paddingHorizontal: 2 },
  tierDot:        { width: 6, height: 6, borderRadius: 3 },
  tierTitle:      { flex: 1, fontSize: 11, fontFamily: "Cairo_700Bold" },
  tierCount:      { paddingHorizontal: 7, paddingVertical: 2, borderRadius: 7, borderWidth: 1 },
  tierCountText:  { fontSize: 9, fontFamily: "Cairo_700Bold" },

  /* Empty state */
  empty:          { alignItems: "center", justifyContent: "center", gap: 14, paddingVertical: 50 },
  emptyIcon:      { width: 72, height: 72, borderRadius: 36, backgroundColor: "rgba(239,68,68,0.08)", borderWidth: 1, borderColor: "rgba(239,68,68,0.18)", alignItems: "center", justifyContent: "center" },
  emptyTitle:     { fontSize: 15, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.45)" },
  emptySub:       { fontSize: 12, color: "rgba(255,255,255,0.22)", fontFamily: "Cairo_400Regular", textAlign: "center", lineHeight: 20, paddingHorizontal: 24 },
  retryBigBtn:    { flexDirection: "row", alignItems: "center", gap: 8, backgroundColor: "rgba(139,92,246,0.15)", borderRadius: 14, borderWidth: 1, borderColor: "rgba(139,92,246,0.28)", paddingHorizontal: 20, paddingVertical: 11 },
  retryBigText:   { fontSize: 13, fontFamily: "Cairo_700Bold", color: "#c4b5fd" },

  /* Source section glass card */
  srcSection:     { borderRadius: 16, overflow: "hidden", backgroundColor: "rgba(14,12,24,0.92)", borderWidth: 1, borderColor: "rgba(255,255,255,0.07)" },

  /* Scraper card (static — before fetch) */
  scraperCard:    { flexDirection: "row", alignItems: "center", paddingHorizontal: 14, paddingVertical: 13, gap: 12, borderBottomWidth: StyleSheet.hairlineWidth, borderBottomColor: "rgba(255,255,255,0.05)", borderWidth: 0 },
  scraperTag:     { width: 38, height: 38, borderRadius: 11, alignItems: "center", justifyContent: "center", borderWidth: 1 },
  scraperTagAr:   { backgroundColor: "rgba(34,197,94,0.10)",  borderColor: "rgba(34,197,94,0.25)" },
  scraperTagJp:   { backgroundColor: "rgba(139,92,246,0.10)", borderColor: "rgba(139,92,246,0.25)" },
  scraperTagEn:   { backgroundColor: "rgba(59,130,246,0.10)", borderColor: "rgba(59,130,246,0.25)" },
  scraperTagText: { fontSize: 10, fontFamily: "Cairo_800ExtraBold" },
  scraperName:    { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "#fff", textAlign: "right" },
  scraperDesc:    { fontSize: 10, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.38)", textAlign: "right", marginTop: 1 },
  scraperPlayBtn: { flexDirection: "row", alignItems: "center", gap: 4, paddingHorizontal: 10, paddingVertical: 7, borderRadius: 10, backgroundColor: "rgba(109,40,217,0.88)", borderWidth: 1, borderColor: "rgba(167,139,250,0.28)" },
  scraperFailIcon:{ width: 28, height: 28, borderRadius: 8, backgroundColor: "rgba(239,68,68,0.12)", borderWidth: 1, borderColor: "rgba(239,68,68,0.25)", alignItems: "center", justifyContent: "center" },

  /* Quality row (in quality-picker screen) */
  qualityRow:     { flexDirection: "row", alignItems: "center", paddingHorizontal: 14, paddingVertical: 11, gap: 12, borderBottomWidth: StyleSheet.hairlineWidth, borderBottomColor: "rgba(255,255,255,0.05)" },
});
