import { useState, useEffect, useRef, useCallback } from "react";
import { useLocation } from "wouter";
import {
  ChevronRight, ChevronLeft, Play, Pause, Loader2,
  AlertTriangle, RefreshCw, Volume2, VolumeX,
  Maximize2, Minimize2, SkipForward,
  List, X, Zap, CheckCircle2, XCircle, Signal,
  RotateCcw, RotateCw,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import Hls from "hls.js";

/* ══════════════════════════════════════ ANILIST QUERY ════════════ */
const ANILIST_Q = `query ($id: Int) {
  Media(id: $id, type: ANIME) {
    id idMal title { romaji english }
    episodes coverImage { large extraLarge }
    nextAiringEpisode { episode }
    bannerImage genres description(asHtml: false)
  }
}`;

/* ══════════════════════════════════════ TYPES ════════════════════ */
interface Source {
  name: string; url: string; quality: string; qualityRank: number; site: string;
  directUrl?: string; directType?: "hls" | "mp4";
}
type ProbeStatus = "unknown" | "testing" | "ok" | "dead";

/* ══════════════════════════════════════ CONSTANTS ════════════════ */
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

const GENRE_BG: Record<string, string> = {
  "Action":    "https://s4.anilist.co/file/anilistcdn/media/anime/banner/21459-YEFGheQDsxJHQ8bE.jpg",
  "Adventure": "https://s4.anilist.co/file/anilistcdn/media/anime/banner/113415-e1G39MX3vOSx.jpg",
  "Fantasy":   "https://s4.anilist.co/file/anilistcdn/media/anime/banner/101922-YfZFWRpWmEsm.jpg",
  "Romance":   "https://s4.anilist.co/file/anilistcdn/media/anime/banner/101921-KmrCkHJqkGaX.jpg",
  "default":   "https://s4.anilist.co/file/anilistcdn/media/anime/banner/21-YpzLs2jBPpyBY.jpg",
};

/* ══════════════════════════════════════ CACHE / HISTORY ══════════ */
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

/* ══════════════════════════════════════ FORMAT TIME ═════════════ */
function fmtTime(sec: number): string {
  if (!isFinite(sec) || sec < 0) return "0:00";
  const h = Math.floor(sec / 3600);
  const m = Math.floor((sec % 3600) / 60);
  const s = Math.floor(sec % 60);
  if (h > 0) return `${h}:${String(m).padStart(2, "0")}:${String(s).padStart(2, "0")}`;
  return `${m}:${String(s).padStart(2, "0")}`;
}

/* ══════════════════════════════════════ QUALITY BADGE ════════════ */
function QBadge({ q }: { q: string }) {
  const u = (q || "").toUpperCase();
  if (u.includes("1080") || u === "FHD")
    return <span className="text-[9px] font-black px-1.5 py-0.5 rounded bg-emerald-500/20 text-emerald-300 border border-emerald-500/25">1080p</span>;
  if (u.includes("720") || u === "HD")
    return <span className="text-[9px] font-black px-1.5 py-0.5 rounded bg-sky-500/20 text-sky-300 border border-sky-500/25">HD</span>;
  return <span className="text-[9px] font-black px-1.5 py-0.5 rounded bg-white/8 text-white/40 border border-white/10">SD</span>;
}

/* ══════════════════════════════════════ SERVER SHEET ════════════ */
function ServerSheet({ sources, activeUrl, statuses, onSelect, onClose }: {
  sources: Source[]; activeUrl: string;
  statuses: Record<string, ProbeStatus>;
  onSelect: (s: Source) => void; onClose: () => void;
}) {
  const live = sources.filter(s => (statuses[s.url] || "unknown") !== "dead" || s.url === activeUrl);
  return (
    <>
      <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
        className="absolute inset-0 z-40 bg-black/70 backdrop-blur-sm" onClick={onClose} />
      <motion.div initial={{ y: "100%" }} animate={{ y: 0 }} exit={{ y: "100%" }}
        transition={{ type: "spring", damping: 30, stiffness: 320 }}
        className="absolute bottom-0 left-0 right-0 z-50 rounded-t-3xl overflow-hidden"
        style={{ maxHeight: "70vh", background: "rgba(10,10,18,0.97)", borderTop: "1px solid rgba(255,255,255,0.07)" }}
        onClick={e => e.stopPropagation()}>
        {/* Handle */}
        <div className="flex justify-center pt-3 pb-1">
          <div className="w-9 h-1 rounded-full bg-white/12" />
        </div>
        {/* Header */}
        <div className="flex items-center justify-between px-5 pt-1 pb-4" dir="rtl">
          <p className="text-sm font-black text-white/90 font-['Cairo']">المصادر المتاحة</p>
          <button onClick={onClose} className="w-8 h-8 rounded-full bg-white/6 flex items-center justify-center active:scale-90">
            <X className="w-4 h-4 text-white/50" />
          </button>
        </div>
        {/* List */}
        <div className="overflow-y-auto px-4 pb-10 space-y-2" dir="rtl">
          {live.map(src => {
            const isActive = src.url === activeUrl;
            const st = statuses[src.url] || "unknown";
            const isDead = st === "dead";
            const hasUrl = !!src.directUrl;
            return (
              <button key={src.url} onClick={() => !isDead && onSelect(src)} disabled={isDead}
                className={`w-full flex items-center gap-3 px-4 py-3.5 rounded-2xl border transition-all active:scale-[0.98]
                  ${isActive
                    ? "bg-violet-500/15 border-violet-500/30"
                    : isDead
                    ? "opacity-20 bg-white/3 border-white/5 pointer-events-none"
                    : "bg-white/4 border-white/6 active:bg-white/7"}`}>
                <div className={`w-9 h-9 rounded-xl flex items-center justify-center shrink-0 border
                  ${isActive ? "bg-violet-500/25 border-violet-500/30"
                  : hasUrl   ? "bg-emerald-500/12 border-emerald-500/22"
                  : "bg-white/6 border-white/10"}`}>
                  {isActive    ? <CheckCircle2 className="w-4 h-4 text-violet-300" />
                  : isDead     ? <XCircle className="w-4 h-4 text-red-400/60" />
                  : st === "testing" ? <Loader2 className="w-4 h-4 text-amber-400 animate-spin" />
                  : st === "ok"      ? <Signal className="w-4 h-4 text-emerald-400" />
                  : hasUrl     ? <Zap className="w-4 h-4 text-emerald-400" />
                  : <Play className="w-3.5 h-3.5 text-white/35 fill-white/35" />}
                </div>
                <div className="flex-1 min-w-0">
                  <p className={`text-sm font-bold font-['Cairo'] truncate ${isActive ? "text-violet-200" : "text-white/80"}`}>{src.name}</p>
                  <p className="text-[10px] text-white/30 font-['Cairo'] mt-0.5">
                    {SITE_LABEL[src.site] || src.site}
                    {hasUrl && <span className="text-emerald-400/70"> · مباشر</span>}
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

/* ══════════════════════════════════════ SEEK RIPPLE ════════════ */
function SeekRipple({ side, show }: { side: "left" | "right"; show: boolean }) {
  return (
    <AnimatePresence>
      {show && (
        <motion.div
          initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
          transition={{ duration: 0.14 }}
          className={`absolute top-0 bottom-0 z-[11] w-2/5 flex items-center pointer-events-none
            ${side === "right" ? "right-0 justify-end pr-6" : "left-0 justify-start pl-6"}`}
          style={{
            background: side === "right"
              ? "radial-gradient(ellipse at 80% 50%, rgba(139,92,246,0.22) 0%, transparent 70%)"
              : "radial-gradient(ellipse at 20% 50%, rgba(139,92,246,0.22) 0%, transparent 70%)",
          }}>
          <div className="flex flex-col items-center gap-1">
            {side === "right"
              ? <RotateCw className="w-8 h-8 text-white/75 drop-shadow-lg" />
              : <RotateCcw className="w-8 h-8 text-white/75 drop-shadow-lg" />}
            <span className="text-white/60 text-[10px] font-bold font-['Cairo'] tracking-wide">10 ث</span>
          </div>
        </motion.div>
      )}
    </AnimatePresence>
  );
}

/* ══════════════════════════════════════ MAIN PLAYER ════════════ */
function NetflixPlayer({
  src, title, ep, totalEps, sources, statuses,
  onBack, onNextEp, onPrevEp, onSelectSource, onNextSrc,
  extracting, streamDone,
}: {
  src: Source; title: string; ep: number; totalEps: number;
  sources: Source[]; statuses: Record<string, ProbeStatus>;
  onBack: () => void; onNextEp: () => void; onPrevEp: () => void;
  onSelectSource: (s: Source) => void; onNextSrc: () => void;
  extracting: boolean; streamDone: boolean;
}) {
  const videoRef    = useRef<HTMLVideoElement>(null);
  const hlsRef      = useRef<Hls | null>(null);
  const hideTimer   = useRef<ReturnType<typeof setTimeout> | null>(null);
  const progressRef = useRef<HTMLDivElement>(null);
  const tapRef      = useRef<{ n: number; side: "l"|"r"|null; t: ReturnType<typeof setTimeout>|null }>({ n: 0, side: null, t: null });

  const [showCtrl,   setShowCtrl]   = useState(true);
  const [playing,    setPlaying]    = useState(false);
  const [buffering,  setBuffering]  = useState(true);
  const [failed,     setFailed]     = useState(false);
  const [skipping,   setSkipping]   = useState(false);
  const [progress,   setProgress]   = useState(0);
  const [buffered,   setBuffered]   = useState(0);
  const [curTime,    setCurTime]    = useState(0);
  const [duration,   setDuration]   = useState(0);
  const [muted,      setMuted]      = useState(false);
  const [fs,         setFs]         = useState(false);
  const [showSheet,  setShowSheet]  = useState(false);
  const [seekFlash,  setSeekFlash]  = useState<{ side: "left"|"right"; id: number }|null>(null);

  const [attempt, setAttempt] = useState<"direct"|"proxy">("direct");

  const isHls   = src.directType === "hls";
  const hlsUrl  = `/api/anime/hls-proxy?url=${encodeURIComponent(src.directUrl||"")}&ref=${encodeURIComponent(src.url)}`;
  const vidUrl  = attempt === "direct" ? (src.directUrl || "") : `/api/anime/video-proxy?url=${encodeURIComponent(src.directUrl||"")}&ref=${encodeURIComponent(src.url)}`;
  const playUrl = isHls ? hlsUrl : vidUrl;

  /* ── orientation ── */
  useEffect(() => {
    (screen.orientation as any)?.lock?.("landscape")?.catch?.(() => {});
    return () => { try { (screen.orientation as any)?.unlock?.(); } catch {} };
  }, []);

  /* ── HLS / MP4 setup ── */
  useEffect(() => {
    setFailed(false); setBuffering(true); setProgress(0);
    setCurTime(0); setDuration(0); setAttempt("direct"); setPlaying(false);
    if (!src.directUrl) return;

    const v = videoRef.current; if (!v) return;
    hlsRef.current?.destroy(); hlsRef.current = null;

    if (isHls && Hls.isSupported()) {
      const hls = new Hls({ enableWorker: true, maxBufferLength: 30, maxMaxBufferLength: 60, fragLoadingTimeOut: 20000, manifestLoadingTimeOut: 15000 });
      hlsRef.current = hls;
      hls.loadSource(playUrl);
      hls.attachMedia(v);
      hls.on(Hls.Events.MANIFEST_PARSED, () => { v.play().catch(() => {}); });
      hls.on(Hls.Events.ERROR, (_, d) => { if (d.fatal) handleFail(); });
    } else if (isHls && v.canPlayType("application/vnd.apple.mpegurl")) {
      v.src = playUrl; v.play().catch(() => {});
    } else if (!isHls) {
      v.src = playUrl; v.load(); v.play().catch(() => {});
    } else {
      handleFail();
    }
    return () => { hlsRef.current?.destroy(); hlsRef.current = null; };
  }, [src.url, src.directUrl, attempt]);

  /* ── When failed → auto-skip ── */
  useEffect(() => {
    if (!failed) return;
    setSkipping(true);
    const t = setTimeout(() => { setSkipping(false); onNextSrc(); }, 1400);
    return () => clearTimeout(t);
  }, [failed]);

  function handleFail() {
    if (!isHls && attempt === "direct") { setAttempt("proxy"); return; }
    setFailed(true); setBuffering(false);
  }

  /* ── Controls hide ── */
  const scheduleHide = useCallback((ms = 3500) => {
    if (hideTimer.current) clearTimeout(hideTimer.current);
    hideTimer.current = setTimeout(() => setShowCtrl(false), ms);
  }, []);
  const revealCtrl = useCallback((ms?: number) => {
    setShowCtrl(true); scheduleHide(ms);
  }, [scheduleHide]);

  useEffect(() => {
    revealCtrl(); setShowCtrl(true);
    return () => { if (hideTimer.current) clearTimeout(hideTimer.current); };
  }, [src.url]);

  /* ── Tap handler ── */
  function handleTap(e: React.MouseEvent | React.TouchEvent) {
    if (showSheet) return;
    const rect = (e.currentTarget as HTMLElement).getBoundingClientRect();
    const cX = "touches" in e ? e.changedTouches[0].clientX : (e as React.MouseEvent).clientX;
    const side: "l"|"r" = (cX - rect.left) < rect.width / 2 ? "l" : "r";
    tapRef.current.n++;
    tapRef.current.side = side;
    if (tapRef.current.t) clearTimeout(tapRef.current.t);
    tapRef.current.t = setTimeout(() => {
      const n = tapRef.current.n; tapRef.current.n = 0; tapRef.current.t = null;
      if (n >= 2) {
        const v = videoRef.current; if (!v) return;
        const secs = n * 10;
        if (tapRef.current.side === "r") v.currentTime = Math.min(v.duration || 0, v.currentTime + secs);
        else v.currentTime = Math.max(0, v.currentTime - secs);
        setSeekFlash({ side: tapRef.current.side === "r" ? "right" : "left", id: Date.now() });
        revealCtrl();
      } else {
        if (showCtrl) { if (hideTimer.current) clearTimeout(hideTimer.current); setShowCtrl(false); }
        else revealCtrl();
      }
    }, 230);
  }

  /* ── Progress seek ── */
  function seekTo(e: React.MouseEvent<HTMLDivElement>) {
    const v = videoRef.current; if (!v || !v.duration) return;
    const rect = (e.currentTarget as HTMLElement).getBoundingClientRect();
    v.currentTime = Math.max(0, Math.min(1, (e.clientX - rect.left) / rect.width)) * v.duration;
    revealCtrl();
  }

  /* ── Play/pause toggle ── */
  function togglePlay() {
    const v = videoRef.current; if (!v) return;
    v.paused ? v.play().catch(() => {}) : v.pause();
    revealCtrl();
  }

  /* ── Mute ── */
  function toggleMute() {
    const v = videoRef.current; if (!v) return;
    v.muted = !v.muted; setMuted(v.muted);
  }

  /* ── Fullscreen ── */
  function toggleFs() {
    const el = document.getElementById("nova-player");
    if (!el) return;
    if (!document.fullscreenElement) el.requestFullscreen?.().catch(() => {});
    else document.exitFullscreen?.().catch(() => {});
  }
  useEffect(() => {
    const fn = () => setFs(!!document.fullscreenElement);
    document.addEventListener("fullscreenchange", fn);
    return () => document.removeEventListener("fullscreenchange", fn);
  }, []);

  /* ── Time ── */
  function onTimeUpdate() {
    const v = videoRef.current; if (!v) return;
    setCurTime(v.currentTime); setDuration(v.duration || 0);
    setProgress(v.duration ? v.currentTime / v.duration : 0);
    if (v.buffered.length > 0)
      setBuffered(v.duration ? v.buffered.end(v.buffered.length - 1) / v.duration : 0);
  }

  const showLoading = buffering && !failed && !extracting && !!src.directUrl;
  const liveSrc  = sources.filter(s => statuses[s.url] !== "dead").length;

  return (
    <div id="nova-player" className="fixed inset-0 z-50 bg-black select-none" dir="ltr">

      {/* ── VIDEO ── */}
      {src.directUrl && (
        <video
          ref={videoRef}
          className="absolute inset-0 w-full h-full"
          style={{ objectFit: "contain" }}
          playsInline autoPlay
          onCanPlay={() => { setBuffering(false); revealCtrl(4000); }}
          onPlay={() => { setPlaying(true); scheduleHide(); }}
          onPause={() => setPlaying(false)}
          onWaiting={() => setBuffering(true)}
          onPlaying={() => setBuffering(false)}
          onTimeUpdate={onTimeUpdate}
          onError={handleFail}
          onEnded={() => setPlaying(false)}
        />
      )}

      {/* ── EXTRACTING OVERLAY ── */}
      <AnimatePresence>
        {(extracting || (!src.directUrl && !failed)) && (
          <motion.div key="extract" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            className="absolute inset-0 z-[8] bg-black/92 flex flex-col items-center justify-center gap-6">
            <div className="relative w-20 h-20">
              <motion.div className="absolute inset-0 rounded-full border-2 border-violet-500/15 border-t-violet-400"
                animate={{ rotate: 360 }} transition={{ duration: 1.6, repeat: Infinity, ease: "linear" }} />
              <motion.div className="absolute inset-3 rounded-full border border-violet-400/20 border-b-violet-300/60"
                animate={{ rotate: -360 }} transition={{ duration: 2.4, repeat: Infinity, ease: "linear" }} />
              <div className="absolute inset-0 flex items-center justify-center">
                <motion.div className="w-3 h-3 rounded-full bg-violet-400"
                  animate={{ scale: [0.8, 1.2, 0.8], opacity: [0.6, 1, 0.6] }}
                  transition={{ duration: 1.8, repeat: Infinity }} />
              </div>
            </div>
            <p className="text-white/55 text-[13px] font-['Cairo'] tracking-wide" dir="rtl">يُحضَّر الفيديو…</p>
          </motion.div>
        )}
      </AnimatePresence>

      {/* ── BUFFERING SPINNER ── */}
      <AnimatePresence>
        {showLoading && (
          <motion.div key="buf" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            className="absolute inset-0 z-[7] flex items-center justify-center pointer-events-none">
            <motion.div className="w-12 h-12 rounded-full border-2 border-white/8 border-t-white/55"
              animate={{ rotate: 360 }} transition={{ duration: 0.9, repeat: Infinity, ease: "linear" }} />
          </motion.div>
        )}
      </AnimatePresence>

      {/* ── SKIPPING OVERLAY ── */}
      <AnimatePresence>
        {skipping && (
          <motion.div key="skip" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            className="absolute inset-0 z-[9] bg-black/85 flex flex-col items-center justify-center gap-4">
            <SkipForward className="w-10 h-10 text-violet-300" />
            <p className="text-white/60 text-sm font-['Cairo']" dir="rtl">الانتقال للمصدر التالي…</p>
          </motion.div>
        )}
      </AnimatePresence>

      {/* ── SEEK RIPPLE ── */}
      <SeekRipple side="left"  show={seekFlash?.side === "left"} />
      <SeekRipple side="right" show={seekFlash?.side === "right"} />

      {/* ── TAP AREA ── */}
      <div className="absolute inset-0 z-[10]"
        style={{ pointerEvents: showSheet ? "none" : "auto", touchAction: "manipulation", WebkitTapHighlightColor: "transparent" }}
        onClick={handleTap} />

      {/* ════════════════════════ CONTROLS ═══════════════════════════ */}
      <AnimatePresence>
        {showCtrl && !showSheet && (
          <motion.div key="ctrl" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            transition={{ duration: 0.2 }} className="absolute inset-0 z-[20] pointer-events-none">

            {/* ── TOP BAR ── */}
            <div className="absolute top-0 left-0 right-0 flex items-center gap-3 px-4 pointer-events-auto"
              style={{
                paddingTop: "max(16px, env(safe-area-inset-top))", paddingBottom: 20,
                background: "linear-gradient(to bottom, rgba(0,0,0,0.88) 0%, rgba(0,0,0,0.3) 70%, transparent 100%)",
              }}>
              {/* Servers */}
              <button onClick={e => { e.stopPropagation(); setShowSheet(true); }}
                className="relative w-10 h-10 rounded-2xl bg-white/8 backdrop-blur-md border border-white/10 flex items-center justify-center shrink-0 active:scale-90 pointer-events-auto">
                <List className="w-4.5 h-4.5 text-white/75" />
                {liveSrc > 0 && (
                  <span className="absolute -top-1 -right-1 min-w-[16px] h-4 rounded-full bg-violet-500 text-white text-[9px] font-black flex items-center justify-center px-1">{liveSrc}</span>
                )}
              </button>

              {/* Title */}
              <div className="flex-1 min-w-0 text-center" dir="rtl">
                <p className="text-white text-[14px] font-black font-['Cairo'] truncate leading-tight">{title}</p>
                <p className="text-white/40 text-[11px] font-['Cairo'] leading-tight mt-0.5">
                  {ep === 0 ? "فيلم" : `الحلقة ${ep}`}
                  {src.directUrl && <span className="text-emerald-400/70"> · مباشر</span>}
                </p>
              </div>

              {/* Back */}
              <button onClick={e => { e.stopPropagation(); onBack(); }}
                className="w-10 h-10 rounded-2xl bg-white/8 backdrop-blur-md border border-white/10 flex items-center justify-center shrink-0 active:scale-90 pointer-events-auto">
                <ChevronRight className="w-5 h-5 text-white" />
              </button>
            </div>

            {/* ── CENTER CONTROLS ── */}
            <div className="absolute inset-0 flex items-center justify-center gap-10 pointer-events-auto">
              {/* Prev episode */}
              <button onClick={e => { e.stopPropagation(); onPrevEp(); }} disabled={ep <= 1}
                className="w-12 h-12 rounded-full bg-black/30 backdrop-blur-sm border border-white/8 flex items-center justify-center disabled:opacity-15 active:scale-90 transition-all">
                <ChevronRight className="w-5 h-5 text-white/80" />
              </button>

              {/* Play / Pause */}
              <button onClick={e => { e.stopPropagation(); if (src.directUrl) togglePlay(); revealCtrl(); }}
                className="w-[68px] h-[68px] rounded-full bg-white/14 backdrop-blur-md border border-white/18 flex items-center justify-center active:scale-90 shadow-2xl transition-all">
                {showLoading
                  ? <Loader2 className="w-7 h-7 text-white animate-spin" />
                  : playing
                  ? <Pause className="w-7 h-7 text-white fill-white" />
                  : <Play className="w-7 h-7 text-white fill-white ml-1" />}
              </button>

              {/* Next episode */}
              <button onClick={e => { e.stopPropagation(); onNextEp(); }} disabled={ep >= totalEps && totalEps > 0}
                className="w-12 h-12 rounded-full bg-black/30 backdrop-blur-sm border border-white/8 flex items-center justify-center disabled:opacity-15 active:scale-90 transition-all">
                <ChevronLeft className="w-5 h-5 text-white/80" />
              </button>
            </div>

            {/* ── BOTTOM BAR ── */}
            <div className="absolute bottom-0 left-0 right-0 pointer-events-auto"
              style={{
                paddingBottom: "max(16px, env(safe-area-inset-bottom))",
                background: "linear-gradient(to top, rgba(0,0,0,0.92) 0%, rgba(0,0,0,0.5) 55%, transparent 100%)",
              }}>

              {/* Progress bar */}
              {src.directUrl && (
                <div className="px-4 pt-3 pb-1">
                  <div className="flex items-center gap-3">
                    <span className="text-white/50 text-[11px] font-mono tabular-nums shrink-0">{fmtTime(curTime)}</span>
                    <div className="flex-1 relative h-8 flex items-center cursor-pointer group" onClick={seekTo} ref={progressRef}>
                      <div className="w-full h-[3px] rounded-full bg-white/15 relative overflow-visible group-hover:h-[5px] transition-all duration-150">
                        {/* Buffered */}
                        <div className="absolute inset-y-0 left-0 bg-white/18 rounded-full transition-all duration-300" style={{ width: `${buffered * 100}%` }} />
                        {/* Progress */}
                        <div className="absolute inset-y-0 left-0 bg-gradient-to-r from-violet-500 to-fuchsia-400 rounded-full transition-all" style={{ width: `${progress * 100}%` }} />
                      </div>
                      {/* Thumb */}
                      <div className="absolute w-4 h-4 rounded-full bg-white shadow-lg -translate-x-1/2 -translate-y-1/2 top-1/2 pointer-events-none opacity-0 group-hover:opacity-100 transition-all"
                        style={{ left: `${progress * 100}%` }} />
                    </div>
                    <span className="text-white/35 text-[11px] font-mono tabular-nums shrink-0">{fmtTime(duration)}</span>
                  </div>
                </div>
              )}

              {/* Controls row */}
              <div className="flex items-center gap-2 px-4 pb-1 pt-1">
                {/* Volume */}
                <button onClick={e => { e.stopPropagation(); toggleMute(); revealCtrl(); }}
                  className="w-9 h-9 rounded-xl bg-black/25 flex items-center justify-center active:scale-90">
                  {muted ? <VolumeX className="w-4 h-4 text-white/55" /> : <Volume2 className="w-4 h-4 text-white/55" />}
                </button>

                {/* Next source */}
                <button onClick={e => { e.stopPropagation(); onNextSrc(); revealCtrl(); }}
                  className="flex items-center gap-1.5 px-3 py-2 rounded-xl bg-black/25 border border-white/7 text-white/50 text-[11px] font-bold font-['Cairo'] active:scale-95">
                  <SkipForward className="w-3.5 h-3.5" />
                  <span dir="rtl">التالي</span>
                </button>

                <div className="flex-1" />

                {/* Loading indicator */}
                {!streamDone && (
                  <div className="flex items-center gap-1.5 px-2.5 py-1.5 rounded-lg bg-amber-500/8 border border-amber-500/12">
                    <motion.div className="w-1.5 h-1.5 rounded-full bg-amber-400"
                      animate={{ opacity: [0.4, 1, 0.4] }} transition={{ duration: 1.2, repeat: Infinity }} />
                    <span className="text-amber-300/80 text-[10px] font-['Cairo']" dir="rtl">{sources.length}</span>
                  </div>
                )}

                {/* Fullscreen */}
                <button onClick={e => { e.stopPropagation(); toggleFs(); revealCtrl(); }}
                  className="w-9 h-9 rounded-xl bg-black/25 flex items-center justify-center active:scale-90">
                  {fs ? <Minimize2 className="w-4 h-4 text-white/55" /> : <Maximize2 className="w-4 h-4 text-white/55" />}
                </button>
              </div>
            </div>

          </motion.div>
        )}
      </AnimatePresence>

      {/* ── SERVER SHEET ── */}
      <AnimatePresence>
        {showSheet && (
          <ServerSheet
            sources={sources} activeUrl={src.url} statuses={statuses}
            onSelect={s => { onSelectSource(s); setShowSheet(false); revealCtrl(5000); }}
            onClose={() => setShowSheet(false)}
          />
        )}
      </AnimatePresence>
    </div>
  );
}

/* ══════════════════════════════════════ LOADING SCREEN ══════════ */
function LoadingScreen({ cover, title, ep, genres, sourcesCount, streamDone, onPlay }: {
  cover: string; title: string; ep: number; genres: string[]; sourcesCount: number;
  streamDone: boolean; onPlay?: () => void;
}) {
  const bg = GENRE_BG[genres?.[0]] || GENRE_BG["default"];
  return (
    <div className="fixed inset-0 z-50 flex flex-col items-center justify-center bg-[#09090f] overflow-hidden" dir="rtl">
      <div className="absolute inset-0">
        <img src={cover || bg} alt="" className="w-full h-full object-cover scale-110"
          style={{ filter: "blur(55px) brightness(0.1) saturate(1.6)" }} />
      </div>
      <div className="absolute inset-0" style={{ background: "linear-gradient(to bottom, rgba(0,0,0,0.5) 0%, #09090f 60%)" }} />

      <div className="relative z-10 flex flex-col items-center gap-8 px-6 text-center w-full max-w-xs">
        {cover && (
          <motion.div initial={{ y: 24, opacity: 0, scale: 0.88 }} animate={{ y: 0, opacity: 1, scale: 1 }}
            transition={{ duration: 0.65, ease: [0.22, 1, 0.36, 1] }} className="relative">
            <div className="absolute -inset-10 rounded-full blur-[70px] opacity-40"
              style={{ background: "radial-gradient(circle,rgba(139,92,246,0.8),transparent 70%)" }} />
            <img src={cover} alt="" className="relative w-32 h-48 object-cover rounded-2xl shadow-2xl"
              style={{ border: "1px solid rgba(139,92,246,0.18)" }} />
            <div className="absolute -bottom-3 left-1/2 -translate-x-1/2 bg-violet-600 text-white text-[11px] font-black px-4 py-1 rounded-full shadow-lg whitespace-nowrap">
              {ep === 0 ? "فيلم" : `الحلقة ${ep}`}
            </div>
          </motion.div>
        )}

        <motion.div initial={{ opacity: 0, y: 12 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: 0.28 }}
          className="flex flex-col items-center gap-4">
          <h2 className="text-white text-[15px] font-black font-['Cairo'] line-clamp-2 leading-snug">{title}</h2>

          {sourcesCount > 0 ? (
            <>
              <p className="text-white/40 text-[12px] font-['Cairo']">{sourcesCount} مصدر · جاهز للتشغيل</p>
              {onPlay && (
                <motion.button onClick={onPlay} whileTap={{ scale: 0.95 }}
                  className="flex items-center gap-2.5 px-6 py-3 rounded-2xl bg-violet-600 text-white text-[13px] font-bold font-['Cairo'] shadow-xl shadow-violet-900/50">
                  <Play className="w-4 h-4 fill-white" /> تشغيل الآن
                </motion.button>
              )}
            </>
          ) : (
            <p className="text-white/30 text-[12px] font-['Cairo']">
              {streamDone ? "لا توجد مصادر متاحة لهذه الحلقة" : "يجري البحث عن المصادر…"}
            </p>
          )}
        </motion.div>

        {!streamDone && (
          <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} transition={{ delay: 0.5 }}
            className="flex items-center gap-1.5">
            {[0, 1, 2, 3, 4].map(i => (
              <motion.div key={i} className="w-1.5 h-1.5 rounded-full bg-violet-500"
                animate={{ opacity: [0.2, 1, 0.2], scale: [0.7, 1.3, 0.7] }}
                transition={{ duration: 1.3, repeat: Infinity, delay: i * 0.18 }} />
            ))}
          </motion.div>
        )}
      </div>
    </div>
  );
}

/* ══════════════════════════════════════ NO SOURCES ══════════════ */
function NoSources({ onRefresh, onBack }: { onRefresh: () => void; onBack: () => void }) {
  return (
    <div className="fixed inset-0 z-50 flex flex-col items-center justify-center gap-6 bg-[#09090f]" dir="rtl">
      <div className="w-16 h-16 rounded-2xl bg-white/4 border border-white/7 flex items-center justify-center">
        <AlertTriangle className="w-6 h-6 text-white/20" />
      </div>
      <div className="text-center">
        <p className="text-white/55 text-[14px] font-black font-['Cairo']">لا توجد مصادر متاحة</p>
        <p className="text-white/25 text-[12px] mt-1 font-['Cairo']">هذه الحلقة غير متوفرة حالياً</p>
      </div>
      <div className="flex items-center gap-3">
        <button onClick={onBack} className="flex items-center gap-2 px-4 py-2.5 rounded-xl bg-white/5 border border-white/9 text-white/55 text-[13px] font-bold font-['Cairo']">
          <ChevronRight className="w-4 h-4" /> رجوع
        </button>
        <button onClick={onRefresh} className="flex items-center gap-2 px-4 py-2.5 rounded-xl bg-violet-600 text-white text-[13px] font-bold font-['Cairo']">
          <RefreshCw className="w-4 h-4" /> إعادة المحاولة
        </button>
      </div>
    </div>
  );
}

/* ══════════════════════════════════════ WATCH PAGE ══════════════ */
export default function WatchPage() {
  const [, navigate] = useLocation();
  const sp        = new URLSearchParams(window.location.search);
  const animeId   = parseInt(sp.get("anime") || "0");
  const ep        = parseInt(sp.get("ep") || "1");
  const titleParam = sp.get("title") || "";

  const [anime,      setAnime]      = useState<any>(null);
  const [sources,    setSources]    = useState<Source[]>([]);
  const [active,     setActive]     = useState<Source | null>(null);
  const [statuses,   setStatuses]   = useState<Record<string, ProbeStatus>>({});
  const [pageLoading, setPageLoading] = useState(true);
  const [streamDone, setStreamDone] = useState(false);
  const [playing,    setPlaying]    = useState(false);
  const [extracting, setExtracting] = useState(false);

  const sseRef      = useRef<EventSource | null>(null);
  const seenUrls    = useRef(new Set<string>());
  const autoStarted = useRef(false);
  const sourcesRef  = useRef<Source[]>([]);
  const activeRef   = useRef<Source | null>(null);

  const title    = anime?.title?.romaji || anime?.title?.english || titleParam || "أنمي";
  const totalEps = anime?.episodes || anime?.nextAiringEpisode?.episode || 999;
  const cover    = anime?.coverImage?.large || "";
  const genres   = anime?.genres || [];

  useEffect(() => { sourcesRef.current = sources; }, [sources]);
  useEffect(() => { activeRef.current  = active;  }, [active]);

  /* ── Sorting ── */
  function serverPriority(s: Source) {
    if (s.directUrl) return 15;
    const sc: Record<string, number> = {
      shahiid: 13, animelek: 12, animedar: 11, vidnest: 10, animapahe: 9,
      animephoenix: 8, anime4up: 8, myanime: 7, animekayan: 7,
      witanime: 6, animerco: 6, animegg: 5,
    };
    return sc[s.site] || 3;
  }
  function sortSources(srcs: Source[]): Source[] {
    return [...srcs].sort((a, b) => {
      const ad = a.directUrl ? 1 : 0, bd = b.directUrl ? 1 : 0;
      if (bd !== ad) return bd - ad;
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

  /* ── SSE ── */
  function startSSE(romaji: string, english: string, malId: number) {
    const p = new URLSearchParams({ ep: String(ep), title: romaji, english, anilistId: String(animeId), malId: String(malId) });
    const es = new EventSource(`/api/anime/sources-stream?${p}`);
    sseRef.current = es;
    const acc: Source[] = [];

    es.onmessage = (e) => {
      if (e.data === "[DONE]") {
        es.close(); sseRef.current = null;
        setStreamDone(true);
        setSrcCache(`${animeId}-${ep}`, acc);
        return;
      }
      try {
        const src: Source = JSON.parse(e.data);
        const key = src.directUrl || src.url;
        if (!src.url || seenUrls.current.has(key)) return;
        seenUrls.current.add(key);
        acc.push(src);
        setSources(prev => dedupSources(sortSources([...prev, src])));
        setStatuses(prev => ({ ...prev, [src.url]: "unknown" }));
      } catch {}
    };
    es.onerror = () => { es.close(); sseRef.current = null; setStreamDone(true); };
  }

  /* ── Init ── */
  useEffect(() => {
    if (!animeId) { setPageLoading(false); return; }
    setPageLoading(true); setSources([]); setActive(null); setStatuses({});
    setStreamDone(false); setPlaying(false);
    seenUrls.current.clear(); autoStarted.current = false;
    sseRef.current?.close();

    (async () => {
      try {
        const cached = getSrcCache(`${animeId}-${ep}`);
        if (cached && cached.length > 0) {
          setSources(cached);
          const init: Record<string, ProbeStatus> = {};
          cached.forEach(s => { init[s.url] = "unknown"; });
          setStatuses(init); setPageLoading(false); setStreamDone(true);
          return;
        }

        if (titleParam) {
          setPageLoading(false);
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

        const res = await fetch("https://graphql.anilist.co", {
          method: "POST", headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ query: ANILIST_Q, variables: { id: animeId } }),
          signal: AbortSignal.timeout(12000),
        });
        const d = (await res.json()).data?.Media;
        setAnime(d);
        if (d) saveHistory(animeId, d.title?.romaji || "", d.coverImage?.large || "", ep, d.episodes || 0);
        setPageLoading(false);
        startSSE(d?.title?.romaji || "", d?.title?.english || "", d?.idMal || 0);
      } catch { setPageLoading(false); setStreamDone(true); }
    })();
    return () => { sseRef.current?.close(); sseRef.current = null; };
  }, [animeId, ep]);

  /* ── Auto-play: prefer sources with directUrl ── */
  useEffect(() => {
    if (autoStarted.current || playing) return;
    // First try: source with directUrl
    const withUrl = sources.find(s => s.directUrl && statuses[s.url] !== "dead");
    if (withUrl) {
      autoStarted.current = true;
      setActive(withUrl); setPlaying(true);
      return;
    }
    // Second try: vidnest for browser extract (only when SSE stream still open or we have vidnest sources)
    const vn = sources.find(s => s.site === "vidnest" && statuses[s.url] !== "dead" && !s.directUrl);
    if (vn && !extracting) {
      autoStarted.current = true;
      setActive(vn); setPlaying(true);
      triggerExtract(vn);
    }
  }, [sources, statuses, streamDone]);

  /* ── Browser extract (vidnest only) ── */
  async function triggerExtract(src: Source) {
    if (src.directUrl || extracting) return;
    setExtracting(true);
    try {
      const res  = await fetch(`/api/anime/browser-extract?url=${encodeURIComponent(src.url)}&timeout=28`);
      const data = await res.json();
      let raw: string = data.directUrl || "";
      if (!raw) { setExtracting(false); goNextSrc(); return; }

      let finalUrl = raw, ref = src.url;
      if (raw.includes("animanga.fun/proxy")) {
        try {
          const pu  = new URL(raw);
          const inn = pu.searchParams.get("url");
          const hdr = JSON.parse(pu.searchParams.get("headers") || "{}");
          if (inn) { finalUrl = inn; ref = hdr["Referer"] || hdr["referer"] || src.url; }
        } catch {}
      }

      const isHls  = finalUrl.includes(".m3u8");
      const proxy  = `/api/anime/hls-proxy?url=${encodeURIComponent(finalUrl)}&ref=${encodeURIComponent(ref)}`;
      const updated: Source = { ...src, directUrl: isHls ? proxy : finalUrl, directType: isHls ? "hls" : "mp4" };
      setActive(updated);
      setSources(prev => prev.map(s => s.url === src.url ? updated : s));
    } catch {
      goNextSrc();
    } finally {
      setExtracting(false);
    }
  }

  /* ── Select server ── */
  function selectServer(src: Source) {
    setActive(src); setPlaying(true);
    if (src.site === "vidnest" && !src.directUrl) triggerExtract(src);
  }

  /* ── Next source (skip sources without directUrl unless vidnest) ── */
  function goNextSrc() {
    const all = sourcesRef.current;
    const cur = active ? all.indexOf(activeRef.current!) : -1;
    for (let i = cur + 1; i < all.length; i++) {
      const s = all[i];
      if (statuses[s.url] === "dead") continue;
      if (s.directUrl || s.site === "vidnest") { selectServer(s); return; }
    }
  }

  /* ── Episode nav ── */
  function goEp(n: number) {
    navigate(`/watch?${new URLSearchParams({ anime: String(animeId), ep: String(n), title })}`);
  }

  function handleBack() { window.history.back(); }
  function handleRefresh() { localStorage.removeItem(`srccache:${animeId}-${ep}`); window.location.reload(); }

  /* ════════ RENDER ════════════════════════════════════════════════ */

  /* Loading */
  if (pageLoading || (!streamDone && sources.length === 0)) {
    return (
      <LoadingScreen cover={cover} title={title} ep={ep} genres={genres}
        sourcesCount={sources.length} streamDone={streamDone}
        onPlay={sources.length > 0 ? () => {
          const best = sources.find(s => s.directUrl) || sources[0];
          autoStarted.current = true;
          setActive(best); setPlaying(true);
          if (best.site === "vidnest" && !best.directUrl) triggerExtract(best);
        } : undefined} />
    );
  }

  /* No sources */
  if (streamDone && sources.length === 0)
    return <NoSources onRefresh={handleRefresh} onBack={handleBack} />;

  /* Player */
  if (playing && active) {
    return (
      <NetflixPlayer
        src={active} title={title} ep={ep} totalEps={totalEps}
        sources={sources} statuses={statuses}
        onBack={handleBack}
        onNextEp={() => ep < totalEps ? goEp(ep + 1) : undefined}
        onPrevEp={() => ep > 1 ? goEp(ep - 1) : undefined}
        onSelectSource={selectServer}
        onNextSrc={goNextSrc}
        extracting={extracting}
        streamDone={streamDone}
      />
    );
  }

  /* Waiting */
  return (
    <LoadingScreen cover={cover} title={title} ep={ep} genres={genres}
      sourcesCount={sources.length} streamDone={streamDone}
      onPlay={sources.length > 0 ? () => {
        const best = sources.find(s => s.directUrl) || sources[0];
        autoStarted.current = true;
        setActive(best); setPlaying(true);
      } : undefined} />
  );
}
