/**
 * RiftPlayer v4 — مشغل نوفا موبايل الزجاجي
 * الميزات الكاملة: ترجمة + سحب شريط + إيماءة أفقية + قفل landscape
 */
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import * as Haptics from "expo-haptics";
import { useVideoPlayer, VideoView } from "expo-video";
import React, {
  useCallback, useEffect, useRef, useState,
} from "react";
import {
  Animated, Dimensions, Easing, Platform,
  PanResponder, Pressable, StyleSheet, Text, View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";

const { width: W, height: H } = Dimensions.get("window");

/* ─── Types ─── */
export type PlayerSource = {
  url: string;
  label: string;
  quality: "1080p FHD" | "720p HD" | "360p SD";
  subtitleUrl?: string;
};

export interface SubCue { start: number; end: number; text: string }

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
  skipIntro?: { start: number; end: number };
  skipOutro?: { start: number; end: number };
  subCues?: SubCue[];
  subEnabled?: boolean;
  autoPlayNext?: boolean;
  totalEps?: number;
};

/* ─── Constants ─── */
const SPEEDS = [0.5, 0.75, 1, 1.25, 1.5, 2];

const QUALITY_COLOR: Record<string, string> = {
  "1080p FHD": "#fbbf24",
  "720p HD":   "#34d399",
  "360p SD":   "#94a3b8",
};
const Q_SHORT: Record<string, string> = {
  "1080p FHD": "FHD",
  "720p HD":   "HD",
  "360p SD":   "SD",
};

function fmtTime(secs: number): string {
  if (!secs || isNaN(secs)) return "0:00";
  const h = Math.floor(secs / 3600);
  const m = Math.floor((secs % 3600) / 60);
  const s = Math.floor(secs % 60);
  if (h > 0) return `${h}:${String(m).padStart(2, "0")}:${String(s).padStart(2, "0")}`;
  return `${m}:${String(s).padStart(2, "0")}`;
}

/* ─── VTT Parser ─── */
function parseVTTTime(s: string): number {
  const parts = s.replace(",", ".").split(":");
  let sec = 0;
  for (const p of parts) sec = sec * 60 + parseFloat(p);
  return isNaN(sec) ? 0 : sec;
}

function parseVTT(text: string): SubCue[] {
  const cues: SubCue[] = [];
  const blocks = text.split(/\n\n+/);
  for (const block of blocks) {
    const lines = block.trim().split("\n");
    let ti = 0;
    if (ti < lines.length && !lines[ti].includes("-->")) ti++;
    if (ti >= lines.length) continue;
    const m = lines[ti].match(/(\d[\d:.]*)\s*-->\s*(\d[\d:.]*)/);
    if (!m) continue;
    const start = parseVTTTime(m[1]);
    const end   = parseVTTTime(m[2]);
    const textLines = lines.slice(ti + 1)
      .map(l => l.replace(/<[^>]*>/g, "")
        .replace(/&amp;/g,"&").replace(/&lt;/g,"<")
        .replace(/&gt;/g,">").replace(/&nbsp;/g," ").trim())
      .filter(Boolean);
    if (textLines.length > 0) cues.push({ start, end, text: textLines.join("\n") });
  }
  return cues;
}

/* ─── SpinRing ─── */
function SpinRing() {
  const rot = useRef(new Animated.Value(0)).current;
  useEffect(() => {
    Animated.loop(
      Animated.timing(rot, { toValue: 1, duration: 900, easing: Easing.linear, useNativeDriver: true })
    ).start();
  }, []);
  const rotate = rot.interpolate({ inputRange: [0, 1], outputRange: ["0deg", "360deg"] });
  return (
    <View style={{ width: 52, height: 52 }}>
      <View style={[StyleSheet.absoluteFill, { borderRadius: 26, borderWidth: 2.5, borderColor: "rgba(139,92,246,0.18)" }]} />
      <Animated.View style={[StyleSheet.absoluteFill, {
        borderRadius: 26, borderWidth: 2.5, borderColor: "transparent",
        borderTopColor: "#8B5CF6", borderRightColor: "rgba(139,92,246,0.45)",
        transform: [{ rotate }],
      }]} />
    </View>
  );
}

/* ─── Main Component ─── */
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
  skipIntro,
  skipOutro,
  subCues,
  subEnabled = false,
  autoPlayNext = true,
  totalEps = 999,
}: Props) {
  const insets = useSafeAreaInsets();

  /* ─── Source ─── */
  const [srcIdx, setSrcIdx]           = useState(initialSourceIndex);
  const currentSrc                    = sources[srcIdx];

  /* ─── Playback state ─── */
  const [position, setPosition]       = useState(0);
  const [duration, setDuration]       = useState(0);
  const [buffering, setBuffering]     = useState(true);
  const [isPlaying, setIsPlaying]     = useState(true);
  const [error, setError]             = useState(false);
  const [isEnded, setIsEnded]         = useState(false);

  /* ─── UI state ─── */
  const [showControls, setShowControls] = useState(true);
  const [showSrcSheet, setShowSrcSheet] = useState(false);
  const [showSpeedSheet, setShowSpeedSheet] = useState(false);
  const [showViewSheet, setShowViewSheet] = useState(false);
  const [showSubSheet, setShowSubSheet]   = useState(false);
  const [isLocked, setIsLocked]         = useState(false);
  const [showUnlock, setShowUnlock]     = useState(false);
  const [contentFit, setContentFit]     = useState<"contain" | "cover">("contain");

  /* ─── Subtitle state ─── */
  const [subOn, setSubOn]               = useState(subEnabled);
  const [loadedCues, setLoadedCues]     = useState<SubCue[]>([]);
  const [subLoading, setSubLoading]     = useState(false);

  /* ─── Seekbar drag ─── */
  const [isDragging, setIsDragging]     = useState(false);
  const [dragPct, setDragPct]           = useState(0);

  /* ─── Speed ─── */
  const [speed, setSpeed]             = useState(1);
  const [longPressSpeed, setLongPressSpeed] = useState(false);
  const prevSpeedRef                  = useRef(1);

  /* ─── Volume / Brightness — also kept as refs so PanResponder can read latest ─── */
  const [volume, setVolume]           = useState(1);
  const [brightness, setBrightness]   = useState(0);   // 0 = no dim overlay, 0.75 = very dark
  const volumeRef                     = useRef(1);
  const brightnessRef                 = useRef(0);

  /* ─── Gesture feedback ─── */
  const [feedback, setFeedback]       = useState<{ type: "volume" | "brightness" | "seek"; value: number; delta?: number } | null>(null);
  const feedbackTimer                 = useRef<ReturnType<typeof setTimeout> | null>(null);

  /* ─── Double tap ─── */
  const [dblTap, setDblTap]           = useState<{ side: "L" | "R"; id: number } | null>(null);

  /* ─── Auto-play countdown ─── */
  const [autoCountdown, setAutoCountdown] = useState(0);

  /* ─── Subtitle ─── */
  const [activeCue, setActiveCue]     = useState<SubCue | null>(null);

  /* ─── Animated values ─── */
  const controlsOpacity   = useRef(new Animated.Value(1)).current;
  const dblTapLeft        = useRef(new Animated.Value(0)).current;
  const dblTapRight       = useRef(new Animated.Value(0)).current;

  /* ─── Refs ─── */
  const hideTimer         = useRef<ReturnType<typeof setTimeout> | null>(null);
  const progressTimer     = useRef<ReturnType<typeof setInterval> | null>(null);
  const lastTap           = useRef<{ time: number; side: "L" | "R" } | null>(null);
  const tapTimer          = useRef<ReturnType<typeof setTimeout> | null>(null);
  const longPressTimer    = useRef<ReturnType<typeof setTimeout> | null>(null);
  const unlockTimer       = useRef<ReturnType<typeof setTimeout> | null>(null);
  const gestureSide       = useRef<"L" | "R" | null>(null);
  const gestureStartY     = useRef(0);
  const gestureStartVal   = useRef(0);
  const barRef            = useRef<View>(null);
  const barWidth          = useRef(1);
  const resumedRef        = useRef(false);
  const subRafRef         = useRef<any>(null);
  /* new refs for seek+subtitle */
  const durationRef       = useRef(0);
  const positionRef       = useRef(0);
  const seekRef           = useRef<(s: number) => void>(() => {});
  const gestureTypeRef    = useRef<"vol" | "bri" | "seek" | null>(null);
  const gestureStartPosRef= useRef(0);
  const gestureStartXRef  = useRef(0);

  /* ─── expo-video player ─── */
  const player = useVideoPlayer(currentSrc?.url || "", (p) => {
    p.loop = false;
    p.volume = 1;
    p.play();
    if (initialPosition && initialPosition > 5) {
      try { p.currentTime = initialPosition; } catch {}
    }
  });

  /* ─── Player events ─── */
  useEffect(() => {
    const sub1 = player.addListener("playingChange", (e: any) => {
      setIsPlaying(e.isPlaying ?? false);
      setBuffering(false);
    });
    const sub2 = player.addListener("statusChange", (e: any) => {
      if (e.status === "loading")       { setBuffering(true); }
      else if (e.status === "readyToPlay") { setBuffering(false); setError(false); }
      else if (e.status === "error")    { setError(true); setBuffering(false); }
    });
    return () => { sub1.remove(); sub2.remove(); };
  }, [player]);

  /* ─── Auto-advance on error ─── */
  useEffect(() => {
    if (!error || sources.length <= 1) return;
    const t = setTimeout(() => switchSource((srcIdx + 1) % sources.length), 4000);
    return () => clearTimeout(t);
  }, [error, srcIdx, sources.length]);

  /* ─── Progress polling ─── */
  useEffect(() => {
    progressTimer.current = setInterval(() => {
      try {
        const pos = player.currentTime || 0;
        const dur = player.duration || 0;
        setPosition(pos);
        setDuration(dur);
        positionRef.current = pos;
        durationRef.current = dur;
        if (dur > 0 && onProgress) onProgress(pos, dur);
        // Resume to saved position once
        if (!resumedRef.current && initialPosition && initialPosition > 5 && dur > 30) {
          resumedRef.current = true;
          try { player.currentTime = initialPosition; } catch {}
        }
        // Detect end
        if (dur > 0 && pos >= dur - 0.5) {
          setIsEnded(true);
          setIsPlaying(false);
        }
      } catch {}
    }, 500);
    return () => { if (progressTimer.current) clearInterval(progressTimer.current); };
  }, [player, onProgress, initialPosition]);

  /* ─── Subtitle cue lookup via rAF ─── */
  const effectiveCues = (subCues?.length ? subCues : loadedCues);
  useEffect(() => {
    if (subRafRef.current) { cancelAnimationFrame(subRafRef.current); subRafRef.current = null; }
    if (!effectiveCues.length || !subOn) { setActiveCue(null); return; }
    let lastKey = "";
    const tick = () => {
      try {
        const ct = player.currentTime || 0;
        const cue = effectiveCues.find(c => ct >= c.start && ct <= c.end) ?? null;
        const key = cue ? `${cue.start}` : "";
        if (key !== lastKey) { lastKey = key; setActiveCue(cue); }
      } catch {}
      subRafRef.current = requestAnimationFrame(tick);
    };
    subRafRef.current = requestAnimationFrame(tick);
    return () => { if (subRafRef.current) { cancelAnimationFrame(subRafRef.current); subRafRef.current = null; } };
  }, [effectiveCues, subOn, player]);

  /* ─── VTT loading when source changes ─── */
  useEffect(() => {
    const url = currentSrc?.subtitleUrl;
    if (!url) { setLoadedCues([]); return; }
    let cancelled = false;
    setSubLoading(true);
    setLoadedCues([]);
    fetch(url, { headers: { "Accept": "text/vtt,text/plain,*/*" } })
      .then(r => r.text())
      .then(text => {
        if (!cancelled) {
          const cues = parseVTT(text);
          setLoadedCues(cues);
          if (cues.length > 0) setSubOn(true);
        }
      })
      .catch(() => { if (!cancelled) setLoadedCues([]); })
      .finally(() => { if (!cancelled) setSubLoading(false); });
    return () => { cancelled = true; };
  }, [currentSrc?.subtitleUrl]);

  /* ─── Screen orientation lock to landscape ─── */
  useEffect(() => {
    let cleanup: () => void = () => {};
    (async () => {
      try {
        const SO = await import("expo-screen-orientation" as any);
        await SO.lockAsync(SO.OrientationLock?.LANDSCAPE ?? 2);
        cleanup = () => SO.unlockAsync?.().catch(() => {});
      } catch {}
    })();
    return () => cleanup();
  }, []);

  /* ─── Auto-play countdown when episode ends ─── */
  useEffect(() => {
    if (!isEnded || !autoPlayNext || !onNextEpisode || (episode ?? 0) >= totalEps) {
      setAutoCountdown(0);
      return;
    }
    setAutoCountdown(5);
    const tick = setInterval(() => {
      setAutoCountdown(c => {
        if (c <= 1) { clearInterval(tick); onNextEpisode(); return 0; }
        return c - 1;
      });
    }, 1000);
    return () => clearInterval(tick);
  }, [isEnded, autoPlayNext]); // eslint-disable-line

  /* ─── Controls show/hide ─── */
  const schedHide = useCallback(() => {
    if (hideTimer.current) clearTimeout(hideTimer.current);
    hideTimer.current = setTimeout(() => {
      Animated.timing(controlsOpacity, { toValue: 0, duration: 350, useNativeDriver: true }).start(() => setShowControls(false));
    }, 4000);
  }, []);

  const fadeIn = useCallback(() => {
    if (hideTimer.current) clearTimeout(hideTimer.current);
    Animated.timing(controlsOpacity, { toValue: 1, duration: 200, useNativeDriver: true }).start();
    setShowControls(true);
    schedHide();
  }, [schedHide]);

  useEffect(() => { fadeIn(); return () => { if (hideTimer.current) clearTimeout(hideTimer.current); }; }, []);

  /* ─── Actions ─── */
  const togglePlay = useCallback(() => {
    fadeIn();
    try { if (player.playing) player.pause(); else player.play(); } catch {}
  }, [player, fadeIn]);

  const seek = useCallback((secs: number) => {
    fadeIn();
    const target = Math.max(0, Math.min(secs, durationRef.current || duration));
    try { player.currentTime = target; setPosition(target); } catch {}
  }, [player, duration, fadeIn]);
  /* keep seekRef up to date every render for PanResponder closures */
  seekRef.current = seek;

  const changeSpeed = useCallback((s: number) => {
    setSpeed(s);
    try { player.playbackRate = s; } catch {}
    setShowSpeedSheet(false);
    fadeIn();
  }, [player, fadeIn]);

  const switchSource = useCallback((idx: number) => {
    setSrcIdx(idx);
    setError(false);
    setBuffering(true);
    setShowSrcSheet(false);
    setIsEnded(false);
    resumedRef.current = false;
    try { player.replace(sources[idx].url); } catch {}
  }, [player, sources]);

  /* ─── Double tap ripple ─── */
  const triggerDblTap = useCallback((side: "L" | "R") => {
    const anim = side === "L" ? dblTapLeft : dblTapRight;
    setDblTap({ side, id: Date.now() });
    anim.setValue(0);
    Animated.timing(anim, { toValue: 1, duration: 600, useNativeDriver: true }).start(() => {
      setDblTap(null);
    });
    try { Haptics.impactAsync(Haptics.ImpactFeedbackStyle.Light); } catch {}
    seek(side === "R" ? position + 10 : position - 10);
  }, [seek, position, dblTapLeft, dblTapRight]);

  /* ─── Show feedback overlay ─── */
  const showFeedback = useCallback((fb: typeof feedback) => {
    setFeedback(fb);
    if (feedbackTimer.current) clearTimeout(feedbackTimer.current);
    feedbackTimer.current = setTimeout(() => setFeedback(null), 900);
  }, []);

  /* ─── PanResponder for gestures — vol/bri vertical + seek horizontal ─── */
  const panResponder = useRef(
    PanResponder.create({
      onStartShouldSetPanResponder: () => true,
      onMoveShouldSetPanResponder: (_, gs) => {
        const adx = Math.abs(gs.dx), ady = Math.abs(gs.dy);
        return (ady > 8 && ady > adx * 1.3) || (adx > 10 && adx > ady * 1.3);
      },
      onPanResponderGrant: (evt, gs) => {
        const side: "L" | "R" = evt.nativeEvent.pageX < W / 2 ? "L" : "R";
        gestureSide.current = side;
        gestureTypeRef.current = null;
        gestureStartY.current = gs.y0;
        gestureStartXRef.current = gs.x0;
        gestureStartVal.current = side === "R" ? volumeRef.current : brightnessRef.current;
        gestureStartPosRef.current = positionRef.current;
      },
      onPanResponderMove: (_, gs) => {
        const side = gestureSide.current;
        if (!side) return;
        /* Determine gesture type on first significant movement */
        if (!gestureTypeRef.current) {
          const adx = Math.abs(gs.dx), ady = Math.abs(gs.dy);
          if (adx < 8 && ady < 8) return;
          gestureTypeRef.current = adx > ady * 1.3 ? "seek"
            : side === "R" ? "vol" : "bri";
        }
        if (gestureTypeRef.current === "seek") {
          /* Full screen width ≈ 120 seconds */
          const seekDelta = (gs.dx / W) * 120;
          const newPos = Math.max(0, Math.min(durationRef.current, gestureStartPosRef.current + seekDelta));
          setFeedback({ type: "seek", value: newPos, delta: seekDelta });
        } else if (gestureTypeRef.current === "vol") {
          const delta = -(gs.moveY - gestureStartY.current) / (H * 0.55);
          const newVol = Math.max(0, Math.min(1, gestureStartVal.current + delta));
          volumeRef.current = newVol;
          setVolume(newVol);
          setFeedback({ type: "volume", value: newVol });
        } else {
          const delta = -(gs.moveY - gestureStartY.current) / (H * 0.55);
          const newBri = Math.max(0, Math.min(0.75, gestureStartVal.current - delta));
          brightnessRef.current = newBri;
          setBrightness(newBri);
          setFeedback({ type: "brightness", value: newBri });
        }
      },
      onPanResponderRelease: (_, gs) => {
        if (gestureTypeRef.current === "seek") {
          const seekDelta = (gs.dx / W) * 120;
          const newPos = Math.max(0, Math.min(durationRef.current, gestureStartPosRef.current + seekDelta));
          seekRef.current(newPos);
        }
        gestureTypeRef.current = null;
        gestureSide.current = null;
        if (feedbackTimer.current) clearTimeout(feedbackTimer.current);
        feedbackTimer.current = setTimeout(() => setFeedback(null), 900);
      },
    })
  ).current;

  /* ─── Seekbar drag PanResponder ─── */
  const seekBarPan = useRef(
    PanResponder.create({
      onStartShouldSetPanResponder: () => true,
      onMoveShouldSetPanResponder: () => true,
      onPanResponderGrant: (e) => {
        const x = Math.max(0, e.nativeEvent.locationX);
        const pct = Math.min(1, x / Math.max(1, barWidth.current));
        setIsDragging(true);
        setDragPct(pct);
      },
      onPanResponderMove: (e) => {
        const x = Math.max(0, e.nativeEvent.locationX);
        const pct = Math.min(1, x / Math.max(1, barWidth.current));
        setDragPct(pct);
      },
      onPanResponderRelease: (e) => {
        const x = Math.max(0, e.nativeEvent.locationX);
        const pct = Math.min(1, x / Math.max(1, barWidth.current));
        setIsDragging(false);
        seekRef.current(pct * durationRef.current);
      },
    })
  ).current;

  /* ─── Skip intro/outro logic ─── */
  const SKIP_LEAD = 8;
  const inIntroRange = !!skipIntro && position >= Math.max(0, skipIntro.start - SKIP_LEAD) && position < skipIntro.end;
  const inOutroRange = !!skipOutro && position >= Math.max(0, skipOutro.start - SKIP_LEAD) && position <= skipOutro.end;
  const hasSkipData  = !!(skipIntro || skipOutro);

  const doSkipIntro = useCallback(() => {
    if (skipIntro) seek(skipIntro.end);
    fadeIn();
  }, [skipIntro, seek, fadeIn]);

  const doSkipOutro = useCallback(() => {
    if (onNextEpisode) { onNextEpisode(); return; }
    if (skipOutro) seek(skipOutro.end);
    fadeIn();
  }, [skipOutro, onNextEpisode, seek, fadeIn]);

  /* ─── Tap handler with double-tap detection ─── */
  const handleTap = useCallback((pageX: number) => {
    if (isLocked) {
      if (unlockTimer.current) clearTimeout(unlockTimer.current);
      setShowUnlock(true);
      unlockTimer.current = setTimeout(() => setShowUnlock(false), 3000);
      return;
    }
    const side: "L" | "R" = pageX < W / 2 ? "L" : "R";
    const now = Date.now();
    if (lastTap.current && now - lastTap.current.time < 300 && lastTap.current.side === side) {
      if (tapTimer.current) { clearTimeout(tapTimer.current); tapTimer.current = null; }
      lastTap.current = null;
      triggerDblTap(side);
    } else {
      lastTap.current = { time: now, side };
      if (tapTimer.current) clearTimeout(tapTimer.current);
      tapTimer.current = setTimeout(() => {
        tapTimer.current = null;
        lastTap.current = null;
        if (showControls) {
          Animated.timing(controlsOpacity, { toValue: 0, duration: 300, useNativeDriver: true }).start(() => setShowControls(false));
          if (hideTimer.current) clearTimeout(hideTimer.current);
        } else {
          fadeIn();
        }
      }, 250);
    }
  }, [isLocked, showControls, triggerDblTap, fadeIn]);

  /* ─── Long press: 2× speed ─── */
  const handleLongPress = useCallback(() => {
    prevSpeedRef.current = speed;
    setLongPressSpeed(true);
    try { player.playbackRate = 2; } catch {}
    try { Haptics.impactAsync(Haptics.ImpactFeedbackStyle.Medium); } catch {}
    fadeIn();
  }, [speed, player, fadeIn]);

  const handleLongPressRelease = useCallback(() => {
    if (!longPressSpeed) return;
    setLongPressSpeed(false);
    try { player.playbackRate = prevSpeedRef.current; } catch {}
  }, [longPressSpeed, player]);

  /* ─── Progress bar ─── */
  const progress = duration > 0 ? Math.min(position / duration, 1) : 0;

  /* ─── Volume sync to player + ref ─── */
  useEffect(() => {
    volumeRef.current = volume;
    try { player.volume = volume; } catch {}
  }, [volume, player]);

  const markerPctIntro = duration > 0 && skipIntro
    ? { start: (skipIntro.start / duration) * 100, end: (skipIntro.end / duration) * 100 }
    : null;
  const markerPctOutro = duration > 0 && skipOutro
    ? { start: (skipOutro.start / duration) * 100, end: (skipOutro.end / duration) * 100 }
    : null;

  if (!currentSrc) return null;

  return (
    <View style={s.root}>
      {/* ── Video ── */}
      <VideoView
        player={player}
        style={s.video}
        nativeControls={false}
        contentFit={contentFit}
      />

      {/* ── Brightness overlay ── */}
      {brightness > 0 && (
        <View
          pointerEvents="none"
          style={[StyleSheet.absoluteFill, { backgroundColor: "#000", opacity: brightness, zIndex: 2 }]}
        />
      )}

      {/* ── Subtitle overlay ── */}
      {subOn && activeCue && (
        <View style={s.subtitleWrap} pointerEvents="none">
          <Text style={s.subtitleText}>{activeCue.text}</Text>
        </View>
      )}

      {/* ── Subtitle loading indicator ── */}
      {subLoading && (
        <View style={s.subLoadingPill} pointerEvents="none">
          <Ionicons name="logo-closed-captioning" size={12} color="rgba(167,139,250,0.70)" />
          <Text style={s.subLoadingText}>جاري تحميل الترجمة…</Text>
        </View>
      )}

      {/* ── Buffering spinner ── */}
      {buffering && !error && (
        <View style={s.spinnerWrap} pointerEvents="none">
          <SpinRing />
        </View>
      )}

      {/* ── Error state ── */}
      {error && (
        <View style={s.errorWrap}>
          <Ionicons name="alert-circle" size={44} color="rgba(239,68,68,0.9)" />
          <Text style={s.errorText}>تعذّر تشغيل المصدر</Text>
          {sources.length > 1 && (
            <Pressable onPress={() => switchSource((srcIdx + 1) % sources.length)} style={s.errorBtn}>
              <Text style={s.errorBtnText}>جرّب المصدر التالي</Text>
            </Pressable>
          )}
        </View>
      )}

      {/* ── Double tap ripple — left ── */}
      {dblTap?.side === "L" && (
        <Animated.View
          pointerEvents="none"
          style={[s.rippleLeft, {
            opacity: dblTapLeft.interpolate({ inputRange: [0, 0.3, 1], outputRange: [0, 0.9, 0] }),
            transform: [{ scale: dblTapLeft.interpolate({ inputRange: [0, 1], outputRange: [0.5, 2.2] }) }],
          }]}
        >
          <View style={s.rippleCircleL} />
          <View style={s.rippleLabel}>
            <Ionicons name="play-back" size={26} color="rgba(253,186,116,0.95)" />
            <Text style={[s.rippleSecs, { color: "rgba(253,186,116,0.95)" }]}>-10ث</Text>
          </View>
        </Animated.View>
      )}

      {/* ── Double tap ripple — right ── */}
      {dblTap?.side === "R" && (
        <Animated.View
          pointerEvents="none"
          style={[s.rippleRight, {
            opacity: dblTapRight.interpolate({ inputRange: [0, 0.3, 1], outputRange: [0, 0.9, 0] }),
            transform: [{ scale: dblTapRight.interpolate({ inputRange: [0, 1], outputRange: [0.5, 2.2] }) }],
          }]}
        >
          <View style={s.rippleCircleR} />
          <View style={s.rippleLabel}>
            <Ionicons name="play-forward" size={26} color="rgba(196,181,253,0.95)" />
            <Text style={[s.rippleSecs, { color: "rgba(196,181,253,0.95)" }]}>+10ث</Text>
          </View>
        </Animated.View>
      )}

      {/* ── Volume feedback ── */}
      {feedback?.type === "volume" && (
        <View style={s.feedbackRight} pointerEvents="none">
          <View style={s.feedbackBarWrap}>
            <View style={[s.feedbackBarFill, { height: `${Math.round(feedback.value * 100)}%` as any }]} />
          </View>
          <View style={s.feedbackPill}>
            <Ionicons name="volume-high" size={12} color="rgba(255,255,255,0.75)" />
            <Text style={s.feedbackPillText}>{Math.round(feedback.value * 100)}%</Text>
          </View>
        </View>
      )}

      {/* ── Brightness feedback ── */}
      {feedback?.type === "brightness" && (
        <View style={s.feedbackLeft} pointerEvents="none">
          <View style={s.feedbackBarWrap}>
            <View style={[s.feedbackBarFillY, { height: `${Math.round((1 - feedback.value / 0.75) * 100)}%` as any }]} />
          </View>
          <View style={s.feedbackPill}>
            <Ionicons name="sunny" size={12} color="rgba(253,224,71,0.85)" />
            <Text style={s.feedbackPillText}>{Math.round((1 - feedback.value / 0.75) * 100)}%</Text>
          </View>
        </View>
      )}

      {/* ── Seek feedback ── */}
      {feedback?.type === "seek" && (
        <View style={s.feedbackCenter} pointerEvents="none">
          <View style={s.seekFeedbackBox}>
            <Ionicons
              name={(feedback.delta ?? 0) >= 0 ? "play-forward" : "play-back"}
              size={20} color="rgba(255,255,255,0.65)"
            />
            <Text style={s.seekFeedbackTime}>{fmtTime(feedback.value)}</Text>
            <Text style={s.seekFeedbackDelta}>
              {(feedback.delta ?? 0) >= 0 ? "+" : ""}{Math.round(feedback.delta ?? 0)}ث
            </Text>
          </View>
        </View>
      )}

      {/* ── Long press 2× badge ── */}
      {longPressSpeed && (
        <View style={s.longPressBadge} pointerEvents="none">
          <Ionicons name="flash" size={14} color="#fde68a" />
          <Text style={s.longPressBadgeText}>تشغيل سريع ×2</Text>
        </View>
      )}

      {/* ── Skip Intro button ── */}
      {!!skipIntro && !isLocked && !isEnded && !error && (
        <Pressable
          onPress={doSkipIntro}
          style={[
            s.skipBtn,
            { backgroundColor: inIntroRange ? "rgba(250,204,21,0.95)" : "rgba(12,10,2,0.82)" },
            { borderColor: inIntroRange ? "rgba(253,224,71,0.85)" : "rgba(250,204,21,0.55)" },
          ]}
        >
          <Ionicons name="play-skip-forward" size={13} color={inIntroRange ? "#110d00" : "rgba(253,224,71,0.95)"} />
          <Text style={[s.skipBtnText, { color: inIntroRange ? "#110d00" : "rgba(253,224,71,0.95)" }]}>
            تخطي المقدمة
          </Text>
        </Pressable>
      )}

      {/* ── Skip Outro button ── */}
      {!!skipOutro && !isLocked && !isEnded && !error && (
        <Pressable
          onPress={doSkipOutro}
          style={[
            s.skipOutroBtn,
            { bottom: skipIntro ? 116 : 72 },
            { backgroundColor: inOutroRange ? "rgba(167,139,250,0.95)" : "rgba(8,6,20,0.82)" },
            { borderColor: inOutroRange ? "rgba(196,181,253,0.85)" : "rgba(167,139,250,0.55)" },
          ]}
        >
          <Ionicons name="play-skip-forward" size={13} color={inOutroRange ? "#fff" : "rgba(196,181,253,0.95)"} />
          <Text style={[s.skipBtnText, { color: inOutroRange ? "#fff" : "rgba(196,181,253,0.95)" }]}>
            تخطي النهاية
          </Text>
        </Pressable>
      )}

      {/* ── Lock screen indicator ── */}
      {isLocked && (
        <View style={s.lockIndicator} pointerEvents="none">
          <Ionicons name="lock-closed" size={14} color="rgba(251,191,36,0.70)" />
        </View>
      )}

      {/* ── Unlock button (tap when locked) ── */}
      {isLocked && showUnlock && (
        <Pressable
          style={s.unlockBtn}
          onPress={() => { setIsLocked(false); setShowUnlock(false); }}
        >
          <View style={s.unlockIcon}>
            <Ionicons name="lock-open" size={22} color="#fbbf24" />
          </View>
          <Text style={s.unlockText}>فتح القفل</Text>
        </Pressable>
      )}

      {/* ── End of episode card ── */}
      {isEnded && !error && (
        <View style={s.endCard}>
          <View style={s.endIconCircle}>
            <Ionicons name="checkmark" size={32} color="#a78bfa" />
          </View>
          <Text style={s.endSubLabel}>انتهت الحلقة</Text>
          {title && <Text style={s.endTitle}>{title}</Text>}
          {episode && <Text style={s.endEpText}>الحلقة {episode}</Text>}
          <View style={s.endBtnRow}>
            <Pressable
              onPress={() => { seek(0); setIsEnded(false); try { player.play(); } catch {} }}
              style={s.endReplayBtn}
            >
              <Ionicons name="refresh" size={16} color="#fff" />
              <Text style={s.endBtnLabel}>إعادة</Text>
            </Pressable>
            {onNextEpisode && ((episode ?? 0) < totalEps) && (
              <Pressable onPress={() => { setAutoCountdown(0); onNextEpisode(); }} style={s.endNextBtn}>
                <Ionicons name="play-skip-forward" size={16} color="#fff" />
                <Text style={s.endBtnLabel}>
                  الحلقة التالية{autoCountdown > 0 ? ` (${autoCountdown})` : ""}
                </Text>
              </Pressable>
            )}
          </View>
        </View>
      )}

      {/* ════════════════════════════════════════
          GESTURE LAYER (transparent, handles taps + gestures)
      ════════════════════════════════════════ */}
      <View
        style={[StyleSheet.absoluteFill, { zIndex: isLocked ? 15 : 5 }]}
        {...(isLocked
          ? {}
          : panResponder.panHandlers)}
      >
        {/* Left half — double tap back / brightness gesture */}
        <Pressable
          style={s.halfLeft}
          onPress={(e) => handleTap(e.nativeEvent.pageX)}
          onLongPress={handleLongPress}
          onPressOut={handleLongPressRelease}
          delayLongPress={500}
        />
        {/* Right half — double tap forward / volume gesture */}
        <Pressable
          style={s.halfRight}
          onPress={(e) => handleTap(e.nativeEvent.pageX)}
          onLongPress={handleLongPress}
          onPressOut={handleLongPressRelease}
          delayLongPress={500}
        />
      </View>

      {/* ════════════════════════════════════════
          CONTROLS OVERLAY
      ════════════════════════════════════════ */}
      {showControls && !error && !isEnded && !isLocked && (
        <Animated.View
          style={[StyleSheet.absoluteFill, { opacity: controlsOpacity, zIndex: 10 }]}
          pointerEvents="box-none"
        >
          {/* ── TOP BAR ── */}
          <LinearGradient
            colors={["rgba(0,0,0,0.80)", "rgba(0,0,0,0.30)", "transparent"]}
            style={[s.topBar, { paddingTop: Platform.OS === "web" ? 12 : insets.top + 10 }]}
          >
            {/* Back */}
            <Pressable onPress={onBack} style={s.backBtn} hitSlop={16}>
              <Ionicons name="chevron-back" size={24} color="#fff" />
            </Pressable>

            {/* Title */}
            <View style={s.titleWrap}>
              {title && <Text style={s.titleText} numberOfLines={1}>{title}</Text>}
              {episode != null && <Text style={s.epText}>الحلقة {episode}</Text>}
            </View>

            {/* Quality pill + top-right actions */}
            <View style={s.topRight}>
              <View style={[s.qualityPill, { borderColor: QUALITY_COLOR[currentSrc.quality] || "#fff" }]}>
                <Text style={[s.qualityText, { color: QUALITY_COLOR[currentSrc.quality] || "#fff" }]}>
                  {Q_SHORT[currentSrc.quality] || "HD"}
                </Text>
              </View>
            </View>
          </LinearGradient>

          {/* ── CENTER ROW ── */}
          <View style={s.centerRow} pointerEvents="box-none">
            {onPrevEpisode && (
              <Pressable onPress={onPrevEpisode} style={s.epNavBtn} hitSlop={12}>
                <Ionicons name="play-skip-back" size={22} color="rgba(255,255,255,0.85)" />
              </Pressable>
            )}
            <Pressable onPress={() => seek(position - 10)} style={s.seekStepBtn} hitSlop={12}>
              <Ionicons name="play-back" size={22} color="rgba(255,255,255,0.85)" />
              <Text style={s.seekStepLabel}>10</Text>
            </Pressable>
            <Pressable onPress={togglePlay} style={s.playBtn} hitSlop={8}>
              {buffering
                ? <SpinRing />
                : <Ionicons name={isPlaying ? "pause" : "play"} size={34} color="#fff" />}
            </Pressable>
            <Pressable onPress={() => seek(position + 10)} style={s.seekStepBtn} hitSlop={12}>
              <Text style={s.seekStepLabel}>10</Text>
              <Ionicons name="play-forward" size={22} color="rgba(255,255,255,0.85)" />
            </Pressable>
            {onNextEpisode && (
              <Pressable onPress={onNextEpisode} style={s.epNavBtn} hitSlop={12}>
                <Ionicons name="play-skip-forward" size={22} color="rgba(255,255,255,0.85)" />
              </Pressable>
            )}
          </View>

          {/* ── BOTTOM SECTION ── */}
          <LinearGradient
            colors={["transparent", "rgba(0,0,0,0.45)", "rgba(0,0,0,0.88)"]}
            style={[s.bottomBar, { paddingBottom: Platform.OS === "web" ? 14 : insets.bottom + 12 }]}
          >
            {/* Time row */}
            <View style={s.timeRow}>
              <Text style={s.timeText}>{fmtTime(position)}</Text>
              {/* Skip button in center when skip data exists */}
              {hasSkipData && (
                <Pressable
                  onPress={inIntroRange ? doSkipIntro : inOutroRange ? doSkipOutro : (skipIntro ? doSkipIntro : doSkipOutro)}
                  style={[
                    s.skipInlineBtn,
                    (inIntroRange || inOutroRange) && s.skipInlineBtnActive,
                  ]}
                  hitSlop={8}
                >
                  <Ionicons name="play-skip-forward" size={11}
                    color={(inIntroRange || inOutroRange) ? "#1a1200" : "rgba(253,224,71,0.70)"} />
                  <Text style={[
                    s.skipInlineBtnText,
                    (inIntroRange || inOutroRange) && s.skipInlineBtnTextActive,
                  ]}>
                    {inIntroRange ? "تخطي المقدمة" : inOutroRange ? "تخطي النهاية"
                      : skipIntro ? "تخطي المقدمة" : "تخطي النهاية"}
                  </Text>
                </Pressable>
              )}
              <Text style={[s.timeText, { opacity: 0.45 }]}>{fmtTime(duration)}</Text>
            </View>

            {/* Progress bar */}
            <View
              ref={barRef}
              style={[s.progressWrap, isDragging && s.progressWrapDragging]}
              onLayout={(e) => { barWidth.current = e.nativeEvent.layout.width || 1; }}
              {...seekBarPan.panHandlers}
            >
              {/* Track background */}
              <View style={s.progressBg} />
              {/* Skip intro marker */}
              {markerPctIntro && (
                <View style={[s.skipMarker, {
                  left: `${markerPctIntro.start}%` as any,
                  width: `${Math.max(1.2, markerPctIntro.end - markerPctIntro.start)}%` as any,
                }]} />
              )}
              {/* Skip outro marker */}
              {markerPctOutro && (
                <View style={[s.skipMarker, {
                  left: `${markerPctOutro.start}%` as any,
                  width: `${Math.max(1.2, markerPctOutro.end - markerPctOutro.start)}%` as any,
                }]} />
              )}
              {/* Progress fill */}
              <View style={[s.progressFill, { width: `${Math.min((isDragging ? dragPct : progress) * 100, 100)}%` as any }]} />
              {/* Thumb */}
              <View style={[
                s.thumb,
                { left: `${Math.min((isDragging ? dragPct : progress) * 100, 100)}%` as any },
                isDragging && s.thumbDragging,
              ]} />
              {/* Drag time tooltip */}
              {isDragging && (
                <View style={[s.dragTooltip, {
                  left: `${Math.max(4, Math.min(88, (isDragging ? dragPct : progress) * 100 - 6))}%` as any,
                }]}>
                  <Text style={s.dragTooltipText}>{fmtTime(dragPct * (durationRef.current || duration))}</Text>
                </View>
              )}
            </View>

            {/* Controls row */}
            <View style={s.ctrlRow}>
              {/* Left: speed */}
              <View style={s.ctrlLeft}>
                <Pressable onPress={() => { setShowSpeedSheet(true); setShowSrcSheet(false); fadeIn(); }} style={s.speedBtn}>
                  <Text style={[
                    s.speedBtnText,
                    (speed !== 1 || longPressSpeed) && s.speedBtnTextActive,
                  ]}>
                    ×{longPressSpeed ? 2 : speed}
                  </Text>
                </Pressable>
              </View>

              {/* Center: view mode + source */}
              <View style={s.ctrlCenter}>
                <Pressable onPress={() => { setShowViewSheet(true); fadeIn(); }} style={s.iconBtn} hitSlop={8}>
                  <Ionicons
                    name={contentFit === "cover" ? "scan" : "scan-outline"}
                    size={17}
                    color={contentFit === "cover" ? "#c4b5fd" : "rgba(255,255,255,0.60)"}
                  />
                </Pressable>
                <Pressable onPress={() => { setShowSrcSheet(true); fadeIn(); }} style={s.srcBtn}>
                  <Ionicons name="layers-outline" size={14} color="rgba(255,255,255,0.65)" />
                  <Text style={s.srcBtnText} numberOfLines={1}>{currentSrc.label}</Text>
                  <Ionicons name="chevron-up" size={12} color="rgba(255,255,255,0.40)" />
                </Pressable>
              </View>

              {/* Right: CC + mute + lock */}
              <View style={s.ctrlRight}>
                <Pressable
                  onPress={() => { setShowSubSheet(true); fadeIn(); }}
                  style={[s.iconBtn, (subOn && effectiveCues.length > 0) && s.ccBtnActive]}
                  hitSlop={8}
                >
                  <Ionicons
                    name={subOn && effectiveCues.length > 0 ? "logo-closed-captioning" : "logo-closed-captioning"}
                    size={17}
                    color={subOn && effectiveCues.length > 0 ? "#c4b5fd" : "rgba(255,255,255,0.55)"}
                  />
                </Pressable>
                <Pressable
                  onPress={() => {
                    const newVol = volume > 0 ? 0 : 1;
                    setVolume(newVol);
                    showFeedback({ type: "volume", value: newVol });
                    fadeIn();
                  }}
                  style={s.iconBtn} hitSlop={8}
                >
                  <Ionicons
                    name={volume === 0 ? "volume-mute-outline" : "volume-high-outline"}
                    size={17}
                    color="rgba(255,255,255,0.65)"
                  />
                </Pressable>
                <Pressable
                  onPress={() => { setIsLocked(true); setShowUnlock(false); fadeIn(); }}
                  style={[s.iconBtn, s.lockBtnStyle]} hitSlop={8}
                >
                  <Ionicons name="lock-closed-outline" size={16} color="rgba(251,191,36,0.75)" />
                </Pressable>
              </View>
            </View>
          </LinearGradient>
        </Animated.View>
      )}

      {/* ════════════════════════════════════════
          SOURCE BOTTOM SHEET
      ════════════════════════════════════════ */}
      {showSrcSheet && (
        <Pressable style={s.sheetBg} onPress={() => setShowSrcSheet(false)}>
          <View style={[s.sheet, { paddingBottom: insets.bottom + 14 }]}>
            <View style={s.sheetHandle} />
            <View style={s.sheetHeader}>
              <Text style={s.sheetTitle}>اختر المصدر</Text>
            </View>
            {sources.map((src, i) => (
              <Pressable
                key={i}
                onPress={() => switchSource(i)}
                style={[s.sheetItem, i === srcIdx && s.sheetItemActive]}
              >
                <View style={[s.sheetDot, { backgroundColor: QUALITY_COLOR[src.quality] || "#fff" }]} />
                <Text style={[s.sheetItemText, i === srcIdx && s.sheetItemTextActive]} numberOfLines={1}>
                  {src.label}
                </Text>
                <View style={[s.sheetQBadge, { borderColor: QUALITY_COLOR[src.quality] || "#fff" }]}>
                  <Text style={[s.sheetQText, { color: QUALITY_COLOR[src.quality] || "#fff" }]}>
                    {Q_SHORT[src.quality] || "HD"}
                  </Text>
                </View>
                {i === srcIdx && <Ionicons name="checkmark-circle" size={16} color="#8B5CF6" />}
              </Pressable>
            ))}
          </View>
        </Pressable>
      )}

      {/* ════════════════════════════════════════
          SPEED BOTTOM SHEET
      ════════════════════════════════════════ */}
      {showSpeedSheet && (
        <Pressable style={s.sheetBg} onPress={() => setShowSpeedSheet(false)}>
          <View style={[s.sheet, { paddingBottom: insets.bottom + 14 }]}>
            <View style={s.sheetHandle} />
            <View style={s.sheetHeader}>
              <Text style={s.sheetTitle}>سرعة التشغيل</Text>
            </View>
            {SPEEDS.map((sp) => (
              <Pressable
                key={sp}
                onPress={() => changeSpeed(sp)}
                style={[s.sheetItem, sp === speed && s.sheetItemActive]}
              >
                <Text style={[s.speedItemText, sp === speed && s.speedItemTextActive]}>×{sp}</Text>
                <Text style={[s.speedItemDesc, sp === speed && { color: "rgba(196,181,253,0.70)" }]}>
                  {sp === 0.5 ? "بطيء جداً"
                    : sp === 0.75 ? "بطيء"
                    : sp === 1 ? "عادي"
                    : sp === 1.25 ? "أسرع قليلاً"
                    : sp === 1.5 ? "سريع"
                    : "سريع جداً"}
                </Text>
                {sp === speed && <Ionicons name="checkmark-circle" size={16} color="#8B5CF6" />}
              </Pressable>
            ))}
          </View>
        </Pressable>
      )}

      {/* ════════════════════════════════════════
          VIEW MODE BOTTOM SHEET
      ════════════════════════════════════════ */}
      {showViewSheet && (
        <Pressable style={s.sheetBg} onPress={() => setShowViewSheet(false)}>
          <View style={[s.sheet, { paddingBottom: insets.bottom + 14 }]}>
            <View style={s.sheetHandle} />
            <View style={s.sheetHeader}>
              <Text style={s.sheetTitle}>وضع العرض</Text>
            </View>
            {([
              { fit: "contain" as const, label: "عرض عادي", desc: "نسبة أصلية مع حواف سوداء", icon: "scan-outline" as const },
              { fit: "cover"   as const, label: "تكبير ملء الشاشة", desc: "اقتصاص الحواف السوداء", icon: "scan" as const },
            ]).map(({ fit, label, desc, icon }) => (
              <Pressable
                key={fit}
                onPress={() => { setContentFit(fit); setShowViewSheet(false); }}
                style={[s.sheetItem, fit === contentFit && s.sheetItemActive]}
              >
                <View style={[s.sheetIconWrap, fit === contentFit && s.sheetIconWrapActive]}>
                  <Ionicons name={icon} size={16} color={fit === contentFit ? "#c4b5fd" : "rgba(255,255,255,0.50)"} />
                </View>
                <View style={{ flex: 1 }}>
                  <Text style={[s.sheetItemText, fit === contentFit && s.sheetItemTextActive]}>{label}</Text>
                  <Text style={s.sheetItemDesc}>{desc}</Text>
                </View>
                {fit === contentFit && <Ionicons name="checkmark-circle" size={16} color="#8B5CF6" />}
              </Pressable>
            ))}
          </View>
        </Pressable>
      )}

      {/* ════════════════════════════════════════
          SUBTITLE BOTTOM SHEET
      ════════════════════════════════════════ */}
      {showSubSheet && (
        <Pressable style={s.sheetBg} onPress={() => setShowSubSheet(false)}>
          <View style={[s.sheet, { paddingBottom: insets.bottom + 14 }]}>
            <View style={s.sheetHandle} />
            <View style={s.sheetHeader}>
              <View style={{ flexDirection: "row", alignItems: "center", gap: 8 }}>
                <Ionicons name="logo-closed-captioning" size={18} color="rgba(196,181,253,0.80)" />
                <Text style={s.sheetTitle}>الترجمة</Text>
                {subLoading && (
                  <View style={s.subSheetLoadingBadge}>
                    <Text style={s.subSheetLoadingText}>جارٍ التحميل…</Text>
                  </View>
                )}
              </View>
            </View>
            {/* No subtitles option */}
            <Pressable
              onPress={() => { setSubOn(false); setShowSubSheet(false); }}
              style={[s.sheetItem, !subOn && s.sheetItemActive]}
            >
              <View style={[s.sheetIconWrap, !subOn && s.sheetIconWrapActive]}>
                <Ionicons name="close-circle-outline" size={16} color={!subOn ? "#c4b5fd" : "rgba(255,255,255,0.40)"} />
              </View>
              <View style={{ flex: 1 }}>
                <Text style={[s.sheetItemText, !subOn && s.sheetItemTextActive]}>بدون ترجمة</Text>
                <Text style={s.sheetItemDesc}>إخفاء الترجمة</Text>
              </View>
              {!subOn && <Ionicons name="checkmark-circle" size={16} color="#8B5CF6" />}
            </Pressable>
            {/* Arabic subtitle option */}
            <Pressable
              onPress={() => {
                if (effectiveCues.length > 0) { setSubOn(true); setShowSubSheet(false); }
              }}
              style={[
                s.sheetItem,
                subOn && s.sheetItemActive,
                effectiveCues.length === 0 && s.sheetItemDisabled,
              ]}
            >
              <View style={[s.sheetIconWrap, subOn && effectiveCues.length > 0 && s.sheetIconWrapActive]}>
                <Ionicons
                  name="logo-closed-captioning"
                  size={16}
                  color={subOn && effectiveCues.length > 0 ? "#c4b5fd" : "rgba(255,255,255,0.40)"}
                />
              </View>
              <View style={{ flex: 1 }}>
                <Text style={[s.sheetItemText, subOn && effectiveCues.length > 0 && s.sheetItemTextActive]}>
                  عربي
                </Text>
                <Text style={s.sheetItemDesc}>
                  {effectiveCues.length > 0
                    ? `${effectiveCues.length} مقطع`
                    : subLoading ? "جارٍ التحميل…" : "غير متوفر لهذا المصدر"}
                </Text>
              </View>
              {subOn && effectiveCues.length > 0 && <Ionicons name="checkmark-circle" size={16} color="#8B5CF6" />}
            </Pressable>
          </View>
        </Pressable>
      )}
    </View>
  );
}

/* ─── Styles ─── */
const s = StyleSheet.create({
  root:  { flex: 1, backgroundColor: "#000", position: "relative" },
  video: { width: "100%", height: "100%" },

  spinnerWrap: { ...StyleSheet.absoluteFillObject, alignItems: "center", justifyContent: "center", zIndex: 3 },
  errorWrap:   { ...StyleSheet.absoluteFillObject, alignItems: "center", justifyContent: "center", gap: 14, zIndex: 20 },
  errorText:   { color: "#ef4444", fontSize: 15, fontFamily: "Cairo_600SemiBold" },
  errorBtn:    { backgroundColor: "rgba(239,68,68,0.15)", borderRadius: 12, paddingHorizontal: 22, paddingVertical: 11, borderWidth: 1, borderColor: "rgba(239,68,68,0.40)" },
  errorBtnText: { color: "#ef4444", fontFamily: "Cairo_600SemiBold", fontSize: 14 },

  /* Subtitle */
  subtitleWrap: { position: "absolute", bottom: 80, left: 16, right: 16, alignItems: "center", zIndex: 8, pointerEvents: "none" as any },
  subtitleText: { backgroundColor: "rgba(0,0,0,0.75)", color: "#fff", fontSize: 16, fontFamily: "Cairo_600SemiBold", paddingHorizontal: 14, paddingVertical: 6, borderRadius: 10, textAlign: "center", lineHeight: 26 },

  /* Ripples */
  rippleLeft:   { position: "absolute", left: 0, top: "10%", width: "45%", height: "80%", alignItems: "center", justifyContent: "center", zIndex: 25 },
  rippleRight:  { position: "absolute", right: 0, top: "10%", width: "45%", height: "80%", alignItems: "center", justifyContent: "center", zIndex: 25 },
  rippleCircleL: { position: "absolute", width: 140, height: 140, borderRadius: 70, backgroundColor: "rgba(251,146,60,0.28)" },
  rippleCircleR: { position: "absolute", width: 140, height: 140, borderRadius: 70, backgroundColor: "rgba(139,92,246,0.28)" },
  rippleLabel:  { alignItems: "center", gap: 4, zIndex: 2 },
  rippleSecs:   { fontSize: 14, fontWeight: "900", fontFamily: "Cairo_700Bold" },

  /* Gesture feedback */
  feedbackRight: { position: "absolute", right: 18, top: "30%", alignItems: "center", gap: 10, zIndex: 30 },
  feedbackLeft:  { position: "absolute", left: 18,  top: "30%", alignItems: "center", gap: 10, zIndex: 30 },
  feedbackCenter:{ position: "absolute", left: "20%", right: "20%", top: "40%", alignItems: "center", zIndex: 30 },
  feedbackBarWrap: { width: 4, height: 110, backgroundColor: "rgba(255,255,255,0.15)", borderRadius: 2, overflow: "hidden", justifyContent: "flex-end" },
  feedbackBarFill: { width: "100%", backgroundColor: "rgba(255,255,255,0.85)", borderRadius: 2 },
  feedbackBarFillY: { width: "100%", backgroundColor: "rgba(253,224,71,0.90)", borderRadius: 2 },
  feedbackPill: { flexDirection: "row", alignItems: "center", gap: 4, backgroundColor: "rgba(0,0,0,0.65)", borderRadius: 20, paddingHorizontal: 10, paddingVertical: 4, borderWidth: 1, borderColor: "rgba(255,255,255,0.12)" },
  feedbackPillText: { color: "rgba(255,255,255,0.85)", fontSize: 11, fontFamily: "Cairo_700Bold" },
  seekFeedbackBox: { flexDirection: "row", alignItems: "center", gap: 10, backgroundColor: "rgba(0,0,0,0.70)", borderRadius: 18, paddingHorizontal: 18, paddingVertical: 12, borderWidth: 1, borderColor: "rgba(255,255,255,0.10)" },
  seekFeedbackTime: { color: "#fff", fontSize: 20, fontWeight: "900", fontFamily: "Cairo_700Bold" },
  seekFeedbackDelta: { color: "rgba(255,255,255,0.40)", fontSize: 12, fontFamily: "Cairo_400Regular" },

  /* Long press badge */
  longPressBadge: { position: "absolute", top: 72, alignSelf: "center", flexDirection: "row", alignItems: "center", gap: 6, backgroundColor: "rgba(0,0,0,0.72)", borderRadius: 20, paddingHorizontal: 16, paddingVertical: 8, borderWidth: 1, borderColor: "rgba(251,191,36,0.28)", zIndex: 30 },
  longPressBadgeText: { color: "rgba(253,224,71,0.90)", fontSize: 12, fontFamily: "Cairo_700Bold" },

  /* Skip buttons */
  skipBtn: { position: "absolute", bottom: 72, right: 14, flexDirection: "row", alignItems: "center", gap: 6, paddingHorizontal: 14, paddingVertical: 9, borderRadius: 14, borderWidth: 1.5, zIndex: 20 },
  skipOutroBtn: { position: "absolute", right: 14, flexDirection: "row", alignItems: "center", gap: 6, paddingHorizontal: 14, paddingVertical: 9, borderRadius: 14, borderWidth: 1.5, zIndex: 20 },
  skipBtnText: { fontSize: 13, fontFamily: "Cairo_700Bold" },

  /* Lock */
  lockIndicator: { position: "absolute", right: 14, top: "48%", backgroundColor: "rgba(0,0,0,0.55)", borderRadius: 20, padding: 8, borderWidth: 1, borderColor: "rgba(251,191,36,0.30)", zIndex: 25 },
  unlockBtn: { position: "absolute", right: 14, top: "42%", alignItems: "center", gap: 8, backgroundColor: "rgba(5,5,15,0.92)", borderRadius: 18, paddingHorizontal: 20, paddingVertical: 16, borderWidth: 1.5, borderColor: "rgba(251,191,36,0.40)", zIndex: 40 },
  unlockIcon: { width: 44, height: 44, borderRadius: 14, backgroundColor: "rgba(251,191,36,0.14)", borderWidth: 1, borderColor: "rgba(251,191,36,0.32)", alignItems: "center", justifyContent: "center" },
  unlockText: { color: "rgba(253,224,71,0.90)", fontSize: 12, fontFamily: "Cairo_700Bold" },

  /* End card */
  endCard: { ...StyleSheet.absoluteFillObject, backgroundColor: "rgba(0,0,0,0.88)", alignItems: "center", justifyContent: "center", gap: 14, zIndex: 35 },
  endIconCircle: { width: 72, height: 72, borderRadius: 36, backgroundColor: "rgba(139,92,246,0.16)", borderWidth: 1, borderColor: "rgba(167,139,250,0.35)", alignItems: "center", justifyContent: "center" },
  endSubLabel: { color: "rgba(255,255,255,0.45)", fontSize: 12, fontFamily: "Cairo_400Regular" },
  endTitle: { color: "#fff", fontSize: 18, fontFamily: "Cairo_700Bold", textAlign: "center", paddingHorizontal: 24 },
  endEpText: { color: "rgba(255,255,255,0.55)", fontSize: 13, fontFamily: "Cairo_400Regular" },
  endBtnRow: { flexDirection: "row", gap: 12, marginTop: 6 },
  endReplayBtn: { flexDirection: "row", alignItems: "center", gap: 8, paddingHorizontal: 20, paddingVertical: 12, borderRadius: 18, backgroundColor: "rgba(255,255,255,0.12)", borderWidth: 1, borderColor: "rgba(255,255,255,0.22)" },
  endNextBtn: { flexDirection: "row", alignItems: "center", gap: 8, paddingHorizontal: 20, paddingVertical: 12, borderRadius: 18, backgroundColor: "rgba(139,92,246,0.90)", borderWidth: 1, borderColor: "rgba(167,139,250,0.55)" },
  endBtnLabel: { color: "#fff", fontSize: 13, fontFamily: "Cairo_700Bold" },

  /* Gesture halves */
  halfLeft:  { position: "absolute", left: 0, top: 0, width: "50%", height: "100%" },
  halfRight: { position: "absolute", right: 0, top: 0, width: "50%", height: "100%" },

  /* Top bar */
  topBar: { paddingHorizontal: 14, paddingBottom: 28, flexDirection: "row", alignItems: "center", gap: 12 },
  backBtn: { width: 38, height: 38, borderRadius: 19, backgroundColor: "rgba(0,0,0,0.45)", alignItems: "center", justifyContent: "center" },
  titleWrap: { flex: 1, gap: 2 },
  titleText: { color: "#fff", fontSize: 16, fontFamily: "Cairo_700Bold" },
  epText: { color: "rgba(255,255,255,0.55)", fontSize: 12, fontFamily: "Cairo_400Regular" },
  topRight: { flexDirection: "row", alignItems: "center", gap: 8 },
  qualityPill: { borderRadius: 8, borderWidth: 1, paddingHorizontal: 9, paddingVertical: 3 },
  qualityText: { fontSize: 11, fontFamily: "Cairo_700Bold" },

  /* Center */
  centerRow: { flex: 1, flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 22 },
  epNavBtn: { width: 46, height: 46, borderRadius: 23, backgroundColor: "rgba(0,0,0,0.32)", alignItems: "center", justifyContent: "center" },
  seekStepBtn: { width: 52, height: 46, borderRadius: 23, backgroundColor: "rgba(0,0,0,0.32)", alignItems: "center", justifyContent: "center", gap: 1 },
  seekStepLabel: { color: "rgba(255,255,255,0.65)", fontSize: 9, fontFamily: "Cairo_700Bold" },
  playBtn: { width: 72, height: 72, borderRadius: 36, backgroundColor: "rgba(139,92,246,0.88)", alignItems: "center", justifyContent: "center", shadowColor: "#8B5CF6", shadowOpacity: 0.65, shadowRadius: 16 },

  /* Bottom bar */
  bottomBar: { paddingHorizontal: 16, paddingTop: 28, gap: 8 },
  timeRow: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", marginBottom: 2 },
  timeText: { color: "rgba(255,255,255,0.75)", fontSize: 11, fontFamily: "Cairo_400Regular", minWidth: 40, textAlign: "center" },

  /* Skip inline */
  skipInlineBtn: { flexDirection: "row", alignItems: "center", gap: 5, paddingHorizontal: 10, paddingVertical: 5, borderRadius: 12, backgroundColor: "rgba(250,204,21,0.10)", borderWidth: 1, borderColor: "rgba(250,204,21,0.22)" },
  skipInlineBtnActive: { backgroundColor: "rgba(250,204,21,0.90)", borderColor: "rgba(253,224,71,0.75)" },
  skipInlineBtnText: { color: "rgba(253,224,71,0.70)", fontSize: 11, fontFamily: "Cairo_700Bold" },
  skipInlineBtnTextActive: { color: "#1a1200" },

  /* Progress bar */
  progressWrap: { height: 32, justifyContent: "center", position: "relative", marginHorizontal: 2 },
  progressWrapDragging: { height: 44 },
  progressBg: { position: "absolute", left: 0, right: 0, height: 5, backgroundColor: "rgba(255,255,255,0.18)", borderRadius: 3 },
  skipMarker: { position: "absolute", height: 7, backgroundColor: "rgba(250,204,21,0.85)", borderRadius: 3, top: "50%", marginTop: -3.5, zIndex: 2 },
  progressFill: { position: "absolute", left: 0, height: 5, backgroundColor: "#8B5CF6", borderRadius: 3, top: "50%", marginTop: -2.5, zIndex: 3 },
  thumb: { position: "absolute", top: "50%", width: 16, height: 16, borderRadius: 8, backgroundColor: "#fff", marginLeft: -8, marginTop: -8, shadowColor: "#000", shadowOpacity: 0.4, shadowRadius: 4, zIndex: 4 },
  thumbDragging: { width: 22, height: 22, borderRadius: 11, marginLeft: -11, marginTop: -11, backgroundColor: "#c4b5fd", shadowColor: "#8B5CF6", shadowOpacity: 0.8, shadowRadius: 10 },
  dragTooltip: { position: "absolute", bottom: "100%", marginBottom: 6, backgroundColor: "rgba(10,6,30,0.95)", borderRadius: 10, paddingHorizontal: 10, paddingVertical: 5, borderWidth: 1, borderColor: "rgba(139,92,246,0.40)", zIndex: 10 },
  dragTooltipText: { color: "#fff", fontSize: 13, fontFamily: "Cairo_700Bold" },

  /* Controls row */
  ctrlRow: { flexDirection: "row", alignItems: "center", justifyContent: "space-between" },
  ctrlLeft: { flex: 1, flexDirection: "row", alignItems: "center" },
  ctrlCenter: { flex: 2, flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 8 },
  ctrlRight: { flex: 1, flexDirection: "row", alignItems: "center", justifyContent: "flex-end", gap: 6 },
  speedBtn: { paddingHorizontal: 10, paddingVertical: 6, borderRadius: 10, backgroundColor: "rgba(255,255,255,0.07)", borderWidth: 1, borderColor: "rgba(255,255,255,0.10)" },
  speedBtnText: { color: "rgba(255,255,255,0.45)", fontSize: 11, fontFamily: "Cairo_700Bold" },
  speedBtnTextActive: { color: "#fde68a" },
  srcBtn: { flexDirection: "row", alignItems: "center", gap: 5, backgroundColor: "rgba(0,0,0,0.40)", borderRadius: 20, paddingHorizontal: 12, paddingVertical: 6, borderWidth: 1, borderColor: "rgba(255,255,255,0.10)", maxWidth: 160 },
  srcBtnText: { color: "rgba(255,255,255,0.65)", fontSize: 11, fontFamily: "Cairo_600SemiBold", flex: 1 },
  iconBtn: { width: 34, height: 34, alignItems: "center", justifyContent: "center", borderRadius: 10, backgroundColor: "rgba(255,255,255,0.08)", borderWidth: 1, borderColor: "rgba(255,255,255,0.10)" },
  lockBtnStyle: { backgroundColor: "rgba(251,191,36,0.12)", borderColor: "rgba(251,191,36,0.28)" },
  ccBtnActive: { backgroundColor: "rgba(139,92,246,0.18)", borderColor: "rgba(167,139,250,0.45)" },

  /* Subtitle loading pill */
  subLoadingPill: { position: "absolute", bottom: 96, alignSelf: "center", flexDirection: "row", alignItems: "center", gap: 6, backgroundColor: "rgba(10,6,30,0.88)", borderRadius: 20, paddingHorizontal: 14, paddingVertical: 7, borderWidth: 1, borderColor: "rgba(139,92,246,0.30)", zIndex: 25 },
  subLoadingText: { color: "rgba(196,181,253,0.80)", fontSize: 12, fontFamily: "Cairo_600SemiBold" },

  /* Subtitle sheet loading badge */
  subSheetLoadingBadge: { backgroundColor: "rgba(139,92,246,0.18)", borderRadius: 12, paddingHorizontal: 10, paddingVertical: 3, borderWidth: 1, borderColor: "rgba(139,92,246,0.35)" },
  subSheetLoadingText: { color: "rgba(196,181,253,0.80)", fontSize: 11, fontFamily: "Cairo_600SemiBold" },

  /* Disabled sheet item */
  sheetItemDisabled: { opacity: 0.40 },

  /* Sheets */
  sheetBg: { ...StyleSheet.absoluteFillObject, backgroundColor: "rgba(0,0,0,0.65)", justifyContent: "flex-end", zIndex: 50 },
  sheet: { backgroundColor: "#111116", borderTopLeftRadius: 22, borderTopRightRadius: 22, paddingTop: 12, paddingHorizontal: 16, gap: 2 },
  sheetHandle: { width: 38, height: 4, borderRadius: 2, backgroundColor: "rgba(255,255,255,0.20)", alignSelf: "center", marginBottom: 10 },
  sheetHeader: { paddingBottom: 8, borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.07)", marginBottom: 4 },
  sheetTitle: { color: "#fff", fontSize: 16, fontFamily: "Cairo_700Bold" },
  sheetItem: { flexDirection: "row", alignItems: "center", gap: 12, paddingVertical: 13, paddingHorizontal: 12, borderRadius: 14, borderWidth: 1, borderColor: "transparent" },
  sheetItemActive: { backgroundColor: "rgba(139,92,246,0.12)", borderColor: "rgba(139,92,246,0.30)" },
  sheetDot: { width: 8, height: 8, borderRadius: 4 },
  sheetItemText: { flex: 1, color: "rgba(255,255,255,0.65)", fontSize: 14, fontFamily: "Cairo_600SemiBold" },
  sheetItemTextActive: { color: "#fff" },
  sheetItemDesc: { color: "rgba(255,255,255,0.30)", fontSize: 11, fontFamily: "Cairo_400Regular", marginTop: 1 },
  sheetQBadge: { borderRadius: 6, borderWidth: 1, paddingHorizontal: 7, paddingVertical: 2 },
  sheetQText: { fontSize: 10, fontFamily: "Cairo_700Bold" },
  sheetIconWrap: { width: 34, height: 34, borderRadius: 12, backgroundColor: "rgba(255,255,255,0.06)", borderWidth: 1, borderColor: "rgba(255,255,255,0.10)", alignItems: "center", justifyContent: "center" },
  sheetIconWrapActive: { backgroundColor: "rgba(139,92,246,0.24)", borderColor: "rgba(139,92,246,0.50)" },
  speedItemText: { flex: 1, color: "rgba(255,255,255,0.65)", fontSize: 20, fontFamily: "Cairo_700Bold" },
  speedItemTextActive: { color: "#fff" },
  speedItemDesc: { color: "rgba(255,255,255,0.35)", fontSize: 12, fontFamily: "Cairo_400Regular" },
});
