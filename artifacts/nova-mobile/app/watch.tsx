import React, { useState, useEffect, useRef, useCallback, useMemo } from "react";
import {
  View, Text, Pressable, Image, ScrollView, ActivityIndicator,
  StyleSheet, Platform, Dimensions, Animated, Easing,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useVideoPlayer, VideoView } from "expo-video";
import WebView from "react-native-webview";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { useApp } from "@/context/AppContext";
import { getBaseUrl } from "@/utils/api";
import { secureStreamFetch } from "@/utils/secureApi";

const { width: W } = Dimensions.get("window");

/* ── Types ── */
type Quality = "1080p FHD" | "720p HD" | "360p SD";
type Screen = "loading" | "picker" | "native" | "embed";

interface Src {
  url?: string;
  directUrl?: string;
  qualityRank?: number;
  label?: string;
  server?: string;
  quality?: string;
  site?: string;
  isEmbed?: boolean;
  subtitleUrl?: string;
}

/* ── Scraper definitions (from web) ── */
const SCRAPER_DEFS: { site: string; tag: string; name: string; isEn?: boolean }[] = [
  { site: "shahiid",       tag: "SH",  name: "شاهيد أنمي" },
  { site: "animelek",      tag: "AL",  name: "أنمي ليك" },
  { site: "animedar",      tag: "AD",  name: "أنمي دار" },
  { site: "okanime",       tag: "OK",  name: "أوك أنمي" },
  { site: "ristoanime",    tag: "RS",  name: "ريستو أنمي" },
  { site: "animeify",      tag: "MG",  name: "أنمي فاي" },
  { site: "kawaii",        tag: "KW",  name: "كواي أنمي" },
  { site: "anikoto",       tag: "AK",  name: "AniKoto" },
  { site: "animepahe",     tag: "AP",  name: "AnimePahe" },
  { site: "animewitcher",  tag: "AW",  name: "AnimeWitcher" },
  { site: "anineko",       tag: "AN",  name: "AniNeko" },
  { site: "mitanime",      tag: "MT",  name: "ميتا أنمي" },
  { site: "animeday",      tag: "DY",  name: "أنمي داي" },
  { site: "seepanel",      tag: "SP",  name: "سي بانيل" },
  { site: "arabseed",      tag: "AS",  name: "عرب سيد" },
  { site: "animephoenix",  tag: "PH",  name: "فينكس أنمي" },
  { site: "starcima_anim", tag: "SC",  name: "StarCima" },
  { site: "videasy_anim",  tag: "VE",  name: "Videasy",    isEn: true },
  { site: "vidlink_anim",  tag: "VL",  name: "VidLink",    isEn: true },
  { site: "lordflix_anim", tag: "LF",  name: "LordFlix",   isEn: true },
  { site: "vyla_anim",     tag: "VY",  name: "Vyla",       isEn: true },
];

/* ── Quality helpers ── */
function getSrcQualityTier(s: Src): Quality {
  const rank = s.qualityRank ?? 0;
  const name = (s.label || s.server || s.quality || "").toLowerCase();
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
  if (u.includes("workers.dev")) return "Phoenix CDN";
  if (u.includes("filemoon")) return "FileMoon";
  if (u.includes("streamwish") || u.includes("wishembed")) return "StreamWish";
  if (u.includes("vidhide")) return "VidHide";
  if (u.includes("streamtape")) return "StreamTape";
  if (u.includes("sendvid")) return "SendVid";
  if (u.includes("vidmoly")) return "VidMoly";
  if (u.includes("hls-proxy")) return "HLS بث";
  if (u.includes("video-proxy")) return "مباشر MP4";
  if (u.match(/\.(mp4|mkv|webm)([?#]|$)/i)) return "مباشر";
  if (u.match(/\.m3u8([?#]|$)/i)) return "HLS";
  return "مصدر";
}

const QUALITY_STYLE: Record<Quality, { dot: string; badge: string; border: string; text: string; label: string }> = {
  "1080p FHD": { dot: "#fbbf24", badge: "rgba(251,191,36,0.10)", border: "rgba(251,191,36,0.26)", text: "rgba(253,224,71,0.95)", label: "جودة عالية جداً · FHD 1080" },
  "720p HD":   { dot: "#34d399", badge: "rgba(52,211,153,0.09)", border: "rgba(52,211,153,0.24)", text: "rgba(110,231,183,0.92)", label: "جودة عالية · HD 720" },
  "360p SD":   { dot: "#94a3b8", badge: "rgba(148,163,184,0.07)", border: "rgba(148,163,184,0.16)", text: "rgba(148,163,184,0.70)", label: "جودة متوسطة · SD 360" },
};
const Q_SHORT: Record<Quality, string> = { "1080p FHD": "FHD", "720p HD": "HD", "360p SD": "SD" };

const QUALITY_TIER_RANK: Record<Quality, number> = { "1080p FHD": 3, "720p HD": 2, "360p SD": 1 };

function normCdnHost(url: string): string {
  try {
    const base = url.startsWith("/") ? "https://x.com" + url : url;
    const host = new URL(base).hostname.replace(/^www\./, "");
    return host.replace(/^[a-z]\d*\./, "");
  } catch { return url.slice(0, 40); }
}

/* ── Spinning loader ── */
function SpinRing() {
  const rot = useRef(new Animated.Value(0)).current;
  useEffect(() => {
    Animated.loop(
      Animated.timing(rot, { toValue: 1, duration: 900, easing: Easing.linear, useNativeDriver: true })
    ).start();
  }, []);
  const rotate = rot.interpolate({ inputRange: [0, 1], outputRange: ["0deg", "360deg"] });
  return (
    <View style={{ width: 36, height: 36, position: "relative" }}>
      <View style={[StyleSheet.absoluteFill, { borderRadius: 18, borderWidth: 2, borderColor: "rgba(139,92,246,0.15)" }]} />
      <Animated.View style={[StyleSheet.absoluteFill, { borderRadius: 18, borderWidth: 2, borderColor: "transparent", borderTopColor: "#8B5CF6", borderRightColor: "rgba(139,92,246,0.4)", transform: [{ rotate }] }]} />
    </View>
  );
}

/* ── Loading screen ── */
function LoadingScreen({ cover, title, ep, onBack }: { cover?: string; title: string; ep: number; onBack: () => void }) {
  const insets = useSafeAreaInsets();
  return (
    <View style={{ flex: 1, backgroundColor: "#07070d" }}>
      {cover ? (
        <Image source={{ uri: cover }} style={[StyleSheet.absoluteFill, { opacity: 0.15 }]} blurRadius={Platform.OS === "ios" ? 24 : 8} resizeMode="cover" />
      ) : null}
      <LinearGradient
        colors={["rgba(7,7,13,0.85)", "rgba(7,7,13,0.5)", "rgba(7,7,13,0.92)"]}
        style={StyleSheet.absoluteFill}
      />
      {/* Back */}
      <Pressable onPress={onBack} style={[d.ldBackBtn, { top: (Platform.OS === "ios" ? insets.top : 16) + 4 }]}>
        <Ionicons name="arrow-back" size={18} color="rgba(255,255,255,0.6)" />
      </Pressable>
      {/* Content */}
      <View style={d.ldContent}>
        <Text style={d.ldPrayer}>اللهم صلِّ وسلِّم على نبينا محمد ﷺ</Text>
        {cover ? (
          <View style={d.ldPosterWrap}>
            <View style={d.ldGlow} />
            <Image source={{ uri: cover }} style={d.ldPoster} resizeMode="cover" />
          </View>
        ) : (
          <View style={[d.ldPoster, { backgroundColor: "rgba(30,10,60,0.9)", alignItems: "center", justifyContent: "center" }]}>
            <View style={{ width: 40, height: 40, borderRadius: 20, backgroundColor: "rgba(139,92,246,0.3)" }} />
          </View>
        )}
        <View style={{ alignItems: "center", gap: 8 }}>
          {title ? <Text style={d.ldTitle} numberOfLines={2}>{title}</Text> : null}
          <View style={d.ldEpBadge}>
            <Text style={d.ldEpText}>الحلقة {ep}</Text>
          </View>
        </View>
        <View style={{ alignItems: "center", gap: 12 }}>
          <SpinRing />
          <Text style={d.ldHint}>⏳ جاري تجهيز الحلقة، قد يستغرق ذلك بضع ثوانٍ. شكراً لصبرك.</Text>
        </View>
      </View>
    </View>
  );
}

/* ── Source row ── */
function SourceRow({ src, idx, globalIdx, onPlay }: { src: Src; idx: number; globalIdx: number; onPlay: (s: Src) => void }) {
  const url = src.directUrl || src.url || "";
  const def = SCRAPER_DEFS.find(d => d.site === src.site);
  const tag = def?.tag || "??";
  const cdn = getCdnDisplayName(url);
  const q = getSrcQualityTier(src);
  const qs = QUALITY_STYLE[q];
  return (
    <Pressable onPress={() => onPlay(src)} style={d.srcRow}>
      <View style={[d.srcIcon, { backgroundColor: qs.badge, borderColor: qs.border }]}>
        <Ionicons name={src.isEmbed ? "tv-outline" : "monitor-outline"} size={14} color={qs.text} />
      </View>
      <View style={d.srcInfo}>
        <View style={{ flexDirection: "row", alignItems: "center", gap: 6 }}>
          <Text style={d.srcNum}>سيرفر {globalIdx + 1}</Text>
          <View style={d.srcTag}><Text style={d.srcTagText}>{tag}</Text></View>
          {def?.isEn && (
            <View style={d.srcEnBadge}><Text style={d.srcEnText}>🎌 ياباني</Text></View>
          )}
        </View>
        <Text style={d.srcCdn}>{cdn}</Text>
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

/* ═══════════════════════════════════════ MAIN ═══ */
export default function WatchScreen() {
  const { anime, ep, title, english } = useLocalSearchParams<{
    anime: string; ep: string; title: string; english: string;
  }>();
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { addToHistory } = useApp();
  const topPad = Platform.OS === "ios" ? insets.top : 16;

  const [screen, setScreen]     = useState<Screen>("loading");
  const [sources, setSources]   = useState<Src[]>([]);
  const [loading, setLoading]   = useState(true);
  const [playingSrc, setPlayingSrc] = useState<Src | null>(null);
  const [cover, setCover]       = useState<string>("");
  const [resumeTime, setResumeTime] = useState(0);
  const abortRef = useRef<AbortController | null>(null);
  const autoSelectedRef = useRef(false);
  const lastSaveTs = useRef(0);
  const lastTimeRef = useRef(0);

  const epNum = parseInt(ep || "1");
  const titleStr = decodeURIComponent(title || "");
  const englishStr = decodeURIComponent(english || "");
  const displayTitle = englishStr || titleStr;

  /* Progress key */
  const progressKey = `wp-${anime}-${epNum}`;

  /* Load cover + resume time */
  useEffect(() => {
    if (anime) {
      setCover(`https://img.anili.st/media/${anime}`);
      AsyncStorage.getItem(progressKey).then(v => { if (v) setResumeTime(parseFloat(v) || 0); });
    }
  }, [anime, progressKey]);

  /* ── SSE fetch ── */
  const fetchSources = useCallback(async () => {
    if (!anime || !ep) return;
    setLoading(true);
    setSources([]);
    setScreen("loading");
    autoSelectedRef.current = false;

    abortRef.current?.abort();
    abortRef.current = new AbortController();

    const base = getBaseUrl();
    const url = `${base}/api/anime/sources-stream?title=${encodeURIComponent(titleStr)}&english=${encodeURIComponent(englishStr)}&ep=${ep}`;

    try {
      const response = await secureStreamFetch(url, { signal: abortRef.current.signal });
      const reader = response.body!.getReader();
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
          try {
            const data = JSON.parse(line.slice(6));
            if (data.type === "source" && (data.directUrl || data.url)) {
              const src: Src = data;
              setSources(prev => {
                const key = src.directUrl || src.url;
                if (prev.find(s => (s.directUrl || s.url) === key)) return prev;
                const next = [...prev, src];
                /* Auto-play: pick best direct source */
                if (!autoSelectedRef.current && shouldShowSrc(src)) {
                  autoSelectedRef.current = true;
                  /* Schedule setScreen on next tick to avoid state in reducer */
                  setTimeout(() => {
                    setPlayingSrc(src);
                    setScreen("native");
                  }, 0);
                } else if (!autoSelectedRef.current && isEmbedFallback(src)) {
                  autoSelectedRef.current = true;
                  setTimeout(() => {
                    setPlayingSrc(src);
                    setScreen("embed");
                  }, 0);
                }
                /* Always show picker too — even if auto-playing, user can switch */
                if (next.length === 1) setTimeout(() => setScreen(s => s === "loading" ? "picker" : s), 0);
                return next;
              });
            } else if (data.type === "done") {
              setLoading(false);
              setSources(prev => {
                if (prev.length === 0) {
                  setTimeout(() => setScreen("picker"), 0);
                }
                return prev;
              });
            } else if (data.type === "error") {
              setLoading(false);
            }
          } catch {}
        }
      }
    } catch (e: any) {
      if (e?.name !== "AbortError") setLoading(false);
    } finally {
      setLoading(false);
    }
  }, [anime, ep, titleStr, englishStr]);

  useEffect(() => {
    fetchSources();
    return () => abortRef.current?.abort();
  }, [fetchSources]);

  /* Add to history when playing */
  useEffect(() => {
    if (playingSrc && anime) {
      addToHistory({
        animeId: parseInt(anime), ep: epNum,
        title: titleStr, english: englishStr,
        thumbnail: cover, updatedAt: Date.now(),
      });
    }
  }, [playingSrc]);

  /* ── Source grouping ── */
  const { directSrcs, embedSrcs } = useMemo(() => {
    const seen = new Set<string>();
    const direct: Src[] = [];
    const embeds: Src[] = [];
    for (const s of sources) {
      const key = s.directUrl || s.url || "";
      if (seen.has(normCdnHost(key))) continue;
      seen.add(normCdnHost(key));
      if (shouldShowSrc(s)) direct.push(s);
      else if (isEmbedFallback(s)) embeds.push(s);
    }
    direct.sort((a, b) => {
      const ta = QUALITY_TIER_RANK[getSrcQualityTier(a)];
      const tb = QUALITY_TIER_RANK[getSrcQualityTier(b)];
      if (ta !== tb) return tb - ta;
      return (b.qualityRank ?? 0) - (a.qualityRank ?? 0);
    });
    return { directSrcs: direct, embedSrcs: embeds };
  }, [sources]);

  const grouped: Record<Quality, Src[]> = useMemo(() => ({
    "1080p FHD": directSrcs.filter(s => getSrcQualityTier(s) === "1080p FHD"),
    "720p HD":   directSrcs.filter(s => getSrcQualityTier(s) === "720p HD"),
    "360p SD":   directSrcs.filter(s => getSrcQualityTier(s) === "360p SD"),
  }), [directSrcs]);

  /* ── Save progress ── */
  const saveProgress = useCallback(async () => {
    const t = lastTimeRef.current;
    if (t > 10) {
      await AsyncStorage.setItem(progressKey, String(Math.floor(t)));
    }
  }, [progressKey]);

  /* ── Navigate episode ── */
  function goEp(n: number) {
    saveProgress();
    router.replace(`/watch?anime=${anime}&ep=${n}&title=${encodeURIComponent(titleStr)}&english=${encodeURIComponent(englishStr)}`);
  }

  /* ── Player ── */
  const playUrl = (playingSrc?.directUrl || playingSrc?.url) ?? "";
  const player = useVideoPlayer(
    screen === "native" && playUrl ? playUrl : null,
    (p) => {
      p.loop = false;
      if (resumeTime > 0) {
        try { (p as any).currentTime = resumeTime; } catch {}
      }
      p.play();
    }
  );

  /* ── EpNav shared ── */
  const EpNav = (
    <View style={d.epNav}>
      <Pressable onPress={() => epNum > 1 && goEp(epNum - 1)}
        style={[d.epNavBtn, epNum <= 1 && { opacity: 0.25 }]} disabled={epNum <= 1}>
        <Ionicons name="chevron-forward" size={14} color="rgba(255,255,255,0.65)" />
        <Text style={d.epNavText}>السابقة</Text>
      </Pressable>
      <View style={d.epBadge}>
        <Text style={d.epBadgeText}>الحلقة {epNum}</Text>
      </View>
      <Pressable onPress={() => goEp(epNum + 1)} style={d.epNavBtn}>
        <Text style={d.epNavText}>التالية</Text>
        <Ionicons name="chevron-back" size={14} color="rgba(196,181,253,0.92)" />
      </Pressable>
    </View>
  );

  /* ══════════════════ SCREENS ══════════════════ */

  /* Loading */
  if (screen === "loading") {
    return (
      <LoadingScreen
        cover={cover} title={displayTitle} ep={epNum}
        onBack={() => router.back()}
      />
    );
  }

  /* Native player */
  if (screen === "native" && playingSrc) {
    return (
      <View style={{ flex: 1, backgroundColor: "#000" }}>
        <VideoView
          player={player}
          style={{ flex: 1 }}
          allowsFullscreen
          allowsPictureInPicture
          contentFit="contain"
          nativeControls
        />
        {/* Top overlay */}
        <LinearGradient
          colors={["rgba(0,0,0,0.85)", "transparent"]}
          style={[d.playerTopGrad, { paddingTop: topPad + 4 }]}
          pointerEvents="box-none"
        >
          <View style={d.playerTopRow}>
            <Pressable onPress={() => { saveProgress(); setScreen("picker"); }} style={d.playerBackBtn}>
              <Ionicons name="arrow-back" size={18} color="#fff" />
            </Pressable>
            <View style={{ flex: 1 }}>
              <Text style={d.playerTitle} numberOfLines={1}>{displayTitle}</Text>
              <Text style={d.playerEp}>الحلقة {epNum}</Text>
            </View>
            <Pressable onPress={() => { saveProgress(); setScreen("picker"); }} style={d.srcSwitchBtn}>
              <Ionicons name="layers-outline" size={16} color="#fff" />
              <Text style={d.srcSwitchText}>السيرفرات</Text>
            </Pressable>
          </View>
        </LinearGradient>
        {/* Bottom ep nav */}
        <LinearGradient
          colors={["transparent", "rgba(0,0,0,0.85)"]}
          style={d.playerBottomGrad}
          pointerEvents="box-none"
        >
          {EpNav}
        </LinearGradient>
      </View>
    );
  }

  /* Embed player */
  if (screen === "embed" && playingSrc) {
    const embedUrl = playingSrc.directUrl || playingSrc.url || "";
    return (
      <View style={{ flex: 1, backgroundColor: "#000" }}>
        <WebView
          source={{ uri: embedUrl }}
          style={{ flex: 1 }}
          allowsFullscreenVideo
          allowsInlineMediaPlayback
          mediaPlaybackRequiresUserAction={false}
          javaScriptEnabled
          domStorageEnabled
        />
        {/* Top overlay */}
        <View style={[d.embedTopRow, { paddingTop: topPad + 4 }]}>
          <Pressable onPress={() => setScreen("picker")} style={d.playerBackBtn}>
            <Ionicons name="arrow-back" size={18} color="#fff" />
          </Pressable>
          <Text style={[d.playerTitle, { flex: 1 }]} numberOfLines={1}>{displayTitle}</Text>
          <Pressable onPress={() => setScreen("picker")} style={d.srcSwitchBtn}>
            <Ionicons name="layers-outline" size={16} color="#fff" />
          </Pressable>
        </View>
      </View>
    );
  }

  /* ══ Source Picker ══ */
  const hasSrcs = directSrcs.length > 0;
  const hasEmbeds = embedSrcs.length > 0;

  function handlePlaySrc(src: Src) {
    setPlayingSrc(src);
    if (src.isEmbed || (!src.directUrl && !src.url?.match(/\.(m3u8|mp4|mkv|webm)/i) && src.url?.startsWith("https://"))) {
      setScreen("embed");
    } else {
      setScreen("native");
    }
  }

  let globalIdx = 0;

  return (
    <View style={{ flex: 1, backgroundColor: "#07070d" }}>
      {/* Banner background */}
      {cover ? (
        <Image source={{ uri: cover }} style={[StyleSheet.absoluteFill, { opacity: 0.08 }]} blurRadius={Platform.OS === "ios" ? 20 : 6} resizeMode="cover" />
      ) : null}

      <ScrollView showsVerticalScrollIndicator={false} contentContainerStyle={{ paddingBottom: 120 }}>

        {/* ── Top bar ── */}
        <View style={[d.pickerTop, { paddingTop: topPad + 4 }]}>
          <Pressable onPress={() => router.back()} style={d.pickerBackBtn}>
            <Ionicons name="arrow-back" size={18} color="rgba(255,255,255,0.7)" />
          </Pressable>
          {EpNav}
        </View>

        {/* ── Anime mini-card ── */}
        <View style={d.animeCard}>
          {cover ? (
            <Image source={{ uri: cover }} style={d.animeCardCover} resizeMode="cover" />
          ) : null}
          <View style={d.animeCardBody}>
            <Text style={d.animeCardGlow} />
            <Text style={d.animeCardTitle} numberOfLines={2}>{displayTitle}</Text>
            {titleStr && titleStr !== displayTitle ? (
              <Text style={d.animeCardAr} numberOfLines={1}>{titleStr}</Text>
            ) : null}
            <View style={d.animeCardEpBadge}>
              <Text style={d.animeCardEpText}>الحلقة {epNum}</Text>
            </View>
            {resumeTime > 10 ? (
              <Text style={d.resumeHint}>▶ استئناف من {Math.floor(resumeTime / 60)}:{String(Math.floor(resumeTime % 60)).padStart(2,"0")}</Text>
            ) : null}
          </View>
        </View>

        {/* ── Sources header ── */}
        <View style={d.srcHeader}>
          <View style={{ flexDirection: "row", alignItems: "center", gap: 8 }}>
            <View style={d.srcHeaderBar} />
            <Text style={d.srcHeaderTitle}>مصادر المشاهدة</Text>
          </View>
          <View style={{ flexDirection: "row", alignItems: "center", gap: 8 }}>
            {(hasSrcs || hasEmbeds) && (
              <View style={d.srcCountBadge}>
                <Text style={d.srcCountText}>{directSrcs.length + embedSrcs.length} مصدر</Text>
              </View>
            )}
            {loading && <ActivityIndicator size="small" color="#8B5CF6" />}
          </View>
        </View>

        {/* Warning banner */}
        {(hasSrcs || hasEmbeds) && (
          <View style={d.warnBanner}>
            <Text style={{ fontSize: 13 }}>⚠️</Text>
            <Text style={d.warnBannerText}><Text style={{ color: "rgba(253,224,71,0.8)", fontFamily: "Cairo_800ExtraBold" }}>السيرفر لا يعمل؟</Text> جرّب سيرفراً آخر.</Text>
          </View>
        )}

        {/* ── Main sources grouped by quality ── */}
        {hasSrcs ? (
          (["1080p FHD", "720p HD", "360p SD"] as Quality[]).map(q => {
            const srcs = grouped[q];
            if (!srcs.length) return null;
            const qs = QUALITY_STYLE[q];
            const sectionStart = globalIdx;
            globalIdx += srcs.length;
            return (
              <View key={q}>
                {/* Quality section header */}
                <View style={d.qHeader}>
                  <View style={[d.qDot, { backgroundColor: qs.dot, shadowColor: qs.dot, shadowOpacity: 0.7, shadowRadius: 4, shadowOffset: { width: 0, height: 0 } }]} />
                  <Text style={[d.qLabel, { color: qs.text }]}>{qs.label}</Text>
                  <View style={[d.qCountBadge, { backgroundColor: qs.badge, borderColor: qs.border }]}>
                    <Text style={[d.qCountText, { color: qs.text }]}>{srcs.length}</Text>
                  </View>
                </View>
                <View style={d.srcSection}>
                  {srcs.map((src, i) => (
                    <SourceRow key={`${src.site}-${i}`} src={src} idx={i} globalIdx={sectionStart + i} onPlay={handlePlaySrc} />
                  ))}
                </View>
              </View>
            );
          })
        ) : !loading ? (
          <View style={d.noSrcs}>
            <View style={d.noSrcsIcon}><Ionicons name="warning-outline" size={28} color="rgba(239,68,68,0.5)" /></View>
            <Text style={d.noSrcsTitle}>الحلقة {epNum} غير متوفرة بعد</Text>
            <Text style={d.noSrcsHint}>المصادر العربية تتأخر عادةً ٢–٣ حلقات عن البث الأصلي.</Text>
            <Pressable onPress={fetchSources} style={d.retryBtn}>
              <Text style={d.retryText}>إعادة المحاولة</Text>
            </Pressable>
          </View>
        ) : (
          <View style={d.fetchingMsg}>
            <Text style={d.fetchingText}>جاري البحث في المصادر...</Text>
          </View>
        )}

        {/* ── Embed fallbacks ── */}
        {hasEmbeds && (
          <View style={{ marginTop: 20 }}>
            <View style={d.srcHeader}>
              <View style={{ flexDirection: "row", alignItems: "center", gap: 8 }}>
                <View style={[d.srcHeaderBar, { backgroundColor: "#6366f1" }]} />
                <Text style={d.srcHeaderTitle}>سيرفرات احتياطية</Text>
              </View>
              <View style={[d.srcCountBadge, { backgroundColor: "rgba(99,102,241,0.12)", borderColor: "rgba(99,102,241,0.28)" }]}>
                <Text style={[d.srcCountText, { color: "rgba(165,180,252,0.8)" }]}>{embedSrcs.length}</Text>
              </View>
            </View>
            <View style={d.embedNote}>
              <Text style={{ fontSize: 12 }}>ℹ️</Text>
              <Text style={d.embedNoteText}>تُشغَّل داخل مشغّل مدمج — جرّبها إن لم تعمل المصادر المباشرة</Text>
            </View>
            <View style={d.srcSection}>
              {embedSrcs.map((src, i) => (
                <SourceRow key={`embed-${i}`} src={src} idx={i} globalIdx={globalIdx + i} onPlay={handlePlaySrc} />
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
  /* Loading screen */
  ldBackBtn: { position: "absolute", right: 16, width: 36, height: 36, borderRadius: 18, backgroundColor: "rgba(0,0,0,0.45)", alignItems: "center", justifyContent: "center", borderWidth: 1, borderColor: "rgba(255,255,255,0.12)", zIndex: 10 },
  ldContent: { flex: 1, alignItems: "center", justifyContent: "center", gap: 20, paddingHorizontal: 24 },
  ldPrayer: { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.85)", textAlign: "center" },
  ldPosterWrap: { position: "relative", alignItems: "center", justifyContent: "center" },
  ldGlow: { position: "absolute", width: 200, height: 260, borderRadius: 32, backgroundColor: "rgba(139,92,246,0.22)" },
  ldPoster: { width: 140, height: 198, borderRadius: 20, borderWidth: 1, borderColor: "rgba(255,255,255,0.08)" },
  ldTitle: { fontSize: 18, fontFamily: "Cairo_800ExtraBold", color: "#fff", textAlign: "center", lineHeight: 26 },
  ldEpBadge: { paddingHorizontal: 14, paddingVertical: 5, borderRadius: 20, backgroundColor: "rgba(124,58,237,0.22)", borderWidth: 1, borderColor: "rgba(139,92,246,0.3)" },
  ldEpText: { fontSize: 12, fontFamily: "Cairo_700Bold", color: "rgba(196,181,253,0.9)" },
  ldHint: { fontSize: 13, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.75)", textAlign: "center", lineHeight: 22, paddingHorizontal: 8 },
  /* Native player */
  playerTopGrad: { position: "absolute", top: 0, left: 0, right: 0, paddingBottom: 40, zIndex: 10 },
  playerTopRow: { flexDirection: "row", alignItems: "center", paddingHorizontal: 14, gap: 10 },
  playerBackBtn: { width: 36, height: 36, borderRadius: 14, backgroundColor: "rgba(0,0,0,0.5)", alignItems: "center", justifyContent: "center", borderWidth: 1, borderColor: "rgba(255,255,255,0.15)" },
  playerTitle: { fontSize: 13, fontFamily: "Cairo_700Bold", color: "#fff" },
  playerEp: { fontSize: 10, color: "rgba(255,255,255,0.45)", fontFamily: "Cairo_400Regular" },
  srcSwitchBtn: { flexDirection: "row", alignItems: "center", gap: 4, paddingHorizontal: 10, paddingVertical: 6, backgroundColor: "rgba(0,0,0,0.5)", borderRadius: 10, borderWidth: 1, borderColor: "rgba(255,255,255,0.12)" },
  srcSwitchText: { fontSize: 10, color: "#fff", fontFamily: "Cairo_700Bold" },
  playerBottomGrad: { position: "absolute", bottom: 0, left: 0, right: 0, paddingTop: 40, zIndex: 10 },
  /* Embed player */
  embedTopRow: { position: "absolute", top: 0, left: 0, right: 0, flexDirection: "row", alignItems: "center", paddingHorizontal: 14, paddingBottom: 10, backgroundColor: "rgba(0,0,0,0.7)", gap: 10, zIndex: 10 },
  /* Episode nav */
  epNav: { flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 8, paddingHorizontal: 14, paddingVertical: 10 },
  epNavBtn: { flexDirection: "row", alignItems: "center", gap: 4, paddingHorizontal: 12, paddingVertical: 6, backgroundColor: "rgba(0,0,0,0.45)", borderRadius: 12, borderWidth: 1, borderColor: "rgba(255,255,255,0.14)" },
  epNavText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.65)" },
  epBadge: { paddingHorizontal: 12, paddingVertical: 6, backgroundColor: "rgba(109,40,217,0.55)", borderRadius: 12, borderWidth: 1, borderColor: "rgba(139,92,246,0.38)" },
  epBadgeText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "rgba(196,181,253,0.92)" },
  /* Picker */
  pickerTop: { flexDirection: "row", alignItems: "center", paddingHorizontal: 12, paddingBottom: 8, gap: 6 },
  pickerBackBtn: { width: 36, height: 36, borderRadius: 14, backgroundColor: "rgba(0,0,0,0.45)", alignItems: "center", justifyContent: "center", borderWidth: 1, borderColor: "rgba(255,255,255,0.14)" },
  animeCard: { flexDirection: "row", marginHorizontal: 16, marginBottom: 16, gap: 14, alignItems: "center" },
  animeCardCover: { width: 64, height: 90, borderRadius: 14, borderWidth: 1, borderColor: "rgba(255,255,255,0.1)" },
  animeCardBody: { flex: 1, gap: 6 },
  animeCardGlow: {},
  animeCardTitle: { fontSize: 15, fontFamily: "Cairo_800ExtraBold", color: "#fff", lineHeight: 22 },
  animeCardAr: { fontSize: 10, color: "rgba(255,255,255,0.3)", fontFamily: "Cairo_400Regular" },
  animeCardEpBadge: { alignSelf: "flex-start", paddingHorizontal: 10, paddingVertical: 3, backgroundColor: "rgba(124,58,237,0.18)", borderRadius: 8, borderWidth: 1, borderColor: "rgba(139,92,246,0.3)" },
  animeCardEpText: { fontSize: 10, fontFamily: "Cairo_800ExtraBold", color: "rgba(196,181,253,0.9)" },
  resumeHint: { fontSize: 9, color: "rgba(52,211,153,0.7)", fontFamily: "Cairo_700Bold" },
  srcHeader: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", paddingHorizontal: 16, marginBottom: 8 },
  srcHeaderBar: { width: 4, height: 16, backgroundColor: "#8B5CF6", borderRadius: 2 },
  srcHeaderTitle: { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  srcCountBadge: { paddingHorizontal: 8, paddingVertical: 3, borderRadius: 8, backgroundColor: "rgba(52,211,153,0.12)", borderWidth: 1, borderColor: "rgba(52,211,153,0.26)" },
  srcCountText: { fontSize: 10, fontFamily: "Cairo_800ExtraBold", color: "rgba(110,231,183,0.82)" },
  warnBanner: { flexDirection: "row", alignItems: "center", gap: 8, marginHorizontal: 16, marginBottom: 12, paddingHorizontal: 12, paddingVertical: 8, borderRadius: 12, backgroundColor: "rgba(251,191,36,0.07)", borderWidth: 1, borderColor: "rgba(251,191,36,0.15)" },
  warnBannerText: { flex: 1, fontSize: 10, fontFamily: "Cairo_400Regular", color: "rgba(253,224,71,0.55)", lineHeight: 16 },
  qHeader: { flexDirection: "row", alignItems: "center", gap: 8, paddingHorizontal: 16, paddingTop: 12, paddingBottom: 6 },
  qDot: { width: 7, height: 7, borderRadius: 4 },
  qLabel: { flex: 1, fontSize: 10, fontFamily: "Cairo_700Bold" },
  qCountBadge: { paddingHorizontal: 6, paddingVertical: 2, borderRadius: 6, borderWidth: 1 },
  qCountText: { fontSize: 9, fontFamily: "Cairo_800ExtraBold" },
  srcSection: { marginHorizontal: 12, borderRadius: 16, overflow: "hidden", borderWidth: 1, borderColor: "rgba(255,255,255,0.05)", backgroundColor: "rgba(255,255,255,0.015)" },
  srcRow: { flexDirection: "row", alignItems: "center", paddingHorizontal: 14, paddingVertical: 12, gap: 10, borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.04)" },
  srcIcon: { width: 34, height: 34, borderRadius: 12, alignItems: "center", justifyContent: "center", borderWidth: 1 },
  srcInfo: { flex: 1, gap: 3 },
  srcNum: { fontSize: 12, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.9)" },
  srcTag: { paddingHorizontal: 6, paddingVertical: 2, borderRadius: 6, backgroundColor: "rgba(255,255,255,0.1)", borderWidth: 1, borderColor: "rgba(255,255,255,0.18)" },
  srcTagText: { fontSize: 9, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.8)", fontStyle: "normal" },
  srcEnBadge: { paddingHorizontal: 5, paddingVertical: 2, borderRadius: 6, backgroundColor: "rgba(59,130,246,0.14)", borderWidth: 1, borderColor: "rgba(59,130,246,0.3)" },
  srcEnText: { fontSize: 8, fontFamily: "Cairo_700Bold", color: "rgba(147,197,253,0.9)" },
  srcCdn: { fontSize: 9, color: "rgba(255,255,255,0.3)", fontFamily: "Cairo_400Regular" },
  srcRight: { flexDirection: "row", alignItems: "center", gap: 6 },
  srcQBadge: { paddingHorizontal: 5, paddingVertical: 2, borderRadius: 5, borderWidth: 1 },
  srcQText: { fontSize: 8, fontFamily: "Cairo_800ExtraBold" },
  srcPlayBtn: { flexDirection: "row", alignItems: "center", gap: 3, paddingHorizontal: 10, paddingVertical: 6, borderRadius: 10, backgroundColor: "#7C3AED", borderWidth: 1, borderColor: "rgba(167,139,250,0.25)" },
  srcPlayText: { fontSize: 10, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  noSrcs: { alignItems: "center", paddingVertical: 40, gap: 12, paddingHorizontal: 24 },
  noSrcsIcon: { width: 56, height: 56, borderRadius: 20, backgroundColor: "rgba(239,68,68,0.08)", borderWidth: 1, borderColor: "rgba(239,68,68,0.18)", alignItems: "center", justifyContent: "center" },
  noSrcsTitle: { fontSize: 15, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.7)" },
  noSrcsHint: { fontSize: 12, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.28)", textAlign: "center", lineHeight: 20 },
  retryBtn: { paddingHorizontal: 20, paddingVertical: 10, borderRadius: 14, backgroundColor: "rgba(124,58,237,0.18)", borderWidth: 1, borderColor: "rgba(124,58,237,0.3)" },
  retryText: { fontSize: 12, fontFamily: "Cairo_800ExtraBold", color: "rgba(196,181,253,0.9)" },
  fetchingMsg: { alignItems: "center", paddingVertical: 24 },
  fetchingText: { fontSize: 13, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.3)" },
  embedNote: { flexDirection: "row", alignItems: "center", gap: 8, marginHorizontal: 16, marginBottom: 8, paddingHorizontal: 12, paddingVertical: 8, borderRadius: 12, backgroundColor: "rgba(99,102,241,0.07)", borderWidth: 1, borderColor: "rgba(99,102,241,0.18)" },
  embedNoteText: { flex: 1, fontSize: 10, fontFamily: "Cairo_400Regular", color: "rgba(165,180,252,0.6)", lineHeight: 16 },
});
