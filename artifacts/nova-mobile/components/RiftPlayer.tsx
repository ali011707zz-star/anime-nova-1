import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useVideoPlayer, VideoView } from "expo-video";
import React, {
  useCallback, useEffect, useRef, useState,
} from "react";
import {
  ActivityIndicator, Animated, Dimensions,
  Easing, Platform, Pressable, StyleSheet, Text, View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";

const { width: W, height: H } = Dimensions.get("window");

export type PlayerSource = {
  url: string;
  label: string;
  quality: "1080p FHD" | "720p HD" | "360p SD";
};

type Props = {
  sources: PlayerSource[];
  initialSourceIndex?: number;
  title?: string;
  episode?: number;
  onBack: () => void;
  onNextEpisode?: () => void;
  onPrevEpisode?: () => void;
  onProgress?: (pos: number, dur: number) => void;
  initialPosition?: number;
};

const QUALITY_COLOR: Record<string, string> = {
  "1080p FHD": "#fbbf24",
  "720p HD": "#34d399",
  "360p SD": "#94a3b8",
};

const Q_SHORT: Record<string, string> = {
  "1080p FHD": "FHD",
  "720p HD": "HD",
  "360p SD": "SD",
};

function formatTime(secs: number): string {
  if (!secs || isNaN(secs)) return "0:00";
  const h = Math.floor(secs / 3600);
  const m = Math.floor((secs % 3600) / 60);
  const s = Math.floor(secs % 60);
  if (h > 0) return `${h}:${String(m).padStart(2, "0")}:${String(s).padStart(2, "0")}`;
  return `${m}:${String(s).padStart(2, "0")}`;
}

export function RiftPlayer({
  sources,
  initialSourceIndex = 0,
  title,
  episode,
  onBack,
  onNextEpisode,
  onPrevEpisode,
  onProgress,
  initialPosition,
}: Props) {
  const insets = useSafeAreaInsets();
  const [srcIdx, setSrcIdx] = useState(initialSourceIndex);
  const [showControls, setShowControls] = useState(true);
  const [showSrcSheet, setShowSrcSheet] = useState(false);
  const [position, setPosition] = useState(0);
  const [duration, setDuration] = useState(0);
  const [buffering, setBuffering] = useState(true);
  const [isPlaying, setIsPlaying] = useState(true);
  const [error, setError] = useState(false);

  const controlsOpacity = useRef(new Animated.Value(1)).current;
  const hideTimer = useRef<ReturnType<typeof setTimeout> | null>(null);
  const progressTimer = useRef<ReturnType<typeof setInterval> | null>(null);

  const currentSrc = sources[srcIdx];

  const player = useVideoPlayer(currentSrc?.url || "", (p) => {
    p.loop = false;
    p.play();
    if (initialPosition && initialPosition > 5) {
      try { p.currentTime = initialPosition; } catch {}
    }
  });

  useEffect(() => {
    const sub = player.addListener("playingChange", (e: any) => {
      setIsPlaying(e.isPlaying ?? false);
      setBuffering(false);
    });
    const sub2 = player.addListener("statusChange", (e: any) => {
      if (e.status === "loading") setBuffering(true);
      else if (e.status === "readyToPlay") setBuffering(false);
      else if (e.status === "error") { setError(true); setBuffering(false); }
    });
    return () => { sub.remove(); sub2.remove(); };
  }, [player]);

  useEffect(() => {
    progressTimer.current = setInterval(() => {
      try {
        const pos = player.currentTime || 0;
        const dur = player.duration || 0;
        setPosition(pos);
        setDuration(dur);
        if (dur > 0 && onProgress) onProgress(pos, dur);
      } catch {}
    }, 1000);
    return () => { if (progressTimer.current) clearInterval(progressTimer.current); };
  }, [player, onProgress]);

  const fadeIn = useCallback(() => {
    if (hideTimer.current) clearTimeout(hideTimer.current);
    Animated.timing(controlsOpacity, { toValue: 1, duration: 200, useNativeDriver: true }).start();
    setShowControls(true);
    hideTimer.current = setTimeout(fadeOut, 3500);
  }, []);

  const fadeOut = useCallback(() => {
    Animated.timing(controlsOpacity, { toValue: 0, duration: 400, useNativeDriver: true }).start(() => {
      setShowControls(false);
    });
  }, []);

  useEffect(() => {
    fadeIn();
    return () => { if (hideTimer.current) clearTimeout(hideTimer.current); };
  }, []);

  const togglePlay = useCallback(() => {
    fadeIn();
    try {
      if (player.playing) player.pause();
      else player.play();
    } catch {}
  }, [player, fadeIn]);

  const seek = useCallback((secs: number) => {
    fadeIn();
    try { player.currentTime = Math.max(0, Math.min(secs, duration)); } catch {}
  }, [player, duration, fadeIn]);

  const switchSource = useCallback((idx: number) => {
    setSrcIdx(idx);
    setError(false);
    setBuffering(true);
    setShowSrcSheet(false);
    try { player.replace(sources[idx].url); } catch {}
  }, [player, sources]);

  const progress = duration > 0 ? Math.min(position / duration, 1) : 0;

  if (!currentSrc) return null;

  return (
    <View style={s.root}>
      <VideoView
        player={player}
        style={s.video}
        nativeControls={false}
        contentFit="contain"
      />

      {/* Tap area */}
      <Pressable style={StyleSheet.absoluteFill} onPress={fadeIn} />

      {/* Buffering spinner */}
      {buffering && !error && (
        <View style={s.spinnerWrap}>
          <SpinRing />
        </View>
      )}

      {/* Error state */}
      {error && (
        <View style={s.errorWrap}>
          <Ionicons name="alert-circle-outline" size={40} color="rgba(239,68,68,0.9)" />
          <Text style={s.errorText}>تعذّر تشغيل المصدر</Text>
          {sources.length > 1 && (
            <Pressable
              onPress={() => switchSource((srcIdx + 1) % sources.length)}
              style={s.errorBtn}
            >
              <Text style={s.errorBtnText}>جرّب المصدر التالي</Text>
            </Pressable>
          )}
        </View>
      )}

      {/* Controls overlay */}
      <Animated.View style={[StyleSheet.absoluteFill, { opacity: controlsOpacity }, s.overlay]} pointerEvents={showControls ? "box-none" : "none"}>
        {/* Top gradient */}
        <LinearGradient
          colors={["rgba(0,0,0,0.75)", "transparent"]}
          style={[s.topGrad, { paddingTop: Platform.OS === "web" ? 12 : insets.top + 8 }]}
        >
          <Pressable onPress={onBack} style={s.backBtn} hitSlop={16}>
            <Ionicons name="chevron-back" size={24} color="#fff" />
          </Pressable>
          <View style={s.titleWrap}>
            {title && <Text style={s.titleText} numberOfLines={1}>{title}</Text>}
            {episode && <Text style={s.epText}>الحلقة {episode}</Text>}
          </View>
          <View style={[s.qualityPill, { borderColor: QUALITY_COLOR[currentSrc.quality] || "#fff" }]}>
            <Text style={[s.qualityText, { color: QUALITY_COLOR[currentSrc.quality] || "#fff" }]}>
              {Q_SHORT[currentSrc.quality] || "HD"}
            </Text>
          </View>
        </LinearGradient>

        {/* Center controls */}
        <View style={s.centerRow} pointerEvents="box-none">
          {onPrevEpisode && (
            <Pressable onPress={onPrevEpisode} style={s.skipBtn} hitSlop={12}>
              <Ionicons name="play-skip-back" size={22} color="rgba(255,255,255,0.85)" />
            </Pressable>
          )}
          <Pressable onPress={() => seek(position - 10)} style={s.seekBtn} hitSlop={12}>
            <Ionicons name="play-back" size={22} color="rgba(255,255,255,0.85)" />
            <Text style={s.seekLabel}>10</Text>
          </Pressable>
          <Pressable onPress={togglePlay} style={s.playBtn}>
            <Ionicons name={isPlaying ? "pause" : "play"} size={32} color="#fff" />
          </Pressable>
          <Pressable onPress={() => seek(position + 10)} style={s.seekBtn} hitSlop={12}>
            <Text style={s.seekLabel}>10</Text>
            <Ionicons name="play-forward" size={22} color="rgba(255,255,255,0.85)" />
          </Pressable>
          {onNextEpisode && (
            <Pressable onPress={onNextEpisode} style={s.skipBtn} hitSlop={12}>
              <Ionicons name="play-skip-forward" size={22} color="rgba(255,255,255,0.85)" />
            </Pressable>
          )}
        </View>

        {/* Bottom gradient */}
        <LinearGradient
          colors={["transparent", "rgba(0,0,0,0.85)"]}
          style={[s.bottomGrad, { paddingBottom: Platform.OS === "web" ? 12 : insets.bottom + 8 }]}
        >
          {/* Seek bar */}
          <View style={s.seekRow}>
            <Text style={s.timeText}>{formatTime(position)}</Text>
            <View style={s.seekBarWrap}>
              <SeekBar
                progress={progress}
                onSeek={(p) => seek(p * duration)}
              />
            </View>
            <Text style={s.timeText}>{formatTime(duration)}</Text>
          </View>

          {/* Source btn */}
          <Pressable onPress={() => setShowSrcSheet(true)} style={s.srcBtn}>
            <Ionicons name="layers-outline" size={15} color="rgba(255,255,255,0.7)" />
            <Text style={s.srcBtnText}>{currentSrc.label}</Text>
            <Ionicons name="chevron-up" size={13} color="rgba(255,255,255,0.5)" />
          </Pressable>
        </LinearGradient>
      </Animated.View>

      {/* Source sheet */}
      {showSrcSheet && (
        <Pressable style={s.sheetBg} onPress={() => setShowSrcSheet(false)}>
          <View style={[s.sheet, { paddingBottom: insets.bottom + 12 }]}>
            <View style={s.sheetHandle} />
            <Text style={s.sheetTitle}>اختر المصدر</Text>
            {sources.map((src, i) => (
              <Pressable
                key={i}
                onPress={() => switchSource(i)}
                style={[s.sheetItem, i === srcIdx && s.sheetItemActive]}
              >
                <View style={[s.sheetDot, { backgroundColor: QUALITY_COLOR[src.quality] || "#fff" }]} />
                <Text style={[s.sheetItemText, i === srcIdx && s.sheetItemTextActive]}>
                  {src.label}
                </Text>
                <View style={[s.sheetQBadge, { borderColor: QUALITY_COLOR[src.quality] || "#fff" }]}>
                  <Text style={[s.sheetQText, { color: QUALITY_COLOR[src.quality] || "#fff" }]}>
                    {Q_SHORT[src.quality] || "HD"}
                  </Text>
                </View>
                {i === srcIdx && (
                  <Ionicons name="checkmark-circle" size={16} color="#8B5CF6" />
                )}
              </Pressable>
            ))}
          </View>
        </Pressable>
      )}
    </View>
  );
}

function SeekBar({ progress, onSeek }: { progress: number; onSeek: (p: number) => void }) {
  const barRef = useRef<View>(null);
  const [barWidth, setBarWidth] = useState(1);

  return (
    <View
      ref={barRef}
      style={s.progressBg}
      onLayout={(e) => setBarWidth(e.nativeEvent.layout.width)}
    >
      <View style={[s.progressFill, { width: `${Math.min(progress * 100, 100)}%` }]} />
      <Pressable
        style={[s.thumb, { left: `${Math.min(progress * 100, 100)}%` }]}
        onPress={(e) => {
          const x = e.nativeEvent.locationX;
          onSeek(Math.max(0, Math.min(x / barWidth, 1)));
        }}
      />
    </View>
  );
}

function SpinRing() {
  const rot = useRef(new Animated.Value(0)).current;
  useEffect(() => {
    Animated.loop(
      Animated.timing(rot, { toValue: 1, duration: 900, easing: Easing.linear, useNativeDriver: true })
    ).start();
  }, []);
  const rotate = rot.interpolate({ inputRange: [0, 1], outputRange: ["0deg", "360deg"] });
  return (
    <View style={{ width: 48, height: 48 }}>
      <View style={[StyleSheet.absoluteFill, { borderRadius: 24, borderWidth: 2.5, borderColor: "rgba(139,92,246,0.18)" }]} />
      <Animated.View style={[StyleSheet.absoluteFill, { borderRadius: 24, borderWidth: 2.5, borderColor: "transparent", borderTopColor: "#8B5CF6", borderRightColor: "rgba(139,92,246,0.45)", transform: [{ rotate }] }]} />
    </View>
  );
}

const s = StyleSheet.create({
  root: { flex: 1, backgroundColor: "#000", position: "relative" },
  video: { width: "100%", height: "100%" },
  spinnerWrap: { ...StyleSheet.absoluteFillObject, alignItems: "center", justifyContent: "center" },
  errorWrap: { ...StyleSheet.absoluteFillObject, alignItems: "center", justifyContent: "center", gap: 12 },
  errorText: { color: "#ef4444", fontSize: 15, fontFamily: "Cairo_600SemiBold" },
  errorBtn: { backgroundColor: "rgba(239,68,68,0.15)", borderRadius: 10, paddingHorizontal: 20, paddingVertical: 10, borderWidth: 1, borderColor: "rgba(239,68,68,0.4)" },
  errorBtnText: { color: "#ef4444", fontFamily: "Cairo_600SemiBold", fontSize: 14 },
  overlay: { position: "absolute", top: 0, left: 0, right: 0, bottom: 0, justifyContent: "space-between" },
  topGrad: { paddingHorizontal: 16, paddingBottom: 20, flexDirection: "row", alignItems: "center", gap: 12 },
  backBtn: { width: 36, height: 36, borderRadius: 18, backgroundColor: "rgba(0,0,0,0.45)", alignItems: "center", justifyContent: "center" },
  titleWrap: { flex: 1, gap: 1 },
  titleText: { color: "#fff", fontSize: 15, fontFamily: "Cairo_700Bold" },
  epText: { color: "rgba(255,255,255,0.6)", fontSize: 12, fontFamily: "Cairo_400Regular" },
  qualityPill: { borderRadius: 6, borderWidth: 1, paddingHorizontal: 8, paddingVertical: 2 },
  qualityText: { fontSize: 11, fontFamily: "Cairo_700Bold" },
  centerRow: { flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 20 },
  skipBtn: { width: 44, height: 44, borderRadius: 22, backgroundColor: "rgba(0,0,0,0.3)", alignItems: "center", justifyContent: "center" },
  seekBtn: { width: 50, height: 44, borderRadius: 22, backgroundColor: "rgba(0,0,0,0.3)", alignItems: "center", justifyContent: "center", gap: 1 },
  seekLabel: { color: "rgba(255,255,255,0.7)", fontSize: 9, fontFamily: "Cairo_700Bold" },
  playBtn: { width: 64, height: 64, borderRadius: 32, backgroundColor: "rgba(139,92,246,0.85)", alignItems: "center", justifyContent: "center", shadowColor: "#8B5CF6", shadowOpacity: 0.6, shadowRadius: 12 },
  bottomGrad: { paddingHorizontal: 16, paddingTop: 24, gap: 10 },
  seekRow: { flexDirection: "row", alignItems: "center", gap: 10 },
  timeText: { color: "rgba(255,255,255,0.75)", fontSize: 11, fontFamily: "Cairo_400Regular", minWidth: 38, textAlign: "center" },
  seekBarWrap: { flex: 1 },
  progressBg: { height: 4, backgroundColor: "rgba(255,255,255,0.2)", borderRadius: 2, position: "relative" },
  progressFill: { height: 4, backgroundColor: "#8B5CF6", borderRadius: 2 },
  thumb: { position: "absolute", top: -6, width: 16, height: 16, borderRadius: 8, backgroundColor: "#fff", marginLeft: -8, shadowColor: "#000", shadowOpacity: 0.4, shadowRadius: 3 },
  srcBtn: { flexDirection: "row", alignItems: "center", gap: 6, alignSelf: "center", backgroundColor: "rgba(0,0,0,0.4)", borderRadius: 20, paddingHorizontal: 14, paddingVertical: 6, borderWidth: 1, borderColor: "rgba(255,255,255,0.1)" },
  srcBtnText: { color: "rgba(255,255,255,0.7)", fontSize: 12, fontFamily: "Cairo_600SemiBold", maxWidth: 140 },
  sheetBg: { ...StyleSheet.absoluteFillObject, backgroundColor: "rgba(0,0,0,0.6)", justifyContent: "flex-end" },
  sheet: { backgroundColor: "#111116", borderTopLeftRadius: 20, borderTopRightRadius: 20, paddingTop: 12, paddingHorizontal: 16, gap: 4 },
  sheetHandle: { width: 36, height: 4, borderRadius: 2, backgroundColor: "rgba(255,255,255,0.2)", alignSelf: "center", marginBottom: 12 },
  sheetTitle: { color: "#fff", fontSize: 16, fontFamily: "Cairo_700Bold", marginBottom: 8 },
  sheetItem: { flexDirection: "row", alignItems: "center", gap: 10, paddingVertical: 12, paddingHorizontal: 12, borderRadius: 12, borderWidth: 1, borderColor: "transparent" },
  sheetItemActive: { backgroundColor: "rgba(139,92,246,0.12)", borderColor: "rgba(139,92,246,0.3)" },
  sheetDot: { width: 8, height: 8, borderRadius: 4 },
  sheetItemText: { flex: 1, color: "rgba(255,255,255,0.7)", fontSize: 14, fontFamily: "Cairo_600SemiBold" },
  sheetItemTextActive: { color: "#fff" },
  sheetQBadge: { borderRadius: 5, borderWidth: 1, paddingHorizontal: 6, paddingVertical: 1 },
  sheetQText: { fontSize: 10, fontFamily: "Cairo_700Bold" },
});
