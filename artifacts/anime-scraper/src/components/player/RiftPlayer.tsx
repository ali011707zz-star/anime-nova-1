/**
 * GLASSY PLAYER v5 — مشغل أنمي زجاجي فاخر
 */

import React, { useState, useRef, useEffect, useCallback } from "react";
import Hls from "hls.js";
import { motion, AnimatePresence } from "framer-motion";
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
  subCues?: SubCue[];
  subElapsed?: number;
  subSettings?: SubSettings;
  subEnabled?: boolean;
  onSubtitleClick?: () => void;
  onSubSettingsChange?: (s: SubSettings) => void;
  onBack?: () => void;
  onPrevEp?: () => void;
  onNextEp?: () => void;
  onRealQuality?: (q: string) => void;
  onTimeUpdate?: (t: number) => void;
  onFail?: () => void;
  topSlot?: React.ReactNode;
  bottomSlot?: React.ReactNode;
}

type GT = "none" | "seek" | "volume" | "brightness";
interface GS { active: GT; startX: number; startY: number; lastY: number; startValue: number; }
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
  src, title = "", epTitle = "", ep = 1, totalEps = 999,
  qualityLabel = "", isHls = false, serverCount = 1, serverIndex = 0,
  downloadUrl, subCues, subElapsed = 0, subSettings, subEnabled = false,
  onSubtitleClick, onSubSettingsChange,
  onBack, onPrevEp, onNextEp, onRealQuality, onTimeUpdate, onFail,
}: Props) {

  const videoRef     = useRef<HTMLVideoElement>(null);
  const hlsRef       = useRef<Hls | null>(null);
  const containerRef = useRef<HTMLDivElement>(null);
  const progressRef  = useRef<HTMLDivElement>(null);
  const hideRef      = useRef<ReturnType<typeof setTimeout> | null>(null);
  const seekDrag     = useRef(false);
  const onFailRef    = useRef(onFail); onFailRef.current = onFail;
  const failFired    = useRef(false);
  const failTimer    = useRef<ReturnType<typeof setTimeout> | null>(null);
  const gestRef      = useRef<GS>({ active: "none", startX: 0, startY: 0, lastY: 0, startValue: 0 });
  const lastTap      = useRef<{ time: number; side: "L" | "R" } | null>(null);
  const longTimer    = useRef<ReturnType<typeof setTimeout> | null>(null);
  const prevSpeed    = useRef(1);
  const lastTouchTs  = useRef(0);
  const moved        = useRef(false);
  const G_THRESH     = 12;

  const [isPortrait,      setIsPortrait]      = useState(
    typeof window !== "undefined" && window.innerHeight > window.innerWidth
  );
  const [loading,         setLoading]         = useState(true);
  const [error,           setError]           = useState<string | null>(null);
  const [playing,         setPlaying]         = useState(false);
  const [currentTime,     setCurrentTime]     = useState(0);
  const [duration,        setDuration]        = useState(0);
  const [buffered,        setBuffered]        = useState(0);
  const [muted,           setMuted]           = useState(false);
  const [volume,          setVolume]          = useState(1);
  const [brightness,      setBrightness]      = useState(1);
  const [speed,           setSpeed]           = useState(1);
  const [showCtrl,        setShowCtrl]        = useState(true);
  const [isFs,            setIsFs]            = useState(false);
  const [isZoomed,        setIsZoomed]        = useState(false);
  const [isLocked,        setIsLocked]        = useState(false);
  const [showSpeed,       setShowSpeed]       = useState(false);
  const [showSubMenu,     setShowSubMenu]      = useState(false);
  const [prgHover,        setPrgHover]        = useState(false);
  const [feedback,        setFeedback]        = useState<GF | null>(null);
  const [dblTap,          setDblTap]          = useState<{ side: "L" | "R"; id: number; secs: number } | null>(null);
  const [longPress,       setLongPress]       = useState(false);
  const [screenshotFlash, setScreenshotFlash] = useState(false);

  /* ── auto-close sub menu when controls hide ── */
  useEffect(() => {
    if (!showCtrl) setShowSubMenu(false);
  }, [showCtrl]);

  /* ── orientation lock ── */
  useEffect(() => {
    const lock = async () => { try { await (screen.orientation as any).lock("landscape"); } catch {} };
    lock();
    return () => { try { (screen.orientation as any).unlock(); } catch {} };
  }, []);

  /* ── portrait detection ── */
  useEffect(() => {
    const check = () => setIsPortrait(window.innerHeight > window.innerWidth);
    window.addEventListener("resize", check);
    window.addEventListener("orientationchange", check);
    return () => { window.removeEventListener("resize", check); window.removeEventListener("orientationchange", check); };
  }, []);

  /* ── fullscreen ── */
  useEffect(() => {
    const fn = () => setIsFs(!!document.fullscreenElement);
    document.addEventListener("fullscreenchange", fn);
    return () => document.removeEventListener("fullscreenchange", fn);
  }, []);

  async function toggleFs() {
    if (!document.fullscreenElement) {
      await containerRef.current?.requestFullscreen?.().catch(() => {});
      try { await (screen.orientation as any).lock("landscape"); } catch {}
    } else {
      await document.exitFullscreen?.().catch(() => {});
      try { (screen.orientation as any).unlock(); } catch {}
    }
  }

  function toggleRotation() {
    setIsPortrait(p => !p);
    try {
      const next = !isPortrait;
      if (next) { (screen.orientation as any).lock?.("portrait-primary").catch?.(() => {}); }
      else       { (screen.orientation as any).lock?.("landscape-primary").catch?.(() => {}); }
    } catch {}
  }

  /* ── control hide ── */
  const schedHide = useCallback(() => {
    if (hideRef.current) clearTimeout(hideRef.current);
    hideRef.current = setTimeout(() => setShowCtrl(false), 4000);
  }, []);
  const showControls = useCallback(() => { setShowCtrl(true); schedHide(); }, [schedHide]);

  /* ── fail ── */
  const fireOnFail = useCallback(() => {
    if (failFired.current) return;
    failFired.current = true;
    setLoading(true); setError(null);
    if (failTimer.current) clearTimeout(failTimer.current);
    failTimer.current = setTimeout(() => onFailRef.current?.(), 800);
  }, []);

  /* ── load source ── */
  const loadSource = useCallback(async () => {
    const v = videoRef.current; if (!v) return;
    if (hlsRef.current) { hlsRef.current.destroy(); hlsRef.current = null; }
    v.src = "";
    setLoading(true); setError(null); setCurrentTime(0); setDuration(0); setPlaying(false);
    failFired.current = false;
    if (failTimer.current) { clearTimeout(failTimer.current); failTimer.current = null; }

    let m3u8 = src;

    if (src.includes("animegg.org/play/") || src.includes("vidcache.net")) {
      v.src = src; v.load();
      v.addEventListener("loadedmetadata", () => { setLoading(false); v.play().catch(() => {}); showControls(); }, { once: true });
      v.addEventListener("error", () => fireOnFail(), { once: true });
      return;
    }

    const isDirect = src.includes("streamtape.com") || src.includes("sendvid.com")
      || src.includes("videos2.sendvid.com") || src.includes("video-proxy?")
      || src.includes("workers.dev");
    if (isDirect) {
      const px = src.includes("video-proxy?") ? src
        : `/api/anime/video-proxy?url=${encodeURIComponent(src)}&ref=${encodeURIComponent(src)}`;
      v.src = px; v.load();
      let done = false;
      const cleanup = () => { done = true; clearTimeout(t); v.removeEventListener("loadedmetadata", onM); v.removeEventListener("error", onE); };
      const onM = () => { if (done) return; cleanup(); setLoading(false); v.play().catch(() => {}); showControls(); };
      const onE = () => { if (done) return; cleanup(); fireOnFail(); };
      const t = setTimeout(() => { if (done) return; v.src = ""; onE(); }, 10000);
      v.addEventListener("loadedmetadata", onM, { once: true });
      v.addEventListener("error", onE, { once: true });
      return;
    }

    if (src.includes("/animex-player")) {
      try {
        const qs = src.includes("?") ? src.split("?")[1] : "";
        const p = new URLSearchParams(qs); p.set("_t", String(Date.now()));
        const r = await fetch(`/api/anime/animex-source?${p}`, { cache: "no-store", signal: AbortSignal.timeout(18000) });
        if (!r.ok) { const d = await r.json().catch(() => ({})); setError((d as any).error || `خطأ ${r.status}`); setLoading(false); return; }
        const data = await r.json() as { proxyUrl?: string; rawUrl?: string; quality?: string };
        const hlsUrl = data.proxyUrl || data.rawUrl;
        if (!hlsUrl) { setError("لا يوجد رابط HLS"); setLoading(false); return; }
        m3u8 = hlsUrl;
        if (data.quality && onRealQuality) onRealQuality(data.quality);
      } catch { setError("خطأ في الاتصال"); setLoading(false); return; }
    }

    if (Hls.isSupported()) {
      const hls = new Hls({ enableWorker: false, lowLatencyMode: false, maxBufferLength: 30 });
      hlsRef.current = hls;
      hls.loadSource(m3u8); hls.attachMedia(v);
      hls.on(Hls.Events.MANIFEST_PARSED, () => {
        if (hlsRef.current !== hls) return;
        setError(null); setLoading(false); v.play().catch(() => {}); showControls();
      });
      hls.on(Hls.Events.ERROR, (_, d) => {
        if (hlsRef.current !== hls) return;
        if (d.fatal) fireOnFail();
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
      if (hideRef.current) clearTimeout(hideRef.current);
      if (failTimer.current) clearTimeout(failTimer.current);
    };
  }, [loadSource]);

  useEffect(() => {
    const v = videoRef.current; if (!v) return;
    const onPlay  = () => setPlaying(true);
    const onPause = () => setPlaying(false);
    const onTime  = () => {
      setCurrentTime(v.currentTime);
      if (v.buffered.length) setBuffered(v.buffered.end(v.buffered.length - 1));
      onTimeUpdate?.(v.currentTime);
    };
    const onDur   = () => setDuration(v.duration);
    const onWait  = () => setLoading(true);
    const onPlay2 = () => setLoading(false);
    v.addEventListener("play", onPlay); v.addEventListener("pause", onPause);
    v.addEventListener("timeupdate", onTime); v.addEventListener("durationchange", onDur);
    v.addEventListener("waiting", onWait); v.addEventListener("playing", onPlay2);
    return () => {
      v.removeEventListener("play", onPlay); v.removeEventListener("pause", onPause);
      v.removeEventListener("timeupdate", onTime); v.removeEventListener("durationchange", onDur);
      v.removeEventListener("waiting", onWait); v.removeEventListener("playing", onPlay2);
    };
  }, [onTimeUpdate]);

  /* ── controls ── */
  function togglePlay() {
    const v = videoRef.current; if (!v) return;
    v.paused ? v.play().catch(() => {}) : v.pause();
    showControls();
  }
  function toggleMute() {
    const v = videoRef.current; if (!v) return;
    v.muted = !v.muted; setMuted(v.muted);
  }
  function skip(delta: number) {
    const v = videoRef.current; if (!v || !duration) return;
    v.currentTime = Math.max(0, Math.min(duration, v.currentTime + delta));
    setCurrentTime(v.currentTime);
  }
  function changeSpeed(s: number) {
    setSpeed(s); if (videoRef.current) videoRef.current.playbackRate = s;
    setShowSpeed(false); showControls();
  }
  function seekFrac(f: number) {
    const v = videoRef.current; if (!v || !duration) return;
    const t = Math.max(0, Math.min(1, f)) * duration;
    v.currentTime = t; setCurrentTime(t);
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
  function handlePrgClick(e: React.MouseEvent) {
    e.stopPropagation();
    const bar = progressRef.current; if (!bar) return;
    const r = bar.getBoundingClientRect();
    seekFrac((e.clientX - r.left) / r.width);
  }
  function handlePrgDown(e: React.MouseEvent) {
    e.stopPropagation(); seekDrag.current = true;
    const onMv = (ev: MouseEvent) => { const bar = progressRef.current; if (!bar) return; const r = bar.getBoundingClientRect(); seekFrac((ev.clientX - r.left) / r.width); };
    const onUp = () => { seekDrag.current = false; window.removeEventListener("mousemove", onMv); window.removeEventListener("mouseup", onUp); };
    window.addEventListener("mousemove", onMv); window.addEventListener("mouseup", onUp);
  }

  /* ── touch gestures ── */
  function onTS(e: React.TouchEvent<HTMLDivElement>) {
    if (isLocked) return;
    lastTouchTs.current = Date.now();
    moved.current = false;
    const t = e.touches[0];
    gestRef.current = { active: "none", startX: t.clientX, startY: t.clientY, lastY: t.clientY, startValue: 0 };
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
      const cW = isPortrait ? window.innerWidth : e.currentTarget.clientWidth;
      if (Math.abs(dx) > Math.abs(dy) * 1.4) {
        g.active = "seek"; g.startValue = videoRef.current?.currentTime ?? 0;
      } else {
        g.active = t.clientX > cW / 2 ? "volume" : "brightness";
        g.startValue = g.active === "volume" ? volume : brightness;
        g.lastY = t.clientY;
      }
    }
    if (g.active === "seek") {
      const visW = isPortrait ? window.innerWidth : e.currentTarget.clientWidth;
      const maxD = Math.min(duration * 0.5, 120);
      const delta = (dx / visW) * maxD;
      setFeedback({ type: "seek", value: Math.max(0, Math.min(duration, g.startValue + delta)), delta });
    } else if (g.active === "volume") {
      const dY = g.lastY - t.clientY; g.lastY = t.clientY;
      const nV = Math.max(0, Math.min(1, volume + dY / 180));
      setVolume(nV);
      if (videoRef.current) { videoRef.current.volume = nV; videoRef.current.muted = false; setMuted(false); }
      setFeedback({ type: "volume", value: nV });
    } else if (g.active === "brightness") {
      const dY = g.lastY - t.clientY; g.lastY = t.clientY;
      const nB = Math.max(0.1, Math.min(2, brightness + dY / 180));
      setBrightness(nB); setFeedback({ type: "brightness", value: nB / 2 });
    }
  }
  function onTE(e: React.TouchEvent<HTMLDivElement>) {
    if (longTimer.current) { clearTimeout(longTimer.current); longTimer.current = null; }
    if (longPress) {
      if (videoRef.current) videoRef.current.playbackRate = prevSpeed.current;
      setLongPress(false); setFeedback(null); return;
    }
    const g = gestRef.current;
    if (g.active === "seek") {
      if (feedback?.type === "seek" && videoRef.current) { videoRef.current.currentTime = feedback.value; setCurrentTime(feedback.value); }
      setTimeout(() => setFeedback(null), 200); gestRef.current.active = "none"; return;
    }
    if (g.active !== "none") { setTimeout(() => setFeedback(null), 800); gestRef.current.active = "none"; return; }
    if (moved.current) return;

    const touch = e.changedTouches[0];
    const visW = isPortrait ? window.innerWidth : e.currentTarget.clientWidth;
    const side: "L" | "R" = touch.clientX < visW / 2 ? "L" : "R";
    const now = Date.now();

    if (lastTap.current && now - lastTap.current.time < 300 && lastTap.current.side === side) {
      const delta = side === "R" ? 10 : -10;
      skip(delta);
      setDblTap({ side, id: now, secs: Math.abs(delta) });
      setTimeout(() => setDblTap(null), 700);
      lastTap.current = null;
      showControls();
    } else {
      lastTap.current = { time: now, side };
      setShowCtrl(p => { const n = !p; if (n) schedHide(); return n; });
    }
  }

  const pct    = duration > 0 ? (currentTime / duration) * 100 : 0;
  const bufPct = duration > 0 ? (buffered   / duration) * 100 : 0;

  /* ── portrait style ── */
  const portraitStyle: React.CSSProperties = isPortrait ? {
    position: "fixed", width: "100vh", height: "100vw",
    top: "calc(50vh - 50vw)", left: "calc(50vw - 50vh)",
    transform: "rotate(90deg)", transformOrigin: "center center", zIndex: 60,
  } : { position: "absolute", inset: 0 };

  /* ── subtitle active cue ── */
  const subActive = subCues?.find(c => subElapsed >= c.start && subElapsed <= c.end);

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
          objectFit: isZoomed ? "contain" : "cover",
          filter: brightness !== 1 ? `brightness(${brightness})` : undefined,
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
      <div className="absolute inset-0 z-10" onTouchStart={onTS} onTouchMove={onTM} onTouchEnd={onTE}>

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
                  style={{ background: "rgba(255,255,255,0.85)", height: `${feedback.value * 100}%`, transition: "height 0.06s" }} />
              </div>
              <div className="flex items-center gap-1.5 px-3 py-1 rounded-full"
                style={{ background: "rgba(0,0,0,0.65)", border: "1px solid rgba(255,255,255,0.12)" }}>
                <Volume2 className="w-3 h-3 text-white/65" />
                <span className="text-white/85 text-[11px] font-bold font-mono">{Math.round(feedback.value * 100)}%</span>
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
                  style={{ background: "rgba(253,224,71,0.90)", height: `${Math.min(feedback.value * 100, 100)}%`, transition: "height 0.06s" }} />
              </div>
              <div className="flex items-center gap-1.5 px-3 py-1 rounded-full"
                style={{ background: "rgba(0,0,0,0.65)", border: "1px solid rgba(255,255,255,0.12)" }}>
                <Sun className="w-3 h-3 text-yellow-300/75" />
                <span className="text-white/85 text-[11px] font-bold font-mono">{Math.round(feedback.value * 100)}%</span>
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
            LOCK SCREEN — elegant centered design
        ════════════════════════════════════════ */}
        <AnimatePresence>
          {isLocked && showCtrl && (
            <motion.div
              key="lock-ui"
              initial={{ opacity: 0 }}
              animate={{ opacity: 1 }}
              exit={{ opacity: 0 }}
              className="absolute inset-0 z-40 flex items-center justify-center pointer-events-auto"
              onClick={e => e.stopPropagation()}
            >
              <motion.div
                initial={{ scale: 0.85, opacity: 0 }}
                animate={{ scale: 1, opacity: 1 }}
                exit={{ scale: 0.85, opacity: 0 }}
                transition={{ duration: 0.22, ease: [0.22, 1, 0.36, 1] }}
                className="flex flex-col items-center gap-5 px-10 py-8 rounded-[28px]"
                style={{
                  background: "rgba(0,0,0,0.72)",
                  backdropFilter: "blur(32px) saturate(180%)",
                  border: "1px solid rgba(251,191,36,0.20)",
                  boxShadow: "0 24px 64px rgba(0,0,0,0.60), 0 0 0 1px rgba(251,191,36,0.08)",
                }}
              >
                {/* Lock icon */}
                <div className="flex flex-col items-center gap-3">
                  <motion.div
                    className="w-16 h-16 rounded-2xl flex items-center justify-center"
                    style={{
                      background: "rgba(251,191,36,0.12)",
                      border: "1.5px solid rgba(251,191,36,0.30)",
                    }}
                    animate={{ scale: [1, 1.05, 1] }}
                    transition={{ duration: 2, repeat: Infinity, ease: "easeInOut" }}
                  >
                    <Lock className="w-7 h-7 text-amber-300" strokeWidth={1.8} />
                  </motion.div>
                  <span className="text-amber-200/90 text-[14px] font-black font-['Cairo'] tracking-wide">
                    الشاشة مقفلة
                  </span>
                </div>

                {/* Divider */}
                <div className="w-full h-px" style={{ background: "rgba(255,255,255,0.06)" }} />

                {/* Unlock button */}
                <button
                  onClick={() => setIsLocked(false)}
                  className="flex items-center gap-3 px-6 py-3 rounded-2xl active:scale-95 transition-transform"
                  style={{
                    background: "rgba(251,191,36,0.15)",
                    border: "1.5px solid rgba(251,191,36,0.35)",
                  }}
                >
                  <Unlock className="w-5 h-5 text-amber-300" strokeWidth={1.8} />
                  <span className="text-amber-100 text-[13px] font-black font-['Cairo']">
                    اضغط لفتح القفل
                  </span>
                </button>
              </motion.div>
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
                  paddingRight: 14,
                }}
                onClick={e => e.stopPropagation()}
                onTouchStart={e => e.stopPropagation()}
                onTouchEnd={e => e.stopPropagation()}
              >
                <div className="flex items-center justify-between gap-3">
                  {/* LEFT: title block */}
                  <div className="flex-1 min-w-0">
                    <h1 className="text-white font-black leading-snug truncate"
                      style={{ fontSize: 15, textShadow: "0 2px 14px rgba(0,0,0,0.95)", letterSpacing: "-0.01em" }}>
                      {title || "Nova Player"}
                    </h1>
                    {epTitle && (
                      <p className="text-violet-300/70 text-[11px] font-['Cairo'] font-bold truncate leading-tight mt-[2px]"
                        style={{ textShadow: "0 1px 8px rgba(0,0,0,0.90)" }}>
                        {epTitle}
                      </p>
                    )}
                    <div className="flex items-center gap-1.5 mt-[5px] flex-wrap">
                      <span className="text-white/50 text-[11px] font-['Cairo']">الحلقة {ep}</span>
                      {qualityLabel && (
                        <>
                          <span className="text-white/18 text-[9px]">•</span>
                          <span className="text-amber-300/80 text-[11px] font-black font-mono">{qualityLabel}P</span>
                        </>
                      )}
                      <span className="text-white/18 text-[9px]">•</span>
                      <span className="text-white/38 text-[11px] font-['Cairo']">عربي مترجم</span>
                      {serverCount > 1 && (
                        <>
                          <span className="text-white/18 text-[9px]">•</span>
                          <span className="text-white/28 text-[10px] font-['Cairo']">{serverIndex + 1}/{serverCount}</span>
                        </>
                      )}
                    </div>
                  </div>

                  {/* RIGHT: action buttons */}
                  <div className="flex items-center gap-2 shrink-0">
                    {/* Subtitle / CC button — opens inline settings menu */}
                    {onSubtitleClick && (
                      <button
                        onClick={() => {
                          if (subEnabled) {
                            setShowSubMenu(m => !m);
                          } else {
                            onSubtitleClick();
                            setShowSubMenu(true);
                          }
                        }}
                        className="w-9 h-9 rounded-full flex items-center justify-center active:scale-90 transition-all duration-150 relative"
                        style={showSubMenu
                          ? { background: "rgba(139,92,246,0.45)", border: "1px solid rgba(139,92,246,0.70)" }
                          : subEnabled
                          ? { background: "rgba(139,92,246,0.30)", border: "1px solid rgba(139,92,246,0.50)" }
                          : { background: "rgba(255,255,255,0.10)", border: "1px solid rgba(255,255,255,0.15)" }
                        }
                      >
                        <SubtitleIcon className="w-[15px] h-[15px]"
                          style={{ color: (subEnabled || showSubMenu) ? "#c4b5fd" : "rgba(255,255,255,0.65)" }} />
                        {showSubMenu && (
                          <span className="absolute -bottom-1 left-1/2 -translate-x-1/2 w-1 h-1 rounded-full bg-violet-400" />
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

              {/* ════ CENTER ════ */}
              <div className="flex-1 flex items-center justify-center pointer-events-none">
                <button onClick={togglePlay}
                  onTouchStart={e => e.stopPropagation()}
                  onTouchEnd={e => e.stopPropagation()}
                  className="flex items-center justify-center active:scale-90 transition-transform pointer-events-auto"
                  style={{
                    width: 72, height: 72, borderRadius: "50%",
                    background: "rgba(0,0,0,0.52)",
                    border: "2px solid rgba(255,255,255,0.50)",
                    boxShadow: "0 8px 32px rgba(0,0,0,0.55), 0 0 0 6px rgba(255,255,255,0.04)",
                  }}>
                  <AnimatePresence mode="wait">
                    {loading && !error ? (
                      <motion.div key="buf" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }} transition={{ duration: 0.1 }}>
                        <div className="w-6 h-6 rounded-full border-2 border-white/25 border-t-white/80 animate-spin" />
                      </motion.div>
                    ) : playing ? (
                      <motion.div key="p" initial={{ scale: 0.6, opacity: 0 }} animate={{ scale: 1, opacity: 1 }} exit={{ scale: 0.6, opacity: 0 }} transition={{ duration: 0.1 }}>
                        <Pause className="w-7 h-7 text-white fill-white" />
                      </motion.div>
                    ) : (
                      <motion.div key="pl" initial={{ scale: 0.6, opacity: 0 }} animate={{ scale: 1, opacity: 1 }} exit={{ scale: 0.6, opacity: 0 }} transition={{ duration: 0.1 }}>
                        <Play className="w-7 h-7 text-white fill-white ml-1" />
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
                {/* ── Progress bar ── */}
                <div className="px-5 pt-3 pb-1">
                  <div className="flex items-center justify-between mb-2.5 px-0.5" dir="ltr">
                    <span className="text-white/70 text-[12px] font-bold font-mono">{fmtTime(currentTime)}</span>
                    <span className="text-white/35 text-[12px] font-mono">{fmtTime(duration)}</span>
                  </div>
                  <div
                    ref={progressRef}
                    className="relative w-full cursor-pointer"
                    style={{ height: prgHover ? 7 : 4, transition: "height 0.15s ease" }}
                    onClick={handlePrgClick}
                    onMouseDown={handlePrgDown}
                    onMouseEnter={() => setPrgHover(true)}
                    onMouseLeave={() => setPrgHover(false)}
                    onTouchStart={e => {
                      e.stopPropagation(); setPrgHover(true);
                      const bar = progressRef.current; if (!bar) return;
                      const r = bar.getBoundingClientRect(); seekFrac((e.touches[0].clientX - r.left) / r.width);
                    }}
                    onTouchMove={e => {
                      e.stopPropagation();
                      const bar = progressRef.current; if (!bar) return;
                      const r = bar.getBoundingClientRect(); seekFrac((e.touches[0].clientX - r.left) / r.width);
                    }}
                    onTouchEnd={e => { e.stopPropagation(); setPrgHover(false); }}
                  >
                    <div className="absolute inset-0 rounded-full" style={{ background: "rgba(255,255,255,0.18)" }} />
                    <div className="absolute top-0 left-0 h-full rounded-full"
                      style={{ width: `${bufPct}%`, background: "rgba(139,92,246,0.35)", transition: "width 0.3s" }} />
                    <div className="absolute top-0 left-0 h-full rounded-full"
                      style={{ width: `${pct}%`, background: "linear-gradient(90deg, #8b5cf6, #a78bfa)", transition: seekDrag.current ? "none" : "width 0.1s" }} />
                    <div className="absolute top-1/2 -translate-y-1/2 rounded-full"
                      style={{
                        left: `calc(${pct}% - ${prgHover ? 7 : 5}px)`,
                        width: prgHover ? 14 : 10, height: prgHover ? 14 : 10,
                        background: "#a78bfa",
                        boxShadow: "0 0 0 3px rgba(167,139,250,0.30), 0 1px 6px rgba(0,0,0,0.60)",
                        transition: "left 0.1s, width 0.15s, height 0.15s",
                      }} />
                  </div>
                </div>

                {/* ── Controls row ── */}
                <div
                  className="flex items-center px-3 pt-2"
                  style={{ paddingBottom: "max(16px, env(safe-area-inset-bottom))" }}
                >
                  {/* Left: zoom · speed */}
                  <div className="flex items-center gap-2 shrink-0">
                    {/* Zoom toggle */}
                    <button
                      onClick={() => setIsZoomed(z => !z)}
                      className="w-9 h-9 flex items-center justify-center rounded-xl active:bg-white/10 transition-colors"
                      title={isZoomed ? "ملء الشاشة" : "عرض كامل"}
                    >
                      {isZoomed
                        ? <Scan    className="w-[17px] h-[17px] text-violet-300/80" />
                        : <ScanLine className="w-[17px] h-[17px] text-white/40" />}
                    </button>

                    {/* Speed */}
                    <div className="relative">
                      <button onClick={() => { setShowSpeed(s => !s); showControls(); }}
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
                            className="absolute bottom-full mb-2 left-1/2 -translate-x-1/2 rounded-2xl overflow-hidden z-50 shadow-2xl"
                            style={{ background: GLASS_PANEL, border: `1px solid ${GLASS_BORDER}`, backdropFilter: GLASS_BLUR, minWidth: 88 }}
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
                  </div>

                  {/* Center: ←10  ⏸  10→ */}
                  <div className="flex items-center gap-4 flex-1 justify-center">
                    <button onClick={() => { skip(-10); showControls(); }}
                      className="flex flex-col items-center justify-center gap-[3px] px-3.5 py-2.5 rounded-2xl active:scale-90 transition-all duration-150"
                      style={GLASS_BTN_SM}>
                      <RotateCcw className="w-[17px] h-[17px] text-white/70" strokeWidth={1.9} />
                      <span className="font-mono font-black text-white/55 leading-none" style={{ fontSize: 9 }}>10ث</span>
                    </button>
                    <button onClick={togglePlay}
                      className="w-[46px] h-[46px] rounded-full flex items-center justify-center active:scale-90 transition-transform"
                      style={{ ...GLASS_BTN, border: "1.5px solid rgba(255,255,255,0.35)", boxShadow: "0 2px 16px rgba(0,0,0,0.40)" }}>
                      {playing
                        ? <Pause className="w-[19px] h-[19px] text-white fill-white" />
                        : <Play  className="w-[19px] h-[19px] text-white fill-white ml-0.5" />}
                    </button>
                    <button onClick={() => { skip(10); showControls(); }}
                      className="flex flex-col items-center justify-center gap-[3px] px-3.5 py-2.5 rounded-2xl active:scale-90 transition-all duration-150"
                      style={GLASS_BTN_SM}>
                      <RotateCw className="w-[17px] h-[17px] text-white/70" strokeWidth={1.9} />
                      <span className="font-mono font-black text-white/55 leading-none" style={{ fontSize: 9 }}>10ث</span>
                    </button>
                  </div>

                  {/* Right: volume · lock · fullscreen */}
                  <div className="flex items-center gap-2 shrink-0">
                    <button onClick={toggleMute}
                      className="w-9 h-9 flex items-center justify-center rounded-xl active:bg-white/10 transition-colors">
                      {muted || volume === 0
                        ? <VolumeX className="w-[18px] h-[18px] text-white/45" />
                        : <Volume2 className="w-[18px] h-[18px] text-white/45" />}
                    </button>
                    <button onClick={() => setIsLocked(true)}
                      className="w-9 h-9 flex items-center justify-center rounded-xl active:bg-white/10 transition-colors">
                      <Lock className="w-[16px] h-[16px] text-white/45" />
                    </button>
                    <button onClick={toggleFs}
                      className="w-9 h-9 flex items-center justify-center rounded-xl active:scale-90 transition-all duration-150"
                      style={isFs
                        ? { background: "rgba(139,92,246,0.22)", border: "1px solid rgba(139,92,246,0.45)", borderRadius: 12 }
                        : GLASS_BTN_SM}>
                      {isFs
                        ? <Minimize2 className="w-[17px] h-[17px] text-violet-300" />
                        : <Maximize2 className="w-[17px] h-[17px] text-white/60" />}
                    </button>
                  </div>
                </div>
              </div>

            </motion.div>
          )}
        </AnimatePresence>

        {/* ════════════════════════════════════════
            SUBTITLE SETTINGS MENU — inline dropdown
        ════════════════════════════════════════ */}
        <AnimatePresence>
          {showSubMenu && showCtrl && !error && !isLocked && (
            <motion.div
              key="submenu"
              initial={{ opacity: 0, y: -10, scale: 0.95 }}
              animate={{ opacity: 1, y: 0, scale: 1 }}
              exit={{ opacity: 0, y: -10, scale: 0.95 }}
              transition={{ duration: 0.18, ease: [0.22, 1, 0.36, 1] }}
              className="absolute z-50 pointer-events-auto"
              dir="rtl"
              style={{
                top: 76,
                right: 14,
                width: 252,
                background: "rgba(6,6,18,0.94)",
                backdropFilter: "blur(32px) saturate(200%)",
                border: "1px solid rgba(255,255,255,0.10)",
                borderRadius: 20,
                padding: "14px 14px 16px",
                boxShadow: "0 24px 64px rgba(0,0,0,0.72)",
              }}
              onClick={e => e.stopPropagation()}
              onTouchStart={e => e.stopPropagation()}
              onTouchEnd={e => e.stopPropagation()}
            >
              {/* Header */}
              <div className="flex items-center justify-between mb-3">
                <div className="flex items-center gap-2">
                  <SubtitleIcon className="w-3.5 h-3.5 text-violet-400" />
                  <span className="text-white/70 text-[12px] font-black font-['Cairo']">إعدادات الترجمة</span>
                </div>
                <button onClick={() => setShowSubMenu(false)}
                  className="w-6 h-6 rounded-full flex items-center justify-center active:bg-white/10 transition-colors">
                  <X className="w-3.5 h-3.5 text-white/35" />
                </button>
              </div>

              {/* Not loaded yet */}
              {!subEnabled && (
                <div className="flex flex-col items-center gap-3 py-3">
                  <p className="text-white/30 text-[11px] font-['Cairo'] text-center">
                    الترجمة غير محملة بعد
                  </p>
                  <button
                    onClick={() => { onSubtitleClick?.(); }}
                    className="flex items-center gap-2 px-4 py-2 rounded-xl text-[11px] font-black font-['Cairo'] active:scale-95 transition-transform"
                    style={{ background: "rgba(139,92,246,0.22)", border: "1px solid rgba(139,92,246,0.40)", color: "#c4b5fd" }}
                  >
                    <SubtitleIcon className="w-3.5 h-3.5" />
                    تحميل الترجمة
                  </button>
                </div>
              )}

              {/* Settings when loaded */}
              {subEnabled && subSettings && onSubSettingsChange && (
                <div className="flex flex-col gap-3.5">

                  {/* Font size */}
                  <div>
                    <p className="text-white/28 text-[9px] font-['Cairo'] font-bold uppercase tracking-widest mb-2">حجم الخط</p>
                    <div className="grid grid-cols-4 gap-1.5">
                      {FONT_SIZES.map(({ sz, label, name }) => (
                        <button
                          key={sz}
                          onClick={() => updateSub({ fontSize: sz })}
                          className="flex flex-col items-center gap-0.5 py-2 rounded-xl transition-all active:scale-90"
                          style={{
                            background: subSettings.fontSize === sz
                              ? "rgba(139,92,246,0.28)" : "rgba(255,255,255,0.05)",
                            border: subSettings.fontSize === sz
                              ? "1px solid rgba(139,92,246,0.55)" : "1px solid rgba(255,255,255,0.07)",
                          }}
                        >
                          <span
                            className="font-black font-['Cairo'] leading-none"
                            style={{
                              fontSize: sz > 18 ? sz * 0.62 : sz * 0.72,
                              color: subSettings.fontSize === sz ? "#c4b5fd" : "rgba(255,255,255,0.38)",
                            }}
                          >{label}</span>
                          <span className="text-[8px] font-['Cairo']"
                            style={{ color: subSettings.fontSize === sz ? "rgba(196,181,253,0.65)" : "rgba(255,255,255,0.22)" }}>
                            {name}
                          </span>
                        </button>
                      ))}
                    </div>
                  </div>

                  {/* Text color */}
                  <div>
                    <p className="text-white/28 text-[9px] font-['Cairo'] font-bold uppercase tracking-widest mb-2">لون النص</p>
                    <div className="flex gap-1.5">
                      {SUB_COLORS.map(({ v, label }) => (
                        <button
                          key={v}
                          onClick={() => updateSub({ color: v })}
                          className="flex-1 flex flex-col items-center gap-1.5 py-2 rounded-xl transition-all active:scale-90"
                          style={{
                            background: subSettings.color === v ? "rgba(255,255,255,0.10)" : "rgba(255,255,255,0.03)",
                            border: subSettings.color === v ? "1.5px solid rgba(255,255,255,0.35)" : "1px solid rgba(255,255,255,0.07)",
                          }}
                        >
                          <div className="w-3.5 h-3.5 rounded-full" style={{ background: v, boxShadow: "0 1px 4px rgba(0,0,0,0.6)" }} />
                          <span className="text-[8px] font-['Cairo']"
                            style={{ color: subSettings.color === v ? "rgba(255,255,255,0.60)" : "rgba(255,255,255,0.22)" }}>
                            {label}
                          </span>
                        </button>
                      ))}
                    </div>
                  </div>

                  {/* Background */}
                  <div>
                    <p className="text-white/28 text-[9px] font-['Cairo'] font-bold uppercase tracking-widest mb-2">خلفية النص</p>
                    <div className="grid grid-cols-3 gap-1.5">
                      {([
                        { v: 0,    label: "بلا لون",  icon: "○" },
                        { v: 0.45, label: "خفيف",    icon: "◑" },
                        { v: 0.82, label: "مظلل",    icon: "●" },
                      ] as { v: number; label: string; icon: string }[]).map(({ v, label, icon }) => (
                        <button
                          key={v}
                          onClick={() => updateSub({ bgOpacity: v })}
                          className="flex flex-col items-center gap-1 py-2 rounded-xl transition-all active:scale-90"
                          style={{
                            background: subSettings.bgOpacity === v
                              ? "rgba(139,92,246,0.22)" : "rgba(255,255,255,0.04)",
                            border: subSettings.bgOpacity === v
                              ? "1px solid rgba(139,92,246,0.50)" : "1px solid rgba(255,255,255,0.07)",
                          }}
                        >
                          <span className="text-[14px]"
                            style={{ color: subSettings.bgOpacity === v ? "#c4b5fd" : "rgba(255,255,255,0.28)" }}>
                            {icon}
                          </span>
                          <span className="text-[9px] font-bold font-['Cairo']"
                            style={{ color: subSettings.bgOpacity === v ? "#c4b5fd" : "rgba(255,255,255,0.28)" }}>
                            {label}
                          </span>
                        </button>
                      ))}
                    </div>
                  </div>

                  {/* Position */}
                  <div>
                    <p className="text-white/28 text-[9px] font-['Cairo'] font-bold uppercase tracking-widest mb-2">موضع الترجمة</p>
                    <div className="grid grid-cols-3 gap-1.5">
                      {SUB_POSITIONS.map(({ v, label, icon }) => (
                        <button
                          key={v}
                          onClick={() => updateSub({ position: v })}
                          className="flex flex-col items-center gap-1 py-2.5 rounded-xl transition-all active:scale-90"
                          style={{
                            background: subSettings.position === v
                              ? "rgba(139,92,246,0.25)" : "rgba(255,255,255,0.04)",
                            border: subSettings.position === v
                              ? "1px solid rgba(139,92,246,0.50)" : "1px solid rgba(255,255,255,0.07)",
                          }}
                        >
                          <span className="text-[13px] font-bold"
                            style={{ color: subSettings.position === v ? "#c4b5fd" : "rgba(255,255,255,0.30)" }}>
                            {icon}
                          </span>
                          <span className="text-[10px] font-black font-['Cairo']"
                            style={{ color: subSettings.position === v ? "#c4b5fd" : "rgba(255,255,255,0.35)" }}>
                            {label}
                          </span>
                        </button>
                      ))}
                    </div>
                  </div>

                  {/* Bold toggle */}
                  <button
                    onClick={() => updateSub({ bold: !subSettings.bold })}
                    className="w-full py-2 rounded-xl transition-all active:scale-95 flex items-center justify-center gap-2"
                    style={{
                      background: subSettings.bold ? "rgba(139,92,246,0.18)" : "rgba(255,255,255,0.04)",
                      border: subSettings.bold ? "1px solid rgba(139,92,246,0.40)" : "1px solid rgba(255,255,255,0.07)",
                    }}
                  >
                    <span
                      className="font-['Cairo'] text-[12px]"
                      style={{
                        fontWeight: subSettings.bold ? 700 : 400,
                        color: subSettings.bold ? "#c4b5fd" : "rgba(255,255,255,0.35)",
                      }}
                    >
                      {subSettings.bold ? "نص عريض ✓" : "نص عادي"}
                    </span>
                  </button>

                </div>
              )}
            </motion.div>
          )}
        </AnimatePresence>

      </div>

      {/* ════════════════════════════════════════
          SUBTITLE OVERLAY
      ════════════════════════════════════════ */}
      {subCues && subSettings && subActive && (
        <div
          className="absolute left-0 right-0 flex justify-center px-5 pointer-events-none"
          style={{
            zIndex: 70,
            transition: "top 0.3s ease, bottom 0.3s ease",
            ...subPositionStyle(subSettings.position ?? "bottom", showCtrl),
          }}
        >
          <div
            className="max-w-[92%] text-center px-4 py-2 rounded-2xl"
            style={{
              background: subSettings.bgOpacity > 0
                ? `rgba(0,0,0,${subSettings.bgOpacity})`
                : "transparent",
              backdropFilter: subSettings.bgOpacity > 0 ? "blur(8px)" : undefined,
              border: subSettings.bgOpacity > 0 ? "1px solid rgba(255,255,255,0.07)" : "none",
            }}
          >
            <p
              dir="auto"
              style={{
                color: subSettings.color,
                fontSize: subSettings.fontSize,
                fontWeight: subSettings.bold ? 700 : 500,
                fontFamily: "'Cairo', sans-serif",
                lineHeight: 1.6,
                textShadow: "0 1px 10px rgba(0,0,0,1), 0 0 3px rgba(0,0,0,1)",
              }}
            >
              {subActive.text}
            </p>
          </div>
        </div>
      )}

    </div>
  );
}
