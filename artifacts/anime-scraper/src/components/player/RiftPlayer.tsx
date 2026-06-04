/**
 * RiftPlayer — مشغّل داخلي متقدم مستوحى من Anime Rift / WITanime
 *
 * المميزات:
 * ─ إيماءات السحب: يسار/يمين = تقديم/إرجاع | يسار أعلى/أسفل = السطوع | يمين أعلى/أسفل = الصوت
 * ─ نقرة مزدوجة: يمين +10s | يسار -10s (مع حلقة متحركة)
 * ─ ضغط مطوّل: تشغيل 2× (يعود للسرعة الطبيعية عند الرفع)
 * ─ مؤشرات مرئية: شريط صوت / سطوع / معاينة التقديم
 * ─ قائمة سرعة: 0.5× إلى 2×
 * ─ دعم HLS + MP4 + video-proxy
 */

import { useState, useRef, useEffect, useCallback, type ReactNode } from "react";
import Hls from "hls.js";
import { motion, AnimatePresence } from "framer-motion";
import {
  Play, Pause, Volume2, VolumeX,
  Maximize2, Minimize2, AlertTriangle, RefreshCw,
  RotateCcw, RotateCw, Sun, ChevronDown,
  Zap,
} from "lucide-react";

/* ─────────────────────── helpers ─────────────────────── */
function fmtTime(s: number) {
  if (!isFinite(s) || s < 0) return "0:00";
  const h = Math.floor(s / 3600);
  const m = Math.floor((s % 3600) / 60);
  const sec = Math.floor(s % 60);
  if (h > 0) return `${h}:${String(m).padStart(2, "0")}:${String(sec).padStart(2, "0")}`;
  return `${m}:${String(sec).padStart(2, "0")}`;
}

const SPEEDS = [0.5, 0.75, 1, 1.25, 1.5, 2];

/* ─────────────────────── types ─────────────────────── */
interface Props {
  src: string;
  onRealQuality?: (q: string) => void;
  onTimeUpdate?: (t: number) => void;
  onFail?: () => void;
  topSlot?: ReactNode;
  bottomSlot?: ReactNode;
}

type GestureType = "none" | "seek" | "volume" | "brightness";

interface GestureState {
  active: GestureType;
  startX: number;
  startY: number;
  lastY: number;
  startValue: number;
}

interface GestureFeedback {
  type: "volume" | "brightness" | "seek";
  value: number;
  delta?: number;
}

/* ─────────────────────── component ─────────────────────── */
export default function RiftPlayer({ src, onRealQuality, onTimeUpdate, onFail, topSlot, bottomSlot }: Props) {
  const videoRef      = useRef<HTMLVideoElement>(null);
  const hlsRef        = useRef<Hls | null>(null);
  const containerRef  = useRef<HTMLDivElement>(null);
  const progressRef   = useRef<HTMLDivElement>(null);
  const hideTimerRef  = useRef<ReturnType<typeof setTimeout> | null>(null);
  const seekDragging  = useRef(false);

  const onFailRef    = useRef(onFail);
  onFailRef.current  = onFail;

  const failFiredRef  = useRef(false);
  const failTimerRef  = useRef<ReturnType<typeof setTimeout> | null>(null);

  const gestureRef      = useRef<GestureState>({ active: "none", startX: 0, startY: 0, lastY: 0, startValue: 0 });
  const lastTapRef      = useRef<{ time: number; side: "left" | "right" } | null>(null);
  const longPressTimer  = useRef<ReturnType<typeof setTimeout> | null>(null);
  const prevSpeedRef    = useRef(1);
  const touchMoved      = useRef(false);
  const GESTURE_THRESHOLD = 12;

  const [loading,      setLoading]      = useState(true);
  const [error,        setError]        = useState<string | null>(null);
  const [isPlaying,    setIsPlaying]    = useState(false);
  const [currentTime,  setCurrentTime]  = useState(0);
  const [duration,     setDuration]     = useState(0);
  const [buffered,     setBuffered]     = useState(0);
  const [muted,        setMuted]        = useState(false);
  const [volume,       setVolume]       = useState(1);
  const [brightness,   setBrightness]   = useState(1);
  const [speed,        setSpeed]        = useState(1);
  const [showControls, setShowControls] = useState(true);
  const [isFs,         setIsFs]         = useState(false);
  const [progressHover, setProgressHover] = useState(false);

  const [feedback,       setFeedback]       = useState<GestureFeedback | null>(null);
  const [doubleTap,      setDoubleTap]      = useState<{ side: "left" | "right"; id: number } | null>(null);
  const [isLongPressing, setIsLongPressing] = useState(false);
  const [showSpeedMenu,  setShowSpeedMenu]  = useState(false);

  /* ── Stable onFail ── */
  const fireOnFail = useCallback(() => {
    if (failFiredRef.current) return;
    failFiredRef.current = true;
    setLoading(true);
    setError(null);
    if (failTimerRef.current) clearTimeout(failTimerRef.current);
    failTimerRef.current = setTimeout(() => { onFailRef.current?.(); }, 600);
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  /* ── Control auto-hide ── */
  const scheduleHide = useCallback(() => {
    if (hideTimerRef.current) clearTimeout(hideTimerRef.current);
    hideTimerRef.current = setTimeout(() => setShowControls(false), 4500);
  }, []);

  const showCtrl = useCallback(() => {
    setShowControls(true);
    scheduleHide();
  }, [scheduleHide]);

  /* ── Fullscreen ── */
  useEffect(() => {
    const fn = () => setIsFs(!!document.fullscreenElement);
    document.addEventListener("fullscreenchange", fn);
    return () => document.removeEventListener("fullscreenchange", fn);
  }, []);

  function toggleFs() {
    const el = containerRef.current;
    if (!el) return;
    !document.fullscreenElement
      ? el.requestFullscreen?.().catch(() => {})
      : document.exitFullscreen?.().catch(() => {});
  }

  /* ── Source loading ── */
  const loadSource = useCallback(async () => {
    const video = videoRef.current;
    if (!video) return;

    if (hlsRef.current) { hlsRef.current.destroy(); hlsRef.current = null; }
    video.src = "";
    setLoading(true);
    setError(null);
    setCurrentTime(0);
    setDuration(0);
    setIsPlaying(false);

    let m3u8Url = src;

    failFiredRef.current = false;
    if (failTimerRef.current) { clearTimeout(failTimerRef.current); failTimerRef.current = null; }

    if (src.includes("animegg.org/play/") || src.includes("vidcache.net")) {
      video.src = src;
      video.load();
      const onMeta = () => { setLoading(false); video.play().catch(() => {}); showCtrl(); };
      const onErr  = () => { fireOnFail(); };
      video.addEventListener("loadedmetadata", onMeta, { once: true });
      video.addEventListener("error", onErr, { once: true });
      return;
    }

    const isDirectMp4 = src.includes("streamtape.com") || src.includes("sendvid.com")
      || src.includes("videos2.sendvid.com") || src.includes("video-proxy?")
      || src.includes("workers.dev");
    if (isDirectMp4) {
      const proxyUrl = src.includes("video-proxy?") ? src
        : `/api/anime/video-proxy?url=${encodeURIComponent(src)}&ref=${encodeURIComponent(src)}`;
      video.src = proxyUrl;
      video.load();
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
        if (!r.ok) { const d = await r.json().catch(() => ({})); setError((d as any).error || `فشل جلب المصدر (${r.status})`); setLoading(false); return; }
        const data = await r.json() as { proxyUrl?: string; rawUrl?: string; quality?: string };
        const hlsUrl = data.proxyUrl || data.rawUrl;
        if (!hlsUrl) { setError("لا يوجد رابط HLS من AnimeX"); setLoading(false); return; }
        m3u8Url = hlsUrl;
        if (data.quality && onRealQuality) onRealQuality(data.quality);
      } catch { setError("خطأ في الاتصال بخادم AnimeX"); setLoading(false); return; }
    }

    if (Hls.isSupported()) {
      const hls = new Hls({ enableWorker: false, lowLatencyMode: false, maxBufferLength: 30, xhrSetup(xhr) { xhr.withCredentials = false; } });
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
        if (data.fatal) { fireOnFail(); }
      });
    } else if (video.canPlayType("application/vnd.apple.mpegurl")) {
      video.src = m3u8Url;
      video.addEventListener("loadedmetadata", () => { setLoading(false); video.play().catch(() => {}); }, { once: true });
      video.addEventListener("error", () => { setError("فشل التشغيل على هذا المتصفح"); setLoading(false); }, { once: true });
    } else {
      setError("المتصفح لا يدعم تشغيل HLS — جرّب Chrome أو Firefox");
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

  /* ── Video event listeners ── */
  useEffect(() => {
    const video = videoRef.current;
    if (!video) return;
    const onPlay    = () => setIsPlaying(true);
    const onPause   = () => setIsPlaying(false);
    const onTime    = () => {
      setCurrentTime(video.currentTime);
      if (video.buffered.length > 0) setBuffered(video.buffered.end(video.buffered.length - 1));
      onTimeUpdate?.(video.currentTime);
    };
    const onLoaded  = () => setDuration(video.duration);
    const onWaiting = () => setLoading(true);
    const onPlaying = () => setLoading(false);
    video.addEventListener("play",           onPlay);
    video.addEventListener("pause",          onPause);
    video.addEventListener("timeupdate",     onTime);
    video.addEventListener("durationchange", onLoaded);
    video.addEventListener("waiting",        onWaiting);
    video.addEventListener("playing",        onPlaying);
    return () => {
      video.removeEventListener("play",           onPlay);
      video.removeEventListener("pause",          onPause);
      video.removeEventListener("timeupdate",     onTime);
      video.removeEventListener("durationchange", onLoaded);
      video.removeEventListener("waiting",        onWaiting);
      video.removeEventListener("playing",        onPlaying);
    };
  }, [onTimeUpdate]);

  /* ── Basic controls ── */
  function togglePlay() {
    const v = videoRef.current;
    if (!v) return;
    v.paused ? v.play().catch(() => {}) : v.pause();
    showCtrl();
  }
  function toggleMute() {
    const v = videoRef.current;
    if (!v) return;
    v.muted = !v.muted;
    setMuted(v.muted);
  }
  function skipSeconds(delta: number) {
    const v = videoRef.current;
    if (!v || !duration) return;
    v.currentTime = Math.max(0, Math.min(duration, v.currentTime + delta));
    setCurrentTime(v.currentTime);
  }
  function changeSpeed(s: number) {
    setSpeed(s);
    if (videoRef.current) videoRef.current.playbackRate = s;
    setShowSpeedMenu(false);
    showCtrl();
  }
  function seekToFrac(frac: number) {
    const v = videoRef.current;
    if (!v || !duration) return;
    const t = Math.max(0, Math.min(1, frac)) * duration;
    v.currentTime = t;
    setCurrentTime(t);
  }

  /* ── Progress bar (mouse) ── */
  function handleProgressClick(e: React.MouseEvent) {
    e.stopPropagation();
    const bar = progressRef.current;
    if (!bar) return;
    const rect = bar.getBoundingClientRect();
    seekToFrac((e.clientX - rect.left) / rect.width);
  }
  function handleProgressMouseDown(e: React.MouseEvent) {
    e.stopPropagation();
    seekDragging.current = true;
    const onMove = (ev: MouseEvent) => {
      const bar = progressRef.current;
      if (!bar) return;
      const rect = bar.getBoundingClientRect();
      seekToFrac((ev.clientX - rect.left) / rect.width);
    };
    const onUp = () => { seekDragging.current = false; window.removeEventListener("mousemove", onMove); window.removeEventListener("mouseup", onUp); };
    window.addEventListener("mousemove", onMove);
    window.addEventListener("mouseup", onUp);
  }

  /* ══════════════════════ TOUCH GESTURES ══════════════════════ */

  function onTouchStart(e: React.TouchEvent<HTMLDivElement>) {
    touchMoved.current = false;
    const t = e.touches[0];
    gestureRef.current = { active: "none", startX: t.clientX, startY: t.clientY, lastY: t.clientY, startValue: 0 };

    longPressTimer.current = setTimeout(() => {
      touchMoved.current = true;
      prevSpeedRef.current = videoRef.current?.playbackRate ?? 1;
      if (videoRef.current) videoRef.current.playbackRate = 2;
      setIsLongPressing(true);
      setFeedback(null);
    }, 500);
  }

  function onTouchMove(e: React.TouchEvent<HTMLDivElement>) {
    const t = e.touches[0];
    const g = gestureRef.current;
    const dx = t.clientX - g.startX;
    const dy = t.clientY - g.startY;
    const dist = Math.sqrt(dx * dx + dy * dy);

    if (dist > 8 && longPressTimer.current) {
      clearTimeout(longPressTimer.current);
      longPressTimer.current = null;
    }
    if (isLongPressing) return;

    if (g.active === "none" && dist > GESTURE_THRESHOLD) {
      touchMoved.current = true;
      const containerW = e.currentTarget.clientWidth;
      if (Math.abs(dx) > Math.abs(dy) * 1.4) {
        g.active = "seek";
        g.startValue = videoRef.current?.currentTime ?? 0;
      } else {
        g.active = t.clientX > containerW / 2 ? "volume" : "brightness";
        g.startValue = g.active === "volume" ? volume : brightness;
        g.lastY = t.clientY;
      }
    }

    if (g.active === "seek") {
      const containerW = e.currentTarget.clientWidth;
      const maxDelta = Math.min(duration * 0.5, 120);
      const delta = (dx / containerW) * maxDelta;
      const target = Math.max(0, Math.min(duration, g.startValue + delta));
      setFeedback({ type: "seek", value: target, delta });
    } else if (g.active === "volume") {
      const deltaY = g.lastY - t.clientY;
      g.lastY = t.clientY;
      const newVol = Math.max(0, Math.min(1, volume + deltaY / 180));
      setVolume(newVol);
      if (videoRef.current) { videoRef.current.volume = newVol; videoRef.current.muted = false; setMuted(false); }
      setFeedback({ type: "volume", value: newVol });
    } else if (g.active === "brightness") {
      const deltaY = g.lastY - t.clientY;
      g.lastY = t.clientY;
      const newBright = Math.max(0.1, Math.min(2, brightness + deltaY / 180));
      setBrightness(newBright);
      setFeedback({ type: "brightness", value: newBright / 2 });
    }
  }

  function onTouchEnd(e: React.TouchEvent<HTMLDivElement>) {
    if (longPressTimer.current) { clearTimeout(longPressTimer.current); longPressTimer.current = null; }

    if (isLongPressing) {
      if (videoRef.current) videoRef.current.playbackRate = prevSpeedRef.current;
      setIsLongPressing(false);
      setFeedback(null);
      return;
    }

    const g = gestureRef.current;

    if (g.active === "seek") {
      if (feedback?.type === "seek" && videoRef.current) {
        videoRef.current.currentTime = feedback.value;
        setCurrentTime(feedback.value);
      }
      setTimeout(() => setFeedback(null), 200);
      gestureRef.current.active = "none";
      return;
    }
    if (g.active !== "none") {
      setTimeout(() => setFeedback(null), 800);
      gestureRef.current.active = "none";
      return;
    }

    if (touchMoved.current) return;
    const touch = e.changedTouches[0];
    const containerW = e.currentTarget.clientWidth;
    const side: "left" | "right" = touch.clientX < containerW / 2 ? "left" : "right";
    const now = Date.now();
    const DOUBLE_MS = 300;

    if (lastTapRef.current && now - lastTapRef.current.time < DOUBLE_MS && lastTapRef.current.side === side) {
      const delta = side === "right" ? 10 : -10;
      skipSeconds(delta);
      setDoubleTap({ side, id: now });
      setTimeout(() => setDoubleTap(null), 700);
      lastTapRef.current = null;
      showCtrl();
    } else {
      lastTapRef.current = { time: now, side };
      setShowControls(p => {
        const next = !p;
        if (next) scheduleHide();
        return next;
      });
    }
  }

  function onMouseMove() { showCtrl(); }

  const pct    = duration > 0 ? (currentTime / duration) * 100 : 0;
  const bufPct = duration > 0 ? (buffered  / duration) * 100 : 0;

  /* ─────────────────────────────────── RENDER ─────────────────────────────── */
  return (
    <div
      ref={containerRef}
      data-hls-container
      className="relative w-full h-full bg-black overflow-hidden select-none"
      style={{ cursor: showControls ? "default" : "none" }}
      onMouseMove={onMouseMove}
    >
      {/* ═══ VIDEO ═══ */}
      <video
        ref={videoRef}
        className="w-full h-full object-contain"
        playsInline
        preload="metadata"
        style={{ filter: brightness !== 1 ? `brightness(${brightness})` : undefined }}
      />

      {/* ═══ GESTURE + UI LAYER ═══ */}
      <div
        className="absolute inset-0 z-10"
        onTouchStart={onTouchStart}
        onTouchMove={onTouchMove}
        onTouchEnd={onTouchEnd}
      >
        {/* ── Loading spinner ── */}
        <AnimatePresence>
          {loading && !error && (
            <motion.div
              key="loader"
              initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
              className="absolute inset-0 flex items-center justify-center pointer-events-none z-20"
            >
              <div className="relative w-11 h-11">
                <div className="absolute inset-0 rounded-full border-[1.5px]"
                  style={{ borderColor: "rgba(255,255,255,0.10)" }} />
                <motion.div
                  className="absolute inset-0 rounded-full border-[1.5px] border-transparent"
                  style={{ borderTopColor: "rgba(255,255,255,0.80)", borderRightColor: "rgba(255,255,255,0.25)" }}
                  animate={{ rotate: 360 }}
                  transition={{ duration: 0.75, repeat: Infinity, ease: "linear" }}
                />
              </div>
            </motion.div>
          )}
        </AnimatePresence>

        {/* ── Error ── */}
        <AnimatePresence>
          {error && (
            <motion.div
              key="error"
              initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
              className="absolute inset-0 flex flex-col items-center justify-center gap-5 z-20 pointer-events-auto"
              style={{ background: "rgba(0,0,0,0.96)" }}
            >
              <div className="w-14 h-14 rounded-full flex items-center justify-center"
                style={{ background: "rgba(255,60,60,0.10)", border: "1px solid rgba(255,60,60,0.20)" }}>
                <AlertTriangle className="w-6 h-6 text-red-400/70" />
              </div>
              <div className="text-center px-10">
                <p className="text-white/75 text-[15px] font-black font-['Cairo']">تعذّر تحميل الفيديو</p>
                <p className="text-white/30 text-[11px] mt-1.5 font-['Cairo'] leading-relaxed">{error}</p>
              </div>
              <button
                onClick={() => { setError(null); loadSource(); }}
                className="flex items-center gap-2 px-6 py-2.5 rounded-full text-white/85 text-[13px] font-bold font-['Cairo'] active:scale-95 transition-all"
                style={{ background: "rgba(255,255,255,0.10)", border: "1px solid rgba(255,255,255,0.18)" }}
              >
                <RefreshCw className="w-4 h-4" /> إعادة المحاولة
              </button>
            </motion.div>
          )}
        </AnimatePresence>

        {/* ══════════ DOUBLE TAP RIPPLE ══════════ */}
        <AnimatePresence>
          {doubleTap && (
            <motion.div
              key={`dtap-${doubleTap.id}`}
              initial={{ opacity: 0.7, scale: 0.6 }}
              animate={{ opacity: 0, scale: 1.5 }}
              exit={{ opacity: 0 }}
              transition={{ duration: 0.55, ease: "easeOut" }}
              className="absolute top-1/2 -translate-y-1/2 pointer-events-none z-30 flex flex-col items-center gap-1"
              style={{ [doubleTap.side === "right" ? "right" : "left"]: "15%" }}
            >
              <div className="w-16 h-16 rounded-full flex items-center justify-center"
                style={{ background: "rgba(255,255,255,0.18)", border: "1px solid rgba(255,255,255,0.30)" }}>
                {doubleTap.side === "right"
                  ? <RotateCw className="w-7 h-7 text-white" />
                  : <RotateCcw className="w-7 h-7 text-white" />}
              </div>
              <span className="text-white/80 text-[11px] font-bold font-['Cairo']">
                {doubleTap.side === "right" ? "+10" : "-10"} ثانية
              </span>
            </motion.div>
          )}
        </AnimatePresence>

        {/* ══════════ GESTURE FEEDBACK ══════════ */}

        {/* Long press 2× indicator */}
        <AnimatePresence>
          {isLongPressing && (
            <motion.div
              key="longpress"
              initial={{ opacity: 0, y: -8 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0, y: -8 }}
              className="absolute top-16 left-1/2 -translate-x-1/2 z-30 flex items-center gap-2 px-4 py-2 rounded-full pointer-events-none"
              style={{ background: "rgba(0,0,0,0.70)", border: "1px solid rgba(255,255,255,0.15)" }}
            >
              <Zap className="w-3.5 h-3.5 text-amber-300 fill-amber-300" />
              <span className="text-white/90 text-[12px] font-black font-['Cairo']">تشغيل سريع ×2</span>
            </motion.div>
          )}
        </AnimatePresence>

        {/* Volume indicator (right) */}
        <AnimatePresence>
          {feedback?.type === "volume" && (
            <motion.div
              key="vol-ind"
              initial={{ opacity: 0, scale: 0.9 }} animate={{ opacity: 1, scale: 1 }} exit={{ opacity: 0, scale: 0.9 }}
              className="absolute right-5 top-1/2 -translate-y-1/2 z-30 flex flex-col items-center gap-2.5 pointer-events-none"
            >
              <div className="relative rounded-full overflow-hidden"
                style={{ width: 5, height: 110, background: "rgba(255,255,255,0.15)" }}>
                <motion.div
                  className="absolute bottom-0 left-0 right-0 rounded-full"
                  style={{ background: "rgba(255,255,255,0.80)", height: `${feedback.value * 100}%` }}
                  animate={{ height: `${feedback.value * 100}%` }}
                  transition={{ duration: 0.05 }}
                />
              </div>
              <div className="flex items-center gap-1.5 px-2.5 py-1 rounded-full"
                style={{ background: "rgba(0,0,0,0.55)", border: "1px solid rgba(255,255,255,0.12)" }}>
                <Volume2 className="w-3 h-3 text-white/70" />
                <span className="text-white/85 text-[11px] font-bold font-mono">{Math.round(feedback.value * 100)}%</span>
              </div>
            </motion.div>
          )}
        </AnimatePresence>

        {/* Brightness indicator (left) */}
        <AnimatePresence>
          {feedback?.type === "brightness" && (
            <motion.div
              key="bright-ind"
              initial={{ opacity: 0, scale: 0.9 }} animate={{ opacity: 1, scale: 1 }} exit={{ opacity: 0, scale: 0.9 }}
              className="absolute left-5 top-1/2 -translate-y-1/2 z-30 flex flex-col items-center gap-2.5 pointer-events-none"
            >
              <div className="relative rounded-full overflow-hidden"
                style={{ width: 5, height: 110, background: "rgba(255,255,255,0.15)" }}>
                <motion.div
                  className="absolute bottom-0 left-0 right-0 rounded-full"
                  style={{ background: "rgba(255,220,80,0.85)", height: `${Math.min(feedback.value * 100, 100)}%` }}
                  animate={{ height: `${Math.min(feedback.value * 100, 100)}%` }}
                  transition={{ duration: 0.05 }}
                />
              </div>
              <div className="flex items-center gap-1.5 px-2.5 py-1 rounded-full"
                style={{ background: "rgba(0,0,0,0.55)", border: "1px solid rgba(255,255,255,0.12)" }}>
                <Sun className="w-3 h-3 text-yellow-300/80" />
                <span className="text-white/85 text-[11px] font-bold font-mono">{Math.round(feedback.value * 100)}%</span>
              </div>
            </motion.div>
          )}
        </AnimatePresence>

        {/* Seek preview */}
        <AnimatePresence>
          {feedback?.type === "seek" && (
            <motion.div
              key="seek-ind"
              initial={{ opacity: 0, y: 8 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0, y: 8 }}
              className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 z-30 flex flex-col items-center gap-1.5 pointer-events-none"
            >
              <div className="px-5 py-2.5 rounded-2xl flex items-center gap-2"
                style={{ background: "rgba(0,0,0,0.72)", border: "1px solid rgba(255,255,255,0.14)", backdropFilter: "blur(12px)" }}>
                {(feedback.delta ?? 0) >= 0
                  ? <RotateCw className="w-4 h-4 text-white/70" />
                  : <RotateCcw className="w-4 h-4 text-white/70" />}
                <span className="text-white font-black text-[16px] font-mono">{fmtTime(feedback.value)}</span>
                <span className="text-white/40 text-[11px] font-['Cairo']">
                  {(feedback.delta ?? 0) >= 0 ? `+${Math.abs(Math.round(feedback.delta ?? 0))}s` : `-${Math.abs(Math.round(feedback.delta ?? 0))}s`}
                </span>
              </div>
            </motion.div>
          )}
        </AnimatePresence>

        {/* ══════════════════════════════════════════════════ */}
        {/* ══════════ MAIN CONTROLS OVERLAY ═══════════════ */}
        {/* ══════════════════════════════════════════════════ */}
        <AnimatePresence>
          {showControls && !error && (
            <motion.div
              key="ctrl"
              initial={{ opacity: 0 }}
              animate={{ opacity: 1 }}
              exit={{ opacity: 0 }}
              transition={{ duration: 0.2 }}
              className="absolute inset-0 flex flex-col pointer-events-none"
              onClick={(e) => { e.stopPropagation(); togglePlay(); }}
            >

              {/* ── TOP BAR ── */}
              <div
                className="shrink-0 pointer-events-auto"
                style={{ background: "linear-gradient(180deg, rgba(0,0,0,0.88) 0%, rgba(0,0,0,0.55) 60%, transparent 100%)" }}
                onClick={e => e.stopPropagation()}
              >
                {topSlot}
              </div>

              {/* ── CENTER AREA (grows) ── */}
              <div className="flex-1 relative">
                {/* Center play/pause + skip ±10 */}
                <div className="absolute inset-0 flex items-center justify-center gap-8 pointer-events-auto"
                  onClick={e => e.stopPropagation()}>

                  {/* Back 10s */}
                  <button
                    onClick={(e) => { e.stopPropagation(); skipSeconds(-10); showCtrl(); }}
                    className="flex flex-col items-center gap-1.5 active:scale-90 transition-transform"
                  >
                    <div className="relative w-12 h-12 flex items-center justify-center">
                      <RotateCcw className="w-10 h-10 text-white/80" strokeWidth={1.5} />
                      <span className="absolute text-white font-black text-[11px] font-mono" style={{ marginTop: 2 }}>10</span>
                    </div>
                  </button>

                  {/* Play / Pause — large circle */}
                  <button
                    onClick={(e) => { e.stopPropagation(); togglePlay(); }}
                    className="w-[68px] h-[68px] rounded-full flex items-center justify-center active:scale-90 transition-transform"
                    style={{
                      background: "rgba(255,255,255,0.18)",
                      border: "2px solid rgba(255,255,255,0.40)",
                      backdropFilter: "blur(8px)",
                      boxShadow: "0 0 0 8px rgba(255,255,255,0.05)",
                    }}
                  >
                    <AnimatePresence mode="wait">
                      {isPlaying ? (
                        <motion.div key="pause" initial={{ scale: 0.6, opacity: 0 }} animate={{ scale: 1, opacity: 1 }} exit={{ scale: 0.6, opacity: 0 }} transition={{ duration: 0.12 }}>
                          <Pause className="w-7 h-7 text-white fill-white" />
                        </motion.div>
                      ) : (
                        <motion.div key="play" initial={{ scale: 0.6, opacity: 0 }} animate={{ scale: 1, opacity: 1 }} exit={{ scale: 0.6, opacity: 0 }} transition={{ duration: 0.12 }}>
                          <Play className="w-7 h-7 text-white fill-white ml-0.5" />
                        </motion.div>
                      )}
                    </AnimatePresence>
                  </button>

                  {/* Forward 10s */}
                  <button
                    onClick={(e) => { e.stopPropagation(); skipSeconds(10); showCtrl(); }}
                    className="flex flex-col items-center gap-1.5 active:scale-90 transition-transform"
                  >
                    <div className="relative w-12 h-12 flex items-center justify-center">
                      <RotateCw className="w-10 h-10 text-white/80" strokeWidth={1.5} />
                      <span className="absolute text-white font-black text-[11px] font-mono" style={{ marginTop: 2 }}>10</span>
                    </div>
                  </button>
                </div>
              </div>

              {/* ── BOTTOM SECTION ── */}
              <div
                className="shrink-0 pointer-events-auto"
                style={{ background: "linear-gradient(0deg, rgba(0,0,0,0.96) 0%, rgba(0,0,0,0.70) 60%, transparent 100%)" }}
                onClick={e => e.stopPropagation()}
              >
                {/* ─ Progress bar ─ */}
                <div className="px-4 pt-3 pb-1.5">
                  {/* Time display */}
                  <div className="flex items-center justify-between mb-2 font-mono" dir="ltr">
                    <span className="text-white/55 text-[11px]">{fmtTime(currentTime)}</span>
                    <span className="text-white/35 text-[11px]">{fmtTime(duration)}</span>
                  </div>

                  {/* Track */}
                  <div
                    ref={progressRef}
                    className="relative w-full rounded-full cursor-pointer group"
                    style={{ height: progressHover ? 6 : 3, transition: "height 0.15s ease" }}
                    onClick={handleProgressClick}
                    onMouseDown={handleProgressMouseDown}
                    onMouseEnter={() => setProgressHover(true)}
                    onMouseLeave={() => setProgressHover(false)}
                    onTouchStart={e => { e.stopPropagation(); setProgressHover(true); }}
                    onTouchEnd={() => setProgressHover(false)}
                  >
                    {/* Base track */}
                    <div className="absolute inset-0 rounded-full"
                      style={{ background: "rgba(255,255,255,0.18)" }} />
                    {/* Buffered */}
                    <div className="absolute top-0 left-0 h-full rounded-full"
                      style={{ width: `${bufPct}%`, background: "rgba(255,255,255,0.28)", transition: "width 0.3s" }} />
                    {/* Progress fill — red */}
                    <div className="absolute top-0 left-0 h-full rounded-full"
                      style={{
                        width: `${pct}%`,
                        background: "linear-gradient(90deg, #ff3b3b 0%, #ff6060 100%)",
                        transition: seekDragging.current ? "none" : "width 0.1s",
                      }} />
                    {/* Thumb */}
                    <div
                      className="absolute top-1/2 -translate-y-1/2 rounded-full"
                      style={{
                        left: `calc(${pct}% - ${progressHover ? 7 : 5}px)`,
                        width: progressHover ? 14 : 10,
                        height: progressHover ? 14 : 10,
                        background: "#ffffff",
                        boxShadow: "0 1px 6px rgba(0,0,0,0.55)",
                        transition: "left 0.1s, width 0.15s, height 0.15s",
                      }}
                    />
                  </div>
                </div>

                {/* ─ Controls row ─ */}
                <div className="flex items-center justify-between px-4 pb-2.5 pt-1">
                  {/* Left: volume + speed */}
                  <div className="flex items-center gap-3">
                    {/* Volume */}
                    <button
                      onClick={toggleMute}
                      className="w-9 h-9 flex items-center justify-center rounded-full active:bg-white/10 transition-colors"
                    >
                      {muted || volume === 0
                        ? <VolumeX className="w-5 h-5 text-white/70" />
                        : <Volume2 className="w-5 h-5 text-white/70" />}
                    </button>

                    {/* Speed */}
                    <div className="relative">
                      <button
                        onClick={() => { setShowSpeedMenu(s => !s); showCtrl(); }}
                        className="flex items-center gap-1 px-2.5 py-1.5 rounded-full active:bg-white/10 transition-colors"
                        style={{ border: "1px solid rgba(255,255,255,0.18)" }}
                      >
                        <span className="text-white/70 text-[11px] font-black font-mono">×{speed}</span>
                        <ChevronDown className="w-3 h-3 text-white/40" />
                      </button>

                      {/* Speed menu */}
                      <AnimatePresence>
                        {showSpeedMenu && (
                          <motion.div
                            initial={{ opacity: 0, y: 8, scale: 0.95 }}
                            animate={{ opacity: 1, y: 0, scale: 1 }}
                            exit={{ opacity: 0, y: 8, scale: 0.95 }}
                            transition={{ duration: 0.15 }}
                            className="absolute bottom-full mb-2 right-0 rounded-2xl overflow-hidden z-50 shadow-2xl"
                            style={{ background: "rgba(12,12,22,0.97)", border: "1px solid rgba(255,255,255,0.10)", backdropFilter: "blur(20px)", minWidth: 90 }}
                          >
                            {SPEEDS.map(s => (
                              <button
                                key={s}
                                onClick={() => changeSpeed(s)}
                                className="w-full flex items-center justify-between px-4 py-2.5 transition-colors"
                                style={{
                                  background: s === speed ? "rgba(255,255,255,0.08)" : "transparent",
                                  borderBottom: "1px solid rgba(255,255,255,0.05)",
                                }}
                              >
                                <span className="text-[12px] font-black font-mono"
                                  style={{ color: s === speed ? "rgba(255,255,255,0.90)" : "rgba(255,255,255,0.40)" }}>
                                  ×{s}
                                </span>
                                {s === speed && (
                                  <div className="w-1.5 h-1.5 rounded-full bg-red-400" />
                                )}
                              </button>
                            ))}
                          </motion.div>
                        )}
                      </AnimatePresence>
                    </div>
                  </div>

                  {/* Right: fullscreen */}
                  <button
                    onClick={toggleFs}
                    className="w-9 h-9 flex items-center justify-center rounded-full active:bg-white/10 transition-colors"
                  >
                    {isFs
                      ? <Minimize2 className="w-5 h-5 text-white/70" />
                      : <Maximize2 className="w-5 h-5 text-white/70" />}
                  </button>
                </div>

                {/* ─ Bottom slot: server tabs + ep nav ─ */}
                {bottomSlot}
              </div>
            </motion.div>
          )}
        </AnimatePresence>
      </div>
    </div>
  );
}
