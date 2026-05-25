import { useState, useEffect, useRef, useCallback } from "react";
import { useLocation } from "wouter";
import {
  ChevronRight, ChevronLeft, Loader2, Play, Pause,
  AlertTriangle, RefreshCw, CheckCircle2, XCircle,
  Maximize2, List, X, Wifi, WifiOff, SkipForward,
  MonitorPlay, Zap, RotateCw,
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
    return <span className="text-[8px] font-black px-1.5 py-0.5 rounded-md bg-emerald-500/20 text-emerald-300 border border-emerald-500/20">1080p</span>;
  if (u.includes("720") || u === "HD")
    return <span className="text-[8px] font-black px-1.5 py-0.5 rounded-md bg-blue-500/20 text-blue-300 border border-blue-500/20">720p</span>;
  return <span className="text-[8px] font-black px-1.5 py-0.5 rounded-md bg-zinc-600/30 text-zinc-400 border border-zinc-500/20">SD</span>;
}

/* ══════════════════════════════════════════════════════
   SERVER PICKER SHEET
══════════════════════════════════════════════════════ */
function ServerSheet({ sources, activeIdx, statuses, onSelect, onClose }: {
  sources: Source[]; activeIdx: number;
  statuses: Record<string, ProbeStatus>;
  onSelect: (s: Source) => void; onClose: () => void;
}) {
  function Row({ src }: { src: Source }) {
    const idx      = sources.indexOf(src);
    const isActive = idx === activeIdx;
    const st       = statuses[src.url] || "unknown";
    const isDead   = st === "dead";
    return (
      <button
        onClick={() => !isDead && onSelect(src)}
        disabled={isDead}
        className={`w-full flex items-center gap-2.5 px-3 py-3 rounded-2xl border transition-all active:scale-[0.98] text-right
          ${isActive ? "bg-emerald-500/15 border-emerald-500/30"
          : isDead ? "opacity-30 bg-white/3 border-white/5"
          : "bg-white/4 border-white/6 hover:bg-white/7"}`}
      >
        {isActive         ? <CheckCircle2 className="w-3.5 h-3.5 text-emerald-400 shrink-0" /> :
         st === "testing" ? <Loader2 className="w-3.5 h-3.5 text-amber-400 animate-spin shrink-0" /> :
         st === "ok"      ? <Wifi className="w-3.5 h-3.5 text-emerald-400 shrink-0" /> :
         st === "dead"    ? <WifiOff className="w-3.5 h-3.5 text-red-400 shrink-0" /> :
         <div className="w-3.5 h-3.5 rounded-full border border-white/20 shrink-0" />}
        <div className="flex-1 min-w-0 text-right">
          <p className={`text-sm font-black font-['Cairo'] truncate
            ${isActive ? "text-emerald-300" : isDead ? "text-white/25" : "text-white/80"}`}>{src.name}</p>
          <p className="text-[9px] text-white/30 font-['Cairo']">{SITE_LABEL[src.site] || src.site}</p>
        </div>
        <QBadge q={src.quality} />
      </button>
    );
  }

  return (
    <>
      <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
        className="absolute inset-0 z-40 bg-black/70 backdrop-blur-sm" onClick={onClose} />
      <motion.div
        initial={{ y: "100%" }} animate={{ y: 0 }} exit={{ y: "100%" }}
        transition={{ type: "spring", damping: 30, stiffness: 330 }}
        className="absolute bottom-0 left-0 right-0 z-50 bg-[#0d0d10] rounded-t-3xl border-t border-white/8 max-h-[75vh] flex flex-col"
        onClick={e => e.stopPropagation()}
      >
        <div className="flex justify-center pt-3 shrink-0"><div className="w-10 h-1 rounded-full bg-white/15" /></div>
        <div className="flex items-center justify-between px-4 py-3 shrink-0 border-b border-white/6" dir="rtl">
          <p className="text-sm font-black text-white font-['Cairo']">السيرفرات المتاحة ({sources.length})</p>
          <button onClick={onClose} className="w-7 h-7 rounded-full bg-white/8 flex items-center justify-center">
            <X className="w-3.5 h-3.5 text-white/50" />
          </button>
        </div>
        <div className="overflow-y-auto px-3 py-3 pb-8 space-y-1.5">
          {sources.map(s => <Row key={s.url} src={s} />)}
        </div>
      </motion.div>
    </>
  );
}

/* ══════════════════════════════════════════════════════
   NATIVE HLS/MP4 VIDEO PLAYER
   - MP4: tries direct URL first, falls back to proxy
   - HLS: always via hls-proxy (CORS bypass)
   - No browser native controls — all custom
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
    if (type === "mp4" && attempt === "direct") {
      setAttempt("proxy");
    } else {
      onError();
    }
  }

  useEffect(() => {
    const v = videoRef.current; if (!v) return;
    hlsRef.current?.destroy(); hlsRef.current = null;
    if (type === "hls" && Hls.isSupported()) {
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
    } else if (type === "hls" && v.canPlayType("application/vnd.apple.mpegurl")) {
      v.src = effectiveUrl;
      v.play().catch(() => {});
    } else if (type === "mp4") {
      v.src = effectiveUrl;
      v.load();
      v.play().catch(() => {});
    } else {
      onError();
    }
    return () => { hlsRef.current?.destroy(); hlsRef.current = null; };
  }, [effectiveUrl, type]);

  return (
    <video
      ref={videoRef}
      className="absolute inset-0 w-full h-full bg-black"
      playsInline
      autoPlay
      onCanPlay={onCanPlay}
      onError={handleErr}
      onPlay={() => onPlayingChange?.(true)}
      onPause={() => onPlayingChange?.(false)}
      style={{ objectFit: "contain" }}
    />
  );
}

/* ══════════════════════════════════════════════════════
   VIDEO PLAYER — full-screen overlay
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
  const [showBar, setShowBar]         = useState(true);
  const [nativeError, setNativeError] = useState(false);
  const [isPlaying, setIsPlaying]     = useState(false);
  const [isLandscape, setIsLandscape] = useState(false);
  const [iframeReady, setIframeReady] = useState(false);
  const iframeRef  = useRef<HTMLIFrameElement>(null);
  const hideTimer  = useRef<ReturnType<typeof setTimeout> | null>(null);

  const useNative = !nativeError && !!src.directUrl;

  const scheduleHide = useCallback((delay = 4000) => {
    if (hideTimer.current) clearTimeout(hideTimer.current);
    hideTimer.current = setTimeout(() => setShowBar(false), delay);
  }, []);

  const handleTap = useCallback(() => {
    if (showSheet) return;
    setShowBar(prev => {
      const next = !prev;
      if (next) scheduleHide();
      else if (hideTimer.current) { clearTimeout(hideTimer.current); hideTimer.current = null; }
      return next;
    });
  }, [showSheet, scheduleHide]);

  const togglePlayPause = useCallback((e: React.MouseEvent) => {
    e.stopPropagation();
    const v = document.querySelector("video") as HTMLVideoElement | null;
    if (!v) return;
    if (v.paused) v.play().catch(() => {});
    else v.pause();
  }, []);

  useEffect(() => {
    setNativeError(false);
    setIframeReady(false);
    setShowBar(true);
    setIsPlaying(false);
    scheduleHide();
    return () => { if (hideTimer.current) clearTimeout(hideTimer.current); };
  }, [src.url]);

  function fullscreen() {
    const el = iframeRef.current || document.querySelector("video");
    if (!el) return;
    const fn = (el as any).requestFullscreen || (el as any).webkitRequestFullscreen;
    fn?.call(el);
  }

  async function toggleRotation() {
    try {
      const ori = (screen.orientation as any);
      if (!isLandscape) { await ori.lock?.("landscape"); setIsLandscape(true); }
      else { ori.unlock?.(); setIsLandscape(false); }
    } catch {
      try {
        const root = document.documentElement;
        const req = (root as any).requestFullscreen || (root as any).webkitRequestFullscreen;
        await req?.call(root);
        await (screen.orientation as any).lock?.("landscape");
        setIsLandscape(true);
      } catch { setIsLandscape(l => !l); }
    }
  }

  return (
    <div className="fixed inset-0 z-50 bg-black" dir="ltr">

      {/* ── NATIVE PLAYER ── */}
      {useNative && (
        <NativeVideoInner
          key={src.directUrl!}
          url={src.directUrl!}
          type={src.directType || "hls"}
          refUrl={src.url}
          onError={() => setNativeError(true)}
          onCanPlay={() => scheduleHide()}
          onPlayingChange={setIsPlaying}
        />
      )}

      {/* ── IFRAME PLAYER ── */}
      {!useNative && (
        <>
          <iframe
            ref={iframeRef}
            key={src.url}
            src={src.site === "vidnest"
              ? `/api/anime/proxy-embed?url=${encodeURIComponent(src.url)}`
              : src.url}
            className="absolute inset-0 w-full h-full border-none"
            style={{ opacity: iframeReady ? 1 : 0, transition: "opacity 0.35s" }}
            allow="autoplay; fullscreen; encrypted-media; picture-in-picture; accelerometer; gyroscope"
            sandbox="allow-scripts allow-same-origin allow-forms allow-presentation allow-pointer-lock"
            allowFullScreen
            title={title}
            onLoad={() => setIframeReady(true)}
          />
          {/* Loading indicator until iframe fires onLoad */}
          {!iframeReady && (
            <div className="absolute inset-0 z-[5] flex flex-col items-center justify-center gap-3 bg-black pointer-events-none">
              <Loader2 className="w-8 h-8 text-primary animate-spin" />
              <p className="text-white/40 text-[11px] font-['Cairo']">جاري تحميل المشغّل…</p>
            </div>
          )}
        </>
      )}

      {/* ── Tap overlay (full screen, always active) ── */}
      <div
        className="absolute inset-0 z-10"
        style={{ pointerEvents: showSheet ? "none" : "auto" }}
        onClick={handleTap}
      />

      {/* ── Center play/pause indicator (native only, when paused) ── */}
      {useNative && !isPlaying && (
        <motion.button
          initial={{ opacity: 0, scale: 0.85 }}
          animate={{ opacity: 1, scale: 1 }}
          exit={{ opacity: 0, scale: 0.85 }}
          onClick={togglePlayPause}
          className="absolute inset-0 z-20 flex items-center justify-center"
          style={{ pointerEvents: "auto" }}
        >
          <div className="w-16 h-16 rounded-full bg-black/65 backdrop-blur-sm border border-white/15 flex items-center justify-center shadow-xl">
            <Play className="w-7 h-7 text-white fill-white ml-1" />
          </div>
        </motion.button>
      )}

      {/* ── BACK BUTTON — ALWAYS VISIBLE ── */}
      <button
        onClick={e => { e.stopPropagation(); onClose(); }}
        className="absolute z-30 flex items-center gap-1.5 bg-black/60 backdrop-blur-md border border-white/12 rounded-full active:scale-90 transition-transform"
        style={{
          top: "max(14px, env(safe-area-inset-top))",
          right: "12px",
          padding: "8px 14px 8px 10px",
          pointerEvents: "auto",
        }}
      >
        <ChevronRight className="w-4 h-4 text-white" />
        <span className="text-white text-[12px] font-black font-['Cairo']">رجوع</span>
      </button>

      {/* ── NEXT SERVER button (top-left, always visible) ── */}
      <button
        onClick={e => { e.stopPropagation(); onNextSrc(); }}
        className="absolute z-30 flex items-center gap-1 bg-black/60 backdrop-blur-md border border-white/12 rounded-full active:scale-90 transition-transform"
        style={{
          top: "max(14px, env(safe-area-inset-top))",
          left: "12px",
          padding: "8px 12px",
          pointerEvents: "auto",
        }}
      >
        <SkipForward className="w-3.5 h-3.5 text-white/80" />
        <span className="text-white/80 text-[11px] font-bold font-['Cairo']">التالي</span>
      </button>

      {/* ── TOP INFO BAR (animated) ── */}
      <AnimatePresence>
        {showBar && (
          <motion.div
            key="topbar"
            initial={{ opacity: 0, y: -10 }}
            animate={{ opacity: 1, y: 0 }}
            exit={{ opacity: 0, y: -10 }}
            transition={{ duration: 0.18 }}
            className="absolute top-0 left-0 right-0 z-20 pointer-events-none"
            style={{
              paddingBottom: "20px",
              paddingTop: "max(64px, calc(env(safe-area-inset-top) + 52px))",
              background: "linear-gradient(to bottom, rgba(0,0,0,0.78) 0%, rgba(0,0,0,0.25) 75%, transparent 100%)",
            }}
          >
            <div className="flex items-center gap-2 px-3" dir="rtl">
              <div className="flex-1 min-w-0">
                <p className="text-white text-[13px] font-black line-clamp-1 drop-shadow-md font-['Cairo']">{title}</p>
                <div className="flex items-center gap-2 mt-0.5">
                  <p className="text-white/50 text-[10px] font-['Cairo']">الحلقة {ep === 0 ? "فيلم" : ep}</p>
                  <span className="text-[9px] font-bold text-primary/80 bg-primary/15 border border-primary/20 px-1.5 py-px rounded-md font-['Cairo'] truncate max-w-[100px]">
                    {src.name}
                  </span>
                </div>
              </div>
              <button
                onClick={e => { e.stopPropagation(); toggleRotation(); }}
                className="w-9 h-9 bg-black/55 backdrop-blur-md rounded-full flex items-center justify-center border border-white/12 active:scale-90 pointer-events-auto shrink-0"
              >
                <RotateCw className="w-4 h-4 text-white/70 transition-transform duration-300"
                  style={{ transform: isLandscape ? "rotate(90deg)" : "rotate(0deg)" }} />
              </button>
              <button
                onClick={e => { e.stopPropagation(); fullscreen(); }}
                className="w-9 h-9 bg-black/55 backdrop-blur-md rounded-full flex items-center justify-center border border-white/12 active:scale-90 pointer-events-auto shrink-0"
              >
                <Maximize2 className="w-4 h-4 text-white/70" />
              </button>
            </div>
          </motion.div>
        )}
      </AnimatePresence>

      {/* ── BOTTOM BAR (animated) ── */}
      <AnimatePresence>
        {showBar && (
          <motion.div
            key="bottombar"
            initial={{ opacity: 0, y: 10 }}
            animate={{ opacity: 1, y: 0 }}
            exit={{ opacity: 0, y: 10 }}
            transition={{ duration: 0.18 }}
            className="absolute bottom-0 left-0 right-0 z-20 flex items-center gap-2 px-3 pointer-events-none"
            dir="rtl"
            style={{
              paddingBottom: "max(20px, env(safe-area-inset-bottom))",
              paddingTop: "16px",
              background: "linear-gradient(to top, rgba(0,0,0,0.82) 0%, rgba(0,0,0,0.3) 70%, transparent 100%)",
            }}
          >
            <button
              onClick={e => { e.stopPropagation(); onPrev(); }} disabled={ep <= 1}
              className="flex items-center gap-1 bg-black/65 backdrop-blur-md text-white/80 text-[10px] font-bold px-3 py-2.5 rounded-xl border border-white/12 disabled:opacity-30 active:scale-95 font-['Cairo'] pointer-events-auto shrink-0"
            >
              <ChevronRight className="w-3.5 h-3.5" /> السابقة
            </button>
            <button
              onClick={e => { e.stopPropagation(); setShowSheet(true); }}
              className="flex-1 flex items-center justify-center gap-1.5 bg-black/65 backdrop-blur-md text-white/60 text-[10px] font-bold py-2.5 rounded-xl border border-white/12 active:scale-95 font-['Cairo'] pointer-events-auto"
            >
              <List className="w-3.5 h-3.5" /> السيرفرات ({sources.length})
            </button>
            <button
              onClick={e => { e.stopPropagation(); onNext(); }} disabled={ep >= totalEps && totalEps > 0}
              className="flex items-center gap-1 bg-primary text-white text-[10px] font-black px-3 py-2.5 rounded-xl disabled:opacity-30 active:scale-95 font-['Cairo'] pointer-events-auto shrink-0"
            >
              التالية <ChevronLeft className="w-3.5 h-3.5" />
            </button>
          </motion.div>
        )}
      </AnimatePresence>

      {/* ── Server sheet ── */}
      <AnimatePresence>
        {showSheet && (
          <ServerSheet
            sources={sources} activeIdx={activeIdx} statuses={statuses}
            onSelect={s => { onSelectSource(s); setShowSheet(false); }}
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
        <img src={cover || bgUrl} alt="" className="w-full h-full object-cover scale-125"
          style={{ filter: "blur(40px) brightness(0.18) saturate(1.4)" }} />
      </div>
      <div className="absolute inset-0 bg-gradient-to-b from-black/60 via-[#09090B]/80 to-[#09090B]" />
      <div className="relative z-10 flex flex-col items-center gap-6 px-6 text-center w-full max-w-xs">
        {cover && (
          <motion.div initial={{ y: 20, opacity: 0, scale: 0.9 }} animate={{ y: 0, opacity: 1, scale: 1 }}
            transition={{ duration: 0.55, ease: [0.22, 1, 0.36, 1] }} className="relative">
            <div className="absolute -inset-4 rounded-[32px] blur-3xl opacity-50"
              style={{ background: "radial-gradient(circle,rgba(139,92,246,0.8) 0%,transparent 65%)" }} />
            <img src={cover} alt="" className="relative w-44 h-64 object-cover rounded-3xl border border-white/15 shadow-[0_30px_80px_rgba(0,0,0,0.9)]" />
            <div className="absolute -bottom-3 left-1/2 -translate-x-1/2 bg-primary text-white text-[11px] font-black px-4 py-1.5 rounded-full shadow-lg whitespace-nowrap">
              الحلقة {ep}
            </div>
          </motion.div>
        )}
        <motion.div initial={{ opacity: 0, y: 12 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: 0.2 }}
          className="flex flex-col items-center gap-1.5 mt-2">
          <h2 className="text-white text-base font-black font-['Cairo'] drop-shadow-xl line-clamp-2">{title}</h2>
          <p className="text-white/40 text-[11px] font-['Cairo']">
            {sourcesCount > 0 ? `✦ ${sourcesCount} سيرفر · سيبدأ التشغيل تلقائياً` : "يجري البحث في المصادر..."}
          </p>
        </motion.div>
        <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} transition={{ delay: 0.35 }}
          className="flex flex-col items-center gap-3">
          <div className="flex items-center gap-1.5">
            {[0,1,2,3,4,5].map(i => (
              <motion.div key={i} className="w-1.5 h-1.5 rounded-full bg-primary"
                animate={{ opacity: [0.2, 1, 0.2], scale: [0.8, 1.2, 0.8] }}
                transition={{ duration: 1.2, repeat: Infinity, delay: i * 0.15 }} />
            ))}
          </div>
        </motion.div>
      </div>
    </div>
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

  function serverPriority(s: Source): number {
    if (s.directUrl) return 14;                          // direct HLS/MP4 always wins
    // ── AnimePahe via VidNest — primary source ──
    if (s.site === "vidnest")   return 13;               // AnimePahe (Arabic subs)
    // ── Arabic sources ──
    if (s.site === "shahiid")   return 12;               // Arabic dubbed/subbed
    if (s.site === "animelek")  return 11;               // Arabic subbed
    if (s.site === "animedar")  return 10;               // Arabic
    // ── Other Arabic scrapers ──
    if (s.site === "animephoenix" || s.site === "anime4up") return 9;
    if (s.site === "myanime" || s.site === "animekayan") return 8;
    // ── English fallback (AnimeGG) — lower priority ──
    if (s.site === "animegg") return 5;
    return 3;
  }

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

  return (
    <div className="bg-[#09090B] min-h-screen text-white" dir="rtl">

      {/* ── PLAYER OVERLAY ── */}
      <AnimatePresence>
        {showPlayer && active && (
          <motion.div key={active.url} initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}>
            <VideoPlayer src={active} {...sharedPlayerProps} />
          </motion.div>
        )}
      </AnimatePresence>

      {/* ── LOADING / SERVER LIST (hidden when player active) ── */}
      <div className={showPlayer ? "hidden" : "flex flex-col min-h-screen"}>

        {(loading || (!loading && sources.length === 0 && !streamDone)) && (
          <LoadingScreen cover={cover} title={title} ep={ep} genres={genres} sourcesCount={sources.length} />
        )}

        {(!loading && (sources.length > 0 || streamDone)) && (
          <>
            {/* Sticky header */}
            <div className="sticky top-0 z-30 bg-[#09090B]/97 backdrop-blur-xl border-b border-white/6 px-4 pt-4 pb-3 shrink-0">
              <div className="flex items-center gap-3 mb-3">
                <button onClick={() => window.history.back()}
                  className="w-9 h-9 bg-white/6 border border-white/8 rounded-xl flex items-center justify-center active:scale-90 shrink-0">
                  <ChevronRight className="w-4 h-4 text-white/65" />
                </button>
                <div className="flex-1 min-w-0">
                  <h1 className="text-sm font-black font-['Cairo'] line-clamp-1">{title}</h1>
                  <div className="flex items-center gap-2 flex-wrap">
                    <p className="text-[10px] text-primary font-bold font-['Cairo']">
                      الحلقة {ep}{sources.length > 0 && ` · ${sources.length} سيرفر`}
                    </p>
                    {!streamDone && <Loader2 className="w-3 h-3 text-primary/60 animate-spin" />}
                  </div>
                </div>
                {active && (
                  <button onClick={() => setShowPlayer(true)}
                    className="w-9 h-9 bg-primary/15 border border-primary/25 rounded-xl flex items-center justify-center active:scale-90 shrink-0">
                    <Play className="w-4 h-4 text-primary fill-primary" />
                  </button>
                )}
              </div>
              <div className="flex gap-2">
                <button disabled={ep <= 1} onClick={() => goEp(ep - 1)}
                  className="flex-1 h-9 flex items-center justify-center gap-1 bg-[#1C1C22] rounded-xl border border-white/6 disabled:opacity-30 text-[11px] font-bold font-['Cairo'] active:scale-[0.97]">
                  <ChevronRight className="w-3.5 h-3.5" /> السابقة
                </button>
                <div className="w-12 h-9 bg-primary/10 border border-primary/20 rounded-xl flex items-center justify-center shrink-0">
                  <span className="text-sm font-black text-primary">{ep}</span>
                </div>
                <button disabled={ep >= totalEps} onClick={() => goEp(ep + 1)}
                  className="flex-1 h-9 flex items-center justify-center gap-1 bg-primary rounded-xl disabled:opacity-30 text-[11px] font-black font-['Cairo'] active:scale-[0.97]">
                  التالية <ChevronLeft className="w-3.5 h-3.5" />
                </button>
              </div>
            </div>

            <div className="flex-1 px-4 pt-4 pb-28 space-y-3">

              {active && (
                <motion.button initial={{ opacity: 0, scale: 0.97 }} animate={{ opacity: 1, scale: 1 }}
                  onClick={() => setShowPlayer(true)}
                  className="w-full flex items-center gap-3 p-3.5 rounded-2xl bg-emerald-500/10 border border-emerald-500/25 active:scale-[0.98]">
                  <div className="w-9 h-9 rounded-xl bg-emerald-500/20 border border-emerald-500/30 flex items-center justify-center shrink-0">
                    <MonitorPlay className="w-4 h-4 text-emerald-400" />
                  </div>
                  <div className="flex-1 text-right">
                    <p className="text-xs font-black text-emerald-300 font-['Cairo']">يعمل الآن: {active.name}</p>
                    <p className="text-[9px] text-emerald-400/60 font-['Cairo']">اضغط للعودة للمشغّل</p>
                  </div>
                  <Play className="w-4 h-4 text-emerald-400 fill-emerald-400 shrink-0" />
                </motion.button>
              )}

              {streamDone && (
                <button onClick={() => { localStorage.removeItem(`srccache:${animeId}-${ep}`); window.location.reload(); }}
                  className="w-full h-9 flex items-center justify-center gap-2 bg-white/5 border border-white/8 rounded-xl text-white/40 text-xs font-bold font-['Cairo'] active:scale-[0.97]">
                  <RefreshCw className="w-3.5 h-3.5" /> تحديث السيرفرات
                </button>
              )}

              {streamDone && sources.length === 0 && (
                <div className="flex flex-col items-center justify-center gap-4 py-16 text-center">
                  <AlertTriangle className="w-10 h-10 text-white/12" />
                  <div>
                    <p className="text-white/45 text-sm font-black font-['Cairo']">لا توجد سيرفرات متاحة</p>
                    <p className="text-white/20 text-xs mt-1 font-['Cairo']">هذه الحلقة غير متوفرة حالياً</p>
                  </div>
                </div>
              )}

              {sources.length > 0 && (
                <>
                  <div className="flex items-center justify-between px-1">
                    <p className="text-[10px] text-white/30 font-['Cairo'] flex items-center gap-1">
                      <Zap className="w-2.5 h-2.5 text-primary" /> السيرفرات المتاحة
                    </p>
                    {!streamDone && (
                      <div className="flex items-center gap-1.5">
                        <Loader2 className="w-3 h-3 text-amber-400 animate-spin" />
                        <span className="text-[9px] text-amber-400 font-['Cairo']">جارٍ جلب المزيد</span>
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
          </>
        )}
      </div>

      {/* Toast */}
      <AnimatePresence>
        {toast && (
          <motion.div initial={{ opacity: 0, y: 24 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0, y: 12 }}
            className="fixed bottom-8 left-4 right-4 z-[100] bg-[#1C1C22] border border-white/10 rounded-2xl px-4 py-3 text-center shadow-2xl">
            <p className="text-sm text-white/85 font-['Cairo'] font-bold">{toast}</p>
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  );
}

/* ══════════════════════════════════════════════════════
   SERVER BUTTON (list view)
══════════════════════════════════════════════════════ */
function ServerButton({ src, status, isActive, onSelect }: {
  src: Source; status: ProbeStatus; isActive: boolean;
  onSelect: (s: Source) => void;
}) {
  const isDead = status === "dead";
  const label  = SITE_LABEL[src.site] || src.site;

  const cardCls = isActive
    ? "bg-emerald-500/10 border-emerald-500/35"
    : isDead
    ? "bg-red-500/4 border-red-400/15 opacity-35"
    : "bg-[#111116] border-white/6";

  const statusEl =
    status === "testing" ? <Loader2 className="w-3.5 h-3.5 text-amber-400 animate-spin shrink-0" /> :
    status === "ok"      ? <CheckCircle2 className="w-3.5 h-3.5 text-emerald-400 shrink-0" /> :
    status === "dead"    ? <XCircle className="w-3.5 h-3.5 text-red-400 shrink-0" /> :
    isActive ? <CheckCircle2 className="w-3.5 h-3.5 text-emerald-400 shrink-0" /> :
    <div className="w-3.5 h-3.5 rounded-full border border-white/20 shrink-0" />;

  return (
    <button
      className={`w-full flex items-center gap-2.5 px-3 py-3 rounded-2xl border transition-all active:scale-[0.98] ${cardCls}`}
      onClick={() => !isDead && onSelect(src)}
      disabled={isDead}
    >
      {statusEl}
      <div className="flex-1 min-w-0 text-right">
        <p className={`text-sm font-black font-['Cairo'] truncate ${isActive ? "text-emerald-300" : isDead ? "text-white/25" : "text-white/85"}`}>
          {src.name}
        </p>
        <p className="text-[9px] text-white/30 font-['Cairo']">{label}</p>
      </div>
      <QBadge q={src.quality} />
      <div className={`w-8 h-8 rounded-xl flex items-center justify-center shrink-0 border
        ${isActive ? "bg-emerald-500/20 border-emerald-500/35 text-emerald-400" : "bg-primary/15 border-primary/25 text-primary"}`}>
        <Play className="w-3.5 h-3.5 fill-current" />
      </div>
    </button>
  );
}
