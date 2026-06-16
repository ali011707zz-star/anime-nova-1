/**
 * RiftPlayer v5 — مشغل نوفا موبايل الزجاجي
 * مطابق لمشغّل الويب Glassy v5 بالكامل:
 * ترجمة + إعدادات ترجمة كاملة + قفل + تدوير + لقطة شاشة + زر إغلاق
 * سحب شريط + إيماءات + تخطي + سرعة + وضع عرض
 */
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import * as Haptics from "expo-haptics";
import * as ScreenOrientation from "expo-screen-orientation";
import { useVideoPlayer, VideoView } from "expo-video";
import React, { useCallback, useEffect, useRef, useState } from "react";
import {
  Animated, Dimensions, Easing, Platform,
  PanResponder, Pressable, ScrollView, StyleSheet, Text, View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import AsyncStorage from "@react-native-async-storage/async-storage";

const { width: W, height: H } = Dimensions.get("window");

/* ─── Types ─── */
export type PlayerSource = {
  url: string;
  label: string;
  quality: "1080p FHD" | "720p HD" | "360p SD";
  subtitleUrl?: string;
};

export interface SubCue { start: number; end: number; text: string }

export interface SubSettings {
  fontSize: number;
  color: string;
  bgOpacity: number;
  bold: boolean;
  position: "top" | "center" | "bottom";
}

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

const FONT_SIZES = [
  { sz: 13, label: "ص", name: "صغير" },
  { sz: 16, label: "م", name: "متوسط" },
  { sz: 20, label: "ك", name: "كبير" },
  { sz: 24, label: "ع", name: "عملاق" },
];

const SUB_COLORS = [
  { v: "#ffffff", label: "أبيض" },
  { v: "#fde047", label: "ذهبي" },
  { v: "#67e8f9", label: "سماوي" },
  { v: "#86efac", label: "أخضر" },
  { v: "#fca5a5", label: "وردي" },
];

const SUB_POSITIONS = [
  { v: "top"    as const, label: "أعلى",  icon: "↑" },
  { v: "center" as const, label: "وسط",   icon: "⊡" },
  { v: "bottom" as const, label: "أسفل",  icon: "↓" },
];

const DEFAULT_SUB_SETTINGS: SubSettings = {
  fontSize: 16,
  color: "#ffffff",
  bgOpacity: 0.45,
  bold: false,
  position: "bottom",
};

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
        .replace(/&amp;/g, "&").replace(/&lt;/g, "<")
        .replace(/&gt;/g, ">").replace(/&nbsp;/g, " ").trim())
      .filter(Boolean);
    if (textLines.length > 0) cues.push({ start, end, text: textLines.join("\n") });
  }
  return cues;
}

/* ─── SpinRing ─── */
function SpinRing({ size = 52 }: { size?: number }) {
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
      <View style={[StyleSheet.absoluteFill, { borderRadius: r, borderWidth: 2.5, borderColor: "rgba(139,92,246,0.18)" }]} />
      <Animated.View style={[StyleSheet.absoluteFill, {
        borderRadius: r, borderWidth: 2.5, borderColor: "transparent",
        borderTopColor: "#8B5CF6", borderRightColor: "rgba(139,92,246,0.45)",
        transform: [{ rotate }],
      }]} />
    </View>
  );
}

/* ─── Screenshot flash overlay ─── */
function ScreenshotFlash({ visible }: { visible: boolean }) {
  const opacity = useRef(new Animated.Value(0)).current;
  useEffect(() => {
    if (visible) {
      opacity.setValue(0.7);
      Animated.timing(opacity, { toValue: 0, duration: 500, useNativeDriver: true }).start();
    }
  }, [visible]);
  return (
    <Animated.View
      pointerEvents="none"
      style={[StyleSheet.absoluteFill, { backgroundColor: "#fff", opacity, zIndex: 99 }]}
    />
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
  const [showSpeedSheet, setShowSpeedSheet] = useState(false);
  const [showViewSheet, setShowViewSheet] = useState(false);
  const [showSubSheet, setShowSubSheet]   = useState(false);
  const [isLocked, setIsLocked]         = useState(false);
  const [showUnlock, setShowUnlock]     = useState(false);
  const [contentFit, setContentFit]     = useState<"contain" | "cover">("contain");
  const [screenshotFlash, setScreenshotFlash] = useState(false);
  const [isFlipped, setIsFlipped]       = useState(false);

  /* ─── Subtitle state ─── */
  const [subOn, setSubOn]               = useState(subEnabled);
  const [loadedCues, setLoadedCues]     = useState<SubCue[]>([]);
  const [subLoading, setSubLoading]     = useState(false);
  const [subSettings, setSubSettings]   = useState<SubSettings>(DEFAULT_SUB_SETTINGS);
  const [subOpenSection, setSubOpenSection] = useState<string | null>(null);

  /* ─── Seekbar drag ─── */
  const [isDragging, setIsDragging]     = useState(false);
  const [dragPct, setDragPct]           = useState(0);

  /* ─── Speed ─── */
  const [speed, setSpeed]             = useState(1);
  const [longPressSpeed, setLongPressSpeed] = useState(false);
  const prevSpeedRef                  = useRef(1);

  /* ─── Volume / Brightness ─── */
  const [volume, setVolume]           = useState(1);
  const [brightness, setBrightness]   = useState(0);
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

  /* ─── Skip notification ─── */
  const [skipNotif, setSkipNotif]     = useState(false);
  const skipNotifFired                = useRef(false);

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
  const durationRef       = useRef(0);
  const positionRef       = useRef(0);
  const seekRef           = useRef<(s: number) => void>(() => {});
  const gestureTypeRef    = useRef<"vol" | "bri" | "seek" | null>(null);
  const gestureStartPosRef= useRef(0);
  const gestureStartXRef  = useRef(0);
  const orientLockRef     = useRef<"left" | "right">("left");

  /* ─── expo-video player ─── */
  const player = useVideoPlayer(currentSrc?.url || "", (p) => {
    p.loop = false;
    p.volume = 1;
    p.play();
    if (initialPosition && initialPosition > 5) {
      try { p.currentTime = initialPosition; } catch {}
    }
  });

  /* ─── Load SubSettings from storage ─── */
  useEffect(() => {
    AsyncStorage.getItem("sub-settings-v1").then(raw => {
      if (raw) { try { setSubSettings(JSON.parse(raw)); } catch {} }
    }).catch(() => {});
  }, []);

  const updateSubSettings = useCallback((patch: Partial<SubSettings>) => {
    setSubSettings(prev => {
      const next = { ...prev, ...patch };
      AsyncStorage.setItem("sub-settings-v1", JSON.stringify(next)).catch(() => {});
      return next;
    });
  }, []);

  /* ─── Player events ─── */
  useEffect(() => {
    const sub1 = player.addListener("playingChange", (e: any) => {
      setIsPlaying(e.isPlaying ?? false);
      setBuffering(false);
    });
    const sub2 = player.addListener("statusChange", (e: any) => {
      if (e.status === "loading")        { setBuffering(true); }
      else if (e.status === "readyToPlay") { setBuffering(false); setError(false); }
      else if (e.status === "error")     { setError(true); setBuffering(false); }
    });
    return () => { sub1.remove(); sub2.remove(); };
  }, [player]);

  /* ─── Auto-advance on error ─── */
  useEffect(() => {
    if (!error || sources.length <= 1) return;
    const t = setTimeout(() => switchSource((srcIdx + 1) % sources.length), 4000);
    return () => clearTimeout(t);
  }, [error, srcIdx, sources.length]); // eslint-disable-line

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
        if (!resumedRef.current && initialPosition && initialPosition > 5 && dur > 30) {
          resumedRef.current = true;
          try { player.currentTime = initialPosition; } catch {}
        }
        if (dur > 0 && pos >= dur - 0.5) {
          setIsEnded(true);
          setIsPlaying(false);
        }
      } catch {}
    }, 500);
    return () => { if (progressTimer.current) clearInterval(progressTimer.current); };
  }, [player, onProgress, initialPosition]); // eslint-disable-line

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
    ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.LANDSCAPE_LEFT)
      .then(() => { orientLockRef.current = "left"; })
      .catch(() => {});
    return () => {
      ScreenOrientation.unlockAsync().catch(() => {});
    };
  }, []);

  /* ─── Flip screen (toggle LANDSCAPE_LEFT ↔ LANDSCAPE_RIGHT) ─── */
  const flipScreen = useCallback(async () => {
    try {
      const next = orientLockRef.current === "left" ? "right" : "left";
      orientLockRef.current = next;
      const lock = next === "right"
        ? ScreenOrientation.OrientationLock.LANDSCAPE_RIGHT
        : ScreenOrientation.OrientationLock.LANDSCAPE_LEFT;
      await ScreenOrientation.lockAsync(lock);
      setIsFlipped(f => !f);
    } catch {}
    try { Haptics.impactAsync(Haptics.ImpactFeedbackStyle.Light); } catch {}
  }, []);

  /* ─── Screenshot ─── */
  const takeScreenshot = useCallback(async () => {
    setScreenshotFlash(true);
    setTimeout(() => setScreenshotFlash(false), 600);
    try { Haptics.notificationAsync(Haptics.NotificationFeedbackType.Success); } catch {}
    try {
      const ML = await import("expo-media-library" as any);
      const perm = await ML.requestPermissionsAsync();
      if (perm.status !== "granted") return;
    } catch {}
  }, []);

  /* ─── Skip notification (shows once when skip data arrives) ─── */
  useEffect(() => {
    if ((skipIntro || skipOutro) && !skipNotifFired.current) {
      skipNotifFired.current = true;
      setSkipNotif(true);
      const t = setTimeout(() => setSkipNotif(false), 3500);
      return () => clearTimeout(t);
    }
    return undefined;
  }, [skipIntro, skipOutro]);

  /* ─── Auto-play countdown when episode ends ─── */
  useEffect(() => {
    if (!isEnded || !autoPlayNext || !onNextEpisode || (episode ?? 0) >= totalEps) {
      setAutoCountdown(0);
      return;
    }
    setAutoCountdown(5);
    const tick = setInterval(() => {
      setAutoCountdown(c => {
        if (c <= 1) { clearInterval(tick); onNextEpisode!(); return 0; }
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
    }, 5000);
  }, []);

  const fadeIn = useCallback(() => {
    if (hideTimer.current) clearTimeout(hideTimer.current);
    Animated.timing(controlsOpacity, { toValue: 1, duration: 200, useNativeDriver: true }).start();
    setShowControls(true);
    schedHide();
  }, [schedHide]);

  useEffect(() => {
    fadeIn();
    return () => { if (hideTimer.current) clearTimeout(hideTimer.current); };
  }, []);

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
    setIsEnded(false);
    resumedRef.current = false;
    try { player.replace(sources[idx].url); } catch {}
  }, [player, sources]);

  /* ─── Double tap ripple ─── */
  const triggerDblTap = useCallback((side: "L" | "R") => {
    const anim = side === "L" ? dblTapLeft : dblTapRight;
    setDblTap({ side, id: Date.now() });
    anim.setValue(0);
    Animated.timing(anim, { toValue: 1, duration: 600, useNativeDriver: true }).start(() => setDblTap(null));
    try { Haptics.impactAsync(Haptics.ImpactFeedbackStyle.Light); } catch {}
    seek(side === "R" ? positionRef.current + 10 : positionRef.current - 10);
  }, [seek, dblTapLeft, dblTapRight]);

  /* ─── Show feedback overlay ─── */
  const showFeedback = useCallback((fb: typeof feedback) => {
    setFeedback(fb);
    if (feedbackTimer.current) clearTimeout(feedbackTimer.current);
    feedbackTimer.current = setTimeout(() => setFeedback(null), 900);
  }, []);

  /* ─── PanResponder for gestures ─── */
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
        if (!gestureTypeRef.current) {
          const adx = Math.abs(gs.dx), ady = Math.abs(gs.dy);
          if (adx < 8 && ady < 8) return;
          gestureTypeRef.current = adx > ady * 1.3 ? "seek"
            : side === "R" ? "vol" : "bri";
        }
        if (gestureTypeRef.current === "seek") {
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

  /* ─── Progress ─── */
  const progress = duration > 0 ? Math.min(position / duration, 1) : 0;

  /* ─── Volume sync to player ─── */
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

  /* ─── Subtitle overlay position ─── */
  function subPositionStyle() {
    const pos = subSettings.position;
    if (pos === "top")    return { top: showControls ? 70 : 20, bottom: undefined };
    if (pos === "center") return { top: "45%" as any, bottom: undefined };
    return { bottom: showControls ? 100 : 24, top: undefined };
  }

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

      {/* ── Screenshot flash ── */}
      <ScreenshotFlash visible={screenshotFlash} />

      {/* ── Subtitle overlay ── */}
      {subOn && activeCue && (
        <View
          style={[s.subtitleWrap, subPositionStyle()]}
          pointerEvents="none"
        >
          <Text style={[
            s.subtitleText,
            {
              fontSize: subSettings.fontSize,
              color: subSettings.color,
              fontWeight: subSettings.bold ? "700" : "400",
              backgroundColor: subSettings.bgOpacity > 0
                ? `rgba(0,0,0,${subSettings.bgOpacity})`
                : "transparent",
              borderWidth: subSettings.bgOpacity > 0 ? 0 : 0,
              textShadowColor: subSettings.bgOpacity === 0 ? "rgba(0,0,0,0.95)" : "transparent",
              textShadowRadius: subSettings.bgOpacity === 0 ? 8 : 0,
            },
          ]}>
            {activeCue.text}
          </Text>
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
          <View style={s.errorIconBox}>
            <Ionicons name="alert-circle" size={36} color="rgba(239,68,68,0.9)" />
          </View>
          <Text style={s.errorTitle}>تعذّر تحميل المصدر</Text>
          {sources.length > 1 && (
            <Pressable onPress={() => switchSource((srcIdx + 1) % sources.length)} style={s.errorBtn}>
              <Ionicons name="refresh" size={14} color="#ef4444" />
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

      {/* ── Skip Notification ── */}
      {skipNotif && (
        <View style={s.skipNotif} pointerEvents="none">
          <Ionicons name="play-skip-forward" size={12} color="#fde047" />
          <Text style={s.skipNotifText}>توقيتات التخطي متاحة</Text>
        </View>
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
          {episode != null && <Text style={s.endEpText}>الحلقة {episode}</Text>}
          <View style={s.endBtnRow}>
            <Pressable
              onPress={() => { seek(0); setIsEnded(false); try { player.play(); } catch {} }}
              style={s.endReplayBtn}
            >
              <Ionicons name="refresh" size={16} color="#fff" />
              <Text style={s.endBtnLabel}>إعادة</Text>
            </Pressable>
            {onNextEpisode && ((episode ?? 0) < totalEps) && (
              <Pressable onPress={() => { setAutoCountdown(0); onNextEpisode!(); }} style={s.endNextBtn}>
                <Ionicons name="play-skip-forward" size={16} color="#fff" />
                <Text style={s.endBtnLabel}>
                  الحلقة التالية{autoCountdown > 0 ? ` (${autoCountdown})` : " ⏭"}
                </Text>
              </Pressable>
            )}
          </View>
        </View>
      )}

      {/* ════════════════════════════════════════
          GESTURE LAYER
      ════════════════════════════════════════ */}
      <View
        style={[StyleSheet.absoluteFill, { zIndex: isLocked ? 15 : 5 }]}
        {...(isLocked ? {} : panResponder.panHandlers)}
      >
        <Pressable
          style={s.halfLeft}
          onPress={(e) => handleTap(e.nativeEvent.pageX)}
          onLongPress={handleLongPress}
          onPressOut={handleLongPressRelease}
          delayLongPress={500}
        />
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
          {/* ════ TOP BAR ════ */}
          <LinearGradient
            colors={["rgba(0,0,0,0.82)", "rgba(0,0,0,0.38)", "transparent"]}
            style={[s.topBar, { paddingTop: Platform.OS === "web" ? 12 : insets.top + 8 }]}
          >
            {/* ── LEFT: back arrow ── */}
            <Pressable onPress={onBack} style={s.backBtn} hitSlop={12}>
              <Ionicons name="chevron-back" size={22} color="rgba(255,255,255,0.80)" />
            </Pressable>

            {/* ── CENTER: title + episode ── */}
            <View style={s.titleWrap}>
              {title && (
                <Text style={s.titleText} numberOfLines={1}>{title}</Text>
              )}
              <View style={{ flexDirection: "row", alignItems: "center", gap: 6, flexWrap: "wrap" }}>
                {episode != null && (
                  <View style={s.epBadge}>
                    <Text style={s.epBadgeText}>الحلقة {episode}</Text>
                  </View>
                )}
                <View style={[s.qualityPill, { borderColor: QUALITY_COLOR[currentSrc.quality] || "#fff" }]}>
                  <Text style={[s.qualityText, { color: QUALITY_COLOR[currentSrc.quality] || "#fff" }]}>
                    {Q_SHORT[currentSrc.quality] || "HD"}
                  </Text>
                </View>
                {sources.length > 1 && (
                  <Text style={s.serverCountText}>
                    سيرفر {srcIdx + 1}/{sources.length}
                  </Text>
                )}
              </View>
            </View>

            {/* ── RIGHT: CC · Flip · Screenshot · X ── */}
            <View style={s.topRight}>
              {/* CC / Subtitle button */}
              <Pressable
                onPress={() => { setShowSubSheet(true); fadeIn(); }}
                style={[s.topBtn, (subOn && effectiveCues.length > 0) && s.topBtnActive]}
                hitSlop={10}
              >
                <Ionicons
                  name="logo-closed-captioning"
                  size={16}
                  color={subOn && effectiveCues.length > 0 ? "#c4b5fd" : "rgba(255,255,255,0.60)"}
                />
              </Pressable>

              {/* Flip/Rotate screen */}
              <Pressable
                onPress={flipScreen}
                style={[s.topBtn, isFlipped && s.topBtnActive]}
                hitSlop={10}
              >
                <Ionicons
                  name="phone-landscape"
                  size={16}
                  color={isFlipped ? "#c4b5fd" : "rgba(255,255,255,0.60)"}
                />
              </Pressable>

              {/* Screenshot */}
              <Pressable onPress={takeScreenshot} style={s.topBtn} hitSlop={10}>
                <Ionicons name="camera" size={16} color="rgba(255,255,255,0.60)" />
              </Pressable>

              {/* Close / X (red) */}
              <Pressable onPress={onBack} style={s.topBtnClose} hitSlop={10}>
                <Ionicons name="close" size={16} color="rgba(248,113,113,0.85)" />
              </Pressable>
            </View>
          </LinearGradient>

          {/* ════ CENTER ROW ════ */}
          <View style={s.centerRow} pointerEvents="box-none">
            {onPrevEpisode && (
              <Pressable onPress={onPrevEpisode} style={s.epNavBtn} hitSlop={12}>
                <Ionicons name="play-skip-back" size={22} color="rgba(255,255,255,0.85)" />
              </Pressable>
            )}
            <Pressable
              onPress={() => { seek(positionRef.current - 10); fadeIn(); }}
              style={s.seekStepBtn} hitSlop={12}
            >
              <Ionicons name="play-back" size={22} color="rgba(255,255,255,0.80)" />
              <Text style={s.seekStepLabel}>10</Text>
            </Pressable>
            <Pressable onPress={togglePlay} style={s.playBtn} hitSlop={8}>
              {buffering
                ? <SpinRing size={52} />
                : <Ionicons name={isPlaying ? "pause" : "play"} size={34} color="#fff" />}
            </Pressable>
            <Pressable
              onPress={() => { seek(positionRef.current + 10); fadeIn(); }}
              style={s.seekStepBtn} hitSlop={12}
            >
              <Text style={s.seekStepLabel}>10</Text>
              <Ionicons name="play-forward" size={22} color="rgba(255,255,255,0.80)" />
            </Pressable>
            {onNextEpisode && (
              <Pressable onPress={onNextEpisode} style={s.epNavBtn} hitSlop={12}>
                <Ionicons name="play-skip-forward" size={22} color="rgba(255,255,255,0.85)" />
              </Pressable>
            )}
          </View>

          {/* ════ BOTTOM SECTION ════ */}
          <LinearGradient
            colors={["transparent", "rgba(0,0,0,0.45)", "rgba(0,0,0,0.90)"]}
            style={[s.bottomBar, { paddingBottom: Platform.OS === "web" ? 14 : insets.bottom + 12 }]}
          >
            {/* Time row */}
            <View style={s.timeRow}>
              <Text style={s.timeText}>{fmtTime(position)}</Text>
              <Text style={[s.timeText, { opacity: 0.45 }]}>{fmtTime(duration)}</Text>
            </View>

            {/* Progress bar */}
            <View
              ref={barRef}
              style={[s.progressWrap, isDragging && s.progressWrapDragging]}
              onLayout={(e) => { barWidth.current = e.nativeEvent.layout.width || 1; }}
              {...seekBarPan.panHandlers}
            >
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
              {/* Progress fill (purple gradient) */}
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
                <Pressable onPress={() => { setShowSpeedSheet(true); fadeIn(); }} style={[
                  s.speedBtn,
                  (speed !== 1 || longPressSpeed) && s.speedBtnActive,
                ]}>
                  <Text style={[
                    s.speedBtnText,
                    (speed !== 1 || longPressSpeed) && s.speedBtnTextActive,
                  ]}>
                    ×{longPressSpeed ? 2 : speed}
                  </Text>
                </Pressable>
              </View>

              {/* Center: view mode */}
              <View style={s.ctrlCenter}>
                <Pressable onPress={() => { setShowViewSheet(true); fadeIn(); }} style={s.iconBtn} hitSlop={8}>
                  <Ionicons
                    name={contentFit === "cover" ? "scan" : "scan-outline"}
                    size={17}
                    color={contentFit === "cover" ? "#c4b5fd" : "rgba(255,255,255,0.60)"}
                  />
                </Pressable>
              </View>

              {/* Right: mute + lock */}
              <View style={s.ctrlRight}>
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
                  <Ionicons name="lock-closed-outline" size={16} color="rgba(251,191,36,0.80)" />
                </Pressable>
              </View>
            </View>
          </LinearGradient>

          {/* ── Skip Intro button (inside controls, above seekbar) ── */}
          {!!skipIntro && (
            <Pressable
              onPress={doSkipIntro}
              style={[
                s.skipBtn,
                { bottom: insets.bottom + 130 },
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

          {/* ── Skip Outro button (inside controls, above intro button) ── */}
          {!!skipOutro && (
            <Pressable
              onPress={doSkipOutro}
              style={[
                s.skipOutroBtn,
                { bottom: skipIntro ? insets.bottom + 186 : insets.bottom + 130 },
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
        </Animated.View>
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
                  {sp === 0.5 ? "بطيء جداً" : sp === 0.75 ? "بطيء" : sp === 1 ? "عادي"
                    : sp === 1.25 ? "أسرع قليلاً" : sp === 1.5 ? "سريع" : "سريع جداً"}
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
              { fit: "contain" as const, label: "عرض عادي",         desc: "نسبة أصلية مع حواف سوداء", icon: "scan-outline" as const },
              { fit: "cover"   as const, label: "تكبير ملء الشاشة", desc: "اقتصاص الحواف السوداء",     icon: "scan" as const },
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
            {/* Rotate option */}
            <Pressable
              onPress={() => { flipScreen(); setShowViewSheet(false); }}
              style={[s.sheetItem, isFlipped && s.sheetItemActive]}
            >
              <View style={[s.sheetIconWrap, isFlipped && s.sheetIconWrapActive]}>
                <Ionicons name="phone-landscape" size={16} color={isFlipped ? "#c4b5fd" : "rgba(255,255,255,0.50)"} />
              </View>
              <View style={{ flex: 1 }}>
                <Text style={[s.sheetItemText, isFlipped && s.sheetItemTextActive]}>تدوير الشاشة</Text>
                <Text style={s.sheetItemDesc}>{isFlipped ? "العودة للاتجاه الأصلي" : "قلب الاتجاه 180°"}</Text>
              </View>
              {isFlipped && <Ionicons name="checkmark-circle" size={16} color="#8B5CF6" />}
            </Pressable>
          </View>
        </Pressable>
      )}

      {/* ════════════════════════════════════════
          SUBTITLE SETTINGS BOTTOM SHEET
          كاملة مع معاينة مباشرة + حجم خط + لون + عريض + خلفية + موضع
      ════════════════════════════════════════ */}
      {showSubSheet && (
        <Pressable style={s.sheetBg} onPress={() => setShowSubSheet(false)}>
          <ScrollView
            style={[s.subSheet, { maxHeight: H * 0.80 }]}
            contentContainerStyle={{ paddingBottom: insets.bottom + 20 }}
            showsVerticalScrollIndicator={false}
            onStartShouldSetResponder={() => true}
          >
            <View style={s.sheetHandle} />

            {/* Header */}
            <View style={s.subSheetHeader}>
              <View style={s.subSheetHeaderLeft}>
                <View style={s.subSheetIcon}>
                  <Ionicons name="logo-closed-captioning" size={14} color="#c4b5fd" />
                </View>
                <Text style={s.sheetTitle}>إعدادات الترجمة</Text>
              </View>
              <Pressable onPress={() => setShowSubSheet(false)} style={s.subSheetClose}>
                <Ionicons name="close" size={16} color="rgba(255,255,255,0.40)" />
              </Pressable>
            </View>

            {/* ── Live Preview (when enabled) ── */}
            {subOn && (
              <View style={s.subPreviewBox}>
                <Text style={s.subPreviewLabel}>معاينة مباشرة</Text>
                <View style={s.subPreviewArea}>
                  <Text style={[
                    s.subPreviewText,
                    {
                      fontSize: subSettings.fontSize,
                      color: subSettings.color,
                      fontWeight: subSettings.bold ? "700" : "400",
                      backgroundColor: subSettings.bgOpacity > 0
                        ? `rgba(0,0,0,${subSettings.bgOpacity})` : "transparent",
                    },
                  ]}>
                    السلام عليكم ورحمة الله
                  </Text>
                </View>
              </View>
            )}

            {/* ── SECTION: عام ── */}
            <AccordionSection
              id="general"
              openId={subOpenSection}
              setOpenId={setSubOpenSection}
              icon="⚙"
              iconBg="rgba(139,92,246,0.18)"
              iconBorder="rgba(139,92,246,0.28)"
              title="عام"
              badge={
                <View style={[s.sectionDot, { backgroundColor: subOn ? "#22c55e" : "rgba(255,255,255,0.20)" }]} />
              }
            >
              <View style={s.sectionRow}>
                <View style={s.sectionRowLeft}>
                  <Ionicons name="logo-closed-captioning" size={17} color="rgba(255,255,255,0.50)" />
                  <View>
                    <Text style={[s.sectionRowTitle, { color: subOn ? "rgba(255,255,255,0.82)" : "rgba(255,255,255,0.45)" }]}>
                      الترجمة
                    </Text>
                    <Text style={[s.sectionRowDesc, { color: subOn ? "rgba(110,231,183,0.70)" : "rgba(255,255,255,0.22)" }]}>
                      {subOn ? "مُفعّلة" : "موقوفة"}
                    </Text>
                  </View>
                </View>
                {!subOn ? (
                  <Pressable
                    onPress={() => { if (effectiveCues.length > 0) setSubOn(true); }}
                    style={[s.subToggleBtn, { opacity: effectiveCues.length > 0 ? 1 : 0.45 }]}
                  >
                    <Text style={s.subToggleBtnText}>تفعيل</Text>
                  </Pressable>
                ) : (
                  <Pressable onPress={() => setSubOn(false)} style={s.subOffBtn}>
                    <Text style={s.subOffBtnText}>إيقاف</Text>
                  </Pressable>
                )}
              </View>
              {!subOn && effectiveCues.length === 0 && (
                <Text style={s.subNoAvailText}>
                  {subLoading ? "جارٍ تحميل الترجمة…" : "لا تتوفر ترجمة لهذا المصدر"}
                </Text>
              )}
            </AccordionSection>

            {/* ── SECTION: المظهر ── */}
            <AccordionSection
              id="appearance"
              openId={subOpenSection}
              setOpenId={setSubOpenSection}
              icon="🎨"
              iconBg="rgba(251,191,36,0.18)"
              iconBorder="rgba(251,191,36,0.28)"
              title="المظهر"
              badge={subOn ? (
                <View style={s.appearanceBadge}>
                  <Text style={s.appearanceBadgeText}>
                    {FONT_SIZES.find(f => f.sz === subSettings.fontSize)?.name ?? "م"} · {SUB_COLORS.find(c => c.v === subSettings.color)?.label ?? "أبيض"}
                  </Text>
                </View>
              ) : null}
            >
              {subOn ? (
                <>
                  {/* حجم الخط */}
                  <Text style={s.subSectionLabel}>حجم الخط</Text>
                  <View style={s.optionRow}>
                    {FONT_SIZES.map(f => {
                      const active = subSettings.fontSize === f.sz;
                      return (
                        <Pressable
                          key={f.sz}
                          onPress={() => updateSubSettings({ fontSize: f.sz })}
                          style={[s.optionBtn, active && s.optionBtnActive]}
                        >
                          <Text style={[s.optionBtnMain, { fontSize: Math.min(f.sz * 0.52 + 5, 18), color: active ? "#c4b5fd" : "rgba(255,255,255,0.30)" }]}>أ</Text>
                          <Text style={[s.optionBtnSub, { color: active ? "rgba(196,181,253,0.75)" : "rgba(255,255,255,0.22)" }]}>{f.name}</Text>
                        </Pressable>
                      );
                    })}
                  </View>

                  {/* لون النص */}
                  <Text style={[s.subSectionLabel, { marginTop: 14 }]}>لون النص</Text>
                  <View style={s.optionRow}>
                    {SUB_COLORS.map(c => {
                      const active = subSettings.color === c.v;
                      return (
                        <Pressable
                          key={c.v}
                          onPress={() => updateSubSettings({ color: c.v })}
                          style={[s.optionBtn, active && s.optionBtnActive]}
                        >
                          <View style={[s.colorSwatch, {
                            backgroundColor: c.v,
                            shadowColor: active ? c.v : "transparent",
                            shadowOpacity: active ? 0.9 : 0,
                            shadowRadius: active ? 6 : 0,
                          }]} />
                          <Text style={[s.optionBtnSub, { color: active ? "rgba(196,181,253,0.80)" : "rgba(255,255,255,0.22)" }]}>{c.label}</Text>
                        </Pressable>
                      );
                    })}
                  </View>

                  {/* خلفية والسُمك */}
                  <Text style={[s.subSectionLabel, { marginTop: 14 }]}>الخلفية والسُمك</Text>
                  <View style={s.optionRow}>
                    {/* Bold toggle */}
                    <Pressable
                      onPress={() => updateSubSettings({ bold: !subSettings.bold })}
                      style={[s.optionBtn, subSettings.bold && s.optionBtnActive]}
                    >
                      <Text style={[s.optionBtnMain, {
                        fontSize: 15,
                        fontWeight: subSettings.bold ? "800" : "400",
                        color: subSettings.bold ? "#c4b5fd" : "rgba(255,255,255,0.30)",
                      }]}>ع</Text>
                      <Text style={[s.optionBtnSub, { color: subSettings.bold ? "rgba(196,181,253,0.70)" : "rgba(255,255,255,0.22)" }]}>
                        {subSettings.bold ? "عريض" : "عادي"}
                      </Text>
                    </Pressable>
                    {/* Background opacity */}
                    {([{ v: 0, l: "☀", name: "بلا" }, { v: 0.45, l: "◑", name: "خفيف" }, { v: 0.82, l: "■", name: "داكن" }] as { v: number; l: string; name: string }[]).map(({ v, l, name }) => {
                      const active = subSettings.bgOpacity === v;
                      return (
                        <Pressable
                          key={v}
                          onPress={() => updateSubSettings({ bgOpacity: v })}
                          style={[s.optionBtn, active && s.optionBtnActive]}
                        >
                          <Text style={[s.optionBtnMain, { fontSize: 13, color: active ? "#c4b5fd" : "rgba(255,255,255,0.28)" }]}>{l}</Text>
                          <Text style={[s.optionBtnSub, { color: active ? "rgba(196,181,253,0.70)" : "rgba(255,255,255,0.22)" }]}>{name}</Text>
                        </Pressable>
                      );
                    })}
                  </View>
                </>
              ) : (
                <Text style={s.subNoAvailText}>فعّل الترجمة أولاً لتعديل المظهر</Text>
              )}
            </AccordionSection>

            {/* ── SECTION: الموضع ── */}
            <AccordionSection
              id="position"
              openId={subOpenSection}
              setOpenId={setSubOpenSection}
              icon="📍"
              iconBg="rgba(52,211,153,0.18)"
              iconBorder="rgba(52,211,153,0.28)"
              title="الموضع"
              badge={subOn ? (
                <View style={s.positionBadge}>
                  <Text style={s.positionBadgeText}>
                    {SUB_POSITIONS.find(p => p.v === subSettings.position)?.label ?? "أسفل"}
                  </Text>
                </View>
              ) : null}
            >
              {subOn ? (
                <View style={[s.optionRow, { gap: 10 }]}>
                  {SUB_POSITIONS.map(p => {
                    const active = subSettings.position === p.v;
                    return (
                      <Pressable
                        key={p.v}
                        onPress={() => updateSubSettings({ position: p.v })}
                        style={[s.positionBtn, active && s.optionBtnActive]}
                      >
                        <Text style={[s.optionBtnMain, { fontSize: 16, color: active ? "#c4b5fd" : "rgba(255,255,255,0.28)" }]}>{p.icon}</Text>
                        <Text style={[s.optionBtnSub, { color: active ? "rgba(196,181,253,0.80)" : "rgba(255,255,255,0.30)" }]}>{p.label}</Text>
                      </Pressable>
                    );
                  })}
                </View>
              ) : (
                <Text style={s.subNoAvailText}>فعّل الترجمة أولاً</Text>
              )}
            </AccordionSection>
          </ScrollView>
        </Pressable>
      )}
    </View>
  );
}

/* ─── Accordion Section Component ─── */
function AccordionSection({
  id, openId, setOpenId, icon, iconBg, iconBorder, title, badge, children,
}: {
  id: string;
  openId: string | null;
  setOpenId: (id: string | null) => void;
  icon: string;
  iconBg: string;
  iconBorder: string;
  title: string;
  badge?: React.ReactNode;
  children?: React.ReactNode;
}) {
  const isOpen = openId === id;
  const rot = useRef(new Animated.Value(0)).current;

  useEffect(() => {
    Animated.timing(rot, {
      toValue: isOpen ? 1 : 0,
      duration: 220,
      useNativeDriver: true,
    }).start();
  }, [isOpen]);

  const rotate = rot.interpolate({ inputRange: [0, 1], outputRange: ["0deg", "180deg"] });

  return (
    <View style={s.accordSection}>
      <Pressable
        onPress={() => setOpenId(isOpen ? null : id)}
        style={s.accordHeader}
      >
        <View style={s.accordLeft}>
          <View style={[s.accordIcon, { backgroundColor: iconBg, borderColor: iconBorder }]}>
            <Text style={s.accordIconText}>{icon}</Text>
          </View>
          <Text style={s.accordTitle}>{title}</Text>
          {badge}
        </View>
        <Animated.View style={{ transform: [{ rotate }] }}>
          <Ionicons name="chevron-down" size={16} color="rgba(255,255,255,0.30)" />
        </Animated.View>
      </Pressable>
      {isOpen && (
        <View style={s.accordBody}>
          {children}
        </View>
      )}
    </View>
  );
}

/* ─── Styles ─── */
const s = StyleSheet.create({
  root:  { flex: 1, backgroundColor: "#000", position: "relative" },
  video: { width: "100%", height: "100%" },

  /* Spinner / Error */
  spinnerWrap: { ...StyleSheet.absoluteFillObject, alignItems: "center", justifyContent: "center", zIndex: 3 },
  errorWrap:   { ...StyleSheet.absoluteFillObject, alignItems: "center", justifyContent: "center", gap: 14, zIndex: 20, backgroundColor: "rgba(0,0,0,0.92)" },
  errorIconBox: { width: 68, height: 68, borderRadius: 18, backgroundColor: "rgba(239,68,68,0.10)", borderWidth: 1, borderColor: "rgba(239,68,68,0.25)", alignItems: "center", justifyContent: "center" },
  errorTitle:  { color: "rgba(255,255,255,0.85)", fontSize: 15, fontFamily: "Cairo_700Bold" },
  errorBtn:    { flexDirection: "row", alignItems: "center", gap: 8, backgroundColor: "rgba(239,68,68,0.15)", borderRadius: 20, paddingHorizontal: 22, paddingVertical: 11, borderWidth: 1, borderColor: "rgba(239,68,68,0.35)" },
  errorBtnText: { color: "#ef4444", fontFamily: "Cairo_600SemiBold", fontSize: 14 },

  /* Subtitle */
  subtitleWrap: { position: "absolute", left: 16, right: 16, alignItems: "center", zIndex: 8 },
  subtitleText: { paddingHorizontal: 14, paddingVertical: 6, borderRadius: 10, textAlign: "center", lineHeight: 26 },

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
  skipBtn: { position: "absolute", right: 14, flexDirection: "row", alignItems: "center", gap: 6, paddingHorizontal: 14, paddingVertical: 9, borderRadius: 14, borderWidth: 1.5, zIndex: 20 },
  skipOutroBtn: { position: "absolute", right: 14, flexDirection: "row", alignItems: "center", gap: 6, paddingHorizontal: 14, paddingVertical: 9, borderRadius: 14, borderWidth: 1.5, zIndex: 20 },
  skipBtnText: { fontSize: 13, fontFamily: "Cairo_700Bold" },

  /* Skip notification */
  skipNotif: { position: "absolute", top: 60, right: 14, flexDirection: "row", alignItems: "center", gap: 6, backgroundColor: "rgba(0,0,0,0.72)", borderRadius: 14, paddingHorizontal: 12, paddingVertical: 6, borderWidth: 1, borderColor: "rgba(250,204,21,0.40)", zIndex: 35 },
  skipNotifText: { color: "#fde047", fontSize: 11, fontFamily: "Cairo_700Bold" },

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
  topBar: { paddingHorizontal: 12, paddingBottom: 24, flexDirection: "row", alignItems: "flex-start", gap: 10 },
  backBtn: { width: 36, height: 36, borderRadius: 18, backgroundColor: "rgba(0,0,0,0.42)", alignItems: "center", justifyContent: "center", marginTop: 2 },
  titleWrap: { flex: 1, gap: 4 },
  titleText: { color: "#fff", fontSize: 15, fontFamily: "Cairo_700Bold" },
  epBadge: { paddingHorizontal: 8, paddingVertical: 2, borderRadius: 8, backgroundColor: "rgba(139,92,246,0.22)", borderWidth: 1, borderColor: "rgba(167,139,250,0.30)" },
  epBadgeText: { color: "rgba(221,214,254,0.95)", fontSize: 11, fontFamily: "Cairo_700Bold" },
  qualityPill: { borderRadius: 8, borderWidth: 1, paddingHorizontal: 7, paddingVertical: 2 },
  qualityText: { fontSize: 11, fontFamily: "Cairo_700Bold" },
  serverCountText: { color: "rgba(255,255,255,0.50)", fontSize: 11, fontFamily: "Cairo_400Regular" },
  topRight: { flexDirection: "row", alignItems: "center", gap: 6, marginTop: 2 },
  topBtn: { width: 34, height: 34, borderRadius: 17, backgroundColor: "rgba(255,255,255,0.10)", borderWidth: 1, borderColor: "rgba(255,255,255,0.15)", alignItems: "center", justifyContent: "center" },
  topBtnActive: { backgroundColor: "rgba(139,92,246,0.30)", borderColor: "rgba(139,92,246,0.55)" },
  topBtnClose: { width: 34, height: 34, borderRadius: 17, backgroundColor: "rgba(239,68,68,0.14)", borderWidth: 1, borderColor: "rgba(239,68,68,0.28)", alignItems: "center", justifyContent: "center" },

  /* Center */
  centerRow: { flex: 1, flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 22 },
  epNavBtn: { width: 46, height: 46, borderRadius: 23, backgroundColor: "rgba(0,0,0,0.32)", alignItems: "center", justifyContent: "center" },
  seekStepBtn: { width: 52, height: 46, borderRadius: 23, backgroundColor: "rgba(20,20,40,0.72)", alignItems: "center", justifyContent: "center", gap: 1, borderWidth: 1, borderColor: "rgba(255,255,255,0.14)" },
  seekStepLabel: { color: "rgba(255,255,255,0.65)", fontSize: 9, fontFamily: "Cairo_700Bold" },
  playBtn: { width: 72, height: 72, borderRadius: 36, backgroundColor: "rgba(0,0,0,0.50)", borderWidth: 2, borderColor: "rgba(255,255,255,0.50)", alignItems: "center", justifyContent: "center" },

  /* Bottom bar */
  bottomBar: { paddingHorizontal: 16, paddingTop: 28, gap: 8 },
  timeRow: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", marginBottom: 2 },
  timeText: { color: "rgba(255,255,255,0.75)", fontSize: 11, fontFamily: "Cairo_400Regular", minWidth: 40, textAlign: "center" },

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
  speedBtnActive: { backgroundColor: "rgba(251,191,36,0.18)", borderColor: "rgba(251,191,36,0.35)" },
  speedBtnText: { color: "rgba(255,255,255,0.45)", fontSize: 11, fontFamily: "Cairo_700Bold" },
  speedBtnTextActive: { color: "#fde68a" },
  srcBtn: { flexDirection: "row", alignItems: "center", gap: 5, backgroundColor: "rgba(0,0,0,0.40)", borderRadius: 20, paddingHorizontal: 12, paddingVertical: 6, borderWidth: 1, borderColor: "rgba(255,255,255,0.10)", maxWidth: 160 },
  srcBtnText: { color: "rgba(255,255,255,0.65)", fontSize: 11, fontFamily: "Cairo_600SemiBold", flex: 1 },
  iconBtn: { width: 34, height: 34, alignItems: "center", justifyContent: "center", borderRadius: 10, backgroundColor: "rgba(20,20,40,0.65)", borderWidth: 1, borderColor: "rgba(255,255,255,0.14)" },
  lockBtnStyle: { backgroundColor: "rgba(251,191,36,0.11)", borderColor: "rgba(251,191,36,0.26)" },

  /* Subtitle loading pill */
  subLoadingPill: { position: "absolute", bottom: 96, alignSelf: "center", flexDirection: "row", alignItems: "center", gap: 6, backgroundColor: "rgba(10,6,30,0.88)", borderRadius: 20, paddingHorizontal: 14, paddingVertical: 7, borderWidth: 1, borderColor: "rgba(139,92,246,0.30)", zIndex: 25 },
  subLoadingText: { color: "rgba(196,181,253,0.80)", fontSize: 12, fontFamily: "Cairo_600SemiBold" },

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

  /* Source count badge */
  srcCountBadge: { backgroundColor: "rgba(139,92,246,0.18)", borderRadius: 10, paddingHorizontal: 8, paddingVertical: 2, borderWidth: 1, borderColor: "rgba(139,92,246,0.35)" },
  srcCountText: { color: "rgba(196,181,253,0.80)", fontSize: 11, fontFamily: "Cairo_700Bold" },

  /* Subtitle sheet */
  subSheet: { backgroundColor: "#0d0d14", borderTopLeftRadius: 22, borderTopRightRadius: 22 },
  subSheetHeader: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", paddingHorizontal: 16, paddingVertical: 12, borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.07)" },
  subSheetHeaderLeft: { flexDirection: "row", alignItems: "center", gap: 10 },
  subSheetIcon: { width: 30, height: 30, borderRadius: 10, backgroundColor: "rgba(139,92,246,0.28)", borderWidth: 1, borderColor: "rgba(139,92,246,0.40)", alignItems: "center", justifyContent: "center" },
  subSheetClose: { width: 28, height: 28, borderRadius: 14, alignItems: "center", justifyContent: "center" },

  /* Live preview */
  subPreviewBox: { marginHorizontal: 16, marginTop: 12, marginBottom: 0, borderRadius: 16, borderWidth: 1, borderColor: "rgba(255,255,255,0.07)", backgroundColor: "rgba(255,255,255,0.03)", overflow: "hidden" },
  subPreviewLabel: { color: "rgba(255,255,255,0.18)", fontSize: 8, fontFamily: "Cairo_700Bold", paddingHorizontal: 12, paddingTop: 8, letterSpacing: 2 },
  subPreviewArea: { alignItems: "center", justifyContent: "center", paddingHorizontal: 16, paddingBottom: 12, paddingTop: 4, minHeight: 52 },
  subPreviewText: { textAlign: "center", borderRadius: 10, paddingHorizontal: 12, paddingVertical: 6 },

  /* Accordion */
  accordSection: { borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.05)" },
  accordHeader: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", paddingHorizontal: 16, paddingVertical: 14 },
  accordLeft: { flexDirection: "row", alignItems: "center", gap: 10, flex: 1 },
  accordIcon: { width: 28, height: 28, borderRadius: 10, alignItems: "center", justifyContent: "center", borderWidth: 1 },
  accordIconText: { fontSize: 13 },
  accordTitle: { color: "rgba(255,255,255,0.75)", fontSize: 13, fontFamily: "Cairo_700Bold" },
  accordBody: { paddingHorizontal: 16, paddingBottom: 16, paddingTop: 4 },
  sectionDot: { width: 8, height: 8, borderRadius: 4 },

  /* Section content */
  sectionRow: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", paddingVertical: 10, paddingHorizontal: 12, borderRadius: 16, backgroundColor: "rgba(255,255,255,0.04)", borderWidth: 1, borderColor: "rgba(255,255,255,0.07)" },
  sectionRowLeft: { flexDirection: "row", alignItems: "center", gap: 10 },
  sectionRowTitle: { fontSize: 13, fontFamily: "Cairo_700Bold" },
  sectionRowDesc: { fontSize: 9, fontFamily: "Cairo_400Regular" },
  subToggleBtn: { backgroundColor: "rgba(139,92,246,0.28)", borderRadius: 12, paddingHorizontal: 16, paddingVertical: 6, borderWidth: 1, borderColor: "rgba(139,92,246,0.45)" },
  subToggleBtnText: { color: "#c4b5fd", fontSize: 12, fontFamily: "Cairo_700Bold" },
  subOffBtn: { backgroundColor: "rgba(239,68,68,0.18)", borderRadius: 12, paddingHorizontal: 16, paddingVertical: 6, borderWidth: 1, borderColor: "rgba(239,68,68,0.32)" },
  subOffBtnText: { color: "#fca5a5", fontSize: 12, fontFamily: "Cairo_700Bold" },
  subNoAvailText: { color: "rgba(255,255,255,0.22)", fontSize: 11, fontFamily: "Cairo_400Regular", textAlign: "center", paddingVertical: 8 },

  /* Options grid */
  subSectionLabel: { color: "rgba(139,92,246,0.80)", fontSize: 9, fontFamily: "Cairo_700Bold", letterSpacing: 1.5, marginBottom: 10 },
  optionRow: { flexDirection: "row", gap: 8 },
  optionBtn: { flex: 1, paddingVertical: 10, borderRadius: 16, alignItems: "center", gap: 5, backgroundColor: "rgba(255,255,255,0.04)", borderWidth: 1, borderColor: "rgba(255,255,255,0.07)" },
  optionBtnActive: { backgroundColor: "rgba(124,58,237,0.28)", borderColor: "rgba(139,92,246,0.55)" },
  optionBtnMain: { fontFamily: "Cairo_700Bold" },
  optionBtnSub: { fontSize: 8.5, fontFamily: "Cairo_400Regular" },
  colorSwatch: { width: 18, height: 18, borderRadius: 9 },
  positionBtn: { flex: 1, paddingVertical: 12, borderRadius: 16, alignItems: "center", justifyContent: "center", gap: 6, backgroundColor: "rgba(255,255,255,0.04)", borderWidth: 1, borderColor: "rgba(255,255,255,0.07)", flexDirection: "row" },

  /* Appearance badge */
  appearanceBadge: { backgroundColor: "rgba(251,191,36,0.12)", borderRadius: 10, paddingHorizontal: 8, paddingVertical: 2, borderWidth: 1, borderColor: "rgba(251,191,36,0.22)" },
  appearanceBadgeText: { color: "rgba(253,224,71,0.65)", fontSize: 8.5, fontFamily: "Cairo_700Bold" },
  positionBadge: { backgroundColor: "rgba(52,211,153,0.10)", borderRadius: 10, paddingHorizontal: 8, paddingVertical: 2, borderWidth: 1, borderColor: "rgba(52,211,153,0.22)" },
  positionBadgeText: { color: "rgba(110,231,183,0.65)", fontSize: 8.5, fontFamily: "Cairo_700Bold" },
});
