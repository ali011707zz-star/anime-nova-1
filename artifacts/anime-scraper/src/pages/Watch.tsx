import { useState, useEffect, useRef, useCallback } from "react";
import { useLocation } from "wouter";
import {
  ChevronRight, ChevronLeft, Loader2, Play,
  AlertTriangle, RefreshCw, CheckCircle2, XCircle,
  Maximize2, List, X, Wifi, WifiOff, SkipForward,
  MonitorPlay, Zap, Volume2, VolumeX,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import Hls from "hls.js";

/* ─────────────────────────────────────────────────────
   AniList query
───────────────────────────────────────────────────── */
const ANILIST_Q = `query ($id: Int) {
  Media(id: $id, type: ANIME) {
    id idMal title { romaji english }
    episodes coverImage { large extraLarge }
    nextAiringEpisode { episode }
    bannerImage genres
  }
}`;

/* ─────────────────────────────────────────────────────
   Types
───────────────────────────────────────────────────── */
interface Source {
  name: string; url: string; quality: string; qualityRank: number; site: string;
  directUrl?: string; directType?: "hls" | "mp4";
}
type ProbeStatus = "unknown" | "testing" | "ok" | "dead";

/* ─────────────────────────────────────────────────────
   Constants
───────────────────────────────────────────────────── */
const SITE_LABEL: Record<string, string> = {
  shahiid: "شاهيد أنمي",
  animegg: "AnimeGG",
  allanime: "AllAnime",
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

/* ─────────────────────────────────────────────────────
   Helpers
───────────────────────────────────────────────────── */
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
          <p className="text-sm font-black text-white font-['Cairo']">السيرفرات المتاحة</p>
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
   NATIVE HLS/MP4 VIDEO PLAYER (for directUrl sources)
══════════════════════════════════════════════════════ */
function NativeVideoInner({
  url, type, onError, onCanPlay,
}: {
  url: string; type: "hls" | "mp4";
  onError: () => void; onCanPlay: () => void;
}) {
  const videoRef = useRef<HTMLVideoElement>(null);
  const hlsRef   = useRef<Hls | null>(null);

  useEffect(() => {
    const v = videoRef.current; if (!v) return;
    if (type === "hls" && Hls.isSupported()) {
      const hls = new Hls({ enableWorker: true, lowLatencyMode: false });
      hlsRef.current = hls;
      hls.loadSource(url);
      hls.attachMedia(v);
      hls.on(Hls.Events.MANIFEST_PARSED, () => { v.play().catch(() => {}); });
      hls.on(Hls.Events.ERROR, (_, d) => { if (d.fatal) onError(); });
    } else if (type === "hls" && v.canPlayType("application/vnd.apple.mpegurl")) {
      v.src = url;
      v.play().catch(() => {});
    } else if (type === "mp4") {
      v.src = url;
      v.play().catch(() => {});
    } else {
      onError();
    }
    return () => { hlsRef.current?.destroy(); hlsRef.current = null; };
  }, [url, type]);

  return (
    <video
      ref={videoRef}
      className="absolute inset-0 w-full h-full bg-black"
      controls
      playsInline
      autoPlay
      onCanPlay={onCanPlay}
      onError={onError}
      style={{ objectFit: "contain" }}
    />
  );
}

/* ══════════════════════════════════════════════════════
   VIDEO PLAYER — switches between native & iframe
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
  const [showSheet, setShowSheet] = useState(false);
  const [showBar, setShowBar]     = useState(true);
  const [nativeError, setNativeError] = useState(false);
  const iframeRef = useRef<HTMLIFrameElement>(null);
  const hideTimer = useRef<ReturnType<typeof setTimeout> | null>(null);

  const useNative = !nativeError && !!src.directUrl;

  const scheduleHide = useCallback((delay = 5000) => {
    if (hideTimer.current) clearTimeout(hideTimer.current);
    hideTimer.current = setTimeout(() => setShowBar(false), delay);
  }, []);

  const handleTap = useCallback(() => {
    setShowBar(prev => {
      const next = !prev;
      if (next) scheduleHide();
      return next;
    });
  }, [scheduleHide]);

  useEffect(() => {
    setNativeError(false);
    setShowBar(true);
    scheduleHide();
    return () => { if (hideTimer.current) clearTimeout(hideTimer.current); };
  }, [src.url]);

  // Auto-switch to next server when native video fails
  useEffect(() => {
    if (!nativeError) return;
    const t = setTimeout(() => onNextSrc(), 1200);
    return () => clearTimeout(t);
  }, [nativeError]);

  function fullscreen() {
    const el = iframeRef.current || document.querySelector("video");
    if (!el) return;
    const fn = (el as any).requestFullscreen || (el as any).webkitRequestFullscreen;
    fn?.call(el);
  }

  const playerUrl = src.url;

  return (
    <div
      className="fixed inset-0 z-50 bg-black"
      dir="ltr"
      onClick={useNative ? handleTap : undefined}
    >

      {/* ── NATIVE PLAYER (HLS.js / MP4) ── */}
      {useNative && (
        <NativeVideoInner
          key={src.directUrl!}
          url={src.directUrl!}
          type={src.directType || "hls"}
          onError={() => setNativeError(true)}
          onCanPlay={() => { setShowBar(true); scheduleHide(); }}
        />
      )}

      {/* ── IFRAME PLAYER — embed iframes ── */}
      {!useNative && (
        <iframe
          ref={iframeRef}
          key={playerUrl}
          src={playerUrl}
          className="absolute inset-0 w-full h-full border-none"
          allow="autoplay; fullscreen; encrypted-media; picture-in-picture; accelerometer; gyroscope; microphone; camera"
          sandbox="allow-scripts allow-same-origin allow-forms allow-presentation allow-fullscreen allow-pointer-lock"
          allowFullScreen
          title={title}
        />
      )}

      {/* ── Thin tap strip at very top for iframes (iframes eat touches) ── */}
      <div
        className="absolute top-0 left-0 right-0 h-16 z-20 cursor-pointer"
        style={{ pointerEvents: showBar ? "none" : "auto" }}
        onClick={handleTap}
      />

      {/* ── Pill to restore controls when hidden ── */}
      <AnimatePresence>
        {!showBar && (
          <motion.button
            key="pill"
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            exit={{ opacity: 0 }}
            onClick={e => { e.stopPropagation(); handleTap(); }}
            className="absolute top-3 left-1/2 -translate-x-1/2 z-30 w-20 h-1.5 bg-white/25 rounded-full active:bg-white/50 transition-all"
          />
        )}
      </AnimatePresence>

      {/* ── TOP BAR (includes back + next-server buttons) ── */}
      <AnimatePresence>
        {showBar && (
          <motion.div
            key="topbar"
            initial={{ opacity: 0, y: -8 }}
            animate={{ opacity: 1, y: 0 }}
            exit={{ opacity: 0, y: -8 }}
            transition={{ duration: 0.2 }}
            className="absolute top-0 left-0 right-0 z-20 pointer-events-none"
            style={{
              paddingBottom: "14px",
              background: "linear-gradient(to bottom, rgba(0,0,0,0.82) 0%, rgba(0,0,0,0.3) 70%, transparent 100%)",
            }}
          >
            {/* BACK button */}
            <button
              onClick={e => { e.stopPropagation(); onClose(); }}
              className="absolute pointer-events-auto flex items-center gap-1.5 bg-black/60 backdrop-blur-md border border-white/15 rounded-full active:scale-90 transition-transform z-30"
              style={{ top: "max(14px, env(safe-area-inset-top))", right: "12px", padding: "7px 13px 7px 9px" }}
            >
              <ChevronRight className="w-4 h-4 text-white" />
              <span className="text-white text-[12px] font-black font-['Cairo']">رجوع</span>
            </button>

            {/* NEXT SERVER button */}
            <button
              onClick={e => { e.stopPropagation(); onNextSrc(); }}
              className="absolute pointer-events-auto flex items-center gap-1 bg-black/55 backdrop-blur-md border border-white/10 rounded-full active:scale-90 transition-transform z-30"
              style={{ top: "max(14px, env(safe-area-inset-top))", left: "12px", padding: "7px 11px" }}
            >
              <SkipForward className="w-3.5 h-3.5 text-white/70" />
              <span className="text-white/70 text-[11px] font-bold font-['Cairo']">التالي</span>
            </button>

            {/* Title row */}
            <div
              dir="rtl"
              className="flex items-center gap-2 px-3"
              style={{ paddingTop: "max(56px, calc(env(safe-area-inset-top) + 44px))" }}
            >
              <div className="flex-1 min-w-0">
                <p className="text-white text-[13px] font-black line-clamp-1 drop-shadow-md font-['Cairo']">{title}</p>
                <div className="flex items-center gap-2 mt-0.5">
                  <p className="text-white/50 text-[10px] font-['Cairo']">الحلقة {ep === 0 ? "فيلم" : ep}</p>
                  <span className="text-[9px] font-bold text-primary/80 bg-primary/15 border border-primary/20 px-1.5 py-px rounded-md font-['Cairo']">
                    {src.name}
                  </span>
                </div>
              </div>
              <button
                onClick={e => { e.stopPropagation(); fullscreen(); }}
                className="w-9 h-9 bg-black/55 backdrop-blur-md rounded-full flex items-center justify-center border border-white/15 active:scale-90 pointer-events-auto shrink-0"
              >
                <Maximize2 className="w-4 h-4 text-white/70" />
              </button>
            </div>
          </motion.div>
        )}
      </AnimatePresence>

      {/* ── BOTTOM BAR ── */}
      <AnimatePresence>
        {showBar && (
          <motion.div
            key="bottombar"
            initial={{ opacity: 0, y: 8 }}
            animate={{ opacity: 1, y: 0 }}
            exit={{ opacity: 0, y: 8 }}
            transition={{ duration: 0.2 }}
            className="absolute bottom-0 left-0 right-0 z-20 flex items-center gap-2 px-3 pointer-events-none"
            dir="rtl"
            style={{
              paddingBottom: "max(20px, env(safe-area-inset-bottom))",
              paddingTop: "14px",
              background: "linear-gradient(to top, rgba(0,0,0,0.82) 0%, rgba(0,0,0,0.3) 70%, transparent 100%)",
            }}
          >
            <button
              onClick={e => { e.stopPropagation(); onPrev(); }} disabled={ep <= 1}
              className="flex items-center gap-1 bg-black/60 backdrop-blur-md text-white/80 text-[10px] font-bold px-3 py-2.5 rounded-xl border border-white/12 disabled:opacity-30 active:scale-95 font-['Cairo'] pointer-events-auto shrink-0"
            >
              <ChevronRight className="w-3.5 h-3.5" /> السابقة
            </button>
            <button
              onClick={e => { e.stopPropagation(); setShowSheet(true); }}
              className="flex-1 flex items-center justify-center gap-1.5 bg-black/60 backdrop-blur-md text-white/55 text-[10px] font-bold py-2.5 rounded-xl border border-white/12 active:scale-95 font-['Cairo'] pointer-events-auto"
            >
              <List className="w-3.5 h-3.5" /> السيرفرات ({sources.length})
            </button>
            <button
              onClick={e => { e.stopPropagation(); onNextSrc(); }}
              className="w-10 h-10 bg-black/60 backdrop-blur-md flex items-center justify-center rounded-xl border border-white/12 active:scale-95 pointer-events-auto shrink-0"
            >
              <SkipForward className="w-4 h-4 text-white/60" />
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

      {/* Server sheet */}
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
   SERVER CARD  (list view)
══════════════════════════════════════════════════════ */
function ServerCard({ src, status, isActive, onSelect }: {
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
          {sourcesCount > 0 && <p className="text-white/25 text-[9px] font-['Cairo']">سيبدأ التشغيل تلقائياً</p>}
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
  const titleParam = sp.get("title") || "";  // pre-populated from navigation for faster start

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

  const title    = anime?.title?.romaji || anime?.title?.english || "أنمي";
  const totalEps = anime?.episodes || anime?.nextAiringEpisode?.episode || 999;
  const cover    = anime?.coverImage?.large || "";
  const genres   = anime?.genres || [];

  useEffect(() => { sourcesRef.current = sources; }, [sources]);
  useEffect(() => { activeIdxRef.current = activeIdx; }, [activeIdx]);
  useEffect(() => { statusesRef.current = statuses; }, [statuses]);

  /* ── Deduplicate sources: keep best quality per streaming host ── */
  function dedupSources(srcs: Source[]): Source[] {
    const seen = new Map<string, number>(); // host → count kept
    return srcs.filter(s => {
      let host = "";
      try { host = new URL(s.url).hostname.replace(/^(www\.|vid\.|player\.)/, ""); } catch {}
      const n = seen.get(host) || 0;
      if (n >= 2) return false;
      seen.set(host, n + 1);
      return true;
    });
  }

  /* ── Sort: directUrl > quality (FHD>HD>SD) > server priority ── */
  function sortSources(srcs: Source[]): Source[] {
    return [...srcs].sort((a, b) => {
      const aDirect = a.directUrl ? 1 : 0;
      const bDirect = b.directUrl ? 1 : 0;
      if (bDirect !== aDirect) return bDirect - aDirect;
      if (b.qualityRank !== a.qualityRank) return b.qualityRank - a.qualityRank;
      return serverPriority(b) - serverPriority(a);
    });
  }

  /* ── Start SSE stream ── */
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

  /* ── Load metadata + start SSE ── */
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
        // ── Fast path: check cache first (before any network request) ──
        const cached = getSrcCache(cacheKey);
        if (cached && cached.length > 0) {
          setSources(cached);
          const init: Record<string, ProbeStatus> = {};
          cached.forEach(s => { init[s.url] = "unknown"; });
          setStatuses(init);
          setLoading(false); setStreamDone(true);
          return;
        }

        // ── Fast path: if title came from URL, start SSE immediately ──
        if (titleParam) {
          setLoading(false);
          startSSE(titleParam, "", 0);
          // fetch AniList in parallel for metadata only (cover, genres, etc.)
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

        // ── Normal path: wait for AniList then start SSE ──
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

  /* ── Server priority: maga/megamax first ── */
  function serverPriority(s: Source): number {
    const name = s.name.toLowerCase();
    if (name.includes("maga") || name.includes("megamax")) return 10;
    if (s.site === "animePhoenix") return 9;
    if (name.includes("uqload")) return 8;
    if (name.includes("anime7u")) return 7;
    if (name.includes("d000d")) return 7;
    if (name.includes("voe")) return 6;
    if (name.includes("wishfast")) return 5;
    return 3;
  }

  /* ── Auto-play: first available source after 2s ── */
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
      }, 2000);
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
      if (statuses[s.url] !== "dead") {
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

      {/* ── SERVER LIST VIEW ── */}
      <div className={showPlayer ? "hidden" : "flex flex-col min-h-screen"}>

        {loading && (
          <LoadingScreen cover={cover} title={title} ep={ep} genres={genres} sourcesCount={sources.length} />
        )}
        {!loading && sources.length === 0 && !streamDone && (
          <LoadingScreen cover={cover} title={title} ep={ep} genres={genres} sourcesCount={0} />
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
              {/* Episode nav */}
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

              {/* Active server banner */}
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
                      <ServerCard
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
