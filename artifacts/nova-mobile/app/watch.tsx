import React, { useState, useEffect, useRef, useCallback, useMemo } from "react";
import {
  View, Text, Pressable, Image, ScrollView, ActivityIndicator,
  StyleSheet, Platform, Dimensions, Animated, Easing, Linking,
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

const { width: W } = Dimensions.get("window");

/* ── Types ── */
type Quality = "1080p FHD" | "720p HD" | "360p SD";
type Screen  = "loading" | "picker" | "native" | "embed";

interface Src {
  url?: string; directUrl?: string; qualityRank?: number;
  label?: string; server?: string; quality?: string;
  site?: string; isEmbed?: boolean; subtitleUrl?: string;
  name?: string;
  skipIntro?: { start: number; end: number };
  skipOutro?: { start: number; end: number };
}


/* ── Scraper definitions ── */
const SCRAPER_DEFS: { site: string; tag: string; name: string; desc: string; isEn?: boolean }[] = [
  { site: "shahiid",      tag: "SH", name: "شاهيد أنمي",  desc: "عربي مدبلج / مترجم" },
  { site: "animelek",     tag: "AL", name: "أنمي ليك",    desc: "عربي مدبلج / مترجم" },
  { site: "animedar",     tag: "AD", name: "أنمي دار",    desc: "عربي مترجم"          },
  { site: "okanime",      tag: "OK", name: "أوك أنمي",    desc: "عربي مترجم"          },
  { site: "ristoanime",   tag: "RS", name: "ريستو أنمي",  desc: "عربي مترجم"          },
  { site: "animeify",     tag: "MG", name: "أنمي فاي",    desc: "عربي · ميغا"         },
  { site: "kawaii",       tag: "KW", name: "كواي أنمي",   desc: "1080p · مباشر"       },
  { site: "anikoto",      tag: "AK", name: "AniKoto",      desc: "ياباني مترجم · 1080p" },
  { site: "animepahe",    tag: "AP", name: "AnimePahe",    desc: "ياباني مترجم · HLS نظيف" },
  { site: "animewitcher", tag: "AW", name: "AnimeWitcher", desc: "PD/ST · مباشر"       },
  { site: "anineko",      tag: "AN", name: "AniNeko",      desc: "ياباني مترجم · HLS"  },
  { site: "mitanime",     tag: "MT", name: "ميتا أنمي",   desc: "ياباني مترجم"        },
  { site: "animeday",     tag: "DY", name: "أنمي داي",    desc: "عربي مدبلج · HLS مباشر" },
  { site: "seepanel",     tag: "SP", name: "سي بانيل",    desc: "عربي مدبلج · HLS نظيف"  },
  { site: "arabseed",     tag: "AS", name: "عرب سيد",      desc: "عربي مدبلج/مترجم · MP4" },
  { site: "animephoenix", tag: "PH", name: "فينكس أنمي",  desc: "1080p · MKV مباشر"   },
  // starcima_anim: محذوف من الأنمي — يرسل صوتاً هندياً
  { site: "videasy_anim", tag: "VE", name: "Videasy",      desc: "TMDB · ترجمة عربية", isEn: true },
  { site: "vidlink_anim", tag: "VL", name: "VidLink",      desc: "TMDB · ترجمة عربية", isEn: true },
  { site: "lordflix_anim",tag: "LF", name: "LordFlix",     desc: "TMDB · ترجمة عربية", isEn: true },
  { site: "vyla_anim",    tag: "VY", name: "Vyla",         desc: "TMDB · HLS · ترجمة", isEn: true },
];


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
  if (u.includes("workers.dev"))                        return "Phoenix CDN";
  if (u.includes("filemoon"))                           return "FileMoon";
  if (u.includes("streamwish") || u.includes("wishembed")) return "StreamWish";
  if (u.includes("vidhide"))                            return "VidHide";
  if (u.includes("streamtape"))                         return "StreamTape";
  if (u.includes("sendvid"))                            return "SendVid";
  if (u.includes("vidmoly"))                            return "VidMoly";
  if (u.includes("hls-proxy"))                          return "HLS بث";
  if (u.includes("video-proxy"))                        return "مباشر MP4";
  if (u.match(/\.(mp4|mkv|webm)([?#]|$)/i))            return "مباشر";
  if (u.match(/\.m3u8([?#]|$)/i))                      return "HLS";
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
const QUALITY_TIER_RANK: Record<Quality, number> = { "1080p FHD": 3, "720p HD": 2, "360p SD": 1 };

function normCdnHost(url: string): string {
  try {
    if (url.includes("/api/anime/hls-proxy") || url.includes("/api/anime/video-proxy") || url.includes("/api/anime/seg-proxy")) {
      const qIdx = url.indexOf("?");
      if (qIdx !== -1) {
        const params = new URLSearchParams(url.slice(qIdx + 1));
        const inner = params.get("url") || "";
        if (inner) {
          const host = new URL(inner).hostname.replace(/^www\./, "");
          return host.replace(/^[a-z]\d*\./, "");
        }
      }
    }
    const base = url.startsWith("/") ? "https://x.com" + url : url;
    const host = new URL(base).hostname.replace(/^www\./, "");
    return host.replace(/^[a-z]\d*\./, "");
  } catch { return url; }
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
      {cover ? <Image source={{ uri: cover }} style={[StyleSheet.absoluteFill, { opacity: 0.15 }]} blurRadius={Platform.OS === "ios" ? 24 : 8} resizeMode="cover" /> : null}
      <LinearGradient colors={["rgba(7,7,13,0.85)", "rgba(7,7,13,0.5)", "rgba(7,7,13,0.92)"]} style={StyleSheet.absoluteFill} />
      <Pressable onPress={onBack} style={[d.ldBackBtn, { top: (Platform.OS === "ios" ? insets.top : 16) + 4 }]}>
        <Ionicons name="arrow-back" size={18} color="rgba(255,255,255,0.6)" />
      </Pressable>
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
          <View style={d.ldEpBadge}><Text style={d.ldEpText}>الحلقة {ep}</Text></View>
        </View>
        <View style={{ alignItems: "center", gap: 12 }}>
          <SpinRing />
          <Text style={d.ldHint}>⏳ جاري تجهيز الحلقة، قد يستغرق ذلك بضع ثوانٍ. شكراً لصبرك.</Text>
        </View>
      </View>
    </View>
  );
}

/* ── Source row (matches web design) ── */
function SourceRow({ src, globalIdx, onPlay }: { src: Src; globalIdx: number; onPlay: (s: Src) => void }) {
  const url = src.directUrl || src.url || "";
  const def = SCRAPER_DEFS.find(d => d.site === src.site);
  const tag = def?.tag || "??";
  const cdn = getCdnDisplayName(url);
  const q   = getSrcQualityTier(src);
  const qs  = QUALITY_STYLE[q];

  return (
    <Pressable onPress={() => onPlay(src)} style={d.srcRow}>
      {/* Left icon */}
      <View style={[d.srcIcon, { backgroundColor: qs.badge, borderColor: qs.border }]}>
        <Ionicons
          name={src.isEmbed ? "tv" : "play-circle"}
          size={14}
          color={qs.text}
        />
      </View>

      {/* Center info */}
      <View style={d.srcInfo}>
        <View style={{ flexDirection: "row", alignItems: "center", gap: 6, flexWrap: "wrap", marginBottom: 2 }}>
          <Text style={d.srcNum}>سيرفر {globalIdx + 1}</Text>
          <View style={d.srcTag}><Text style={d.srcTagText}>{tag}</Text></View>
          {def?.isEn && (
            <View style={d.srcEnBadge}><Text style={d.srcEnText}>🎌 ياباني</Text></View>
          )}
        </View>
        <Text style={d.srcCdn}>{cdn}</Text>
      </View>

      {/* Right: quality badge + play btn */}
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

/* ── Resolve relative API URLs to absolute ── */
function resolveUrl(url: string | undefined, base: string): string {
  if (!url) return "";
  if (url.startsWith("/")) return base + url;
  return url;
}

/* ═══════════════════════════════════════ MAIN ═══ */
export default function WatchScreen() {
  const { anime, ep, title, english, format } = useLocalSearchParams<{
    anime: string; ep: string; title: string; english: string; format?: string;
  }>();
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { addToHistory } = useApp();
  const topPad = Platform.OS === "ios" ? insets.top : 16;

  const [screen, setScreen]       = useState<Screen>("loading");
  const [sources, setSources]     = useState<Src[]>([]);
  const [loading, setLoading]     = useState(true);
  const [playingSrc, setPlayingSrc] = useState<Src | null>(null);
  const [cover, setCover]         = useState("");
  const [resumeTime, setResumeTime] = useState(0);

  const abortRef        = useRef<AbortController | null>(null);
  const autoSelectedRef = useRef(false);
  const lastTimeRef     = useRef(0);

  const epNum      = parseInt(ep || "1");
  const titleStr   = decodeURIComponent(title || "");
  const englishStr = decodeURIComponent(english || "");
  const displayTitle = englishStr || titleStr;
  const progressKey  = `wp-${anime}-${epNum}`;

  /* Load cover + resume */
  useEffect(() => {
    if (!anime) return;
    const id = parseInt(anime);
    setCover(`https://img.anili.st/media/${id}`);
    AsyncStorage.getItem(progressKey).then(v => { if (v) setResumeTime(parseFloat(v) || 0); });
  }, [anime, progressKey]);

  /* ── 35-second timeout fallback — prevents stuck loading screen ── */
  useEffect(() => {
    const timeout = setTimeout(() => {
      setScreen(s => s === "loading" ? "picker" : s);
      setLoading(false);
    }, 35000);
    return () => clearTimeout(timeout);
  }, [anime, ep]);

  /* ── SSE fetch ── */
  const fetchSources = useCallback(async () => {
    if (!anime || !ep) return;
    setLoading(true); setSources([]); setScreen("loading");
    autoSelectedRef.current = false;
    abortRef.current?.abort();
    abortRef.current = new AbortController();
    const base = getBaseUrl();
    const url  = `${base}/api/anime/sources-stream?title=${encodeURIComponent(titleStr)}&english=${encodeURIComponent(englishStr)}&ep=${ep}&anime=${anime || ""}&format=${encodeURIComponent(format || "")}`;
    try {
      const response = await secureStreamFetch(url, { signal: abortRef.current.signal });
      if (!response.body) {
        setLoading(false);
        setScreen("picker");
        return;
      }
      const reader   = response.body.getReader();
      const decoder  = new TextDecoder();
      let buffer     = "";
      let currentEvent = "";
      while (true) {
        const { done, value } = await reader.read();
        if (done) break;
        buffer += decoder.decode(value, { stream: true });
        const lines = buffer.split("\n");
        buffer = lines.pop() || "";
        for (const line of lines) {
          if (line === "") { currentEvent = ""; continue; }
          if (line.startsWith(": ")) continue;
          if (line.startsWith("event: ")) { currentEvent = line.slice(7).trim(); continue; }
          if (!line.startsWith("data: ")) continue;
          const dataStr = line.slice(6);
          if (dataStr === "[DONE]") {
            setLoading(false);
            setSources(prev => { if (prev.length === 0) setTimeout(() => setScreen("picker"), 0); return prev; });
            continue;
          }
          try {
            const data = JSON.parse(dataStr);
            const evType = currentEvent || data.type || "";
            if (evType !== "done" && evType !== "error" && (data.directUrl || data.url)) {
              const src: Src = {
                ...data,
                directUrl: resolveUrl(data.directUrl, base),
                url: resolveUrl(data.url, base),
              };
              setSources(prev => {
                const key = src.directUrl || src.url;
                if (prev.find(s => (s.directUrl || s.url) === key)) return prev;
                const next = [...prev, src];
                if (!autoSelectedRef.current && shouldShowSrc(src)) {
                  autoSelectedRef.current = true;
                  setTimeout(() => { setPlayingSrc(src); setScreen("native"); }, 0);
                } else if (!autoSelectedRef.current && isEmbedFallback(src)) {
                  autoSelectedRef.current = true;
                  setTimeout(() => { setPlayingSrc(src); setScreen("embed"); }, 0);
                }
                if (next.length === 1) setTimeout(() => setScreen(s => s === "loading" ? "picker" : s), 0);
                return next;
              });
            } else if (evType === "done") {
              setLoading(false);
              setSources(prev => { if (prev.length === 0) setTimeout(() => setScreen("picker"), 0); return prev; });
            } else if (evType === "error") {
              setLoading(false);
            }
          } catch {}
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
  }, [anime, ep, titleStr, englishStr, format]);

  useEffect(() => { fetchSources(); return () => abortRef.current?.abort(); }, [fetchSources]);

  /* History */
  useEffect(() => {
    if (playingSrc && anime) {
      addToHistory({ animeId: parseInt(anime), ep: epNum, title: titleStr, english: englishStr, thumbnail: cover, updatedAt: Date.now() });
    }
  }, [playingSrc]);

  /* Source grouping */
  const { directSrcs, embedSrcs } = useMemo(() => {
    const seen = new Set<string>();
    const direct: Src[] = [], embeds: Src[] = [];
    for (const s of sources) {
      const key = s.directUrl || s.url || "";
      if (!key || seen.has(key)) continue;
      seen.add(key);
      if (shouldShowSrc(s)) direct.push(s);
      else if (isEmbedFallback(s)) embeds.push(s);
    }
    direct.sort((a, b) => {
      const ta = QUALITY_TIER_RANK[getSrcQualityTier(a)], tb = QUALITY_TIER_RANK[getSrcQualityTier(b)];
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

  /* Save progress */
  const saveProgress = useCallback(async () => {
    const t = lastTimeRef.current;
    if (t > 10) await AsyncStorage.setItem(progressKey, String(Math.floor(t)));
  }, [progressKey]);

  /* Navigate episode */
  function goEp(n: number) {
    saveProgress();
    router.replace(`/watch?anime=${anime}&ep=${n}&title=${encodeURIComponent(titleStr)}&english=${encodeURIComponent(englishStr)}&format=${encodeURIComponent(format || "")}`);
  }

  /* Build RiftPlayer sources from directSrcs */
  const riftSources = useMemo((): PlayerSource[] =>
    directSrcs.map(s => ({
      url: s.directUrl || s.url || "",
      label: (() => {
        const def = SCRAPER_DEFS.find(d => d.site === s.site);
        return def?.name || getCdnDisplayName(s.directUrl || s.url || "");
      })(),
      quality: getSrcQualityTier(s),
      subtitleUrl: s.subtitleUrl,
    })).filter(s => s.url),
  [directSrcs]);



  /* ══ LOADING ══ */
  if (screen === "loading") return <LoadingScreen cover={cover} title={displayTitle} ep={epNum} onBack={() => router.canGoBack() ? router.back() : router.replace("/(tabs)")} />;

  /* ══ RIFT PLAYER ══ */
  if (screen === "native" && riftSources.length > 0) {
    const startIdx = riftSources.findIndex(s => s.url === (playingSrc?.directUrl || playingSrc?.url)) ?? 0;
    return (
      <RiftPlayer
        sources={riftSources}
        initialSourceIndex={Math.max(0, startIdx)}
        title={displayTitle}
        episode={epNum}
        initialPosition={resumeTime}
        skipIntro={playingSrc?.skipIntro}
        skipOutro={playingSrc?.skipOutro}
        onBack={() => { saveProgress(); setScreen("picker"); }}
        onNextEpisode={() => goEp(epNum + 1)}
        onPrevEpisode={epNum > 1 ? () => goEp(epNum - 1) : undefined}
        onProgress={(pos, dur) => {
          lastTimeRef.current = pos;
          if (pos > 10) AsyncStorage.setItem(progressKey, String(Math.floor(pos))).catch(() => {});
          if (dur > 0) addToHistory({ animeId: parseInt(anime!), ep: epNum, title: titleStr, english: englishStr, thumbnail: cover, position: pos, duration: dur, updatedAt: Date.now() });
        }}
      />
    );
  }

  /* ══ EMBED PLAYER ══ */
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
          <Text style={{ color: "rgba(255,255,255,0.45)", fontFamily: "Cairo_400Regular", fontSize: 13, textAlign: "center", paddingHorizontal: 32 }}>مصدر mega.nz / Vidmoly لا يدعم تشغيل الويب</Text>
          <Pressable
            onPress={() => Linking.openURL(embedUrl)}
            style={{ backgroundColor: "rgba(139,92,246,0.25)", borderRadius: 14, paddingHorizontal: 24, paddingVertical: 12, borderWidth: 1, borderColor: "rgba(139,92,246,0.4)", marginTop: 4 }}
          >
            <Text style={{ color: "#c4b5fd", fontFamily: "Cairo_700Bold", fontSize: 14 }}>فتح في المتصفح</Text>
          </Pressable>
          <Pressable onPress={() => setScreen("picker")} style={{ marginTop: 4 }}>
            <Text style={{ color: "rgba(255,255,255,0.35)", fontFamily: "Cairo_400Regular", fontSize: 13 }}>العودة للمصادر</Text>
          </Pressable>
        </View>
      );
    }
    return (
      <View style={{ flex: 1, backgroundColor: "#000" }}>
        <WebView
          source={{ uri: embedUrl }} style={{ flex: 1 }}
          allowsFullscreenVideo allowsInlineMediaPlayback
          mediaPlaybackRequiresUserAction={false}
          javaScriptEnabled domStorageEnabled
        />
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

  /* ══ SOURCE PICKER ══ */
  const hasSrcs   = directSrcs.length > 0;
  const hasEmbeds = embedSrcs.length > 0;
  let globalIdx = 0;

  function handlePlaySrc(src: Src) {
    setPlayingSrc(src);
    const url = src.directUrl || src.url || "";
    if (src.isEmbed || (!src.directUrl && !url.match(/\.(m3u8|mp4|mkv|webm)/i) && url.startsWith("https://"))) {
      setScreen("embed");
    } else {
      setScreen("native");
    }
  }

  return (
    <View style={{ flex: 1, backgroundColor: "#07070d" }}>
      {/* ── Header ── */}
      <View style={[d.header, { paddingTop: topPad + 4 }]}>
        <Pressable onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)")} style={d.headerBack}>
          <Ionicons name="arrow-back" size={18} color="rgba(255,255,255,0.7)" />
        </Pressable>
        <View style={{ flex: 1 }}>
          <Text style={d.headerTitle} numberOfLines={1}>{displayTitle}</Text>
          <Text style={d.headerSub}>الحلقة {epNum}</Text>
        </View>
        {/* ep navigation */}
        <Pressable
          disabled={epNum <= 1}
          onPress={() => epNum > 1 && goEp(epNum - 1)}
          style={[d.epNavBtn, epNum <= 1 && { opacity: 0.25 }]}
        >
          <Ionicons name="chevron-forward" size={18} color="rgba(255,255,255,0.65)" />
        </Pressable>
        <Pressable onPress={() => goEp(epNum + 1)} style={d.epNavBtn}>
          <Ionicons name="chevron-back" size={18} color="rgba(196,181,253,0.9)" />
        </Pressable>
        {loading
          ? <ActivityIndicator color="#8B5CF6" size="small" style={{ marginLeft: 4 }} />
          : <Pressable onPress={fetchSources} style={d.headerRefreshBtn}>
              <Ionicons name="refresh" size={14} color="#8B5CF6" />
            </Pressable>
        }
      </View>

      <ScrollView showsVerticalScrollIndicator={false} contentContainerStyle={d.pickerScrollContent}>

        {/* ── Quality-grouped sources ── */}
        {(["1080p FHD", "720p HD", "360p SD"] as Quality[]).map(q => {
          const srcs = grouped[q];
          if (!srcs.length) return null;
          const qs = QUALITY_STYLE[q];
          const sectionStart = globalIdx;
          globalIdx += srcs.length;
          return (
            <View key={q} style={d.tierSection}>
              <View style={d.tierHeader}>
                <View style={[d.tierDot, { backgroundColor: qs.dot, shadowColor: qs.dot, shadowOpacity: 0.7, shadowRadius: 4, shadowOffset: { width: 0, height: 0 } }]} />
                <Text style={[d.tierTitle, { color: qs.text }]}>{Q_LABEL[q]}</Text>
                <View style={[d.tierCount, { backgroundColor: qs.badge, borderColor: qs.border }]}>
                  <Text style={[d.tierCountText, { color: qs.text }]}>{srcs.length}</Text>
                </View>
              </View>
              <View style={d.srcSection}>
                {srcs.map((src, i) => (
                  <SourceRow key={`${src.site}-${i}`} src={src} globalIdx={sectionStart + i} onPlay={handlePlaySrc} />
                ))}
              </View>
            </View>
          );
        })}

        {/* ── Embed fallbacks ── */}
        {hasEmbeds && (
          <View style={d.tierSection}>
            <View style={d.tierHeader}>
              <View style={[d.tierDot, { backgroundColor: "#64748b" }]} />
              <Text style={[d.tierTitle, { color: "rgba(148,163,184,0.7)" }]}>سيرفرات احتياطية</Text>
            </View>
            <View style={d.srcSection}>
              {embedSrcs.map((src, i) => (
                <SourceRow key={`embed-${i}`} src={src} globalIdx={globalIdx + i} onPlay={handlePlaySrc} />
              ))}
            </View>
          </View>
        )}

        {/* ── Empty state ── */}
        {!loading && !hasSrcs && !hasEmbeds && (
          <View style={d.empty}>
            <Ionicons name="warning" size={48} color="rgba(239,68,68,0.3)" />
            <Text style={d.emptyTitle}>الحلقة {epNum} غير متوفرة بعد</Text>
            <Text style={d.emptySub}>المصادر العربية تتأخر عادةً ٢–٣ حلقات عن البث الأصلي.</Text>
            <Pressable onPress={fetchSources} style={d.retryBigBtn}>
              <Ionicons name="refresh" size={16} color="#c4b5fd" />
              <Text style={d.retryBigText}>إعادة المحاولة</Text>
            </Pressable>
          </View>
        )}

        {/* ── Searching state ── */}
        {loading && !hasSrcs && (
          <View style={d.searchingWrap}>
            <Ionicons name="hourglass" size={32} color="rgba(139,92,246,0.4)" />
            <Text style={d.searchingText}>لا تزال المصادر تُجمَع، انتظر قليلاً…</Text>
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

  /* Native player overlays */
  playerTopGrad: { position: "absolute", top: 0, left: 0, right: 0, paddingBottom: 48, zIndex: 10 },
  playerTopRow: { flexDirection: "row", alignItems: "center", paddingHorizontal: 14, gap: 10 },
  playerBackBtn: { width: 36, height: 36, borderRadius: 14, backgroundColor: "rgba(0,0,0,0.5)", alignItems: "center", justifyContent: "center", borderWidth: 1, borderColor: "rgba(255,255,255,0.15)" },
  playerTitle: { fontSize: 13, fontFamily: "Cairo_700Bold", color: "#fff" },
  playerEp: { fontSize: 10, color: "rgba(255,255,255,0.45)", fontFamily: "Cairo_400Regular" },
  srcSwitchBtn: { flexDirection: "row", alignItems: "center", gap: 4, paddingHorizontal: 10, paddingVertical: 6, backgroundColor: "rgba(0,0,0,0.5)", borderRadius: 10, borderWidth: 1, borderColor: "rgba(255,255,255,0.12)" },
  srcSwitchText: { fontSize: 10, color: "#fff", fontFamily: "Cairo_700Bold" },
  playerBottomGrad: { position: "absolute", bottom: 0, left: 0, right: 0, paddingTop: 48, zIndex: 10 },

  /* Embed player top bar */
  embedTopRow: { position: "absolute", top: 0, left: 0, right: 0, flexDirection: "row", alignItems: "center", paddingHorizontal: 14, paddingBottom: 10, backgroundColor: "rgba(0,0,0,0.7)", gap: 10, zIndex: 10 },

  /* Picker header */
  header: { flexDirection: "row", alignItems: "center", gap: 8, paddingHorizontal: 14, paddingBottom: 12, borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.06)" },
  headerBack: { width: 36, height: 36, borderRadius: 12, backgroundColor: "rgba(255,255,255,0.06)", borderWidth: 1, borderColor: "rgba(255,255,255,0.09)", alignItems: "center", justifyContent: "center" },
  headerTitle: { fontSize: 14, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  headerSub: { fontSize: 10, color: "rgba(255,255,255,0.35)", fontFamily: "Cairo_400Regular" },
  headerRefreshBtn: { width: 34, height: 34, borderRadius: 10, backgroundColor: "rgba(139,92,246,0.12)", borderWidth: 1, borderColor: "rgba(139,92,246,0.25)", alignItems: "center", justifyContent: "center" },
  epNavBtn: { width: 34, height: 34, borderRadius: 10, backgroundColor: "rgba(255,255,255,0.06)", borderWidth: 1, borderColor: "rgba(255,255,255,0.09)", alignItems: "center", justifyContent: "center" },

  /* Picker content */
  pickerScrollContent: { padding: 16, paddingBottom: 100, gap: 14 },
  dot: { width: 5, height: 5, borderRadius: 2.5 },

  /* Quality tier sections */
  tierSection: { gap: 8 },
  tierHeader: { flexDirection: "row", alignItems: "center", gap: 8 },
  tierDot: { width: 6, height: 6, borderRadius: 3 },
  tierTitle: { flex: 1, fontSize: 11, fontFamily: "Cairo_700Bold" },
  tierCount: { paddingHorizontal: 7, paddingVertical: 2, borderRadius: 7, borderWidth: 1 },
  tierCountText: { fontSize: 9, fontFamily: "Cairo_700Bold" },

  /* Empty / searching states */
  empty: { alignItems: "center", justifyContent: "center", gap: 14, paddingVertical: 60 },
  emptyTitle: { fontSize: 15, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.4)" },
  emptySub: { fontSize: 12, color: "rgba(255,255,255,0.22)", fontFamily: "Cairo_400Regular", textAlign: "center", lineHeight: 18 },
  retryBigBtn: { flexDirection: "row", alignItems: "center", gap: 8, backgroundColor: "rgba(139,92,246,0.15)", borderRadius: 14, borderWidth: 1, borderColor: "rgba(139,92,246,0.28)", paddingHorizontal: 20, paddingVertical: 11 },
  retryBigText: { fontSize: 13, fontFamily: "Cairo_700Bold", color: "#c4b5fd" },
  searchingWrap: { alignItems: "center", gap: 12, paddingVertical: 40 },
  searchingText: { fontSize: 12, color: "rgba(255,255,255,0.3)", fontFamily: "Cairo_400Regular", textAlign: "center" },


  /* Source section */
  srcSection: { marginHorizontal: 16, borderRadius: 16, overflow: "hidden", backgroundColor: "rgba(17,17,22,0.95)", borderWidth: 1, borderColor: "rgba(255,255,255,0.06)", marginBottom: 8 },

  /* Source Row */
  srcRow: { flexDirection: "row", alignItems: "center", paddingHorizontal: 14, paddingVertical: 10, gap: 12, borderBottomWidth: StyleSheet.hairlineWidth, borderBottomColor: "rgba(255,255,255,0.04)" },
  srcIcon: { width: 32, height: 32, borderRadius: 10, alignItems: "center", justifyContent: "center", borderWidth: 1 },
  srcInfo: { flex: 1, minWidth: 0 },
  srcNum: { fontSize: 12, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.90)" },
  srcTag: { paddingHorizontal: 7, paddingVertical: 2, borderRadius: 6, backgroundColor: "rgba(255,255,255,0.10)", borderWidth: 1, borderColor: "rgba(255,255,255,0.18)" },
  srcTagText: { fontSize: 10, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.80)", fontVariant: ["tabular-nums"] },
  srcEnBadge: { paddingHorizontal: 7, paddingVertical: 2, borderRadius: 6, backgroundColor: "rgba(59,130,246,0.14)", borderWidth: 1, borderColor: "rgba(59,130,246,0.30)" },
  srcEnText: { fontSize: 9, fontFamily: "Cairo_700Bold", color: "rgba(147,197,253,0.90)" },
  srcCdn: { fontSize: 10, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.35)", marginTop: 2 },
  srcRight: { flexDirection: "row", alignItems: "center", gap: 8 },
  srcQBadge: { paddingHorizontal: 8, paddingVertical: 3, borderRadius: 8, borderWidth: 1 },
  srcQText: { fontSize: 9, fontFamily: "Cairo_800ExtraBold" },
  srcPlayBtn: { flexDirection: "row", alignItems: "center", gap: 4, paddingHorizontal: 10, paddingVertical: 6, borderRadius: 12, backgroundColor: "rgba(124,58,237,0.90)", borderWidth: 1, borderColor: "rgba(167,139,250,0.25)" },
  srcPlayText: { fontSize: 10.5, fontFamily: "Cairo_800ExtraBold", color: "#fff" },

});
