import { useState, useEffect, useRef, useCallback } from "react";
import { useLocation } from "wouter";
import {
  ChevronRight, ChevronLeft, Play, Pause, Loader2,
  AlertTriangle, RefreshCw, Volume2, VolumeX,
  Maximize2, Minimize2, SkipForward, SkipBack,
  List, X, Zap, CheckCircle2, XCircle, Signal,
  Settings, ChevronUp,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import Hls from "hls.js";

/* ═══════════════════════════════════════ ANILIST QUERY ══════════ */
const ANILIST_Q = `query ($id: Int) {
  Media(id: $id, type: ANIME) {
    id idMal title { romaji english }
    episodes coverImage { large extraLarge }
    nextAiringEpisode { episode }
    bannerImage genres description(asHtml: false)
  }
}`;

/* ═══════════════════════════════════════ TYPES ══════════════════ */
interface Source {
  name: string; url: string; quality: string; qualityRank: number; site: string;
  directUrl?: string; directType?: "hls" | "mp4";
}
type ProbeStatus = "unknown" | "testing" | "ok" | "dead";

/* ═══════════════════════════════════════ SITE LABELS ════════════ */
const SITE_LABEL: Record<string, string> = {
  vidnest: "AnimePahe", animapahe: "AnimePahe",
  shahiid: "شاهيد أنمي", animegg: "AnimeGG",
  animelek: "انمي ليك", animedar: "أنمي دار",
  allanime: "AllAnime", anime4up: "Anime4up",
  animephoenix: "AnimePhoenix", myanime: "MyAnime",
  animekayan: "AnimeKayan", witanime: "ويت أنمي",
  animerco: "أنمي ركو", animeblkom: "أنمي بالكم",
  db: "مخزن", cached: "مخزن",
};

/* ═══════════════════════════════════════ LOCAL STORAGE ══════════ */
function getSrcCache(key: string): Source[] | null {
  try {
    const raw = localStorage.getItem(`srccache:${key}`);
    if (!raw) return null;
    const { ts, sources } = JSON.parse(raw);
    if (Date.now() - ts > 3_600_000) return null;
    return sources;
  } catch { return null; }
}
function setSrcCache(key: string, sources: Source[]) {
  try { localStorage.setItem(`srccache:${key}`, JSON.stringify({ ts: Date.now(), sources })); } catch {}
}
function saveHistory(id: number, title: string, cover: string, ep: number, totalEps = 0) {
  try {
    const h: any[] = JSON.parse(localStorage.getItem("watch-history") || "[]");
    const entry = { id, title, cover, ep, date: new Date().toISOString(), totalEps };
    localStorage.setItem("watch-history",
      JSON.stringify([entry, ...h.filter(x => !(x.id === id && x.ep === ep))].slice(0, 60)));
  } catch {}
}

/* ═══════════════════════════════════════ FORMAT TIME ════════════ */
function fmtTime(sec: number): string {
  if (!isFinite(sec) || sec < 0) return "0:00";
  const h = Math.floor(sec / 3600);
  const m = Math.floor((sec % 3600) / 60);
  const s = Math.floor(sec % 60);
  if (h > 0) return `${h}:${String(m).padStart(2, "0")}:${String(s).padStart(2, "0")}`;
  return `${m}:${String(s).padStart(2, "0")}`;
}

/* ═══════════════════════════════════════ QUALITY BADGE ══════════ */
function QBadge({ q }: { q: string }) {
  const u = (q || "").toUpperCase();
  if (u.includes("1080") || u === "FHD")
    return <span className="text-[9px] font-black px-1.5 py-0.5 rounded bg-emerald-500/20 text-emerald-300 border border-emerald-500/25">1080p</span>;
  if (u.includes("720") || u === "HD")
    return <span className="text-[9px] font-black px-1.5 py-0.5 rounded bg-sky-500/20 text-sky-300 border border-sky-500/25">HD</span>;
  return <span className="text-[9px] font-black px-1.5 py-0.5 rounded bg-white/8 text-white/40 border border-white/10">SD</span>;
}

/* ═══════════════════════════════════════ SERVER DRAWER ══════════ */
function ServerDrawer({ sources, activeUrl, statuses, onSelect, onClose }: {
  sources: Source[]; activeUrl: string;
  statuses: Record<string, ProbeStatus>;
  onSelect: (s: Source) => void; onClose: () => void;
}) {
  const alive = sources.filter(s => (statuses[s.url] || "unknown") !== "dead");
  return (
    <>
      <motion.div
        initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
        className="absolute inset-0 z-40 bg-black/60 backdrop-blur-sm"
        onClick={onClose}
      />
      <motion.div
        initial={{ y: "100%" }} animate={{ y: 0 }} exit={{ y: "100%" }}
        transition={{ type: "spring", damping: 32, stiffness: 340 }}
        className="absolute bottom-0 left-0 right-0 z-50 rounded-t-[28px] max-h-[72vh] flex flex-col overflow-hidden"
        style={{ background: "linear-gradient(160deg,#12121c 0%,#0d0d16 100%)", borderTop: "1px solid rgba(255,255,255,0.08)" }}
        onClick={e => e.stopPropagation()}
      >
        <div className="flex justify-center pt-3 pb-1 shrink-0">
          <div className="w-10 h-1 rounded-full bg-white/15" />
        </div>
        <div className="flex items-center justify-between px-5 py-3 shrink-0" style={{ borderBottom: "1px solid rgba(255,255,255,0.06)" }}>
          <p className="text-sm font-black text-white font-['Cairo']" dir="rtl">
            السيرفرات ({alive.length})
          </p>
          <button onClick={onClose} className="w-8 h-8 rounded-full bg-white/8 flex items-center justify-center">
            <X className="w-4 h-4 text-white/60" />
          </button>
        </div>
        <div className="overflow-y-auto px-4 py-3 space-y-2 pb-8" dir="rtl">
          {sources.filter(s => (statuses[s.url] || "unknown") !== "dead" || s.url === activeUrl).map(src => {
            const isActive = src.url === activeUrl;
            const st = statuses[src.url] || "unknown";
            const isDead = st === "dead";
            return (
              <button key={src.url} onClick={() => !isDead && onSelect(src)} disabled={isDead}
                className={`w-full flex items-center gap-3 px-4 py-3 rounded-2xl border transition-all active:scale-[0.98] text-right
                  ${isActive ? "bg-violet-500/15 border-violet-500/35" : isDead ? "opacity-25 bg-white/3 border-white/5" : "bg-white/4 border-white/7 active:bg-white/8"}`}>
                <div className={`w-8 h-8 rounded-xl flex items-center justify-center shrink-0 border
                  ${isActive ? "bg-violet-500/25 border-violet-500/35" : src.directUrl ? "bg-emerald-500/15 border-emerald-500/25" : "bg-white/8 border-white/10"}`}>
                  {isActive ? <CheckCircle2 className="w-4 h-4 text-violet-300" />
                  : isDead ? <XCircle className="w-4 h-4 text-red-400" />
                  : st === "testing" ? <Loader2 className="w-4 h-4 text-amber-400 animate-spin" />
                  : st === "ok" ? <Signal className="w-4 h-4 text-emerald-400" />
                  : src.directUrl ? <Zap className="w-4 h-4 text-emerald-400" />
                  : <Play className="w-3.5 h-3.5 text-white/40 fill-white/40" />}
                </div>
                <div className="flex-1 min-w-0 text-right">
                  <p className={`text-sm font-bold font-['Cairo'] truncate ${isActive ? "text-violet-200" : isDead ? "text-white/20" : "text-white/85"}`}>{src.name}</p>
                  <p className="text-[10px] text-white/30 font-['Cairo']">
                    {SITE_LABEL[src.site] || src.site}{src.directUrl ? " · مباشر" : ""}
                  </p>
                </div>
                <QBadge q={src.quality} />
              </button>
            );
          })}
        </div>
      </motion.div>
    </>
  );
}

/* ═══════════════════════════════════════ SEEK OVERLAY ═══════════ */
function SeekFlash({ side, show }: { side: "left" | "right"; show: boolean }) {
  return (
    <AnimatePresence>
      {show && (
        <motion.div
          initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
          transition={{ duration: 0.15 }}
          className={`absolute top-0 ${side === "right" ? "right-0" : "left-0"} w-1/3 h-full z-[11] flex items-center ${side === "right" ? "justify-end pr-8" : "justify-start pl-8"} pointer-events-none`}
          style={{ background: side === "right" ? "radial-gradient(ellipse at right, rgba(139,92,246,0.25) 0%, transparent 70%)" : "radial-gradient(ellipse at left, rgba(139,92,246,0.25) 0%, transparent 70%)" }}
        >
          <div className="flex flex-col items-center gap-1">
            {side === "right"
              ? <SkipForward className="w-7 h-7 text-white/80" />
              : <SkipBack className="w-7 h-7 text-white/80" />
            }
            <span className="text-white/70 text-[11px] font-bold font-['Cairo']">10ث</span>
          </div>
        </motion.div>
      )}
    </AnimatePresence>
  );
}

/* ═══════════════════════════════════════ NETFLIX PLAYER ═════════ */
function NetflixPlayer({
  src, title, ep, totalEps, sources, statuses,
  onBack, onNextEp, onPrevEp, onSelectSource, onNextSrc,
  browserExtracting, streamDone,
}: {
  src: Source; title: string; ep: number; totalEps: number;
  sources: Source[]; statuses: Record<string, ProbeStatus>;
  onBack: () => void;
  onNextEp: () => void; onPrevEp: () => void;
  onSelectSource: (s: Source) => void; onNextSrc: () => void;
  browserExtracting?: boolean; streamDone?: boolean;
}) {
  const videoRef  = useRef<HTMLVideoElement>(null);
  const hlsRef    = useRef<Hls | null>(null);
  const hideTimer = useRef<ReturnType<typeof setTimeout> | null>(null);
  const progressRef = useRef<HTMLDivElement>(null);
  const seekRef   = useRef<ReturnType<typeof setTimeout> | null>(null);

  const [showCtrl,    setShowCtrl]    = useState(true);
  const [playing,     setPlaying]     = useState(false);
  const [loading,     setLoading]     = useState(true);
  const [nativeFailed, setNativeFailed] = useState(false);
  const [iframeFailed, setIframeFailed] = useState(false);
  const [progress,    setProgress]    = useState(0);
  const [buffered,    setBuffered]    = useState(0);
  const [curTime,     setCurTime]     = useState(0);
  const [duration,    setDuration]    = useState(0);
  const [volume,      setVolume]      = useState(1);
  const [muted,       setMuted]       = useState(false);
  const [fs,          setFs]          = useState(false);
  const [showSheet,   setShowSheet]   = useState(false);
  const [attempt,     setAttempt]     = useState<"direct" | "proxy">("direct");
  const [iframeReady, setIframeReady] = useState(false);
  const [seekFlash,   setSeekFlash]   = useState<{ side: "left" | "right"; id: number } | null>(null);

  // Show native video only when directUrl available and hasn't failed
  const useNative = !!src.directUrl && !nativeFailed;
  // Show iframe when: no directUrl, OR native failed
  const useIframe = !useNative;
  // Show error only when both native and iframe have failed
  const showError = nativeFailed && iframeFailed;
  const isHls     = src.directType === "hls";

  const hlsProxy = `/api/anime/hls-proxy?url=${encodeURIComponent(src.directUrl || "")}&ref=${encodeURIComponent(src.url)}`;
  const vidProxy = `/api/anime/video-proxy?url=${encodeURIComponent(src.directUrl || "")}&ref=${encodeURIComponent(src.url)}`;
  const effectiveUrl = isHls ? hlsProxy : (attempt === "direct" ? (src.directUrl || "") : vidProxy);

  /* ── Auto-rotate landscape ── */
  useEffect(() => {
    (screen.orientation as any)?.lock?.("landscape")?.catch?.(() => {});
    return () => { try { (screen.orientation as any)?.unlock?.(); } catch {} };
  }, []);

  /* ── Block iframe navigation ── */
  useEffect(() => {
    const nav = (window as any).navigation;
    if (!nav) return;
    const handler = (e: any) => {
      const dest: string = e.destination?.url ?? "";
      if (dest && !dest.startsWith(window.location.origin)) { try { e.preventDefault(); } catch {} }
    };
    nav.addEventListener("navigate", handler);
    return () => nav.removeEventListener("navigate", handler);
  }, []);

  /* ── HLS setup ── */
  useEffect(() => {
    setNativeFailed(false); setIframeFailed(false);
    setLoading(true); setProgress(0);
    setCurTime(0); setDuration(0); setAttempt("direct");
    setIframeReady(false); setPlaying(false);

    const v = videoRef.current;
    if (!v || !src.directUrl) return;
    hlsRef.current?.destroy(); hlsRef.current = null;

    if (isHls && Hls.isSupported()) {
      const hls = new Hls({
        enableWorker: true, lowLatencyMode: false,
        maxBufferLength: 30, maxMaxBufferLength: 60,
        fragLoadingTimeOut: 20000, manifestLoadingTimeOut: 15000,
      });
      hlsRef.current = hls;
      hls.loadSource(effectiveUrl);
      hls.attachMedia(v);
      hls.on(Hls.Events.MANIFEST_PARSED, () => { v.play().catch(() => {}); });
      hls.on(Hls.Events.ERROR, (_, d) => { if (d.fatal) handleErr(); });
    } else if (isHls && v.canPlayType("application/vnd.apple.mpegurl")) {
      v.src = effectiveUrl; v.play().catch(() => {});
    } else if (!isHls) {
      v.src = effectiveUrl; v.load(); v.play().catch(() => {});
    } else {
      setNativeFailed(true);
    }
    return () => { hlsRef.current?.destroy(); hlsRef.current = null; };
  }, [src.url, src.directUrl, attempt]);

  function handleErr() {
    if (!isHls && attempt === "direct") { setAttempt("proxy"); }
    else { setNativeFailed(true); setLoading(false); }
  }

  /* ── Time tracking ── */
  function onTimeUpdate() {
    const v = videoRef.current; if (!v) return;
    setCurTime(v.currentTime);
    setDuration(v.duration || 0);
    setProgress(v.duration ? v.currentTime / v.duration : 0);
    if (v.buffered.length > 0) {
      setBuffered(v.duration ? v.buffered.end(v.buffered.length - 1) / v.duration : 0);
    }
  }

  /* ── Controls hide logic ── */
  const scheduleHide = useCallback((ms = 4000) => {
    if (hideTimer.current) clearTimeout(hideTimer.current);
    hideTimer.current = setTimeout(() => setShowCtrl(false), ms);
  }, []);

  const showAndSchedule = useCallback((ms?: number) => {
    setShowCtrl(true); scheduleHide(ms);
  }, [scheduleHide]);

  useEffect(() => {
    showAndSchedule(); setShowCtrl(true);
    return () => { if (hideTimer.current) clearTimeout(hideTimer.current); };
  }, [src.url]);

  /* ── Tap handler ── */
  const tapRef = useRef<{ count: number; side: "left"|"right"|null; timer: ReturnType<typeof setTimeout>|null }>({ count: 0, side: null, timer: null });

  function handleTap(e: React.MouseEvent | React.TouchEvent) {
    if (showSheet) return;
    const el = (e.currentTarget as HTMLElement).getBoundingClientRect();
    const clientX = "touches" in e ? e.changedTouches[0].clientX : (e as React.MouseEvent).clientX;
    const relX = clientX - el.left;
    const side: "left" | "right" = relX < el.width / 2 ? "left" : "right";

    tapRef.current.count++;
    tapRef.current.side = side;

    if (tapRef.current.timer) clearTimeout(tapRef.current.timer);
    tapRef.current.timer = setTimeout(() => {
      const count = tapRef.current.count;
      tapRef.current.count = 0;
      tapRef.current.timer = null;
      if (count >= 2) {
        // Double-tap: seek
        const v = videoRef.current; if (!v) return;
        const secs = count * 5;
        if (tapRef.current.side === "right") {
          v.currentTime = Math.min(v.duration || 0, v.currentTime + secs);
        } else {
          v.currentTime = Math.max(0, v.currentTime - secs);
        }
        setSeekFlash({ side: tapRef.current.side!, id: Date.now() });
        showAndSchedule();
      } else {
        // Single tap: toggle controls / play-pause
        if (showCtrl) {
          if (hideTimer.current) clearTimeout(hideTimer.current);
          setShowCtrl(false);
        } else {
          showAndSchedule();
        }
      }
    }, 220);
  }

  /* ── Progress bar click / drag ── */
  function seekTo(e: React.MouseEvent<HTMLDivElement>) {
    const v = videoRef.current; if (!v || !v.duration) return;
    const rect = (e.currentTarget as HTMLElement).getBoundingClientRect();
    const ratio = Math.max(0, Math.min(1, (e.clientX - rect.left) / rect.width));
    v.currentTime = ratio * v.duration;
    showAndSchedule();
  }

  /* ── Volume ── */
  function setVol(val: number) {
    setVolume(val);
    if (videoRef.current) { videoRef.current.volume = val; videoRef.current.muted = val === 0; }
    setMuted(val === 0);
  }
  function toggleMute() {
    const v = videoRef.current; if (!v) return;
    v.muted = !v.muted; setMuted(v.muted);
  }

  /* ── Fullscreen ── */
  function toggleFs() {
    const el = document.getElementById("nova-player");
    if (!el) return;
    if (!document.fullscreenElement) {
      el.requestFullscreen?.().then(() => setFs(true)).catch(() => {});
      (el as any).webkitRequestFullscreen?.();
    } else {
      document.exitFullscreen?.().then(() => setFs(false)).catch(() => {});
    }
  }
  useEffect(() => {
    const handler = () => setFs(!!document.fullscreenElement);
    document.addEventListener("fullscreenchange", handler);
    return () => document.removeEventListener("fullscreenchange", handler);
  }, []);

  /* ── Play / pause ── */
  function togglePlay() {
    const v = videoRef.current; if (!v) return;
    v.paused ? v.play().catch(() => {}) : v.pause();
    showAndSchedule();
  }

  return (
    <div id="nova-player" className="fixed inset-0 z-50 bg-black flex items-center justify-center" dir="ltr">

      {/* ── Video element ── */}
      {useNative && (
        <video
          ref={videoRef}
          className="absolute inset-0 w-full h-full"
          style={{ objectFit: "contain" }}
          playsInline autoPlay
          onCanPlay={() => { setLoading(false); showAndSchedule(); }}
          onPlay={() => { setPlaying(true); scheduleHide(); }}
          onPause={() => setPlaying(false)}
          onWaiting={() => setLoading(true)}
          onPlaying={() => setLoading(false)}
          onTimeUpdate={onTimeUpdate}
          onError={handleErr}
          onEnded={() => setPlaying(false)}
          volume={volume}
        />
      )}

      {/* ── iframe embed fallback ── */}
      {useIframe && (
        <>
          <iframe
            key={src.url}
            src={src.url}
            className="absolute inset-0 w-full h-full border-none"
            style={{ opacity: iframeReady ? 1 : 0, transition: "opacity 0.4s", zIndex: 1 }}
            allow="autoplay; fullscreen; encrypted-media; picture-in-picture; accelerometer; gyroscope"
            allowFullScreen
            title={title}
            onLoad={() => { setIframeReady(true); setLoading(false); showAndSchedule(6000); }}
            onError={() => { setIframeFailed(true); }}
          />
          {!iframeReady && !iframeFailed && (
            <div className="absolute inset-0 z-[2] bg-black flex flex-col items-center justify-center gap-4">
              <motion.div animate={{ rotate: 360 }} transition={{ duration: 1.2, repeat: Infinity, ease: "linear" }}
                className="w-14 h-14 rounded-2xl border-2 border-violet-500/30 border-t-violet-400 flex items-center justify-center">
                <div className="w-3 h-3 rounded-full bg-violet-400" />
              </motion.div>
              <p className="text-white/40 text-xs font-['Cairo']">جاري تحميل المشغّل…</p>
            </div>
          )}
        </>
      )}

      {/* ── Browser extracting overlay ── */}
      <AnimatePresence>
        {browserExtracting && (
          <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            className="absolute inset-0 z-[3] bg-black/90 flex flex-col items-center justify-center gap-5">
            <div className="relative">
              <motion.div animate={{ rotate: 360 }} transition={{ duration: 2, repeat: Infinity, ease: "linear" }}
                className="w-20 h-20 rounded-full border-2 border-violet-500/20 border-t-violet-400" />
              <div className="absolute inset-0 flex items-center justify-center">
                <div className="w-10 h-10 rounded-xl bg-violet-500/20 flex items-center justify-center">
                  <Zap className="w-5 h-5 text-violet-300" />
                </div>
              </div>
            </div>
            <div className="text-center px-6" dir="rtl">
              <p className="text-white/90 text-sm font-bold font-['Cairo']">جارٍ استخراج الرابط المباشر…</p>
              <p className="text-white/40 text-xs font-['Cairo'] mt-1">متصفح حقيقي · قد يستغرق 20 ثانية</p>
            </div>
          </motion.div>
        )}
      </AnimatePresence>

      {/* ── Loading spinner (video buffering) ── */}
      <AnimatePresence>
        {loading && !browserExtracting && useNative && (
          <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            className="absolute inset-0 z-[5] flex items-center justify-center pointer-events-none">
            <motion.div animate={{ rotate: 360 }} transition={{ duration: 1, repeat: Infinity, ease: "linear" }}
              className="w-12 h-12 rounded-full border-2 border-white/10 border-t-white/60" />
          </motion.div>
        )}
      </AnimatePresence>

      {/* ── Error state — only when BOTH native and iframe have failed ── */}
      {showError && (
        <div className="absolute inset-0 z-[6] bg-black/80 flex flex-col items-center justify-center gap-5" dir="rtl">
          <div className="w-16 h-16 rounded-2xl bg-red-500/10 border border-red-500/20 flex items-center justify-center">
            <AlertTriangle className="w-7 h-7 text-red-400" />
          </div>
          <div className="text-center">
            <p className="text-white/70 text-sm font-bold font-['Cairo']">تعذّر تشغيل هذا السيرفر</p>
            <p className="text-white/30 text-xs font-['Cairo'] mt-1">جرّب سيرفراً آخر</p>
          </div>
          <button onClick={onNextSrc}
            className="flex items-center gap-2 px-5 py-2.5 rounded-xl bg-violet-600 text-white text-sm font-bold font-['Cairo']">
            <SkipForward className="w-4 h-4" /> السيرفر التالي
          </button>
        </div>
      )}

      {/* ── Seek flash ── */}
      <SeekFlash side="left" show={seekFlash?.side === "left"} />
      <SeekFlash side="right" show={seekFlash?.side === "right"} />

      {/* ── Tap overlay ── */}
      <div
        className="absolute inset-0 z-[10]"
        style={{ pointerEvents: showSheet ? "none" : "auto", touchAction: "manipulation", WebkitTapHighlightColor: "transparent" }}
        onClick={handleTap}
        onTouchEnd={e => { e.stopPropagation(); }}
      />

      {/* ══════════════════════ CONTROLS ══════════════════════════════ */}
      <AnimatePresence>
        {showCtrl && !showSheet && (
          <motion.div key="ctrl" className="absolute inset-0 z-[20] pointer-events-none"
            initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }} transition={{ duration: 0.22 }}>

            {/* ── TOP BAR ── */}
            <div className="absolute top-0 left-0 right-0 flex items-center gap-3 px-4 pointer-events-auto"
              style={{
                paddingTop: "max(14px, env(safe-area-inset-top))", paddingBottom: 18,
                background: "linear-gradient(to bottom, rgba(0,0,0,0.9) 0%, rgba(0,0,0,0.4) 70%, transparent 100%)",
              }}>
              <button onClick={e => { e.stopPropagation(); onBack(); }}
                className="w-9 h-9 rounded-xl bg-black/40 backdrop-blur-xl border border-white/10 flex items-center justify-center shrink-0 active:scale-90">
                <ChevronRight className="w-5 h-5 text-white" />
              </button>
              <div className="flex-1 min-w-0 text-center" dir="rtl">
                <p className="text-white text-[13px] font-black font-['Cairo'] truncate drop-shadow">{title}</p>
                <p className="text-white/45 text-[10px] font-['Cairo']">
                  الحلقة {ep === 0 ? "فيلم" : ep}
                  {src.directUrl && <span className="text-emerald-400/80"> · مباشر</span>}
                </p>
              </div>
              {/* Next source */}
              <button onClick={e => { e.stopPropagation(); setShowSheet(true); }}
                className="w-9 h-9 rounded-xl bg-black/40 backdrop-blur-xl border border-white/10 flex items-center justify-center shrink-0 active:scale-90">
                <List className="w-4 h-4 text-white/70" />
              </button>
            </div>

            {/* ── CENTER CONTROLS ── */}
            <div className="absolute inset-0 flex items-center justify-center gap-10 pointer-events-auto">
              {/* Prev episode */}
              <button onClick={e => { e.stopPropagation(); onPrevEp(); }}
                disabled={ep <= 1}
                className="w-12 h-12 rounded-full bg-black/35 backdrop-blur-md border border-white/10 flex items-center justify-center disabled:opacity-20 active:scale-90">
                <ChevronRight className="w-5 h-5 text-white" />
              </button>

              {/* Play / Pause */}
              <button onClick={e => { e.stopPropagation(); useNative ? togglePlay() : undefined; showAndSchedule(); }}
                className="w-[72px] h-[72px] rounded-full bg-white/15 backdrop-blur-md border border-white/20 flex items-center justify-center active:scale-90 shadow-2xl">
                {loading && useNative
                  ? <Loader2 className="w-8 h-8 text-white animate-spin" />
                  : playing
                  ? <Pause className="w-8 h-8 text-white fill-white" />
                  : <Play className="w-8 h-8 text-white fill-white ml-1" />}
              </button>

              {/* Next episode */}
              <button onClick={e => { e.stopPropagation(); onNextEp(); }}
                disabled={ep >= totalEps && totalEps > 0}
                className="w-12 h-12 rounded-full bg-black/35 backdrop-blur-md border border-white/10 flex items-center justify-center disabled:opacity-20 active:scale-90">
                <ChevronLeft className="w-5 h-5 text-white" />
              </button>
            </div>

            {/* ── BOTTOM BAR ── */}
            <div className="absolute bottom-0 left-0 right-0 flex flex-col pointer-events-auto"
              style={{
                paddingBottom: "max(14px, env(safe-area-inset-bottom))",
                background: "linear-gradient(to top, rgba(0,0,0,0.95) 0%, rgba(0,0,0,0.6) 60%, transparent 100%)",
              }}>

              {/* Progress bar */}
              {useNative && (
                <div className="px-4 pb-3 pt-2">
                  <div className="flex items-center gap-2 mb-2">
                    <span className="text-white/50 text-[10px] font-mono tabular-nums">{fmtTime(curTime)}</span>
                    <div className="flex-1 relative h-5 flex items-center cursor-pointer group" onClick={seekTo} ref={progressRef}>
                      {/* Track */}
                      <div className="absolute inset-y-0 flex items-center w-full">
                        <div className="w-full h-[3px] rounded-full bg-white/15 relative overflow-hidden">
                          {/* Buffered */}
                          <div className="absolute inset-y-0 left-0 bg-white/20 rounded-full transition-all duration-300"
                            style={{ width: `${buffered * 100}%` }} />
                          {/* Progress */}
                          <div className="absolute inset-y-0 left-0 bg-gradient-to-r from-violet-500 to-violet-400 rounded-full"
                            style={{ width: `${progress * 100}%` }} />
                        </div>
                      </div>
                      {/* Thumb */}
                      <div className="absolute h-4 w-4 rounded-full bg-white shadow-lg border border-white/20 -translate-x-1/2 transition-all group-hover:scale-110"
                        style={{ left: `${progress * 100}%` }} />
                    </div>
                    <span className="text-white/50 text-[10px] font-mono tabular-nums">{fmtTime(duration)}</span>
                  </div>
                </div>
              )}

              {/* Controls row */}
              <div className="flex items-center gap-2 px-4 pb-2" dir="ltr">
                {/* Volume */}
                {useNative && (
                  <button onClick={e => { e.stopPropagation(); toggleMute(); showAndSchedule(); }}
                    className="w-9 h-9 rounded-xl bg-black/30 flex items-center justify-center active:scale-90">
                    {muted || volume === 0 ? <VolumeX className="w-4 h-4 text-white/60" /> : <Volume2 className="w-4 h-4 text-white/60" />}
                  </button>
                )}

                {/* Next source */}
                <button onClick={e => { e.stopPropagation(); onNextSrc(); showAndSchedule(); }}
                  className="flex items-center gap-1.5 px-3 py-2 rounded-xl bg-black/30 border border-white/8 text-white/60 text-[11px] font-bold font-['Cairo'] active:scale-95">
                  <SkipForward className="w-3.5 h-3.5" />
                  <span dir="rtl">سيرفر تالٍ</span>
                </button>

                <div className="flex-1" />

                {/* Sources count */}
                {!streamDone && (
                  <div className="flex items-center gap-1.5 px-2.5 py-1.5 rounded-lg bg-amber-500/10 border border-amber-500/15">
                    <Loader2 className="w-3 h-3 text-amber-400 animate-spin" />
                    <span className="text-amber-300 text-[10px] font-['Cairo']" dir="rtl">{sources.length} سيرفر</span>
                  </div>
                )}

                {/* Fullscreen */}
                <button onClick={e => { e.stopPropagation(); toggleFs(); showAndSchedule(); }}
                  className="w-9 h-9 rounded-xl bg-black/30 flex items-center justify-center active:scale-90">
                  {fs ? <Minimize2 className="w-4 h-4 text-white/60" /> : <Maximize2 className="w-4 h-4 text-white/60" />}
                </button>
              </div>
            </div>
          </motion.div>
        )}
      </AnimatePresence>

      {/* ── Server Drawer ── */}
      <AnimatePresence>
        {showSheet && (
          <ServerDrawer
            sources={sources}
            activeUrl={src.url}
            statuses={statuses}
            onSelect={s => { onSelectSource(s); setShowSheet(false); showAndSchedule(); }}
            onClose={() => setShowSheet(false)}
          />
        )}
      </AnimatePresence>
    </div>
  );
}

/* ═══════════════════════════════════════ LOADING SCREEN ═════════ */
const GENRE_COVERS: Record<string, string> = {
  "Action":    "https://s4.anilist.co/file/anilistcdn/media/anime/banner/21459-YEFGheQDsxJHQ8bE.jpg",
  "Adventure": "https://s4.anilist.co/file/anilistcdn/media/anime/banner/113415-e1G39MX3vOSx.jpg",
  "Fantasy":   "https://s4.anilist.co/file/anilistcdn/media/anime/banner/101922-YfZFWRpWmEsm.jpg",
  "Sci-Fi":    "https://s4.anilist.co/file/anilistcdn/media/anime/banner/5114-Z6FPGv2zJhsA.jpg",
  "Drama":     "https://s4.anilist.co/file/anilistcdn/media/anime/banner/9253-1OdQ1obJ4kC.jpg",
  "Romance":   "https://s4.anilist.co/file/anilistcdn/media/anime/banner/101921-KmrCkHJqkGaX.jpg",
  "Comedy":    "https://s4.anilist.co/file/anilistcdn/media/anime/banner/21202-RnWIstMLZFMQ.jpg",
  "default":   "https://s4.anilist.co/file/anilistcdn/media/anime/banner/21-YpzLs2jBPpyBY.jpg",
};

function LoadingScreen({ cover, title, ep, genres, sourcesCount, streamDone, onSkip }: {
  cover: string; title: string; ep: number; genres: string[]; sourcesCount: number;
  streamDone: boolean; onSkip?: () => void;
}) {
  const bgUrl = GENRE_COVERS[genres?.[0]] || GENRE_COVERS["default"];
  return (
    <div className="fixed inset-0 z-50 flex flex-col items-center justify-center overflow-hidden bg-[#09090f]" dir="rtl">
      <div className="absolute inset-0">
        <img src={cover || bgUrl} alt="" className="w-full h-full object-cover scale-110"
          style={{ filter: "blur(60px) brightness(0.12) saturate(1.8)" }} />
      </div>
      <div className="absolute inset-0" style={{ background: "linear-gradient(to bottom, rgba(0,0,0,0.4) 0%, #09090f 65%)" }} />

      <div className="relative z-10 flex flex-col items-center gap-7 px-6 text-center w-full max-w-xs">
        {cover && (
          <motion.div initial={{ y: 30, opacity: 0, scale: 0.85 }} animate={{ y: 0, opacity: 1, scale: 1 }}
            transition={{ duration: 0.7, ease: [0.22, 1, 0.36, 1] }} className="relative">
            <div className="absolute -inset-8 rounded-full blur-[60px] opacity-50"
              style={{ background: "radial-gradient(circle,rgba(139,92,246,0.9),transparent 70%)" }} />
            <img src={cover} alt="" className="relative w-36 h-52 object-cover rounded-2xl shadow-[0_40px_100px_rgba(0,0,0,0.95)]"
              style={{ border: "1px solid rgba(139,92,246,0.2)" }} />
            <div className="absolute -bottom-3.5 left-1/2 -translate-x-1/2 bg-violet-600 text-white text-[11px] font-black px-4 py-1.5 rounded-full shadow-lg whitespace-nowrap">
              {ep === 0 ? "فيلم" : `الحلقة ${ep}`}
            </div>
          </motion.div>
        )}

        <motion.div initial={{ opacity: 0, y: 14 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: 0.3 }}
          className="flex flex-col items-center gap-3 mt-1">
          <h2 className="text-white text-base font-black font-['Cairo'] line-clamp-2">{title}</h2>

          {sourcesCount > 0 ? (
            <div className="flex flex-col items-center gap-2">
              <p className="text-white/50 text-xs font-['Cairo']">
                {sourcesCount} سيرفر متاح · يبدأ التشغيل تلقائياً
              </p>
              {onSkip && (
                <button onClick={onSkip}
                  className="flex items-center gap-2 px-5 py-2.5 rounded-xl bg-violet-600 text-white text-sm font-bold font-['Cairo'] shadow-lg shadow-violet-900/40 active:scale-95">
                  <Play className="w-4 h-4 fill-white" />
                  تشغيل الآن
                </button>
              )}
            </div>
          ) : (
            <p className="text-white/35 text-xs font-['Cairo']">
              {streamDone ? "لا توجد مصادر متاحة لهذه الحلقة" : "يجري البحث في المصادر…"}
            </p>
          )}
        </motion.div>

        {!streamDone && (
          <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} transition={{ delay: 0.5 }}>
            <div className="flex items-center gap-2">
              {[0, 1, 2, 3, 4].map(i => (
                <motion.div key={i} className="w-1.5 h-1.5 rounded-full bg-violet-500"
                  animate={{ opacity: [0.2, 1, 0.2], scale: [0.7, 1.3, 0.7] }}
                  transition={{ duration: 1.4, repeat: Infinity, delay: i * 0.2 }} />
              ))}
            </div>
          </motion.div>
        )}
      </div>
    </div>
  );
}

/* ═══════════════════════════════════════ NO SOURCES ═════════════ */
function NoSources({ onRefresh, onBack }: { onRefresh: () => void; onBack: () => void }) {
  return (
    <div className="fixed inset-0 z-50 flex flex-col items-center justify-center gap-6 bg-[#09090f]" dir="rtl">
      <div className="w-16 h-16 rounded-2xl bg-white/4 border border-white/8 flex items-center justify-center">
        <AlertTriangle className="w-7 h-7 text-white/25" />
      </div>
      <div className="text-center">
        <p className="text-white/55 text-sm font-black font-['Cairo']">لا توجد مصادر متاحة</p>
        <p className="text-white/25 text-xs mt-1 font-['Cairo']">هذه الحلقة غير متوفرة حالياً في أي مصدر</p>
      </div>
      <div className="flex items-center gap-3">
        <button onClick={onBack}
          className="flex items-center gap-2 px-4 py-2.5 rounded-xl bg-white/6 border border-white/10 text-white/60 text-sm font-bold font-['Cairo']">
          <ChevronRight className="w-4 h-4" /> رجوع
        </button>
        <button onClick={onRefresh}
          className="flex items-center gap-2 px-4 py-2.5 rounded-xl bg-violet-600 text-white text-sm font-bold font-['Cairo']">
          <RefreshCw className="w-4 h-4" /> إعادة المحاولة
        </button>
      </div>
    </div>
  );
}

/* ═══════════════════════════════════════ MAIN WATCH PAGE ════════ */
export default function WatchPage() {
  const [, navigate] = useLocation();
  const sp         = new URLSearchParams(window.location.search);
  const animeId    = parseInt(sp.get("anime") || "0");
  const ep         = parseInt(sp.get("ep") || "1");
  const titleParam = sp.get("title") || "";

  const [anime,       setAnime]       = useState<any>(null);
  const [sources,     setSources]     = useState<Source[]>([]);
  const [active,      setActive]      = useState<Source | null>(null);
  const [statuses,    setStatuses]    = useState<Record<string, ProbeStatus>>({});
  const [loading,     setLoading]     = useState(true);
  const [streamDone,  setStreamDone]  = useState(false);
  const [playing,     setPlaying]     = useState(false);
  const [browserExtracting, setBrowserExtracting] = useState(false);

  const sseRef       = useRef<EventSource | null>(null);
  const seenUrls     = useRef(new Set<string>());
  const autoStarted  = useRef(false);
  const sourcesRef   = useRef<Source[]>([]);
  const activeRef    = useRef<Source | null>(null);

  const title    = anime?.title?.romaji  || anime?.title?.english || titleParam || "أنمي";
  const totalEps = anime?.episodes       || anime?.nextAiringEpisode?.episode   || 999;
  const cover    = anime?.coverImage?.large || "";
  const genres   = anime?.genres || [];

  useEffect(() => { sourcesRef.current = sources; }, [sources]);
  useEffect(() => { activeRef.current  = active;  }, [active]);

  /* ── Sort & dedup ── */
  function serverPriority(s: Source): number {
    if (s.directUrl) return 15;
    const siteScores: Record<string, number> = {
      shahiid: 13, animelek: 12, animedar: 11, vidnest: 10, animapahe: 9,
      animephoenix: 8, anime4up: 8, myanime: 7, animekayan: 7, witanime: 6,
      animerco: 6, animeblkom: 6, animegg: 5,
    };
    return siteScores[s.site] || 3;
  }
  function sortSources(srcs: Source[]): Source[] {
    return [...srcs].sort((a, b) => {
      if ((b.directUrl ? 1 : 0) !== (a.directUrl ? 1 : 0)) return (b.directUrl ? 1 : 0) - (a.directUrl ? 1 : 0);
      if (b.qualityRank !== a.qualityRank) return b.qualityRank - a.qualityRank;
      return serverPriority(b) - serverPriority(a);
    });
  }
  function dedupSources(srcs: Source[]): Source[] {
    const seen = new Map<string, number>();
    return srcs.filter(s => {
      let host = "";
      try { host = new URL(s.url).hostname.replace(/^(www\.|vid\.|player\.)/, ""); } catch {}
      const n = seen.get(host) || 0;
      if (n >= 2) return false;
      seen.set(host, n + 1);
      return true;
    });
  }

  /* ── SSE stream ── */
  function startSSE(romaji: string, english: string, malId: number) {
    const p = new URLSearchParams({ ep: String(ep), title: romaji, english, anilistId: String(animeId), malId: String(malId) });
    const es = new EventSource(`/api/anime/sources-stream?${p}`);
    sseRef.current = es;
    const accumulated: Source[] = [];

    es.onmessage = (e) => {
      if (e.data === "[DONE]") {
        es.close(); sseRef.current = null;
        setStreamDone(true);
        setSrcCache(`${animeId}-${ep}`, accumulated);
        return;
      }
      try {
        const src: Source = JSON.parse(e.data);
        const srcKey = src.directUrl || src.url;
        if (!src.url || seenUrls.current.has(srcKey)) return;
        seenUrls.current.add(srcKey);
        accumulated.push(src);
        setSources(prev => dedupSources(sortSources([...prev, src])));
        setStatuses(prev => ({ ...prev, [src.url]: "unknown" }));
      } catch {}
    };
    es.onerror = () => { es.close(); sseRef.current = null; setStreamDone(true); };
  }

  /* ── Init ── */
  useEffect(() => {
    if (!animeId) { setLoading(false); return; }
    setLoading(true); setSources([]); setActive(null); setStatuses({});
    setStreamDone(false); setPlaying(false);
    seenUrls.current.clear(); autoStarted.current = false;
    sseRef.current?.close();

    const cacheKey = `${animeId}-${ep}`;

    (async () => {
      try {
        const cached = getSrcCache(cacheKey);
        if (cached && cached.length > 0) {
          setSources(cached);
          const init: Record<string, ProbeStatus> = {};
          cached.forEach(s => { init[s.url] = "unknown"; });
          setStatuses(init);
          setLoading(false); setStreamDone(true);
          return;
        }

        if (titleParam) {
          setLoading(false);
          startSSE(titleParam, "", 0);
          fetch("https://graphql.anilist.co", {
            method: "POST", headers: { "Content-Type": "application/json" },
            body: JSON.stringify({ query: ANILIST_Q, variables: { id: animeId } }),
            signal: AbortSignal.timeout(12000),
          }).then(r => r.json()).then(j => {
            const d = j.data?.Media;
            if (d) { setAnime(d); saveHistory(animeId, d.title?.romaji || "", d.coverImage?.large || "", ep, d.episodes || 0); }
          }).catch(() => {});
          return;
        }

        const aniRes = await fetch("https://graphql.anilist.co", {
          method: "POST", headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ query: ANILIST_Q, variables: { id: animeId } }),
          signal: AbortSignal.timeout(12000),
        });
        const d = (await aniRes.json()).data?.Media;
        setAnime(d);
        if (d) saveHistory(animeId, d.title?.romaji || "", d.coverImage?.large || "", ep, d.episodes || 0);
        setLoading(false);
        startSSE(d?.title?.romaji || "", d?.title?.english || "", d?.idMal || 0);
      } catch { setLoading(false); setStreamDone(true); }
    })();
    return () => { sseRef.current?.close(); sseRef.current = null; };
  }, [animeId, ep]);

  /* ── Auto-play ── */
  useEffect(() => {
    if (autoStarted.current || playing) return;
    const best = sources.find(s => (statuses[s.url] || "unknown") !== "dead");
    if (best) {
      autoStarted.current = true;
      setActive(best); setPlaying(true);
      if (best.site === "vidnest" && !best.directUrl) triggerBrowserExtract(best);
    }
  }, [sources, streamDone]);

  /* ── Browser extract ── */
  async function triggerBrowserExtract(src: Source) {
    if (src.directUrl) return;
    setBrowserExtracting(true);
    try {
      const res  = await fetch(`/api/anime/browser-extract?url=${encodeURIComponent(src.url)}&timeout=28`);
      const data = await res.json();
      let raw: string = data.directUrl || "";
      if (!raw) return;

      let finalUrl = raw, referer = src.url;
      if (raw.includes("animanga.fun/proxy")) {
        try {
          const proxyUrl = new URL(raw);
          const inner    = proxyUrl.searchParams.get("url");
          const hdrs     = JSON.parse(proxyUrl.searchParams.get("headers") || "{}");
          if (inner) { finalUrl = inner; referer = hdrs["Referer"] || hdrs["referer"] || src.url; }
        } catch {}
      }

      const isHls = finalUrl.includes(".m3u8");
      const proxyHls = `/api/anime/hls-proxy?url=${encodeURIComponent(finalUrl)}&ref=${encodeURIComponent(referer)}`;
      const updated: Source = { ...src, directUrl: proxyHls, directType: isHls ? "hls" : "mp4" };
      setActive(updated);
      setSources(prev => prev.map(s => s.url === src.url ? updated : s));
    } catch (e) {
      console.error("browser-extract failed", e);
    } finally {
      setBrowserExtracting(false);
    }
  }

  /* ── Select server ── */
  function selectServer(src: Source) {
    setActive(src); setPlaying(true);
    if (src.site === "vidnest" && !src.directUrl) triggerBrowserExtract(src);
  }

  /* ── Next source ── */
  function goNextSrc() {
    const cur = sourcesRef.current.indexOf(activeRef.current!);
    const all = sourcesRef.current;
    for (let i = cur + 1; i < all.length; i++) {
      if (statuses[all[i].url] !== "dead") { selectServer(all[i]); return; }
    }
  }

  /* ── Episode nav ── */
  function goEp(n: number) {
    navigate(`/watch?${new URLSearchParams({ anime: String(animeId), ep: String(n) })}`);
  }

  /* ── Back ── */
  function handleBack() { window.history.back(); }

  /* ── Refresh ── */
  function handleRefresh() {
    localStorage.removeItem(`srccache:${animeId}-${ep}`);
    window.location.reload();
  }

  /* ══════════════════════ RENDER ══════════════════════════════════ */

  /* Loading state */
  if (loading || (!streamDone && sources.length === 0)) {
    return (
      <LoadingScreen
        cover={cover} title={title} ep={ep} genres={genres}
        sourcesCount={sources.length} streamDone={streamDone}
        onSkip={sources.length > 0 ? () => {
          const best = sources[0];
          autoStarted.current = true;
          setActive(best); setPlaying(true);
          if (best.site === "vidnest" && !best.directUrl) triggerBrowserExtract(best);
        } : undefined}
      />
    );
  }

  /* No sources */
  if (streamDone && sources.length === 0) {
    return <NoSources onRefresh={handleRefresh} onBack={handleBack} />;
  }

  /* Player */
  if (playing && active) {
    return (
      <NetflixPlayer
        src={active}
        title={title} ep={ep} totalEps={totalEps}
        sources={sources} statuses={statuses}
        onBack={handleBack}
        onNextEp={() => ep < totalEps ? goEp(ep + 1) : undefined}
        onPrevEp={() => ep > 1 ? goEp(ep - 1) : undefined}
        onSelectSource={selectServer}
        onNextSrc={goNextSrc}
        browserExtracting={browserExtracting}
        streamDone={streamDone}
      />
    );
  }

  /* Still waiting for sources (should rarely reach here) */
  return (
    <LoadingScreen
      cover={cover} title={title} ep={ep} genres={genres}
      sourcesCount={sources.length} streamDone={streamDone}
      onSkip={sources.length > 0 ? () => {
        const best = sources[0];
        autoStarted.current = true;
        setActive(best); setPlaying(true);
      } : undefined}
    />
  );
}
