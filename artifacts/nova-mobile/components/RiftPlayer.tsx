/**
 * RiftPlayer v5 — مشغل نوفا موبايل الزجاجي
 * مطابق لمشغّل الويب Glassy v5 بالكامل:
 * ترجمة + إعدادات ترجمة كاملة + قفل + تدوير + لقطة شاشة + زر إغلاق
 * سحب شريط + إيماءات + تخطي + سرعة + وضع عرض
 */
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import * as ScreenOrientation from "expo-screen-orientation";
import { StatusBar } from "expo-status-bar";
import { useVideoPlayer, VideoView } from "expo-video";
import * as Brightness from "expo-brightness";
import { VolumeManager } from "../lib/volume-manager";
import React, { useCallback, useEffect, useMemo, useRef, useState } from "react";
import {
  ActivityIndicator, Animated, Dimensions, Easing, I18nManager, Platform,
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
  /** المزوّد يحتاج ترجمة ذكية تلقائية (مصدر ياباني بدون ترجمة عربية مدمجة) */
  wantsSmartSub?: boolean;
  /**
   * HTTP headers مخصّصة (Referer/Origin) تُرسَل مع كل طلب عبر ExoPlayer/AVPlayer.
   * ضرورية لـ CDN تتحقق من Referer حين تذهب الـ segments مباشرةً (mobile=1).
   */
  headers?: Record<string, string>;
};

/** Never pass malformed URLs into the native player.
 *  Some Media3/AVPlayer versions crash before emitting statusChange(error)
 *  when the source is empty, relative, or otherwise not an HTTP URL.
 *  ملاحظة: file:// مسموح — يُستخدم لتشغيل الحلقات المحمَّلة محلياً.
 */
export function isValidPlayerSourceUrl(value: unknown): value is string {
  if (typeof value !== "string" || !value.trim()) return false;
  try {
    const parsed = new URL(value.trim());
    // Local file — valid on mobile (pathname كافٍ، hostname فارغ)
    if (parsed.protocol === "file:") return !!parsed.pathname;
    return (parsed.protocol === "http:" || parsed.protocol === "https:") && !!parsed.hostname;
  } catch {
    return false;
  }
}

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
  /** يُستدعى عند فشل جميع المصادر المتاحة */
  onError?: () => void;
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
  bgOpacity: 0,
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

/* ─── Merge + sort subtitle cue arrays by start time ─── */
function _mergeCues(existing: SubCue[], incoming: SubCue[]): SubCue[] {
  if (!existing.length) return incoming;
  const out = [...existing, ...incoming];
  out.sort((a, b) => a.start - b.start);
  return out;
}

/**
 * Fetch translated subtitles progressively via /translate-vtt-stream SSE.
 * Uses fetch + ReadableStream (works in React Native / Expo).
 * Calls onChunk for each arriving batch of cues.
 * Returns total cue count when done.
 */
async function _fetchStreamedSubtitles(
  url: string,
  onChunk: (cues: SubCue[]) => void,
  signal?: AbortSignal,
): Promise<number> {
  const streamUrl = url.includes("/translate-vtt-stream")
    ? url
    : url.replace("/translate-vtt?", "/translate-vtt-stream?");

  const r = await fetch(streamUrl, {
    headers: { Accept: "text/event-stream,application/json,text/vtt,text/plain,*/*" },
    signal: signal ?? AbortSignal.timeout(90_000),
  });
  if (!r.ok) throw new Error(`HTTP ${r.status}`);

  const reader = r.body?.getReader();
  if (!reader) {
    // Fallback: read body as text and treat as single chunk
    const text = await r.text();
    try {
      const lines = text.split("\n");
      for (const line of lines) {
        if (!line.startsWith("data: ")) continue;
        const msg = JSON.parse(line.slice(6)) as { type: string; cues?: any[]; totalCues?: number };
        if (msg.type === "chunk" && msg.cues?.length) {
          const parsed = msg.cues.map((c: any) => {
            const pts = (c.timing || "").split("-->");
            return { start: parseVTTTime((pts[0] || "").trim()), end: parseVTTTime((pts[1] || "").trim()), text: (c.text || "").trim() };
          }).filter((c: SubCue) => c.start < c.end && c.text.length > 0);
          if (parsed.length) onChunk(parsed);
        } else if (msg.type === "done") return msg.totalCues ?? 0;
      }
    } catch {}
    return 0;
  }

  const decoder = new TextDecoder();
  let buffer = "";
  let total = 0;

  while (true) {
    const { done, value } = await reader.read();
    if (done) break;
    if (signal?.aborted) { reader.cancel(); break; }
    buffer += decoder.decode(value, { stream: true });

    // Parse complete SSE events (delimited by \n\n)
    let sepIdx: number;
    while ((sepIdx = buffer.indexOf("\n\n")) >= 0) {
      const event = buffer.slice(0, sepIdx);
      buffer = buffer.slice(sepIdx + 2);
      for (const line of event.split("\n")) {
        if (!line.startsWith("data: ")) continue;
        try {
          const msg = JSON.parse(line.slice(6)) as { type: string; cues?: any[]; totalCues?: number };
          if (msg.type === "chunk" && msg.cues?.length) {
            const parsed = msg.cues.map((c: any) => {
              const pts = (c.timing || "").split("-->");
              return { start: parseVTTTime((pts[0] || "").trim()), end: parseVTTTime((pts[1] || "").trim()), text: (c.text || "").trim() };
            }).filter((c: SubCue) => c.start < c.end && c.text.length > 0);
            if (parsed.length) { onChunk(parsed); total += parsed.length; }
          } else if (msg.type === "done") {
            return msg.totalCues ?? total;
          }
        } catch {}
      }
    }
  }
  return total;
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
      .filter(Boolean)
      .filter(l => !/^kaa\.m\s*$/i.test(l)); // حذف علامة ترجمة kaa.m من مصدر Kawaii
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
    const a1 = pulse(scale1, opacity1, 0);
    const a2 = pulse(scale2, opacity2, 550);
    a1.start();
    a2.start();
    return () => { a1.stop(); a2.stop(); };
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
      <View style={[StyleSheet.absoluteFill, { borderRadius: r, borderWidth: 2.5, borderColor: "rgba(139,92,246,0.18)" }]} />
      <Animated.View style={[StyleSheet.absoluteFill, {
        borderRadius: r, borderWidth: 2.5, borderColor: "transparent",
        borderTopColor: "#8B5CF6", borderRightColor: "rgba(139,92,246,0.45)",
        transform: [{ rotate }],
      }]} />
    </View>
  );
}

/* ─── وظيفة تقسيم سطر الترجمة الطويل إلى سطرين قصيرين ─── */
function wrapSubLine(text: string, maxLen = 30): string[] {
  if (!text || text.length <= maxLen) return [text];
  const mid = Math.floor(text.length / 2);
  let best = -1, bestDist = Infinity;
  for (let i = 0; i < text.length; i++) {
    if (text[i] === " ") {
      const dist = Math.abs(i - mid);
      if (dist < bestDist) { bestDist = dist; best = i; }
    }
  }
  if (best === -1) return [text];
  return [text.slice(0, best).trim(), text.slice(best + 1).trim()].filter(Boolean);
}

/* ─── Screenshot flash overlay ─── */
function ScreenshotFlash({ visible }: { visible: boolean }) {
  const opacity = useRef(new Animated.Value(0)).current;
  useEffect(() => {
    if (visible) {
      /* إيقاف أي animation سابقة قبل البدء من جديد */
      opacity.stopAnimation();
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
  onError,
}: Props) {
  const insets = useSafeAreaInsets();

  /* ─── Source ─── */
  const playableSources = useMemo(() => {
    const seen = new Set<string>();
    return sources.filter(source => {
      const url = source?.url?.trim();
      if (!isValidPlayerSourceUrl(url) || seen.has(url)) return false;
      seen.add(url);
      return true;
    });
  }, [sources]);
  const safeInitialIndex = Math.min(
    Math.max(initialSourceIndex, 0),
    Math.max(playableSources.length - 1, 0),
  );
  const [srcIdx, setSrcIdx]         = useState(safeInitialIndex);
  const currentSrc                  = playableSources[srcIdx];
  const aliveRef                    = useRef(true);
  const terminalErrorRef            = useRef(false);

  /* ─── Playback state ─── */
  const [position, setPosition]       = useState(0);
  const [duration, setDuration]       = useState(0);
  const [buffering, setBuffering]     = useState(true);
  const [isPlaying, setIsPlaying]     = useState(true);
  const [error, setError]             = useState(false);
  const [isAutoCycling, setIsAutoCycling] = useState(false);
  const [isWaitingForSources, setIsWaitingForSources] = useState(false);
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
  /* postSeekPct: يُبقي الشريط على الموضع الصحيح لـ 800ms بعد الإفلات ريثما يتحدث polling */
  const [postSeekPct, setPostSeekPct]   = useState<number | null>(null);
  const postSeekTimer = useRef<ReturnType<typeof setTimeout> | null>(null);

  /* ─── Speed ─── */
  const [speed, setSpeed]             = useState(1);
  const [longPressSpeed, setLongPressSpeed] = useState(false);
  const prevSpeedRef                  = useRef(1);

  /* ─── Volume / Brightness ─── */
  /* الصوت والسطوع يعكسان القيم الحقيقية للنظام:
     - expo-brightness: يقرأ/يضبط سطوع الشاشة الحقيقي (Activity-level)
     - react-native-volume-manager: يقرأ/يضبط صوت الوسائط في النظام
       ويُبرز HUD أزرار الصوت الفيزيائية عند التغيير */
  const [volume, setVolume]           = useState(1);
  const [brightness, setBrightness]   = useState(0.5);
  const volumeRef                     = useRef(1);
  const brightnessRef                 = useRef(0.5);

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
  const [skipIntroDismissed, setSkipIntroDismissed] = useState(false);
  const [skipOutroDismissed, setSkipOutroDismissed] = useState(false);

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
  /** كاشف الـ stall: موضع آخر حركة + وقتها (لكشف "يشتغل بدون تقدّم") */
  const stallRef          = useRef<{ lastPos: number; lastAt: number }>({ lastPos: -1, lastAt: 0 });
  /** refs للحالات التي يحتاجها الـ polling interval بدون stale closure */
  const isPlayingRef      = useRef(false);
  const isErrorRef        = useRef(false);
  const isEndedRef        = useRef(false);
  const lastTap           = useRef<{ time: number; side: "L" | "R" } | null>(null);
  const tapTimer          = useRef<ReturnType<typeof setTimeout> | null>(null);
  const longPressTimer    = useRef<ReturnType<typeof setTimeout> | null>(null);
  const unlockTimer       = useRef<ReturnType<typeof setTimeout> | null>(null);
  const gestureSide       = useRef<"L" | "R" | null>(null);
  const gestureStartY     = useRef(0);
  const gestureStartVal   = useRef(0);
  const barRef            = useRef<View>(null);
  const barWidth          = useRef(W);   // يبدأ بعرض الشاشة كـ fallback آمن قبل onLayout
  const barPageX          = useRef(0);   // absolute X of bar's left edge on screen (for reliable seek)
  const lastMoveX         = useRef(0);   // last known absolute X during drag (fallback for release on Android)
  const grantLocationXRef = useRef(0);   // locationX النسبي لحدث Grant (أدق من pageX للنقر السريع)
  const resumedRef        = useRef(false);
  const subRafRef         = useRef<any>(null);
  const durationRef       = useRef(0);
  const positionRef       = useRef(0);
  const urlCueCacheRef    = useRef<Map<string, SubCue[]>>(new Map());
  /** أضِف إدخالاً للـ subtitle cache مع حد أقصى 30 مدخل — منع تراكم الذاكرة */
  const setCueCacheEntry  = useCallback((url: string, cues: SubCue[]) => {
    const map = urlCueCacheRef.current;
    if (!map.has(url) && map.size >= 30) {
      /* أزِل أقدم مدخل (first-inserted key in insertion-order Map) */
      const firstKey = map.keys().next().value;
      if (firstKey !== undefined) map.delete(firstKey);
    }
    map.set(url, cues);
  }, []);
  const seekRef           = useRef<(s: number) => void>(() => {});
  /** ref للـ isArabic flag — يُستخدَم داخل async effects بدون closure stale */
  const isArabicRef       = useRef<boolean>(currentSrc?.isArabic ?? false);
  useEffect(() => { isArabicRef.current = currentSrc?.isArabic ?? false; }, [currentSrc?.isArabic]);
  const gestureTypeRef    = useRef<"vol" | "bri" | "seek" | null>(null);
  const gestureStartPosRef= useRef(0);
  const gestureStartXRef  = useRef(0);
  const orientLockRef     = useRef<"left" | "right">("left");
  /* timeout لاكتشاف الشاشة السوداء: إذا بقي المشغّل في "loading" أكثر من 25ث
     نعامله كخطأ ونتجاوز للمصدر التالي تلقائياً */
  const loadTimeoutRef    = useRef<ReturnType<typeof setTimeout> | null>(null);
  /* timer الانتظار لوصول مصادر إضافية عندما يفشل المصدر الوحيد */
  const waitForSrcTimerRef = useRef<ReturnType<typeof setTimeout> | null>(null);
  /* timers صغيرة غير مُتتبَّعة سابقاً — يجب مسحها في master cleanup لمنع كراش الـ native player */
  const replayTimeoutRef         = useRef<ReturnType<typeof setTimeout> | null>(null);
  const screenshotFlashTimerRef  = useRef<ReturnType<typeof setTimeout> | null>(null);

  useEffect(() => {
    aliveRef.current = true;
    return () => {
      aliveRef.current = false;
      if (waitForSrcTimerRef.current) { clearTimeout(waitForSrcTimerRef.current); waitForSrcTimerRef.current = null; }
    };
  }, []);

  /* ─── تهيئة السطوع والصوت من قيم النظام الحقيقية عند فتح المشغّل ─── */
  const originalBrightnessRef = useRef<number | null>(null);
  useEffect(() => {
    /* اقرأ سطوع الشاشة الحقيقي ثم اضبطه كنقطة بداية */
    Brightness.getBrightnessAsync()
      .then(b => {
        if (!aliveRef.current) return;
        const clamped = Math.max(0.05, Math.min(1, b));
        originalBrightnessRef.current = clamped; // احفظ لاستعادته عند الإغلاق
        setBrightness(clamped);
        brightnessRef.current = clamped;
      })
      .catch(() => {});

    /* اقرأ مستوى الصوت الحالي للوسائط من النظام */
    VolumeManager.getVolume("music")
      .then((res: any) => {
        if (!aliveRef.current) return;
        const v = typeof res === "number" ? res : (res?.volume ?? 1);
        setVolume(v);
        volumeRef.current = v;
        try { player.volume = 1; } catch {} // player يعمل دائماً بـ 100% من صوت النظام
      })
      .catch(() => {});

    /* استمع لأزرار الصوت الفيزيائية — يُحدّث الـ UI عند الضغط */
    const volSub = VolumeManager.addVolumeListener((result: any) => {
      if (!aliveRef.current) return;
      const v = typeof result === "number" ? result : (result?.volume ?? result?.value ?? 1);
      setVolume(v);
      volumeRef.current = v;
      setFeedback({ type: "volume", value: v });
      if (feedbackTimer.current) clearTimeout(feedbackTimer.current);
      feedbackTimer.current = setTimeout(() => setFeedback(null), 900);
    });

    return () => {
      try { volSub?.remove?.(); } catch {}
    };
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  /* ─── expo-video player ─── */
  /* نستخدم ref ثابت للـ VideoSource الأولي حتى لا يُعيد useVideoPlayer
     تهيئة المشغّل عند تغيير srcIdx (التبديل يتم عبر player.replace فقط).
     نمرّر URL string مباشرةً (بدون headers) — جميع المصادر تمرّ عبر VPS proxy
     الذي يُضيف Referer/Origin داخلياً، لذا لا حاجة لإرسالها من ExoPlayer.
     تمرير { uri, headers } يُسبِّب فشلاً صامتاً في بعض إصدارات expo-video native. */
  const _initSrc = playableSources[safeInitialIndex];
  const _initVideoSrcRef = useRef<string>(_initSrc?.url || "");
  const player = useVideoPlayer(_initVideoSrcRef.current || null, (p) => {
    p.loop = false;
    p.volume = 1;
    /* ⚠️ لا نستدعي p.play() هنا مباشرةً — بعض إصدارات ExoPlayer/AVPlayer تُطلق
       native crash عند استدعاء play() قبل أن يكون المصدر جاهزاً للتشغيل.
       التشغيل الآن يتم فقط عبر حدث statusChange → readyToPlay أدناه. */
    if (initialPosition && initialPosition > 5) {
      try { p.currentTime = initialPosition; } catch {}
    }
    /* Buffer tuning — يوازن بين سرعة البدء وتجنب native crash من OOM
       ⚠️ bufferForPlaybackMs=150 كان يُسبّب crash فوري في ExoPlayer على بعض
          الأجهزة لأنه يحاول decode الفيديو قبل أن يجمع Media3 بيانات كافية.
       ⚠️ maxBufferMs=30000 كان يُسبّب OOM على الأجهزة منخفضة الذاكرة.
       ⚠️ backBufferDurationMs غير محدّد → يبقي ExoPlayer 30ث من المحتوى
          المُشغَّل في الذاكرة → يُضاعف استهلاك الذاكرة. */
    try {
      (p as any).bufferOptions = {
        preferredForwardBufferDuration: 10, // iOS: مسبق 10ث (كافٍ وآمن)
        waitsToMinimizeStalling: false,     // iOS: ابدأ فوراً بدون انتظار
        minBufferMs: 2000,                  // Android: ابدأ بعد 2ث (آمن للـ codec)
        maxBufferMs: 15000,                 // Android: 15ث كافٍ ← يقلل OOM
        bufferForPlaybackMs: 1500,          // Android: ابدأ بعد 1.5ث ← يمنع crash
        bufferForPlaybackAfterRebufferMs: 2000, // Android: استأنف بعد 2ث
        backBufferDurationMs: 5000,         // Android: احتفظ بـ5ث فقط خلف ← يقلل OOM
      };
    } catch {}
  });

  /* ─── Master cleanup on unmount — تحرير جميع الموارد النشطة ─── */
  useEffect(() => {
    return () => {
      /* 1. أوقف المشغّل وحرِّر موارده الأصلية (Native ExoPlayer / AVPlayer) */
      try { player.pause(); } catch {}
      /* useVideoPlayer owns the native player's lifecycle and releases it
         automatically. Calling release() here as well can double-release the
         native object during a fast route transition and crash the app. */

      /* 2. ألغِ timeout التحميل */
      if (loadTimeoutRef.current) { clearTimeout(loadTimeoutRef.current); loadTimeoutRef.current = null; }

      /* 3. ألغِ polling interval */
      if (progressTimer.current) { clearInterval(progressTimer.current); progressTimer.current = null; }

      /* 4. ألغِ subtitle rAF loop */
      if (subRafRef.current) { cancelAnimationFrame(subRafRef.current); subRafRef.current = null; }

      /* 5. ألغِ hide timer */
      if (hideTimer.current) { clearTimeout(hideTimer.current); hideTimer.current = null; }

      /* 5b. ألغِ كل الـ timers الصغيرة التي لم تكن في cleanup — مسببات الكراش الرئيسية:
             replayTimeout: يستدعي player.play() بعد 120ms من unmount → native crash
             screenshotFlashTimer: يستدعي setState بعد unmount
             feedbackTimer/tapTimer/longPressTimer/unlockTimer/postSeekTimer: setState بعد unmount */
      if (replayTimeoutRef.current) { clearTimeout(replayTimeoutRef.current); replayTimeoutRef.current = null; }
      if (screenshotFlashTimerRef.current) { clearTimeout(screenshotFlashTimerRef.current); screenshotFlashTimerRef.current = null; }
      if (feedbackTimer.current) { clearTimeout(feedbackTimer.current); feedbackTimer.current = null; }
      if (tapTimer.current) { clearTimeout(tapTimer.current); tapTimer.current = null; }
      if (longPressTimer.current) { clearTimeout(longPressTimer.current); longPressTimer.current = null; }
      if (unlockTimer.current) { clearTimeout(unlockTimer.current); unlockTimer.current = null; }
      if (postSeekTimer.current) { clearTimeout(postSeekTimer.current); postSeekTimer.current = null; }
      /* waitForSrcTimerRef: يُلغى عند unmount لمنع onError من الاستدعاء بعد تفكيك المشغّل
         كان يُسبّب setState بعد unmount → crash عند التبديل السريع بين المصادر */
      if (waitForSrcTimerRef.current) { clearTimeout(waitForSrcTimerRef.current); waitForSrcTimerRef.current = null; }

      /* 6. فرِّغ subtitle cache + cues لتحرير الذاكرة
         loadedCues قد تكون مئات/آلاف من الـ cues المترجمة — تحريرها فوراً يُقلل ضغط GC */
      urlCueCacheRef.current.clear();

      /* 7. استعِد السطوع الأصلي للشاشة عند مغادرة المشغّل */
      if (originalBrightnessRef.current !== null) {
        Brightness.setBrightnessAsync(originalBrightnessRef.current).catch(() => {});
      }

      console.log("[RiftPlayer] 🧹 unmounted — all resources released");
    };
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  /* ─── Load SubSettings + subOffset + autoPlay pref from storage ─── */
  useEffect(() => {
    AsyncStorage.getItem("sub-settings-v1").then(raw => {
      if (!aliveRef.current) return; // لا setState بعد unmount
      if (raw) { try { setSubSettings(JSON.parse(raw)); } catch {} }
    }).catch(() => {});
    AsyncStorage.getItem("pref-autoplay").then(v => {
      if (!aliveRef.current) return;
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
      if (!aliveRef.current) return;
      setIsPlaying(e.isPlaying ?? false);
      setBuffering(false);
    });
    const sub2 = player.addListener("statusChange", (e: any) => {
      if (!aliveRef.current) return;
      if (e.status === "loading") {
        setBuffering(true);
        /* إذا بقي التحميل أكثر من 12ث (شاشة سوداء) نعامله كخطأ ونتجاوز للمصدر التالي.
           25ث كان طويلاً جداً: 10 مصادر × 25ث = 250ث انتظار + OOM من الـ buffers المتراكمة.
           12ث كافٍ لأغلب HLS streams مع هامش للشبكات البطيئة. */
        if (loadTimeoutRef.current) clearTimeout(loadTimeoutRef.current);
        loadTimeoutRef.current = setTimeout(() => {
          loadTimeoutRef.current = null;
          if (!aliveRef.current) return;
          console.warn(`[RiftPlayer] ⏱ timeout (12s) — ${playableSources[srcIdx]?.label || "?"}: ${playableSources[srcIdx]?.url?.slice(0, 80)}`);
          setError(true);
          setBuffering(false);
        }, 12000);
      } else {
        /* أي حالة غير loading → ألغِ الـ timeout */
        if (loadTimeoutRef.current) { clearTimeout(loadTimeoutRef.current); loadTimeoutRef.current = null; }
        if (e.status === "readyToPlay") {
          setBuffering(false);
          setError(false);
          terminalErrorRef.current = false;
          console.log(`[RiftPlayer] ✅ readyToPlay: ${playableSources[srcIdx]?.label || "?"} → ${playableSources[srcIdx]?.url?.slice(0, 100)}`);
          /* ── Restore position on readyToPlay (server-switch or initial resume) ──
             Doing this here (not in the polling timer) ensures we only seek AFTER
             the new stream is actually buffered, preventing conflicts with loading. */
          const swPos = switchPosRef.current;
          const initPos = initialPosition && initialPosition > 5 ? initialPosition : 0;
          const restorePos = swPos > 5 ? swPos : initPos;
          if (!resumedRef.current && restorePos > 5) {
            resumedRef.current = true;
            switchPosRef.current = 0;
            try { player.currentTime = restorePos; } catch {}
          }
          try { player.play(); } catch {}
        }
        else if (e.status === "error") {
          setError(true);
          setBuffering(false);
          /* تفاصيل الخطأ — ضرورية لتشخيص مشاكل ExoPlayer/AVPlayer مع المصادر */
          console.error(`[RiftPlayer] ❌ خطأ في التشغيل:`, JSON.stringify(e));
        }
      }
    });
    return () => {
      sub1.remove();
      sub2.remove();
      /* ⚠️ لا نُلغي loadTimeoutRef هنا — هذا الـ effect يُعاد تشغيله عند تغيير
         playableSources (وصول مصادر جديدة من الخلفية). إلغاء الـ timeout هنا
         كان يُزيل الحماية من الـ black-screen بينما المشغّل لا يزال في loading.
         الـ timeout يُلغى فقط في: Master cleanup (unmount) أو statusChange نفسه. */
    };
  }, [player, initialPosition, srcIdx]); // eslint-disable-line
  /* ✅ أُزيل playableSources من deps — كان يُعيد تسجيل الـ listeners عند كل وصول
     مصدر جديد مما يُلغي loadTimeoutRef الجاري ويُعطّل حماية الـ black-screen. */

  /* ─── Auto-advance on error ─── */
  const consecutiveErrorsRef = useRef(0);
  /* MAX_SOURCE_CYCLES: حد أقصى لعدد المصادر المُجرَّبة تلقائياً قبل الاستسلام.
     بدون هذا الحد، إذا أضافت الـ background fetches مصادر جديدة لـ frozenSources
     أثناء الدوران، يستمر RiftPlayer في المحاولة للأبد → كل مصدر يفتح buffer جديد
     → OOM بعد عدة حلقات → كراش التطبيق. */
  const MAX_SOURCE_CYCLES = 8;
  /* نحفظ onError في ref حتى لا يُعيد useEffect التنفيذ عند كل re-render للـ parent
     (الدالة الـ inline في watch.tsx تتغير مرجعاً عند كل render وهذا يلغي timeout التبديل) */
  const onErrorRef = useRef(onError);
  useEffect(() => { onErrorRef.current = onError; }, [onError]);
  /* ref دائم لـ playableSources.length — يتحدث دائماً بدون إعادة تشغيل أي effect */
  const playableCountRef = useRef(playableSources.length);
  useEffect(() => { playableCountRef.current = playableSources.length; }, [playableSources.length]);

  useEffect(() => {
    if (!error) {
      consecutiveErrorsRef.current = 0;
      setIsAutoCycling(false);
      setIsWaitingForSources(false);
      if (waitForSrcTimerRef.current) { clearTimeout(waitForSrcTimerRef.current); waitForSrcTimerRef.current = null; }
      return;
    }
    if (!aliveRef.current) return;
    /* نقرأ الطول من ref — يعكس القيمة الأحدث دون إعادة تشغيل هذا الـ effect */
    const curLen = playableCountRef.current;
    if (curLen <= 1) {
      /* ── انتظر حتى 8 ثوانٍ لوصول مصادر من الخلفية قبل الاستسلام ──
         هذا يمنع الخروج الفوري عندما يفشل المصدر الأول بينما المصادر الأخرى
         لا تزال تُحمَّل (kawaii يُشغَّل تلقائياً وقد يفشل في ثانية واحدة،
         بينما anifox/sanime/anslayer قد تصل خلال 5-15 ثانية) */
      setIsAutoCycling(true);
      setIsWaitingForSources(true);
      if (waitForSrcTimerRef.current) clearTimeout(waitForSrcTimerRef.current);
      waitForSrcTimerRef.current = setTimeout(() => {
        waitForSrcTimerRef.current = null;
        if (!aliveRef.current) return;
        setIsWaitingForSources(false);
        setIsAutoCycling(false);
        /* تحقق مجدداً — قد وصلت مصادر خلال فترة الانتظار */
        if (playableCountRef.current > 1) {
          /* وصلت مصادر جديدة → سيُعالجها الـ effect الآخر (playableSources.length) */
          return;
        }
        if (!terminalErrorRef.current) {
          terminalErrorRef.current = true;
          onErrorRef.current?.();
        }
      }, 8_000);
      return;
    }
    consecutiveErrorsRef.current += 1;
    /* لا تدور في حلقة — جرّب المصادر التالية بحد أقصى MAX_SOURCE_CYCLES */
    const nextIdx = srcIdx + 1;
    if (nextIdx >= curLen || consecutiveErrorsRef.current >= MAX_SOURCE_CYCLES) {
      setIsAutoCycling(false); // كل المصادر جُرِّبت أو وصلنا للحد الأقصى
      if (!terminalErrorRef.current) {
        terminalErrorRef.current = true;
        onErrorRef.current?.();
      }
      return;
    }
    setIsAutoCycling(true); // suppress full error UI — show silent loading instead
    const t = setTimeout(() => switchSource(nextIdx), 600);
    return () => clearTimeout(t);
  }, [error, srcIdx]); // eslint-disable-line

  /* ── عندما تصل مصادر جديدة أثناء انتظار البديل → جرّب الأول الجديد فوراً ── */
  useEffect(() => {
    if (!isWaitingForSources) return;
    if (playableSources.length <= 1) return;
    /* وصل مصدر إضافي → الغِ timer الانتظار وانتقل إليه */
    if (waitForSrcTimerRef.current) { clearTimeout(waitForSrcTimerRef.current); waitForSrcTimerRef.current = null; }
    setIsWaitingForSources(false);
    setIsAutoCycling(false);
    consecutiveErrorsRef.current = 0;
    terminalErrorRef.current = false;
    /* تبديل للمصدر التالي (index 1) */
    switchSource(1);
  }, [playableSources.length, isWaitingForSources]); // eslint-disable-line
  /* ✅ أُزيل playableSources.length من deps — كان يُعيد تشغيل هذا الـ effect عند كل
     وصول مصدر جديد من الخلفية بينما error=true، مما يرفع consecutiveErrorsRef
     بسرعة لـ MAX_SOURCE_CYCLES ويستدعي onError() قبل محاولة أي مصدر. */

  /* ─── تبديل المصدر عندما يُغيِّر الـ parent قيمة initialSourceIndex (المستخدم اختار مصدراً مختلفاً) ─── */
  const prevInitSourceIdxRef = useRef(initialSourceIndex ?? 0);
  useEffect(() => {
    const newIdx = initialSourceIndex ?? 0;
    if (newIdx !== prevInitSourceIdxRef.current) {
      prevInitSourceIdxRef.current = newIdx;
      switchSource(newIdx);
    }
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [initialSourceIndex]);

  /* ─── مزامنة refs الحالة مع polling ─── */
  useEffect(() => { isPlayingRef.current = isPlaying; }, [isPlaying]);
  useEffect(() => { isErrorRef.current = error; }, [error]);
  useEffect(() => { isEndedRef.current = isEnded; }, [isEnded]);

  /* ─── Progress polling ─── */
  useEffect(() => {
    const STALL_TIMEOUT_MS = 15000; // 15ث بدون تقدّم = stall
    progressTimer.current = setInterval(() => {
      try {
        const rawPos = player.currentTime;
        const rawDur = player.duration;
        const pos = (typeof rawPos === "number" && isFinite(rawPos) && rawPos >= 0) ? rawPos : 0;
        const dur = (typeof rawDur === "number" && isFinite(rawDur) && rawDur > 0) ? rawDur : 0;
        setPosition(pos);
        setDuration(dur);
        positionRef.current = pos;
        durationRef.current = dur;
        if (dur > 0 && onProgress) onProgress(pos, dur);
        if (dur > 0 && pos >= dur - 0.5) {
          setIsEnded(true);
          setIsPlaying(false);
        }
        /* ── Buffer bar tracking ── */
        try {
          const buf = (player as any).bufferedPosition || 0;
          setBufferedPct(dur > 0 ? Math.min(buf / dur, 1) : 0);
        } catch {}
        /* ── Stall detection: شاشة سوداء صامتة بدون error event ──
           إذا بقي المشغّل في "يشتغل" (isPlaying=true) بدون تقدّم في الـ position
           لمدة 15ث نعامله كخطأ → auto-advance للمصدر التالي.
           نتجاهل حالة الإيقاف المؤقت أو نهاية الحلقة أو حالة الخطأ الموجودة. */
        if (isPlayingRef.current && !isErrorRef.current && !isEndedRef.current && dur > 0) {
          if (pos > stallRef.current.lastPos + 0.1) {
            // تقدّم طبيعي — أعد ضبط العداد
            stallRef.current = { lastPos: pos, lastAt: Date.now() };
          } else if (stallRef.current.lastAt > 0 && Date.now() - stallRef.current.lastAt > STALL_TIMEOUT_MS) {
            console.warn(`[RiftPlayer] 🔴 stall detected (${STALL_TIMEOUT_MS / 1000}s no progress) — switching source`);
            stallRef.current = { lastPos: -1, lastAt: 0 };
            setError(true);
            setBuffering(false);
          }
        } else {
          // ليس في حالة تشغيل نشط — أعد ضبط العداد لتجنّب false positive
          stallRef.current = { lastPos: pos, lastAt: isPlayingRef.current ? Date.now() : 0 };
        }
      } catch {}
    }, 500);
    return () => { if (progressTimer.current) clearInterval(progressTimer.current); };
  }, [player, onProgress]); // eslint-disable-line

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
    if (!rawUrl) {
      setLoadedCues([]);
      /* إيقاف الترجمة تلقائياً عند التبديل لمصدر بلا subtitle —
         يمنع ظهور نص فارغ أو ترجمة قديمة من المصدر السابق */
      setSubOn(false);
      return;
    }

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
    const streamAbort = new AbortController(); // هوست هنا حتى نتمكن من إلغائه في cleanup

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
              setCueCacheEntry(url, cues); // populate URL cache (size-limited)
              setLoadedCues(cues);
              setSubOn(true);
              return;
            }
          }
        } catch {}
      }

      if (cancelled) return;

      if (cancelled) return;

      if (url.includes("translate-vtt")) {
        // 🌊 متدفق: ترجمة عربية chunk by chunk عبر SSE
        setSubLoading(true);
        setLoadedCues([]);

        let allCues: SubCue[] = [];
        _fetchStreamedSubtitles(url, (incoming) => {
          if (cancelled) return;
          allCues = _mergeCues(allCues, incoming);
          setLoadedCues(allCues);
          setSubOn(true);
          if (allCues.length > 0) setSubLoading(false);
        }, streamAbort.signal).then(() => {
          if (cancelled) return;
          setSubLoading(false);
          if (allCues.length > 0) {
            setCueCacheEntry(url, allCues);
            if (cacheKey && isTranslated) {
              AsyncStorage.setItem(cacheKey, JSON.stringify(allCues)).catch(() => {});
              /* نظّف مفاتيح الترجمة القديمة (sub-ar-*) — ابقَ على آخر 10 فقط */
              AsyncStorage.getAllKeys().then(keys => {
                const subKeys = keys.filter(k => k.startsWith("sub-ar-") && k !== cacheKey);
                if (subKeys.length > 10) {
                  AsyncStorage.multiRemove(subKeys.slice(0, subKeys.length - 10)).catch(() => {});
                }
              }).catch(() => {});
            }
          }
        }).catch(() => {
          if (!cancelled) setSubLoading(false);
        });
      } else {
        // VTT/SRT نص مباشر
        setSubLoading(true);
        setLoadedCues([]);
        fetch(url, {
          headers: { "Accept": "text/vtt,text/plain,*/*" },
          signal: AbortSignal.timeout(30_000),
        }).then(async r => {
          if (!r.ok) throw new Error(`HTTP ${r.status}`);
          if (cancelled) return;
          const text = await r.text();
          if (cancelled) return;
          const cues = parseVTT(text);
          if (cues.length > 0) setCueCacheEntry(url, cues);
          setLoadedCues(cues);
          if (cues.length > 0) setSubOn(true);
        }).catch(() => {
          if (!cancelled) setLoadedCues([]);
        }).finally(() => {
          if (!cancelled) setSubLoading(false);
        });
      }
    })();

    return () => { cancelled = true; streamAbort.abort(); setSubLoading(false); };
  }, [currentSrc?.subtitleUrl, srcIdx, anilistId, episode, subLang]); // eslint-disable-line

  /* ─── Auto-enable subtitles when source provides a subtitle URL ─── */
  useEffect(() => {
    if (currentSrc?.subtitleUrl) setSubOn(true);
  }, [currentSrc?.subtitleUrl]);

  /* ─── Screen orientation lock to landscape ─── */
  useEffect(() => {
    ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.LANDSCAPE_RIGHT)
      .then(() => { orientLockRef.current = "right"; })
      .catch(() => {});
    return () => {
      ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.PORTRAIT_UP).catch(() => {});
    };
  }, []);

  /* ─── Flip screen — rotate 180° using CSS transform (no surface recreation = no black flash) ─── */
  const flipScreen = useCallback(() => {
    setIsFlipped(f => !f);
  }, []);

  /* ─── Portrait / Landscape toggle ─── */
  const togglePortrait = useCallback(async () => {
    try {
      if (isPortrait) {
        await ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.LANDSCAPE_RIGHT);
      } else {
        await ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.PORTRAIT_UP);
      }
    } catch {}
  }, [isPortrait]);

  /* ─── Screenshot ─── */
  const rootViewRef = useRef<View>(null);
  const takeScreenshot = useCallback(async () => {
    setScreenshotFlash(true);
    if (screenshotFlashTimerRef.current) clearTimeout(screenshotFlashTimerRef.current);
    screenshotFlashTimerRef.current = setTimeout(() => { screenshotFlashTimerRef.current = null; setScreenshotFlash(false); }, 600);

    if (Platform.OS === "web") return;
    try {
      /* نستخدم require() بدل import() الديناميكي — Metro يحزمه بشكل أموثق */
      // eslint-disable-next-line @typescript-eslint/no-var-requires
      const VS = require("react-native-view-shot");
      const captureRef    = VS.captureRef    as (ref: any, opts: any) => Promise<string>;
      const captureScreen = VS.captureScreen as (opts: any) => Promise<string>;

      /* VideoView يُرسم على سطح native (SurfaceView/TextureView) — captureRef قد
         يُعطي صورة سوداء على بعض أجهزة Android؛ captureScreen يحل ذلك. */
      let uri: string | null = null;
      try { uri = await captureRef(rootViewRef, { format: "jpg", quality: 0.92, result: "tmpfile" }); } catch {}
      if (!uri) {
        try { uri = await captureScreen({ format: "jpg", quality: 0.92, result: "tmpfile" }); } catch {}
      }
      if (!uri) return;

      // eslint-disable-next-line @typescript-eslint/no-var-requires
      const ML = require("expo-media-library");
      const perm = await ML.requestPermissionsAsync({ writeOnly: true });
      if (perm.status !== "granted") {
        /* طلب إذن أولي — المرة القادمة ستُحفظ مباشرة */
        await ML.requestPermissionsAsync();
        return;
      }
      await ML.saveToLibraryAsync(uri);
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

  /* ─── Mute sync + initial maximum real volume ─── */
  useEffect(() => {
    try {
      if (isMuted) { prevVolRef.current = volumeRef.current; player.volume = 0; }
      else {
        /* expo-video يقبل 1 كأقصى مستوى حقيقي للصوت */
        player.volume = 1;
      }
    } catch {}
  }, [isMuted, player]);

  /* ─── AniSkip: جلب أوقات المقدمة/النهاية إذا لم تُوفَّر بالمصدر ─── */
  useEffect(() => {
    if (skipIntroProp || skipOutroProp || !anilistId || !episode) return;
    const ctrl = new AbortController();
    (async () => {
      try {
        // 1. Get MAL ID from AniList
        const alRes = await fetch(`${getBaseUrl()}/api/anilist`, {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ query: "query($id:Int){Media(id:$id){idMal}}", variables: { id: anilistId } }),
          signal: ctrl.signal,
        });
        const alData = await alRes.json();
        const malId: number | null = alData?.data?.Media?.idMal;
        if (!malId || ctrl.signal.aborted) return;
        // 2. Fetch skip times from AniSkip
        const skipRes = await fetch(
          `https://api.aniskip.com/v1/skip-times/${malId}/${episode}?types[]=op&types[]=ed`,
          { signal: ctrl.signal },
        );
        const skipData = await skipRes.json();
        if (ctrl.signal.aborted || !skipData?.found) return;
        for (const r of (skipData.results ?? [])) {
          const s = { start: r.interval.start_time, end: r.interval.end_time };
          if (r.skip_type === "op")  setFetchedSkipIntro(s);
          if (r.skip_type === "ed")  setFetchedSkipOutro(s);
        }
      } catch {}
    })();
    return () => ctrl.abort();
  }, [anilistId, episode]);

  /* ─── Auto-fetch subtitles via subtitle-tracks API (wyzie.ru + SubDL + HiAnime) ─── */
  useEffect(() => {
    if (!anilistId || !episode) return;
    if (subCues?.length) return; // already provided as prop
    const ctrl = new AbortController(); // يُلغى عند unmount أو تغيير الحلقة
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
          { signal: ctrl.signal },
        );
        if (!res.ok || ctrl.signal.aborted) return;
        const data = await res.json();
        const tracks: any[] = data.tracks || [];
        if (ctrl.signal.aborted || tracks.length === 0) return;

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
          signal: ctrl.signal,
        });
        if (!vttRes.ok || ctrl.signal.aborted) return;

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
          if (ctrl.signal.aborted) return;
          cues = parseVTT(text);
        }

        if (cues.length > 0 && !ctrl.signal.aborted) {
          setLoadedCues(cues);
          /* لا تُفعَّل الترجمة الخارجية تلقائياً لمصادر تحتوي ترجمة مدمجة (isArabic)
             مثل KW/AW/AF/SA/FX — المستخدم يُفعّلها يدوياً إن أراد */
          if (!isArabicRef.current) setSubOn(true);
          setAutoSubSource(track.lang === "ar" ? "wyzie-ar" : "wyzie-en-translated");
        }
      } catch {}
      finally { if (!ctrl.signal.aborted) setSubLoading(false); }
    })();
    return () => { ctrl.abort(); setSubLoading(false); };
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
      if (!aliveRef.current) return;
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

  /* ─── Back: lock to portrait then go back ─── */
  const handleBack = useCallback(() => {
    ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.PORTRAIT_UP).catch(() => {});
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

  /* seekSilent: نفس seek لكن بدون إظهار controls (للـ double-tap والـ gestures) */
  const seekSilentRef = useRef<(s: number) => void>(() => {});
  const seekSilent = useCallback((secs: number) => {
    const target = Math.max(0, Math.min(secs, durationRef.current || duration));
    try { player.currentTime = target; setPosition(target); } catch {}
  }, [player, duration]);
  seekSilentRef.current = seekSilent;

  const changeSpeed = useCallback((s: number) => {
    setSpeed(s);
    try { player.playbackRate = s; } catch {}
    setShowSpeedSheet(false);
    fadeIn();
  }, [player, fadeIn]);

  const switchSource = useCallback((idx: number) => {
    if (!aliveRef.current) return;
    const safeIdx = Math.min(Math.max(idx, 0), Math.max(playableSources.length - 1, 0));
    const newSrc = playableSources[safeIdx];
    if (!newSrc) {
      setError(true);
      setBuffering(false);
      return;
    }
    /* ألغِ timeout التحميل القديم عند التبديل */
    if (loadTimeoutRef.current) { clearTimeout(loadTimeoutRef.current); loadTimeoutRef.current = null; }
    /* ألغِ waitForSrcTimer — يجب ألا يستدعي onError() بعد تبديل يدوي أو تلقائي جديد */
    if (waitForSrcTimerRef.current) { clearTimeout(waitForSrcTimerRef.current); waitForSrcTimerRef.current = null; }
    /* صفّر consecutiveErrorsRef مباشرةً هنا (بدون الاعتماد على async state update)
       حتى لا يُحسب الخطأ القادم ضمن دورة الأخطاء السابقة */
    consecutiveErrorsRef.current = 0;
    setIsWaitingForSources(false);
    /* ── Save current position before replacing source ── */
    const savedPos = player.currentTime || 0;
    if (savedPos > 5) switchPosRef.current = savedPos;
    console.log(`[Nova Mobile] تبديل المصدر → ${newSrc.label || "مجهول"} (${safeIdx + 1}/${playableSources.length}): ${newSrc.url?.slice(0, 120)}`);
    setSrcIdx(safeIdx);
    terminalErrorRef.current = false;
    setIsAutoCycling(false);
    setIsEnded(false);
    resumedRef.current = false;
    /* إعادة ضبط كاشف الـ stall عند كل تبديل مصدر */
    stallRef.current = { lastPos: -1, lastAt: 0 };
    /* مسح الترجمات القديمة فوراً حتى لا تظهر مع المصدر الجديد */
    setLoadedCues([]);
    /* Reset whisper status when source changes */
    setWhisperStatus("idle");
    setWhisperLang("");

    /* ⚠️ التحقق من صلاحية الـ URL قبل تمريره لـ ExoPlayer/AVPlayer —
       URL فارغ أو بدون بروتوكول يُسبِّب native crash بدل statusChange→error */
    const srcUrl = newSrc?.url;
    if (!isValidPlayerSourceUrl(srcUrl)) {
      console.warn(`[RiftPlayer] ⛔ URL غير صالح للمصدر ${safeIdx + 1}: "${srcUrl?.slice(0, 60) ?? "فارغ"}"`);
      setError(true);
      setBuffering(false);
      return;
    }

    setError(false);
    setBuffering(true);
    try {
      /* نمرّر URL string فقط — VPS proxy يُضيف Referer/Origin داخلياً */
      player.replace(srcUrl as any);
      /* play() is triggered in statusChange → readyToPlay once the stream is buffered */
    } catch (e) {
      console.warn("[RiftPlayer] player.replace() رمى استثناء:", e);
      setError(true);
      setBuffering(false);
    }
  }, [player, playableSources]);

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
    /* seekSilent: لا نُظهر controls عند الـ double-tap */
    seekSilent(side === "R" ? positionRef.current + seekDurationRef.current : positionRef.current - seekDurationRef.current);
  }, [seekSilent, dblTapLeft, dblTapRight]);

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
          /* السحب للأعلى يرفع الصوت — dy سالب عند الرفع → delta موجب */
          const delta = -gs.dy / (H * 0.40);
          const newVol = Math.max(0, Math.min(1, gestureStartVal.current + delta));
          volumeRef.current = newVol;
          setVolume(newVol);
          setFeedback({ type: "volume", value: newVol });
          /* ضبط صوت المشغّل مباشرةً (يعمل دائماً بدون native module) */
          try { player.volume = newVol; } catch {}
          /* محاولة ضبط صوت النظام أيضاً عبر VolumeManager (يعمل إذا توفّر native module) */
          VolumeManager.setVolume(newVol, { showUI: false }).catch(() => {});
        } else {
          /* السحب للأعلى يرفع السطوع — dy سالب عند الرفع → delta موجب */
          const delta = -gs.dy / (H * 0.40);
          const newBri = Math.max(0.05, Math.min(1, gestureStartVal.current + delta));
          brightnessRef.current = newBri;
          setBrightness(newBri);
          setFeedback({ type: "brightness", value: newBri });
          /* ضبط سطوع الشاشة الحقيقي عبر expo-brightness */
          Brightness.setBrightnessAsync(newBri).catch(() => {});
        }
      },
      onPanResponderRelease: (_, gs) => {
        if (gestureTypeRef.current === "seek") {
          const seekDelta = (gs.dx / W) * 120;
          const newPos = Math.max(0, Math.min(durationRef.current, gestureStartPosRef.current + seekDelta));
          /* seekSilent: لا نُظهر controls عند إنهاء سحب الـ seek */
          seekSilentRef.current(newPos);
        }
        gestureTypeRef.current = null;
        gestureSide.current = null;
        if (feedbackTimer.current) clearTimeout(feedbackTimer.current);
        feedbackTimer.current = setTimeout(() => setFeedback(null), 900);
      },
    })
  ).current;

  /* ─── Seekbar drag PanResponder ─── */
  /* شريط التقدم يسير من اليسار إلى اليمين (LTR) — المعيار العالمي لمشغلات الفيديو.
     نستخدم gestureState.moveX (إحداثي مطلق على الشاشة) بدلاً من locationX
     لأن locationX على Android غير موثوق أثناء onPanResponderMove خارج حدود الـ View. */
  const _nRTL = Platform.OS !== "web" && I18nManager.isRTL;
  /* شريط التقدم يسير دائماً من اليسار (0%) إلى اليمين (100%) بغض النظر عن RTL —
     هذا هو المعيار العالمي لمشغلات الفيديو حتى في التطبيقات العربية */
  const _calcPctFromAbsolute = (absoluteX: number): number => {
    const localX = absoluteX - barPageX.current;
    const raw = Math.min(1, Math.max(0, localX) / Math.max(1, barWidth.current));
    return _nRTL ? 1 - raw : raw;
  };
  const seekBarPan = useRef(
    PanResponder.create({
      onStartShouldSetPanResponder: () => true,
      onMoveShouldSetPanResponder: () => true,
      onPanResponderGrant: (e) => {
        const grantPageX  = e.nativeEvent.pageX;
        const grantLocX   = e.nativeEvent.locationX; // نسبي للـ View — أدق من pageX للنقرات السريعة
        lastMoveX.current        = grantPageX;
        grantLocationXRef.current = grantLocX;
        // إلغاء أي timer معلّق من الإفلات السابق
        if (postSeekTimer.current) { clearTimeout(postSeekTimer.current); postSeekTimer.current = null; }
        setPostSeekPct(null);
        setIsDragging(true);

        /* حساب فوري: نفضّل locationX (لا يعتمد على barPageX) إن كان ضمن حدود الشريط */
        const bw = barWidth.current;
        if (grantLocX >= 0 && grantLocX <= bw + 4) {
          const raw = Math.min(1, Math.max(0, grantLocX / Math.max(1, bw)));
          setDragPct(_nRTL ? 1 - raw : raw);
        } else {
          setDragPct(Math.max(0, Math.min(1, _calcPctFromAbsolute(grantPageX))));
        }

        /* تحديث القياسات بشكل غير متزامن (يُصلح إن تغيّر تخطيط الشريط) */
        barRef.current?.measureInWindow((px, _py, pw) => {
          if (px >= 0) barPageX.current = px;
          if (pw > 1)  barWidth.current  = pw;
        });
      },
      onPanResponderMove: (_, gs) => {
        /* gs.moveX = الإحداثي المطلق للإصبع على الشاشة — موثوق على iOS وAndroid */
        const x = gs.moveX;
        if (x > 0) lastMoveX.current = x;
        const pct = _calcPctFromAbsolute(x > 0 ? x : lastMoveX.current);
        setDragPct(Math.max(0, Math.min(1, pct)));
      },
      onPanResponderRelease: (_, gs) => {
        /* نقرة سريعة (dx < 8px): نفضّل locationX المحفوظ — لا يعتمد على barPageX/barWidth.
           لكن locationX قد يكون 0 على Android لأسباب داخلية (موثّق)؛ نتحقق أن الصفر
           منطقي فعلاً (الطرف الأيسر من الشريط) وإلا نرجع لحساب pageX. */
        let safePct: number;
        const isPureTap = Math.abs(gs.dx) < 8 && Math.abs(gs.dy) < 8;
        if (isPureTap) {
          const loc = grantLocationXRef.current;
          const bw  = barWidth.current;
          /* اعتبر locationX صالحاً إن كان موجباً، أو صفراً مع نقرة في الطرف الأيسر فعلاً */
          const isEdgeTap = lastMoveX.current <= barPageX.current + 4;
          const locValid  = loc > 0 || (loc === 0 && isEdgeTap);
          if (locValid && bw > 1) {
            const raw = Math.min(1, Math.max(0, loc / bw));
            safePct = _nRTL ? 1 - raw : raw;
          } else {
            /* fallback: pageX-based (Android RTL أو locationX=0 غير طرفي) */
            const x = lastMoveX.current > 0 ? lastMoveX.current : gs.x0;
            safePct = Math.max(0, Math.min(1, _calcPctFromAbsolute(x)));
          }
        } else {
          const x = gs.moveX > 0 ? gs.moveX : lastMoveX.current;
          safePct = Math.max(0, Math.min(1, _calcPctFromAbsolute(x)));
        }
        seekRef.current(safePct * durationRef.current);
        // نُبقي على الموضع المطلوب مرئياً 800ms ريثما يتحدث الـ polling (كل 500ms)
        // هذا يمنع "الخط الوهمي" الذي يملأ ثم يرجع عند الإفلات
        setPostSeekPct(safePct);
        setIsDragging(false);
        if (postSeekTimer.current) clearTimeout(postSeekTimer.current);
        postSeekTimer.current = setTimeout(() => {
          setPostSeekPct(null);
          postSeekTimer.current = null;
        }, 800);
      },
    })
  ).current;

  /* ─── Skip intro/outro logic ─── */
  const SKIP_BTN_LEAD = 3; // ثوانٍ قبل بداية النطاق لإظهار الزر
  /* يظهر الزر عند اقتراب المشغّل من بداية المقدمة (LEAD ثوانٍ قبلها) وحتى نهايتها */
  const inIntroRange = !!skipIntro && !skipIntroDismissed
    && position >= Math.max(0, (skipIntro.start ?? 0) - SKIP_BTN_LEAD)
    && position < skipIntro.end;
  // النهاية لا تظهر أثناء المقدمة، ولا تظهر قبل بدء نطاق النهاية — زر واحد في كل مرة
  const inOutroRange = !!skipOutro && !skipOutroDismissed && !inIntroRange
    && position >= Math.max(0, skipOutro.start - SKIP_BTN_LEAD)
    && position < skipOutro.end;

  /* إعادة تعيين الإخفاء عند تغيير المصدر — كل حلقة/مصدر جديد يُعيد الزر للظهور */
  useEffect(() => {
    setSkipIntroDismissed(false);
    setSkipOutroDismissed(false);
  }, [srcIdx]);

  const doSkipIntro = useCallback(() => {
    if (skipIntro) seekSilent(skipIntro.end);
    setSkipIntroDismissed(true); // يختفي بعد ضغط المستخدم
  }, [skipIntro, seekSilent]);

  const doSkipOutro = useCallback(() => {
    // تخطي النهاية = القفز لنهاية نطاق الـ outro فقط (لا الانتقال للحلقة التالية)
    if (skipOutro) seekSilent(skipOutro.end);
    setSkipOutroDismissed(true);
  }, [skipOutro, seekSilent]);

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
          Animated.timing(controlsOpacity, { toValue: 0, duration: 200, useNativeDriver: true }).start(() => setShowControls(false));
          if (hideTimer.current) clearTimeout(hideTimer.current);
        } else {
          fadeIn();
        }
      }, 180);
    }
  }, [isLocked, showControls, triggerDblTap, fadeIn]);

  /* ─── Long press: 2× speed ─── */
  const handleLongPress = useCallback(() => {
    prevSpeedRef.current = speed;
    setLongPressSpeed(true);
    try { player.playbackRate = 2; } catch {}
  }, [speed, player]);

  const handleLongPressRelease = useCallback(() => {
    if (!longPressSpeed) return;
    setLongPressSpeed(false);
    try { player.playbackRate = prevSpeedRef.current; } catch {}
  }, [longPressSpeed, player]);

  /* ─── Progress ─── */
  const progress = (duration > 0 && isFinite(position) && isFinite(duration))
    ? Math.min(Math.max(position / duration, 0), 1)
    : 0;

  /* ─── Volume sync: player يعمل دائماً بـ 100% — النظام يتحكم بالصوت الفعلي ─── */
  useEffect(() => {
    volumeRef.current = volume;
    /* player.volume=1 دائماً: VolumeManager.setVolume يضبط صوت الوسائط في النظام
       فلا نحتاج ضرب المشغّل بعامل إضافي */
    try { player.volume = 1; } catch {}
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

  /* لا نرجع null عند غياب currentSrc — يظهر شاشة رمادية بيضاء.
     نعرض loading spinner بدلاً حتى تصل المصادر من الخلفية. */
  if (!currentSrc) return (
    <View style={{ flex: 1, backgroundColor: "#000", alignItems: "center", justifyContent: "center" }}>
      <ActivityIndicator size="large" color="rgba(167,139,250,0.9)" />
      <Text style={{ color: "rgba(255,255,255,0.45)", marginTop: 12, fontSize: 13, fontFamily: "System" }}>
        جاري تحميل المشغّل…
      </Text>
    </View>
  );

  return (
    <View ref={rootViewRef} style={[s.root, isFlipped && { transform: [{ rotate: "180deg" }] }]}>
      <StatusBar hidden />
      {/* ── Video ── */}
      <VideoView
        player={player}
        style={s.video}
        nativeControls={false}
        contentFit={contentFit}
      />

      {/* ── Brightness: يُضبط عبر expo-brightness (سطوع الشاشة الحقيقي) — لا حاجة لـ overlay ── */}

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
            {isWaitingForSources
              ? "جاري البحث عن مصادر بديلة…"
              : `جاري تجربة مصدر آخر… (${consecutiveErrorsRef.current}/${sources.length})`
            }
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

      {/* ── Volume feedback ── */}
      {feedback?.type === "volume" && (
        <View style={s.feedbackRight} pointerEvents="none">
          <View style={s.feedbackBarWrap}>
            <View style={[
              s.feedbackBarFill,
              { height: `${Math.min(Math.round(feedback.value * 100), 100)}%` as any },
            ]} />
          </View>
          <View style={s.feedbackPill}>
            <Ionicons
              name={feedback.value === 0 ? "volume-mute" : feedback.value >= 0.6 ? "volume-high" : "volume-medium"}
              size={12}
              color="rgba(255,255,255,0.75)"
            />
            <Text style={s.feedbackPillText}>
              {Math.round(feedback.value * 100)}%
            </Text>
          </View>
        </View>
      )}

      {/* ── Brightness feedback — النسبة تعكس سطوع الشاشة الحقيقي 0..100% ── */}
      {feedback?.type === "brightness" && (
        <View style={s.feedbackLeft} pointerEvents="none">
          <View style={s.feedbackBarWrap}>
            <View style={[s.feedbackBarFillY, { height: `${Math.round(feedback.value * 100)}%` as any }]} />
          </View>
          <View style={s.feedbackPill}>
            <Ionicons name="sunny" size={12} color="rgba(253,224,71,0.85)" />
            <Text style={s.feedbackPillText}>{Math.round(feedback.value * 100)}%</Text>
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


      {/* ── Lock screen: mini dot (always visible when locked, no unlock shown) ── */}
      {isLocked && !showUnlock && (
        <View style={s.lockDot} pointerEvents="none">
          <Ionicons name="lock-closed" size={13} color="rgba(251,191,36,0.65)" />
        </View>
      )}

      {/* ── Lock screen: elegant swipe-down bar (appears on tap) ── */}
      {isLocked && showUnlock && (
        <Pressable
          style={s.swipeUnlockBar}
          onPress={() => { setIsLocked(false); setShowUnlock(false); }}
        >
          <View style={s.swipeChevrons}>
            <Ionicons name="chevron-down" size={18} color="rgba(251,191,36,0.90)" />
            <Ionicons name="chevron-down" size={14} color="rgba(251,191,36,0.55)" />
            <Ionicons name="chevron-down" size={10} color="rgba(251,191,36,0.25)" />
          </View>
          <View style={s.swipeUnlockIconWrap}>
            <Ionicons name="lock-open-outline" size={20} color="#fbbf24" />
          </View>
          <Text style={s.swipeUnlockLabel}>{"اسحب\nلفتح"}</Text>
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
            <Pressable onPress={() => { setIsEnded(false); onBack(); }} style={s.endBackBtn}>
              <Ionicons name="arrow-back" size={16} color="rgba(255,255,255,0.65)" />
              <Text style={[s.endBtnLabel, { color: "rgba(255,255,255,0.65)" }]}>رجوع</Text>
            </Pressable>
            <Pressable
              onPress={() => {
                setIsEnded(false);
                try { player.currentTime = 0; } catch {}
                if (replayTimeoutRef.current) clearTimeout(replayTimeoutRef.current);
                replayTimeoutRef.current = setTimeout(() => {
                  replayTimeoutRef.current = null;
                  if (!aliveRef.current) return; // لا تلمس native player بعد unmount
                  try { player.play(); } catch {}
                }, 120);
              }}
              style={s.endReplayBtn}
            >
              <Ionicons name="refresh" size={16} color="#fff" />
              <Text style={s.endBtnLabel}>إعادة</Text>
            </Pressable>
            {onNextEpisode && ((episode ?? 0) < totalEps) && (
              <Pressable onPress={() => { setAutoCountdown(0); aliveRef.current = false; onNextEpisode!(); }} style={s.endNextBtn}>
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
          {(() => {
            // في RTL الأصلي (هاتف عربي): flexDirection:"row" يعرض من اليمين لليسار تلقائياً
            // الأول في DOM → يظهر على اليمين، الأخير → على اليسار
            // نحل الترتيب فقط (لا نغير flexDirection)
            const nativeRTL = Platform.OS !== "web" && I18nManager.isRTL;
            const infoBlock = (
              <View style={[s.topInfoWrap, nativeRTL && { alignItems: "flex-end" }]}>
                {title ? (
                  <Text style={s.topInfoTitle} numberOfLines={1}>{title}</Text>
                ) : null}
                <View style={[s.topInfoRow, nativeRTL && { flexDirection: "row-reverse" }]}>
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
                  <View style={[s.autoSubBadge, nativeRTL && { alignSelf: "flex-end" }]}>
                    <Text style={s.autoSubBadgeText}>✦ ترجمة {autoSubSource === "jimaku" ? "Jimaku" : autoSubSource === "animetosho" ? "Animetosho" : "تلقائية"}</Text>
                  </View>
                ) : null}
              </View>
            );
            // في RTL: زر الإغلاق أول (يظهر أقصى اليمين) ← الصحيح للعربية
            // في LTR: زر الإغلاق آخر (يظهر أقصى اليمين) ← الصحيح للـ web
            const ccBtn = (
              <Pressable
                onPress={() => setShowSubPanel(true)}
                style={[s.topIconBtn, s.topCCBtn, subOn && s.topCCBtnActive]}
                hitSlop={10}
              >
                <Ionicons
                  name="logo-closed-captioning"
                  size={18}
                  color={subOn ? "#c4b5fd" : "rgba(255,255,255,0.75)"}
                />
              </Pressable>
            );
            const btnsBlock = nativeRTL ? (
              <View style={s.topRightRow}>
                <Pressable onPress={handleBack} style={s.topCloseBtn} hitSlop={10}>
                  <Ionicons name="close" size={21} color="rgba(239,68,68,0.90)" />
                </Pressable>
                <Pressable onPress={togglePortrait} style={[s.topRotateBtn, isPortrait && s.topRotateBtnActive]} hitSlop={10}>
                  <Ionicons
                    name={isPortrait ? "phone-landscape-outline" : "phone-portrait-outline"}
                    size={17}
                    color={isPortrait ? "#c4b5fd" : "rgba(255,255,255,0.85)"}
                  />
                </Pressable>
                {ccBtn}
                <Pressable onPress={takeScreenshot} style={s.topIconBtn} hitSlop={10}>
                  <Ionicons name="camera-outline" size={18} color="rgba(255,255,255,0.85)" />
                </Pressable>
              </View>
            ) : (
              <View style={s.topRightRow}>
                <Pressable onPress={takeScreenshot} style={s.topIconBtn} hitSlop={10}>
                  <Ionicons name="camera-outline" size={18} color="rgba(255,255,255,0.85)" />
                </Pressable>
                {ccBtn}
                <Pressable onPress={togglePortrait} style={[s.topRotateBtn, isPortrait && s.topRotateBtnActive]} hitSlop={10}>
                  <Ionicons
                    name={isPortrait ? "phone-landscape-outline" : "phone-portrait-outline"}
                    size={17}
                    color={isPortrait ? "#c4b5fd" : "rgba(255,255,255,0.85)"}
                  />
                </Pressable>
                <Pressable onPress={handleBack} style={s.topCloseBtn} hitSlop={10}>
                  <Ionicons name="close" size={21} color="rgba(239,68,68,0.90)" />
                </Pressable>
              </View>
            );
            return (
              <LinearGradient
                colors={["rgba(0,0,0,0.82)", "transparent"]}
                style={[s.topBar, { paddingTop: Platform.OS === "web" ? 12 : insets.top + 6 }]}
              >
                {/* RTL: مجموعة الأزرار أولاً (تظهر يميناً)، معلومات ثانياً (تظهر يساراً) */}
                {nativeRTL ? <>{btnsBlock}{infoBlock}</> : <>{infoBlock}{btnsBlock}</>}
              </LinearGradient>
            );
          })()}

          {/* ════ CENTER ════ */}
          <View style={s.centerOverlay} pointerEvents="box-none">
            {isPortrait ? (
              /* وضع عمودي: أزرار التخطي + التشغيل */
              <View style={s.centerPortraitRow}>
                {/* زر التخطي للأمام — الأول في JSX → يظهر على اليمين في RTL */}
                <View style={{ alignItems: "center", gap: 4 }}>
                  <Pressable onPress={() => seek(positionRef.current + 10)} style={s.centerSeekBtn} hitSlop={14}>
                    <Ionicons name="play-forward" size={24} color="#fff" />
                  </Pressable>
                  <Text style={s.centerSeekLabel}>10</Text>
                </View>
                {/* زر المنتصف: play/pause/spinner */}
                <View style={{ alignItems: "center", justifyContent: "center" }}>
                  {!isPlaying && !buffering && <PulseRing />}
                  <Pressable onPress={togglePlay} style={s.centerPlayBtn} hitSlop={16}>
                    {buffering && !error
                      ? <ActivityIndicator size={32} color="#fff" />
                      : <Ionicons
                          name={isPlaying ? "pause" : "play"}
                          size={36} color="#fff"
                          style={isPlaying ? undefined : { transform: [{ translateX: 3 }] }}
                        />}
                  </Pressable>
                </View>
                {/* زر الرجوع — الأخير في JSX → يظهر على اليسار في RTL */}
                <View style={{ alignItems: "center", gap: 4 }}>
                  <Pressable onPress={() => seek(positionRef.current - 10)} style={s.centerSeekBtn} hitSlop={14}>
                    <Ionicons name="play-back" size={24} color="#fff" />
                  </Pressable>
                  <Text style={s.centerSeekLabel}>10</Text>
                </View>
              </View>
            ) : (
              /* وضع أفقي: play/pause في المنتصف دائماً */
              <View style={s.centerLandscapeWrap}>
                <View style={{ alignItems: "center", justifyContent: "center" }}>
                  {!isPlaying && !buffering && <PulseRing />}
                  <Pressable onPress={togglePlay} style={s.centerPlayBtn} hitSlop={16}>
                    {buffering && !error
                      ? <ActivityIndicator size={32} color="#fff" />
                      : <Ionicons
                          name={isPlaying ? "pause" : "play"}
                          size={36} color="#fff"
                          style={isPlaying ? undefined : { transform: [{ translateX: 3 }] }}
                        />}
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
            {/* أزرار التخطي انتقلت إلى overlay مستقل خارج showControls */}

            {/* الوقت — الوقت الحالي أقصى اليسار الفيزيائي، المدة الكلية أقصى اليمين الفيزيائي */}
            <View style={{ position: "relative", height: 18, marginBottom: 2 }}>
              <Text style={[s.timeText, { position: "absolute", [_nRTL ? "right" : "left"]: 0 }]}>{fmtTime(position)}</Text>
              <Text style={[s.timeText, { position: "absolute", [_nRTL ? "left" : "right"]: 0, opacity: 0.45 }]}>{fmtTime(duration)}</Text>
            </View>

            {/* شريط التقدم — يسار=بداية، يمين=نهاية (LTR دائماً، المعيار العالمي لمشغلات الفيديو)
                direction:'ltr' يُجبر Yoga على تخطيط LTR حتى في التطبيقات العربية RTL،
                مما يجعل left:0%→100% من اليسار الفيزيائي وليس من يمين RTL.
                هذا يُصلح: (1) ملء الشريط (2) موضع الـ thumb (3) حساب الـ seek */}
            {(() => {
              const rawFill = (isDragging ? dragPct : postSeekPct !== null ? postSeekPct : progress) * 100;
              const fillPct = Math.min(Math.max(isFinite(rawFill) ? rawFill : 0, 0), 100);
              const thumbPct = fillPct;
              const tooltipPct = Math.max(4, Math.min(88, fillPct - 6));
              return (
                <View
                  ref={barRef}
                  style={[s.progressWrap, isDragging && s.progressWrapDragging,
                    _nRTL && { transform: [{ scaleX: -1 }] },
                  ]}
                  onLayout={(e) => {
                    barWidth.current = e.nativeEvent.layout.width || 1;
                    // مسح أي seek مؤقت عند تغيير الاتجاه (portrait↔landscape) لتجنب الإحداثيات القديمة
                    setPostSeekPct(null);
                    setIsDragging(false);
                    barRef.current?.measureInWindow((px) => { if (px >= 0) barPageX.current = px; });
                  }}
                  {...seekBarPan.panHandlers}
                >
                  <View style={s.progressBg} />
                  {bufferedPct > 0 && (
                    <View style={[s.bufferBar, { left: 0, width: `${bufferedPct * 100}%` as any }]} />
                  )}
                  {markerPctIntro && (
                    <View style={[s.skipMarker, {
                      left: `${markerPctIntro.start}%` as any,
                      width: `${Math.max(1.2, markerPctIntro.end - markerPctIntro.start)}%` as any,
                    }]} />
                  )}
                  {markerPctOutro && (
                    <View style={[s.skipMarker, {
                      left: `${markerPctOutro.start}%` as any,
                      width: `${Math.max(1.2, markerPctOutro.end - markerPctOutro.start)}%` as any,
                    }]} />
                  )}
                  <LinearGradient
                    colors={["#6D28D9", "#8B5CF6", "#a78bfa"]}
                    start={_nRTL ? { x: 1, y: 0 } : { x: 0, y: 0 }}
                    end={_nRTL ? { x: 0, y: 0 } : { x: 1, y: 0 }}
                    style={[s.progressFill, { left: 0, width: `${fillPct}%` as any }]}
                  />
                  <View style={[
                    s.thumb,
                    { left: `${thumbPct}%` as any },
                    isDragging && s.thumbDragging,
                  ]} />
                  {isDragging && (
                    <View style={[s.dragTooltip, { left: `${tooltipPct}%` as any },
                      _nRTL && { transform: [{ scaleX: -1 }] },
                    ]}>
                      <Text style={s.dragTooltipText}>{fmtTime(dragPct * (durationRef.current || duration))}</Text>
                    </View>
                  )}
                </View>
              );
            })()}

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

              {/* وسط: تخطي + تشغيل (وضع أفقي فقط) — "10" خارج الدائرة للمحاذاة الصحيحة */}
              <View style={s.bottomCenter}>
                {!isPortrait && (
                  <View style={{ alignItems: "center", gap: 2 }}>
                    <Pressable onPress={() => seek(positionRef.current + 10)} style={s.seekCtrlBtn} hitSlop={10}>
                      <Ionicons name="play-forward" size={17} color="rgba(255,255,255,0.90)" />
                    </Pressable>
                    <Text style={s.seekCtrlLabel}>10</Text>
                  </View>
                )}
                <Pressable onPress={togglePlay} style={s.bottomPlayBtn} hitSlop={10}>
                  <Ionicons name={isPlaying ? "pause" : "play"} size={23} color="#fff" style={isPlaying ? undefined : { transform: [{ translateX: 2 }] }} />
                </Pressable>
                {!isPortrait && (
                  <View style={{ alignItems: "center", gap: 2 }}>
                    <Pressable onPress={() => seek(positionRef.current - 10)} style={s.seekCtrlBtn} hitSlop={10}>
                      <Ionicons name="play-back" size={17} color="rgba(255,255,255,0.90)" />
                    </Pressable>
                    <Text style={s.seekCtrlLabel}>10</Text>
                  </View>
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


      {/* ════════════════════════════════════════
          SUBTITLE SETTINGS PANEL (slides from right)
      ════════════════════════════════════════ */}
      {showSubPanel && (
        <Pressable
          style={[StyleSheet.absoluteFill, s.subPanelBackdrop, { zIndex: 60 }]}
          onPress={() => setShowSubPanel(false)}
        >
          <Animated.View
            style={[s.subPanel, isPortrait ? s.subPanelPortrait : s.subPanelLandscape, { transform: [{ translateX: subPanelX }] }]}
          >
            <Pressable onPress={() => {}} style={{ flex: 1 }}>
              {/* Header */}
              <View style={s.subPanelHeader}>
                <Text style={s.subPanelTitle}>إعدادات الترجمة</Text>
                <Pressable style={s.subPanelClose} onPress={() => setShowSubPanel(false)} hitSlop={10}>
                  <Ionicons name="close" size={16} color="rgba(255,255,255,0.70)" />
                </Pressable>
              </View>
              <View style={s.subPanelDivider} />

              <ScrollView showsVerticalScrollIndicator={false} contentContainerStyle={[s.subPanelBody, { paddingBottom: 32 }]}>

                {/* ── تشغيل / إيقاف ── */}
                <View style={s.subRow}>
                  <View style={s.subRowLeft}>
                    <Ionicons name="logo-closed-captioning" size={16} color="rgba(255,255,255,0.70)" />
                    <Text style={s.subRowLabel}>الترجمة</Text>
                  </View>
                  <Pressable style={[s.subToggle, subOn && s.subToggleOn]} onPress={() => setSubOn(v => !v)}>
                    <View style={[s.subToggleThumb, subOn && s.subToggleThumbOn]} />
                  </Pressable>
                </View>

                {/* ── اللغة ── */}
                <Text style={s.subSectionLabel}>اللغة</Text>
                <View style={s.subChipRow}>
                  {(["ar", "en"] as const).map(lng => (
                    <Pressable
                      key={lng}
                      style={[s.subChip, subLang === lng && subOn && s.subChipActive]}
                      onPress={() => { setSubLang(lng); setSubOn(true); fadeIn(); }}
                    >
                      <Text style={[s.subChipText, subLang === lng && subOn && s.subChipTextActive]}>
                        {lng === "ar" ? "عربي" : "إنجليزي"}
                      </Text>
                    </Pressable>
                  ))}
                </View>

                {/* ── حجم الخط ── */}
                <Text style={s.subSectionLabel}>حجم الخط</Text>
                <View style={s.subChipRow}>
                  {FONT_SIZES.map(({ sz, label, name }) => (
                    <Pressable
                      key={sz}
                      style={[s.subSizeChip, subSettings.fontSize === sz && s.subChipActive]}
                      onPress={() => updateSubSettings({ fontSize: sz })}
                    >
                      <Text style={[s.subSizeLabel, { fontSize: sz * 0.85 }, subSettings.fontSize === sz && s.subChipTextActive]}>{label}</Text>
                      <Text style={s.subSizeNameText}>{name}</Text>
                    </Pressable>
                  ))}
                </View>

                {/* ── اللون ── */}
                <Text style={s.subSectionLabel}>اللون</Text>
                <View style={s.subColorRow}>
                  {SUB_COLORS.map(({ v, label }) => (
                    <Pressable
                      key={v}
                      style={[s.subColorDot, { backgroundColor: v }, subSettings.color === v && s.subColorDotActive]}
                      onPress={() => updateSubSettings({ color: v })}
                      hitSlop={6}
                    >
                      {subSettings.color === v && <Ionicons name="checkmark" size={14} color={v === "#ffffff" ? "#000" : "#fff"} />}
                    </Pressable>
                  ))}
                </View>

                {/* ── الموضع ── */}
                <Text style={s.subSectionLabel}>الموضع</Text>
                <View style={s.subChipRow}>
                  {SUB_POSITIONS.map(({ v, label, icon }) => (
                    <Pressable
                      key={v}
                      style={[s.subChip, subSettings.position === v && s.subChipActive]}
                      onPress={() => updateSubSettings({ position: v })}
                    >
                      <Text style={s.subPosIcon}>{icon}</Text>
                      <Text style={[s.subChipText, subSettings.position === v && s.subChipTextActive]}>{label}</Text>
                    </Pressable>
                  ))}
                </View>

                {/* ── خلفية النص ── */}
                <Text style={s.subSectionLabel}>خلفية النص</Text>
                <View style={s.subChipRow}>
                  {([{ v: 0, l: "بلا" }, { v: 0.45, l: "خفيفة" }, { v: 0.82, l: "داكنة" }]).map(({ v, l }) => (
                    <Pressable
                      key={v}
                      style={[s.subChip, subSettings.bgOpacity === v && s.subChipActive]}
                      onPress={() => updateSubSettings({ bgOpacity: v })}
                    >
                      <Text style={[s.subChipText, subSettings.bgOpacity === v && s.subChipTextActive]}>{l}</Text>
                    </Pressable>
                  ))}
                </View>

                {/* ── نص عريض ── */}
                <View style={[s.subRow, { marginTop: 8 }]}>
                  <View style={s.subRowLeft}>
                    <Text style={{ color: "#fff", fontWeight: "700", fontSize: 15 }}>ع</Text>
                    <Text style={s.subRowLabel}>نص عريض</Text>
                  </View>
                  <Pressable style={[s.subToggle, subSettings.bold && s.subToggleOn]} onPress={() => updateSubSettings({ bold: !subSettings.bold })}>
                    <View style={[s.subToggleThumb, subSettings.bold && s.subToggleThumbOn]} />
                  </Pressable>
                </View>

                {/* ── إزاحة التوقيت ── */}
                <Text style={s.subSectionLabel}>إزاحة التوقيت</Text>
                <View style={[s.subRow, { marginBottom: 6 }]}>
                  <Text style={{ color: "rgba(255,255,255,0.50)", fontSize: 13, fontFamily: "Cairo_600SemiBold" }}>
                    {subOffset > 0 ? `+${subOffset.toFixed(1)}` : subOffset.toFixed(1)}s
                  </Text>
                </View>
                <View style={{ flexDirection: "row", gap: 8 }}>
                  {([{ d: -0.5, l: "−0.5s" }, { d: 0, l: "تصفير" }, { d: 0.5, l: "+0.5s" }]).map(({ d, l }) => (
                    <Pressable
                      key={l}
                      style={[s.subChip, { flex: 1, justifyContent: "center" }]}
                      onPress={() => {
                        const nv = d === 0 ? 0 : Math.max(-10, Math.min(10, subOffset + d));
                        setSubOffset(nv);
                        subOffsetRef.current = nv;
                      }}
                    >
                      <Text style={[s.subChipText, { textAlign: "center" }]}>{l}</Text>
                    </Pressable>
                  ))}
                </View>

              </ScrollView>
            </Pressable>
          </Animated.View>
        </Pressable>
      )}

      {/* ── أزرار تخطي المقدمة/النهاية — مستقلة تماماً عن رؤية الـ controls ── */}
      {!error && !isEnded && !isLocked && (inIntroRange || inOutroRange) && (
        <View style={s.skipBtnRowFloat} pointerEvents="box-none">
          {inIntroRange && (
            <Pressable onPress={doSkipIntro} style={s.skipPillIntro} hitSlop={8} pointerEvents="auto">
              <Ionicons name="play-forward" size={13} color="#92400e" />
              <Text style={s.skipPillIntroText}>تخطي المقدمة</Text>
            </Pressable>
          )}
          {inOutroRange && (
            <Pressable onPress={doSkipOutro} style={s.skipPillOutro} hitSlop={8} pointerEvents="auto">
              <Ionicons name="play-forward" size={13} color="#4c1d95" />
              <Text style={s.skipPillOutroText}>تخطي النهاية</Text>
            </Pressable>
          )}
        </View>
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

  /* Lock — new swipe-down bar design */
  lockDot: { position: "absolute", right: 12, top: "48%", backgroundColor: "rgba(0,0,0,0.55)", borderRadius: 20, padding: 8, borderWidth: 1, borderColor: "rgba(251,191,36,0.25)", zIndex: 25 },
  swipeUnlockBar: {
    position: "absolute", right: 10, top: "18%", bottom: "18%",
    width: 46,
    alignItems: "center", justifyContent: "space-evenly",
    backgroundColor: "rgba(5,5,15,0.88)",
    borderRadius: 23,
    borderWidth: 1.5, borderColor: "rgba(251,191,36,0.45)",
    zIndex: 40,
  },
  swipeChevrons: { alignItems: "center", gap: -4 },
  swipeUnlockIconWrap: { width: 34, height: 34, borderRadius: 17, backgroundColor: "rgba(251,191,36,0.14)", borderWidth: 1, borderColor: "rgba(251,191,36,0.32)", alignItems: "center", justifyContent: "center" },
  swipeUnlockLabel: { color: "rgba(253,224,71,0.85)", fontSize: 9, fontFamily: "Cairo_700Bold", textAlign: "center", lineHeight: 13 },

  /* End card */
  endCard: { ...StyleSheet.absoluteFillObject, backgroundColor: "rgba(0,0,0,0.88)", alignItems: "center", justifyContent: "center", gap: 14, zIndex: 35 },
  endIconCircle: { width: 72, height: 72, borderRadius: 36, backgroundColor: "rgba(139,92,246,0.16)", borderWidth: 1, borderColor: "rgba(167,139,250,0.35)", alignItems: "center", justifyContent: "center" },
  endSubLabel: { color: "rgba(255,255,255,0.45)", fontSize: 12, fontFamily: "Cairo_400Regular" },
  endTitle: { color: "#fff", fontSize: 18, fontFamily: "Cairo_700Bold", textAlign: "center", paddingHorizontal: 24 },
  endEpText: { color: "rgba(255,255,255,0.55)", fontSize: 13, fontFamily: "Cairo_400Regular" },
  endBtnRow: { flexDirection: "row", gap: 12, marginTop: 6, flexWrap: "wrap", justifyContent: "center" },
  endBackBtn:   { flexDirection: "row", alignItems: "center", gap: 8, paddingHorizontal: 20, paddingVertical: 12, borderRadius: 18, backgroundColor: "rgba(255,255,255,0.07)", borderWidth: 1, borderColor: "rgba(255,255,255,0.14)" },
  endReplayBtn: { flexDirection: "row", alignItems: "center", gap: 8, paddingHorizontal: 20, paddingVertical: 12, borderRadius: 18, backgroundColor: "rgba(255,255,255,0.12)", borderWidth: 1, borderColor: "rgba(255,255,255,0.22)" },
  endNextBtn:   { flexDirection: "row", alignItems: "center", gap: 8, paddingHorizontal: 20, paddingVertical: 12, borderRadius: 18, backgroundColor: "rgba(139,92,246,0.90)", borderWidth: 1, borderColor: "rgba(167,139,250,0.55)" },
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
  /* skipBtnRowFloat: overlay مستقل يظهر دائماً بغض النظر عن رؤية الـ controls
     bottom: 135 — يضمن ظهور الزر فوق قسم التحكم السفلي (~130px) بأمان */
  skipBtnRowFloat: {
    position: "absolute", bottom: 135, left: 12, right: 12,
    flexDirection: "row", justifyContent: "flex-start", gap: 8,
    zIndex: 20,
  },
  skipBtnRow: { flexDirection: "row", justifyContent: "flex-start", gap: 8, marginBottom: 4, paddingStart: 2 },
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
    paddingHorizontal: 10, paddingBottom: 12,
    flexDirection: "row", alignItems: "center", justifyContent: "space-between",
  },
  /* معلومات الأنمي — أقصى اليسار العلوي، حجم صغير لعدم التداخل */
  topInfoWrap: {
    flexShrink: 1, maxWidth: "58%", flexDirection: "column", gap: 2, marginRight: 4,
    alignItems: "flex-start",
  },
  topInfoTitle: {
    color: "rgba(255,255,255,0.90)", fontSize: 10, fontFamily: "Cairo_700Bold",
    textShadowColor: "rgba(0,0,0,0.85)", textShadowRadius: 5, textShadowOffset: { width: 0, height: 1 },
  },
  topInfoRow: {
    flexDirection: "row", alignItems: "center", gap: 4, flexWrap: "nowrap",
  },
  topEpBadge: {
    paddingHorizontal: 4, paddingVertical: 1, borderRadius: 4,
    backgroundColor: "rgba(139,92,246,0.30)", borderWidth: 1, borderColor: "rgba(167,139,250,0.45)",
  },
  topEpText: {
    color: "rgba(221,214,254,0.95)", fontSize: 7, fontFamily: "Cairo_700Bold", letterSpacing: 0.1,
  },
  topQualityBadge: {
    paddingHorizontal: 4, paddingVertical: 1, borderRadius: 4,
    backgroundColor: "rgba(251,191,36,0.18)", borderWidth: 1, borderColor: "rgba(251,191,36,0.40)",
  },
  topQualityText: {
    color: "rgba(253,224,71,0.90)", fontSize: 7, fontFamily: "Cairo_700Bold", letterSpacing: 0.1,
  },
  topEpTitle: {
    color: "rgba(255,255,255,0.60)", fontSize: 8, fontFamily: "Cairo_400Regular",
    maxWidth: 180,
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
  topRightRow: { flexDirection: "row", alignItems: "center", gap: 5 },
  topIconBtn: {
    width: 38, height: 38, borderRadius: 19,
    backgroundColor: "rgba(255,255,255,0.10)", borderWidth: 1, borderColor: "rgba(255,255,255,0.16)",
    alignItems: "center", justifyContent: "center",
  },
  topIconBtnActive: { backgroundColor: "rgba(139,92,246,0.30)", borderColor: "rgba(167,139,250,0.55)" },
  /* زر تدوير الشاشة — pill يجمع أيقونة */
  topRotateBtn: {
    flexDirection: "row", alignItems: "center", gap: 4,
    paddingHorizontal: 8, paddingVertical: 5, borderRadius: 15,
    backgroundColor: "rgba(255,255,255,0.10)", borderWidth: 1, borderColor: "rgba(255,255,255,0.18)",
  },
  topRotateBtnActive: {
    backgroundColor: "rgba(139,92,246,0.28)", borderColor: "rgba(167,139,250,0.55)",
  },
  topRotateLabel: {
    color: "rgba(255,255,255,0.80)", fontSize: 9, fontFamily: "Cairo_700Bold",
  },
  topRotateLabelActive: { color: "#c4b5fd" },
  topCloseBtn: {
    width: 40, height: 40, borderRadius: 20,
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
