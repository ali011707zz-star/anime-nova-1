/**
 * RiftPlayer v5 — تصميم عصري أنيق
 *
 * Layout:
 *  TOP:    [العنوان • الحلقة • الجودة]          [📷] [⟲] [✕]  (title LEFT · buttons RIGHT)
 *  CENTER: ↺10       ⏸(دائرة كبيرة)        ↻10
 *  BOTTOM: progress bar
 *          [🔲] [×N] | ⏸ | [🔊] [🔒] [⛶]
 */

import React, { useState, useRef, useEffect, useCallback } from "react";
import Hls from "hls.js";
import { motion, AnimatePresence } from "framer-motion";
import {
  Play, Pause, Volume2, VolumeX,
  Maximize2, Minimize2, AlertTriangle, RefreshCw,
  RotateCcw, RotateCw, Sun, Lock, Unlock,
  Scan, ScanLine, Camera, X, Download,
  ChevronDown, Zap,
} from "lucide-react";

/* ─────────────── helpers ─────────────── */
function fmtTime(s: number) {
  if (!isFinite(s) || s < 0) return "0:00";
  const h = Math.floor(s / 3600);
  const m = Math.floor((s % 3600) / 60);
  const sec = Math.floor(s % 60);
  if (h > 0) return `${h}:${String(m).padStart(2, "0")}:${String(sec).padStart(2, "0")}`;
  return `${m}:${String(sec).padStart(2, "0")}`;
}

const SPEEDS = [0.5, 0.75, 1, 1.25, 1.5, 2];

/* Modern flip/rotate screen icon */
function FlipScreenIcon({ className }: { className?: string }) {
  return (
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.7"
      strokeLinecap="round" strokeLinejoin="round" className={className}>
      {/* Phone outline */}
      <rect x="7" y="1" width="10" height="16" rx="2" />
      {/* Rotation arrow */}
      <path d="M4 10c0-3.31 2.69-6 6-6" />
      <polyline points="2 8 4 10 6 8" />
      <path d="M20 14c0 3.31-2.69 6-6 6" />
      <polyline points="18 16 20 14 22 16" />
    </svg>
  );
}

/* ─────────────── props ─────────────── */
interface Props {
  src: string;
  title?: string;
  ep?: number;
  totalEps?: number;
  qualityLabel?: string;
  isHls?: boolean;
  serverCount?: number;
  serverIndex?: number;
  downloadUrl?: string;
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

/* ─────────────── component ─────────────── */
export default function RiftPlayer({
  src,
  title = "",
  ep = 1,
  totalEps = 999,
  qualityLabel = "",
  isHls = false,
  serverCount = 1,
  serverIndex = 0,
  downloadUrl,
  onBack,
  onPrevEp,
  onNextEp,
  onRealQuality,
  onTimeUpdate,
  onFail,
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
  const moved        = useRef(false);
  const G_THRESH     = 12;

  const [isPortrait,   setIsPortrait]   = useState(
    typeof window !== "undefined" && window.innerHeight > window.innerWidth
  );
  const [loading,      setLoading]      = useState(true);
  const [error,        setError]        = useState<string | null>(null);
  const [playing,      setPlaying]      = useState(false);
  const [currentTime,  setCurrentTime]  = useState(0);
  const [duration,     setDuration]     = useState(0);
  const [buffered,     setBuffered]     = useState(0);
  const [muted,        setMuted]        = useState(false);
  const [volume,       setVolume]       = useState(1);
  const [brightness,   setBrightness]   = useState(1);
  const [speed,        setSpeed]        = useState(1);
  const [showCtrl,     setShowCtrl]     = useState(true);
  const [isFs,         setIsFs]         = useState(false);
  const [isZoomed,     setIsZoomed]     = useState(false);
  const [isLocked,     setIsLocked]     = useState(false);
  const [showSpeed,    setShowSpeed]    = useState(false);
  const [prgHover,     setPrgHover]     = useState(false);
  const [feedback,     setFeedback]     = useState<GF | null>(null);
  const [dblTap,       setDblTap]       = useState<{ side: "L" | "R"; id: number } | null>(null);
  const [longPress,    setLongPress]    = useState(false);
  const [screenshotFlash, setScreenshotFlash] = useState(false);

  /* ── Orientation lock ── */
  useEffect(() => {
    const lock = async () => {
      try { await (screen.orientation as any).lock("landscape"); } catch {}
    };
    lock();
    return () => {
      try { (screen.orientation as any).unlock(); } catch {}
    };
  }, []);

  /* ── Portrait detection ── */
  useEffect(() => {
    const check = () => setIsPortrait(window.innerHeight > window.innerWidth);
    window.addEventListener("resize", check);
    window.addEventListener("orientationchange", check);
    return () => {
      window.removeEventListener("resize", check);
      window.removeEventListener("orientationchange", check);
    };
  }, []);

  /* ── Fullscreen ── */
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

  /* ── Control hide ── */
  const schedHide = useCallback(() => {
    if (hideRef.current) clearTimeout(hideRef.current);
    hideRef.current = setTimeout(() => setShowCtrl(false), 4000);
  }, []);
  const showControls = useCallback(() => { setShowCtrl(true); schedHide(); }, [schedHide]);

  /* ── Fail ── */
  const fireOnFail = useCallback(() => {
    if (failFired.current) return;
    failFired.current = true;
    setLoading(true); setError(null);
    if (failTimer.current) clearTimeout(failTimer.current);
    failTimer.current = setTimeout(() => onFailRef.current?.(), 800);
  }, []);

  /* ── Load source ── */
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
    const onPlay    = () => setPlaying(true);
    const onPause   = () => setPlaying(false);
    const onTime    = () => {
      setCurrentTime(v.currentTime);
      if (v.buffered.length) setBuffered(v.buffered.end(v.buffered.length - 1));
      onTimeUpdate?.(v.currentTime);
    };
    const onDur     = () => setDuration(v.duration);
    const onWait    = () => setLoading(true);
    const onPlay2   = () => setLoading(false);
    v.addEventListener("play", onPlay); v.addEventListener("pause", onPause);
    v.addEventListener("timeupdate", onTime); v.addEventListener("durationchange", onDur);
    v.addEventListener("waiting", onWait); v.addEventListener("playing", onPlay2);
    return () => {
      v.removeEventListener("play", onPlay); v.removeEventListener("pause", onPause);
      v.removeEventListener("timeupdate", onTime); v.removeEventListener("durationchange", onDur);
      v.removeEventListener("waiting", onWait); v.removeEventListener("playing", onPlay2);
    };
  }, [onTimeUpdate]);

  /* ── Controls ── */
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
    } catch { /* CORS tainted canvas on HLS proxy streams — ignore */ }
  }

  /* ── Progress bar ── */
  function handlePrgClick(e: React.MouseEvent) {
    e.stopPropagation();
    const bar = progressRef.current; if (!bar) return;
    const r = bar.getBoundingClientRect();
    seekFrac((e.clientX - r.left) / r.width);
  }
  function handlePrgDown(e: React.MouseEvent) {
    e.stopPropagation(); seekDrag.current = true;
    const onMv = (ev: MouseEvent) => {
      const bar = progressRef.current; if (!bar) return;
      const r = bar.getBoundingClientRect(); seekFrac((ev.clientX - r.left) / r.width);
    };
    const onUp = () => { seekDrag.current = false; window.removeEventListener("mousemove", onMv); window.removeEventListener("mouseup", onUp); };
    window.addEventListener("mousemove", onMv); window.addEventListener("mouseup", onUp);
  }

  /* ── Touch gestures ── */
  function onTS(e: React.TouchEvent<HTMLDivElement>) {
    if (isLocked) return;
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
      const cW = e.currentTarget.clientWidth;
      if (Math.abs(dx) > Math.abs(dy) * 1.4) {
        g.active = "seek"; g.startValue = videoRef.current?.currentTime ?? 0;
      } else {
        g.active = t.clientX > cW / 2 ? "volume" : "brightness";
        g.startValue = g.active === "volume" ? volume : brightness;
        g.lastY = t.clientY;
      }
    }
    if (g.active === "seek") {
      const maxD = Math.min(duration * 0.5, 120);
      const delta = (dx / e.currentTarget.clientWidth) * maxD;
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
    const side: "L" | "R" = touch.clientX < e.currentTarget.clientWidth / 2 ? "L" : "R";
    const now = Date.now();
    if (lastTap.current && now - lastTap.current.time < 300 && lastTap.current.side === side) {
      togglePlay();
      setDblTap({ side, id: now }); setTimeout(() => setDblTap(null), 600);
      lastTap.current = null;
    } else {
      lastTap.current = { time: now, side };
      setShowCtrl(p => { const n = !p; if (n) schedHide(); return n; });
    }
  }

  const pct    = duration > 0 ? (currentTime / duration) * 100 : 0;
  const bufPct = duration > 0 ? (buffered   / duration) * 100 : 0;

  /* ══════════════════════════════════════════════════
     RENDER
  ══════════════════════════════════════════════════ */
  /* Portrait rotation style — rotates the player 90° to show landscape layout on portrait screens */
  const portraitStyle: React.CSSProperties = isPortrait ? {
    position: "fixed",
    width: "100vh",
    height: "100vw",
    top: "50%",
    left: "50%",
    transform: "translate(-50%, -50%) rotate(90deg)",
    transformOrigin: "center center",
  } : {
    position: "absolute",
    inset: 0,
  };

  return (
    <div
      ref={containerRef}
      data-hls-container
      className="bg-black overflow-hidden select-none"
      style={{ cursor: showCtrl ? "default" : "none", ...portraitStyle }}
      onMouseMove={() => { if (!isLocked) showControls(); }}
    >
      {/* ══ VIDEO ══ */}
      <video
        ref={videoRef}
        className="absolute inset-0 w-full h-full"
        style={{ objectFit: isZoomed ? "cover" : "contain", filter: brightness !== 1 ? `brightness(${brightness})` : undefined }}
        playsInline preload="metadata"
      />

      {/* Screenshot flash */}
      <AnimatePresence>
        {screenshotFlash && (
          <motion.div key="flash" className="absolute inset-0 bg-white pointer-events-none z-50"
            initial={{ opacity: 0.6 }} animate={{ opacity: 0 }} transition={{ duration: 0.5 }} />
        )}
      </AnimatePresence>

      {/* ══ TOUCH + UI LAYER ══ */}
      <div className="absolute inset-0 z-10" onTouchStart={onTS} onTouchMove={onTM} onTouchEnd={onTE}>

        {/* ── Loading ring ── */}
        <AnimatePresence>
          {loading && !error && (
            <motion.div key="ldr" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
              className="absolute inset-0 flex items-center justify-center pointer-events-none z-20">
              <div className="relative w-12 h-12">
                <div className="absolute inset-0 rounded-full border-2" style={{ borderColor: "rgba(255,255,255,0.08)" }} />
                <motion.div className="absolute inset-0 rounded-full border-2 border-transparent"
                  style={{ borderTopColor: "#ef4444", borderRightColor: "rgba(239,68,68,0.30)" }}
                  animate={{ rotate: 360 }} transition={{ duration: 0.9, repeat: Infinity, ease: "linear" }} />
              </div>
            </motion.div>
          )}
        </AnimatePresence>

        {/* ── Error ── */}
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

        {/* ── Double tap: pause/play ripple ── */}
        <AnimatePresence>
          {dblTap && (
            <motion.div key={`dt-${dblTap.id}`}
              initial={{ opacity: 0.85, scale: 0.5 }} animate={{ opacity: 0, scale: 1.6 }} exit={{ opacity: 0 }}
              transition={{ duration: 0.5, ease: "easeOut" }}
              className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 pointer-events-none z-30">
              <div className="w-20 h-20 rounded-full flex items-center justify-center"
                style={{ background: "rgba(255,255,255,0.14)", border: "1.5px solid rgba(255,255,255,0.32)" }}>
                {playing
                  ? <Play className="w-8 h-8 text-white fill-white ml-1" />
                  : <Pause className="w-8 h-8 text-white fill-white" />}
              </div>
            </motion.div>
          )}
        </AnimatePresence>

        {/* ── Long press 2× ── */}
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

        {/* ── Volume indicator ── */}
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

        {/* ── Brightness indicator ── */}
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

        {/* ── Seek preview ── */}
        <AnimatePresence>
          {feedback?.type === "seek" && (
            <motion.div key="seek" initial={{ opacity: 0, scale: 0.94 }} animate={{ opacity: 1, scale: 1 }} exit={{ opacity: 0 }}
              className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 z-30 pointer-events-none">
              <div className="flex items-center gap-3 px-6 py-3 rounded-2xl"
                style={{ background: "rgba(0,0,0,0.78)", border: "1px solid rgba(255,255,255,0.14)", backdropFilter: "blur(16px)" }}>
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
            LOCKED STATE
        ════════════════════════════════════════ */}
        <AnimatePresence>
          {isLocked && (
            <motion.div key="locked" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
              className="absolute inset-0 z-40 flex items-center justify-end pr-6 pointer-events-auto"
              onClick={e => e.stopPropagation()}>
              <button onClick={() => setIsLocked(false)}
                className="flex items-center gap-2 px-4 py-2.5 rounded-full active:scale-90 transition-transform"
                style={{ background: "rgba(0,0,0,0.70)", border: "1px solid rgba(255,255,255,0.22)", backdropFilter: "blur(10px)" }}>
                <Unlock className="w-4 h-4 text-white/80" />
                <span className="text-white/70 text-[12px] font-bold font-['Cairo']">فتح القفل</span>
              </button>
            </motion.div>
          )}
        </AnimatePresence>

        {/* ════════════════════════════════════════
            MAIN CONTROLS OVERLAY
        ════════════════════════════════════════ */}
        <AnimatePresence>
          {showCtrl && !error && !isLocked && (
            <motion.div key="ctrl"
              initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
              transition={{ duration: 0.16 }}
              className="absolute inset-0 flex flex-col pointer-events-none"
              onClick={e => { e.stopPropagation(); togglePlay(); }}
            >

              {/* ════ TOP BAR ════ */}
              <div
                className="shrink-0 pointer-events-auto"
                dir="ltr"
                style={{
                  background: "linear-gradient(180deg, rgba(0,0,0,0.92) 0%, rgba(0,0,0,0.50) 75%, transparent 100%)",
                  paddingTop: "max(16px, env(safe-area-inset-top))",
                  paddingBottom: 22,
                  paddingLeft: 16,
                  paddingRight: 16,
                }}
                onClick={e => e.stopPropagation()}
              >
                <div className="flex items-start justify-between gap-3">

                  {/* LEFT: title block — 2-line compact style */}
                  <div className="flex-1 min-w-0">
                    <h1
                      className="text-white font-black leading-snug truncate"
                      style={{ fontSize: 16, textShadow: "0 2px 14px rgba(0,0,0,0.95)", letterSpacing: "-0.01em" }}>
                      {title || "Nova Player"}
                    </h1>
                    <div className="flex items-center gap-1.5 mt-[4px] flex-wrap" dir="rtl">
                      {qualityLabel && (
                        <span className="text-amber-300/80 text-[11px] font-black font-mono">{qualityLabel}P</span>
                      )}
                      {qualityLabel && <span className="text-white/20 text-[9px]">•</span>}
                      <span className="text-white/50 text-[11px] font-['Cairo']">الحلقة {ep}</span>
                      <span className="text-white/20 text-[9px]">•</span>
                      <span className="text-white/40 text-[11px] font-['Cairo']">عربي مترجم</span>
                      {serverCount > 1 && (
                        <>
                          <span className="text-white/20 text-[9px]">•</span>
                          <span className="text-white/28 text-[10px] font-['Cairo']">{serverIndex + 1}/{serverCount}</span>
                        </>
                      )}
                    </div>
                  </div>

                  {/* RIGHT: action buttons */}
                  <div className="flex items-center gap-1.5 shrink-0 mt-0.5">
                    <button onClick={takeScreenshot}
                      className="w-9 h-9 rounded-full flex items-center justify-center active:scale-90 transition-all duration-150"
                      style={{ background: "rgba(255,255,255,0.08)", border: "1px solid rgba(255,255,255,0.13)", backdropFilter: "blur(10px)" }}>
                      <Camera className="w-[16px] h-[16px] text-white/60" />
                    </button>
                    <button onClick={toggleFs}
                      className="w-9 h-9 rounded-full flex items-center justify-center active:scale-90 transition-all duration-150"
                      style={{ background: "rgba(124,58,237,0.16)", border: "1px solid rgba(139,92,246,0.28)", backdropFilter: "blur(10px)" }}>
                      <FlipScreenIcon className="w-[17px] h-[17px] text-violet-300/75" />
                    </button>
                    <button onClick={onBack}
                      className="w-9 h-9 rounded-full flex items-center justify-center active:scale-90 transition-all duration-150"
                      style={{ background: "rgba(239,68,68,0.13)", border: "1px solid rgba(239,68,68,0.24)", backdropFilter: "blur(10px)" }}>
                      <X className="w-[16px] h-[16px] text-red-400/75" />
                    </button>
                  </div>
                </div>
              </div>

              {/* ════ CENTER CONTROLS (↺10  ⏸  ↻10) ════ */}
              <div className="flex-1 flex items-center justify-center pointer-events-auto"
                onClick={e => e.stopPropagation()}>
                <div className="flex items-center gap-12">

                  {/* Back 10s */}
                  <button onClick={() => { skip(-10); showControls(); }}
                    className="relative flex items-center justify-center w-14 h-14 active:scale-90 transition-transform">
                    <RotateCcw className="w-14 h-14 text-white/80" strokeWidth={1.3} />
                    <span className="absolute text-white font-black text-[13px] font-mono leading-none" style={{ marginTop: 1 }}>10</span>
                  </button>

                  {/* Play / Pause large */}
                  <button onClick={togglePlay}
                    className="w-[70px] h-[70px] rounded-full flex items-center justify-center active:scale-90 transition-transform"
                    style={{
                      background: "rgba(0,0,0,0.52)",
                      border: "2px solid rgba(255,255,255,0.50)",
                      backdropFilter: "blur(10px)",
                      boxShadow: "0 0 0 5px rgba(255,255,255,0.06)",
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

                  {/* Forward 10s */}
                  <button onClick={() => { skip(10); showControls(); }}
                    className="relative flex items-center justify-center w-14 h-14 active:scale-90 transition-transform">
                    <RotateCw className="w-14 h-14 text-white/80" strokeWidth={1.3} />
                    <span className="absolute text-white font-black text-[13px] font-mono leading-none" style={{ marginTop: 1 }}>10</span>
                  </button>
                </div>
              </div>

              {/* ════ BOTTOM SECTION ════ */}
              <div
                className="shrink-0 pointer-events-auto"
                style={{ background: "linear-gradient(0deg, rgba(0,0,0,0.95) 0%, rgba(0,0,0,0.55) 75%, transparent 100%)" }}
                onClick={e => e.stopPropagation()}
              >
                {/* Progress bar */}
                <div className="px-5 pt-2 pb-1">
                  {/* Time row */}
                  <div className="flex items-center justify-between mb-3 px-0.5" dir="ltr">
                    <span className="text-white/70 text-[12px] font-bold font-mono">{fmtTime(currentTime)}</span>
                    <span className="text-white/35 text-[12px] font-mono">{fmtTime(duration)}</span>
                  </div>

                  {/* Track */}
                  <div
                    ref={progressRef}
                    className="relative w-full cursor-pointer"
                    style={{ height: prgHover ? 7 : 4, transition: "height 0.15s ease" }}
                    onClick={handlePrgClick}
                    onMouseDown={handlePrgDown}
                    onMouseEnter={() => setPrgHover(true)}
                    onMouseLeave={() => setPrgHover(false)}
                    onTouchStart={e => { e.stopPropagation(); setPrgHover(true); }}
                    onTouchEnd={() => setPrgHover(false)}
                  >
                    <div className="absolute inset-0 rounded-full" style={{ background: "rgba(255,255,255,0.18)" }} />
                    <div className="absolute top-0 left-0 h-full rounded-full"
                      style={{ width: `${bufPct}%`, background: "rgba(234,179,8,0.55)", transition: "width 0.3s" }} />
                    <div className="absolute top-0 left-0 h-full rounded-full"
                      style={{ width: `${pct}%`, background: "#ef4444", transition: seekDrag.current ? "none" : "width 0.1s" }} />
                    <div className="absolute top-1/2 -translate-y-1/2 rounded-full"
                      style={{
                        left: `calc(${pct}% - ${prgHover ? 7 : 5}px)`,
                        width: prgHover ? 14 : 10, height: prgHover ? 14 : 10,
                        background: "#ef4444",
                        boxShadow: "0 0 0 2px rgba(239,68,68,0.35), 0 1px 6px rgba(0,0,0,0.60)",
                        transition: "left 0.1s, width 0.15s, height 0.15s",
                      }} />
                  </div>
                </div>

                {/* ── Controls row — truly centered play, equal icon buttons ── */}
                <div
                  className="relative flex items-center px-2 pt-2"
                  style={{ paddingBottom: "max(14px, env(safe-area-inset-bottom))" }}
                >
                  {/* ─ Left group: Zoom · Speed ─ */}
                  <div className="flex items-center gap-0.5">
                    <button onClick={() => setIsZoomed(z => !z)}
                      className="w-11 h-11 flex items-center justify-center rounded-xl active:bg-white/10 transition-colors">
                      {isZoomed
                        ? <ScanLine className="w-[19px] h-[19px] text-violet-300/90" />
                        : <Scan className="w-[19px] h-[19px] text-white/45" />}
                    </button>
                    <div className="relative">
                      <button onClick={() => { setShowSpeed(s => !s); showControls(); }}
                        className="w-11 h-11 flex items-center justify-center rounded-xl active:bg-white/10 transition-colors">
                        <span
                          className="px-2 py-[3px] rounded-lg font-mono text-[11px] font-black leading-none"
                          style={{
                            background: speed !== 1 ? "rgba(239,68,68,0.18)" : "rgba(255,255,255,0.07)",
                            color: speed !== 1 ? "#f87171" : "rgba(255,255,255,0.45)",
                            border: speed !== 1 ? "1px solid rgba(239,68,68,0.28)" : "1px solid rgba(255,255,255,0.10)",
                          }}>
                          ×{speed}
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
                            style={{ background: "rgba(9,9,18,0.97)", border: "1px solid rgba(255,255,255,0.10)", backdropFilter: "blur(20px)", minWidth: 90 }}
                          >
                            {SPEEDS.map((s, i) => (
                              <button key={s} onClick={() => changeSpeed(s)}
                                className="w-full flex items-center justify-between px-4 py-2.5 transition-colors"
                                style={{
                                  background: s === speed ? "rgba(239,68,68,0.12)" : "transparent",
                                  borderBottom: i < SPEEDS.length - 1 ? "1px solid rgba(255,255,255,0.05)" : "none",
                                }}>
                                <span className="text-[12px] font-black font-mono" style={{ color: s === speed ? "#f87171" : "rgba(255,255,255,0.40)" }}>×{s}</span>
                                {s === speed && <div className="w-1.5 h-1.5 rounded-full bg-red-400" />}
                              </button>
                            ))}
                          </motion.div>
                        )}
                      </AnimatePresence>
                    </div>
                  </div>

                  {/* ─ Center: play/pause — absolutely centered ─ */}
                  <div className="absolute left-1/2 -translate-x-1/2">
                    <button onClick={togglePlay}
                      className="w-[46px] h-[46px] rounded-full flex items-center justify-center active:scale-90 transition-transform"
                      style={{ background: "rgba(255,255,255,0.10)", border: "1.5px solid rgba(255,255,255,0.28)" }}>
                      {playing
                        ? <Pause className="w-5 h-5 text-white fill-white" />
                        : <Play className="w-5 h-5 text-white fill-white ml-0.5" />}
                    </button>
                  </div>

                  {/* ─ Right group: Volume · Lock · Fullscreen (pushed to end) ─ */}
                  <div className="flex items-center gap-0.5 ml-auto">
                    <button onClick={toggleMute}
                      className="w-11 h-11 flex items-center justify-center rounded-xl active:bg-white/10 transition-colors">
                      {muted || volume === 0
                        ? <VolumeX className="w-[19px] h-[19px] text-white/45" />
                        : <Volume2 className="w-[19px] h-[19px] text-white/45" />}
                    </button>
                    <button onClick={() => setIsLocked(true)}
                      className="w-11 h-11 flex items-center justify-center rounded-xl active:bg-white/10 transition-colors">
                      <Lock className="w-[17px] h-[17px] text-white/45" />
                    </button>
                    <button onClick={toggleFs}
                      className="w-11 h-11 flex items-center justify-center rounded-xl active:bg-white/10 transition-colors">
                      {isFs
                        ? <Minimize2 className="w-[19px] h-[19px] text-white/60" />
                        : <Maximize2 className="w-[19px] h-[19px] text-white/60" />}
                    </button>
                  </div>
                </div>
              </div>

            </motion.div>
          )}
        </AnimatePresence>
      </div>
    </div>
  );
}
