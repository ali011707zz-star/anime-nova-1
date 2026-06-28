import { API_BASE } from "@/lib/apiBase";
/**
 * GLASSY PLAYER v5 — مشغل أنمي زجاجي فاخر
 */

import React, { useState, useRef, useEffect, useCallback } from "react";
import Hls from "hls.js";
import { motion, AnimatePresence } from "framer-motion";
import { AnimeMascot } from "@/components/AnimeMascot";
import {
  Play, Pause, Volume2, VolumeX,
  Maximize2, Minimize2, AlertTriangle, RefreshCw,
  RotateCcw, RotateCw, Sun, Lock, Unlock,
  Scan, ScanLine, Camera, X, Zap,
  ChevronDown,
} from "lucide-react";

/* ─────────────────────────────────────── helpers ─── */
function fmtTime(s: number) {
  if (!isFinite(s) || s < 0) return "0:00";
  const h = Math.floor(s / 3600);
  const m = Math.floor((s % 3600) / 60);
  const sec = Math.floor(s % 60);
  if (h > 0) return `${h}:${String(m).padStart(2, "0")}:${String(sec).padStart(2, "0")}`;
  return `${m}:${String(sec).padStart(2, "0")}`;
}

/**
 * Binary search for active subtitle cue — O(log n) vs O(n) linear find().
 * Vidstack technique: cues are sorted by start time → bisect to first candidate,
 * then check only candidates whose start ≤ ct (end check on hit).
 */
function bisectCue(cues: SubCue[], ct: number): SubCue | null {
  let lo = 0, hi = cues.length - 1;
  while (lo <= hi) {
    const mid = (lo + hi) >>> 1;
    if (cues[mid].start <= ct) lo = mid + 1;
    else hi = mid - 1;
  }
  // hi now points to last cue with start ≤ ct
  if (hi >= 0 && cues[hi].end >= ct) return cues[hi];
  return null;
}

/**
 * Returns best initial HLS ABR bandwidth estimate in bps.
 * Uses navigator.connection.downlink (Mbps) when available (Chrome/Android).
 * Vidstack technique: seed ABR with real network info for faster quality selection.
 */
function getInitialBandwidthEstimate(): number {
  try {
    const conn = (navigator as any).connection;
    if (conn?.downlink && conn.downlink > 0) {
      return Math.min(conn.downlink * 1_000_000, 20_000_000);
    }
  } catch {}
  return 3_000_000; // 3Mbps safe default
}

/**
 * Network-adaptive HLS buffer configuration.
 * Technique: smaller buffers on slow connections = faster initial fill, fewer stalls.
 * Mobile gets reduced back-buffer to save RAM.
 * Uses navigator.connection (Network Information API — Chrome / Android WebView).
 * Falls back to conservative defaults on Safari / Firefox (no connection API).
 */
function getHlsBufferConfig() {
  const isMobile = /Mobi|Android|iPhone|iPad/i.test(navigator.userAgent);
  try {
    const conn   = (navigator as any).connection;
    const dl     = conn?.downlink     ?? 10;   // Mbps, default 10
    const eff    = conn?.effectiveType ?? "4g";
    const slow   = dl < 1   || eff === "2g"  || eff === "slow-2g";
    const medium = !slow && (dl < 3.5 || eff === "3g");
    return {
      maxBufferLength:       slow ? 8   : medium ? 15  : 20,
      maxMaxBufferLength:    slow ? 40  : medium ? 80  : 150,
      backBufferLength:      isMobile ? (slow ? 5  : 10)  : 30,
      maxBufferSize:         (isMobile ? 60 : 160) * 1024 * 1024,
      maxStarvationDelay:    slow ? 15  : 8,
      maxLoadingDelay:       slow ? 15  : 8,
      fragLoadingMaxRetry:   slow ? 6   : 4,
      fragLoadingRetryDelay: slow ? 1500 : 800,
      nudgeMaxRetry:         slow ? 30  : 20,
    };
  } catch {
    return {
      maxBufferLength: isMobile ? 25 : 60,
      maxMaxBufferLength: isMobile ? 120 : 300,
      backBufferLength: isMobile ? 15 : 60,
      maxBufferSize: (isMobile ? 60 : 160) * 1024 * 1024,
      maxStarvationDelay: 8, maxLoadingDelay: 8,
      fragLoadingMaxRetry: 4, fragLoadingRetryDelay: 800,
      nudgeMaxRetry: 20,
    };
  }
}

const SPEEDS = [0.5, 0.75, 1, 1.25, 1.5, 2];

function FlipScreenIcon({ className, style }: { className?: string; style?: React.CSSProperties }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.7"
      strokeLinecap="round" strokeLinejoin="round" className={className} style={style}>
      <rect x="7" y="1" width="10" height="16" rx="2" />
      <path d="M4 10c0-3.31 2.69-6 6-6" />
      <polyline points="2 8 4 10 6 8" />
      <path d="M20 14c0 3.31-2.69 6-6 6" />
      <polyline points="18 16 20 14 22 16" />
    </svg>
  );
}

function SubtitleIcon({ className, style }: { className?: string; style?: React.CSSProperties }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.8"
      strokeLinecap="round" strokeLinejoin="round" className={className} style={style}>
      <rect x="2" y="5" width="20" height="14" rx="3" />
      <path d="M7 10h2.5M7 14h2.5" />
      <path d="M12 10h2.5M12 14h2.5" />
    </svg>
  );
}

/* ─────────────────────────────────────── types ──── */
export interface SubCue { start: number; end: number; text: string }
export interface SubSettings {
  fontSize: number;
  color: string;
  bgOpacity: number;
  bold: boolean;
  position: "top" | "center" | "bottom";
}

interface Props {
  src: string;
  title?: string;
  epTitle?: string;
  ep?: number;
  totalEps?: number;
  qualityLabel?: string;
  isHls?: boolean;
  serverCount?: number;
  serverIndex?: number;
  downloadUrl?: string;
  resumeTime?: number;
  subCues?: SubCue[];
  subElapsed?: number;
  subOffset?: number;
  subSettings?: SubSettings;
  subEnabled?: boolean;
  subNote?: string;
  onSubtitleClick?: () => void;
  onSubSettingsChange?: (s: SubSettings) => void;
  onSubtitleOff?: () => void;
  skipIntro?: { start: number; end: number };
  skipOutro?: { start: number; end: number };
  animeId?: number;
  autoPlay?: boolean;
  onBack?: () => void;
  onPrevEp?: () => void;
  onNextEp?: () => void;
  onEpisodeSelect?: (ep: number) => void;
  onRealQuality?: (q: string) => void;
  onTimeUpdate?: (t: number) => void;
  onDuration?: (d: number) => void;
  onFail?: () => void;
  topSlot?: React.ReactNode;
  bottomSlot?: React.ReactNode;
}

type GT = "none" | "seek" | "volume" | "brightness";
interface GS { active: GT; startX: number; startY: number; lastY: number; lastX: number; startValue: number; }
interface GF { type: "volume" | "brightness" | "seek"; value: number; delta?: number; }

/* ── glass style tokens ── */
const GLASS_PANEL  = "rgba(0,0,0,0.55)";
const GLASS_BLUR   = "blur(28px) saturate(180%)";
const GLASS_BORDER = "rgba(255,255,255,0.10)";
const GLASS_BTN    = { background: "rgba(255,255,255,0.10)", border: "1px solid rgba(255,255,255,0.15)", backdropFilter: "blur(14px)" };
const GLASS_BTN_SM = { background: "rgba(255,255,255,0.08)", border: "1px solid rgba(255,255,255,0.12)", backdropFilter: "blur(14px)" };

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

/* ─────────────────────────────────────── component ─ */
export default function RiftPlayer({
  src, title = "", epTitle = "", ep = 1, totalEps = 999, resumeTime = 0,
  qualityLabel = "", isHls = false, serverCount = 1, serverIndex = 0,
  downloadUrl, subCues, subElapsed, subOffset = 0, subSettings, subEnabled = false,
  subNote,
  onSubtitleClick, onSubSettingsChange, onSubtitleOff,
  skipIntro, skipOutro, animeId, autoPlay,
  onBack, onPrevEp, onNextEp, onEpisodeSelect, onRealQuality, onTimeUpdate, onDuration, onFail,
}: Props) {

  const videoRef     = useRef<HTMLVideoElement>(null);
  const hlsRef       = useRef<Hls | null>(null);
  const containerRef = useRef<HTMLDivElement>(null);
  const progressRef  = useRef<HTMLDivElement>(null);
  const hideRef         = useRef<ReturnType<typeof setTimeout> | null>(null);
  const feedbackHideRef = useRef<ReturnType<typeof setTimeout> | null>(null);
  const seekDrag     = useRef(false);
  const touchScrubbing = useRef(false);
  const resumedRef     = useRef(false);
  const resumeTimeRef  = useRef(resumeTime);
  resumeTimeRef.current = resumeTime;
  const onFailRef    = useRef(onFail); onFailRef.current = onFail;
  const failFired    = useRef(false);
  const failTimer    = useRef<ReturnType<typeof setTimeout> | null>(null);
  /* ── Guard: prevent server-switching after video has been playing successfully ──
     بعد 20 ثانية من التشغيل الناجح، لا نبدّل السيرفر تلقائياً عند أي خطأ مؤقت.
     HLS.js يتولى التعافي الداخلي من الأخطاء غير الحرجة. */
  const hasPlayedSuccessRef = useRef(false);
  const successTimerRef = useRef<ReturnType<typeof setTimeout> | null>(null);
  const gestRef      = useRef<GS>({ active: "none", startX: 0, startY: 0, lastY: 0, lastX: 0, startValue: 0 });
  const volumeRef     = useRef(1);
  const brightnessRef = useRef(0.85);
  const lastTap      = useRef<{ time: number; side: "L" | "R" } | null>(null);
  const longTimer    = useRef<ReturnType<typeof setTimeout> | null>(null);
  const prevSpeed    = useRef(1);
  const lastTouchTs  = useRef(0);
  const moved        = useRef(false);
  const seekThrottle = useRef<number>(0);
  const tapTimer     = useRef<ReturnType<typeof setTimeout> | null>(null);
  const autoFsTriggered = useRef(false);
  const G_THRESH     = 18;

  /* ── Web Audio API: GainNode + DynamicsCompressor ── */
  const audioCtxRef  = useRef<AudioContext | null>(null);
  const gainNodeRef  = useRef<GainNode | null>(null);

  const [isPortrait,      setIsPortrait]      = useState(
    typeof window !== "undefined" && window.innerHeight > window.innerWidth
  );
  const [loading,         setLoading]         = useState(true);
  const [buffering,       setBuffering]       = useState(false);
  const [error,           setError]           = useState<string | null>(null);
  const skipNotifFired   = useRef(false);
  const [playing,         setPlaying]         = useState(false);
  const [currentTime,     setCurrentTime]     = useState(0);
  const [duration,        setDuration]        = useState(0);
  const [buffered,        setBuffered]        = useState(0);
  const [muted,           setMuted]           = useState(false);
  const [volume,          setVolume]          = useState(1);
  const [brightness,      setBrightness]      = useState(0.85);
  const [speed,           setSpeed]           = useState(() => parseFloat(localStorage.getItem("pref-speed") || "1"));
  const [showCtrl,        setShowCtrl]        = useState(true);
  const [isFs,            setIsFs]            = useState(false);
  const [isZoomed,        setIsZoomed]        = useState(() =>
    typeof window !== "undefined" && window.innerWidth < window.innerHeight && window.innerWidth < 640
  );
  const [isLocked,        setIsLocked]        = useState(false);
  const [showSpeed,       setShowSpeed]       = useState(false);
  const [showViewMode,    setShowViewMode]    = useState(false);
  const [showSubMenu,     setShowSubMenu]      = useState(false);
  const [openSubSection,  setOpenSubSection]   = useState<string | null>(null);
  const [prgHover,        setPrgHover]        = useState(false);
  const [feedback,        setFeedback]        = useState<GF | null>(null);
  const [dblTap,          setDblTap]          = useState<{ side: "L" | "R"; id: number; secs: number } | null>(null);
  const [longPress,       setLongPress]       = useState(false);
  const [screenshotFlash, setScreenshotFlash] = useState(false);
  const [isEnded,         setIsEnded]         = useState(false);
  const [autoPlayCountdown, setAutoPlayCountdown] = useState(0);
  const [showUnlockBtn,   setShowUnlockBtn]   = useState(false);
  const [showShortcuts,   setShowShortcuts]   = useState(false);

  /* ── rAF subtitle sync: reads videoRef.currentTime directly at 60fps ── */
  const subRafRef    = useRef<number | null>(null);
  const subOffsetRef = useRef(subOffset);
  const [subActiveCue, setSubActiveCue] = useState<SubCue | null>(null);
  const unlockBtnHideRef  = useRef<ReturnType<typeof setTimeout> | null>(null);
  /* ── auto-close sub menu when controls hide — disabled for bottom sheet UX ── */
  // useEffect(() => { if (!showCtrl) setShowSubMenu(false); }, [showCtrl]);

  /* ── orientation lock ── */
  useEffect(() => {
    const lock = async () => { try { await (screen.orientation as any).lock("landscape"); } catch {} };
    lock();
    return () => { try { (screen.orientation as any).unlock(); } catch {} };
  }, []);

  /* ── portrait detection — only fires on PHYSICAL device rotation, not manual CSS toggle ── */
  const manualRotateRef = useRef(false);
  useEffect(() => {
    const check = () => {
      if (manualRotateRef.current) return;
      setIsPortrait(window.innerHeight > window.innerWidth);
    };
    const onOrient = () => {
      manualRotateRef.current = false;
      setIsPortrait(window.innerHeight > window.innerWidth);
    };
    window.addEventListener("resize", check);
    window.addEventListener("orientationchange", onOrient);
    return () => {
      window.removeEventListener("resize", check);
      window.removeEventListener("orientationchange", onOrient);
    };
  }, []);

  /* ── fullscreen ── */
  useEffect(() => {
    const fn = () => setIsFs(!!document.fullscreenElement);
    document.addEventListener("fullscreenchange", fn);
    return () => document.removeEventListener("fullscreenchange", fn);
  }, []);

  /* ── Web Audio API setup (once per mount) ── */
  useEffect(() => {
    const v = videoRef.current;
    if (!v) return;
    let cleanup: (() => void) | undefined;
    try {
      const ctx = new (window.AudioContext || (window as any).webkitAudioContext)();
      const source = ctx.createMediaElementSource(v);
      const gain   = ctx.createGain();
      const comp   = ctx.createDynamicsCompressor();
      comp.threshold.value = -24;
      comp.knee.value      = 30;
      comp.ratio.value     = 4;
      comp.attack.value    = 0.003;
      comp.release.value   = 0.25;
      gain.gain.value      = volumeRef.current;
      source.connect(gain);
      gain.connect(comp);
      comp.connect(ctx.destination);
      audioCtxRef.current = ctx;
      gainNodeRef.current = gain;
      const resume = () => { if (ctx.state === "suspended") ctx.resume().catch(() => {}); };
      v.addEventListener("play", resume);
      cleanup = () => {
        v.removeEventListener("play", resume);
        try { gain.gain.cancelScheduledValues(0); gain.gain.value = 0; } catch {}
        ctx.close().catch(() => {});
        audioCtxRef.current = null;
        gainNodeRef.current = null;
      };
    } catch { /* AudioContext not supported — native volume fallback */ }
    return cleanup;
  }, []); // once per mount

  /* ── auto-fullscreen on physical device rotation ── */
  useEffect(() => {
    const onRotate = async () => {
      try {
        const angle = (screen.orientation?.angle ?? (window as any).orientation ?? 0);
        const isLand = Math.abs(Number(angle)) === 90 || Math.abs(Number(angle)) === 270;
        if (isLand && !document.fullscreenElement && containerRef.current) {
          await containerRef.current.requestFullscreen?.().catch(() => {});
          await (screen.orientation as any).lock?.("landscape").catch?.(() => {});
        }
      } catch {}
    };
    screen.orientation?.addEventListener("change", onRotate);
    window.addEventListener("orientationchange", onRotate);
    return () => {
      screen.orientation?.removeEventListener("change", onRotate);
      window.removeEventListener("orientationchange", onRotate);
    };
  }, []);

  async function toggleFs() {
    if (!document.fullscreenElement) {
      setIsPortrait(false);
      await containerRef.current?.requestFullscreen?.().catch(() => {});
      try { await (screen.orientation as any).lock("landscape"); } catch {}
    } else {
      await document.exitFullscreen?.().catch(() => {});
      try { (screen.orientation as any).unlock(); } catch {}
    }
  }

  async function toggleRotation() {
    if (document.fullscreenElement) {
      try {
        const current = (screen.orientation as any)?.type ?? "";
        if (current.startsWith("landscape")) {
          await (screen.orientation as any).lock("portrait");
        } else {
          await (screen.orientation as any).lock("landscape");
        }
      } catch {}
      return;
    }
    manualRotateRef.current = true;
    setIsPortrait(p => !p);
  }

  /* ── Portrait rotation resets zoom to contain ── */
  useEffect(() => {
    if (isPortrait) {
      setIsZoomed(false);
    }
  }, [isPortrait]);

  /* ── control hide ── */
  const schedHide = useCallback(() => {
    if (hideRef.current) clearTimeout(hideRef.current);
    hideRef.current = setTimeout(() => setShowCtrl(false), 6500);
  }, []);
  const showControls = useCallback(() => { setShowCtrl(true); schedHide(); }, [schedHide]);

  /* ── fail ── */
  const fireOnFail = useCallback(() => {
    if (failFired.current) return;
    /* إذا كان الفيديو يعمل بنجاح (>20 ثانية) → لا نبدّل السيرفر تلقائياً.
       نترك HLS.js يتعامل مع الخطأ داخلياً لأنه على الأرجح خطأ مؤقت. */
    if (hasPlayedSuccessRef.current) return;
    failFired.current = true;
    setLoading(true); setBuffering(false); setError(null);
    if (failTimer.current) clearTimeout(failTimer.current);
    failTimer.current = setTimeout(() => onFailRef.current?.(), 800);
  }, []);

  /* ── load source ── */
  const loadSource = useCallback(async () => {
    const v = videoRef.current; if (!v) return;
    console.log(`[Nova Player] تحميل المصدر (سيرفر ${serverIndex + 1}/${serverCount}): ${src?.slice(0, 140)}`);
    if (hlsRef.current) { hlsRef.current.destroy(); hlsRef.current = null; }
    v.src = "";
    setLoading(true); setBuffering(false); setError(null); setCurrentTime(0); setDuration(0); setPlaying(false); setIsEnded(false);
    failFired.current = false;
    resumedRef.current = false;
    autoFsTriggered.current = false;
    hasPlayedSuccessRef.current = false;
    if (successTimerRef.current) { clearTimeout(successTimerRef.current); successTimerRef.current = null; }
    if (failTimer.current) { clearTimeout(failTimer.current); failTimer.current = null; }

    let m3u8 = src;

    if (src.includes("animegg.org/play/") || src.includes("vidcache.net")
        || (src.includes("/api/animation/videasy-fresh") && src.includes("vtype=mp4"))
        || src.includes("go.itsdeskmate.com")) {
      v.src = src; v.load();
      v.addEventListener("loadedmetadata", () => { setLoading(false); v.play().catch(() => {}); showControls(); }, { once: true });
      v.addEventListener("error", () => fireOnFail(), { once: true });
      return;
    }

    // CDNs with CORS * + Accept-Ranges → play DIRECTLY in browser (no proxy round-trip)
    // video.kawaii-anime.com: confirmed CORS * + Range support
    // pixeldrain.com/api/file/: confirmed CORS * + Accept-Ranges
    const CORS_DIRECT_CDN = ["video.kawaii-anime.com", "pixeldrain.com/api/file/"];
    const isCorsDirectCdn = CORS_DIRECT_CDN.some(h => src.includes(h));
    if (isCorsDirectCdn) {
      v.src = src; v.load();
      let done = false;
      const cleanup = () => { done = true; clearTimeout(t); v.removeEventListener("loadedmetadata", onMd); v.removeEventListener("error", onEd); };
      const onMd = () => { if (done) return; cleanup(); setLoading(false); v.play().catch(() => {}); showControls(); };
      const onEd = () => { if (done) return; cleanup(); fireOnFail(); };
      const t = setTimeout(() => { if (done) return; v.src = ""; onEd(); }, 25000);
      v.addEventListener("loadedmetadata", onMd, { once: true });
      v.addEventListener("error", onEd, { once: true });
      return;
    }

    const isDirect = src.includes("streamtape.com") || src.includes("sendvid.com")
      || src.includes("videos2.sendvid.com") || src.includes("video-proxy?")
      || src.includes("workers.dev")
      || /\.(mp4|mkv|webm)([?#]|$)/i.test(src);
    if (isDirect) {
      const px = src.includes("video-proxy?") ? src
        : `/api/anime/video-proxy?url=${encodeURIComponent(src)}&ref=${encodeURIComponent(src)}`;
      v.src = px; v.load();
      let done = false;
      const cleanup = () => { done = true; clearTimeout(t); v.removeEventListener("loadedmetadata", onM); v.removeEventListener("error", onE); };
      const onM = () => { if (done) return; cleanup(); setLoading(false); v.play().catch(() => {}); showControls(); };
      const onE = () => { if (done) return; cleanup(); fireOnFail(); };
      const t = setTimeout(() => { if (done) return; v.src = ""; onE(); }, 20000);
      v.addEventListener("loadedmetadata", onM, { once: true });
      v.addEventListener("error", onE, { once: true });
      return;
    }

    if (src.includes("/animex-player")) {
      try {
        const qs = src.includes("?") ? src.split("?")[1] : "";
        const p = new URLSearchParams(qs); p.set("_t", String(Date.now()));
        const r = await fetch(`${API_BASE}/api/anime/animex-source?${p}`, { cache: "no-store", signal: AbortSignal.timeout(18000) });
        if (!r.ok) { const d = await r.json().catch(() => ({})); setError((d as any).error || `خطأ ${r.status}`); setLoading(false); return; }
        const data = await r.json() as { proxyUrl?: string; rawUrl?: string; quality?: string };
        const hlsUrl = data.proxyUrl || data.rawUrl;
        if (!hlsUrl) { setError("لا يوجد رابط HLS"); setLoading(false); return; }
        m3u8 = hlsUrl;
        if (data.quality && onRealQuality) onRealQuality(data.quality);
      } catch { setError("خطأ في الاتصال"); setLoading(false); return; }
    }

    if (Hls.isSupported()) {
      /* ── Network-adaptive buffer config — computed fresh on every source load ── */
      const bufCfg = getHlsBufferConfig();
      const hls = new Hls({
        enableWorker: true,
        lowLatencyMode: false,
        /* ── Vidstack: defer segment loading until we know the resume position ──
           autoStartLoad:false → hls.startLoad(position) in MANIFEST_PARSED
           eliminates the double-seek that causes the initial black flash. */
        autoStartLoad: false,
        /* ── Network-adaptive buffer (slow/medium/fast × mobile/desktop) ── */
        ...bufCfg,
        maxBufferHole: 1.5,
        maxFragLookUpTolerance: 0.6,
        startFragPrefetch: true,
        progressive: true,
        /* ── startLevel:-1 → HLS.js picks best level for current bandwidth
           (faster cold-start than forcing level 0 then ABR upswitch) ── */
        startLevel: -1,
        /* ── Vidstack: seed ABR with real network speed (navigator.connection) ── */
        abrEwmaDefaultEstimate: getInitialBandwidthEstimate(),
        abrEwmaFastLive: 3,
        abrBandWidthFactor: 0.92,
        abrBandWidthUpFactor: 0.82,
        testBandwidth: false,
        capLevelToPlayerSize: true,
        /* Use real measured segment bitrate for ABR quality decisions (more accurate) */
        // @ts-ignore
        abrMaxWithRealBitrate: true,
        /* Drop quality level if device FPS falls — prevents stutter on low-end devices */
        // @ts-ignore
        capLevelOnFPSDrop: true,
        /* ── Vidstack: interruptSwitch:false — waits for current fragment to finish
           before switching quality → eliminates micro-stalls during ABR switches ── */
        // @ts-ignore — property exists in hls.js ≥1.4 but not yet in older typedefs
        interruptSwitch: false,
        fragLoadingMaxRetryTimeout: 12000,
        manifestLoadingMaxRetry: 4,
        manifestLoadingRetryDelay: 1000,
        levelLoadingMaxRetry: 4,
        levelLoadingRetryDelay: 1000,
        highBufferWatchdogPeriod: 5,
        nudgeOffset: 0.5,
        enableCEA708Captions: false,
        renderTextTracksNatively: false,
        xhrSetup: (xhr: XMLHttpRequest) => {
          xhr.timeout = 25000;
        },
      });
      hlsRef.current = hls;
      hls.loadSource(m3u8); hls.attachMedia(v);
      hls.on(Hls.Events.MANIFEST_PARSED, () => {
        if (hlsRef.current !== hls) return;
        // تعطيل مسارات الترجمة المدمجة في HLS (مثل kawaii) — نعتمد على overlay خاص بنا
        try { hls.subtitleTrack = -1; } catch { /* ignore */ }
        /* ── Vidstack technique: startLoad(position) instead of load→seek
           Starts buffering FROM the resume position directly, avoiding
           the initial-segment-download → seek → re-download cycle. ── */
        const rt = resumeTimeRef.current;
        const startPos = (!resumedRef.current && rt && rt >= 5) ? rt : -1;
        if (startPos > 0) {
          resumedRef.current = true;
          setCurrentTime(startPos);
        }
        hls.startLoad(startPos);
        setError(null); setLoading(false); showControls();
        v.play().catch(() => {});
      });
      hls.on(Hls.Events.ERROR, (_, d) => {
        if (hlsRef.current !== hls) return;
        if (!d.fatal) {
          // Non-fatal errors: let HLS.js handle via internal nudge mechanism
          // Do NOT manually seek on BUFFER_STALLED — it conflicts with nudge
          return;
        }
        if (d.type === Hls.ErrorTypes.MEDIA_ERROR) {
          hls.recoverMediaError();
        } else if (d.type === Hls.ErrorTypes.NETWORK_ERROR) {
          // Retry network errors with exponential backoff before failing
          const attempts = (hls as any)._netRetry = ((hls as any)._netRetry || 0) + 1;
          if (attempts <= 5) {
            setTimeout(() => { if (hlsRef.current === hls) hls.startLoad(); }, 1000 * attempts);
          } else { fireOnFail(); }
        } else {
          fireOnFail();
        }
      });
    } else if (v.canPlayType("application/vnd.apple.mpegurl")) {
      v.src = m3u8;
      v.addEventListener("loadedmetadata", () => { setLoading(false); v.play().catch(() => {}); }, { once: true });
      v.addEventListener("error", () => setError("فشل التشغيل"), { once: true });
    } else {
      setError("المتصفح لا يدعم HLS"); setLoading(false);
    }
  }, [src, onRealQuality, fireOnFail, showControls]);

  useEffect(() => {
    loadSource();
    return () => {
      if (hlsRef.current) { hlsRef.current.destroy(); hlsRef.current = null; }
      /* Stop audio/video immediately on unmount to prevent background playback */
      const v = videoRef.current;
      if (v) { try { v.pause(); v.src = ""; v.load(); } catch {} }
      if (hideRef.current) clearTimeout(hideRef.current);
      if (feedbackHideRef.current) clearTimeout(feedbackHideRef.current);
      if (failTimer.current) clearTimeout(failTimer.current);
      if (successTimerRef.current) clearTimeout(successTimerRef.current);
    };
  }, [loadSource]);

  /* ── rAF subtitle cue lookup — reads videoRef.currentTime directly at 60fps ──
     Vidstack technique: binary search O(log n) instead of linear find() O(n).
     Pre-sort cues once on effect entry — avoids re-sorting every frame.
     Only triggers setState when the active cue actually CHANGES (≤1 render/cue). */
  useEffect(() => {
    if (subRafRef.current) { cancelAnimationFrame(subRafRef.current); subRafRef.current = null; }
    if (!subCues?.length || !subEnabled) { setSubActiveCue(null); return; }
    // Pre-sort once so binary search assumptions hold
    const sorted = [...subCues].sort((a, b) => a.start - b.start);
    let lastKey = "";
    const tick = () => {
      const ct = (videoRef.current?.currentTime ?? 0) + subOffsetRef.current;
      const cue = bisectCue(sorted, ct);
      const key = cue ? `${cue.start}` : "";
      if (key !== lastKey) { lastKey = key; setSubActiveCue(cue); }
      subRafRef.current = requestAnimationFrame(tick);
    };
    subRafRef.current = requestAnimationFrame(tick);
    return () => { if (subRafRef.current) { cancelAnimationFrame(subRafRef.current); subRafRef.current = null; } };
  }, [subCues, subEnabled]);

  /* ── Resume: seek to saved position once duration is known ── */
  useEffect(() => {
    if (resumedRef.current || !resumeTime || resumeTime < 5 || !duration || duration < 30) return;
    if (resumeTime >= duration - 10) return; // too close to end, start fresh
    const v = videoRef.current; if (!v) return;
    v.currentTime = resumeTime;
    setCurrentTime(resumeTime);
    resumedRef.current = true;
  }, [duration, resumeTime]);

  useEffect(() => {
    const v = videoRef.current; if (!v) return;
    const onPlay  = () => {
      setPlaying(true);
      if (!autoFsTriggered.current && !document.fullscreenElement) {
        autoFsTriggered.current = true;
        containerRef.current?.requestFullscreen?.().catch(() => {});
        try { (screen.orientation as any).lock("landscape"); } catch {}
      }
      /* بعد 20 ثانية من التشغيل الناجح → وضع علامة نجاح لمنع تبديل السيرفر التلقائي */
      if (!hasPlayedSuccessRef.current) {
        if (successTimerRef.current) clearTimeout(successTimerRef.current);
        successTimerRef.current = setTimeout(() => { hasPlayedSuccessRef.current = true; }, 20_000);
      }
    };
    const onPause = () => setPlaying(false);
    const onTime  = () => {
      setCurrentTime(v.currentTime);
      if (v.buffered.length) setBuffered(v.buffered.end(v.buffered.length - 1));
      onTimeUpdate?.(v.currentTime);
    };
    const onDur   = () => { setDuration(v.duration); if (v.duration > 0) onDuration?.(v.duration); };
    const onWait  = () => {
      const v2 = videoRef.current;
      if (v2 && v2.currentTime > 1) setBuffering(true);
      else setLoading(true);
    };
    const onPlay2 = () => { setLoading(false); setBuffering(false); };
    const onEnded = () => { setIsEnded(true); setPlaying(false); setShowCtrl(true); };
    v.addEventListener("play", onPlay); v.addEventListener("pause", onPause);
    v.addEventListener("timeupdate", onTime); v.addEventListener("durationchange", onDur);
    v.addEventListener("waiting", onWait); v.addEventListener("playing", onPlay2);
    v.addEventListener("ended", onEnded);
    return () => {
      v.removeEventListener("play", onPlay); v.removeEventListener("pause", onPause);
      v.removeEventListener("timeupdate", onTime); v.removeEventListener("durationchange", onDur);
      v.removeEventListener("waiting", onWait); v.removeEventListener("playing", onPlay2);
      v.removeEventListener("ended", onEnded);
    };
  }, [onTimeUpdate]);

  /* ── Black-screen detector: audio works but no picture → try next server ── */
  useEffect(() => {
    if (!playing) return;
    const t = setTimeout(() => {
      const v = videoRef.current;
      if (!v) return;
      // Wait until currentTime > 5s to avoid false positives on slow CDNs
      if (v.currentTime > 5 && v.videoWidth === 0 && v.videoHeight === 0 && !v.paused) {
        setError("كودك الفيديو غير مدعوم في هذا المتصفح — جرّب مصدراً آخر");
        try { v.pause(); } catch {}
      }
    }, 8000);
    return () => clearTimeout(t);
  }, [playing]);

  /* ── autoPlay countdown when episode ends ── */
  useEffect(() => {
    if (!isEnded || !autoPlay || !onNextEp || ep >= totalEps) { setAutoPlayCountdown(0); return; }
    setAutoPlayCountdown(5);
    const tick = setInterval(() => {
      setAutoPlayCountdown(c => {
        if (c <= 1) { clearInterval(tick); onNextEp(); return 0; }
        return c - 1;
      });
    }, 1000);
    return () => clearInterval(tick);
  }, [isEnded, autoPlay]); // eslint-disable-line react-hooks/exhaustive-deps

  /* ── mark skip data loaded (no notification) ── */
  useEffect(() => {
    if ((skipIntro || skipOutro) && !skipNotifFired.current) {
      skipNotifFired.current = true;
    }
  }, [skipIntro, skipOutro]);

  /* ── keyboard shortcuts (video.js inspired) — ? shows overlay, space/arrows etc ── */
  useEffect(() => {
    const onKey = (e: KeyboardEvent) => {
      const tag = (e.target as HTMLElement)?.tagName;
      if (tag === "INPUT" || tag === "TEXTAREA" || tag === "SELECT") return;
      if (e.ctrlKey || e.metaKey || e.altKey) return;
      switch (e.key) {
        case "?":
          e.preventDefault();
          setShowShortcuts(v => !v);
          break;
        case " ":
        case "k":
          e.preventDefault();
          togglePlay();
          break;
        case "ArrowRight":
        case "l":
          e.preventDefault();
          skip(10);
          showControls();
          break;
        case "ArrowLeft":
        case "j":
          e.preventDefault();
          skip(-10);
          showControls();
          break;
        case "ArrowUp":
          e.preventDefault();
          setVolume(v => { const nV = Math.min(1, v + 0.1); volumeRef.current = nV; if (gainNodeRef.current) gainNodeRef.current.gain.value = nV; if (videoRef.current) videoRef.current.volume = nV; return nV; });
          break;
        case "ArrowDown":
          e.preventDefault();
          setVolume(v => { const nV = Math.max(0, v - 0.1); volumeRef.current = nV; if (gainNodeRef.current) gainNodeRef.current.gain.value = nV; if (videoRef.current) videoRef.current.volume = nV; return nV; });
          break;
        case "f":
        case "F":
          e.preventDefault();
          toggleFs();
          break;
        case "m":
        case "M":
          e.preventDefault();
          toggleMute();
          break;
        case "Escape":
          if (showShortcuts) { e.preventDefault(); setShowShortcuts(false); }
          break;
        default: break;
      }
    };
    document.addEventListener("keydown", onKey);
    return () => document.removeEventListener("keydown", onKey);
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [showShortcuts]);

  /* ── controls ── */
  function togglePlay() {
    const v = videoRef.current; if (!v) return;
    if (audioCtxRef.current?.state === "suspended") audioCtxRef.current.resume().catch(() => {});
    v.paused ? v.play().catch(() => {}) : v.pause();
    showControls();
  }
  function toggleMute() {
    if (gainNodeRef.current) {
      const nowMuted = !muted;
      setMuted(nowMuted);
      gainNodeRef.current.gain.value = nowMuted ? 0 : volumeRef.current;
      if (audioCtxRef.current?.state === "suspended") audioCtxRef.current.resume().catch(() => {});
      if (videoRef.current) videoRef.current.muted = false;
      return;
    }
    const v = videoRef.current; if (!v) return;
    v.muted = !v.muted; setMuted(v.muted);
  }
  function skip(delta: number) {
    const v = videoRef.current; if (!v || !duration) return;
    const wasPlaying = !v.paused;
    v.currentTime = Math.max(0, Math.min(duration, v.currentTime + delta));
    setCurrentTime(v.currentTime);
    // Ensure playback resumes after seek (browser may pause during buffering)
    if (wasPlaying) v.play().catch(() => {});
  }
  function changeSpeed(s: number) {
    setSpeed(s); if (videoRef.current) videoRef.current.playbackRate = s;
    setShowSpeed(false); showControls();
  }
  function seekFrac(f: number, force = false) {
    const v = videoRef.current; if (!v || !duration) return;
    const t = Math.max(0, Math.min(1, f)) * duration;
    setCurrentTime(t);
    const now = Date.now();
    if (force || now - seekThrottle.current > 280) {
      seekThrottle.current = now;
      v.currentTime = t;
    }
  }
  function takeScreenshot() {
    const v = videoRef.current; if (!v) return;
    try {
      const c = document.createElement("canvas");
      c.width = v.videoWidth || 1280; c.height = v.videoHeight || 720;
      c.getContext("2d")?.drawImage(v, 0, 0);
      const a = document.createElement("a");
      a.download = `nova-${title}-ep${ep}.png`;
      a.href = c.toDataURL("image/png"); a.click();
      setScreenshotFlash(true);
      setTimeout(() => setScreenshotFlash(false), 600);
    } catch {}
  }

  /* ── subtitle settings helper ── */
  function updateSub(patch: Partial<SubSettings>) {
    if (!subSettings || !onSubSettingsChange) return;
    onSubSettingsChange({ ...subSettings, ...patch });
  }

  /* ── progress bar ── */
  function calcSeekFrac(clientX: number, clientY: number, r: DOMRect): number {
    /* When player is CSS-rotated 90°CW (portrait lock), the progress bar is
       physically vertical on screen: top = 0%, bottom = 100% */
    if (isPortrait && !isFs) return Math.max(0, Math.min(1, (clientY - r.top) / r.height));
    return Math.max(0, Math.min(1, (clientX - r.left) / r.width));
  }
  function handlePrgClick(e: React.MouseEvent) {
    e.stopPropagation();
    const bar = progressRef.current; if (!bar) return;
    seekFrac(calcSeekFrac(e.clientX, e.clientY, bar.getBoundingClientRect()));
  }
  function handlePrgDown(e: React.MouseEvent) {
    e.stopPropagation(); seekDrag.current = true;
    const portrait = isPortrait && !isFs;
    let lastF = duration > 0 ? currentTime / duration : 0;
    const onMv = (ev: MouseEvent) => {
      const bar = progressRef.current; if (!bar) return;
      const r = bar.getBoundingClientRect();
      lastF = portrait
        ? Math.max(0, Math.min(1, (ev.clientY - r.top) / r.height))
        : Math.max(0, Math.min(1, (ev.clientX - r.left) / r.width));
      seekFrac(lastF, false);
    };
    const onUp = () => {
      seekDrag.current = false;
      seekFrac(lastF, true);
      window.removeEventListener("mousemove", onMv);
      window.removeEventListener("mouseup", onUp);
    };
    window.addEventListener("mousemove", onMv); window.addEventListener("mouseup", onUp);
  }

  /* ── touch gestures ── */
  function onTS(e: React.TouchEvent<HTMLDivElement>) {
    if (isLocked) return;
    lastTouchTs.current = Date.now();
    moved.current = false;
    const t = e.touches[0];
    gestRef.current = { active: "none", startX: t.clientX, startY: t.clientY, lastY: t.clientY, lastX: t.clientX, startValue: 0 };
    longTimer.current = setTimeout(() => {
      moved.current = true;
      prevSpeed.current = videoRef.current?.playbackRate ?? 1;
      if (videoRef.current) videoRef.current.playbackRate = 2;
      setLongPress(true); setFeedback(null);
    }, 500);
  }
  function onTM(e: React.TouchEvent<HTMLDivElement>) {
    if (isLocked) return;
    const t = e.touches[0]; const g = gestRef.current;
    const dx = t.clientX - g.startX, dy = t.clientY - g.startY;
    const dist = Math.sqrt(dx * dx + dy * dy);
    if (dist > 8 && longTimer.current) { clearTimeout(longTimer.current); longTimer.current = null; }
    if (longPress) return;
    if (g.active === "none" && dist > G_THRESH) {
      moved.current = true;
      if (isPortrait && !isFs) {
        // Player rotated 90deg CW: horizontal on player = vertical on screen; left/right zone = top/bottom screen
        if (Math.abs(dy) > Math.abs(dx) * 1.4) {
          g.active = "seek"; g.startValue = videoRef.current?.currentTime ?? 0;
        } else {
          // Bottom half of screen = right side of rotated player = volume
          g.active = t.clientY > window.innerHeight / 2 ? "volume" : "brightness";
          g.startValue = g.active === "volume" ? volume : brightness;
          g.lastX = t.clientX;
        }
      } else {
        const cW = e.currentTarget.clientWidth;
        if (Math.abs(dx) > Math.abs(dy) * 1.4) {
          g.active = "seek"; g.startValue = videoRef.current?.currentTime ?? 0;
        } else {
          g.active = t.clientX > cW / 2 ? "volume" : "brightness";
          g.startValue = g.active === "volume" ? volume : brightness;
          g.lastY = t.clientY;
        }
      }
    }
    if (g.active === "seek") {
      const maxD = Math.min(duration * 0.25, 60);
      let delta: number;
      if (isPortrait && !isFs) {
        // Vertical screen movement = horizontal player movement (down = forward)
        delta = (dy / window.innerHeight) * maxD;
      } else {
        delta = (dx / window.innerWidth) * maxD;
      }
      const seekVal = Math.max(0, Math.min(duration, g.startValue + delta));
      if (feedbackHideRef.current) clearTimeout(feedbackHideRef.current);
      setFeedback({ type: "seek", value: seekVal, delta });
      feedbackHideRef.current = setTimeout(() => setFeedback(null), 1500);
      // Real-time seek (throttled to 180ms to avoid HLS thrash)
      const now = Date.now();
      if (videoRef.current && now - seekThrottle.current > 180) {
        seekThrottle.current = now;
        videoRef.current.currentTime = seekVal;
      }
    } else if (g.active === "volume") {
      // Portrait (CSS-rotated 90° CW): player-up = screen-right = clientX increases → positive dV
      // Landscape: player-up = screen-up = clientY decreases → g.lastY - t.clientY is positive
      const dV = (isPortrait && !isFs) ? (t.clientX - g.lastX) : (g.lastY - t.clientY);
      if (isPortrait && !isFs) g.lastX = t.clientX; else g.lastY = t.clientY;
      // Use videoRef.current.volume for freshest value (avoids stale React state)
      const curVol = volumeRef.current;
      const nV = Math.max(0, Math.min(2.0, curVol + dV / 150));
      volumeRef.current = nV;
      setVolume(nV);
      if (gainNodeRef.current) {
        gainNodeRef.current.gain.value = nV;
        if (audioCtxRef.current?.state === "suspended") audioCtxRef.current.resume().catch(() => {});
        if (videoRef.current) { videoRef.current.muted = false; setMuted(false); }
      } else if (videoRef.current) {
        videoRef.current.volume = Math.min(1, nV);
        videoRef.current.muted = false;
        setMuted(false);
      }
      if (feedbackHideRef.current) clearTimeout(feedbackHideRef.current);
      setFeedback({ type: "volume", value: nV });
      feedbackHideRef.current = setTimeout(() => setFeedback(null), 1500);
    } else if (g.active === "brightness") {
      // Same directional fix as volume
      const dV = (isPortrait && !isFs) ? (t.clientX - g.lastX) : (g.lastY - t.clientY);
      if (isPortrait && !isFs) g.lastX = t.clientX; else g.lastY = t.clientY;
      const nB = Math.max(0.3, Math.min(1.5, brightnessRef.current + dV / 150));
      brightnessRef.current = nB;
      if (feedbackHideRef.current) clearTimeout(feedbackHideRef.current);
      setBrightness(nB); setFeedback({ type: "brightness", value: nB });
      feedbackHideRef.current = setTimeout(() => setFeedback(null), 1500);
    }
  }
  function onTE(e: React.TouchEvent<HTMLDivElement>) {
    if (isLocked) {
      if (showUnlockBtn) {
        setIsLocked(false);
        setShowUnlockBtn(false);
        if (unlockBtnHideRef.current) clearTimeout(unlockBtnHideRef.current);
      } else {
        if (unlockBtnHideRef.current) clearTimeout(unlockBtnHideRef.current);
        setShowUnlockBtn(true);
        unlockBtnHideRef.current = setTimeout(() => setShowUnlockBtn(false), 2000);
      }
      return;
    }
    if (longTimer.current) { clearTimeout(longTimer.current); longTimer.current = null; }
    if (longPress) {
      if (videoRef.current) videoRef.current.playbackRate = prevSpeed.current;
      setLongPress(false); setFeedback(null); return;
    }
    const g = gestRef.current;
    if (g.active === "seek") {
      if (feedback?.type === "seek" && videoRef.current) { videoRef.current.currentTime = feedback.value; setCurrentTime(feedback.value); }
      if (feedbackHideRef.current) clearTimeout(feedbackHideRef.current);
      setTimeout(() => setFeedback(null), 400); gestRef.current.active = "none"; return;
    }
    if (g.active !== "none") {
      if (feedbackHideRef.current) clearTimeout(feedbackHideRef.current);
      setTimeout(() => setFeedback(null), 800); gestRef.current.active = "none"; return;
    }
    if (moved.current) { if (feedbackHideRef.current) clearTimeout(feedbackHideRef.current); setFeedback(null); return; }

    const touch = e.changedTouches[0];
    /* In portrait (CSS-rotated 90° CW): video's left/right = screen's top/bottom (Y axis) */
    const side: "L" | "R" = (isPortrait && !isFs)
      ? (touch.clientY < window.innerHeight / 2 ? "L" : "R")
      : (touch.clientX < window.innerWidth / 2 ? "L" : "R");
    const now = Date.now();

    if (lastTap.current && now - lastTap.current.time < 350 && lastTap.current.side === side) {
      // ── DOUBLE TAP: cancel pending single-tap toggle, then seek ──
      if (tapTimer.current) { clearTimeout(tapTimer.current); tapTimer.current = null; }
      const delta = side === "R" ? 10 : -10;
      skip(delta);
      setDblTap({ side, id: now, secs: Math.abs(delta) });
      setTimeout(() => setDblTap(null), 700);
      lastTap.current = null;
      showControls();
    } else {
      // ── SINGLE TAP: record and delay controls toggle so double-tap can cancel it ──
      lastTap.current = { time: now, side };
      if (tapTimer.current) clearTimeout(tapTimer.current);
      tapTimer.current = setTimeout(() => {
        tapTimer.current = null;
        lastTap.current = null;
        setShowCtrl(p => { const n = !p; if (n) schedHide(); return n; });
      }, 260);
    }
  }

  const pct    = duration > 0 ? (currentTime / duration) * 100 : 0;
  const bufPct = duration > 0 ? (buffered   / duration) * 100 : 0;

  /* ── Skip intro/outro visibility — real AniSkip data only ── */
  const SKIP_LEAD = 10;
  const effectiveSkipIntro = skipIntro;
  const effectiveSkipOutro = skipOutro;
  const inIntroRange  = !!effectiveSkipIntro && currentTime >= Math.max(0, effectiveSkipIntro.start - SKIP_LEAD) && currentTime < effectiveSkipIntro.end;
  const inOutroRange  = !!effectiveSkipOutro && currentTime >= Math.max(0, effectiveSkipOutro.start - SKIP_LEAD) && currentTime <= effectiveSkipOutro.end;
  /* NOTE: duration > 0 intentionally removed — button must show as soon as skip data arrives */
  const hasSkipData   = !!(effectiveSkipIntro || effectiveSkipOutro);
  const activeSkipLabel = inIntroRange ? "تخطي المقدمة" : inOutroRange ? "تخطي النهاية" : null;
  /* Seek directly via videoRef — avoids division-by-zero when duration state is still 0 */
  const doSkipIntro = () => {
    const v = videoRef.current;
    if (v && effectiveSkipIntro) {
      v.currentTime = effectiveSkipIntro.end;
      if (v.paused) v.play().catch(() => {});
    }
    showControls();
  };
  const doSkipOutro = () => {
    if (onNextEp) { onNextEp(); return; }
    const v = videoRef.current;
    if (v && effectiveSkipOutro) {
      v.currentTime = effectiveSkipOutro.end;
      if (v.paused) v.play().catch(() => {});
    }
    showControls();
  };
  const activeSkipAction = inIntroRange ? doSkipIntro : inOutroRange ? doSkipOutro : null;

  /* ── portrait style ── */
  const portraitStyle: React.CSSProperties = isPortrait ? {
    position: "fixed", width: "100vh", height: "100vw",
    top: "calc(50vh - 50vw)", left: "calc(50vw - 50vh)",
    transform: "rotate(90deg)", transformOrigin: "center center", zIndex: 60,
  } : { position: "absolute", inset: 0 };

  /* ── subtitle: keep offset ref in sync with prop (used by rAF loop) ── */
  subOffsetRef.current = subOffset;

  /* ── subtitle position style ── */
  function subPositionStyle(pos: "top" | "center" | "bottom", ctrlVisible: boolean): React.CSSProperties {
    if (pos === "center") return { top: "50%", transform: "translateY(-50%)", bottom: "auto" };
    if (pos === "top")    return { top: ctrlVisible ? 90 : 20, bottom: "auto", transform: "none" };
                          return { bottom: ctrlVisible ? 118 : 20, top: "auto", transform: "none" };
  }

  return (
    <div
      ref={containerRef}
      data-hls-container
      className="bg-black overflow-hidden select-none"
      style={{ cursor: showCtrl ? "default" : "none", ...portraitStyle }}
      onMouseMove={() => {
        if (!isLocked && Date.now() - lastTouchTs.current > 600) showControls();
      }}
    >
      {/* ══ VIDEO ══ */}
      <video
        ref={videoRef}
        className="absolute inset-0 w-full h-full"
        style={{
          objectFit: isZoomed ? "cover" : "contain",
          filter: brightness !== 1
            ? `brightness(${brightness.toFixed(3)}) saturate(${(1 + (brightness - 1) * 0.55).toFixed(3)}) contrast(${(1 + (brightness - 1) * 0.12).toFixed(3)})`
            : undefined,
          transition: "filter 0.06s",
        }}
        playsInline preload="metadata"
      />

      {/* ── screenshot flash ── */}
      <AnimatePresence>
        {screenshotFlash && (
          <motion.div key="flash" className="absolute inset-0 bg-white pointer-events-none z-50"
            initial={{ opacity: 0.6 }} animate={{ opacity: 0 }} transition={{ duration: 0.5 }} />
        )}
      </AnimatePresence>

      {/* ══ TOUCH + UI LAYER ══ */}
      <div className="absolute inset-0 z-10" onTouchStart={onTS} onTouchMove={onTM} onTouchEnd={onTE} onTouchCancel={() => {
        if (longTimer.current) { clearTimeout(longTimer.current); longTimer.current = null; }
        if (longPress) { if (videoRef.current) videoRef.current.playbackRate = prevSpeed.current; setLongPress(false); }
        setFeedback(null);
        gestRef.current.active = "none";
      }}>

        {/* ── end of episode card ── */}
        <AnimatePresence>
          {isEnded && (
            <motion.div key="ended"
              initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
              className="absolute inset-0 flex flex-col items-center justify-center gap-6 z-20 pointer-events-auto"
              style={{ background: "rgba(0,0,0,0.82)", backdropFilter: "blur(8px)" }}
              dir="rtl">
              <motion.div initial={{ scale: 0.88, y: 12 }} animate={{ scale: 1, y: 0 }} transition={{ delay: 0.08 }}
                className="flex flex-col items-center gap-5">
                <div className="w-16 h-16 rounded-full flex items-center justify-center"
                  style={{ background: "rgba(139,92,246,0.18)", border: "1px solid rgba(167,139,250,0.35)" }}>
                  <span className="text-3xl">✓</span>
                </div>
                <div className="text-center px-8">
                  <p className="text-white/45 text-[12px] font-['Cairo'] mb-1">انتهت الحلقة</p>
                  <p className="text-white text-[16px] font-black font-['Cairo']">{title}</p>
                  {ep > 0 && <p className="text-white/60 text-[13px] font-['Cairo']">الحلقة {ep}</p>}
                </div>
                <div className="flex gap-3 flex-wrap justify-center">
                  <button
                    onPointerDown={e => { e.stopPropagation(); setIsEnded(false); onBack?.(); }}
                    className="flex items-center gap-2 px-5 py-3 rounded-2xl text-[13px] font-black font-['Cairo'] active:scale-95 transition-transform"
                    style={{ background: "rgba(255,255,255,0.07)", border: "1px solid rgba(255,255,255,0.14)", color: "rgba(255,255,255,0.65)" }}>
                    ← رجوع
                  </button>
                  <button
                    onPointerDown={e => { e.stopPropagation(); const v = videoRef.current; if (v) { v.currentTime = 0; v.play().catch(() => {}); } setIsEnded(false); showControls(); }}
                    className="flex items-center gap-2 px-5 py-3 rounded-2xl text-[13px] font-black font-['Cairo'] active:scale-95 transition-transform"
                    style={{ background: "rgba(255,255,255,0.12)", border: "1px solid rgba(255,255,255,0.22)", color: "white" }}>
                    ↺ إعادة
                  </button>
                  {onNextEp && (totalEps >= 900 || ep < totalEps) && (
                    <button
                      onPointerDown={e => { e.stopPropagation(); setAutoPlayCountdown(0); onNextEp?.(); }}
                      className="relative flex items-center gap-2 px-5 py-3 rounded-2xl text-[13px] font-black font-['Cairo'] active:scale-95 transition-transform overflow-hidden"
                      style={{ background: "rgba(139,92,246,0.92)", border: "1px solid rgba(167,139,250,0.55)", color: "white", boxShadow: "0 4px 20px rgba(139,92,246,0.4)" }}>
                      {autoPlayCountdown > 0 && (
                        <motion.div className="absolute inset-0 origin-left"
                          style={{ background: "rgba(255,255,255,0.15)" }}
                          initial={{ scaleX: 1 }} animate={{ scaleX: 0 }}
                          transition={{ duration: autoPlayCountdown, ease: "linear" }} />
                      )}
                      <span className="relative">الحلقة التالية {autoPlayCountdown > 0 ? `(${autoPlayCountdown})` : "⏭"}</span>
                    </button>
                  )}
                </div>
              </motion.div>
            </motion.div>
          )}
        </AnimatePresence>

        {/* ── error ── */}
        <AnimatePresence>
          {error && (
            <motion.div key="err" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
              className="absolute inset-0 flex flex-col items-center justify-center gap-5 z-20 pointer-events-auto"
              style={{ background: "rgba(0,0,0,0.96)" }}>
              <div className="w-16 h-16 rounded-2xl flex items-center justify-center"
                style={{ background: "rgba(239,68,68,0.10)", border: "1px solid rgba(239,68,68,0.25)" }}>
                <AlertTriangle className="w-7 h-7 text-red-400/70" />
              </div>
              <div className="text-center px-10">
                <p className="text-white/85 text-[15px] font-black font-['Cairo']">تعذّر تحميل المصدر</p>
                <p className="text-white/30 text-[12px] mt-1.5 font-['Cairo'] leading-relaxed">{error}</p>
              </div>
              <button onClick={() => { setError(null); loadSource(); }}
                className="flex items-center gap-2 px-6 py-3 rounded-full text-white text-[13px] font-bold font-['Cairo'] active:scale-95 transition-transform"
                style={{ background: "rgba(239,68,68,0.18)", border: "1px solid rgba(239,68,68,0.35)" }}>
                <RefreshCw className="w-4 h-4" /> إعادة المحاولة
              </button>
            </motion.div>
          )}
        </AnimatePresence>

        {/* ── DOUBLE TAP seek ripple ── */}
        <AnimatePresence>
          {dblTap && (
            <motion.div
              key={`dt-${dblTap.id}`}
              className="absolute inset-y-0 pointer-events-none z-30 flex items-center"
              style={{ [dblTap.side === "L" ? "left" : "right"]: 0, width: "45%" }}
              initial={{ opacity: 0 }}
              animate={{ opacity: 1 }}
              exit={{ opacity: 0 }}
              transition={{ duration: 0.5 }}
            >
              <motion.div
                className="absolute rounded-full"
                style={{
                  width: 120, height: 120,
                  [dblTap.side === "L" ? "left" : "right"]: "10%",
                  top: "50%", translateY: "-50%",
                  background: dblTap.side === "L"
                    ? "radial-gradient(circle, rgba(251,146,60,0.30) 0%, transparent 70%)"
                    : "radial-gradient(circle, rgba(139,92,246,0.30) 0%, transparent 70%)",
                }}
                initial={{ scale: 0.4, opacity: 0.9 }}
                animate={{ scale: 2.2, opacity: 0 }}
                transition={{ duration: 0.65, ease: "easeOut" }}
              />
              <div
                className="absolute flex flex-col items-center gap-1"
                style={{
                  [dblTap.side === "L" ? "left" : "right"]: "10%",
                  top: "50%", transform: "translateY(-50%)",
                  width: 80,
                }}
              >
                {dblTap.side === "L"
                  ? <RotateCcw className="w-8 h-8 text-orange-300/90" strokeWidth={1.6} />
                  : <RotateCw  className="w-8 h-8 text-violet-300/90" strokeWidth={1.6} />}
                <span className="font-black font-mono text-[13px]"
                  style={{ color: dblTap.side === "L" ? "rgba(253,186,116,0.95)" : "rgba(196,181,253,0.95)", textShadow: "0 1px 8px rgba(0,0,0,0.9)" }}>
                  {dblTap.side === "L" ? "-" : "+"}{dblTap.secs}ث
                </span>
              </div>
            </motion.div>
          )}
        </AnimatePresence>



        {/* ── long press 2× ── */}
        <AnimatePresence>
          {longPress && (
            <motion.div key="lp" initial={{ opacity: 0, y: -8 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0 }}
              className="absolute top-[72px] left-1/2 -translate-x-1/2 z-30 flex items-center gap-2 px-5 py-2 rounded-full pointer-events-none"
              style={{ background: "rgba(0,0,0,0.70)", border: "1px solid rgba(251,191,36,0.30)", backdropFilter: "blur(12px)" }}>
              <Zap className="w-3.5 h-3.5 text-amber-300 fill-amber-300" />
              <span className="text-amber-200/90 text-[12px] font-black font-['Cairo']">تشغيل سريع ×2</span>
            </motion.div>
          )}
        </AnimatePresence>

        {/* ── volume feedback ── */}
        <AnimatePresence>
          {feedback?.type === "volume" && (
            <motion.div key="vol" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
              className="absolute right-5 top-1/2 -translate-y-1/2 z-30 flex flex-col items-center gap-3 pointer-events-none">
              <div className="relative rounded-full overflow-hidden" style={{ width: 4, height: 110, background: "rgba(255,255,255,0.15)" }}>
                <div className="absolute bottom-0 left-0 right-0 rounded-full"
                  style={{ background: feedback.value > 1 ? "rgba(167,139,250,0.90)" : "rgba(255,255,255,0.85)", height: `${Math.min(feedback.value / 2.0 * 100, 100)}%`, transition: "height 0.06s" }} />
              </div>
              <div className="flex items-center gap-1.5 px-3 py-1 rounded-full"
                style={{ background: "rgba(0,0,0,0.65)", border: `1px solid ${feedback.value > 1 ? "rgba(167,139,250,0.35)" : "rgba(255,255,255,0.12)"}` }}>
                <Volume2 className="w-3 h-3" style={{ color: feedback.value > 1 ? "rgba(196,181,253,0.80)" : "rgba(255,255,255,0.65)" }} />
                <span className="text-white/85 text-[11px] font-bold font-mono">{Math.round(feedback.value / 2.0 * 100)}%</span>
              </div>
            </motion.div>
          )}
        </AnimatePresence>

        {/* ── brightness feedback ── */}
        <AnimatePresence>
          {feedback?.type === "brightness" && (
            <motion.div key="bright" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
              className="absolute left-5 top-1/2 -translate-y-1/2 z-30 flex flex-col items-center gap-3 pointer-events-none">
              <div className="relative rounded-full overflow-hidden" style={{ width: 4, height: 110, background: "rgba(255,255,255,0.15)" }}>
                <div className="absolute bottom-0 left-0 right-0 rounded-full"
                  style={{ background: "rgba(253,224,71,0.90)", height: `${Math.min(Math.max((feedback.value - 0.3) / 1.2 * 100, 0), 100)}%`, transition: "height 0.06s" }} />
              </div>
              <div className="flex items-center gap-1.5 px-3 py-1 rounded-full"
                style={{ background: "rgba(0,0,0,0.65)", border: "1px solid rgba(255,255,255,0.12)" }}>
                <Sun className="w-3 h-3 text-yellow-300/75" />
                <span className="text-white/85 text-[11px] font-bold font-mono">{Math.round((feedback.value - 0.3) / 1.2 * 100)}%</span>
              </div>
            </motion.div>
          )}
        </AnimatePresence>

        {/* ── seek preview ── */}
        <AnimatePresence>
          {feedback?.type === "seek" && (
            <motion.div key="seek" initial={{ opacity: 0, scale: 0.94 }} animate={{ opacity: 1, scale: 1 }} exit={{ opacity: 0 }}
              className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 z-30 pointer-events-none">
              <div className="flex items-center gap-3 px-6 py-3 rounded-2xl"
                style={{ background: GLASS_PANEL, border: `1px solid ${GLASS_BORDER}`, backdropFilter: GLASS_BLUR }}>
                {(feedback.delta ?? 0) >= 0
                  ? <RotateCw className="w-5 h-5 text-white/55" strokeWidth={1.6} />
                  : <RotateCcw className="w-5 h-5 text-white/55" strokeWidth={1.6} />}
                <span className="text-white font-black text-[20px] font-mono">{fmtTime(feedback.value)}</span>
                <span className="text-white/38 text-[11px] font-['Cairo']">
                  {(feedback.delta ?? 0) >= 0
                    ? `+${Math.abs(Math.round(feedback.delta ?? 0))}s`
                    : `-${Math.abs(Math.round(feedback.delta ?? 0))}s`}
                </span>
              </div>
            </motion.div>
          )}
        </AnimatePresence>

        {/* ════════════════════════════════════════
            LOCK SCREEN — persistent side indicator + tap-to-show unlock button
        ════════════════════════════════════════ */}


        {/* ── lock badge — only visible with unlock pill ── */}
        <AnimatePresence>
          {isLocked && showUnlockBtn && (
            <motion.div key="lock-badge" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
              transition={{ duration: 0.18 }}
              className="absolute left-3 top-1/2 -translate-y-1/2 z-40 pointer-events-none">
              <div className="flex items-center gap-1 px-2 py-1 rounded-full"
                style={{ background: "rgba(0,0,0,0.55)", border: "1px solid rgba(251,191,36,0.28)" }}>
                <Lock className="w-3 h-3 text-amber-300/70" strokeWidth={2.2} />
              </div>
            </motion.div>
          )}
        </AnimatePresence>

        {/* Unlock pill — compact, slides up from center on tap, auto-hides after 2s */}
        <AnimatePresence>
          {isLocked && showUnlockBtn && (
            <motion.button
              key="unlock-btn"
              initial={{ opacity: 0, y: 8, scale: 0.92 }}
              animate={{ opacity: 1, y: 0, scale: 1 }}
              exit={{ opacity: 0, y: 6, scale: 0.94 }}
              transition={{ duration: 0.18, ease: [0.22, 1, 0.36, 1] }}
              onClick={() => {
                setIsLocked(false);
                setShowUnlockBtn(false);
                if (unlockBtnHideRef.current) clearTimeout(unlockBtnHideRef.current);
              }}
              onTouchEnd={e => e.stopPropagation()}
              className="absolute left-1/2 top-1/2 -translate-x-1/2 -translate-y-1/2 z-40 flex items-center gap-2 px-4 py-2.5 rounded-full active:scale-95 transition-transform pointer-events-auto"
              style={{
                background: "rgba(10,10,20,0.82)",
                backdropFilter: "blur(20px)",
                border: "1px solid rgba(251,191,36,0.35)",
                boxShadow: "0 4px 20px rgba(0,0,0,0.55)",
              }}
            >
              <Unlock className="w-3.5 h-3.5 text-amber-300" strokeWidth={2} />
              <span className="text-amber-200/90 text-[12px] font-bold font-['Cairo'] leading-none">المس مرة أخرى للفتح</span>
            </motion.button>
          )}
        </AnimatePresence>

        {/* ── Mascot loading overlay — shown when video is loading/buffering ── */}
        <AnimatePresence>
          {(loading || buffering) && !error && !playing && !showCtrl && (
            <motion.div
              key="buf-overlay"
              initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
              transition={{ duration: 0.25 }}
              className="absolute inset-0 z-20 flex flex-col items-center justify-center gap-2 pointer-events-none"
              style={{ background: "linear-gradient(to bottom, rgba(0,0,0,0.15) 0%, rgba(0,0,0,0.55) 100%)" }}
            >
              <AnimeMascot mood="loading" />
              <div className="flex items-center gap-2 mt-1">
                <div className="w-4 h-4 rounded-full border-2 border-white/25 border-t-white/75 animate-spin" />
                <span className="text-white/55 text-[10px] font-black font-['Cairo']">جاري تحميل الفيديو…</span>
              </div>
            </motion.div>
          )}
        </AnimatePresence>

        {/* ════════════════════════════════════════
            MAIN CONTROLS — GLASSY v5
        ════════════════════════════════════════ */}
        <AnimatePresence>
          {showCtrl && !error && !isLocked && (
            <motion.div key="ctrl"
              initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
              transition={{ duration: 0.22, ease: "easeInOut" }}
              className="absolute inset-0 flex flex-col pointer-events-none"
            >

              {/* ════ TOP BAR ════ */}
              <div
                className="shrink-0 pointer-events-auto"
                dir="ltr"
                style={{
                  background: `linear-gradient(180deg, rgba(0,0,0,0.72) 0%, rgba(0,0,0,0.28) 70%, transparent 100%)`,
                  paddingTop: "max(16px, env(safe-area-inset-top))",
                  paddingBottom: 22,
                  paddingLeft: 14,
                  /* In portrait-rotated mode the player's right edge sits on the device's
                     physical bottom where the nav bar lives — add inset-bottom to keep
                     the close / screenshot buttons from being cut off.              */
                  paddingRight: isPortrait ? "max(18px, env(safe-area-inset-bottom))" : 14,
                }}
                onClick={e => e.stopPropagation()}
                onTouchStart={e => { e.stopPropagation(); showControls(); }}
                onTouchEnd={e => e.stopPropagation()}
              >
                <div className="flex items-center justify-between gap-3">
                  {/* LEFT: quality → title → episode row */}
                  <div className="flex-1 min-w-0">
                    {/* Row 1: quality + badges */}
                    <div className="flex items-center gap-2 mb-[5px] flex-wrap">
                      {qualityLabel && (
                        <span className="px-2 py-0.5 rounded-lg text-[12px] font-black font-mono text-amber-300"
                          style={{ background: "rgba(251,191,36,0.18)", border: "1px solid rgba(251,191,36,0.35)" }}>
                          {qualityLabel}P
                        </span>
                      )}
                      <span className="text-white/40 text-[11px] font-['Cairo']">عربي مترجم</span>
                      {serverCount > 1 && (
                        <span className="text-white/60 text-[13px] font-black font-['Cairo']">سيرفر {serverIndex + 1}/{serverCount}</span>
                      )}
                    </div>
                    {/* Row 2: anime title */}
                    <h1 className="text-white font-black leading-snug truncate"
                      style={{ fontSize: 26, textShadow: "0 2px 14px rgba(0,0,0,0.95)", letterSpacing: "-0.01em" }}>
                      {title || "Nova Player"}
                    </h1>
                    {/* Row 3: episode badge */}
                    <div className="flex items-center gap-2 mt-[5px] overflow-hidden">
                      <span
                        className="shrink-0 px-2 py-[2px] rounded-md text-[11px] font-black font-['Cairo'] tracking-wide"
                        style={{
                          background: "linear-gradient(135deg,rgba(139,92,246,0.32),rgba(109,40,217,0.22))",
                          border: "1px solid rgba(167,139,250,0.3)",
                          color: "rgba(221,214,254,0.95)",
                          textShadow: "0 1px 6px rgba(109,40,217,0.5)",
                        }}
                      >
                        الحلقة {ep}
                      </span>
                    </div>
                    {/* Row 4: Arabic episode title — big and visible */}
                    {epTitle && (
                      <div className="flex items-center gap-1.5 mt-[5px] overflow-hidden">
                        <span className="shrink-0 px-1.5 py-[1px] rounded text-[9px] font-black font-['Cairo'] tracking-wide"
                          style={{ background: "rgba(250,204,21,0.15)", border: "1px solid rgba(250,204,21,0.30)", color: "#fde047" }}>
                          EP
                        </span>
                        <span className="font-['Cairo'] font-bold truncate leading-tight"
                          style={{ fontSize: 14, color: "rgba(255,255,255,0.95)", textShadow: "0 1px 8px rgba(0,0,0,0.8)" }}>
                          {epTitle}
                        </span>
                      </div>
                    )}
                  </div>

                  {/* RIGHT: action buttons */}
                  <div className="flex items-center gap-2 shrink-0">
                    {/* Subtitle / CC button — opens side subtitle panel */}
                    {onSubtitleClick && (
                      <button
                        onClick={() => onSubtitleClick()}
                        className="w-9 h-9 rounded-full flex items-center justify-center active:scale-90 transition-all duration-150 relative"
                        style={subEnabled
                          ? { background: "rgba(139,92,246,0.30)", border: "1px solid rgba(139,92,246,0.50)" }
                          : { background: "rgba(255,255,255,0.10)", border: "1px solid rgba(255,255,255,0.15)" }
                        }
                      >
                        <SubtitleIcon className="w-[15px] h-[15px]"
                          style={{ color: subEnabled ? "#c4b5fd" : "rgba(255,255,255,0.65)" }} />
                        {/* Loading spinner ring — shown while subtitle is being fetched/translated */}
                        {!subEnabled && subNote && subNote !== "لا تتوفر ترجمة" && (
                          <span className="absolute inset-0 rounded-full border border-t-violet-400 border-violet-400/0 animate-spin pointer-events-none" />
                        )}
                      </button>
                    )}
                    {/* Flip screen */}
                    <button onClick={toggleRotation}
                      className="w-9 h-9 rounded-full flex items-center justify-center active:scale-90 transition-all duration-150"
                      style={isPortrait
                        ? { background: "rgba(139,92,246,0.30)", border: "1px solid rgba(139,92,246,0.55)" }
                        : { background: "rgba(255,255,255,0.10)", border: "1px solid rgba(255,255,255,0.15)" }}>
                      <FlipScreenIcon className="w-[16px] h-[16px]"
                        style={{ color: isPortrait ? "#c4b5fd" : "rgba(255,255,255,0.65)" }} />
                    </button>
                    {/* Screenshot */}
                    <button onClick={takeScreenshot}
                      className="w-9 h-9 rounded-full flex items-center justify-center active:scale-90 transition-all duration-150"
                      style={{ background: "rgba(255,255,255,0.10)", border: "1px solid rgba(255,255,255,0.15)" }}>
                      <Camera className="w-[15px] h-[15px] text-white/65" />
                    </button>
                    {/* Close */}
                    <button onClick={onBack}
                      className="w-9 h-9 rounded-full flex items-center justify-center active:scale-90 transition-all duration-150"
                      style={{ background: "rgba(239,68,68,0.14)", border: "1px solid rgba(239,68,68,0.28)" }}>
                      <X className="w-[15px] h-[15px] text-red-400/80" />
                    </button>
                  </div>
                </div>
              </div>

              {/* ════ CENTER — play/pause only ════ */}
              <div className="flex-1 flex items-center justify-center pointer-events-none">
                <button onClick={togglePlay}
                  className="flex items-center justify-center active:scale-90 transition-transform pointer-events-auto"
                  onTouchStart={e => e.stopPropagation()}
                  onTouchEnd={e => e.stopPropagation()}
                  style={{
                    width: 80, height: 80, borderRadius: "50%",
                    background: "rgba(0,0,0,0.50)",
                    border: "2px solid rgba(255,255,255,0.50)",
                    boxShadow: "0 8px 32px rgba(0,0,0,0.60), 0 0 0 6px rgba(255,255,255,0.04)",
                  }}>
                  <AnimatePresence mode="wait">
                    {(loading || buffering) && !error ? (
                      <motion.div key="buf" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }} transition={{ duration: 0.1 }}>
                        <div className="w-7 h-7 rounded-full border-2 border-white/25 border-t-white/80 animate-spin" />
                      </motion.div>
                    ) : playing ? (
                      <motion.div key="p" initial={{ scale: 0.6, opacity: 0 }} animate={{ scale: 1, opacity: 1 }} exit={{ scale: 0.6, opacity: 0 }} transition={{ duration: 0.1 }}>
                        <Pause className="w-8 h-8 text-white fill-white" />
                      </motion.div>
                    ) : (
                      <motion.div key="pl" initial={{ scale: 0.6, opacity: 0 }} animate={{ scale: 1, opacity: 1 }} exit={{ scale: 0.6, opacity: 0 }} transition={{ duration: 0.1 }}>
                        <Play className="w-8 h-8 text-white fill-white ml-1" />
                      </motion.div>
                    )}
                  </AnimatePresence>
                </button>
              </div>

              {/* ════ BOTTOM SECTION ════ */}
              <div
                className="shrink-0 pointer-events-auto"
                style={{ background: `linear-gradient(0deg, rgba(0,0,0,0.72) 0%, rgba(0,0,0,0.28) 70%, transparent 100%)` }}
                onClick={e => e.stopPropagation()}
                onTouchStart={e => e.stopPropagation()}
                onTouchEnd={e => e.stopPropagation()}
              >
                {/* ── Skip intro/outro — APK style: row above progress bar, only when in range ── */}
                <AnimatePresence>
                  {(inIntroRange || inOutroRange) && !isLocked && (
                    <motion.div
                      key="skip-row"
                      initial={{ opacity: 0, y: 6 }}
                      animate={{ opacity: 1, y: 0 }}
                      exit={{ opacity: 0, y: 6 }}
                      transition={{ duration: 0.18, ease: [0.22,1,0.36,1] }}
                      className="flex justify-end gap-2 px-5 pb-2 pointer-events-auto"
                      dir="ltr"
                    >
                      {inIntroRange && (
                        <button
                          onPointerDown={e => { e.stopPropagation(); doSkipIntro(); }}
                          className="flex items-center gap-1.5 px-4 py-2 rounded-2xl font-black font-['Cairo'] active:scale-90 transition-transform"
                          style={{
                            fontSize: 12,
                            background: "rgba(251,191,36,0.92)",
                            border: "1px solid rgba(253,224,71,0.70)",
                            color: "#1a0f00",
                            boxShadow: "0 2px 16px rgba(251,191,36,0.35)",
                            touchAction: "manipulation",
                          }}>
                          <svg viewBox="0 0 16 16" width="13" height="13" fill="currentColor"><path d="M3 3.5v9l5.5-4.5L3 3.5zm6 0v9l5.5-4.5L9 3.5z"/></svg>
                          تخطي المقدمة
                        </button>
                      )}
                      {inOutroRange && (
                        <button
                          onPointerDown={e => { e.stopPropagation(); doSkipOutro(); }}
                          className="flex items-center gap-1.5 px-4 py-2 rounded-2xl font-black font-['Cairo'] active:scale-90 transition-transform"
                          style={{
                            fontSize: 12,
                            background: "rgba(139,92,246,0.92)",
                            border: "1px solid rgba(167,139,250,0.65)",
                            color: "#fff",
                            boxShadow: "0 2px 16px rgba(139,92,246,0.35)",
                            touchAction: "manipulation",
                          }}>
                          <svg viewBox="0 0 16 16" width="13" height="13" fill="currentColor"><path d="M3 3.5v9l5.5-4.5L3 3.5zm6 0v9l5.5-4.5L9 3.5z"/></svg>
                          تخطي النهاية
                        </button>
                      )}
                    </motion.div>
                  )}
                </AnimatePresence>

                {/* ── Progress bar ── */}
                <div className="px-5 pt-1 pb-1">
                  {/* Time row: current-time LEFT · total-time RIGHT */}
                  <div className="flex items-center justify-between mb-1 px-0.5" dir="ltr">
                    <span className="text-white/70 text-[12px] font-bold font-mono shrink-0">{fmtTime(currentTime)}</span>
                    <span className="text-white/45 text-[12px] font-bold font-mono shrink-0">{fmtTime(duration)}</span>
                  </div>
                  {/* 36px touch target — visual bar centered inside */}
                  <div
                    ref={progressRef}
                    className="relative w-full cursor-pointer select-none"
                    style={{ height: 36, display: "flex", alignItems: "center", touchAction: "none", userSelect: "none" }}
                    onClick={handlePrgClick}
                    onMouseDown={handlePrgDown}
                    onMouseEnter={() => setPrgHover(true)}
                    onMouseLeave={() => { if (!touchScrubbing.current) setPrgHover(false); }}
                    onTouchStart={e => {
                      e.stopPropagation(); e.preventDefault();
                      touchScrubbing.current = true; setPrgHover(true);
                      const r = e.currentTarget.getBoundingClientRect();
                      seekFrac(calcSeekFrac(e.touches[0].clientX, e.touches[0].clientY, r));
                    }}
                    onTouchMove={e => {
                      e.stopPropagation(); e.preventDefault();
                      if (!touchScrubbing.current) return;
                      const r = e.currentTarget.getBoundingClientRect();
                      seekFrac(calcSeekFrac(e.touches[0].clientX, e.touches[0].clientY, r));
                    }}
                    onTouchEnd={e => { e.stopPropagation(); touchScrubbing.current = false; setPrgHover(false); }}
                  >
                    {/* Visual track */}
                    <div className="absolute left-0 right-0 rounded-full overflow-hidden pointer-events-none"
                      style={{ height: prgHover ? 8 : 5, transition: "height 0.18s cubic-bezier(.22,1,.36,1)" }}>
                      <div className="absolute inset-0" style={{ background: "rgba(255,255,255,0.14)" }} />
                      {/* Buffered */}
                      <div className="absolute top-0 left-0 h-full"
                        style={{ width: `${bufPct}%`, background: "rgba(139,92,246,0.28)", transition: "width 0.5s" }} />
                      {/* Progress — glowing gradient */}
                      <div className="absolute top-0 left-0 h-full"
                        style={{
                          width: `${pct}%`,
                          background: "linear-gradient(90deg, #7c3aed 0%, #a78bfa 100%)",
                          boxShadow: prgHover ? "0 0 10px rgba(167,139,250,0.70)" : "0 0 4px rgba(167,139,250,0.35)",
                          transition: (seekDrag.current || touchScrubbing.current) ? "none" : "width 0.12s, box-shadow 0.18s",
                        }} />
                    </div>
                    {/* ── Skip markers — small ticks that disappear once section is passed ── */}
                    {effectiveSkipIntro && duration > 0 && currentTime < effectiveSkipIntro.end && (
                      <>
                        <div className="absolute top-1/2 -translate-y-1/2 pointer-events-none rounded-sm" style={{
                          left: `${(effectiveSkipIntro.start / duration) * 100}%`,
                          width: 2, height: prgHover ? 14 : 10,
                          background: "rgba(167,139,250,0.80)",
                          boxShadow: "0 0 4px rgba(167,139,250,0.60)",
                          zIndex: 11,
                        }} />
                      </>
                    )}
                    {effectiveSkipOutro && duration > 0 && currentTime < effectiveSkipOutro.end && (
                      <>
                        <div className="absolute top-1/2 -translate-y-1/2 pointer-events-none rounded-sm" style={{
                          left: `${(effectiveSkipOutro.start / duration) * 100}%`,
                          width: 2, height: prgHover ? 14 : 10,
                          background: "rgba(167,139,250,0.80)",
                          boxShadow: "0 0 4px rgba(167,139,250,0.60)",
                          zIndex: 11,
                        }} />
                      </>
                    )}
                    {/* Thumb */}
                    <div className="absolute top-1/2 -translate-y-1/2 rounded-full pointer-events-none"
                      style={{
                        left: `calc(${pct}% - ${prgHover ? 11 : 5}px)`,
                        width:  prgHover ? 22 : 10,
                        height: prgHover ? 22 : 10,
                        background: prgHover ? "#ffffff" : "#a78bfa",
                        boxShadow: prgHover
                          ? "0 0 0 4px rgba(167,139,250,0.40), 0 0 18px rgba(167,139,250,0.85), 0 2px 8px rgba(0,0,0,0.80)"
                          : "0 0 0 2px rgba(167,139,250,0.25), 0 1px 6px rgba(0,0,0,0.60)",
                        transition: (seekDrag.current || touchScrubbing.current) ? "none" : "left 0.12s, width 0.15s, height 0.15s, background 0.15s, box-shadow 0.15s",
                      }} />
                  </div>
                </div>

                {/* ── Controls row ── */}
                <div
                  className="flex items-center px-3 pt-2"
                  style={{
                    /* portrait-rotated: physical bottom → player's left → no safe area needed there;
                       physical top (notch) → player's left edge in landscape, handled by paddingLeft.
                       Keep safe-area-inset-bottom for non-rotated (fullscreen) mode.             */
                    paddingBottom: isPortrait ? 14 : "max(16px, env(safe-area-inset-bottom))",
                    paddingLeft: isPortrait ? "max(12px, env(safe-area-inset-top))" : 12,
                  }}
                >
                  {/* Left: speed + skip buttons */}
                  <div className="flex items-center gap-1.5 flex-1 flex-wrap">

                    {/* Speed */}
                    <div className="relative">
                      <button onClick={() => { setShowSpeed(s => !s); setShowViewMode(false); showControls(); }}
                        className="w-9 h-9 flex items-center justify-center rounded-xl active:bg-white/10 transition-colors">
                        <span className="px-2 py-[3px] rounded-lg font-mono text-[11px] font-black leading-none"
                          style={{
                            background: (longPress || speed !== 1) ? "rgba(251,191,36,0.22)" : "rgba(255,255,255,0.07)",
                            color: (longPress || speed !== 1) ? "#fde68a" : "rgba(255,255,255,0.45)",
                            border: (longPress || speed !== 1) ? "1px solid rgba(251,191,36,0.40)" : "1px solid rgba(255,255,255,0.10)",
                          }}>
                          ×{longPress ? 2 : speed}
                        </span>
                      </button>
                      <AnimatePresence>
                        {showSpeed && (
                          <motion.div
                            initial={{ opacity: 0, y: 8, scale: 0.93 }}
                            animate={{ opacity: 1, y: 0, scale: 1 }}
                            exit={{ opacity: 0, y: 8, scale: 0.93 }}
                            transition={{ duration: 0.14 }}
                            className="absolute bottom-full mb-2 left-0 rounded-2xl overflow-hidden z-50 shadow-2xl"
                            style={{ background: GLASS_PANEL, border: `1px solid ${GLASS_BORDER}`, backdropFilter: GLASS_BLUR, minWidth: 100 }}
                          >
                            {SPEEDS.map((s, i) => (
                              <button key={s} onClick={() => changeSpeed(s)}
                                className="w-full flex items-center justify-between px-4 py-2.5 transition-colors"
                                style={{
                                  background: s === speed ? "rgba(139,92,246,0.18)" : "transparent",
                                  borderBottom: i < SPEEDS.length - 1 ? `1px solid ${GLASS_BORDER}` : "none",
                                }}>
                                <span className="text-[12px] font-black font-mono"
                                  style={{ color: s === speed ? "#c4b5fd" : "rgba(255,255,255,0.40)" }}>×{s}</span>
                                {s === speed && <div className="w-1.5 h-1.5 rounded-full bg-violet-400" />}
                              </button>
                            ))}
                          </motion.div>
                        )}
                      </AnimatePresence>
                    </div>

                    {/* Mute — نقلناه لليسار بجانب السرعة */}
                    <button onClick={toggleMute}
                      className="w-9 h-9 flex items-center justify-center rounded-xl active:scale-90 transition-all duration-150"
                      style={{ background: "rgba(20,20,40,0.65)", border: "1px solid rgba(255,255,255,0.14)" }}>
                      {muted || volume === 0
                        ? <VolumeX className="w-[16px] h-[16px] text-white/55" />
                        : <Volume2 className="w-[16px] h-[16px] text-white/55" />}
                    </button>

                  </div>

                  {/* Center: +10ث · play/pause · -10ث  (RTL: تقدم على اليسار، رجوع على اليمين) */}
                  <div className="flex items-center gap-2">
                    <button
                      onPointerDown={e => { e.stopPropagation(); skip(10); showControls(); }}
                      className="flex flex-col items-center justify-center gap-[3px] rounded-2xl active:scale-90 transition-all"
                      style={{ width: 48, height: 48, background: "rgba(20,20,40,0.72)", border: "1px solid rgba(255,255,255,0.14)" }}>
                      <RotateCw className="w-[18px] h-[18px] text-white/80" strokeWidth={1.8} />
                      <span className="font-mono font-black leading-none text-white/60" style={{ fontSize: 9 }}>+10ث</span>
                    </button>
                    <button
                      onPointerDown={e => { e.stopPropagation(); togglePlay(); showControls(); }}
                      className="flex items-center justify-center rounded-2xl active:scale-90 transition-all"
                      style={{ width: 56, height: 56, background: isEnded ? "rgba(124,58,237,0.35)" : "rgba(139,92,246,0.22)", border: "1px solid rgba(139,92,246,0.50)", boxShadow: "0 4px 16px rgba(124,58,237,0.28)" }}>
                      {isEnded
                        ? <RotateCcw className="w-[23px] h-[23px] text-violet-200" />
                        : playing
                        ? <Pause className="w-[23px] h-[23px] text-violet-200" />
                        : <Play  className="w-[23px] h-[23px] text-violet-200 mr-[-2px]" />}
                    </button>
                    <button
                      onPointerDown={e => { e.stopPropagation(); skip(-10); showControls(); }}
                      className="flex flex-col items-center justify-center gap-[3px] rounded-2xl active:scale-90 transition-all"
                      style={{ width: 48, height: 48, background: "rgba(20,20,40,0.72)", border: "1px solid rgba(255,255,255,0.14)" }}>
                      <RotateCcw className="w-[18px] h-[18px] text-white/80" strokeWidth={1.8} />
                      <span className="font-mono font-black leading-none text-white/60" style={{ fontSize: 9 }}>-10ث</span>
                    </button>
                  </div>

                  {/* Right: view-mode · lock */}
                  <div className="flex items-center gap-2 flex-1 justify-end">

                    {/* ── View Mode Button ── */}
                    <button
                      onClick={() => { setShowViewMode(v => !v); setShowSpeed(false); showControls(); }}
                      className="w-9 h-9 flex items-center justify-center rounded-xl active:scale-90 transition-all duration-150"
                      title="وضع العرض"
                      style={showViewMode || isZoomed || isFs
                        ? { background: "rgba(139,92,246,0.22)", border: "1px solid rgba(139,92,246,0.45)" }
                        : { background: "rgba(20,20,40,0.65)", border: "1px solid rgba(255,255,255,0.14)" }}
                    >
                      {isFs
                        ? <Minimize2  className="w-[16px] h-[16px] text-violet-300" />
                        : isZoomed
                        ? <Scan       className="w-[16px] h-[16px] text-violet-300" />
                        : <Maximize2  className="w-[16px] h-[16px] text-white/65" />}
                    </button>

                    <button onClick={() => { setIsLocked(true); setShowUnlockBtn(false); }}
                      className="w-9 h-9 flex items-center justify-center rounded-xl active:scale-90 transition-all duration-150"
                      style={{ background: "rgba(251,191,36,0.11)", border: "1px solid rgba(251,191,36,0.26)" }}>
                      <Lock className="w-[15px] h-[15px] text-amber-300/70" strokeWidth={2.2} />
                    </button>
                  </div>
                </div>
              </div>

            </motion.div>
          )}
        </AnimatePresence>

        {/* ════════════════════════════════════════
            VIEW MODE PANEL — root level (escapes overflow-hidden)
        ════════════════════════════════════════ */}
        <AnimatePresence>
          {showViewMode && showCtrl && !error && !isLocked && (
            <motion.div
              key="viewmode"
              initial={{ opacity: 0, y: 12, scale: 0.92 }}
              animate={{ opacity: 1, y: 0, scale: 1 }}
              exit={{ opacity: 0, y: 12, scale: 0.92 }}
              transition={{ duration: 0.18, ease: [0.22, 1, 0.36, 1] }}
              className="absolute z-50 pointer-events-auto"
              dir="rtl"
              style={{
                bottom: 90,
                left: 14,
                width: 210,
                maxWidth: "calc(100% - 28px)",
                background: "rgba(4,4,14,0.97)",
                backdropFilter: "blur(40px) saturate(200%)",
                border: "1px solid rgba(139,92,246,0.25)",
                borderRadius: 18,
                overflow: "hidden",
                boxShadow: "0 24px 64px rgba(0,0,0,0.85), 0 0 0 1px rgba(139,92,246,0.08) inset",
              }}
              onClick={e => e.stopPropagation()}
              onTouchStart={e => e.stopPropagation()}
              onTouchEnd={e => e.stopPropagation()}
            >
              {/* Header */}
              <div className="flex items-center justify-between px-4 py-2.5"
                style={{ borderBottom: "1px solid rgba(139,92,246,0.14)", background: "rgba(139,92,246,0.10)" }}>
                <div className="flex items-center gap-2">
                  <div className="w-5 h-5 rounded-lg flex items-center justify-center"
                    style={{ background: "rgba(139,92,246,0.30)", border: "1px solid rgba(139,92,246,0.50)" }}>
                    <Maximize2 className="w-2.5 h-2.5 text-violet-300" />
                  </div>
                  <span className="text-white text-[12px] font-black font-['Cairo']">وضع العرض</span>
                </div>
                <button onClick={() => setShowViewMode(false)}
                  className="w-6 h-6 rounded-full flex items-center justify-center active:bg-white/10 transition-colors">
                  <X className="w-3 h-3 text-white/40" />
                </button>
              </div>
              {/* Options */}
              {([
                {
                  Icon: ScanLine, label: "عرض عادي", desc: "نسبة أصلية مع حواف سوداء",
                  active: !isZoomed && !isFs,
                  action: () => { setIsZoomed(false); if (isFs) toggleFs(); setShowViewMode(false); },
                },
                {
                  Icon: Scan, label: "تكبير ملء الشاشة", desc: "اقتصاص الحواف السوداء",
                  active: isZoomed,
                  action: () => { setIsZoomed(z => !z); setShowViewMode(false); },
                },
                {
                  Icon: isFs ? Minimize2 : Maximize2,
                  label: isFs ? "إلغاء ملء الشاشة" : "ملء الشاشة الكاملة",
                  desc: isFs ? "العودة للحجم الطبيعي" : "وضع ملء الشاشة",
                  active: isFs,
                  action: () => { toggleFs(); setShowViewMode(false); },
                },
                {
                  Icon: FlipScreenIcon,
                  label: "تدوير الشاشة",
                  desc: isPortrait ? "التبديل للوضع الأفقي" : "التبديل للوضع العمودي",
                  active: isPortrait,
                  action: () => { toggleRotation(); setShowViewMode(false); },
                },
              ] as { Icon: React.ElementType; label: string; desc: string; active: boolean; action: () => void }[]).map(
                ({ Icon, label, desc, active, action }, i, arr) => (
                  <button key={label} onClick={action}
                    className="w-full flex items-center gap-3 px-4 py-3 transition-all active:bg-white/5"
                    style={{
                      background: active ? "rgba(139,92,246,0.16)" : "transparent",
                      borderBottom: i < arr.length - 1 ? "1px solid rgba(255,255,255,0.06)" : "none",
                    }}>
                    <div className="w-7 h-7 rounded-xl flex items-center justify-center shrink-0"
                      style={{
                        background: active ? "rgba(139,92,246,0.28)" : "rgba(255,255,255,0.06)",
                        border: active ? "1px solid rgba(139,92,246,0.55)" : "1px solid rgba(255,255,255,0.10)",
                      }}>
                      <Icon className="w-3.5 h-3.5" style={{ color: active ? "#c4b5fd" : "rgba(255,255,255,0.50)" }} />
                    </div>
                    <div className="flex-1 min-w-0 text-right">
                      <p className="text-[12px] font-black font-['Cairo'] leading-snug"
                        style={{ color: active ? "#e2d9fc" : "rgba(255,255,255,0.88)" }}>{label}</p>
                      <p className="text-[10px] font-['Cairo'] leading-tight mt-0.5"
                        style={{ color: active ? "rgba(196,181,253,0.65)" : "rgba(255,255,255,0.38)" }}>{desc}</p>
                    </div>
                    {active && (
                      <div className="w-2 h-2 rounded-full shrink-0" style={{ background: "#a78bfa", boxShadow: "0 0 6px rgba(167,139,250,0.80)" }} />
                    )}
                  </button>
                )
              )}
            </motion.div>
          )}
        </AnimatePresence>

        {/* SUBTITLE SETTINGS BOTTOM SHEET — removed, now handled by side SubPanel */}
        <AnimatePresence>
          {false && !error && !isLocked && (
            <motion.div
              key="submenu-sheet"
              initial={{ y: "100%" }}
              animate={{ y: 0 }}
              exit={{ y: "100%" }}
              transition={{ duration: 0.30, ease: [0.22, 1, 0.36, 1] }}
              drag="y"
              dragConstraints={{ top: 0 }}
              dragElastic={{ top: 0, bottom: 0.35 }}
              onDragEnd={(_e, info) => { if (info.offset.y > 70) setShowSubMenu(false); }}
              className="absolute bottom-0 left-0 right-0 z-50 pointer-events-auto"
              dir="rtl"
              style={{
                background: "rgba(5,5,18,0.98)",
                backdropFilter: "blur(44px) saturate(220%)",
                borderTop: "1.5px solid rgba(139,92,246,0.22)",
                borderRadius: "22px 22px 0 0",
                paddingBottom: "max(20px, env(safe-area-inset-bottom))",
                maxHeight: "85vh",
                overflowY: "auto",
                overflowX: "hidden",
                touchAction: "pan-y",
                boxShadow: "0 -16px 56px rgba(0,0,0,0.75)",
              }}
              onClick={e => e.stopPropagation()}
              onTouchStart={e => e.stopPropagation()}
              onTouchEnd={e => e.stopPropagation()}
            >
              {/* ── Drag handle ── */}
              <div className="flex justify-center pt-3 pb-1">
                <div className="w-9 h-1 rounded-full" style={{ background: "rgba(255,255,255,0.20)" }} />
              </div>

              {/* ── Header ── */}
              <div className="flex items-center justify-between px-4 py-2.5 border-b border-white/[0.07]">
                <div className="flex items-center gap-2.5">
                  <div className="w-7 h-7 rounded-xl flex items-center justify-center"
                    style={{ background: "rgba(139,92,246,0.28)", border: "1px solid rgba(139,92,246,0.40)" }}>
                    <SubtitleIcon className="w-3.5 h-3.5 text-violet-300" />
                  </div>
                  <span className="text-white/90 text-[15px] font-black font-['Cairo']">إعدادات الترجمة</span>
                </div>
                <button onClick={() => setShowSubMenu(false)}
                  className="w-7 h-7 rounded-full flex items-center justify-center active:bg-white/10">
                  <X className="w-4 h-4 text-white/40" />
                </button>
              </div>

              {/* ── Live Preview (only when subtitle enabled) ── */}
              {subEnabled && subSettings && (
                <div className="mx-4 mt-3 mb-0 rounded-2xl overflow-hidden"
                  style={{ background: "rgba(255,255,255,0.03)", border: "1px solid rgba(255,255,255,0.07)" }}>
                  <p className="text-[8px] font-bold font-['Cairo'] px-3 pt-2 uppercase tracking-widest"
                    style={{ color: "rgba(255,255,255,0.18)" }}>
                    معاينة مباشرة
                  </p>
                  <div className="flex items-center justify-center px-4 pb-3 pt-1" style={{ minHeight: 52 }}>
                    <span
                      className="rounded-xl px-3 py-1.5 text-center font-['Cairo']"
                      style={{
                        fontSize: subSettings.fontSize,
                        color: subSettings.color,
                        fontWeight: subSettings.bold ? 700 : 400,
                        lineHeight: 1.5,
                        background: subSettings.bgOpacity > 0 ? `rgba(0,0,0,${subSettings.bgOpacity})` : "transparent",
                        backdropFilter: subSettings.bgOpacity > 0 ? "blur(6px)" : undefined,
                        border: subSettings.bgOpacity > 0 ? "1px solid rgba(255,255,255,0.07)" : "none",
                        textShadow: subSettings.bgOpacity === 0 ? "0 1px 8px rgba(0,0,0,0.95), 0 0 20px rgba(0,0,0,0.80)" : "none",
                        transition: "all 0.2s ease",
                        maxWidth: "100%",
                      }}>
                      السلام عليكم ورحمة الله
                    </span>
                  </div>
                </div>
              )}

              {/* ══════════════════════════════════════
                  ACCORDION SECTIONS
              ══════════════════════════════════════ */}
              <div className="mt-2 pb-2">

                {/* ─── قسم: عام ─── */}
                {((_sid: string) => {
                  const isOpen = openSubSection === _sid;
                  return (
                    <div key={_sid} style={{ borderBottom: "1px solid rgba(255,255,255,0.05)" }}>
                      <button
                        onPointerDown={e => { e.stopPropagation(); setOpenSubSection(isOpen ? null : _sid); }}
                        className="w-full flex items-center justify-between px-4 py-3.5 active:bg-white/[0.025] transition-colors"
                      >
                        <div className="flex items-center gap-3">
                          <span className="w-7 h-7 rounded-xl flex items-center justify-center text-[13px] shrink-0"
                            style={{ background: "rgba(139,92,246,0.18)", border: "1px solid rgba(139,92,246,0.28)" }}>⚙</span>
                          <span className="text-[13px] font-black font-['Cairo'] text-white/75">عام</span>
                          <span className="w-2 h-2 rounded-full shrink-0"
                            style={{ background: subEnabled ? "#22c55e" : "rgba(255,255,255,0.20)" }} />
                        </div>
                        <ChevronDown className="w-4 h-4 text-white/30 shrink-0"
                          style={{ transform: isOpen ? "rotate(180deg)" : "rotate(0deg)", transition: "transform 0.22s ease" }} />
                      </button>
                      <div style={{ maxHeight: isOpen ? "400px" : "0", overflow: "hidden", transition: "max-height 0.32s cubic-bezier(0.22,1,0.36,1)" }}>
                        <div className="px-4 pb-4 pt-1 flex flex-col gap-2.5">
                          <div className="flex items-center justify-between py-2.5 px-3.5 rounded-2xl"
                            style={{ background: "rgba(255,255,255,0.04)", border: "1px solid rgba(255,255,255,0.07)" }}>
                            <div className="flex items-center gap-2.5">
                              <SubtitleIcon style={{ width: 17, height: 17 }} className="text-white/50" />
                              <div>
                                <p className="text-[13px] font-black font-['Cairo']"
                                  style={{ color: subEnabled ? "rgba(255,255,255,0.82)" : "rgba(255,255,255,0.45)" }}>
                                  الترجمة
                                </p>
                                <p className="text-[8.5px] font-['Cairo']"
                                  style={{ color: subEnabled ? "rgba(110,231,183,0.70)" : "rgba(255,255,255,0.20)" }}>
                                  {subEnabled ? "مُفعّلة" : "موقوفة"}
                                </p>
                              </div>
                            </div>
                            <div className="flex items-center gap-2">
                              {!subEnabled && onSubtitleClick && (
                                <button
                                  onPointerDown={e => { e.stopPropagation(); onSubtitleClick?.(); }}
                                  className="px-4 py-1.5 rounded-xl text-[11px] font-black font-['Cairo'] active:scale-95 transition-transform"
                                  style={{ background: "rgba(139,92,246,0.28)", border: "1px solid rgba(139,92,246,0.45)", color: "#c4b5fd" }}>
                                  {subNote ? "إعادة" : "تحميل"}
                                </button>
                              )}
                              {subEnabled && onSubtitleOff && (
                                <button
                                  onPointerDown={e => { e.stopPropagation(); onSubtitleOff?.(); }}
                                  className="px-4 py-1.5 rounded-xl text-[11px] font-black font-['Cairo'] active:scale-95 transition-transform"
                                  style={{ background: "rgba(239,68,68,0.18)", border: "1px solid rgba(239,68,68,0.32)", color: "#fca5a5" }}>
                                  إيقاف
                                </button>
                              )}
                            </div>
                          </div>
                          {!subEnabled && (
                            <p className="text-[10.5px] font-['Cairo'] text-center py-1" style={{ color: "rgba(255,255,255,0.22)" }}>
                              {subNote || "اضغط تحميل لتفعيل الترجمة"}
                            </p>
                          )}
                        </div>
                      </div>
                    </div>
                  );
                })("general")}

                {/* ─── قسم: المظهر ─── */}
                {((_sid: string) => {
                  const isOpen = openSubSection === _sid;
                  const fName = FONT_SIZES.find(f => f.sz === subSettings?.fontSize)?.name ?? "متوسط";
                  const cLabel = SUB_COLORS.find(c => c.v === subSettings?.color)?.label ?? "أبيض";
                  return (
                    <div key={_sid} style={{ borderBottom: "1px solid rgba(255,255,255,0.05)" }}>
                      <button
                        onPointerDown={e => { e.stopPropagation(); setOpenSubSection(isOpen ? null : _sid); }}
                        className="w-full flex items-center justify-between px-4 py-3.5 active:bg-white/[0.025] transition-colors"
                      >
                        <div className="flex items-center gap-3 min-w-0">
                          <span className="w-7 h-7 rounded-xl flex items-center justify-center text-[13px] shrink-0"
                            style={{ background: "rgba(251,191,36,0.18)", border: "1px solid rgba(251,191,36,0.28)" }}>🎨</span>
                          <span className="text-[13px] font-black font-['Cairo'] text-white/75 shrink-0">المظهر</span>
                          {subEnabled && subSettings && (
                            <span className="text-[8.5px] font-['Cairo'] px-2 py-0.5 rounded-lg truncate"
                              style={{ background: "rgba(251,191,36,0.12)", border: "1px solid rgba(251,191,36,0.22)", color: "rgba(253,224,71,0.65)" }}>
                              {fName} · {cLabel}
                            </span>
                          )}
                        </div>
                        <ChevronDown className="w-4 h-4 text-white/30 shrink-0"
                          style={{ transform: isOpen ? "rotate(180deg)" : "rotate(0deg)", transition: "transform 0.22s ease" }} />
                      </button>
                      <div style={{ maxHeight: isOpen ? "700px" : "0", overflow: "hidden", transition: "max-height 0.38s cubic-bezier(0.22,1,0.36,1)" }}>
                        {subEnabled && subSettings && onSubSettingsChange ? (
                          <div className="px-4 pb-4 pt-1 flex flex-col gap-4">

                            {/* حجم الخط */}
                            <div>
                              <p className="text-[9px] font-black font-['Cairo'] mb-2.5 tracking-wider uppercase" style={{ color: "rgba(139,92,246,0.75)" }}>حجم الخط</p>
                              <div className="flex gap-2">
                                {FONT_SIZES.map(f => {
                                  const active = subSettings.fontSize === f.sz;
                                  return (
                                    <button key={f.sz}
                                      onPointerDown={e => { e.stopPropagation(); updateSub({ fontSize: f.sz }); }}
                                      className="flex-1 py-2.5 rounded-2xl flex flex-col items-center justify-center gap-1.5 transition-all active:scale-90"
                                      style={{
                                        background: active ? "rgba(124,58,237,0.28)" : "rgba(255,255,255,0.04)",
                                        border: `1px solid ${active ? "rgba(139,92,246,0.55)" : "rgba(255,255,255,0.07)"}`,
                                      }}>
                                      <span className="font-black font-['Cairo'] leading-none"
                                        style={{ fontSize: Math.min(f.sz * 0.52 + 5, 18), color: active ? "#c4b5fd" : "rgba(255,255,255,0.30)" }}>
                                        أ
                                      </span>
                                      <span className="text-[8.5px] font-['Cairo']"
                                        style={{ color: active ? "rgba(196,181,253,0.75)" : "rgba(255,255,255,0.22)" }}>
                                        {f.name}
                                      </span>
                                    </button>
                                  );
                                })}
                              </div>
                            </div>

                            {/* لون النص */}
                            <div>
                              <p className="text-[9px] font-black font-['Cairo'] mb-2.5 tracking-wider uppercase" style={{ color: "rgba(139,92,246,0.75)" }}>لون النص</p>
                              <div className="flex gap-2">
                                {SUB_COLORS.map(c => {
                                  const active = subSettings.color === c.v;
                                  return (
                                    <button key={c.v}
                                      onPointerDown={e => { e.stopPropagation(); updateSub({ color: c.v }); }}
                                      className="flex-1 py-2.5 rounded-2xl flex flex-col items-center gap-1.5 transition-all active:scale-90"
                                      style={{
                                        background: active ? "rgba(124,58,237,0.18)" : "rgba(255,255,255,0.04)",
                                        border: `1.5px solid ${active ? "rgba(139,92,246,0.55)" : "rgba(255,255,255,0.07)"}`,
                                      }}>
                                      <span className="rounded-full block"
                                        style={{
                                          width: 18, height: 18,
                                          background: c.v,
                                          boxShadow: active ? `0 0 0 2.5px rgba(139,92,246,0.7), 0 0 10px ${c.v}88` : "none",
                                        }} />
                                      <span className="text-[8px] font-['Cairo']"
                                        style={{ color: active ? "rgba(196,181,253,0.80)" : "rgba(255,255,255,0.22)" }}>
                                        {c.label}
                                      </span>
                                    </button>
                                  );
                                })}
                              </div>
                            </div>

                            {/* الخلفية والسُمك */}
                            <div>
                              <p className="text-[9px] font-black font-['Cairo'] mb-2.5 tracking-wider uppercase" style={{ color: "rgba(139,92,246,0.75)" }}>الخلفية والسُمك</p>
                              <div className="flex gap-2">
                                <button
                                  onPointerDown={e => { e.stopPropagation(); updateSub({ bold: !subSettings.bold }); }}
                                  className="flex-1 py-2.5 rounded-2xl flex flex-col items-center gap-1.5 transition-all active:scale-90"
                                  style={{
                                    background: subSettings.bold ? "rgba(124,58,237,0.28)" : "rgba(255,255,255,0.04)",
                                    border: `1px solid ${subSettings.bold ? "rgba(139,92,246,0.55)" : "rgba(255,255,255,0.07)"}`,
                                  }}>
                                  <span className="text-[15px] font-['Cairo'] leading-none"
                                    style={{ fontWeight: subSettings.bold ? 800 : 400, color: subSettings.bold ? "#c4b5fd" : "rgba(255,255,255,0.30)" }}>ع</span>
                                  <span className="text-[8.5px] font-['Cairo']"
                                    style={{ color: subSettings.bold ? "rgba(196,181,253,0.70)" : "rgba(255,255,255,0.22)" }}>
                                    {subSettings.bold ? "عريض" : "عادي"}
                                  </span>
                                </button>
                                {([{ v: 0, l: "☀", name: "بلا" }, { v: 0.45, l: "◑", name: "خفيف" }, { v: 0.82, l: "■", name: "داكن" }] as { v: number; l: string; name: string }[]).map(({ v, l, name }) => {
                                  const active = subSettings.bgOpacity === v;
                                  return (
                                    <button key={v}
                                      onPointerDown={e => { e.stopPropagation(); updateSub({ bgOpacity: v }); }}
                                      className="flex-1 py-2.5 rounded-2xl flex flex-col items-center gap-1.5 transition-all active:scale-90"
                                      style={{
                                        background: active ? "rgba(124,58,237,0.28)" : "rgba(255,255,255,0.04)",
                                        border: `1px solid ${active ? "rgba(139,92,246,0.55)" : "rgba(255,255,255,0.07)"}`,
                                      }}>
                                      <span className="text-[13px] leading-none" style={{ color: active ? "#c4b5fd" : "rgba(255,255,255,0.28)" }}>{l}</span>
                                      <span className="text-[8.5px] font-['Cairo']" style={{ color: active ? "rgba(196,181,253,0.70)" : "rgba(255,255,255,0.22)" }}>{name}</span>
                                    </button>
                                  );
                                })}
                              </div>
                            </div>

                          </div>
                        ) : (
                          <div className="px-4 pb-3 pt-1">
                            <p className="text-[11px] font-['Cairo'] text-center py-2" style={{ color: "rgba(255,255,255,0.20)" }}>
                              فعّل الترجمة أولاً لتعديل المظهر
                            </p>
                          </div>
                        )}
                      </div>
                    </div>
                  );
                })("appearance")}

                {/* ─── قسم: الموضع ─── */}
                {((_sid: string) => {
                  const isOpen = openSubSection === _sid;
                  const posLabel = SUB_POSITIONS.find(p => p.v === subSettings?.position)?.label ?? "أسفل";
                  return (
                    <div key={_sid} style={{ borderBottom: "1px solid rgba(255,255,255,0.05)" }}>
                      <button
                        onPointerDown={e => { e.stopPropagation(); setOpenSubSection(isOpen ? null : _sid); }}
                        className="w-full flex items-center justify-between px-4 py-3.5 active:bg-white/[0.025] transition-colors"
                      >
                        <div className="flex items-center gap-3">
                          <span className="w-7 h-7 rounded-xl flex items-center justify-center text-[13px] shrink-0"
                            style={{ background: "rgba(52,211,153,0.18)", border: "1px solid rgba(52,211,153,0.28)" }}>📍</span>
                          <span className="text-[13px] font-black font-['Cairo'] text-white/75 shrink-0">الموضع</span>
                          {subEnabled && subSettings && (
                            <span className="text-[8.5px] font-['Cairo'] px-2 py-0.5 rounded-lg"
                              style={{ background: "rgba(52,211,153,0.10)", border: "1px solid rgba(52,211,153,0.22)", color: "rgba(110,231,183,0.65)" }}>
                              {posLabel}
                            </span>
                          )}
                        </div>
                        <ChevronDown className="w-4 h-4 text-white/30 shrink-0"
                          style={{ transform: isOpen ? "rotate(180deg)" : "rotate(0deg)", transition: "transform 0.22s ease" }} />
                      </button>
                      <div style={{ maxHeight: isOpen ? "200px" : "0", overflow: "hidden", transition: "max-height 0.30s cubic-bezier(0.22,1,0.36,1)" }}>
                        {subEnabled && subSettings && onSubSettingsChange ? (
                          <div className="px-4 pb-4 pt-1">
                            <div className="flex gap-2">
                              {SUB_POSITIONS.map(p => {
                                const active = subSettings.position === p.v;
                                return (
                                  <button key={p.v}
                                    onPointerDown={e => { e.stopPropagation(); updateSub({ position: p.v }); }}
                                    className="flex-1 py-3 rounded-2xl flex items-center justify-center gap-2 transition-all active:scale-90"
                                    style={{
                                      background: active ? "rgba(124,58,237,0.28)" : "rgba(255,255,255,0.04)",
                                      border: `1px solid ${active ? "rgba(139,92,246,0.55)" : "rgba(255,255,255,0.07)"}`,
                                    }}>
                                    <span className="text-[16px] leading-none">{p.icon}</span>
                                    <span className="text-[12px] font-['Cairo'] font-bold"
                                      style={{ color: active ? "#c4b5fd" : "rgba(255,255,255,0.30)" }}>
                                      {p.label}
                                    </span>
                                  </button>
                                );
                              })}
                            </div>
                          </div>
                        ) : (
                          <div className="px-4 pb-3 pt-1">
                            <p className="text-[11px] font-['Cairo'] text-center py-2" style={{ color: "rgba(255,255,255,0.20)" }}>
                              فعّل الترجمة أولاً
                            </p>
                          </div>
                        )}
                      </div>
                    </div>
                  );
                })("position")}

                {/* ─── قسم: السلوك ─── */}
                {((_sid: string) => {
                  const isOpen = openSubSection === _sid;
                  return (
                    <div key={_sid} style={{ borderBottom: "1px solid rgba(255,255,255,0.05)" }}>
                      <button
                        onPointerDown={e => { e.stopPropagation(); setOpenSubSection(isOpen ? null : _sid); }}
                        className="w-full flex items-center justify-between px-4 py-3.5 active:bg-white/[0.025] transition-colors"
                      >
                        <div className="flex items-center gap-3">
                          <span className="w-7 h-7 rounded-xl flex items-center justify-center text-[13px] shrink-0"
                            style={{ background: "rgba(239,68,68,0.15)", border: "1px solid rgba(239,68,68,0.25)" }}>⚡</span>
                          <span className="text-[13px] font-black font-['Cairo'] text-white/75">السلوك</span>
                        </div>
                        <ChevronDown className="w-4 h-4 text-white/30 shrink-0"
                          style={{ transform: isOpen ? "rotate(180deg)" : "rotate(0deg)", transition: "transform 0.22s ease" }} />
                      </button>
                      <div style={{ maxHeight: isOpen ? "200px" : "0", overflow: "hidden", transition: "max-height 0.30s cubic-bezier(0.22,1,0.36,1)" }}>
                        <div className="px-4 pb-4 pt-2 flex flex-col gap-2.5">
                          {subEnabled && subSettings && onSubSettingsChange && (
                            <button
                              onPointerDown={e => {
                                e.stopPropagation();
                                onSubSettingsChange({ fontSize: 16, color: "#ffffff", bgOpacity: 0, bold: true, position: "bottom" });
                              }}
                              className="w-full py-2.5 rounded-2xl flex items-center justify-center gap-2 transition-all active:scale-95"
                              style={{
                                background: "rgba(239,68,68,0.10)",
                                border: "1px solid rgba(239,68,68,0.22)",
                                color: "rgba(252,165,165,0.82)",
                              }}>
                              <span className="text-[14px] leading-none">↩</span>
                              <span className="text-[12px] font-black font-['Cairo']">إعادة ضبط الإعدادات</span>
                            </button>
                          )}
                          <p className="text-[9.5px] font-['Cairo'] text-center pt-0.5" style={{ color: "rgba(255,255,255,0.14)" }}>
                            تُحفظ الإعدادات تلقائياً بين الجلسات
                          </p>
                        </div>
                      </div>
                    </div>
                  );
                })("behavior")}

              </div>
            </motion.div>
          )}
        </AnimatePresence>

      </div>


      {/* ════════════════════════════════════════
          SUBTITLE OVERLAY
      ════════════════════════════════════════ */}
      {subCues && subSettings && subActiveCue && (
        <div
          className="absolute left-0 right-0 flex justify-center pointer-events-none"
          style={{
            zIndex: 70,
            padding: "0 16px",
            transition: "top 0.3s ease, bottom 0.3s ease",
            /* GPU compositing layer — avoids layout recalc on every cue change */
            willChange: "transform",
            contain: "layout style",
            ...subPositionStyle(subSettings.position ?? "bottom", showCtrl),
          }}
        >
          <div
            className="text-center px-4 py-2 rounded-2xl"
            style={{
              maxWidth: "min(88%, 780px)",
              background: subSettings.bgOpacity > 0
                ? `rgba(0,0,0,${subSettings.bgOpacity})`
                : "transparent",
              backdropFilter: subSettings.bgOpacity > 0 ? "blur(8px)" : undefined,
              border: subSettings.bgOpacity > 0 ? "1px solid rgba(255,255,255,0.07)" : "none",
            }}
          >
            {/* ── Vidstack technique: split on \n for proper multi-line VTT cues.
                Each line rendered as its own element → correct line-break cadence.
                -webkit-text-stroke gives sharper outline than text-shadow alone. ── */}
            {subActiveCue.text.split(/\r?\n/).map((line, i) => (
              <p
                key={i}
                dir="auto"
                style={{
                  color: subSettings.color,
                  fontSize: subSettings.fontSize,
                  fontWeight: subSettings.bold ? 700 : 500,
                  fontFamily: "'Cairo', sans-serif",
                  lineHeight: 1.55,
                  margin: i === 0 ? 0 : "2px 0 0",
                  wordBreak: "break-word",
                  overflowWrap: "break-word",
                  /* ظل ناعم أنيق — بدون دوائر سوداء حول الحروف */
                  WebkitTextStroke: "0px transparent",
                  textShadow: subSettings.bgOpacity === 0 ? [
                    "0px 1px 4px rgba(0,0,0,0.98)",
                    "0px 2px 10px rgba(0,0,0,0.92)",
                    "0px 0px 22px rgba(0,0,0,0.75)",
                  ].join(", ") : "none",
                }}
              >
                {line || "\u00A0"}
              </p>
            ))}
          </div>
        </div>
      )}

      {/* ── Keyboard Shortcuts Overlay (video.js inspired — press ? to toggle) ── */}
      {showShortcuts && (
        <div
          className="absolute inset-0 z-[500] flex items-center justify-center"
          style={{ background: "rgba(0,0,0,0.82)", backdropFilter: "blur(6px)" }}
          onClick={() => setShowShortcuts(false)}
        >
          <div
            className="rounded-2xl p-6 max-w-sm w-full mx-4"
            style={{ background: "rgba(18,14,30,0.95)", border: "1px solid rgba(139,92,246,0.22)" }}
            onClick={e => e.stopPropagation()}
          >
            <div className="flex items-center justify-between mb-5">
              <h3 className="text-white font-bold text-sm font-['Cairo']">اختصارات لوحة المفاتيح</h3>
              <button onClick={() => setShowShortcuts(false)} className="text-white/40 hover:text-white/70 transition-colors text-lg leading-none">×</button>
            </div>
            <div className="grid gap-2">
              {[
                { key: "مسافة / K", label: "تشغيل / إيقاف" },
                { key: "→ / L", label: "تقديم 10 ثوانٍ" },
                { key: "← / J", label: "رجوع 10 ثوانٍ" },
                { key: "↑", label: "رفع الصوت 10%" },
                { key: "↓", label: "خفض الصوت 10%" },
                { key: "F", label: "ملء الشاشة" },
                { key: "M", label: "كتم الصوت" },
                { key: "?", label: "عرض / إخفاء الاختصارات" },
              ].map(({ key, label }) => (
                <div key={key} className="flex items-center justify-between gap-3">
                  <span className="text-white/55 text-[11px] font-['Cairo']">{label}</span>
                  <kbd
                    className="text-[10px] font-mono px-2 py-0.5 rounded-md shrink-0"
                    style={{ background: "rgba(139,92,246,0.15)", border: "1px solid rgba(139,92,246,0.30)", color: "#c4b5fd" }}
                  >
                    {key}
                  </kbd>
                </div>
              ))}
            </div>
            <p className="text-white/20 text-[9px] text-center mt-4 font-['Cairo']">اضغط Esc أو ? أو انقر خارج اللوحة للإغلاق</p>
          </div>
        </div>
      )}


    </div>
  );
}
