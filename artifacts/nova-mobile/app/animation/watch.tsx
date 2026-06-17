import React, { useState, useEffect, useRef, useCallback, useMemo } from "react";
import {
  View, Text, Pressable, Image, ScrollView, StyleSheet,
  Platform, Dimensions, Animated, Easing, ActivityIndicator, Linking,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import WebView from "react-native-webview";
import { RiftPlayer, PlayerSource } from "@/components/RiftPlayer";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { getBaseUrl } from "@/utils/api";
import { secureStreamFetch } from "@/utils/secureApi";
import * as ScreenOrientation from "expo-screen-orientation";

const { width: W, height: H } = Dimensions.get("window");

/* ── Types ── */
type Quality = "1080p FHD" | "720p HD" | "360p SD";
type Screen = "loading" | "picker" | "native" | "embed";

interface AnimSrc {
  url?: string;
  directUrl?: string;
  proxyUrl?: string;
  label?: string;
  subtitleUrl?: string;
  status?: string;
  tier?: string;
  isEmbed?: boolean;
}

const QUALITY_STYLE: Record<Quality, { dot: string; badge: string; border: string; text: string; label: string }> = {
  "1080p FHD": { dot: "#fbbf24", badge: "rgba(251,191,36,0.10)", border: "rgba(251,191,36,0.26)", text: "rgba(253,224,71,0.95)", label: "جودة عالية جداً · FHD 1080" },
  "720p HD":   { dot: "#34d399", badge: "rgba(52,211,153,0.09)", border: "rgba(52,211,153,0.24)", text: "rgba(110,231,183,0.92)", label: "جودة عالية · HD 720" },
  "360p SD":   { dot: "#94a3b8", badge: "rgba(148,163,184,0.07)", border: "rgba(148,163,184,0.16)", text: "rgba(148,163,184,0.70)", label: "جودة متوسطة · SD 360" },
};
const Q_SHORT: Record<Quality, string> = { "1080p FHD": "FHD", "720p HD": "HD", "360p SD": "SD" };
const TIER_RANK: Record<Quality, number> = { "1080p FHD": 3, "720p HD": 2, "360p SD": 1 };

function resolveUrl(url: string | undefined, base: string): string {
  if (!url) return "";
  if (url.startsWith("/")) return base + url;
  return url;
}

function getSrcQuality(src: AnimSrc): Quality {
  const tierStr = (src.tier || "").toLowerCase();
  const lbl = (src.label || "").toLowerCase();
  const url = (src.proxyUrl || src.directUrl || src.url || "").toLowerCase();

  if (tierStr.includes("1080") || tierStr.includes("fhd")) return "1080p FHD";
  if (tierStr.includes("720") || tierStr.includes("hd")) return "720p HD";
  if (tierStr.includes("360") || tierStr.includes("sd")) return "360p SD";

  if (lbl.includes("1080") || lbl.includes("fhd") || lbl.includes("4k")) return "1080p FHD";
  if (lbl.startsWith("vyla") || lbl.startsWith("starcima") || lbl.startsWith("videasy") ||
      lbl.startsWith("vidlink") || lbl.startsWith("aflaam") || lbl.startsWith("arabseed") ||
      lbl.startsWith("seepanel") || lbl.startsWith("lordflix") || lbl.startsWith("topcinem") ||
      lbl.startsWith("stardima")) return "1080p FHD";

  if (url.includes("hls-proxy")) return "720p HD";
  if (url.includes(".mp4") || url.includes("video-proxy")) return "720p HD";
  return "360p SD";
}

function isDirectPlayable(src: AnimSrc): boolean {
  if (src.isEmbed) return false;
  const url = (src.proxyUrl || src.directUrl || src.url || "").toLowerCase();
  if (!url) return false;
  if (url.includes("mega.nz") || url.includes("mega.co.nz")) return false;
  return true;
}

function isEmbedSrc(src: AnimSrc): boolean {
  if (!src.isEmbed) return false;
  const url = (src.proxyUrl || src.directUrl || src.url || "").toLowerCase();
  return url.includes("mega.nz") || url.includes("mega.co.nz") || url.includes("vidmoly");
}

function getPlayUrl(src: AnimSrc): string {
  return src.proxyUrl || src.directUrl || src.url || "";
}

function getLabelShort(label: string): string {
  return label?.split(" ")[0] || "مصدر";
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
    <View style={{ width: 36, height: 36 }}>
      <View style={[StyleSheet.absoluteFill, { borderRadius: 18, borderWidth: 2, borderColor: "rgba(139,92,246,0.15)" }]} />
      <Animated.View style={[StyleSheet.absoluteFill, { borderRadius: 18, borderWidth: 2, borderColor: "transparent", borderTopColor: "#8B5CF6", borderRightColor: "rgba(139,92,246,0.4)", transform: [{ rotate }] }]} />
    </View>
  );
}

/* ── Source row ── */
function SrcRow({ src, idx, onPlay }: { src: AnimSrc; idx: number; onPlay: (s: AnimSrc) => void }) {
  const q = getSrcQuality(src);
  const qs = QUALITY_STYLE[q];
  const label = src.label || `مصدر ${idx + 1}`;
  const isEmbed = isEmbedSrc(src);
  /* "StarCima · الثريا" → tag="StarCima", cdn="الثريا" */
  const parts = label.split(/\s*·\s*/);
  const tag = (parts[0] || label).slice(0, 12).trim();
  const cdn = parts.slice(1).join(" · ").trim();
  const hasSub = !!src.subtitleUrl;

  return (
    <Pressable onPress={() => onPlay(src)} style={w.srcRow}>
      <View style={[w.srcIcon, { backgroundColor: qs.badge, borderColor: qs.border }]}>
        <Ionicons name={isEmbed ? "tv" : "play-circle"} size={14} color={qs.text} />
      </View>
      <View style={{ flex: 1, minWidth: 0 }}>
        <View style={{ flexDirection: "row", alignItems: "center", gap: 6, flexWrap: "wrap" }}>
          <Text style={w.srcNum}>سيرفر {idx + 1}</Text>
          <View style={w.srcTag}><Text style={w.srcTagText}>{tag}</Text></View>
          {hasSub && <View style={w.srcSubBadge}><Text style={w.srcSubText}>ترجمة</Text></View>}
        </View>
        {cdn ? <Text style={w.srcCdn} numberOfLines={1}>{cdn}</Text> : null}
      </View>
      <View style={w.srcRight}>
        <View style={[w.srcQBadge, { backgroundColor: qs.badge, borderColor: qs.border }]}>
          <Text style={[w.srcQText, { color: qs.text }]}>{Q_SHORT[q]}</Text>
        </View>
        <View style={w.srcPlayBtn}>
          <Ionicons name="play" size={10} color="#fff" />
          <Text style={w.srcPlayText}>تشغيل</Text>
        </View>
      </View>
    </Pressable>
  );
}

/* ══════════════════════════════════════════════════════════════ */
export default function AnimationWatchScreen() {
  const params = useLocalSearchParams<{
    id: string; type: string; ep: string; season: string; title: string; poster: string; etitle?: string;
  }>();
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const topPad = Platform.OS === "ios" ? insets.top : 16;

  const tmdbId    = params.id     || "";
  const type      = params.type   || "movie";
  const ep        = parseInt(params.ep     || "1", 10) || 1;
  const season    = parseInt(params.season || "1", 10) || 1;
  const titleStr  = decodeURIComponent(params.title  || "");
  const posterUrl = params.poster ? decodeURIComponent(params.poster) : "";
  const epTitle   = params.etitle ? decodeURIComponent(params.etitle) : undefined;

  const [screen, setScreen]       = useState<Screen>("loading");
  const [sources, setSources]     = useState<AnimSrc[]>([]);
  const [loading, setLoading]     = useState(true);
  const [playingSrc, setPlayingSrc] = useState<AnimSrc | null>(null);
  const [resumeTime, setResumeTime] = useState(0);
  const [globalSubUrl, setGlobalSubUrl] = useState<string | undefined>();

  const abortRef    = useRef<AbortController | null>(null);
  const lastSaveTs  = useRef(0);
  const lastTimeRef      = useRef(0);
  const seenKeys         = useRef(new Set<string>());

  const progressKey = `anim-wp-${tmdbId}-${type}-${season}-${ep}`;

  /* Load resume time */
  useEffect(() => {
    AsyncStorage.getItem(progressKey).then(v => {
      if (v) setResumeTime(parseFloat(v) || 0);
    });
  }, [progressKey]);

  /* ── Subtitle tracks — fetch in background for sources without subtitleUrl ── */
  useEffect(() => {
    if (!tmdbId) return;
    const base = getBaseUrl();
    const controller = new AbortController();
    fetch(
      `${base}/api/animation/subtitle-tracks?tmdbId=${encodeURIComponent(tmdbId)}&type=${type}&ep=${ep}&season=${season}&title=${encodeURIComponent(titleStr)}`,
      { signal: controller.signal }
    )
      .then(r => r.json())
      .then((data: any) => {
        const tracks: any[] = data?.tracks || [];
        const arTrack = tracks.find((t: any) => t.lang === "ar" || t.lang === "ar-auto");
        if (arTrack?.url) setGlobalSubUrl(arTrack.url);
      })
      .catch(() => {});
    return () => controller.abort();
  }, [tmdbId, type, ep, season]); // eslint-disable-line

  /* ── Save progress ── */
  const handleTimeUpdate = useCallback((t: number) => {
    lastTimeRef.current = t;
    const now = Date.now();
    if (now - lastSaveTs.current < 5000) return;
    lastSaveTs.current = now;
    if (t > 5) AsyncStorage.setItem(progressKey, String(Math.floor(t))).catch(() => {});
    /* Save to anim-watch-history */
    if (t > 30) {
      AsyncStorage.getItem("anim-watch-history").then(raw => {
        const hist = JSON.parse(raw || "[]");
        const item = { id: tmdbId, type, ep, season, title: titleStr, poster: posterUrl, date: new Date().toISOString() };
        const filtered = hist.filter((h: any) => !(h.id === tmdbId && h.type === type));
        AsyncStorage.setItem("anim-watch-history", JSON.stringify([item, ...filtered].slice(0, 50))).catch(() => {});
      }).catch(() => {});
    }
  }, [progressKey, tmdbId, type, ep, season, titleStr, posterUrl]);

  /* ── SSE fetch ── */
  const fetchSources = useCallback(async () => {
    if (!tmdbId) return;
    setLoading(true);
    setSources([]);
    setScreen("loading");
    seenKeys.current.clear();

    abortRef.current?.abort();
    abortRef.current = new AbortController();

    const base = getBaseUrl();
    const url = `${base}/api/animation/sources-stream?title=${encodeURIComponent(titleStr)}&type=${type}&id=${tmdbId}&ep=${ep}&season=${season}`;

    try {
      const response = await secureStreamFetch(url, { signal: abortRef.current.signal });
      if (!response.body) throw new Error("No body");
      const reader = response.body.getReader();
      const decoder = new TextDecoder();
      let buffer = "";
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
          try {
            const data = JSON.parse(line.slice(6));
            const evType = currentEvent || data.type || "";
            const isSource = evType === "source" || (!evType && (data.url || data.directUrl || data.proxyUrl));
            const isDone = evType === "done";

            if (isSource) {
              const src: AnimSrc = {
                ...data,
                directUrl: resolveUrl(data.directUrl, base),
                url: resolveUrl(data.url, base),
                proxyUrl: resolveUrl(data.proxyUrl, base),
              };
              const key = src.proxyUrl || src.directUrl || src.url || "";
              if (!key || seenKeys.current.has(key)) continue;
              seenKeys.current.add(key);

              setSources(prev => {
                const next = [...prev, src];
                /* always show picker first — user picks manually */
                if (next.length === 1) {
                  setTimeout(() => setScreen(s => s === "loading" ? "picker" : s), 0);
                }
                return next;
              });

            } else if (isDone) {
              setLoading(false);
              setSources(prev => {
                if (prev.length === 0) setTimeout(() => setScreen("picker"), 0);
                return prev;
              });
            }
          } catch {}
        }
      }
    } catch (e: any) {
      if (e?.name !== "AbortError") setLoading(false);
    } finally {
      setLoading(false);
    }
  }, [tmdbId, type, ep, season, titleStr]);

  useEffect(() => {
    fetchSources();
    return () => abortRef.current?.abort();
  }, [fetchSources]);

  /* ── Portrait lock on picker/loading; unlock for embed ── */
  useEffect(() => {
    if (screen === "loading" || screen === "picker") {
      ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.PORTRAIT_UP).catch(() => {});
    } else if (screen === "embed") {
      ScreenOrientation.unlockAsync().catch(() => {});
    }
    // "native" orientation is handled by RiftPlayer itself
  }, [screen]);

  /* ── Play a source ── */
  const playSrc = useCallback((src: AnimSrc) => {
    setPlayingSrc(src);
    setScreen(isDirectPlayable(src) ? "native" : "embed");
  }, []);

  /* ── Group sources by quality ── */
  const { directSrcs, embedSrcs } = useMemo(() => {
    const seen = new Set<string>();
    const direct: AnimSrc[] = [];
    const embeds: AnimSrc[] = [];
    for (const src of sources) {
      const key = src.proxyUrl || src.directUrl || src.url || "";
      if (seen.has(key)) continue;
      seen.add(key);
      if (isDirectPlayable(src)) direct.push(src);
      else if (isEmbedSrc(src)) embeds.push(src);
    }
    direct.sort((a, b) => TIER_RANK[getSrcQuality(b)] - TIER_RANK[getSrcQuality(a)]);
    return { directSrcs: direct, embedSrcs: embeds };
  }, [sources]);

  const grouped = useMemo<Record<Quality, AnimSrc[]>>(() => ({
    "1080p FHD": directSrcs.filter(s => getSrcQuality(s) === "1080p FHD"),
    "720p HD":   directSrcs.filter(s => getSrcQuality(s) === "720p HD"),
    "360p SD":   directSrcs.filter(s => getSrcQuality(s) === "360p SD"),
  }), [directSrcs]);

  /* Build RiftPlayer sources from directSrcs */
  const riftSources = useMemo((): PlayerSource[] => {
    const base = getBaseUrl();
    return directSrcs.map(s => ({
      url: getPlayUrl(s),
      label: s.label || "مصدر",
      quality: getSrcQuality(s),
      subtitleUrl: s.subtitleUrl
        ? resolveUrl(s.subtitleUrl, base)
        : globalSubUrl,
    })).filter(s => s.url);
  }, [directSrcs, globalSubUrl]);

  /* ── Handle back ── */
  const handleBack = useCallback(() => {
    if (screen === "native" || screen === "embed") {
      setScreen("picker");
      return;
    }
    if (lastTimeRef.current > 5) {
      AsyncStorage.setItem(progressKey, String(Math.floor(lastTimeRef.current))).catch(() => {});
    }
    if (router.canGoBack()) {
      router.back();
    } else if (tmdbId && type === "tv") {
      router.replace(`/animation/episodes?id=${tmdbId}&type=${type}&season=${season}` as any);
    } else if (tmdbId) {
      router.replace(`/animation/${type}/${tmdbId}` as any);
    } else {
      router.replace("/(tabs)/animations" as any);
    }
  }, [screen, tmdbId, type, season, router, progressKey]);

  /* ═══════════════════ LOADING SCREEN ═══════════════════ */
  if (screen === "loading") {
    return (
      <View style={[w.container]}>
        {/* Blurred backdrop */}
        {posterUrl ? (
          <Image source={{ uri: posterUrl }} style={[StyleSheet.absoluteFill, { opacity: 0.18 }]} blurRadius={22} resizeMode="cover" />
        ) : null}
        <LinearGradient colors={["rgba(9,9,11,0.88)", "rgba(9,9,11,0.55)", "rgba(9,9,11,0.92)"]} style={StyleSheet.absoluteFill} />

        {/* Back button — absolute on right */}
        <Pressable onPress={handleBack} style={[w.loadBackBtn, { top: topPad + 4 }]}>
          <Ionicons name="chevron-forward" size={20} color="rgba(255,255,255,0.75)" />
        </Pressable>

        {/* Center card */}
        <View style={w.loadCard}>
          {/* Prayer text — at TOP like web design */}
          <Text style={w.loadPrayerText}>اللهم صلِّ وسلِّم على نبينا محمد ﷺ</Text>

          {/* Poster */}
          <View style={w.loadPosterWrap}>
            <View style={w.loadPosterGlow} />
            {posterUrl ? (
              <Image source={{ uri: posterUrl }} style={w.loadPosterImg} resizeMode="cover" />
            ) : (
              <View style={[w.loadPosterImg, w.loadPosterPlaceholder]}>
                <Ionicons name={type === "movie" ? "film" : "tv"} size={40} color="rgba(139,92,246,0.35)" />
              </View>
            )}
            {posterUrl && (
              <LinearGradient colors={["transparent", "rgba(0,0,0,0.55)"]} style={w.ldPosterFade} />
            )}
            <View style={w.ldPlayOverlay}>
              <View style={w.ldPlayBtn}>
                <Ionicons name="play" size={28} color="#fff" style={{ marginLeft: 4 }} />
              </View>
            </View>
          </View>

          {/* Title + badge */}
          <View style={{ alignItems: "center", gap: 8, width: "100%" }}>
            {titleStr ? (
              <Text style={w.loadCardTitle} numberOfLines={2}>{titleStr}</Text>
            ) : null}
            <View style={w.loadEpBadge}>
              <Ionicons name={type === "movie" ? "film" : "tv"} size={10} color="#a78bfa" />
              <Text style={w.loadEpBadgeText}>
                {type === "movie" ? "فيلم" : `الموسم ${season} • الحلقة ${ep}`}
              </Text>
            </View>
          </View>

          {/* Spinner + hint */}
          <View style={{ alignItems: "center", gap: 10 }}>
            <SpinRing />
            <Text style={w.loadHintNew}>⏳ جاري تجهيز الحلقة، قد يستغرق ذلك بضع ثوانٍ. شكراً لصبرك.</Text>
          </View>
        </View>
      </View>
    );
  }

  /* ═══════════════════ RIFT PLAYER ═══════════════════ */
  if (screen === "native" && riftSources.length > 0) {
    const startIdx = Math.max(0, riftSources.findIndex(s => s.url === getPlayUrl(playingSrc!)));
    return (
      <RiftPlayer
        sources={riftSources}
        initialSourceIndex={startIdx}
        title={titleStr}
        episode={type !== "movie" ? ep : undefined}
        episodeTitle={epTitle}
        initialPosition={resumeTime}
        onBack={() => setScreen("picker")}
        onProgress={(pos, _dur) => handleTimeUpdate(pos)}
        onNextEpisode={type === "tv" ? () => {
          const t = encodeURIComponent(titleStr);
          const p = encodeURIComponent(posterUrl);
          router.replace(`/animation/watch?id=${tmdbId}&type=${type}&ep=${ep + 1}&season=${season}&title=${t}&poster=${p}`);
        } : undefined}
        onPrevEpisode={type === "tv" && ep > 1 ? () => {
          const t = encodeURIComponent(titleStr);
          const p = encodeURIComponent(posterUrl);
          router.replace(`/animation/watch?id=${tmdbId}&type=${type}&ep=${ep - 1}&season=${season}&title=${t}&poster=${p}`);
        } : undefined}
      />
    );
  }

  /* ═══════════════════ EMBED / WebView ═══════════════════ */
  if (screen === "embed" && playingSrc) {
    const embedUrl = getPlayUrl(playingSrc);
    if (Platform.OS === "web") {
      return (
        <View style={[w.container, { alignItems: "center", justifyContent: "center", gap: 16 }]}>
          <Pressable onPress={() => setScreen("picker")} style={[w.videoBackBtn, { position: "absolute", top: topPad + 4, left: 12 }]}>
            <Ionicons name="arrow-back" size={18} color="#fff" />
          </Pressable>
          <View style={{ width: 72, height: 72, borderRadius: 36, backgroundColor: "rgba(139,92,246,0.15)", alignItems: "center", justifyContent: "center" }}>
            <Ionicons name="tv-outline" size={36} color="rgba(139,92,246,0.7)" />
          </View>
          <Text style={{ color: "#fff", fontFamily: "Cairo_700Bold", fontSize: 16, textAlign: "center" }}>هذا المصدر يحتاج التطبيق الأصلي</Text>
          <Text style={{ color: "rgba(255,255,255,0.45)", fontFamily: "Cairo_400Regular", fontSize: 13, textAlign: "center", paddingHorizontal: 32 }}>مصدر الإطار لا يدعم تشغيل الويب مباشرةً</Text>
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
      <View style={w.container}>
        <WebView
          source={{ uri: embedUrl }}
          style={w.video}
          allowsFullscreenVideo
          allowsInlineMediaPlayback
          mediaPlaybackRequiresUserAction={false}
          javaScriptEnabled
        />
        <LinearGradient
          colors={["rgba(0,0,0,0.75)", "transparent"]}
          style={[w.videoTopBar, { paddingTop: topPad }]}
          pointerEvents="box-none"
        >
          <Pressable onPress={() => setScreen("picker")} style={w.videoBackBtn}>
            <Ionicons name="arrow-back" size={18} color="#fff" />
          </Pressable>
          <View style={{ flex: 1 }}>
            <Text style={w.videoTitle} numberOfLines={1}>{titleStr}</Text>
            <Text style={w.videoEp}>{playingSrc.label || "إطار"}</Text>
          </View>
          <Pressable onPress={() => setScreen("picker")} style={w.srcSwitchBtn}>
            <Ionicons name="swap-horizontal" size={16} color="rgba(255,255,255,0.8)" />
            <Text style={w.srcSwitchText}>تغيير</Text>
          </Pressable>
        </LinearGradient>
      </View>
    );
  }

  /* ═══════════════════ SOURCE PICKER ═══════════════════ */
  const totalDirect = directSrcs.length;
  const totalEmbed = embedSrcs.length;
  let globalIdx = 0;

  return (
    <View style={[w.container, { paddingTop: topPad }]}>
      {/* Blurred backdrop */}
      {posterUrl ? (
        <Image source={{ uri: posterUrl }} style={[StyleSheet.absoluteFill, { opacity: 0.07 }]} blurRadius={Platform.OS === "ios" ? 28 : 10} resizeMode="cover" />
      ) : null}
      <LinearGradient colors={["rgba(7,7,13,0.97)", "rgba(7,7,13,0.88)"]} style={StyleSheet.absoluteFill} />

      {/* ── Header: 3-zone fixed layout ── */}
      <View style={w.header}>
        {/* Left: refresh */}
        <View style={w.headerLeft}>
          {loading
            ? <ActivityIndicator color="#8B5CF6" size="small" />
            : <Pressable onPress={fetchSources} style={w.retryBtn}>
                <Ionicons name="refresh" size={13} color="#8B5CF6" />
              </Pressable>
          }
        </View>
        {/* Center: title */}
        <View style={w.headerCenter}>
          <Text style={w.headerTitle} numberOfLines={1}>{titleStr || "مشاهدة"}</Text>
          {type !== "movie" && (
            <Text style={w.headerSub}>الموسم {season} • الحلقة {ep}</Text>
          )}
        </View>
        {/* Right: back button (always same position) */}
        <Pressable onPress={handleBack} style={w.headerBack}>
          <Ionicons name="arrow-back" size={17} color="rgba(255,255,255,0.75)" />
        </Pressable>
      </View>

      <ScrollView style={{ flex: 1 }} contentContainerStyle={w.pickerContent} showsVerticalScrollIndicator={false}>

        {/* ── Info card ── */}
        <View style={w.infoCard}>
          {posterUrl ? (
            <View style={w.infoPosterWrap}>
              <View style={w.infoPosterGlow} />
              <Image source={{ uri: posterUrl }} style={w.infoPoster} resizeMode="cover" />
            </View>
          ) : (
            <View style={[w.infoPoster, w.infoPosterPlaceholder]}>
              <Ionicons name="film" size={26} color="rgba(139,92,246,0.4)" />
            </View>
          )}
          <View style={w.infoMeta}>
            <Text style={w.infoTitle} numberOfLines={2}>{titleStr || "—"}</Text>
            <View style={w.infoEpRow}>
              <View style={w.infoEpBadge}>
                <Ionicons name={type === "movie" ? "film" : "tv"} size={10} color="#a78bfa" />
                <Text style={w.infoEpText}>{type === "movie" ? "فيلم" : `م${season} • ح${ep}`}</Text>
              </View>
              {totalDirect > 0 && (
                <View style={w.infoSrcBadge}>
                  <View style={[w.dot, { backgroundColor: "#22c55e" }]} />
                  <Text style={w.infoSrcText}>{totalDirect} مصدر</Text>
                </View>
              )}
            </View>
            {loading && (
              <View style={w.loadingBar}>
                <ActivityIndicator color="#8B5CF6" size="small" style={{ transform: [{ scale: 0.75 }] }} />
                <Text style={w.loadingBarText}>جاري جلب المصادر…</Text>
              </View>
            )}
          </View>
        </View>

        {/* Comments button */}
        <Pressable onPress={() => router.push(`/comments?tmdbId=${tmdbId}&ep=${type !== "movie" ? ep : undefined}&title=${encodeURIComponent(titleStr || "")}` as any)} style={w.commentsBtn}>
          <Ionicons name="chatbubble-ellipses" size={15} color="rgba(139,92,246,0.9)" />
          <Text style={w.commentsBtnText}>التعليقات</Text>
          <Ionicons name="chevron-forward" size={13} color="rgba(139,92,246,0.5)" />
        </Pressable>

        {/* Sources — grouped by quality */}
        {(["1080p FHD", "720p HD", "360p SD"] as Quality[]).map(tier => {
          const srcs = grouped[tier];
          if (!srcs.length) return null;
          const qs = QUALITY_STYLE[tier];
          return (
            <View key={tier} style={w.tierSection}>
              <View style={w.tierHeader}>
                <View style={[w.tierDot, { backgroundColor: qs.dot }]} />
                <Text style={[w.tierTitle, { color: qs.text }]}>{qs.label}</Text>
                <View style={[w.tierCount, { backgroundColor: qs.badge, borderColor: qs.border }]}>
                  <Text style={[w.tierCountText, { color: qs.text }]}>{srcs.length}</Text>
                </View>
              </View>
              <View style={w.srcSection}>
                {srcs.map((src, i) => {
                  const idx = globalIdx++;
                  return <SrcRow key={idx} src={src} idx={idx} onPlay={playSrc} />;
                })}
              </View>
            </View>
          );
        })}

        {/* Embed sources */}
        {embedSrcs.length > 0 && (
          <View style={w.tierSection}>
            <View style={w.tierHeader}>
              <View style={[w.tierDot, { backgroundColor: "#64748b" }]} />
              <Text style={[w.tierTitle, { color: "rgba(148,163,184,0.7)" }]}>مصادر بإطار</Text>
            </View>
            <View style={w.srcSection}>
              {embedSrcs.map((src, i) => {
                const idx = globalIdx++;
                return <SrcRow key={idx} src={src} idx={idx} onPlay={playSrc} />;
              })}
            </View>
          </View>
        )}

        {/* Empty state */}
        {!loading && totalDirect === 0 && totalEmbed === 0 && (
          <View style={w.empty}>
            <Ionicons name="search" size={48} color="rgba(139,92,246,0.3)" />
            <Text style={w.emptyTitle}>لا توجد مصادر متاحة</Text>
            <Text style={w.emptySub}>
              {type === "tv"
                ? "قد لا يتوفر هذا المسلسل في مصادرنا حالياً."
                : "قد لا يتوفر هذا الفيلم في مصادرنا حالياً."}
            </Text>
            <Pressable onPress={fetchSources} style={w.retryBigBtn}>
              <Ionicons name="refresh" size={16} color="#c4b5fd" />
              <Text style={w.retryBigText}>إعادة المحاولة</Text>
            </Pressable>
          </View>
        )}

        {/* "Still searching..." message while loading */}
        {loading && totalDirect === 0 && (
          <View style={w.searchingWrap}>
            <Ionicons name="hourglass" size={32} color="rgba(139,92,246,0.4)" />
            <Text style={w.searchingText}>لا تزال المصادر تُجمَع، انتظر قليلاً…</Text>
          </View>
        )}
      </ScrollView>

    </View>
  );
}

const w = StyleSheet.create({
  container: { flex: 1, backgroundColor: "#07070d" },
  video: { flex: 1 },

  /* Loading screen — redesigned */
  loadTopBar: { flexDirection: "row", alignItems: "center", gap: 12, paddingHorizontal: 14, paddingBottom: 10, zIndex: 10 },
  loadBackBtn: { position: "absolute", right: 16, width: 36, height: 36, borderRadius: 18, backgroundColor: "rgba(0,0,0,0.45)", borderWidth: 1, borderColor: "rgba(255,255,255,0.12)", alignItems: "center", justifyContent: "center", zIndex: 10 },
  loadTopTitle: { fontSize: 13, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.88)" },
  loadTopSub: { fontSize: 10, color: "rgba(255,255,255,0.35)", fontFamily: "Cairo_400Regular" },
  loadCard: { flex: 1, alignItems: "center", justifyContent: "center", gap: 22, paddingHorizontal: 28, paddingBottom: 40 },
  loadPosterWrap: { position: "relative", alignItems: "center", justifyContent: "center" },
  loadPosterGlow: { position: "absolute", width: 245, height: 315, borderRadius: 36, backgroundColor: "rgba(139,92,246,0.28)", shadowColor: "#7C3AED", shadowOpacity: 0.55, shadowRadius: 40, elevation: 20 },
  loadPosterImg: { width: 176, height: 248, borderRadius: 20, borderWidth: 1.5, borderColor: "rgba(139,92,246,0.35)", shadowColor: "#000", shadowOpacity: 0.60, shadowRadius: 20, elevation: 12 },
  ldPosterFade: { position: "absolute", bottom: 0, left: 0, right: 0, height: 80, borderBottomLeftRadius: 20, borderBottomRightRadius: 20 },
  ldPlayOverlay: { position: "absolute", top: 0, left: 0, right: 0, bottom: 0, alignItems: "center", justifyContent: "center" },
  ldPlayBtn: { width: 62, height: 62, borderRadius: 31, backgroundColor: "rgba(109,40,217,0.82)", borderWidth: 2, borderColor: "rgba(167,139,250,0.45)", alignItems: "center", justifyContent: "center", shadowColor: "#6D28D9", shadowOpacity: 0.60, shadowRadius: 22, elevation: 14 },
  loadPosterPlaceholder: { backgroundColor: "rgba(20,10,50,0.9)", alignItems: "center", justifyContent: "center" },
  loadCardTitle: { fontSize: 17, fontFamily: "Cairo_800ExtraBold", color: "#fff", textAlign: "center", lineHeight: 24 },
  loadEpBadge: { flexDirection: "row", alignItems: "center", gap: 6, backgroundColor: "rgba(139,92,246,0.15)", borderRadius: 10, borderWidth: 1, borderColor: "rgba(139,92,246,0.28)", paddingHorizontal: 14, paddingVertical: 6 },
  loadEpBadgeText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "#c4b5fd" },
  loadHintNew: { fontSize: 12, color: "rgba(255,255,255,0.35)", fontFamily: "Cairo_400Regular", textAlign: "center" },
  loadPrayerText: { fontSize: 13, color: "rgba(255,255,255,0.85)", fontFamily: "Cairo_800ExtraBold", textAlign: "center" },
  topBackBtn: { position: "absolute", left: 16, zIndex: 10, width: 36, height: 36, borderRadius: 18, backgroundColor: "rgba(0,0,0,0.5)", borderWidth: 1, borderColor: "rgba(255,255,255,0.12)", alignItems: "center", justifyContent: "center" },
  commentsBtn: { flexDirection: "row", alignItems: "center", gap: 8, padding: 12, borderRadius: 14, backgroundColor: "rgba(139,92,246,0.06)", borderWidth: 1, borderColor: "rgba(139,92,246,0.18)" },
  commentsBtnText: { flex: 1, fontSize: 13, fontFamily: "Cairo_700Bold", color: "rgba(196,181,253,0.85)" },

  /* Video top bar */
  videoTopBar: { position: "absolute", top: 0, left: 0, right: 0, flexDirection: "row", alignItems: "center", gap: 10, paddingHorizontal: 12, paddingBottom: 20 },
  videoBackBtn: { width: 34, height: 34, borderRadius: 17, backgroundColor: "rgba(0,0,0,0.5)", alignItems: "center", justifyContent: "center" },
  videoTitle: { fontSize: 14, fontFamily: "Cairo_700Bold", color: "#fff" },
  videoEp: { fontSize: 10, color: "rgba(255,255,255,0.5)", fontFamily: "Cairo_400Regular" },
  srcSwitchBtn: { flexDirection: "row", alignItems: "center", gap: 4, backgroundColor: "rgba(0,0,0,0.5)", borderRadius: 10, paddingHorizontal: 10, paddingVertical: 6 },
  srcSwitchText: { fontSize: 10, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.8)" },

  /* ── Picker header: 3-zone fixed layout ── */
  header: { flexDirection: "row", alignItems: "center", paddingHorizontal: 12, paddingVertical: 10, borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.07)", gap: 8 },
  headerLeft: { width: 36, alignItems: "flex-start", justifyContent: "center" },
  headerCenter: { flex: 1, alignItems: "center" },
  headerBack: { width: 36, height: 36, borderRadius: 12, backgroundColor: "rgba(255,255,255,0.07)", borderWidth: 1, borderColor: "rgba(255,255,255,0.11)", alignItems: "center", justifyContent: "center", flexShrink: 0 },
  headerTitle: { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "#fff", textAlign: "center" },
  headerSub: { fontSize: 10, color: "rgba(255,255,255,0.35)", fontFamily: "Cairo_400Regular", textAlign: "center" },
  retryBtn: { width: 32, height: 32, borderRadius: 10, backgroundColor: "rgba(139,92,246,0.12)", borderWidth: 1, borderColor: "rgba(139,92,246,0.25)", alignItems: "center", justifyContent: "center" },

  pickerContent: { padding: 14, paddingBottom: 100, gap: 12 },

  /* ── Info card ── */
  infoCard: { flexDirection: "row", alignItems: "flex-start", gap: 14, backgroundColor: "rgba(15,12,28,0.80)", borderRadius: 18, borderWidth: 1, borderColor: "rgba(139,92,246,0.14)", padding: 14 },
  infoPosterWrap: { width: 72, height: 102, position: "relative", alignItems: "center", justifyContent: "center" },
  infoPosterGlow: { position: "absolute", width: 80, height: 110, borderRadius: 20, backgroundColor: "rgba(109,40,217,0.28)" },
  infoPoster: { width: 72, height: 102, borderRadius: 12, borderWidth: 1, borderColor: "rgba(139,92,246,0.30)" },
  infoPosterPlaceholder: { backgroundColor: "rgba(139,92,246,0.08)", alignItems: "center", justifyContent: "center" },
  infoMeta: { flex: 1, gap: 8, paddingTop: 2 },
  infoTitle: { fontSize: 15, fontFamily: "Cairo_800ExtraBold", color: "#fff", textAlign: "right", lineHeight: 22 },
  infoEpRow: { flexDirection: "row", gap: 8, flexWrap: "wrap" },
  infoEpBadge: { flexDirection: "row", alignItems: "center", gap: 5, backgroundColor: "rgba(124,58,237,0.18)", borderRadius: 8, borderWidth: 1, borderColor: "rgba(139,92,246,0.28)", paddingHorizontal: 10, paddingVertical: 5 },
  infoEpText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "#c4b5fd" },
  infoSrcBadge: { flexDirection: "row", alignItems: "center", gap: 5, backgroundColor: "rgba(34,197,94,0.10)", borderRadius: 8, borderWidth: 1, borderColor: "rgba(34,197,94,0.22)", paddingHorizontal: 10, paddingVertical: 5 },
  infoSrcText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "rgba(134,239,172,0.85)" },

  dot: { width: 5, height: 5, borderRadius: 2.5 },
  loadingBar: { flexDirection: "row", alignItems: "center", gap: 8 },
  loadingBarText: { fontSize: 10, color: "rgba(255,255,255,0.3)", fontFamily: "Cairo_400Regular" },

  tierSection: { gap: 6 },
  tierHeader: { flexDirection: "row", alignItems: "center", gap: 8, paddingHorizontal: 2 },
  srcSection: { borderRadius: 16, overflow: "hidden", backgroundColor: "rgba(14,12,24,0.92)", borderWidth: 1, borderColor: "rgba(255,255,255,0.07)" },
  tierDot: { width: 6, height: 6, borderRadius: 3 },
  tierTitle: { flex: 1, fontSize: 11, fontFamily: "Cairo_700Bold" },
  tierCount: { paddingHorizontal: 7, paddingVertical: 2, borderRadius: 7, borderWidth: 1 },
  tierCountText: { fontSize: 9, fontFamily: "Cairo_700Bold" },

  /* Source row — inside glass card */
  srcRow: { flexDirection: "row", alignItems: "center", gap: 11, paddingHorizontal: 14, paddingVertical: 11, borderBottomWidth: StyleSheet.hairlineWidth, borderBottomColor: "rgba(255,255,255,0.05)" },
  srcIcon: { width: 34, height: 34, borderRadius: 11, borderWidth: 1, alignItems: "center", justifyContent: "center" },
  srcNum: { fontSize: 12, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.92)" },
  srcTag: { paddingHorizontal: 7, paddingVertical: 2, borderRadius: 6, backgroundColor: "rgba(255,255,255,0.10)", borderWidth: 1, borderColor: "rgba(255,255,255,0.18)" },
  srcTagText: { fontSize: 10, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.82)", fontVariant: ["tabular-nums"] },
  srcCdn: { fontSize: 10, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.32)", marginTop: 2 },
  srcSubBadge: { paddingHorizontal: 6, paddingVertical: 2, borderRadius: 5, backgroundColor: "rgba(34,197,94,0.12)", borderWidth: 1, borderColor: "rgba(34,197,94,0.28)" },
  srcSubText: { fontSize: 9, fontFamily: "Cairo_700Bold", color: "rgba(134,239,172,0.9)" },
  srcRight: { flexDirection: "row", alignItems: "center", gap: 7 },
  srcQBadge: { paddingHorizontal: 8, paddingVertical: 3, borderRadius: 7, borderWidth: 1 },
  srcQText: { fontSize: 9, fontFamily: "Cairo_700Bold" },
  srcPlayBtn: { flexDirection: "row", alignItems: "center", gap: 4, backgroundColor: "rgba(109,40,217,0.88)", borderRadius: 10, paddingHorizontal: 11, paddingVertical: 6, borderWidth: 1, borderColor: "rgba(167,139,250,0.28)" },
  srcPlayText: { fontSize: 10, fontFamily: "Cairo_800ExtraBold", color: "#fff" },

  empty: { alignItems: "center", justifyContent: "center", gap: 14, paddingVertical: 60 },
  emptyTitle: { fontSize: 15, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.45)" },
  emptySub: { fontSize: 12, color: "rgba(255,255,255,0.22)", fontFamily: "Cairo_400Regular", textAlign: "center", lineHeight: 20, paddingHorizontal: 24 },
  retryBigBtn: { flexDirection: "row", alignItems: "center", gap: 8, backgroundColor: "rgba(139,92,246,0.15)", borderRadius: 14, borderWidth: 1, borderColor: "rgba(139,92,246,0.28)", paddingHorizontal: 20, paddingVertical: 11 },
  retryBigText: { fontSize: 13, fontFamily: "Cairo_700Bold", color: "#c4b5fd" },

  searchingWrap: { alignItems: "center", gap: 14, paddingVertical: 40 },
  searchingText: { fontSize: 12, color: "rgba(255,255,255,0.32)", fontFamily: "Cairo_400Regular", textAlign: "center" },
});
