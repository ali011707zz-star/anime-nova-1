/**
 * RiftPlayer v3 — مشغّل سينمائي بتصميم Anime Rift
 *
 * ─ دوران أفقي تلقائي عند الفتح (Android/iOS)
 * ─ قفل التحكم (لمنع اللمس العرضي)
 * ─ تكبير/احتواء الفيديو
 * ─ شريط تقدم أحمر مع نقطة بيضاء
 * ─ جميع الإيماءات: سحب للتقديم، صوت، سطوع، نقر مزدوج
 * ─ ضغط مطوّل 2×
 */

import { useState, useRef, useEffect, useCallback, type ReactNode } from "react";
import Hls from "hls.js";
import { motion, AnimatePresence } from "framer-motion";
import {
  Play, Pause, Volume2, VolumeX,
  Maximize2, Minimize2, AlertTriangle, RefreshCw,
  RotateCcw, RotateCw, Sun, ChevronDown, ChevronLeft, ChevronRight,
  Zap, Lock, Unlock, Scan, ScanLine, SkipBack, SkipForward,
  RotateCcw as RotateIcon,
} from "lucide-react";

/* ─────────────────── helpers ─────────────────── */
function fmtTime(s: number) {
  if (!isFinite(s) || s < 0) return "0:00";
  const h = Math.floor(s / 3600);
  const m = Math.floor((s % 3600) / 60);
  const sec = Math.floor(s % 60);
  if (h > 0) return `${h}:${String(m).padStart(2, "0")}:${String(sec).padStart(2, "0")}`;
  return `${m}:${String(sec).padStart(2, "0")}`;
}

const SPEEDS = [0.5, 0.75, 1, 1.25, 1.5, 2];

/* ─────────────────── types ─────────────────── */
interface Props {
  src: string;
  onRealQuality?: (q: string) => void;
  onTimeUpdate?: (t: number) => void;
  onFail?: () => void;
  topSlot?: ReactNode;
  bottomSlot?: ReactNode; /* kept for compat — not rendered */
  onPrevEp?: () => void;
  onNextEp?: () => void;
  ep?: number;
  totalEps?: number;
}

type GestureType = "none" | "seek" | "volume" | "brightness";

interface GestureState {
  active: GestureType;
  startX: number; startY: number; lastY: number; startValue: number;
}

interface GestureFeedback {
  type: "volume" | "brightness" | "seek";
  value: number; delta?: number;
}

/* ─────────────────── component ─────────────────── */
export default function RiftPlayer({
  src, onRealQuality, onTimeUpdate, onFail, topSlot,
  onPrevEp, onNextEp, ep = 1, totalEps = 999,
}: Props) {

  const videoRef      = useRef<HTMLVideoElement>(null);
  const hlsRef        = useRef<Hls | null>(null);
  const containerRef  = useRef<HTMLDivElement>(null);
  const progressRef   = useRef<HTMLDivElement>(null);
  const hideTimerRef  = useRef<ReturnType<typeof setTimeout> | null>(null);
  const seekDragging  = useRef(false);
  const onFailRef     = useRef(onFail);
  onFailRef.current   = onFail;
  const failFiredRef  = useRef(false);
  const failTimerRef  = useRef<ReturnType<typeof setTimeout> | null>(null);
  const gestureRef    = useRef<GestureState>({ active: "none", startX: 0, startY: 0, lastY: 0, startValue: 0 });
  const lastTapRef    = useRef<{ time: number; side: "left" | "right" } | null>(null);
  const longPressTimer = useRef<ReturnType<typeof setTimeout> | null>(null);
  const prevSpeedRef  = useRef(1);
  const touchMoved    = useRef(false);
  const GESTURE_THRESH = 12;

  const [loading,       setLoading]       = useState(true);
  const [error,         setError]         = useState<string | null>(null);
  const [isPlaying,     setIsPlaying]     = useState(false);
  const [currentTime,   setCurrentTime]   = useState(0);
  const [duration,      setDuration]      = useState(0);
  const [buffered,      setBuffered]      = useState(0);
  const [muted,         setMuted]         = useState(false);
  const [volume,        setVolume]        = useState(1);
  const [brightness,    setBrightness]    = useState(1);
  const [speed,         setSpeed]         = useState(1);
  const [showControls,  setShowControls]  = useState(true);
  const [isFs,          setIsFs]          = useState(false);
  const [isZoomed,      setIsZoomed]      = useState(false);
  const [isLocked,      setIsLocked]      = useState(false);
  const [showSpeedMenu, setShowSpeedMenu] = useState(false);
  const [progressHover, setProgressHover] = useState(false);

  const [feedback,        setFeedback]        = useState<GestureFeedback | null>(null);
  const [doubleTap,       setDoubleTap]       = useState<{ side: "left" | "right"; id: number } | null>(null);
  const [isLongPressing,  setIsLongPressing]  = useState(false);

  /* ── Orientation lock (landscape) ── */
  useEffect(() => {
    const lockLandscape = async () => {
      try {
        await (screen.orientation as any).lock("landscape");
      } catch { /* desktop/unsupported — ignore */ }
    };
    lockLandscape();
    return () => {
      try { (screen.orientation as any).unlock(); } catch {}
      if (document.fullscreenElement) {
        document.exitFullscreen().catch(() => {});
      }
    };
  }, []);

  /* ── Fullscreen changes ── */
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

  function rotateLandscape() {
    toggleFs();
  }

  /* ── Control auto-hide ── */
  const scheduleHide = useCallback(() => {
    if (hideTimerRef.current) clearTimeout(hideTimerRef.current);
    hideTimerRef.current = setTimeout(() => setShowControls(false), 4000);
  }, []);

  const showCtrl = useCallback(() => {
    setShowControls(true);
    scheduleHide();
  }, [scheduleHide]);

  /* ── Stable onFail ── */
  const fireOnFail = useCallback(() => {
    if (failFiredRef.current) return;
    failFiredRef.current = true;
    setLoading(true); setError(null);
    if (failTimerRef.current) clearTimeout(failTimerRef.current);
    failTimerRef.current = setTimeout(() => onFailRef.current?.(), 600);
  }, []);

  /* ── Source loading ── */
  const loadSource = useCallback(async () => {
    const video = videoRef.current;
    if (!video) return;
    if (hlsRef.current) { hlsRef.current.destroy(); hlsRef.current = null; }
    video.src = "";
    setLoading(true); setError(null); setCurrentTime(0); setDuration(0); setIsPlaying(false);
    failFiredRef.current = false;
    if (failTimerRef.current) { clearTimeout(failTimerRef.current); failTimerRef.current = null; }

    let m3u8Url = src;

    if (src.includes("animegg.org/play/") || src.includes("vidcache.net")) {
      video.src = src; video.load();
      video.addEventListener("loadedmetadata", () => { setLoading(false); video.play().catch(() => {}); showCtrl(); }, { once: true });
      video.addEventListener("error", () => fireOnFail(), { once: true });
      return;
    }

    const isDirectMp4 = src.includes("streamtape.com") || src.includes("sendvid.com")
      || src.includes("videos2.sendvid.com") || src.includes("video-proxy?")
      || src.includes("workers.dev");
    if (isDirectMp4) {
      const proxyUrl = src.includes("video-proxy?") ? src
        : `/api/anime/video-proxy?url=${encodeURIComponent(src)}&ref=${encodeURIComponent(src)}`;
      video.src = proxyUrl; video.load();
      let resolved = false;
      const cleanup = () => { resolved = true; clearTimeout(loadTimer); video.removeEventListener("loadedmetadata", onMeta); video.removeEventListener("error", onErr); };
      const onMeta = () => { if (resolved) return; cleanup(); setLoading(false); video.play().catch(() => {}); showCtrl(); };
      const onErr  = () => { if (resolved) return; cleanup(); fireOnFail(); };
      const loadTimer = setTimeout(() => { if (resolved) return; video.src = ""; onErr(); }, 9000);
      video.addEventListener("loadedmetadata", onMeta, { once: true });
      video.addEventListener("error", onErr, { once: true });
      return;
    }

    if (src.includes("/animex-player")) {
      try {
        const qs = src.includes("?") ? src.split("?")[1] : "";
        const params = new URLSearchParams(qs);
        params.set("_t", String(Date.now()));
        const r = await fetch(`/api/anime/animex-source?${params}`, { cache: "no-store", signal: AbortSignal.timeout(18000) });
        if (!r.ok) { const d = await r.json().catch(() => ({})); setError((d as any).error || `فشل (${r.status})`); setLoading(false); return; }
        const data = await r.json() as { proxyUrl?: string; rawUrl?: string; quality?: string };
        const hlsUrl = data.proxyUrl || data.rawUrl;
        if (!hlsUrl) { setError("لا يوجد رابط HLS"); setLoading(false); return; }
        m3u8Url = hlsUrl;
        if (data.quality && onRealQuality) onRealQuality(data.quality);
      } catch { setError("خطأ في الاتصال"); setLoading(false); return; }
    }

    if (Hls.isSupported()) {
      const hls = new Hls({ enableWorker: false, lowLatencyMode: false, maxBufferLength: 30 });
      hlsRef.current = hls;
      hls.loadSource(m3u8Url);
      hls.attachMedia(video);
      hls.on(Hls.Events.MANIFEST_PARSED, () => {
        if (hlsRef.current !== hls) return;
        setError(null); setLoading(false);
        video.play().catch(() => {}); showCtrl();
      });
      hls.on(Hls.Events.ERROR, (_, data) => {
        if (hlsRef.current !== hls) return;
        if (data.fatal) fireOnFail();
      });
    } else if (video.canPlayType("application/vnd.apple.mpegurl")) {
      video.src = m3u8Url;
      video.addEventListener("loadedmetadata", () => { setLoading(false); video.play().catch(() => {}); }, { once: true });
      video.addEventListener("error", () => setError("فشل التشغيل"), { once: true });
    } else {
      setError("المتصفح لا يدعم HLS");
      setLoading(false);
    }
  }, [src, onRealQuality, fireOnFail, showCtrl]);

  useEffect(() => {
    loadSource();
    return () => {
      if (hlsRef.current) { hlsRef.current.destroy(); hlsRef.current = null; }
      if (hideTimerRef.current) clearTimeout(hideTimerRef.current);
      if (failTimerRef.current) clearTimeout(failTimerRef.current);
    };
  }, [loadSource]);

  /* ── Video events ── */
  useEffect(() => {
    const v = videoRef.current;
    if (!v) return;
    const onPlay    = () => setIsPlaying(true);
    const onPause   = () => setIsPlaying(false);
    const onTime    = () => {
      setCurrentTime(v.currentTime);
      if (v.buffered.length > 0) setBuffered(v.buffered.end(v.buffered.length - 1));
      onTimeUpdate?.(v.currentTime);
    };
    const onLoaded  = () => setDuration(v.duration);
    const onWaiting = () => setLoading(true);
    const onPlaying = () => setLoading(false);
    v.addEventListener("play", onPlay); v.addEventListener("pause", onPause);
    v.addEventListener("timeupdate", onTime); v.addEventListener("durationchange", onLoaded);
    v.addEventListener("waiting", onWaiting); v.addEventListener("playing", onPlaying);
    return () => {
      v.removeEventListener("play", onPlay); v.removeEventListener("pause", onPause);
      v.removeEventListener("timeupdate", onTime); v.removeEventListener("durationchange", onLoaded);
      v.removeEventListener("waiting", onWaiting); v.removeEventListener("playing", onPlaying);
    };
  }, [onTimeUpdate]);

  /* ── Controls ── */
  function togglePlay() {
    const v = videoRef.current; if (!v) return;
    v.paused ? v.play().catch(() => {}) : v.pause();
    showCtrl();
  }
  function toggleMute() {
    const v = videoRef.current; if (!v) return;
    v.muted = !v.muted; setMuted(v.muted);
  }
  function skipSeconds(delta: number) {
    const v = videoRef.current; if (!v || !duration) return;
    v.currentTime = Math.max(0, Math.min(duration, v.currentTime + delta));
    setCurrentTime(v.currentTime);
  }
  function changeSpeed(s: number) {
    setSpeed(s);
    if (videoRef.current) videoRef.current.playbackRate = s;
    setShowSpeedMenu(false); showCtrl();
  }
  function seekToFrac(frac: number) {
    const v = videoRef.current; if (!v || !duration) return;
    const t = Math.max(0, Math.min(1, frac)) * duration;
    v.currentTime = t; setCurrentTime(t);
  }

  /* ── Progress bar mouse ── */
  function handleProgressClick(e: React.MouseEvent) {
    e.stopPropagation();
    const bar = progressRef.current; if (!bar) return;
    const rect = bar.getBoundingClientRect();
    seekToFrac((e.clientX - rect.left) / rect.width);
  }
  function handleProgressMouseDown(e: React.MouseEvent) {
    e.stopPropagation(); seekDragging.current = true;
    const onMove = (ev: MouseEvent) => {
      const bar = progressRef.current; if (!bar) return;
      const rect = bar.getBoundingClientRect();
      seekToFrac((ev.clientX - rect.left) / rect.width);
    };
    const onUp = () => { seekDragging.current = false; window.removeEventListener("mousemove", onMove); window.removeEventListener("mouseup", onUp); };
    window.addEventListener("mousemove", onMove); window.addEventListener("mouseup", onUp);
  }

  /* ══════════ TOUCH GESTURES ══════════ */
  function onTouchStart(e: React.TouchEvent<HTMLDivElement>) {
    if (isLocked) return;
    touchMoved.current = false;
    const t = e.touches[0];
    gestureRef.current = { active: "none", startX: t.clientX, startY: t.clientY, lastY: t.clientY, startValue: 0 };

    longPressTimer.current = setTimeout(() => {
      touchMoved.current = true;
      prevSpeedRef.current = videoRef.current?.playbackRate ?? 1;
      if (videoRef.current) videoRef.current.playbackRate = 2;
      setIsLongPressing(true); setFeedback(null);
    }, 500);
  }

  function onTouchMove(e: React.TouchEvent<HTMLDivElement>) {
    if (isLocked) return;
    const t = e.touches[0];
    const g = gestureRef.current;
    const dx = t.clientX - g.startX, dy = t.clientY - g.startY;
    const dist = Math.sqrt(dx * dx + dy * dy);

    if (dist > 8 && longPressTimer.current) { clearTimeout(longPressTimer.current); longPressTimer.current = null; }
    if (isLongPressing) return;

    if (g.active === "none" && dist > GESTURE_THRESH) {
      touchMoved.current = true;
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
      const cW = e.currentTarget.clientWidth;
      const maxDelta = Math.min(duration * 0.5, 120);
      const delta = (dx / cW) * maxDelta;
      const target = Math.max(0, Math.min(duration, g.startValue + delta));
      setFeedback({ type: "seek", value: target, delta });
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

  function onTouchEnd(e: React.TouchEvent<HTMLDivElement>) {
    if (longPressTimer.current) { clearTimeout(longPressTimer.current); longPressTimer.current = null; }

    if (isLongPressing) {
      if (videoRef.current) videoRef.current.playbackRate = prevSpeedRef.current;
      setIsLongPressing(false); setFeedback(null); return;
    }

    const g = gestureRef.current;
    if (g.active === "seek") {
      if (feedback?.type === "seek" && videoRef.current) {
        videoRef.current.currentTime = feedback.value; setCurrentTime(feedback.value);
      }
      setTimeout(() => setFeedback(null), 200);
      gestureRef.current.active = "none"; return;
    }
    if (g.active !== "none") {
      setTimeout(() => setFeedback(null), 800);
      gestureRef.current.active = "none"; return;
    }

    if (touchMoved.current) return;
    const touch = e.changedTouches[0];
    const cW = e.currentTarget.clientWidth;
    const side: "left" | "right" = touch.clientX < cW / 2 ? "left" : "right";
    const now = Date.now();

    if (lastTapRef.current && now - lastTapRef.current.time < 300 && lastTapRef.current.side === side) {
      skipSeconds(side === "right" ? 10 : -10);
      setDoubleTap({ side, id: now });
      setTimeout(() => setDoubleTap(null), 700);
      lastTapRef.current = null;
      showCtrl();
    } else {
      lastTapRef.current = { time: now, side };
      setShowControls(p => { const n = !p; if (n) scheduleHide(); return n; });
    }
  }

  function onMouseMove() { if (!isLocked) showCtrl(); }

  const pct    = duration > 0 ? (currentTime / duration) * 100 : 0;
  const bufPct = duration > 0 ? (buffered   / duration) * 100 : 0;

  /* ══════════════════════ RENDER ══════════════════════ */
  return (
    <div
      ref={containerRef}
      data-hls-container
      className="relative w-full h-full bg-black overflow-hidden select-none"
      style={{ cursor: showControls ? "default" : "none" }}
      onMouseMove={onMouseMove}
    >
      {/* ══ VIDEO ══ */}
      <video
        ref={videoRef}
        className="w-full h-full"
        playsInline preload="metadata"
        style={{
          objectFit: isZoomed ? "cover" : "contain",
          filter: brightness !== 1 ? `brightness(${brightness})` : undefined,
        }}
      />

      {/* ══ TOUCH GESTURE LAYER ══ */}
      <div
        className="absolute inset-0 z-10"
        onTouchStart={onTouchStart}
        onTouchMove={onTouchMove}
        onTouchEnd={onTouchEnd}
      >
        {/* ── Loading ── */}
        <AnimatePresence>
          {loading && !error && (
            <motion.div key="ldr" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
              className="absolute inset-0 flex items-center justify-center pointer-events-none z-20">
              <div className="relative w-12 h-12">
                <div className="absolute inset-0 rounded-full border-[1.5px]" style={{ borderColor: "rgba(255,255,255,0.08)" }} />
                <motion.div className="absolute inset-0 rounded-full border-[1.5px] border-transparent"
                  style={{ borderTopColor: "rgba(255,255,255,0.90)", borderRightColor: "rgba(239,68,68,0.40)" }}
                  animate={{ rotate: 360 }} transition={{ duration: 0.8, repeat: Infinity, ease: "linear" }} />
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
                style={{ background: "rgba(239,68,68,0.10)", border: "1px solid rgba(239,68,68,0.22)" }}>
                <AlertTriangle className="w-7 h-7 text-red-400/70" />
              </div>
              <div className="text-center px-10">
                <p className="text-white/80 text-[15px] font-black font-['Cairo']">تعذّر تحميل الفيديو</p>
                <p className="text-white/30 text-[12px] mt-1.5 font-['Cairo'] leading-relaxed">{error}</p>
              </div>
              <button onClick={() => { setError(null); loadSource(); }}
                className="flex items-center gap-2 px-6 py-3 rounded-full text-white text-[13px] font-bold font-['Cairo'] active:scale-95 transition-transform"
                style={{ background: "rgba(239,68,68,0.20)", border: "1px solid rgba(239,68,68,0.35)" }}>
                <RefreshCw className="w-4 h-4" /> إعادة المحاولة
              </button>
            </motion.div>
          )}
        </AnimatePresence>

        {/* ── Double tap ripple ── */}
        <AnimatePresence>
          {doubleTap && (
            <motion.div key={`dt-${doubleTap.id}`}
              initial={{ opacity: 0.85, scale: 0.5 }}
              animate={{ opacity: 0, scale: 1.6 }}
              exit={{ opacity: 0 }}
              transition={{ duration: 0.55, ease: "easeOut" }}
              className="absolute top-1/2 -translate-y-1/2 pointer-events-none z-30 flex flex-col items-center gap-1.5"
              style={{ [doubleTap.side === "right" ? "right" : "left"]: "10%" }}>
              <div className="w-20 h-20 rounded-full flex items-center justify-center"
                style={{ background: "rgba(255,255,255,0.14)", border: "1.5px solid rgba(255,255,255,0.30)" }}>
                {doubleTap.side === "right"
                  ? <RotateCw className="w-8 h-8 text-white" strokeWidth={1.8} />
                  : <RotateCcw className="w-8 h-8 text-white" strokeWidth={1.8} />}
              </div>
              <span className="text-white/80 text-[11px] font-bold font-['Cairo'] drop-shadow">
                {doubleTap.side === "right" ? "+10 ثانية" : "-10 ثانية"}
              </span>
            </motion.div>
          )}
        </AnimatePresence>

        {/* ── Long press 2× ── */}
        <AnimatePresence>
          {isLongPressing && (
            <motion.div key="lp" initial={{ opacity: 0, y: -10 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0 }}
              className="absolute top-20 left-1/2 -translate-x-1/2 z-30 flex items-center gap-2 px-5 py-2.5 rounded-full pointer-events-none"
              style={{ background: "rgba(0,0,0,0.72)", border: "1px solid rgba(251,191,36,0.35)", backdropFilter: "blur(12px)" }}>
              <Zap className="w-4 h-4 text-amber-300 fill-amber-300" />
              <span className="text-amber-200 text-[13px] font-black font-['Cairo']">تشغيل سريع ×2</span>
            </motion.div>
          )}
        </AnimatePresence>

        {/* ── Volume indicator (right side) ── */}
        <AnimatePresence>
          {feedback?.type === "volume" && (
            <motion.div key="vol" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
              className="absolute right-6 top-1/2 -translate-y-1/2 z-30 flex flex-col items-center gap-3 pointer-events-none">
              <div className="relative rounded-full overflow-hidden" style={{ width: 4, height: 120, background: "rgba(255,255,255,0.15)" }}>
                <div className="absolute bottom-0 left-0 right-0 rounded-full"
                  style={{ background: "rgba(255,255,255,0.85)", height: `${feedback.value * 100}%`, transition: "height 0.06s" }} />
              </div>
              <div className="flex items-center gap-1.5 px-3 py-1 rounded-full"
                style={{ background: "rgba(0,0,0,0.60)", border: "1px solid rgba(255,255,255,0.12)" }}>
                <Volume2 className="w-3 h-3 text-white/70" />
                <span className="text-white/90 text-[11px] font-bold font-mono">{Math.round(feedback.value * 100)}%</span>
              </div>
            </motion.div>
          )}
        </AnimatePresence>

        {/* ── Brightness indicator (left side) ── */}
        <AnimatePresence>
          {feedback?.type === "brightness" && (
            <motion.div key="bright" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
              className="absolute left-6 top-1/2 -translate-y-1/2 z-30 flex flex-col items-center gap-3 pointer-events-none">
              <div className="relative rounded-full overflow-hidden" style={{ width: 4, height: 120, background: "rgba(255,255,255,0.15)" }}>
                <div className="absolute bottom-0 left-0 right-0 rounded-full"
                  style={{ background: "rgba(253,224,71,0.90)", height: `${Math.min(feedback.value * 100, 100)}%`, transition: "height 0.06s" }} />
              </div>
              <div className="flex items-center gap-1.5 px-3 py-1 rounded-full"
                style={{ background: "rgba(0,0,0,0.60)", border: "1px solid rgba(255,255,255,0.12)" }}>
                <Sun className="w-3 h-3 text-yellow-300/80" />
                <span className="text-white/90 text-[11px] font-bold font-mono">{Math.round(feedback.value * 100)}%</span>
              </div>
            </motion.div>
          )}
        </AnimatePresence>

        {/* ── Seek preview ── */}
        <AnimatePresence>
          {feedback?.type === "seek" && (
            <motion.div key="seek" initial={{ opacity: 0, scale: 0.95 }} animate={{ opacity: 1, scale: 1 }} exit={{ opacity: 0 }}
              className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 z-30 pointer-events-none">
              <div className="flex items-center gap-2.5 px-6 py-3 rounded-2xl"
                style={{ background: "rgba(0,0,0,0.75)", border: "1px solid rgba(255,255,255,0.15)", backdropFilter: "blur(16px)" }}>
                {(feedback.delta ?? 0) >= 0
                  ? <RotateCw className="w-5 h-5 text-white/60" strokeWidth={1.8} />
                  : <RotateCcw className="w-5 h-5 text-white/60" strokeWidth={1.8} />}
                <span className="text-white font-black text-[18px] font-mono">{fmtTime(feedback.value)}</span>
                <span className="text-white/40 text-[12px] font-['Cairo']">
                  {(feedback.delta ?? 0) >= 0 ? `+${Math.abs(Math.round(feedback.delta ?? 0))}s` : `-${Math.abs(Math.round(feedback.delta ?? 0))}s`}
                </span>
              </div>
            </motion.div>
          )}
        </AnimatePresence>

        {/* ══════════════════════════════════════════════════════════ */}
        {/* ══ LOCKED STATE — only show unlock button ════════════════ */}
        {/* ══════════════════════════════════════════════════════════ */}
        <AnimatePresence>
          {isLocked && (
            <motion.div key="locked" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
              className="absolute inset-0 z-40 flex items-center justify-end pr-5 pointer-events-auto"
              onClick={e => e.stopPropagation()}>
              <button
                onClick={() => setIsLocked(false)}
                className="flex items-center gap-2 px-4 py-2.5 rounded-full active:scale-90 transition-transform"
                style={{ background: "rgba(0,0,0,0.65)", border: "1px solid rgba(255,255,255,0.20)", backdropFilter: "blur(10px)" }}>
                <Unlock className="w-4 h-4 text-white/80" />
                <span className="text-white/70 text-[12px] font-bold font-['Cairo']">فتح</span>
              </button>
            </motion.div>
          )}
        </AnimatePresence>

        {/* ══════════════════════════════════════════════════════════ */}
        {/* ══ MAIN CONTROLS OVERLAY ══════════════════════════════════ */}
        {/* ══════════════════════════════════════════════════════════ */}
        <AnimatePresence>
          {showControls && !error && !isLocked && (
            <motion.div key="ctrl"
              initial={{ opacity: 0 }}
              animate={{ opacity: 1 }}
              exit={{ opacity: 0 }}
              transition={{ duration: 0.18 }}
              className="absolute inset-0 flex flex-col pointer-events-none"
              onClick={(e) => { e.stopPropagation(); togglePlay(); }}
            >

              {/* ══ TOP BAR ══ */}
              <div
                className="shrink-0 pointer-events-auto"
                style={{ background: "linear-gradient(180deg, rgba(0,0,0,0.90) 0%, rgba(0,0,0,0.40) 70%, transparent 100%)" }}
                onClick={e => e.stopPropagation()}
              >
                {topSlot}
              </div>

              {/* ══ CENTER ══ */}
              <div className="flex-1 relative">
                <div className="absolute inset-0 flex items-center justify-center pointer-events-auto"
                  onClick={e => e.stopPropagation()}>

                  {/* Prev episode */}
                  <button
                    onClick={e => { e.stopPropagation(); onPrevEp?.(); }}
                    disabled={ep <= 1}
                    className="flex flex-col items-center gap-1 w-12 h-12 rounded-full justify-center active:scale-90 transition-transform mr-4"
                    style={{ opacity: ep <= 1 ? 0.20 : 0.75, background: "rgba(0,0,0,0.35)", border: "1px solid rgba(255,255,255,0.15)" }}>
                    <SkipBack className="w-5 h-5 text-white fill-white" />
                  </button>

                  {/* Skip back 10s */}
                  <button
                    onClick={e => { e.stopPropagation(); skipSeconds(-10); showCtrl(); }}
                    className="flex items-center justify-center relative w-[52px] h-[52px] active:scale-90 transition-transform mx-5">
                    <RotateCcw className="w-[52px] h-[52px] text-white/75" strokeWidth={1.3} />
                    <span className="absolute text-white font-black text-[12px] font-mono" style={{ marginTop: 1 }}>10</span>
                  </button>

                  {/* Play/Pause — large circle */}
                  <button
                    onClick={e => { e.stopPropagation(); togglePlay(); }}
                    className="w-[72px] h-[72px] rounded-full flex items-center justify-center active:scale-90 transition-transform mx-2"
                    style={{
                      background: "rgba(0,0,0,0.50)",
                      border: "2px solid rgba(255,255,255,0.45)",
                      backdropFilter: "blur(12px)",
                      boxShadow: "0 0 0 6px rgba(255,255,255,0.06), 0 4px 24px rgba(0,0,0,0.50)",
                    }}>
                    <AnimatePresence mode="wait">
                      {loading && !error ? (
                        <motion.div key="buf" initial={{ opacity: 0, scale: 0.7 }} animate={{ opacity: 1, scale: 1 }} exit={{ opacity: 0, scale: 0.7 }} transition={{ duration: 0.12 }}>
                          <div className="w-7 h-7 rounded-full border-2 border-white/25 border-t-white/80 animate-spin" />
                        </motion.div>
                      ) : isPlaying ? (
                        <motion.div key="pause" initial={{ opacity: 0, scale: 0.6 }} animate={{ opacity: 1, scale: 1 }} exit={{ opacity: 0, scale: 0.6 }} transition={{ duration: 0.12 }}>
                          <Pause className="w-8 h-8 text-white fill-white" />
                        </motion.div>
                      ) : (
                        <motion.div key="play" initial={{ opacity: 0, scale: 0.6 }} animate={{ opacity: 1, scale: 1 }} exit={{ opacity: 0, scale: 0.6 }} transition={{ duration: 0.12 }}>
                          <Play className="w-8 h-8 text-white fill-white ml-1" />
                        </motion.div>
                      )}
                    </AnimatePresence>
                  </button>

                  {/* Skip forward 10s */}
                  <button
                    onClick={e => { e.stopPropagation(); skipSeconds(10); showCtrl(); }}
                    className="flex items-center justify-center relative w-[52px] h-[52px] active:scale-90 transition-transform mx-5">
                    <RotateCw className="w-[52px] h-[52px] text-white/75" strokeWidth={1.3} />
                    <span className="absolute text-white font-black text-[12px] font-mono" style={{ marginTop: 1 }}>10</span>
                  </button>

                  {/* Next episode */}
                  <button
                    onClick={e => { e.stopPropagation(); onNextEp?.(); }}
                    disabled={ep >= totalEps}
                    className="flex flex-col items-center gap-1 w-12 h-12 rounded-full justify-center active:scale-90 transition-transform ml-4"
                    style={{ opacity: ep >= totalEps ? 0.20 : 0.75, background: "rgba(0,0,0,0.35)", border: "1px solid rgba(255,255,255,0.15)" }}>
                    <SkipForward className="w-5 h-5 text-white fill-white" />
                  </button>
                </div>
              </div>

              {/* ══ BOTTOM BAR ══ */}
              <div
                className="shrink-0 pointer-events-auto"
                style={{ background: "linear-gradient(0deg, rgba(0,0,0,0.95) 0%, rgba(0,0,0,0.55) 70%, transparent 100%)" }}
                onClick={e => e.stopPropagation()}
              >
                {/* Progress + time */}
                <div className="px-4 pt-2 pb-1">
                  {/* Progress track */}
                  <div
                    ref={progressRef}
                    className="relative w-full cursor-pointer"
                    style={{ height: progressHover ? 6 : 4, transition: "height 0.15s ease" }}
                    onClick={handleProgressClick}
                    onMouseDown={handleProgressMouseDown}
                    onMouseEnter={() => setProgressHover(true)}
                    onMouseLeave={() => setProgressHover(false)}
                    onTouchStart={e => { e.stopPropagation(); setProgressHover(true); }}
                    onTouchEnd={() => setProgressHover(false)}
                  >
                    {/* Base */}
                    <div className="absolute inset-0 rounded-full" style={{ background: "rgba(255,255,255,0.18)" }} />
                    {/* Buffered */}
                    <div className="absolute top-0 left-0 h-full rounded-full"
                      style={{ width: `${bufPct}%`, background: "rgba(255,255,255,0.32)", transition: "width 0.3s" }} />
                    {/* Red fill */}
                    <div className="absolute top-0 left-0 h-full rounded-full"
                      style={{
                        width: `${pct}%`,
                        background: "linear-gradient(90deg, #dc2626 0%, #ef4444 100%)",
                        transition: seekDragging.current ? "none" : "width 0.1s",
                      }} />
                    {/* White thumb */}
                    <div className="absolute top-1/2 -translate-y-1/2 rounded-full bg-white"
                      style={{
                        left: `calc(${pct}% - ${progressHover ? 7 : 5}px)`,
                        width: progressHover ? 14 : 10,
                        height: progressHover ? 14 : 10,
                        boxShadow: "0 1px 8px rgba(0,0,0,0.55)",
                        transition: "left 0.1s, width 0.15s, height 0.15s",
                      }} />
                  </div>

                  {/* Time */}
                  <div className="flex items-center justify-between mt-2 px-0.5" dir="ltr">
                    <span className="text-white/65 text-[11px] font-mono font-bold">{fmtTime(currentTime)}</span>
                    <span className="text-white/35 text-[11px] font-mono">{fmtTime(duration)}</span>
                  </div>
                </div>

                {/* Controls row */}
                <div
                  className="flex items-center justify-between px-3 pb-3 pt-1"
                  style={{ paddingBottom: "max(12px, env(safe-area-inset-bottom))" }}
                >
                  {/* Left group */}
                  <div className="flex items-center gap-1">

                    {/* Volume */}
                    <button onClick={toggleMute}
                      className="w-10 h-10 flex items-center justify-center rounded-xl active:bg-white/10 transition-colors">
                      {muted || volume === 0
                        ? <VolumeX className="w-[22px] h-[22px] text-white/70" />
                        : <Volume2 className="w-[22px] h-[22px] text-white/70" />}
                    </button>

                    {/* Zoom/Fit */}
                    <button onClick={() => setIsZoomed(z => !z)}
                      className="w-10 h-10 flex items-center justify-center rounded-xl active:bg-white/10 transition-colors">
                      {isZoomed
                        ? <ScanLine className="w-[20px] h-[20px] text-violet-300/80" />
                        : <Scan className="w-[20px] h-[20px] text-white/55" />}
                    </button>

                    {/* Lock */}
                    <button onClick={() => setIsLocked(true)}
                      className="w-10 h-10 flex items-center justify-center rounded-xl active:bg-white/10 transition-colors">
                      <Lock className="w-[19px] h-[19px] text-white/55" />
                    </button>
                  </div>

                  {/* Center — speed menu */}
                  <div className="relative">
                    <button
                      onClick={() => { setShowSpeedMenu(s => !s); showCtrl(); }}
                      className="flex items-center gap-1 px-3 py-2 rounded-full transition-colors active:bg-white/10"
                      style={{ border: "1px solid rgba(255,255,255,0.18)" }}>
                      <span className="text-white/75 text-[12px] font-black font-mono">×{speed}</span>
                      <ChevronDown className="w-3 h-3 text-white/35" />
                    </button>

                    <AnimatePresence>
                      {showSpeedMenu && (
                        <motion.div
                          initial={{ opacity: 0, y: 10, scale: 0.94 }}
                          animate={{ opacity: 1, y: 0, scale: 1 }}
                          exit={{ opacity: 0, y: 10, scale: 0.94 }}
                          transition={{ duration: 0.15 }}
                          className="absolute bottom-full mb-3 left-1/2 -translate-x-1/2 rounded-2xl overflow-hidden z-50 shadow-2xl"
                          style={{ background: "rgba(10,10,20,0.97)", border: "1px solid rgba(255,255,255,0.10)", backdropFilter: "blur(20px)", minWidth: 96 }}
                        >
                          {SPEEDS.map((s, i) => (
                            <button key={s} onClick={() => changeSpeed(s)}
                              className="w-full flex items-center justify-between px-4 py-2.5 transition-colors"
                              style={{
                                background: s === speed ? "rgba(239,68,68,0.12)" : "transparent",
                                borderBottom: i < SPEEDS.length - 1 ? "1px solid rgba(255,255,255,0.05)" : "none",
                              }}>
                              <span className="text-[12px] font-black font-mono"
                                style={{ color: s === speed ? "#f87171" : "rgba(255,255,255,0.42)" }}>
                                ×{s}
                              </span>
                              {s === speed && <div className="w-1.5 h-1.5 rounded-full bg-red-400" />}
                            </button>
                          ))}
                        </motion.div>
                      )}
                    </AnimatePresence>
                  </div>

                  {/* Right group */}
                  <div className="flex items-center gap-1">

                    {/* Rotate to landscape */}
                    <button onClick={rotateLandscape}
                      className="w-10 h-10 flex items-center justify-center rounded-xl active:bg-white/10 transition-colors">
                      <RotateIcon className="w-[20px] h-[20px] text-white/55" />
                    </button>

                    {/* Fullscreen */}
                    <button onClick={toggleFs}
                      className="w-10 h-10 flex items-center justify-center rounded-xl active:bg-white/10 transition-colors">
                      {isFs
                        ? <Minimize2 className="w-[20px] h-[20px] text-white/70" />
                        : <Maximize2 className="w-[20px] h-[20px] text-white/70" />}
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
