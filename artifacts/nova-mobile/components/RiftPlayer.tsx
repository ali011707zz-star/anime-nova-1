/**
 * RiftPlayer v5 — مشغل نوفا موبايل الزجاجي
 * مطابق لمشغّل الويب Glassy v5 بالكامل:
 * ترجمة + إعدادات ترجمة كاملة + قفل + تدوير + لقطة شاشة + زر إغلاق
 * سحب شريط + إيماءات + تخطي + سرعة + وضع عرض
 */
import { Ionicons } from "@expo/vector-icons";
import * as Haptics from "expo-haptics";
import { LinearGradient } from "expo-linear-gradient";
import * as ScreenOrientation from "expo-screen-orientation";
import { StatusBar } from "expo-status-bar";
import { useVideoPlayer, VideoView } from "expo-video";
import React, { useCallback, useEffect, useRef, useState } from "react";
import {
  ActivityIndicator, Animated, Dimensions, Easing, Platform,
  PanResponder, Pressable, ScrollView, StyleSheet, Text, View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { getBaseUrl } from "@/utils/api";

const { width: W, height: H } = Dimensions.get("window");

/* ─── Types ─── */
export type PlayerSource = {
  url: string;
  label: string;
  quality: "1080p FHD" | "720p HD" | "360p SD";
  subtitleUrl?: string;
  isArabic?: boolean;
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
  anilistId?: number;
  onBack: () => void;
  onNextEpisode?: () => void;
  onPrevEpisode?: () => void;
  onEpisodeSelect?: (ep: number) => void;
  onProgress?: (pos: number, dur: number) => void;
  initialPosition?: number;
  skipIntro?: { start: number; end: number };
  skipOutro?: { start: number; end: number };
  subCues?: SubCue[];
  subEnabled?: boolean;
  autoPlayNext?: boolean;
  totalEps?: number;
  episodeTitle?: string;
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

/**
 * Binary search for active subtitle cue — O(log n).
 * Vidstack technique applied to React Native: cues pre-sorted once,
 * bisect replaces linear find() for 60fps subtitle loop.
 */
function bisectCue(cues: SubCue[], ct: number): SubCue | null {
  let lo = 0, hi = cues.length - 1;
  while (lo <= hi) {
    const mid = (lo + hi) >>> 1;
    if (cues[mid].start <= ct) lo = mid + 1;
    else hi = mid - 1;
  }
  if (hi >= 0 && cues[hi].end >= ct) return cues[hi];
  return null;
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
  // ── X-TIMESTAMP-MAP: HLS-native VTT (e.g. Videasy cc.boopigcdn.com) ──
  // Header: X-TIMESTAMP-MAP=MPEGTS:900000,LOCAL:00:00:00.000
  // → offset = 900000/90000 = 10 s → subtract from every cue to fix late-subtitle bug.
  let tsOffset = 0;
  const tsMapM = text.match(/X-TIMESTAMP-MAP=MPEGTS:(\d+),LOCAL:([\d:.]+)/i);
  if (tsMapM) {
    const mpegts = parseInt(tsMapM[1], 10) / 90000;
    const local  = parseVTTTime(tsMapM[2].trim());
    tsOffset = Math.max(0, mpegts - local);
  }
  const blocks = text.split(/\n\n+/);
  for (const block of blocks) {
    const lines = block.trim().split("\n");
    let ti = 0;
    if (ti < lines.length && !lines[ti].includes("-->")) ti++;
    if (ti >= lines.length) continue;
    const m = lines[ti].match(/(\d[\d:.]*)\s*-->\s*(\d[\d:.]*)/);
    if (!m) continue;
    const start = Math.max(0, parseVTTTime(m[1]) - tsOffset);
    const end   = Math.max(0, parseVTTTime(m[2]) - tsOffset);
    const textLines = lines.slice(ti + 1)
      .map(l => l.replace(/<[^>]*>/g, "")
        .replace(/&amp;/g, "&").replace(/&lt;/g, "<")
        .replace(/&gt;/g, ">").replace(/&nbsp;/g, " ").trim())
      .filter(Boolean);
    if (textLines.length > 0) cues.push({ start, end, text: textLines.join("\n") });
  }
  return cues;
}

/* ─── PulseRing (نبض أرجواني حول زر التشغيل عند الإيقاف المؤقت) ─── */
function PulseRing() {
  const scale1 = useRef(new Animated.Value(1)).current;
  const opacity1 = useRef(new Animated.Value(0.65)).current;
  const scale2 = useRef(new Animated.Value(1)).current;
  const opacity2 = useRef(new Animated.Value(0.35)).current;
  useEffect(() => {
    const pulse = (sc: Animated.Value, op: Animated.Value, delay: number) =>
      Animated.loop(Animated.sequence([
        Animated.delay(delay),
        Animated.parallel([
          Animated.timing(sc, { toValue: 1.85, duration: 1200, easing: Easing.out(Easing.quad), useNativeDriver: true }),
          Animated.timing(op, { toValue: 0, duration: 1200, easing: Easing.out(Easing.quad), useNativeDriver: true }),
        ]),
        Animated.parallel([
          Animated.timing(sc, { toValue: 1, duration: 0, useNativeDriver: true }),
          Animated.timing(op, { toValue: delay === 0 ? 0.65 : 0.35, duration: 0, useNativeDriver: true }),
        ]),
      ]));
    pulse(scale1, opacity1, 0).start();
    pulse(scale2, opacity2, 550).start();
  }, []);
  return (
    <>
      <Animated.View pointerEvents="none" style={{
        position: "absolute", width: 90, height: 90, borderRadius: 45,
        borderWidth: 2, borderColor: "#8B5CF6",
        transform: [{ scale: scale1 }], opacity: opacity1,
      }} />
      <Animated.View pointerEvents="none" style={{
        position: "absolute", width: 90, height: 90, borderRadius: 45,
        borderWidth: 1.5, borderColor: "#a78bfa",
        transform: [{ scale: scale2 }], opacity: opacity2,
      }} />
    </>
  );
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
  anilistId,
  onBack,
  onNextEpisode,
  onPrevEpisode,
  onEpisodeSelect,
  onProgress,
  initialPosition,
  skipIntro: skipIntroProp,
  skipOutro: skipOutroProp,
  subCues,
  subEnabled = false,
  autoPlayNext = true,
  totalEps = 999,
  episodeTitle,
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
  const [isAutoCycling, setIsAutoCycling] = useState(false);
  const [isEnded, setIsEnded]         = useState(false);

  /* ─── UI state ─── */
  const [showControls, setShowControls] = useState(true);
  const [showSpeedSheet, setShowSpeedSheet] = useState(false);
  const [showViewSheet, setShowViewSheet] = useState(false);
  const [showSubSheet, setShowSubSheet]   = useState(false);
  const [isLocked, setIsLocked]         = useState(false);
  const [showUnlock, setShowUnlock]     = useState(false);
  const [contentFit, setContentFit]     = useState<"contain" | "cover" | "fill">("contain");
  const [screenshotFlash, setScreenshotFlash] = useState(false);
  const [isFlipped, setIsFlipped]       = useState(false);

  /* ─── Subtitle state ─── */
  const [subOn, setSubOn]               = useState(subEnabled);
  const [loadedCues, setLoadedCues]     = useState<SubCue[]>([]);
  const [subLoading, setSubLoading]     = useState(false);
  const [autoSubSource, setAutoSubSource] = useState<string | null>(null);
  const [subSettings, setSubSettings]   = useState<SubSettings>(DEFAULT_SUB_SETTINGS);
  const [subOpenSection, setSubOpenSection] = useState<string | null>(null);
  const [showOffsetControls, setShowOffsetControls] = useState(false);
  /* subOffset: seconds to shift subtitle timing; positive = show earlier (fix late subs) */
  const [subOffset, setSubOffset]       = useState(0);
  const subOffsetRef                    = useRef(0);

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
  const skipNotifFired                = useRef(false);

  /* ─── Anime Rift features ─── */
  const [seekDuration, setSeekDuration] = useState(10);
  const seekDurationRef               = useRef(10);
  const [showReportSheet, setShowReportSheet] = useState(false);
  const [showSeekSheet, setShowSeekSheet]     = useState(false);
  const [reportSent, setReportSent]           = useState(false);

  /* ─── Web player features ported to mobile ─── */
  const [bufferedPct, setBufferedPct]       = useState(0);        // buffer bar
  const [sleepTimer, setSleepTimer]         = useState(0);
  const [sleepRemaining, setSleepRemaining] = useState(0);
  const [showSleepSheet, setShowSleepSheet] = useState(false);

  /* ─── New UI state ─── */
  const [isMuted, setIsMuted]             = useState(false);
  const [isPortrait, setIsPortrait]       = useState(false);
  const [showSpeedMenu, setShowSpeedMenu] = useState(false);
  const [showFitMenu, setShowFitMenu]     = useState(false);
  const [showSubPanel, setShowSubPanel]   = useState(false);
  const [subLang, setSubLang]             = useState<"ar" | "en">("ar");
  const rawSubUrlRef      = useRef<string | null>(null); // original English VTT URL before translation
  const autoRawSubUrlRef  = useRef<string | null>(null); // English URL discovered by auto-fetch
  const [autoPlayEnabled, setAutoPlayEnabled] = useState(true);
  const prevVolRef                        = useRef(1);
  const subPanelX                         = useRef(new Animated.Value(400)).current;
  /* ─── Whisper audio transcription ─── */
  const [whisperStatus, setWhisperStatus] = useState<"idle"|"loading"|"ready"|"error">("idle");
  const [whisperLang,   setWhisperLang]   = useState<string>("");
  /* ─── Position to restore when switching sources (keeps resumedRef approach) ─── */
  const switchPosRef = useRef(0);

  /* ─── AniSkip: fetch skip times if not provided by source ─── */
  const [fetchedSkipIntro, setFetchedSkipIntro] = useState<{ start: number; end: number } | undefined>(undefined);
  const [fetchedSkipOutro, setFetchedSkipOutro] = useState<{ start: number; end: number } | undefined>(undefined);
  const skipIntro = skipIntroProp ?? fetchedSkipIntro;
  const skipOutro = skipOutroProp ?? fetchedSkipOutro;

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
  const urlCueCacheRef    = useRef<Map<string, SubCue[]>>(new Map());
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
    /* Buffer tuning — reduces initial delay + stutter
       iOS: start immediately without waiting for large buffer
       Android ExoPlayer: 3s min buffer before playback starts */
    try {
      (p as any).bufferOptions = {
        preferredForwardBufferDuration: 12, // iOS: مسبق 12ث لتجنب الانقطاع
        waitsToMinimizeStalling: false,     // iOS: ابدأ فوراً بدون انتظار
        minBufferMs: 1000,                  // Android: ابدأ بعد 1ث فقط (أسرع)
        maxBufferMs: 30000,                 // Android: احتفظ بـ30ث في الذاكرة
        bufferForPlaybackMs: 400,           // Android: ابدأ بعد 0.4ث (أسرع بدء)
        bufferForPlaybackAfterRebufferMs: 1200, // Android: استأنف بعد 1.2ث
      };
    } catch {}
  });

  /* ─── Load SubSettings + subOffset + autoPlay pref from storage ─── */
  useEffect(() => {
    AsyncStorage.getItem("sub-settings-v1").then(raw => {
      if (raw) { try { setSubSettings(JSON.parse(raw)); } catch {} }
    }).catch(() => {});
    AsyncStorage.getItem("pref-autoplay").then(v => {
      if (v === "false") setAutoPlayEnabled(false);
    }).catch(() => {});
    /* sub-offset intentionally NOT restored from storage — resets to 0 on each session
       so X-TIMESTAMP-MAP auto-sync is always fresh without manual intervention */
  }, []);

  const toggleAutoPlay = useCallback(() => {
    setAutoPlayEnabled(v => {
      const next = !v;
      AsyncStorage.setItem("pref-autoplay", String(next)).catch(() => {});
      return next;
    });
  }, []);

  /* Keep ref in sync with state so the rAF closure always sees latest offset */
  useEffect(() => { subOffsetRef.current = subOffset; }, [subOffset]);

  const updateSubSettings = useCallback((patch: Partial<SubSettings>) => {
    setSubSettings(prev => {
      const next = { ...prev, ...patch };
      AsyncStorage.setItem("sub-settings-v1", JSON.stringify(next)).catch(() => {});
      return next;
    });
  }, []);

  const updateSubOffset = useCallback((delta: number) => {
    setSubOffset(prev => {
      const next = Math.max(-10, Math.min(10, parseFloat((prev + delta).toFixed(1))));
      subOffsetRef.current = next;
      AsyncStorage.setItem("sub-offset-v1", String(next)).catch(() => {});
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
      else if (e.status === "readyToPlay") { setBuffering(false); setError(false); try { player.play(); } catch {} }
      else if (e.status === "error")     { setError(true); setBuffering(false); }
    });
    return () => { sub1.remove(); sub2.remove(); };
  }, [player]);

  /* ─── Auto-advance on error ─── */
  const consecutiveErrorsRef = useRef(0);
  useEffect(() => {
    if (!error) { consecutiveErrorsRef.current = 0; setIsAutoCycling(false); return; }
    if (sources.length <= 1) { setIsAutoCycling(false); return; }
    consecutiveErrorsRef.current += 1;
    if (consecutiveErrorsRef.current > sources.length) { setIsAutoCycling(false); return; } // all tried, stop cycling
    setIsAutoCycling(true); // suppress full error UI — show silent loading instead
    const t = setTimeout(() => switchSource((srcIdx + 1) % sources.length), 1200);
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
        /* ── Restore position: either after server-switch or initial load ── */
        const restorePos = switchPosRef.current > 5 ? switchPosRef.current
                         : (initialPosition && initialPosition > 5) ? initialPosition : 0;
        if (!resumedRef.current && restorePos > 5 && dur > 30) {
          resumedRef.current = true;
          switchPosRef.current = 0;
          try { player.currentTime = restorePos; } catch {}
        }
        if (dur > 0 && pos >= dur - 0.5) {
          setIsEnded(true);
          setIsPlaying(false);
        }
        /* ── Buffer bar tracking ── */
        try {
          const buf = (player as any).bufferedPosition || 0;
          setBufferedPct(dur > 0 ? Math.min(buf / dur, 1) : 0);
        } catch {}
      } catch {}
    }, 500);
    return () => { if (progressTimer.current) clearInterval(progressTimer.current); };
  }, [player, onProgress, initialPosition]); // eslint-disable-line

  /* ─── Subtitle cue lookup via rAF ─── */
  /* Vidstack technique: pre-sort once → binary search O(log n) at 60fps */
  const effectiveCues = (subCues?.length ? subCues : loadedCues);
  useEffect(() => {
    if (subRafRef.current) { cancelAnimationFrame(subRafRef.current); subRafRef.current = null; }
    if (!effectiveCues.length || !subOn) { setActiveCue(null); return; }
    const sorted = [...effectiveCues].sort((a, b) => a.start - b.start);
    let lastKey = "";
    const tick = () => {
      try {
        const ct = player.currentTime || 0;
        /* Apply user offset: positive offset → look earlier in subtitle timeline (fixes late subs) */
        const cue = bisectCue(sorted, ct - subOffsetRef.current);
        const key = cue ? `${cue.start}` : "";
        if (key !== lastKey) { lastKey = key; setActiveCue(cue); }
      } catch {}
      subRafRef.current = requestAnimationFrame(tick);
    };
    subRafRef.current = requestAnimationFrame(tick);
    return () => { if (subRafRef.current) { cancelAnimationFrame(subRafRef.current); subRafRef.current = null; } };
  }, [effectiveCues, subOn, player]);

  /* ─── VTT loading when source changes ─── */
  /* Cache priority:
     0. urlCueCacheRef (in-memory per URL) — instant, no stutter when switching servers
     1. AsyncStorage (translated subs only, keyed by episode)
     2. Network fetch
  */
  useEffect(() => {
    const rawUrl = currentSrc?.subtitleUrl;
    if (!rawUrl) { setLoadedCues([]); return; }

    /* ── حساب الـ URL الإنجليزي الخام (قبل أي ترجمة) ── */
    const base = getBaseUrl();
    const alreadyTranslated = rawUrl.includes("translate-vtt") || rawUrl.includes("proxy-text");

    // استخراج الـ URL الداخلي إذا كان translate-vtt
    const innerUrl = alreadyTranslated ? (() => {
      try {
        const params = new URLSearchParams(rawUrl.split("?")[1] || "");
        const inner = params.get("url");
        return inner ? decodeURIComponent(inner) : rawUrl;
      } catch { return rawUrl; }
    })() : rawUrl;

    rawSubUrlRef.current = innerUrl; // حفظ الـ URL الإنجليزي الخام

    /* ── اختيار الـ URL بناءً على اللغة المختارة ── */
    let url: string;
    if (subLang === "en") {
      url = innerUrl; // إنجليزي خام مباشر
    } else if (currentSrc?.isArabic || alreadyTranslated) {
      url = rawUrl; // عربي مباشر أو translate-vtt جاهز
    } else {
      url = base
        ? `${base}/api/anime/translate-vtt?url=${encodeURIComponent(rawUrl)}&from=en&to=ar`
        : rawUrl;
    }

    /* ── 0. In-memory URL cache — instant when same URL (server switch) ── */
    const urlHit = urlCueCacheRef.current.get(url);
    if (urlHit?.length) {
      setLoadedCues(urlHit);
      setSubOn(true);
      return;
    }

    setSubOffset(0);
    subOffsetRef.current = 0;
    let cancelled = false;

    /* مفتاح الكاش خاص بكل لغة لتجنب إرجاع cues الإنجليزية حين يطلب المستخدم العربية */
    const cacheKey = (anilistId && episode && subLang === "ar") ? `sub-ar-${anilistId}-${episode}` : null;
    const isTranslated = url.includes("translate-vtt") || url.includes("proxy-text");

    (async () => {
      /* ── 1. Check AsyncStorage cache first (translated subs only) ── */
      if (cacheKey && isTranslated) {
        try {
          const cached = await AsyncStorage.getItem(cacheKey);
          if (cached && !cancelled) {
            const cues: SubCue[] = JSON.parse(cached);
            if (cues.length > 0) {
              urlCueCacheRef.current.set(url, cues); // populate URL cache
              setLoadedCues(cues);
              setSubOn(true);
              return;
            }
          }
        } catch {}
      }

      if (cancelled) return;
      setSubLoading(true);
      setLoadedCues([]);
      try {
        const r = await fetch(url, { headers: { "Accept": "application/json,text/vtt,text/plain,*/*" }, signal: AbortSignal.timeout(30_000) });
        if (!r.ok) throw new Error(`HTTP ${r.status}`);
        if (cancelled) return;

        /* ── translate-vtt returns JSON {cues:[{timing,text}]}, NOT VTT text ── */
        let cues: SubCue[];
        if (url.includes("translate-vtt")) {
          const data = await r.json() as { cues?: Array<{timing: string; text: string}> };
          cues = (data.cues || [])
            .map(c => {
              const [s, e] = (c.timing || "").split("-->").map(x => x.trim());
              return { start: parseVTTTime(s || ""), end: parseVTTTime(e || ""), text: (c.text || "").trim() };
            })
            .filter(c => c.start < c.end && c.text.length > 0);
        } else {
          const text = await r.text();
          if (cancelled) return;
          cues = parseVTT(text);
        }

        if (cues.length > 0) urlCueCacheRef.current.set(url, cues);
        setLoadedCues(cues);
        if (cues.length > 0) {
          if (!cancelled) setSubLoading(false);
          setSubOn(true);
          /* ── 2. Save to AsyncStorage if this was a translation ── */
          if (cacheKey && isTranslated) {
            AsyncStorage.setItem(cacheKey, JSON.stringify(cues)).catch(() => {});
          }
        }
      } catch {
        if (!cancelled) setLoadedCues([]);
      } finally {
        if (!cancelled) setSubLoading(false);
      }
    })();

    return () => { cancelled = true; setSubLoading(false); };
  }, [currentSrc?.subtitleUrl, anilistId, episode, subLang]); // eslint-disable-line

  /* ─── Auto-enable subtitles when source provides a subtitle URL ─── */
  useEffect(() => {
    if (currentSrc?.subtitleUrl) setSubOn(true);
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
  const rootViewRef = useRef<View>(null);
  const takeScreenshot = useCallback(async () => {
    setScreenshotFlash(true);
    setTimeout(() => setScreenshotFlash(false), 600);
    try { Haptics.notificationAsync(Haptics.NotificationFeedbackType.Success); } catch {}
    if (Platform.OS === "web") return; // web browsers block video frame capture
    try {
      const VS = await import("react-native-view-shot" as any);
      const uri: string = await VS.captureRef(rootViewRef, { format: "jpg", quality: 0.9 });
      const ML = await import("expo-media-library" as any);
      const perm = await ML.requestPermissionsAsync();
      if (perm.status === "granted") await ML.saveToLibraryAsync(uri);
    } catch {}
  }, []);

  /* ─── Orientation change listener ─── */
  useEffect(() => {
    const detect = async () => {
      try {
        const o = await ScreenOrientation.getOrientationAsync();
        setIsPortrait(
          o === ScreenOrientation.Orientation.PORTRAIT_UP ||
          o === ScreenOrientation.Orientation.PORTRAIT_DOWN
        );
      } catch {}
    };
    detect();
    const sub = ScreenOrientation.addOrientationChangeListener((e) => {
      const o = e.orientationInfo.orientation;
      setIsPortrait(
        o === ScreenOrientation.Orientation.PORTRAIT_UP ||
        o === ScreenOrientation.Orientation.PORTRAIT_DOWN
      );
    });
    return () => sub.remove();
  }, []);

  /* ─── Mute sync ─── */
  useEffect(() => {
    try {
      if (isMuted) { prevVolRef.current = volumeRef.current; player.volume = 0; }
      else { player.volume = Math.min(1, prevVolRef.current || 1); }
    } catch {}
  }, [isMuted, player]);

  /* ─── AniSkip: جلب أوقات المقدمة/النهاية إذا لم تُوفَّر بالمصدر ─── */
  useEffect(() => {
    if (skipIntroProp || skipOutroProp || !anilistId || !episode) return;
    let cancelled = false;
    (async () => {
      try {
        // 1. Get MAL ID from AniList
        const alRes = await fetch("https://graphql.anilist.co", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ query: "query($id:Int){Media(id:$id){idMal}}", variables: { id: anilistId } }),
        });
        const alData = await alRes.json();
        const malId: number | null = alData?.data?.Media?.idMal;
        if (!malId || cancelled) return;
        // 2. Fetch skip times from AniSkip
        const skipRes = await fetch(`https://api.aniskip.com/v1/skip-times/${malId}/${episode}?types[]=op&types[]=ed`);
        const skipData = await skipRes.json();
        if (cancelled || !skipData?.found) return;
        for (const r of (skipData.results ?? [])) {
          const s = { start: r.interval.start_time, end: r.interval.end_time };
          if (r.skip_type === "op")  setFetchedSkipIntro(s);
          if (r.skip_type === "ed")  setFetchedSkipOutro(s);
        }
      } catch {}
    })();
    return () => { cancelled = true; };
  }, [anilistId, episode]);

  /* ─── Auto-fetch subtitles via subtitle-tracks API (wyzie.ru + SubDL + HiAnime) ─── */
  useEffect(() => {
    if (!anilistId || !episode) return;
    if (subCues?.length) return; // already provided as prop
    let cancelled = false;
    setAutoSubSource(null);
    (async () => {
      try {
        const base = getBaseUrl();
        if (!base) return;
        const params = new URLSearchParams({
          anilistId: String(anilistId),
          ep: String(episode),
        });
        const res = await fetch(
          `${base}/api/anime/subtitle-tracks?${params}`,
          { signal: AbortSignal.timeout(20_000) }
        );
        if (!res.ok || cancelled) return;
        const data = await res.json();
        const tracks: any[] = data.tracks || [];
        if (cancelled || tracks.length === 0) return;

        /* Store raw English URL for language switching */
        const enTrack = tracks.find((t: any) => t.lang === "en");
        const arTrack = tracks.find((t: any) => t.lang === "ar");
        if (enTrack?.url) {
          autoRawSubUrlRef.current = enTrack.url.startsWith("/")
            ? `${base}${enTrack.url}` : enTrack.url;
        }

        /* Pick track based on current language preference */
        const track = subLang === "en"
          ? (enTrack || arTrack || tracks[0])
          : (arTrack || enTrack || tracks[0]);
        if (!track?.url) return;

        const rawTrackUrl = track.url.startsWith("/") ? `${base}${track.url}` : track.url;

        /* إذا طلب المستخدم عربي لكن المسار إنجليزي → ترجمة تلقائية */
        const trackUrl = (subLang === "ar" && track.lang !== "ar")
          ? `${base}/api/anime/translate-vtt?url=${encodeURIComponent(rawTrackUrl)}&from=en&to=ar`
          : rawTrackUrl;

        setSubLoading(true);

        /* ── fetch + parse: translate-vtt → JSON, others → VTT text ── */
        const vttRes = await fetch(trackUrl, {
          headers: { Accept: "application/json,text/vtt,text/plain,*/*" },
          signal: AbortSignal.timeout(30_000),
        });
        if (!vttRes.ok || cancelled) return;

        let cues: SubCue[] = [];
        if (trackUrl.includes("translate-vtt")) {
          const d = await vttRes.json() as { cues?: Array<{timing: string; text: string}> };
          cues = (d.cues || [])
            .map((c: any) => {
              const [s, e] = (c.timing || "").split("-->").map((x: string) => x.trim());
              return { start: parseVTTTime(s), end: parseVTTTime(e), text: (c.text || "").trim() };
            })
            .filter((c: SubCue) => c.start < c.end && c.text.length > 0);
        } else {
          const text = await vttRes.text();
          if (cancelled) return;
          cues = parseVTT(text);
        }

        if (cues.length > 0 && !cancelled) {
          setLoadedCues(cues);
          setSubOn(true);
          setAutoSubSource(track.lang === "ar" ? "wyzie-ar" : "wyzie-en-translated");
        }
      } catch {}
      finally { if (!cancelled) setSubLoading(false); }
    })();
    return () => { cancelled = true; setSubLoading(false); };
  }, [anilistId, episode, subLang]); // eslint-disable-line

  /* ─── Subtitle panel slide animation ─── */
  useEffect(() => {
    Animated.timing(subPanelX, {
      toValue: showSubPanel ? 0 : 400,
      duration: 300,
      easing: Easing.out(Easing.cubic),
      useNativeDriver: true,
    }).start();
  }, [showSubPanel]);

  /* ─── Load seek duration preference (Anime Rift: manageTheInternalPlayerSeekDuration) ─── */
  useEffect(() => {
    AsyncStorage.getItem("nova-seek-duration").then(v => {
      if (v) { const n = Number(v); setSeekDuration(n); seekDurationRef.current = n; }
    });
  }, []);

  /* ─── Skip notification (mark fired when skip data arrives) ─── */
  useEffect(() => {
    if ((skipIntro || skipOutro) && !skipNotifFired.current) {
      skipNotifFired.current = true;
    }
  }, [skipIntro, skipOutro]);

  /* ─── Sleep timer countdown ─── */
  useEffect(() => {
    if (sleepTimer === 0) { setSleepRemaining(0); return; }
    setSleepRemaining(sleepTimer * 60);
    const tick = setInterval(() => {
      setSleepRemaining(r => {
        if (r <= 1) {
          clearInterval(tick);
          try { player.pause(); } catch {}
          setSleepTimer(0);
          return 0;
        }
        return r - 1;
      });
    }, 1000);
    return () => clearInterval(tick);
  }, [sleepTimer]); // eslint-disable-line

  /* ─── Auto-play countdown — DISABLED: user must press next manually ─── */
  useEffect(() => {
    setAutoCountdown(0);
  }, [isEnded]);

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

  /* ─── Back: unlock orientation then go back ─── */
  const handleBack = useCallback(() => {
    ScreenOrientation.unlockAsync().catch(() => {});
    onBack();
  }, [onBack]);

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
    /* ── Save current position before replacing source ── */
    const savedPos = player.currentTime || 0;
    if (savedPos > 5) switchPosRef.current = savedPos;
    setSrcIdx(idx);
    setError(false);
    setIsAutoCycling(false);
    setBuffering(true);
    setIsEnded(false);
    resumedRef.current = false;
    /* Reset whisper status when source changes */
    setWhisperStatus("idle");
    setWhisperLang("");
    try {
      player.replace(sources[idx].url);
      /* Some expo-video versions need an explicit play() after replace */
      setTimeout(() => { try { player.play(); } catch {} }, 80);
    } catch {}
  }, [player, sources]);

  /* ─── Whisper audio transcription ─── */
  const triggerWhisper = useCallback(async () => {
    if (whisperStatus === "loading") return;
    const url = currentSrc?.url;
    if (!url) return;
    setWhisperStatus("loading");
    setWhisperLang("");
    const base = getBaseUrl();
    try {
      const r = await fetch(`${base}/api/anime/whisper-transcribe`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ url, duration: 120 }),
      });
      if (!r.ok) throw new Error(`${r.status}`);
      const d = await r.json() as {
        language?: string; language_ar?: string;
        cues?: Array<{ start: number; end: number; text: string }>;
      };
      if (!d.cues?.length) throw new Error("no cues");
      setLoadedCues(d.cues as SubCue[]);
      setSubOn(true);
      setWhisperStatus("ready");
      setWhisperLang(d.language_ar || d.language || "");
      /* Cache transcription so server-switches don't re-fetch */
      if (anilistId && episode) {
        AsyncStorage.setItem(`sub-ar-${anilistId}-${episode}`, JSON.stringify(d.cues)).catch(() => {});
      }
    } catch {
      setWhisperStatus("error");
    }
  }, [whisperStatus, currentSrc?.url, anilistId, episode]);

  /* ─── Double tap ripple ─── */
  const triggerDblTap = useCallback((side: "L" | "R") => {
    const anim = side === "L" ? dblTapLeft : dblTapRight;
    setDblTap({ side, id: Date.now() });
    anim.setValue(0);
    Animated.timing(anim, { toValue: 1, duration: 600, useNativeDriver: true }).start(() => setDblTap(null));
    try { Haptics.impactAsync(Haptics.ImpactFeedbackStyle.Light); } catch {}
    seek(side === "R" ? positionRef.current + seekDurationRef.current : positionRef.current - seekDurationRef.current);
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
          const newVol = Math.max(0, Math.min(2, gestureStartVal.current + delta)); // 200% max
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

  /* ─── Volume sync to player (clamp 0-1 for hardware, allow 0-2 for UI boost) ─── */
  useEffect(() => {
    volumeRef.current = volume;
    try { player.volume = Math.min(1, volume); } catch {}
  }, [volume, player]);

  const markerPctIntro = duration > 0 && skipIntro && position < skipIntro.end
    ? { start: (skipIntro.start / duration) * 100, end: (skipIntro.end / duration) * 100 }
    : null;
  const markerPctOutro = duration > 0 && skipOutro && position < skipOutro.end
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
    <View ref={rootViewRef} style={s.root}>
      <StatusBar hidden />
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
          {/* Vidstack technique: split multi-line VTT cues → each line as separate Text */}
          {activeCue.text.split(/\r?\n/).map((line, i) => (
            <Text key={i} style={[
              s.subtitleText,
              i > 0 && { marginTop: 2 },
              {
                fontSize: subSettings.fontSize,
                color: subSettings.color,
                fontWeight: subSettings.bold ? "700" : "400",
                backgroundColor: subSettings.bgOpacity > 0
                  ? `rgba(0,0,0,${subSettings.bgOpacity})`
                  : "transparent",
                textShadowColor: subSettings.bgOpacity === 0 ? "rgba(0,0,0,0.95)" : "transparent",
                textShadowRadius: subSettings.bgOpacity === 0 ? 8 : 0,
                textShadowOffset: { width: 0, height: 1 },
              },
            ]}>
              {line || " "}
            </Text>
          ))}
        </View>
      )}

      {/* ── Subtitle loading indicator — hide once cues are available or subs embedded ── */}
      {subLoading && !effectiveCues.length && (
        <View style={s.subLoadingPill} pointerEvents="none">
          <Ionicons name="logo-closed-captioning" size={12} color="rgba(167,139,250,0.70)" />
          <Text style={s.subLoadingText}>جاري تحميل الترجمة…</Text>
        </View>
      )}


      {/* ── Auto-cycling: silent "trying next source" indicator ── */}
      {isAutoCycling && (
        <View style={s.errorWrap} pointerEvents="none">
          <SpinRing size={44} />
          <Text style={[s.errorTitle, { color: "rgba(167,139,250,0.9)", marginTop: 12 }]}>
            جاري تجربة مصدر آخر… ({consecutiveErrorsRef.current}/{sources.length})
          </Text>
        </View>
      )}

      {/* ── Error state (only shown when all sources exhausted or single source) ── */}
      {error && !isAutoCycling && (
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
          <Pressable onPress={onBack} style={s.errorBtnBack}>
            <Ionicons name="arrow-back" size={14} color="rgba(255,255,255,0.6)" />
            <Text style={s.errorBtnBackText}>العودة</Text>
          </Pressable>
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

      {/* ── Volume feedback (يدعم 0-200% Volume Boost مثل مشغل الويب) ── */}
      {feedback?.type === "volume" && (
        <View style={s.feedbackRight} pointerEvents="none">
          <View style={[s.feedbackBarWrap, feedback.value > 1 && { borderColor: "rgba(139,92,246,0.35)", borderWidth: 1 }]}>
            <View style={[
              s.feedbackBarFill,
              { height: `${Math.min(Math.round(feedback.value * 50), 100)}%` as any },
              feedback.value > 1 && { backgroundColor: "rgba(167,139,250,0.90)" },
            ]} />
          </View>
          <View style={[s.feedbackPill, feedback.value > 1 && { borderColor: "rgba(139,92,246,0.50)", backgroundColor: "rgba(15,10,30,0.85)" }]}>
            <Ionicons
              name={feedback.value === 0 ? "volume-mute" : feedback.value > 1 ? "volume-high" : "volume-medium"}
              size={12}
              color={feedback.value > 1 ? "#c4b5fd" : "rgba(255,255,255,0.75)"}
            />
            <Text style={[s.feedbackPillText, feedback.value > 1 && { color: "#c4b5fd" }]}>
              {Math.round(feedback.value * 100)}%{feedback.value > 1 ? " 🔊" : ""}
            </Text>
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

          {/* شريط عداد التشغيل التلقائي */}
          {autoCountdown > 0 && onNextEpisode && autoPlayEnabled && (
            <View style={s.autoPlayBar}>
              <View style={[s.autoPlayBarFill, { width: `${(autoCountdown / 5) * 100}%` as any }]} />
              <Text style={s.autoPlayBarText}>التشغيل التلقائي خلال {autoCountdown}s</Text>
            </View>
          )}

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

          {/* إلغاء التشغيل التلقائي */}
          {autoCountdown > 0 && (
            <Pressable onPress={() => setAutoCountdown(0)} style={s.autoPlayCancelBtn}>
              <Text style={s.autoPlayCancelText}>إلغاء</Text>
            </Pressable>
          )}
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
          style={[StyleSheet.absoluteFill, { opacity: controlsOpacity, zIndex: 10, flexDirection: "column" }]}
          pointerEvents="box-none"
        >
          {/* ════ TOP BAR ════ */}
          <LinearGradient
            colors={["rgba(0,0,0,0.82)", "transparent"]}
            style={[s.topBar, { paddingTop: Platform.OS === "web" ? 12 : insets.top + 6 }]}
          >
            {/* معلومات الأنمي — يسار */}
            <View style={s.topInfoWrap}>
              {title ? (
                <Text style={s.topInfoTitle} numberOfLines={1}>{title}</Text>
              ) : null}
              <View style={s.topInfoRow}>
                {episode != null && (
                  <View style={s.topEpBadge}>
                    <Text style={s.topEpText}>الحلقة {episode}</Text>
                  </View>
                )}
                {currentSrc?.quality ? (
                  <View style={s.topQualityBadge}>
                    <Text style={s.topQualityText}>{currentSrc.quality}</Text>
                  </View>
                ) : null}
              </View>
              {episodeTitle ? (
                <Text style={s.topEpTitle} numberOfLines={1}>{episodeTitle}</Text>
              ) : null}
              {autoSubSource ? (
                <View style={s.autoSubBadge}>
                  <Text style={s.autoSubBadgeText}>✦ ترجمة {autoSubSource === "jimaku" ? "Jimaku" : autoSubSource === "animetosho" ? "Animetosho" : "تلقائية"}</Text>
                </View>
              ) : null}
            </View>

            {/* أزرار اليمين: لقطة + ترجمة + تدوير + إغلاق */}
            <View style={s.topRightRow}>
              <Pressable onPress={takeScreenshot} style={s.topIconBtn} hitSlop={10}>
                <Ionicons name="camera-outline" size={18} color="rgba(255,255,255,0.85)" />
              </Pressable>
              {!currentSrc?.isArabic && (
                <Pressable
                  onPress={() => { setSubOn(v => !v); setShowSpeedMenu(false); setShowFitMenu(false); fadeIn(); }}
                  style={[s.topIconBtn, s.topCCBtn, subOn && s.topIconBtnActive, (subOn && loadedCues.length > 0) && s.topCCBtnActive]}
                  hitSlop={10}
                >
                  <Text style={[s.topCCText, (subOn && loadedCues.length > 0) && s.topCCTextActive]}>CC</Text>
                </Pressable>
              )}
              {/* زر تدوير الشاشة ↻ */}
              <Pressable onPress={flipScreen} style={[s.topRotateBtn, isFlipped && s.topRotateBtnActive]} hitSlop={10}>
                <Ionicons name="repeat-outline" size={16} color={isFlipped ? "#c4b5fd" : "rgba(255,255,255,0.85)"} />
                <Text style={[s.topRotateLabel, isFlipped && s.topRotateLabelActive]}>
                  {isFlipped ? "↺" : "↻"}
                </Text>
              </Pressable>
              {/* زر الإغلاق فقط (بدون سهم رجوع) */}
              <Pressable onPress={handleBack} style={s.topCloseBtn} hitSlop={10}>
                <Ionicons name="close" size={20} color="rgba(239,68,68,0.90)" />
              </Pressable>
            </View>
          </LinearGradient>

          {/* ════ CENTER ════ */}
          <View style={s.centerOverlay} pointerEvents="box-none">
            {isPortrait ? (
              /* وضع عمودي: أزرار التخطي + التشغيل */
              <View style={s.centerPortraitRow}>
                <Pressable onPress={() => seek(positionRef.current - 10)} style={s.centerSeekBtn} hitSlop={14}>
                  <Ionicons name="play-back" size={24} color="#fff" />
                  <Text style={s.centerSeekLabel}>10</Text>
                </Pressable>
                {/* PulseRing نبض فقط حول زر المنتصف عند الإيقاف */}
                <View style={{ alignItems: "center", justifyContent: "center" }}>
                  {!isPlaying && !buffering && <PulseRing />}
                  <Pressable onPress={togglePlay} style={s.centerPlayBtn} hitSlop={16}>
                    {buffering && !error
                      ? <ActivityIndicator size={32} color="#fff" />
                      : <Ionicons name={isPlaying ? "pause" : "play"} size={36} color="#fff" style={isPlaying ? undefined : { marginLeft: 4 }} />}
                  </Pressable>
                </View>
                <Pressable onPress={() => seek(positionRef.current + 10)} style={s.centerSeekBtn} hitSlop={14}>
                  <Ionicons name="play-forward" size={24} color="#fff" />
                  <Text style={s.centerSeekLabel}>10</Text>
                </Pressable>
              </View>
            ) : (
              /* وضع أفقي: التشغيل فقط في المنتصف */
              <View style={s.centerLandscapeWrap}>
                {/* PulseRing نبض فقط حول زر المنتصف عند الإيقاف */}
                <View style={{ alignItems: "center", justifyContent: "center" }}>
                  {!isPlaying && !buffering && <PulseRing />}
                  <Pressable onPress={togglePlay} style={s.centerPlayBtn} hitSlop={16}>
                    {buffering && !error
                      ? <ActivityIndicator size={32} color="#fff" />
                      : <Ionicons name={isPlaying ? "pause" : "play"} size={36} color="#fff" style={isPlaying ? undefined : { marginLeft: 4 }} />}
                  </Pressable>
                </View>
              </View>
            )}
          </View>

          {/* ════ BOTTOM SECTION ════ */}
          <LinearGradient
            colors={["transparent", "rgba(0,0,0,0.60)", "rgba(0,0,0,0.96)"]}
            style={[s.bottomSection, { paddingBottom: Platform.OS === "web" ? 16 : insets.bottom + 12 }]}
          >
            {/* ── أزرار تخطي المقدمة / النهاية ── */}
            {(inIntroRange || inOutroRange) && (
              <View style={s.skipBtnRow}>
                {inIntroRange && (
                  <Pressable onPress={doSkipIntro} style={s.skipPillIntro} hitSlop={8}>
                    <Ionicons name="play-forward" size={13} color="#92400e" />
                    <Text style={s.skipPillIntroText}>تخطي المقدمة</Text>
                  </Pressable>
                )}
                {inOutroRange && (
                  <Pressable onPress={doSkipOutro} style={s.skipPillOutro} hitSlop={8}>
                    <Ionicons name="play-forward" size={13} color="#4c1d95" />
                    <Text style={s.skipPillOutroText}>تخطي النهاية</Text>
                  </Pressable>
                )}
              </View>
            )}

            {/* الوقت */}
            <View style={s.timeRow}>
              <Text style={s.timeText}>{fmtTime(position)}</Text>
              <Text style={[s.timeText, { opacity: 0.45 }]}>{fmtTime(duration)}</Text>
            </View>

            {/* شريط التقدم */}
            <View
              ref={barRef}
              style={[s.progressWrap, isDragging && s.progressWrapDragging]}
              onLayout={(e) => { barWidth.current = e.nativeEvent.layout.width || 1; }}
              {...seekBarPan.panHandlers}
            >
              <View style={s.progressBg} />
              {bufferedPct > 0 && <View style={[s.bufferBar, { width: `${bufferedPct * 100}%` as any }]} />}
              {markerPctIntro && <View style={[s.skipMarker, { left: `${markerPctIntro.start}%` as any, width: `${Math.max(1.2, markerPctIntro.end - markerPctIntro.start)}%` as any }]} />}
              {markerPctOutro && <View style={[s.skipMarker, { left: `${markerPctOutro.start}%` as any, width: `${Math.max(1.2, markerPctOutro.end - markerPctOutro.start)}%` as any }]} />}
              <LinearGradient
                colors={["#6D28D9", "#8B5CF6", "#a78bfa"]}
                start={{ x: 0, y: 0 }} end={{ x: 1, y: 0 }}
                style={[s.progressFill, { width: `${Math.min((isDragging ? dragPct : progress) * 100, 100)}%` as any }]}
              />
              <View style={[s.thumb, { left: `${Math.min((isDragging ? dragPct : progress) * 100, 100)}%` as any }, isDragging && s.thumbDragging]} />
              {isDragging && (
                <View style={[s.dragTooltip, { left: `${Math.max(4, Math.min(88, (isDragging ? dragPct : progress) * 100 - 6))}%` as any }]}>
                  <Text style={s.dragTooltipText}>{fmtTime(dragPct * (durationRef.current || duration))}</Text>
                </View>
              )}
            </View>

            {/* ── صف أزرار التحكم السفلي ── */}
            <View style={s.bottomCtrlRow}>

              {/* يسار: قفل + ملء شاشة */}
              <View style={s.bottomSide}>
                <Pressable onPress={() => setIsLocked(true)} style={s.ctrlIconBtn} hitSlop={10}>
                  <Ionicons name="lock-closed-outline" size={16} color="rgba(255,255,255,0.80)" />
                </Pressable>
                <View>
                  {showFitMenu && (
                    <View style={s.fitDropdown}>
                      {([
                        { fit: "contain", label: "مع الحواف",   icon: "expand-outline"  },
                        { fit: "cover",   label: "ملء الشاشة", icon: "scan-outline"    },
                        { fit: "fill",    label: "تمديد كامل", icon: "resize-outline"  },
                      ] as const).map(({ fit, label, icon }) => (
                        <Pressable
                          key={fit}
                          onPress={() => { setContentFit(fit); setShowFitMenu(false); fadeIn(); }}
                          style={[s.dropItem, contentFit === fit && s.dropItemActive]}
                        >
                          <Ionicons name={icon} size={12} color={contentFit === fit ? "#c4b5fd" : "rgba(255,255,255,0.60)"} />
                          <Text style={[s.dropItemText, contentFit === fit && s.dropItemTextActive]}>{label}</Text>
                          {contentFit === fit && <Ionicons name="checkmark" size={11} color="#c4b5fd" />}
                        </Pressable>
                      ))}
                    </View>
                  )}
                  <Pressable onPress={() => { setShowFitMenu(v => !v); setShowSpeedMenu(false); fadeIn(); }} style={[s.ctrlIconBtn, showFitMenu && s.ctrlIconBtnActive]} hitSlop={10}>
                    <Ionicons name="scan-outline" size={16} color={showFitMenu ? "#c4b5fd" : "rgba(255,255,255,0.80)"} />
                  </Pressable>
                </View>
              </View>

              {/* وسط: تخطي + تشغيل (وضع أفقي فقط) */}
              <View style={s.bottomCenter}>
                {!isPortrait && (
                  <Pressable onPress={() => seek(positionRef.current - 10)} style={s.seekCtrlBtn} hitSlop={10}>
                    <Ionicons name="play-back" size={17} color="rgba(255,255,255,0.90)" />
                    <Text style={s.seekCtrlLabel}>10</Text>
                  </Pressable>
                )}
                <Pressable onPress={togglePlay} style={s.bottomPlayBtn} hitSlop={10}>
                  <Ionicons name={isPlaying ? "pause" : "play"} size={23} color="#fff" style={isPlaying ? undefined : { marginLeft: 3 }} />
                </Pressable>
                {!isPortrait && (
                  <Pressable onPress={() => seek(positionRef.current + 10)} style={s.seekCtrlBtn} hitSlop={10}>
                    <Ionicons name="play-forward" size={17} color="rgba(255,255,255,0.90)" />
                    <Text style={s.seekCtrlLabel}>10</Text>
                  </Pressable>
                )}
              </View>

              {/* يمين: كتم + تشغيل تلقائي + سرعة */}
              <View style={[s.bottomSide, { justifyContent: "flex-end" }]}>
                <Pressable onPress={() => { setIsMuted(v => !v); fadeIn(); }} style={[s.ctrlIconBtn, isMuted && s.ctrlIconBtnMuted]} hitSlop={10}>
                  <Ionicons name={isMuted ? "volume-mute-outline" : "volume-high-outline"} size={16} color={isMuted ? "#fca5a5" : "rgba(255,255,255,0.80)"} />
                </Pressable>
                <View>
                  {showSpeedMenu && (
                    <View style={s.speedDropdown}>
                      {SPEEDS.map(sp => (
                        <Pressable
                          key={sp}
                          onPress={() => { changeSpeed(sp); setShowSpeedMenu(false); }}
                          style={[s.dropItem, speed === sp && s.dropItemActive]}
                        >
                          <Text style={[s.dropSpeedNum, speed === sp && s.dropItemTextActive]}>{sp}x</Text>
                          {speed === sp && <Ionicons name="checkmark" size={11} color="#c4b5fd" style={{ marginLeft: "auto" as any }} />}
                        </Pressable>
                      ))}
                    </View>
                  )}
                  <Pressable onPress={() => { setShowSpeedMenu(v => !v); setShowFitMenu(false); fadeIn(); }} style={[s.ctrlIconBtn, s.ctrlSpeedBtn, showSpeedMenu && s.ctrlIconBtnActive]} hitSlop={10}>
                    <Text style={[s.speedLabel, speed !== 1 && s.speedLabelActive]}>{speed}x</Text>
                  </Pressable>
                </View>
              </View>

            </View>
          </LinearGradient>
        </Animated.View>
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

  /* Spinner — top area of screen */
  errorWrap:   { ...StyleSheet.absoluteFillObject, alignItems: "center", justifyContent: "center", gap: 14, zIndex: 20, backgroundColor: "rgba(0,0,0,0.92)" },
  errorIconBox: { width: 68, height: 68, borderRadius: 18, backgroundColor: "rgba(239,68,68,0.10)", borderWidth: 1, borderColor: "rgba(239,68,68,0.25)", alignItems: "center", justifyContent: "center" },
  errorTitle:  { color: "rgba(255,255,255,0.85)", fontSize: 15, fontFamily: "Cairo_700Bold" },
  errorBtn:    { flexDirection: "row", alignItems: "center", gap: 8, backgroundColor: "rgba(239,68,68,0.15)", borderRadius: 20, paddingHorizontal: 22, paddingVertical: 11, borderWidth: 1, borderColor: "rgba(239,68,68,0.35)" },
  errorBtnText: { color: "#ef4444", fontFamily: "Cairo_600SemiBold", fontSize: 14 },
  errorBtnBack: { flexDirection: "row", alignItems: "center", gap: 8, backgroundColor: "rgba(255,255,255,0.08)", borderRadius: 20, paddingHorizontal: 22, paddingVertical: 11, borderWidth: 1, borderColor: "rgba(255,255,255,0.14)" },
  errorBtnBackText: { color: "rgba(255,255,255,0.6)", fontFamily: "Cairo_600SemiBold", fontSize: 13 },

  /* Subtitle */
  subtitleWrap: { position: "absolute", left: 16, right: 16, alignItems: "stretch", zIndex: 8 },
  subtitleText: { paddingHorizontal: 14, paddingVertical: 6, borderRadius: 10, textAlign: "center", lineHeight: 26, alignSelf: "center", maxWidth: "100%" },

  /* Ripples */
  rippleLeft:   { position: "absolute", left: 0, top: "10%", width: "45%", height: "80%", alignItems: "center", justifyContent: "center", zIndex: 25 },
  rippleRight:  { position: "absolute", right: 0, top: "10%", width: "45%", height: "80%", alignItems: "center", justifyContent: "center", zIndex: 25 },
  rippleCircleL: { position: "absolute", width: 140, height: 140, borderRadius: 70, backgroundColor: "rgba(251,146,60,0.28)" },
  rippleCircleR: { position: "absolute", width: 140, height: 140, borderRadius: 70, backgroundColor: "rgba(139,92,246,0.28)" },
  rippleLabel:  { alignItems: "center", gap: 4, zIndex: 2 },
  rippleSecs:   { fontSize: 14, fontWeight: "900", fontFamily: "Cairo_700Bold" },

  /* Gesture feedback — centered vertically */
  feedbackRight: { position: "absolute", right: 18, top: "45%", alignItems: "center", gap: 10, zIndex: 30, transform: [{ translateY: -60 }] },
  feedbackLeft:  { position: "absolute", left: 18,  top: "45%", alignItems: "center", gap: 10, zIndex: 30, transform: [{ translateY: -60 }] },
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
  autoPlayBar: { width: 220, height: 28, borderRadius: 14, backgroundColor: "rgba(255,255,255,0.10)", overflow: "hidden", justifyContent: "center", borderWidth: 1, borderColor: "rgba(167,139,250,0.30)" },
  autoPlayBarFill: { position: "absolute", left: 0, top: 0, bottom: 0, backgroundColor: "rgba(139,92,246,0.60)", borderRadius: 14 },
  autoPlayBarText: { color: "#c4b5fd", fontSize: 11, fontFamily: "Cairo_700Bold", textAlign: "center", zIndex: 1 },
  autoPlayCancelBtn: { paddingHorizontal: 16, paddingVertical: 6, borderRadius: 12, backgroundColor: "rgba(255,255,255,0.08)" },
  autoPlayCancelText: { color: "rgba(255,255,255,0.50)", fontSize: 12, fontFamily: "Cairo_400Regular" },

  /* Gesture halves */
  halfLeft:  { position: "absolute", left: 0, top: 0, width: "50%", height: "100%" },
  halfRight: { position: "absolute", right: 0, top: 0, width: "50%", height: "100%" },

  /* ── Skip intro/outro pill buttons ── */
  skipBtnRow: { flexDirection: "row", justifyContent: "flex-end", gap: 8, marginBottom: 4, paddingRight: 2 },
  skipPillIntro: {
    flexDirection: "row", alignItems: "center", gap: 5,
    backgroundColor: "rgba(251,191,36,0.90)", borderRadius: 20,
    paddingHorizontal: 14, paddingVertical: 7,
    shadowColor: "#fbbf24", shadowOpacity: 0.40, shadowRadius: 8, elevation: 6,
  },
  skipPillIntroText: { color: "#92400e", fontSize: 12, fontFamily: "Cairo_700Bold" },
  skipPillOutro: {
    flexDirection: "row", alignItems: "center", gap: 5,
    backgroundColor: "rgba(139,92,246,0.88)", borderRadius: 20,
    paddingHorizontal: 14, paddingVertical: 7,
    shadowColor: "#8B5CF6", shadowOpacity: 0.40, shadowRadius: 8, elevation: 6,
  },
  skipPillOutroText: { color: "#f3f0ff", fontSize: 12, fontFamily: "Cairo_700Bold" },

  /* ── CC button in top bar ── */
  topCCBtn: { minWidth: 38 },
  topCCBtnActive: { backgroundColor: "rgba(139,92,246,0.28)", borderColor: "rgba(167,139,250,0.55)" },
  topCCText: { color: "rgba(255,255,255,0.80)", fontSize: 11, fontFamily: "Cairo_700Bold", letterSpacing: 0.5 },
  topCCTextActive: { color: "#c4b5fd" },

  /* ── Subtitle side panel (slides in from right like main options menu) ── */
  subPanelBackdrop: {
    backgroundColor: "rgba(0,0,0,0.45)",
    zIndex: 50,
    justifyContent: "flex-end",
    alignItems: "flex-end",
  },
  subPanel: {
    position: "absolute", top: 0, bottom: 0, right: 0,
    backgroundColor: "rgba(5,3,18,0.97)",
    borderLeftWidth: 1, borderLeftColor: "rgba(139,92,246,0.22)",
    shadowColor: "#000", shadowOpacity: 0.8, shadowRadius: 24, elevation: 30,
  },
  subPanelPortrait:  { width: "82%" },
  subPanelLandscape: { width: "40%" },

  subPanelHeader: {
    flexDirection: "row", alignItems: "center", justifyContent: "space-between",
    paddingHorizontal: 20, paddingTop: 22, paddingBottom: 14,
  },
  subPanelTitle: { color: "#fff", fontSize: 18, fontFamily: "Cairo_700Bold" },
  subPanelClose: {
    width: 34, height: 34, borderRadius: 17,
    backgroundColor: "rgba(255,255,255,0.08)", borderWidth: 1, borderColor: "rgba(255,255,255,0.12)",
    alignItems: "center", justifyContent: "center",
  },
  subPanelDivider: { height: 1, backgroundColor: "rgba(255,255,255,0.08)", marginHorizontal: 16, marginBottom: 10 },

  subEmptyWrap: { flex: 1, alignItems: "center", justifyContent: "center", gap: 14 },
  subEmptyIcon: {
    width: 80, height: 80, borderRadius: 20,
    backgroundColor: "rgba(255,255,255,0.06)", borderWidth: 1.5, borderColor: "rgba(255,255,255,0.12)",
    alignItems: "center", justifyContent: "center",
  },
  subEmptyCCText: { color: "rgba(255,255,255,0.35)", fontSize: 22, fontFamily: "Cairo_700Bold", letterSpacing: 2 },
  subEmptyText: { color: "rgba(255,255,255,0.35)", fontSize: 14, fontFamily: "Cairo_400Regular" },

  whisperBtn: {
    flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 7,
    backgroundColor: "rgba(139,92,246,0.18)", borderRadius: 12,
    borderWidth: 1, borderColor: "rgba(139,92,246,0.35)",
    paddingHorizontal: 16, paddingVertical: 9, marginTop: 10,
  },
  whisperBtnLoading: { borderColor: "rgba(139,92,246,0.20)", backgroundColor: "rgba(139,92,246,0.10)" },
  whisperBtnText: { color: "#c4b5fd", fontSize: 13, fontFamily: "Cairo_700Bold" },

  subPanelBody: { paddingHorizontal: 16, paddingTop: 6, gap: 4 },

  subSectionLabel: { color: "rgba(255,255,255,0.40)", fontSize: 11, fontFamily: "Cairo_700Bold", letterSpacing: 0.8, marginTop: 12, marginBottom: 4, textTransform: "uppercase" },

  /* Toggle row */
  subRow: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", paddingVertical: 6 },
  subRowLeft: { flexDirection: "row", alignItems: "center", gap: 10 },
  subRowLabel: { color: "rgba(255,255,255,0.75)", fontSize: 14, fontFamily: "Cairo_600SemiBold" },
  subToggle: {
    width: 46, height: 26, borderRadius: 13,
    backgroundColor: "rgba(255,255,255,0.12)", borderWidth: 1, borderColor: "rgba(255,255,255,0.15)",
    justifyContent: "center", paddingHorizontal: 2,
  },
  subToggleOn: { backgroundColor: "rgba(139,92,246,0.80)", borderColor: "rgba(167,139,250,0.60)" },
  subToggleThumb: { width: 20, height: 20, borderRadius: 10, backgroundColor: "rgba(255,255,255,0.50)" },
  subToggleThumbOn: { backgroundColor: "#fff", alignSelf: "flex-end" },

  /* Chip rows */
  subChipRow: { flexDirection: "row", flexWrap: "wrap", gap: 8 },
  subChip: {
    flexDirection: "row", alignItems: "center", gap: 6,
    paddingHorizontal: 12, paddingVertical: 8, borderRadius: 20,
    backgroundColor: "rgba(255,255,255,0.06)", borderWidth: 1, borderColor: "rgba(255,255,255,0.12)",
  },
  subChipActive: { backgroundColor: "rgba(139,92,246,0.22)", borderColor: "rgba(167,139,250,0.50)" },
  subChipText: { color: "rgba(255,255,255,0.65)", fontSize: 12, fontFamily: "Cairo_600SemiBold" },
  subChipTextActive: { color: "#c4b5fd" },
  subChipEmoji: { fontSize: 14 },
  subPosIcon: { fontSize: 12, color: "rgba(255,255,255,0.70)" },

  /* Font size chips */
  subSizeChip: {
    alignItems: "center", gap: 3,
    paddingHorizontal: 14, paddingVertical: 8, borderRadius: 16,
    backgroundColor: "rgba(255,255,255,0.06)", borderWidth: 1, borderColor: "rgba(255,255,255,0.12)",
    minWidth: 52,
  },
  subSizeLabel: { fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.80)" },
  subSizeNameText: { color: "rgba(255,255,255,0.45)", fontSize: 9, fontFamily: "Cairo_400Regular" },

  /* Color dots */
  subColorRow: { flexDirection: "row", gap: 10, flexWrap: "wrap" },
  subColorDot: {
    width: 32, height: 32, borderRadius: 16,
    borderWidth: 2, borderColor: "rgba(255,255,255,0.20)",
    alignItems: "center", justifyContent: "center",
    shadowColor: "#000", shadowOpacity: 0.3, shadowRadius: 4, elevation: 3,
  },
  subColorDotActive: { borderColor: "#fff", borderWidth: 2.5 },

  /* ── Top bar ── */
  topBar: {
    paddingHorizontal: 14, paddingBottom: 18,
    flexDirection: "row", alignItems: "center", justifyContent: "space-between",
  },
  /* معلومات الأنمي في الجهة اليسرى */
  topInfoWrap: {
    flex: 1, gap: 4, marginRight: 8,
  },
  topInfoTitle: {
    color: "rgba(255,255,255,0.90)", fontSize: 13, fontFamily: "Cairo_700Bold",
    textShadowColor: "rgba(0,0,0,0.80)", textShadowRadius: 6, textShadowOffset: { width: 0, height: 1 },
  },
  topInfoRow: {
    flexDirection: "row", alignItems: "center", gap: 6,
  },
  topEpBadge: {
    paddingHorizontal: 8, paddingVertical: 2, borderRadius: 8,
    backgroundColor: "rgba(139,92,246,0.25)", borderWidth: 1, borderColor: "rgba(167,139,250,0.40)",
  },
  topEpText: {
    color: "rgba(221,214,254,0.95)", fontSize: 10, fontFamily: "Cairo_700Bold",
  },
  topQualityBadge: {
    paddingHorizontal: 7, paddingVertical: 2, borderRadius: 8,
    backgroundColor: "rgba(251,191,36,0.15)", borderWidth: 1, borderColor: "rgba(251,191,36,0.35)",
  },
  topQualityText: {
    color: "rgba(253,224,71,0.90)", fontSize: 10, fontFamily: "Cairo_700Bold",
  },
  topEpTitle: {
    color: "rgba(255,255,255,0.65)", fontSize: 10, fontFamily: "Cairo_400Regular",
    marginTop: 3, maxWidth: 200,
    textShadowColor: "rgba(0,0,0,0.80)", textShadowRadius: 4, textShadowOffset: { width: 0, height: 1 },
  },
  autoSubBadge: {
    marginTop: 3, alignSelf: "flex-start",
    paddingHorizontal: 6, paddingVertical: 2, borderRadius: 6,
    backgroundColor: "rgba(139,92,246,0.18)", borderWidth: 1, borderColor: "rgba(167,139,250,0.30)",
  },
  autoSubBadgeText: {
    color: "rgba(196,181,253,0.85)", fontSize: 9, fontFamily: "Cairo_600SemiBold",
  },
  topRightRow: { flexDirection: "row", alignItems: "center", gap: 8 },
  topIconBtn: {
    width: 36, height: 36, borderRadius: 18,
    backgroundColor: "rgba(255,255,255,0.10)", borderWidth: 1, borderColor: "rgba(255,255,255,0.16)",
    alignItems: "center", justifyContent: "center",
  },
  topIconBtnActive: { backgroundColor: "rgba(139,92,246,0.30)", borderColor: "rgba(167,139,250,0.55)" },
  /* زر تدوير الشاشة — pill يجمع أيقونة + نص */
  topRotateBtn: {
    flexDirection: "row", alignItems: "center", gap: 5,
    paddingHorizontal: 10, paddingVertical: 7, borderRadius: 18,
    backgroundColor: "rgba(255,255,255,0.10)", borderWidth: 1, borderColor: "rgba(255,255,255,0.18)",
  },
  topRotateBtnActive: {
    backgroundColor: "rgba(139,92,246,0.28)", borderColor: "rgba(167,139,250,0.55)",
  },
  topRotateLabel: {
    color: "rgba(255,255,255,0.80)", fontSize: 10, fontFamily: "Cairo_700Bold",
  },
  topRotateLabelActive: { color: "#c4b5fd" },
  topCloseBtn: {
    width: 38, height: 38, borderRadius: 19,
    backgroundColor: "rgba(239,68,68,0.14)", borderWidth: 1.5, borderColor: "rgba(239,68,68,0.40)",
    alignItems: "center", justifyContent: "center",
  },

  /* ── Center overlay ── */
  centerOverlay: { flex: 1, alignItems: "center", justifyContent: "center", paddingTop: 60 },
  centerLandscapeWrap: { alignItems: "center" },
  centerPortraitRow: { flexDirection: "row", alignItems: "center", gap: 28 },
  centerSeekBtn: {
    width: 58, height: 58, borderRadius: 29,
    backgroundColor: "rgba(0,0,0,0.38)", borderWidth: 1, borderColor: "rgba(255,255,255,0.20)",
    alignItems: "center", justifyContent: "center", gap: 3,
  },
  centerSeekLabel: { color: "rgba(255,255,255,0.80)", fontSize: 11, fontFamily: "Cairo_700Bold", lineHeight: 13 },
  centerPlayBtn: {
    width: 74, height: 74, borderRadius: 37,
    backgroundColor: "rgba(139,92,246,0.30)",
    borderWidth: 2, borderColor: "rgba(167,139,250,0.80)",
    alignItems: "center", justifyContent: "center",
    shadowColor: "#8B5CF6", shadowOpacity: 0.75, shadowRadius: 24, elevation: 16,
  },

  /* ── Bottom section ── */
  bottomSection: { paddingHorizontal: 16, paddingTop: 20, gap: 5 },

  /* ── Bottom controls row ── */
  bottomCtrlRow: {
    flexDirection: "row", alignItems: "center", justifyContent: "space-between",
    marginTop: 4, marginBottom: 2,
  },
  bottomSide: { flex: 1, flexDirection: "row", alignItems: "center", gap: 8 },
  bottomCenter: { flexDirection: "row", alignItems: "center", gap: 14 },

  /* ── Seek buttons (in bottom row, landscape) ── */
  seekCtrlBtn: {
    width: 46, height: 46, borderRadius: 23,
    backgroundColor: "rgba(255,255,255,0.09)", borderWidth: 1, borderColor: "rgba(255,255,255,0.18)",
    alignItems: "center", justifyContent: "center", gap: 2,
  },
  seekCtrlLabel: { color: "rgba(255,255,255,0.70)", fontSize: 9, fontFamily: "Cairo_700Bold", lineHeight: 11 },

  /* ── Bottom play button ── */
  bottomPlayBtn: {
    width: 58, height: 58, borderRadius: 29,
    backgroundColor: "rgba(139,92,246,0.88)",
    borderWidth: 2, borderColor: "rgba(196,181,253,0.75)",
    alignItems: "center", justifyContent: "center",
    shadowColor: "#8B5CF6", shadowOpacity: 0.65, shadowRadius: 18, elevation: 12,
  },

  /* ── Icon control buttons ── */
  ctrlIconBtn: {
    width: 36, height: 36, borderRadius: 18,
    backgroundColor: "rgba(255,255,255,0.09)", borderWidth: 1, borderColor: "rgba(255,255,255,0.15)",
    alignItems: "center", justifyContent: "center",
  },
  ctrlIconBtnActive: { backgroundColor: "rgba(139,92,246,0.28)", borderColor: "rgba(167,139,250,0.50)" },
  ctrlIconBtnMuted:  { backgroundColor: "rgba(239,68,68,0.14)", borderColor: "rgba(239,68,68,0.30)" },
  ctrlSpeedBtn: { paddingHorizontal: 4, minWidth: 42 },
  speedLabel: { color: "rgba(255,255,255,0.75)", fontSize: 12, fontFamily: "Cairo_700Bold" },
  speedLabelActive: { color: "#c4b5fd" },

  /* ── Dropdown menus ── */
  fitDropdown: {
    position: "absolute", bottom: 44, left: 0,
    backgroundColor: "rgba(12,8,28,0.97)",
    borderRadius: 14, borderWidth: 1, borderColor: "rgba(139,92,246,0.25)",
    paddingVertical: 6, paddingHorizontal: 4, minWidth: 130, zIndex: 60,
    shadowColor: "#000", shadowOpacity: 0.6, shadowRadius: 12, elevation: 20,
  },
  speedDropdown: {
    position: "absolute", bottom: 44, right: 0,
    backgroundColor: "rgba(12,8,28,0.97)",
    borderRadius: 14, borderWidth: 1, borderColor: "rgba(139,92,246,0.25)",
    paddingVertical: 6, paddingHorizontal: 4, minWidth: 100, zIndex: 60,
    shadowColor: "#000", shadowOpacity: 0.6, shadowRadius: 12, elevation: 20,
  },
  dropItem: {
    flexDirection: "row", alignItems: "center", gap: 8,
    paddingVertical: 9, paddingHorizontal: 12, borderRadius: 10,
  },
  dropItemActive: { backgroundColor: "rgba(139,92,246,0.20)" },
  dropItemText: { color: "rgba(255,255,255,0.65)", fontSize: 12, fontFamily: "Cairo_600SemiBold", flex: 1 },
  dropItemTextActive: { color: "#c4b5fd" },
  dropSpeedNum: { color: "rgba(255,255,255,0.75)", fontSize: 15, fontFamily: "Cairo_700Bold", flex: 1 },
  titleWrap: { flex: 1, gap: 4 },
  titleText: { color: "#fff", fontSize: 15, fontFamily: "Cairo_700Bold" },
  epBadge: { paddingHorizontal: 8, paddingVertical: 2, borderRadius: 8, backgroundColor: "rgba(139,92,246,0.22)", borderWidth: 1, borderColor: "rgba(167,139,250,0.30)" },
  epBadgeText: { color: "rgba(221,214,254,0.95)", fontSize: 11, fontFamily: "Cairo_700Bold" },
  qualityPill: { borderRadius: 8, borderWidth: 1, paddingHorizontal: 7, paddingVertical: 2 },
  qualityText: { fontSize: 11, fontFamily: "Cairo_700Bold" },
  serverCountText: { color: "rgba(255,255,255,0.50)", fontSize: 11, fontFamily: "Cairo_400Regular" },
  topRight: { flexDirection: "row", alignItems: "center", gap: 5, marginTop: 2 },
  topBtn: { width: 36, height: 36, borderRadius: 18, backgroundColor: "rgba(255,255,255,0.11)", borderWidth: 1, borderColor: "rgba(255,255,255,0.17)", alignItems: "center", justifyContent: "center" },
  topBtnActive: { backgroundColor: "rgba(139,92,246,0.30)", borderColor: "rgba(139,92,246,0.55)" },
  topBtnClose: { width: 36, height: 36, borderRadius: 18, backgroundColor: "rgba(239,68,68,0.14)", borderWidth: 1, borderColor: "rgba(239,68,68,0.28)", alignItems: "center", justifyContent: "center" },

  /* Center */
  centerRow: { flex: 1, flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 22 },
  epNavBtn: { width: 50, height: 50, borderRadius: 25, backgroundColor: "rgba(255,255,255,0.09)", borderWidth: 1, borderColor: "rgba(255,255,255,0.20)", alignItems: "center", justifyContent: "center" },
  seekStepBtn: { width: 58, height: 58, alignItems: "center", justifyContent: "center", borderRadius: 29, backgroundColor: "rgba(255,255,255,0.11)", borderWidth: 1, borderColor: "rgba(255,255,255,0.20)", gap: 2 },
  seekStepLabel: { color: "#fff", fontSize: 13, fontFamily: "Cairo_800ExtraBold", lineHeight: 15 },
  playBtn: { width: 90, height: 90, borderRadius: 45, backgroundColor: "rgba(139,92,246,0.22)", borderWidth: 2, borderColor: "rgba(167,139,250,0.70)", alignItems: "center", justifyContent: "center", shadowColor: "#8B5CF6", shadowOpacity: 0.65, shadowRadius: 20, elevation: 12 },

  /* Bottom bar */
  bottomBar: { paddingHorizontal: 16, paddingTop: 28, gap: 8 },
  timeRow: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", marginBottom: 2 },
  timeText: { color: "rgba(255,255,255,0.75)", fontSize: 11, fontFamily: "Cairo_400Regular", minWidth: 40, textAlign: "center" },

  /* Progress bar */
  progressWrap: { height: 34, justifyContent: "center", position: "relative", marginHorizontal: 2 },
  progressWrapDragging: { height: 48 },
  progressBg: { position: "absolute", left: 0, right: 0, height: 6, backgroundColor: "rgba(255,255,255,0.15)", borderRadius: 3 },
  skipMarker: { position: "absolute", height: 4, backgroundColor: "rgba(250,204,21,0.80)", borderRadius: 2, top: "50%", marginTop: -2, zIndex: 2 },
  progressFill: { position: "absolute", left: 0, height: 6, backgroundColor: "#8B5CF6", borderRadius: 3, top: "50%", marginTop: -3, zIndex: 3 },
  thumb: { position: "absolute", top: "50%", width: 18, height: 18, borderRadius: 9, backgroundColor: "#fff", marginLeft: -9, marginTop: -9, shadowColor: "#8B5CF6", shadowOpacity: 0.5, shadowRadius: 6, elevation: 4, zIndex: 4 },
  thumbDragging: { width: 26, height: 26, borderRadius: 13, marginLeft: -13, marginTop: -13, backgroundColor: "#c4b5fd", shadowColor: "#8B5CF6", shadowOpacity: 1, shadowRadius: 14, elevation: 8 },
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

  /* Offset badge (shown in accordion header when offset != 0) */
  offsetBadge: { backgroundColor: "rgba(139,92,246,0.18)", borderRadius: 10, paddingHorizontal: 8, paddingVertical: 2, borderWidth: 1, borderColor: "rgba(139,92,246,0.35)" },
  offsetBadgeText: { color: "rgba(196,181,253,0.85)", fontSize: 8.5, fontFamily: "Cairo_700Bold" },

  /* Offset display row */
  offsetDisplayRow: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", marginBottom: 12, backgroundColor: "rgba(255,255,255,0.04)", borderRadius: 14, paddingHorizontal: 16, paddingVertical: 12, borderWidth: 1, borderColor: "rgba(255,255,255,0.07)" },
  offsetDisplayBox: { alignItems: "center", gap: 2 },
  offsetValueText: { fontSize: 28, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.85)", lineHeight: 32 },
  offsetHintText: { fontSize: 9, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.30)" },
  offsetResetBtn: { backgroundColor: "rgba(239,68,68,0.15)", borderRadius: 12, paddingHorizontal: 14, paddingVertical: 7, borderWidth: 1, borderColor: "rgba(239,68,68,0.28)" },
  offsetResetText: { color: "rgba(252,165,165,0.90)", fontSize: 12, fontFamily: "Cairo_700Bold" },

  /* Offset ± buttons row */
  offsetBtnsRow: { flexDirection: "row", gap: 8, marginBottom: 4 },
  offsetBtn: { flex: 1, paddingVertical: 11, borderRadius: 14, alignItems: "center", justifyContent: "center", backgroundColor: "rgba(255,255,255,0.05)", borderWidth: 1, borderColor: "rgba(239,68,68,0.25)" },
  offsetBtnPos: { backgroundColor: "rgba(139,92,246,0.08)", borderColor: "rgba(139,92,246,0.30)" },
  offsetBtnText: { fontSize: 13, fontFamily: "Cairo_700Bold", color: "rgba(252,165,165,0.90)" },

  /* Reset all button */
  resetAllBtn: { paddingVertical: 11, borderRadius: 14, alignItems: "center", justifyContent: "center", backgroundColor: "rgba(239,68,68,0.10)", borderWidth: 1, borderColor: "rgba(239,68,68,0.22)" },
  resetAllBtnText: { fontSize: 13, fontFamily: "Cairo_700Bold", color: "rgba(252,165,165,0.82)" },

  /* ══════ Buffer bar (web player port) ══════ */
  bufferBar: {
    position: "absolute", left: 0, height: 6,
    backgroundColor: "rgba(255,255,255,0.22)",
    borderRadius: 3, zIndex: 2,
  },

  /* ══════ OP/ED Tick marks (web player port) ══════ */
  skipTick: {
    position: "absolute",
    width: 2.5, height: 14,
    backgroundColor: "#facc15",
    borderRadius: 1.5,
    top: "50%" as any, marginTop: -7,
    zIndex: 6,
    shadowColor: "#facc15",
    shadowOpacity: 0.90,
    shadowRadius: 4,
    elevation: 6,
  },

  /* ══════ Episode List Panel ══════ */
  epListPanel: {
    position: "absolute",
    top: 0, bottom: 0, left: 0,
    width: "72%",
    backgroundColor: "rgba(5,5,18,0.97)",
    borderRightWidth: 1.5, borderRightColor: "rgba(139,92,246,0.22)",
    flexDirection: "column",
    zIndex: 56,
  },
  epListHeader: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 16,
    paddingVertical: 14,
    borderBottomWidth: 1,
    borderBottomColor: "rgba(255,255,255,0.07)",
  },
  epListTitleRow: { flexDirection: "row", alignItems: "center", gap: 8 },
  epListTitle: { color: "#fff", fontSize: 15, fontFamily: "Cairo_700Bold" },
  epListBadge: {
    backgroundColor: "rgba(139,92,246,0.20)",
    borderRadius: 8, borderWidth: 1, borderColor: "rgba(139,92,246,0.30)",
    paddingHorizontal: 7, paddingVertical: 2,
  },
  epListBadgeText: { color: "#c4b5fd", fontSize: 11, fontFamily: "Cairo_700Bold" },
  epListPageNav: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 12,
    paddingVertical: 8,
    borderBottomWidth: 1,
    borderBottomColor: "rgba(255,255,255,0.05)",
  },
  epListPageBtn: {
    backgroundColor: "rgba(139,92,246,0.18)",
    borderRadius: 10, borderWidth: 1, borderColor: "rgba(139,92,246,0.35)",
    paddingHorizontal: 10, paddingVertical: 5,
  },
  epListPageBtnDisabled: {
    backgroundColor: "rgba(255,255,255,0.04)",
    borderColor: "rgba(255,255,255,0.07)",
    opacity: 0.35,
  },
  epListPageBtnText: { color: "#c4b5fd", fontSize: 12, fontFamily: "Cairo_700Bold" },
  epListPageBtnTextDisabled: { color: "rgba(255,255,255,0.25)" },
  epListPageRange: { color: "rgba(255,255,255,0.40)", fontSize: 11, fontFamily: "Cairo_400Regular" },
  epListGrid: {
    flexDirection: "row",
    flexWrap: "wrap",
    padding: 10,
    gap: 6,
  },
  epListItem: {
    width: "22%",
    aspectRatio: 1,
    backgroundColor: "rgba(255,255,255,0.06)",
    borderRadius: 12, borderWidth: 1, borderColor: "rgba(255,255,255,0.08)",
    alignItems: "center", justifyContent: "center",
  },
  epListItemActive: {
    backgroundColor: "rgba(139,92,246,0.88)",
    borderColor: "rgba(167,139,250,0.70)",
  },
  epListItemText: { color: "rgba(255,255,255,0.72)", fontSize: 13, fontFamily: "Cairo_700Bold" },
  epListItemTextActive: { color: "#fff" },

  /* ══════ Sleep timer sheet (web player port) ══════ */
  sleepBadge: {
    backgroundColor: "rgba(139,92,246,0.18)",
    borderRadius: 12, paddingHorizontal: 10, paddingVertical: 3,
    borderWidth: 1, borderColor: "rgba(139,92,246,0.38)",
  },
  sleepBadgeText: {
    color: "#c4b5fd", fontSize: 10, fontFamily: "Cairo_700Bold",
  },
});
