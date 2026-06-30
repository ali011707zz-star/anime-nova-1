import React, { useState, useEffect, useRef, useCallback, useMemo } from "react";
import {
  View, Text, Pressable, Image, ScrollView,
  StyleSheet, Platform, Animated, Easing,
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
import { secureStreamFetch } from "@/utils/secureApi";
import * as ScreenOrientation from "expo-screen-orientation";

/* ── Types ── */
type Quality    = "1080p FHD" | "720p HD" | "360p SD";
type Screen     = "loading" | "picker" | "native" | "embed";

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
}

/* ── Site → 2-letter tag ── */
const SITE_TAG: Record<string, string> = {
  shahiid: "SH", animelek: "AL", animedar: "AD", okanime: "OK",
  ristoanime: "RS", animeify: "MG", animeday: "DY", arabseed: "AS",
  anime4up2: "4U", mycima: "MC", topcinemaa: "TC", animephoenix: "PH",
  animewitcher: "AW", kawaii: "KW",
  anikoto: "AK", anikototv: "ATV", animekai: "KI", hianime: "HI",
  animex: "AX", anineko: "AN", mitanime: "MT",
  videasy_anim: "VE", vidlink_anim: "VL", vidfast: "VF",
  seepanel: "SP", animetime: "AT",
};
function getSiteTag(site: string): string {
  return SITE_TAG[site] || site.slice(0, 2).toUpperCase();
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
  return true;
}
function isEmbedSrc(s: Src): boolean {
  if (!s.isEmbed) return false;
  const url = (s.directUrl || s.url || "").toLowerCase();
  return url.includes("mega.nz") || url.includes("mega.co.nz") || url.includes("vidmoly");
}
function getPlayUrl(s: Src): string {
  return s.directUrl || s.url || "";
}
function resolveUrl(url: string | undefined, base: string): string {
  if (!url) return "";
  if (url.startsWith("/")) return base + url;
  return url;
}

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
        <Ionicons name="play-circle" size={14} color={qs.text} />
      </View>
      <View style={{ flex: 1, minWidth: 0 }}>
        <View style={{ flexDirection: "row", alignItems: "center", gap: 6, flexWrap: "wrap" }}>
          <Text style={d.srcNum}>سيرفر {idx + 1}</Text>
          <View style={d.srcTag}><Text style={d.srcTagText}>{tag}</Text></View>
          {hasSub && <View style={d.srcSubBadge}><Text style={d.srcSubText}>ترجمة</Text></View>}
          {isHls && <View style={d.srcHlsBadge}><Text style={d.srcHlsText}>HLS</Text></View>}
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

  const titleStr   = title   ? decodeURIComponent(title)   : "";
  const englishStr = english ? decodeURIComponent(english) : "";
  const epNum      = parseInt(ep || "1", 10) || 1;
  const cover      = useLocalSearchParams<{ cover?: string }>().cover;
  const coverUrl   = cover ? decodeURIComponent(cover) : "";
  const totalEpsCount = totalEpsParam ? parseInt(totalEpsParam) || undefined : undefined;
  const displayTitle = englishStr || titleStr;

  /* ── State ── */
  const [screen,      setScreen]      = useState<Screen>("loading");
  const [sources,     setSources]     = useState<Src[]>([]);
  const [loading,     setLoading]     = useState(true);
  const [playingSrc,  setPlayingSrc]  = useState<Src | null>(null);
  const [resumeTime,  setResumeTime]  = useState(0);
  const [globalSubUrl, setGlobalSubUrl] = useState<string | undefined>();

  const abortRef          = useRef<AbortController | null>(null);
  const seenKeys          = useRef(new Set<string>());
  const lastTimeRef       = useRef(0);
  const autoPlayFiredRef  = useRef(false);
  const hasCachedRef      = useRef(false);

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

  /* ── SSE fetch ── */
  const fetchSources = useCallback(async () => {
    if (!anime) return;
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

    const base = getBaseUrl();
    const params = new URLSearchParams({
      anime: anime || "0",
      ep: String(epNum),
      title: titleStr,
      english: englishStr,
      format: format || "",
      year: year || "",
      episodes: episodes || "",
      native: native || "",
    });
    const url = `${base}/api/anime/sources-stream?${params}`;
    const freshSrcs: Src[] = [];

    try {
      const response = await secureStreamFetch(url, {
        signal: abortRef.current.signal as any,
      });

      if (!response.ok) {
        setLoading(false);
        setScreen(s => s === "loading" ? "picker" : s);
        return;
      }
      if (!response.body) throw new Error("No body");

      const reader  = response.body.getReader();
      const decoder = new TextDecoder();
      let buffer = "";

      while (true) {
        const { done, value } = await reader.read();
        if (done) break;
        buffer += decoder.decode(value, { stream: true });
        const lines = buffer.split("\n");
        buffer = lines.pop() || "";

        for (const line of lines) {
          if (!line.startsWith("data: ")) continue;
          const raw = line.slice(6).trim();

          /* [DONE] signal — not JSON */
          if (raw === "[DONE]") {
            setLoading(false);
            if (freshSrcs.length > 0 && srcCacheKey) {
              AsyncStorage.setItem(srcCacheKey, JSON.stringify({ sources: freshSrcs, ts: Date.now() })).catch(() => { });
            }
            setSources(prev => {
              if (prev.length === 0) setTimeout(() => setScreen("picker"), 0);
              return prev;
            });
            continue;
          }

          try {
            const data = JSON.parse(raw);
            if (data?.type === "done") {
              setLoading(false);
              setSources(prev => { if (prev.length === 0) setTimeout(() => setScreen("picker"), 0); return prev; });
              continue;
            }

            /* source event */
            if (!data.url && !data.directUrl) continue;
            const src: Src = {
              ...data,
              directUrl: resolveUrl(data.directUrl, base),
              url: resolveUrl(data.url, base),
            };
            const key = getPlayUrl(src);
            if (!key || seenKeys.current.has(key)) continue;
            seenKeys.current.add(key);
            freshSrcs.push(src);

            setSources(prev => {
              const next = [...prev, src];
              /* انتقل للـ picker فور وصول أول مصدر — بدون تشغيل تلقائي */
              setTimeout(() => setScreen(s => s === "loading" ? "picker" : s), 0);
              return next;
            });
          } catch { }
        }
      }
    } catch (e: any) {
      if (e?.name !== "AbortError") {
        setLoading(false);
        setScreen(s => s === "loading" ? "picker" : s);
      }
    } finally {
      setLoading(false);
      setSources(prev => {
        if (prev.length === 0) setTimeout(() => setScreen(s => s === "loading" ? "picker" : s), 0);
        return prev;
      });
    }
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [anime, epNum, titleStr, englishStr, format, year, episodes, native]);

  useEffect(() => {
    fetchSources();
    return () => abortRef.current?.abort();
  }, [fetchSources]);

  /* ── 30-second hard timeout ── */
  useEffect(() => {
    const t = setTimeout(() => { setScreen(s => s === "loading" ? "picker" : s); setLoading(false); }, 30000);
    return () => clearTimeout(t);
  }, [anime, ep]);

  /* ── Orientation lock ── */
  useEffect(() => {
    if (screen === "loading" || screen === "picker") {
      ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.PORTRAIT_UP).catch(() => { });
    } else if (screen === "embed") {
      ScreenOrientation.unlockAsync().catch(() => { });
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
    setScreen("loading");
    const coverParam = coverUrl ? `&cover=${encodeURIComponent(coverUrl)}` : "";
    router.replace(`/watch?anime=${anime}&ep=${n}&title=${encodeURIComponent(titleStr)}&english=${encodeURIComponent(englishStr)}&format=${encodeURIComponent(format || "")}${coverParam}${auto ? "&autoplay=1" : ""}`);
  }

  /* ── Play a source ── */
  const playSrc = useCallback((src: Src) => {
    setPlayingSrc(src);
    const thumb = coverUrl || (anime ? `https://img.anili.st/media/${anime}` : "");
    if (anime) addToHistory({ animeId: parseInt(anime), ep: epNum, title: titleStr, english: englishStr, thumbnail: thumb, updatedAt: Date.now() });
    /* على web: HLS → embed WebView مع hls-proxy URL مباشرة */
    if (Platform.OS === "web") {
      setScreen(isEmbedSrc(src) ? "embed" : "native");
    } else {
      setScreen(isDirectPlayable(src) ? "native" : "embed");
    }
  }, [anime, epNum, titleStr, englishStr, coverUrl]); // eslint-disable-line

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
    direct.sort((a, b) => TIER_RANK[getSrcQuality(b)] - TIER_RANK[getSrcQuality(a)]);
    return { directSrcs: direct, embedSrcs: embeds };
  }, [sources]);

  /* ── RiftPlayer sources (live, used for picker) ── */
  const riftSources = useMemo((): PlayerSource[] => {
    const base = getBaseUrl();
    const srcs = directSrcs;
    return srcs.map(s => ({
      url: getPlayUrl(s),
      label: `سيرفر · ${getSiteTag(s.site || "")}`,
      quality: getSrcQuality(s),
      subtitleUrl: s.subtitleUrl ? resolveUrl(s.subtitleUrl, base) : globalSubUrl,
      isArabic: ["shahiid","animelek","animedar","okanime","arabseed","animephoenix","animeify","animeday","mycima","topcinemaa","anime4up2","animewitcher"].includes(s.site || ""),
      wantsSmartSub: false,
      skipIntro: s.skipIntro,
      skipOutro: s.skipOutro,
    })).filter(s => s.url);
  }, [directSrcs, globalSubUrl]);

  /* ── Frozen sources: تُجمَّد لحظة اختيار المستخدم للمصدر ولا تتغير أثناء التشغيل.
     هذا يمنع تغيير مصفوفة sources في RiftPlayer بسبب وصول مصادر SSE جديدة.
     الإصلاح: نحفظ riftSources في ref حتى نقرأه داخل playSrc بدون إضافته للـ deps ── */
  const [frozenSources, setFrozenSources] = useState<PlayerSource[]>([]);
  const riftSourcesRef = useRef<PlayerSource[]>([]);
  useEffect(() => { riftSourcesRef.current = riftSources; }, [riftSources]);

  /* مسح frozenSources عند الخروج من المشغّل (picker/embed/loading) */
  useEffect(() => {
    if (screen !== "native") {
      setFrozenSources([]);
    }
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
        episodeTitle={etitle ? decodeURIComponent(etitle) : undefined}
        initialPosition={resumeTime}
        totalEps={totalEpsCount}
        onBack={() => { saveProgress(); setScreen("picker"); }}
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
    return (
      <View style={{ flex: 1, backgroundColor: "#000" }}>
        <WebView source={{ uri: embedUrl }} style={{ flex: 1 }} allowsFullscreenVideo allowsInlineMediaPlayback mediaPlaybackRequiresUserAction={false} javaScriptEnabled domStorageEnabled />
        <View style={[d.embedTopRow, { paddingTop: topPad + 4 }]}>
          <Pressable onPress={() => { saveProgress(); setScreen("picker"); }} style={d.playerBackBtn}>
            <Ionicons name="arrow-forward" size={18} color="#fff" />
          </Pressable>
          <Text style={[d.playerTitle, { flex: 1 }]} numberOfLines={1}>{displayTitle}</Text>
        </View>
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
          <Pressable
            onPress={() => { setSources([]); seenKeys.current.clear(); hasCachedRef.current = false; setScreen("loading"); fetchSources(); }}
            style={d.headerRefreshBtn}>
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

        {/* ── Empty state ── */}
        {!loading && allSrcs.length === 0 && (
          <View style={d.empty}>
            <View style={d.emptyIcon}>
              <Ionicons name="warning-outline" size={32} color="rgba(239,68,68,0.55)" />
            </View>
            <Text style={d.emptyTitle}>الحلقة {epNum} غير متوفرة بعد</Text>
            <Text style={d.emptySub}>المصادر العربية تتأخر عادةً ٢–٣ حلقات عن البث الأصلي.</Text>
            <Pressable onPress={() => { setSources([]); seenKeys.current.clear(); hasCachedRef.current = false; setScreen("loading"); fetchSources(); }} style={d.retryBtn}>
              <Ionicons name="refresh" size={15} color="#c4b5fd" />
              <Text style={d.retryBtnText}>إعادة المحاولة</Text>
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
  srcRow:        { flexDirection: "row", alignItems: "center", paddingHorizontal: 14, paddingVertical: 13, gap: 12, borderBottomWidth: StyleSheet.hairlineWidth, borderBottomColor: "rgba(255,255,255,0.05)" },
  srcIcon:       { width: 38, height: 38, borderRadius: 11, alignItems: "center", justifyContent: "center", borderWidth: 1 },
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

  /* Empty state */
  empty:         { alignItems: "center", justifyContent: "center", gap: 14, paddingVertical: 50 },
  emptyIcon:     { width: 72, height: 72, borderRadius: 36, backgroundColor: "rgba(239,68,68,0.08)", borderWidth: 1, borderColor: "rgba(239,68,68,0.18)", alignItems: "center", justifyContent: "center" },
  emptyTitle:    { fontSize: 15, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.45)" },
  emptySub:      { fontSize: 12, color: "rgba(255,255,255,0.22)", fontFamily: "Cairo_400Regular", textAlign: "center", lineHeight: 20, paddingHorizontal: 24 },
  retryBtn:      { flexDirection: "row", alignItems: "center", gap: 8, backgroundColor: "rgba(139,92,246,0.15)", borderRadius: 14, borderWidth: 1, borderColor: "rgba(139,92,246,0.28)", paddingHorizontal: 20, paddingVertical: 11 },
  retryBtnText:  { fontSize: 13, fontFamily: "Cairo_700Bold", color: "#c4b5fd" },
});
