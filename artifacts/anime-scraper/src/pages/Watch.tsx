import { useState, useEffect, useRef, useCallback } from "react";
import { useLocation } from "wouter";
import {
  ChevronRight, ChevronLeft, Loader2, Play, Pause,
  AlertTriangle, RefreshCw, CheckCircle2, XCircle,
  Maximize2, List, X, WifiOff, SkipForward,
  MonitorPlay, Zap, RotateCcw, Signal,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import Hls from "hls.js";

const ANILIST_Q = `query ($id: Int) {
  Media(id: $id, type: ANIME) {
    id idMal title { romaji english }
    episodes coverImage { large extraLarge }
    nextAiringEpisode { episode }
    bannerImage genres
  }
}`;

interface Source {
  name: string; url: string; quality: string; qualityRank: number; site: string;
  directUrl?: string; directType?: "hls" | "mp4";
}
type ProbeStatus = "unknown" | "testing" | "ok" | "dead";

const SITE_LABEL: Record<string, string> = {
  vidnest:      "AnimePahe",
  animapahe:    "AnimePahe",
  shahiid:      "شاهيد أنمي",
  animegg:      "AnimeGG",
  animelek:     "انمي ليك",
  animedar:     "أنمي دار",
  allanime:     "AllAnime",
  anime4up:     "Anime4up",
  animephoenix: "AnimePhoenix",
  myanime:      "MyAnime",
  animekayan:   "AnimeKayan",
  db: "مخزن", cached: "مخزن",
};

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

const getCache  = (k: string) => localStorage.getItem(k) ?? "";
const setCache  = (k: string, v: string) => localStorage.setItem(k, v);

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

function QBadge({ q }: { q: string }) {
  const u = (q || "").toUpperCase();
  if (u.includes("1080") || u === "FHD")
    return <span className="text-[9px] font-black px-1.5 py-0.5 rounded bg-emerald-500/20 text-emerald-300 border border-emerald-500/25">1080p</span>;
  if (u.includes("720") || u === "HD")
    return <span className="text-[9px] font-black px-1.5 py-0.5 rounded bg-sky-500/20 text-sky-300 border border-sky-500/25">HD</span>;
  return <span className="text-[9px] font-black px-1.5 py-0.5 rounded bg-white/8 text-white/40 border border-white/10">SD</span>;
}

/* ══════════════════════════════════════════════════════
   SERVER SHEET (bottom drawer)
══════════════════════════════════════════════════════ */
function ServerSheet({ sources, activeIdx, statuses, onSelect, onClose }: {
  sources: Source[]; activeIdx: number;
  statuses: Record<string, ProbeStatus>;
  onSelect: (s: Source) => void; onClose: () => void;
}) {
  return (
    <>
      <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
        className="absolute inset-0 z-40 bg-black/70 backdrop-blur-sm" onClick={onClose} />
      <motion.div
        initial={{ y: "100%" }} animate={{ y: 0 }} exit={{ y: "100%" }}
        transition={{ type: "spring", damping: 32, stiffness: 340 }}
        className="absolute bottom-0 left-0 right-0 z-50 rounded-t-[28px] border-t border-white/8 max-h-[78vh] flex flex-col overflow-hidden"
        style={{ background: "linear-gradient(160deg,#111118 0%,#0d0d14 100%)" }}
        onClick={e => e.stopPropagation()}
      >
        <div className="flex justify-center pt-3 pb-1 shrink-0">
          <div className="w-10 h-1 rounded-full bg-white/15" />
        </div>
        <div className="flex items-center justify-between px-5 py-3 shrink-0 border-b border-white/6" dir="rtl">
          <p className="text-sm font-black text-white font-['Cairo']">
            السيرفرات ({sources.filter(s => (statuses[s.url] || "unknown") !== "dead").length})
          </p>
          <button onClick={onClose} className="w-8 h-8 rounded-full bg-white/8 flex items-center justify-center active:scale-90">
            <X className="w-4 h-4 text-white/60" />
          </button>
        </div>
        <div className="overflow-y-auto px-4 py-3 space-y-2 pb-10">
          {sources.filter((_src, i) => (statuses[sources[i].url] || "unknown") !== "dead" || i === activeIdx).map((src, i) => {
            const realIdx = sources.indexOf(src);
            const isActive = realIdx === activeIdx;
            const st = statuses[src.url] || "unknown";
            const isDead = st === "dead";
            return (
              <button
                key={src.url}
                onClick={() => !isDead && onSelect(src)}
                disabled={isDead}
                className={`w-full flex items-center gap-3 px-4 py-3 rounded-2xl border transition-all active:scale-[0.98] text-right
                  ${isActive ? "bg-violet-500/15 border-violet-500/35"
                  : isDead ? "opacity-25 bg-white/3 border-white/5"
                  : "bg-white/4 border-white/7 active:bg-white/8"}`}
              >
                <div className={`w-8 h-8 rounded-xl flex items-center justify-center shrink-0 border
                  ${isActive ? "bg-violet-500/25 border-violet-500/35" : "bg-white/8 border-white/10"}`}>
                  {isActive         ? <CheckCircle2 className="w-4 h-4 text-violet-300" />
                  : isDead          ? <XCircle className="w-4 h-4 text-red-400" />
                  : st === "testing" ? <Loader2 className="w-4 h-4 text-amber-400 animate-spin" />
                  : st === "ok"     ? <Signal className="w-4 h-4 text-emerald-400" />
                  : <Play className="w-3.5 h-3.5 text-white/40 fill-white/40" />}
                </div>
                <div className="flex-1 min-w-0 text-right">
                  <p className={`text-sm font-bold font-['Cairo'] truncate
                    ${isActive ? "text-violet-200" : isDead ? "text-white/20" : "text-white/85"}`}>{src.name}</p>
                  <p className="text-[10px] text-white/30 font-['Cairo']">{SITE_LABEL[src.site] || src.site}</p>
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

/* ══════════════════════════════════════════════════════
   NATIVE VIDEO INNER
══════════════════════════════════════════════════════ */
function NativeVideoInner({
  url, type, refUrl, onError, onCanPlay, onPlayingChange,
}: {
  url: string; type: "hls" | "mp4"; refUrl?: string;
  onError: () => void; onCanPlay: () => void;
  onPlayingChange?: (playing: boolean) => void;
}) {
  const videoRef = useRef<HTMLVideoElement>(null);
  const hlsRef   = useRef<Hls | null>(null);
  const [attempt, setAttempt] = useState<"direct" | "proxy">("direct");

  const hlsProxyUrl = `/api/anime/hls-proxy?url=${encodeURIComponent(url)}&ref=${encodeURIComponent(refUrl || url)}`;
  const vidProxyUrl = `/api/anime/video-proxy?url=${encodeURIComponent(url)}&ref=${encodeURIComponent(refUrl || url)}`;
  const effectiveUrl = type === "hls" ? hlsProxyUrl : attempt === "direct" ? url : vidProxyUrl;

  useEffect(() => { setAttempt("direct"); }, [url]);

  function handleErr() {
    if (type === "mp4" && attempt === "direct") { setAttempt("proxy"); }
    else { onError(); }
  }

  useEffect(() => {
    const v = videoRef.current; if (!v) return;
    hlsRef.current?.destroy(); hlsRef.current = null;
    if (type === "hls" && Hls.isSupported()) {
      const hls = new Hls({ enableWorker: true, lowLatencyMode: false, maxBufferLength: 30, maxMaxBufferLength: 60, fragLoadingTimeOut: 20000, manifestLoadingTimeOut: 15000 });
      hlsRef.current = hls;
      hls.loadSource(effectiveUrl);
      hls.attachMedia(v);
      hls.on(Hls.Events.MANIFEST_PARSED, () => { v.play().catch(() => {}); });
      hls.on(Hls.Events.ERROR, (_, d) => { if (d.fatal) handleErr(); });
    } else if (type === "hls" && v.canPlayType("application/vnd.apple.mpegurl")) {
      v.src = effectiveUrl; v.play().catch(() => {});
    } else if (type === "mp4") {
      v.src = effectiveUrl; v.load(); v.play().catch(() => {});
    } else { onError(); }
    return () => { hlsRef.current?.destroy(); hlsRef.current = null; };
  }, [effectiveUrl, type]);

  return (
    <video ref={videoRef} className="absolute inset-0 w-full h-full bg-black" playsInline autoPlay
      onCanPlay={onCanPlay} onError={handleErr}
      onPlay={() => onPlayingChange?.(true)} onPause={() => onPlayingChange?.(false)}
      style={{ objectFit: "contain" }} />
  );
}

/* ══════════════════════════════════════════════════════
   VIDEO PLAYER — FULL SCREEN OVERLAY
   ─ No sandbox on iframes (fixes "Please Disable Sandbox")
   ─ Full-screen tap overlay: hidden controls → tap shows them
   ─ Auto-rotate to landscape on mount, unlock on unmount
══════════════════════════════════════════════════════ */
function VideoPlayer({
  src, title, ep, totalEps,
  sources, activeIdx, statuses,
  onClose, onNext, onPrev, onSelectSource, onNextSrc,
}: {
  src: Source; title: string; ep: number; totalEps: number;
  sources: Source[]; activeIdx: number; statuses: Record<string, ProbeStatus>;
  onClose: () => void; onNext: () => void; onPrev: () => void;
  onSelectSource: (s: Source) => void; onNextSrc: () => void;
}) {
  const [showSheet, setShowSheet]     = useState(false);
  const [showCtrl, setShowCtrl]       = useState(true);
  const [nativeError, setNativeError] = useState(false);
  const [isPlaying, setIsPlaying]     = useState(false);
  const [iframeReady, setIframeReady] = useState(false);
  const [isLandscape, setIsLandscape] = useState(false);
  const iframeRef  = useRef<HTMLIFrameElement>(null);
  const hideTimer  = useRef<ReturnType<typeof setTimeout> | null>(null);

  const useNative = !nativeError && !!src.directUrl;

  /* ── Auto-rotate to landscape on mount ── */
  useEffect(() => {
    const lock = async () => {
      try {
        await (screen.orientation as any).lock("landscape");
        setIsLandscape(true);
      } catch {}
    };
    lock();
    return () => {
      try { (screen.orientation as any).unlock(); } catch {}
      setIsLandscape(false);
    };
  }, []);

  /* ── Block iframe ad navigation (Navigation API, Chrome 102+) ── */
  useEffect(() => {
    const nav = (window as any).navigation;
    if (!nav) return;
    const handler = (e: any) => {
      const dest: string = e.destination?.url ?? "";
      // Allow in-app navigation; block external URLs triggered by iframes
      if (dest && !dest.startsWith(window.location.origin)) {
        try { e.preventDefault(); } catch {}
      }
    };
    nav.addEventListener("navigate", handler);
    return () => nav.removeEventListener("navigate", handler);
  }, []);

  function toggleOrientation() {
    if (isLandscape) {
      try { (screen.orientation as any).unlock(); } catch {}
      setIsLandscape(false);
    } else {
      (screen.orientation as any).lock?.("landscape").then(() => setIsLandscape(true)).catch(() => {});
    }
  }

  const scheduleHide = useCallback((ms = 4500) => {
    if (hideTimer.current) clearTimeout(hideTimer.current);
    hideTimer.current = setTimeout(() => setShowCtrl(false), ms);
  }, []);

  const showAndSchedule = useCallback((ms?: number) => {
    setShowCtrl(true);
    scheduleHide(ms);
  }, [scheduleHide]);

  const handleTap = useCallback(() => {
    if (showSheet) return;
    if (showCtrl) {
      if (hideTimer.current) clearTimeout(hideTimer.current);
      setShowCtrl(false);
    } else {
      showAndSchedule();
    }
  }, [showSheet, showCtrl, showAndSchedule]);

  useEffect(() => {
    setNativeError(false); setIframeReady(false);
    setShowCtrl(true); setIsPlaying(false);
    scheduleHide();
    return () => { if (hideTimer.current) clearTimeout(hideTimer.current); };
  }, [src.url]);

  function fullscreen() {
    const el = iframeRef.current || document.querySelector("video");
    if (!el) return;
    const fn = (el as any).requestFullscreen || (el as any).webkitRequestFullscreen;
    fn?.call(el);
  }

  function togglePlayPause() {
    const v = document.querySelector("video") as HTMLVideoElement | null;
    if (!v) return;
    v.paused ? v.play().catch(() => {}) : v.pause();
  }

  return (
    <div className="fixed inset-0 z-50 bg-black" dir="ltr">

      {/* ── Video content ── */}
      {useNative ? (
        <NativeVideoInner
          key={src.directUrl!}
          url={src.directUrl!}
          type={src.directType || "hls"}
          refUrl={src.url}
          onError={() => setNativeError(true)}
          onCanPlay={() => showAndSchedule()}
          onPlayingChange={p => { setIsPlaying(p); if (p) scheduleHide(); }}
        />
      ) : (
        <>
          {/* Direct embed — proxy-embed only for simple HTML pages, not React/Next.js apps */}
          <iframe
            ref={iframeRef}
            key={src.url}
            src={src.url}
            className="absolute inset-0 w-full h-full border-none"
            style={{ opacity: iframeReady ? 1 : 0, transition: "opacity 0.35s", zIndex: 1 }}
            allow="autoplay; fullscreen; encrypted-media; picture-in-picture; accelerometer; gyroscope"
            allowFullScreen
            title={title}
            onLoad={() => { setIframeReady(true); showAndSchedule(6000); }}
          />
          {!iframeReady && (
            <div className="absolute inset-0 z-[2] bg-black flex flex-col items-center justify-center gap-4">
              <div className="relative">
                <div className="w-16 h-16 rounded-2xl bg-violet-500/15 border border-violet-500/25 flex items-center justify-center">
                  <Loader2 className="w-7 h-7 text-violet-400 animate-spin" />
                </div>
              </div>
              <p className="text-white/40 text-xs font-['Cairo']">جاري تحميل المشغّل…</p>
            </div>
          )}
        </>
      )}

      {/* ══════════════════════════════════════════
          FULL-SCREEN TAP OVERLAY
          ─ Catches touch/click anywhere to show controls
          ─ onTouchEnd for immediate mobile response (no 300ms delay)
          ══════════════════════════════════════════ */}
      <div
        className="absolute inset-0 z-[10]"
        style={{
          pointerEvents: showSheet ? "none" : "auto",
          background: "transparent",
          touchAction: "manipulation",
          WebkitTapHighlightColor: "transparent",
        }}
        onClick={handleTap}
        onTouchEnd={e => { e.stopPropagation(); handleTap(); }}
      />

      {/* ── Native center play/pause ── */}
      <AnimatePresence>
        {useNative && !isPlaying && showCtrl && !showSheet && (
          <motion.div
            key="playpause-btn"
            initial={{ opacity: 0, scale: 0.75 }}
            animate={{ opacity: 1, scale: 1 }}
            exit={{ opacity: 0, scale: 0.75 }}
            transition={{ duration: 0.18 }}
            className="absolute inset-0 z-[15] flex items-center justify-center pointer-events-auto"
            onClick={e => { e.stopPropagation(); togglePlayPause(); showAndSchedule(); }}
          >
            <div className="w-[70px] h-[70px] rounded-full bg-black/55 backdrop-blur-md border border-white/20 flex items-center justify-center shadow-2xl">
              <Play className="w-8 h-8 text-white fill-white ml-1" />
            </div>
          </motion.div>
        )}
      </AnimatePresence>

      {/* ── ALL CONTROLS ── */}
      <AnimatePresence>
        {showCtrl && (
          <motion.div
            key="controls"
            className="absolute inset-0 z-[20] pointer-events-none"
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            exit={{ opacity: 0 }}
            transition={{ duration: 0.2 }}
          >
            {/* ── TOP BAR ── */}
            <div
              className="absolute top-0 left-0 right-0 flex items-center gap-2 px-3 pointer-events-auto"
              style={{
                paddingTop: "max(12px, env(safe-area-inset-top))",
                paddingBottom: 16,
                background: "linear-gradient(to bottom, rgba(0,0,0,0.92) 0%, rgba(0,0,0,0.5) 60%, transparent 100%)",
              }}
            >
              {/* Right: Back */}
              <button
                onClick={e => { e.stopPropagation(); onClose(); }}
                className="flex items-center gap-1 bg-white/12 backdrop-blur-xl border border-white/15 rounded-xl px-2.5 py-2 active:scale-90 shrink-0"
              >
                <ChevronRight className="w-4 h-4 text-white" />
                <span className="text-white text-[11px] font-black font-['Cairo']">رجوع</span>
              </button>

              {/* Center: title + server name */}
              <div className="flex-1 min-w-0 text-center">
                <p className="text-white text-[12px] font-black font-['Cairo'] truncate drop-shadow">{title}</p>
                <p className="text-white/45 text-[10px] font-['Cairo'] truncate">
                  الحلقة {ep === 0 ? "فيلم" : ep} · <span className="text-violet-300/80">{src.name}</span>
                </p>
              </div>

              {/* Orientation toggle */}
              <button
                onClick={e => { e.stopPropagation(); toggleOrientation(); showAndSchedule(); }}
                className="w-9 h-9 flex items-center justify-center bg-white/10 backdrop-blur-xl border border-white/12 rounded-xl active:scale-90 shrink-0"
                title={isLandscape ? "وضع عمودي" : "وضع أفقي"}
              >
                <RotateCcw className={`w-4 h-4 transition-transform duration-300 ${isLandscape ? "text-violet-300" : "text-white/60 -rotate-90"}`} />
              </button>

              {/* Fullscreen */}
              <button
                onClick={e => { e.stopPropagation(); fullscreen(); }}
                className="w-9 h-9 flex items-center justify-center bg-white/10 backdrop-blur-xl border border-white/12 rounded-xl active:scale-90 shrink-0"
              >
                <Maximize2 className="w-4 h-4 text-white/60" />
              </button>
            </div>

            {/* ── BOTTOM BAR ── */}
            <div
              className="absolute bottom-0 left-0 right-0 flex items-center gap-2 px-3 pointer-events-auto"
              style={{
                paddingBottom: "max(14px, env(safe-area-inset-bottom))",
                paddingTop: 14,
                background: "linear-gradient(to top, rgba(0,0,0,0.94) 0%, rgba(0,0,0,0.5) 60%, transparent 100%)",
              }}
            >
              {/* Right: Prev episode */}
              <button
                onClick={e => { e.stopPropagation(); onPrev(); }}
                disabled={ep <= 1}
                className="flex items-center gap-1 bg-white/10 backdrop-blur-xl border border-white/12 text-white/80 text-[11px] font-bold px-3 py-2 rounded-xl disabled:opacity-20 active:scale-95 font-['Cairo'] shrink-0"
              >
                <ChevronRight className="w-3.5 h-3.5" /> السابقة
              </button>

              {/* Center: Servers list — compact */}
              <button
                onClick={e => { e.stopPropagation(); setShowSheet(true); }}
                className="flex-1 flex items-center justify-center gap-1.5 bg-white/8 backdrop-blur-xl border border-white/10 text-white/60 text-[11px] font-bold py-2 rounded-xl active:scale-[0.97] font-['Cairo']"
              >
                <List className="w-3.5 h-3.5 shrink-0" />
                <span>السيرفرات</span>
                <span className="text-[10px] bg-violet-500/25 text-violet-300 px-1.5 py-0.5 rounded-md font-black">{sources.length}</span>
              </button>

              {/* Left: Next server */}
              <button
                onClick={e => { e.stopPropagation(); onNextSrc(); showAndSchedule(); }}
                className="flex items-center gap-1 bg-white/10 backdrop-blur-xl border border-white/12 text-white/70 text-[11px] font-bold px-3 py-2 rounded-xl active:scale-95 font-['Cairo'] shrink-0"
              >
                <SkipForward className="w-3.5 h-3.5" />
              </button>

              {/* Left: Next episode */}
              <button
                onClick={e => { e.stopPropagation(); onNext(); }}
                disabled={ep >= totalEps && totalEps > 0}
                className="flex items-center gap-1 bg-violet-600 text-white text-[11px] font-black px-3 py-2 rounded-xl disabled:opacity-20 active:scale-95 font-['Cairo'] shrink-0 shadow-lg shadow-violet-900/40"
              >
                التالية <ChevronLeft className="w-3.5 h-3.5" />
              </button>
            </div>
          </motion.div>
        )}
      </AnimatePresence>

      {/* ── Server sheet ── */}
      <AnimatePresence>
        {showSheet && (
          <ServerSheet
            sources={sources} activeIdx={activeIdx} statuses={statuses}
            onSelect={s => { onSelectSource(s); setShowSheet(false); showAndSchedule(); }}
            onClose={() => setShowSheet(false)}
          />
        )}
      </AnimatePresence>
    </div>
  );
}

/* ══════════════════════════════════════════════════════
   LOADING SCREEN
══════════════════════════════════════════════════════ */
function LoadingScreen({ cover, title, ep, genres, sourcesCount }: {
  cover: string; title: string; ep: number; genres: string[]; sourcesCount: number;
}) {
  const bgUrl = GENRE_COVERS[genres?.[0]] || GENRE_COVERS["default"];
  return (
    <div className="min-h-screen flex flex-col items-center justify-center relative overflow-hidden" dir="rtl">
      <div className="absolute inset-0">
        <img src={cover || bgUrl} alt="" className="w-full h-full object-cover scale-110"
          style={{ filter: "blur(48px) brightness(0.15) saturate(1.6)" }} />
      </div>
      <div className="absolute inset-0" style={{ background: "linear-gradient(to bottom,rgba(0,0,0,0.5) 0%,#09090f 60%,#09090f 100%)" }} />
      <div className="relative z-10 flex flex-col items-center gap-7 px-6 text-center w-full max-w-xs">
        {cover && (
          <motion.div initial={{ y: 24, opacity: 0, scale: 0.88 }} animate={{ y: 0, opacity: 1, scale: 1 }}
            transition={{ duration: 0.6, ease: [0.22, 1, 0.36, 1] }} className="relative">
            <div className="absolute -inset-6 rounded-[40px] blur-[48px] opacity-60"
              style={{ background: "radial-gradient(circle,rgba(139,92,246,0.9) 0%,transparent 70%)" }} />
            <img src={cover} alt="" className="relative w-40 h-56 object-cover rounded-2xl shadow-[0_32px_80px_rgba(0,0,0,0.95)]"
              style={{ border: "1px solid rgba(139,92,246,0.25)" }} />
            <div className="absolute -bottom-3 left-1/2 -translate-x-1/2 bg-violet-600 text-white text-[11px] font-black px-4 py-1.5 rounded-full shadow-lg whitespace-nowrap shadow-violet-900/50">
              الحلقة {ep}
            </div>
          </motion.div>
        )}
        <motion.div initial={{ opacity: 0, y: 14 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: 0.25 }}
          className="flex flex-col items-center gap-2 mt-1">
          <h2 className="text-white text-base font-black font-['Cairo'] line-clamp-2 drop-shadow">{title}</h2>
          <p className="text-white/40 text-xs font-['Cairo']">
            {sourcesCount > 0
              ? `${sourcesCount} سيرفر متاح · سيبدأ التشغيل تلقائياً`
              : "يجري البحث في المصادر…"}
          </p>
        </motion.div>
        <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} transition={{ delay: 0.4 }}>
          <div className="flex items-center gap-1.5">
            {[0,1,2,3,4].map(i => (
              <motion.div key={i} className="w-1.5 h-1.5 rounded-full bg-violet-500"
                animate={{ opacity: [0.2, 1, 0.2], scale: [0.7, 1.3, 0.7] }}
                transition={{ duration: 1.3, repeat: Infinity, delay: i * 0.18 }} />
            ))}
          </div>
        </motion.div>
      </div>
    </div>
  );
}

/* ══════════════════════════════════════════════════════
   SERVER BUTTON
══════════════════════════════════════════════════════ */
function ServerButton({ src, status, isActive, onSelect }: {
  src: Source; status: ProbeStatus; isActive: boolean;
  onSelect: (s: Source) => void;
}) {
  const isDead = status === "dead";
  const label  = SITE_LABEL[src.site] || src.site;
  const hasDirect = !!src.directUrl;

  return (
    <button
      className={`w-full flex items-center gap-3 px-4 py-3.5 rounded-2xl border transition-all active:scale-[0.98]
        ${isActive ? "bg-violet-500/12 border-violet-500/35"
        : isDead   ? "opacity-25 bg-white/2 border-white/5"
        : "bg-white/4 border-white/7 active:bg-white/7"}`}
      onClick={() => !isDead && onSelect(src)}
      disabled={isDead}
    >
      {/* Icon */}
      <div className={`w-9 h-9 rounded-xl flex items-center justify-center shrink-0 border
        ${isActive ? "bg-violet-500/25 border-violet-500/30"
        : hasDirect ? "bg-emerald-500/15 border-emerald-500/25"
        : "bg-white/8 border-white/10"}`}>
        {isActive          ? <CheckCircle2 className="w-4 h-4 text-violet-300" />
        : isDead           ? <XCircle className="w-4 h-4 text-red-400" />
        : status === "testing" ? <Loader2 className="w-4 h-4 text-amber-400 animate-spin" />
        : status === "ok"  ? <Signal className="w-4 h-4 text-emerald-400" />
        : hasDirect        ? <Zap className="w-4 h-4 text-emerald-400" />
        : <Play className="w-3.5 h-3.5 text-white/40 fill-white/40" />}
      </div>

      {/* Info */}
      <div className="flex-1 min-w-0 text-right">
        <p className={`text-sm font-bold font-['Cairo'] truncate
          ${isActive ? "text-violet-200" : isDead ? "text-white/20" : "text-white/85"}`}>{src.name}</p>
        <p className="text-[10px] text-white/30 font-['Cairo']">{label}{hasDirect ? " · مباشر" : ""}</p>
      </div>

      <QBadge q={src.quality} />

      {/* Play arrow */}
      <div className={`w-8 h-8 rounded-xl flex items-center justify-center shrink-0 border
        ${isActive ? "bg-violet-500/25 border-violet-500/30" : "bg-white/5 border-white/8"}`}>
        <ChevronLeft className={`w-4 h-4 ${isActive ? "text-violet-300" : "text-white/30"}`} />
      </div>
    </button>
  );
}

/* ════════════════════════════════════════════════════════════════
   MAIN WATCH PAGE
════════════════════════════════════════════════════════════════ */
export default function WatchPage() {
  const [, navigate] = useLocation();
  const sp         = new URLSearchParams(window.location.search);
  const animeId    = parseInt(sp.get("anime") || "0");
  const ep         = parseInt(sp.get("ep") || "1");
  const titleParam = sp.get("title") || "";

  const [showPlayer, setShowPlayer]   = useState(false);
  const [anime, setAnime]             = useState<any>(null);
  const [sources, setSources]         = useState<Source[]>([]);
  const [active, setActive]           = useState<Source | null>(null);
  const [activeIdx, setActiveIdx]     = useState(0);
  const [statuses, setStatuses]       = useState<Record<string, ProbeStatus>>({});
  const [loading, setLoading]         = useState(true);
  const [streamDone, setStreamDone]   = useState(false);
  const [toast, setToast]             = useState<string | null>(null);

  const sseRef          = useRef<EventSource | null>(null);
  const seenUrls        = useRef(new Set<string>());
  const autoStarted     = useRef(false);
  const sourcesRef      = useRef<Source[]>([]);
  const activeIdxRef    = useRef(0);
  const statusesRef     = useRef<Record<string, ProbeStatus>>({});
  const autoPlayTimer   = useRef<ReturnType<typeof setTimeout> | null>(null);

  const title    = anime?.title?.romaji || anime?.title?.english || titleParam || "أنمي";
  const totalEps = anime?.episodes || anime?.nextAiringEpisode?.episode || 999;
  const cover    = anime?.coverImage?.large || "";
  const banner   = anime?.bannerImage || "";
  const genres   = anime?.genres || [];

  useEffect(() => { sourcesRef.current = sources; }, [sources]);
  useEffect(() => { activeIdxRef.current = activeIdx; }, [activeIdx]);
  useEffect(() => { statusesRef.current = statuses; }, [statuses]);

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

  function sortSources(srcs: Source[]): Source[] {
    return [...srcs].sort((a, b) => {
      const aDirect = a.directUrl ? 1 : 0;
      const bDirect = b.directUrl ? 1 : 0;
      if (bDirect !== aDirect) return bDirect - aDirect;
      if (b.qualityRank !== a.qualityRank) return b.qualityRank - a.qualityRank;
      return serverPriority(b) - serverPriority(a);
    });
  }

  function serverPriority(s: Source): number {
    if (s.directUrl) return 14;
    if (s.site === "vidnest")   return 13;
    if (s.site === "shahiid")   return 12;
    if (s.site === "animelek")  return 11;
    if (s.site === "animedar")  return 10;
    if (s.site === "animephoenix" || s.site === "anime4up") return 9;
    if (s.site === "myanime" || s.site === "animekayan") return 8;
    if (s.site === "animegg") return 5;
    return 3;
  }

  function startSSE(romaji: string, english: string, malId: number) {
    const cacheKey = `${animeId}-${ep}`;
    const p = new URLSearchParams({
      ep: String(ep), title: romaji, english,
      anilistId: String(animeId), malId: String(malId),
    });

    const es = new EventSource(`/api/anime/sources-stream?${p}`);
    sseRef.current = es;
    const accumulated: Source[] = [];

    es.onmessage = (e) => {
      if (e.data === "[DONE]") {
        es.close(); sseRef.current = null;
        setStreamDone(true);
        setSrcCache(cacheKey, accumulated);
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

  useEffect(() => {
    if (!animeId) { setLoading(false); return; }
    setLoading(true); setSources([]); setActive(null);
    setStatuses({}); setStreamDone(false); setShowPlayer(false);
    seenUrls.current.clear(); autoStarted.current = false;
    sseRef.current?.close();
    if (autoPlayTimer.current) { clearTimeout(autoPlayTimer.current); autoPlayTimer.current = null; }

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
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({ query: ANILIST_Q, variables: { id: animeId } }),
            signal: AbortSignal.timeout(12000),
          }).then(r => r.json()).then(j => {
            const animeData = j.data?.Media;
            if (animeData) {
              setAnime(animeData);
              saveHistory(animeId, animeData.title?.romaji || "", animeData.coverImage?.large || "", ep, animeData.episodes || 0);
            }
          }).catch(() => {});
          return;
        }

        const aniRes = await fetch("https://graphql.anilist.co", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ query: ANILIST_Q, variables: { id: animeId } }),
          signal: AbortSignal.timeout(12000),
        });
        const animeData = (await aniRes.json()).data?.Media;
        setAnime(animeData);
        if (animeData) saveHistory(animeId, animeData.title?.romaji || "", animeData.coverImage?.large || "", ep, animeData.episodes || 0);

        const romaji  = animeData?.title?.romaji  || "";
        const english = animeData?.title?.english || "";
        const malId   = animeData?.idMal || 0;
        setLoading(false);
        startSSE(romaji, english, malId);
      } catch (err: any) {
        if (err.name !== "AbortError") console.error(err);
        setLoading(false); setStreamDone(true);
      }
    })();
    return () => { sseRef.current?.close(); sseRef.current = null; };
  }, [animeId, ep]);

  /* Auto-play: first available source after 0.5s */
  useEffect(() => {
    if (autoStarted.current || showPlayer) return;

    const best = sources.find(s => (statusesRef.current[s.url] || "unknown") !== "dead");
    if (best && !autoPlayTimer.current) {
      autoPlayTimer.current = setTimeout(() => {
        autoPlayTimer.current = null;
        if (autoStarted.current) return;
        const s = sourcesRef.current.find(s2 => (statusesRef.current[s2.url] || "unknown") !== "dead")
          || sourcesRef.current[0];
        if (!s) return;
        autoStarted.current = true;
        setActive(s); setActiveIdx(sourcesRef.current.indexOf(s)); setShowPlayer(true);
      }, 500);
    }

    if (streamDone && sources.length > 0 && !autoPlayTimer.current) {
      const s = sources.find(s2 => (statusesRef.current[s2.url] || "unknown") !== "dead") || sources[0];
      autoStarted.current = true;
      setActive(s); setActiveIdx(sources.indexOf(s)); setShowPlayer(true);
    }
  }, [sources, streamDone]);

  function selectServer(src: Source) {
    const idx = sourcesRef.current.findIndex(s => s.url === src.url);
    setActive(src); setActiveIdx(idx >= 0 ? idx : 0);
    setShowPlayer(true);
    showToast(`▶ ${src.name}`);
  }

  function goNextSrc() {
    const cur = activeIdxRef.current;
    const all = sourcesRef.current;
    for (let i = cur + 1; i < all.length; i++) {
      const s = all[i];
      if (statusesRef.current[s.url] !== "dead") {
        setActive(s); setActiveIdx(i);
        showToast(`⚡ ${s.name}`);
        return;
      }
    }
    showToast("لا توجد سيرفرات أخرى");
  }

  function showToast(msg: string) { setToast(msg); setTimeout(() => setToast(null), 2500); }

  function goEp(n: number) {
    navigate(`/watch?${new URLSearchParams({ anime: String(animeId), ep: String(n) })}`);
  }

  const sharedPlayerProps = {
    title, ep, totalEps,
    sources, activeIdx, statuses,
    onClose: () => setShowPlayer(false),
    onNext:  () => ep < totalEps ? goEp(ep + 1) : undefined,
    onPrev:  () => ep > 1 ? goEp(ep - 1) : undefined,
    onSelectSource: selectServer,
    onNextSrc: goNextSrc,
  };

  /* ── server list / loading background ── */
  const bgSrc = banner || cover;

  return (
    <div className="bg-[#09090f] min-h-screen text-white" dir="rtl">

      {/* ── PLAYER OVERLAY ── */}
      <AnimatePresence>
        {showPlayer && active && (
          <motion.div key={active.url}
            initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            transition={{ duration: 0.2 }}>
            <VideoPlayer src={active} {...sharedPlayerProps} />
          </motion.div>
        )}
      </AnimatePresence>

      {/* ── SERVER LIST (hidden while player active) ── */}
      <div className={showPlayer ? "hidden" : "flex flex-col min-h-screen"}>

        {(loading || (!loading && sources.length === 0 && !streamDone)) && (
          <LoadingScreen cover={cover} title={title} ep={ep} genres={genres} sourcesCount={sources.length} />
        )}

        {(!loading && (sources.length > 0 || streamDone)) && (
          <div className="flex flex-col min-h-screen">

            {/* ── HERO HEADER ── */}
            <div className="relative shrink-0 overflow-hidden" style={{ minHeight: 190 }}>
              {/* Banner/cover blur bg */}
              {bgSrc && (
                <img src={bgSrc} alt="" className="absolute inset-0 w-full h-full object-cover scale-105"
                  style={{ filter: "blur(28px) brightness(0.22) saturate(1.5)" }} />
              )}
              <div className="absolute inset-0"
                style={{ background: "linear-gradient(to bottom, rgba(0,0,0,0.35) 0%, #09090f 100%)" }} />

              {/* Top nav */}
              <div className="relative z-10 flex items-center gap-3 px-4 pt-4 pb-0">
                <button onClick={() => window.history.back()}
                  className="w-9 h-9 bg-white/10 border border-white/12 rounded-xl flex items-center justify-center active:scale-90 shrink-0 backdrop-blur-sm">
                  <ChevronRight className="w-4.5 h-4.5 text-white/70" style={{ width: 18, height: 18 }} />
                </button>
                <div className="flex-1 min-w-0">
                  <h1 className="text-sm font-black font-['Cairo'] truncate text-white">{title}</h1>
                </div>
                {active && (
                  <button onClick={() => setShowPlayer(true)}
                    className="w-9 h-9 bg-violet-500/20 border border-violet-500/35 rounded-xl flex items-center justify-center active:scale-90 shrink-0">
                    <Play className="w-4 h-4 text-violet-300 fill-violet-300" style={{ marginLeft: 1 }} />
                  </button>
                )}
              </div>

              {/* Episode info */}
              <div className="relative z-10 flex items-end justify-between px-4 pt-4 pb-5">
                <div>
                  <div className="flex items-center gap-2 mb-1">
                    <div className="px-2.5 py-1 rounded-lg bg-violet-600 text-white text-[11px] font-black font-['Cairo']">
                      الحلقة {ep}
                    </div>
                    {!streamDone && (
                      <div className="flex items-center gap-1.5 px-2.5 py-1 rounded-lg bg-amber-500/15 border border-amber-500/20">
                        <Loader2 className="w-3 h-3 text-amber-400 animate-spin" />
                        <span className="text-amber-300 text-[10px] font-bold font-['Cairo']">يجري الجلب</span>
                      </div>
                    )}
                    {streamDone && sources.length > 0 && (
                      <div className="px-2.5 py-1 rounded-lg bg-emerald-500/12 border border-emerald-500/20">
                        <span className="text-emerald-300 text-[10px] font-bold font-['Cairo']">{sources.length} سيرفر</span>
                      </div>
                    )}
                  </div>
                  <p className="text-white/35 text-[10px] font-['Cairo']">
                    {active ? `يشغّل: ${active.name}` : "اختر سيرفراً للمشاهدة"}
                  </p>
                </div>

                {/* Episode nav */}
                <div className="flex items-center gap-1.5">
                  <button disabled={ep <= 1} onClick={() => goEp(ep - 1)}
                    className="w-9 h-9 flex items-center justify-center bg-white/8 border border-white/10 rounded-xl disabled:opacity-25 active:scale-90">
                    <ChevronRight className="w-4 h-4 text-white/60" />
                  </button>
                  <button disabled={ep >= totalEps} onClick={() => goEp(ep + 1)}
                    className="w-9 h-9 flex items-center justify-center bg-violet-600 rounded-xl disabled:opacity-25 active:scale-90 shadow-lg shadow-violet-900/40">
                    <ChevronLeft className="w-4 h-4 text-white" />
                  </button>
                </div>
              </div>
            </div>

            {/* ── CONTENT ── */}
            <div className="flex-1 px-4 pt-3 pb-28 space-y-3">

              {/* Return to player banner */}
              {active && (
                <motion.button initial={{ opacity: 0, y: 8 }} animate={{ opacity: 1, y: 0 }}
                  onClick={() => setShowPlayer(true)}
                  className="w-full flex items-center gap-3 p-3.5 rounded-2xl active:scale-[0.98]"
                  style={{ background: "linear-gradient(135deg,rgba(139,92,246,0.18) 0%,rgba(109,40,217,0.08) 100%)", border: "1px solid rgba(139,92,246,0.28)" }}>
                  <div className="w-10 h-10 rounded-xl bg-violet-500/20 border border-violet-500/30 flex items-center justify-center shrink-0">
                    <MonitorPlay className="w-5 h-5 text-violet-300" />
                  </div>
                  <div className="flex-1 text-right">
                    <p className="text-sm font-black text-violet-200 font-['Cairo']">{active.name}</p>
                    <p className="text-[10px] text-violet-300/50 font-['Cairo']">اضغط للعودة للمشغّل</p>
                  </div>
                  <div className="w-8 h-8 rounded-xl bg-violet-500/20 border border-violet-500/25 flex items-center justify-center shrink-0">
                    <Play className="w-3.5 h-3.5 text-violet-300 fill-violet-300" style={{ marginLeft: 1 }} />
                  </div>
                </motion.button>
              )}

              {/* Refresh button */}
              {streamDone && (
                <button onClick={() => { localStorage.removeItem(`srccache:${animeId}-${ep}`); window.location.reload(); }}
                  className="w-full h-10 flex items-center justify-center gap-2 bg-white/4 border border-white/7 rounded-xl text-white/35 text-xs font-bold font-['Cairo'] active:scale-[0.97]">
                  <RefreshCw className="w-3.5 h-3.5" /> تحديث السيرفرات
                </button>
              )}

              {/* Empty state */}
              {streamDone && sources.length === 0 && (
                <div className="flex flex-col items-center justify-center gap-5 py-20 text-center">
                  <div className="w-16 h-16 rounded-2xl bg-white/4 border border-white/8 flex items-center justify-center">
                    <AlertTriangle className="w-7 h-7 text-white/20" />
                  </div>
                  <div>
                    <p className="text-white/50 text-sm font-black font-['Cairo']">لا توجد سيرفرات متاحة</p>
                    <p className="text-white/20 text-xs mt-1 font-['Cairo']">هذه الحلقة غير متوفرة حالياً</p>
                  </div>
                </div>
              )}

              {/* Server list */}
              {sources.length > 0 && (
                <>
                  <div className="flex items-center justify-between px-1 pb-1">
                    <p className="text-[11px] text-white/35 font-['Cairo'] font-bold">السيرفرات المتاحة</p>
                    {!streamDone && (
                      <div className="flex items-center gap-1.5">
                        <Loader2 className="w-3 h-3 text-violet-400 animate-spin" />
                        <span className="text-[10px] text-violet-400/70 font-['Cairo']">جارٍ جلب المزيد…</span>
                      </div>
                    )}
                  </div>
                  <div className="space-y-2">
                    {sources.map(src => (
                      <ServerButton
                        key={src.url}
                        src={src}
                        status={statuses[src.url] || "unknown"}
                        isActive={active?.url === src.url}
                        onSelect={selectServer}
                      />
                    ))}
                  </div>
                </>
              )}
            </div>
          </div>
        )}
      </div>

      {/* Toast */}
      <AnimatePresence>
        {toast && (
          <motion.div initial={{ opacity: 0, y: 28, scale: 0.95 }} animate={{ opacity: 1, y: 0, scale: 1 }} exit={{ opacity: 0, y: 16 }}
            className="fixed bottom-8 left-4 right-4 z-[100] rounded-2xl px-4 py-3.5 text-center shadow-2xl"
            style={{ background: "rgba(17,17,24,0.96)", border: "1px solid rgba(255,255,255,0.1)", backdropFilter: "blur(16px)" }}>
            <p className="text-sm text-white/85 font-['Cairo'] font-bold">{toast}</p>
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  );
}
