import { useState, useEffect, useRef, useCallback } from "react";
import { useLocation } from "wouter";
import {
  ChevronRight, ChevronLeft, Loader2, Play, Pause, AlertTriangle,
  RefreshCw, Zap, CheckCircle2, XCircle, Maximize2, List,
  Camera, X, Wifi, WifiOff, SkipForward, Volume2, VolumeX,
  Film, ChevronDown, Shield, MonitorPlay,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import Hls from "hls.js";

/* ──────────────────────────────────────────────────────
   AniList query
────────────────────────────────────────────────────── */
const ANILIST_Q = `query ($id: Int) {
  Media(id: $id, type: ANIME) {
    id idMal title { romaji english }
    episodes coverImage { large extraLarge }
    nextAiringEpisode { episode }
    bannerImage genres
  }
}`;

/* ──────────────────────────────────────────────────────
   Types
────────────────────────────────────────────────────── */
interface Source {
  name: string; url: string; quality: string; qualityRank: number; site: string;
  directUrl?: string; directType?: "hls" | "mp4";
}
type ProbeStatus = "unknown" | "testing" | "ok" | "dead";

/* ──────────────────────────────────────────────────────
   Constants
────────────────────────────────────────────────────── */
const SITE_LABEL: Record<string, string> = {
  animelek: "AnimeLek", mitanime: "MitAnime", witanime: "WitAnime",
  anime4up: "Anime4Up", animeblkom: "Blkom", animetitans: "Titans",
  okanime: "OKAnime", db: "مخزن", cached: "مخزن", appsanime: "AppsAnime",
  animegate: "AnimeGate", araanime: "AraAnime", "3asq": "3asq",
  allanime: "AllAnime",
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

/* ──────────────────────────────────────────────────────
   Helpers
────────────────────────────────────────────────────── */
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

function saveHistory(id: number, title: string, cover: string, ep: number, elapsed = 0, totalEps = 0) {
  try {
    const h: any[] = JSON.parse(localStorage.getItem("watch-history") || "[]");
    const existing = h.find(x => x.id === id && x.ep === ep);
    const entry = { id, title, cover, ep, date: new Date().toISOString(),
      elapsed: Math.max(elapsed, existing?.elapsed || 0), totalEps };
    localStorage.setItem("watch-history",
      JSON.stringify([entry, ...h.filter(x => !(x.id === id && x.ep === ep))].slice(0, 60)));
  } catch {}
}
function updateElapsed(id: number, ep: number, elapsed: number) {
  try {
    const h: any[] = JSON.parse(localStorage.getItem("watch-history") || "[]");
    const idx = h.findIndex(x => x.id === id && x.ep === ep);
    if (idx !== -1) { h[idx].elapsed = elapsed; localStorage.setItem("watch-history", JSON.stringify(h)); }
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
   SERVER PICKER SHEET  (shared between players)
══════════════════════════════════════════════════════ */
function ServerSheet({ sources, activeIdx, statuses, onSelect, onClose }: {
  sources: Source[]; activeIdx: number;
  statuses: Record<string, ProbeStatus>;
  onSelect: (s: Source) => void; onClose: () => void;
}) {
  const directSrcs = sources.filter(s => s.directUrl);
  const embedSrcs  = sources.filter(s => !s.directUrl);

  function Row({ src }: { src: Source }) {
    const idx    = sources.indexOf(src);
    const isActive = idx === activeIdx;
    const st     = statuses[src.url] || "unknown";
    const isDead = st === "dead";
    return (
      <button
        onClick={() => !isDead && onSelect(src)}
        disabled={isDead}
        className={`w-full flex items-center gap-2.5 px-3 py-2.5 rounded-xl border transition-all active:scale-[0.98] text-right
          ${isActive ? "bg-emerald-500/15 border-emerald-500/30"
          : isDead ? "opacity-35 bg-white/3 border-white/5"
          : src.directUrl ? "bg-primary/6 border-primary/15 hover:bg-primary/10"
          : "bg-white/4 border-white/6 hover:bg-white/7"}`}
      >
        {isActive    ? <CheckCircle2 className="w-3.5 h-3.5 text-emerald-400 shrink-0" /> :
         st === "testing" ? <Loader2 className="w-3.5 h-3.5 text-amber-400 animate-spin shrink-0" /> :
         st === "ok"   ? <Wifi className="w-3.5 h-3.5 text-emerald-400 shrink-0" /> :
         st === "dead" ? <WifiOff className="w-3.5 h-3.5 text-red-400 shrink-0" /> :
         src.directUrl ? <Zap className="w-3.5 h-3.5 text-primary shrink-0" /> :
         <div className="w-3.5 h-3.5 rounded-full border border-white/20 shrink-0" />}
        <div className="flex-1 min-w-0 text-right">
          <p className={`text-sm font-black font-['Cairo'] truncate
            ${isActive ? "text-emerald-300" : isDead ? "text-white/25"
            : src.directUrl ? "text-primary/90" : "text-white/70"}`}>{src.name}</p>
          <p className="text-[9px] text-white/30 font-['Cairo']">{SITE_LABEL[src.site] || src.site}</p>
        </div>
        <QBadge q={src.quality} />
        {src.directUrl && (
          <span className="text-[7px] font-black text-emerald-400/70 bg-emerald-500/10 px-1.5 py-0.5 rounded shrink-0">
            {src.directType === "hls" ? "HLS" : "MP4"}
          </span>
        )}
      </button>
    );
  }

  return (
    <>
      <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
        className="absolute inset-0 z-40 bg-black/70" onClick={onClose} />
      <motion.div
        initial={{ y: "100%" }} animate={{ y: 0 }} exit={{ y: "100%" }}
        transition={{ type: "spring", damping: 30, stiffness: 330 }}
        className="absolute bottom-0 left-0 right-0 z-50 bg-[#0e0e12] rounded-t-3xl border-t border-white/8 max-h-[72vh] flex flex-col"
        onClick={e => e.stopPropagation()}
      >
        <div className="flex justify-center pt-3 shrink-0"><div className="w-10 h-1 rounded-full bg-white/15" /></div>
        <div className="flex items-center justify-between px-4 py-2.5 shrink-0" dir="rtl">
          <p className="text-xs font-black text-white font-['Cairo']">
            السيرفرات · {directSrcs.length > 0 && <span className="text-primary">{directSrcs.length} مباشر ⚡</span>}
          </p>
          <button onClick={onClose} className="w-7 h-7 rounded-full bg-white/8 flex items-center justify-center">
            <ChevronDown className="w-4 h-4 text-white/50" />
          </button>
        </div>
        <div className="overflow-y-auto px-3 pb-8 space-y-2">
          {directSrcs.length > 0 && (
            <>
              <div className="flex items-center gap-2 py-0.5">
                <div className="h-px flex-1 bg-white/5" />
                <span className="text-[8px] font-black text-primary/70 flex items-center gap-1"><Zap className="w-2.5 h-2.5" /> مباشر HLS/MP4</span>
                <div className="h-px flex-1 bg-white/5" />
              </div>
              {directSrcs.map(s => <Row key={s.url} src={s} />)}
            </>
          )}
          {embedSrcs.length > 0 && (
            <>
              <div className="flex items-center gap-2 py-0.5">
                <div className="h-px flex-1 bg-white/5" />
                <span className="text-[8px] font-black text-white/25">مشغّلات الموقع</span>
                <div className="h-px flex-1 bg-white/5" />
              </div>
              {embedSrcs.map(s => <Row key={s.url} src={s} />)}
            </>
          )}
        </div>
      </motion.div>
    </>
  );
}

/* ══════════════════════════════════════════════════════
   NATIVE VIDEO PLAYER  (HLS.js / MP4 — direct sources)
══════════════════════════════════════════════════════ */
function NativeVideoPlayer({
  src, title, ep, totalEps, animeId,
  sources, activeIdx, statuses,
  onClose, onNext, onPrev, onSelectSource, onNextSrc,
}: {
  src: Source; title: string; ep: number; totalEps: number; animeId: number;
  sources: Source[]; activeIdx: number; statuses: Record<string, ProbeStatus>;
  onClose: () => void; onNext: () => void; onPrev: () => void;
  onSelectSource: (s: Source) => void; onNextSrc: () => void;
}) {
  const [phase, setPhase]         = useState<"playing" | "failed">("playing");
  const [isPlaying, setIsPlaying] = useState(false);
  const [muted, setMuted]         = useState(false);
  const [buffering, setBuffering] = useState(true);
  const [progress, setProgress]   = useState(0);
  const [duration, setDuration]   = useState(0);
  const [showCtrl, setShowCtrl]   = useState(true);
  const [showSheet, setShowSheet] = useState(false);
  const [failMsg, setFailMsg]     = useState("");

  const videoRef   = useRef<HTMLVideoElement>(null);
  const hlsRef     = useRef<Hls | null>(null);
  const ctrlTimer  = useRef<ReturnType<typeof setTimeout> | null>(null);
  const nextTimer  = useRef<ReturnType<typeof setTimeout> | null>(null);
  const elapsed    = useRef(0);
  const startTs    = useRef(Date.now());

  useEffect(() => {
    const t = setInterval(() => {
      elapsed.current = Math.floor((Date.now() - startTs.current) / 1000);
      updateElapsed(animeId, ep, elapsed.current);
    }, 15_000);
    return () => clearInterval(t);
  }, [src.url, animeId, ep]);

  const resetCtrl = useCallback(() => {
    setShowCtrl(true);
    if (ctrlTimer.current) clearTimeout(ctrlTimer.current);
    ctrlTimer.current = setTimeout(() => setShowCtrl(false), 3500);
  }, []);

  const fail = useCallback((msg: string) => {
    setPhase("failed"); setFailMsg(msg);
    if (nextTimer.current) clearTimeout(nextTimer.current);
    if (sources[activeIdx + 1]) nextTimer.current = setTimeout(onNextSrc, 2500);
  }, [sources, activeIdx, onNextSrc]);

  /* Attach HLS / MP4 */
  useEffect(() => {
    if (!src.directUrl || !videoRef.current) return;
    const video = videoRef.current;
    hlsRef.current?.destroy(); hlsRef.current = null;
    setPhase("playing"); setBuffering(true); setIsPlaying(false);
    setProgress(0); setDuration(0); setFailMsg("");
    if (nextTimer.current) clearTimeout(nextTimer.current);
    resetCtrl();

    if (src.directType === "hls") {
      if (Hls.isSupported()) {
        const hls = new Hls({ enableWorker: true, maxBufferLength: 30, maxMaxBufferLength: 60 });
        hls.loadSource(src.directUrl);
        hls.attachMedia(video);
        hls.on(Hls.Events.MANIFEST_PARSED, () => { video.play().catch(() => {}); });
        hls.on(Hls.Events.ERROR, (_e, d) => { if (d.fatal) fail("رابط HLS فشل"); });
        hlsRef.current = hls;
      } else if (video.canPlayType("application/vnd.apple.mpegurl")) {
        video.src = src.directUrl;
        video.play().catch(() => {});
      } else { fail("المتصفح لا يدعم HLS"); }
    } else {
      video.src = src.directUrl;
      video.play().then(() => {}).catch(() => fail("تعذّر تشغيل الملف"));
    }
    return () => { hlsRef.current?.destroy(); hlsRef.current = null; if (nextTimer.current) clearTimeout(nextTimer.current); };
  }, [src.directUrl, src.directType]);

  const toggle = () => {
    const v = videoRef.current; if (!v) return;
    if (v.paused) { v.play(); setIsPlaying(true); } else { v.pause(); setIsPlaying(false); }
    resetCtrl();
  };
  const snap = () => {
    if (!videoRef.current) return;
    try {
      const c = document.createElement("canvas");
      c.width = videoRef.current.videoWidth || 1280; c.height = videoRef.current.videoHeight || 720;
      c.getContext("2d")!.drawImage(videoRef.current, 0, 0);
      c.toBlob(b => { if (!b) return; const a = document.createElement("a"); a.href = URL.createObjectURL(b); a.download = `nova-ep${ep}.png`; a.click(); });
    } catch {}
  };
  const fmt = (s: number) => { if (!isFinite(s)) return "0:00"; return `${Math.floor(s/60)}:${String(Math.floor(s%60)).padStart(2,"0")}`; };

  const ctrlVis = showCtrl || !isPlaying || phase === "failed";
  const nextSrc = sources[activeIdx + 1];

  return (
    <div className="fixed inset-0 z-50 bg-black flex flex-col" dir="ltr"
      onMouseMove={resetCtrl} onTouchStart={resetCtrl}>

      {/* Failed overlay */}
      {phase === "failed" && (
        <div className="absolute inset-0 z-30 flex flex-col items-center justify-center gap-4 bg-black/95">
          <XCircle className="w-12 h-12 text-red-400/70" />
          <div dir="rtl" className="text-center">
            <p className="text-white font-black font-['Cairo']">فشل التشغيل</p>
            <p className="text-white/40 text-xs font-['Cairo'] mt-1">{failMsg}</p>
            {nextSrc && <p className="text-primary/60 text-[10px] font-['Cairo'] mt-2">جارٍ الانتقال لـ {nextSrc.name}…</p>}
          </div>
          <div className="flex gap-2" dir="rtl">
            <button onClick={onNextSrc}
              className="flex items-center gap-1.5 bg-primary/20 border border-primary/30 text-primary px-4 py-2 rounded-xl text-sm font-bold font-['Cairo'] active:scale-95">
              <SkipForward className="w-4 h-4" /> سيرفر آخر
            </button>
            <button onClick={() => setShowSheet(true)}
              className="flex items-center gap-1.5 bg-white/6 border border-white/10 text-white/50 px-4 py-2 rounded-xl text-sm font-bold font-['Cairo'] active:scale-95">
              <List className="w-4 h-4" /> السيرفرات
            </button>
          </div>
        </div>
      )}

      {/* Gradient overlays */}
      <AnimatePresence>
        {ctrlVis && (
          <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            className="absolute inset-0 z-10 pointer-events-none">
            <div style={{ height: "40%", background: "linear-gradient(180deg,rgba(0,0,0,0.8) 0%,transparent 100%)" }} />
            <div className="absolute bottom-0 left-0 right-0" style={{ height: "40%", background: "linear-gradient(0deg,rgba(0,0,0,0.8) 0%,transparent 100%)" }} />
          </motion.div>
        )}
      </AnimatePresence>

      {/* Top bar */}
      <div className={`absolute top-0 left-0 right-0 z-30 flex items-center justify-between px-3 pt-5 pb-2 transition-opacity duration-300 ${ctrlVis ? "opacity-100" : "opacity-0 pointer-events-none"}`}>
        <div className="flex items-center gap-2">
          <button onClick={onClose} className="w-9 h-9 bg-black/60 rounded-full flex items-center justify-center border border-white/15 active:scale-90">
            <X className="w-4 h-4 text-white" />
          </button>
          <div dir="rtl">
            <p className="text-white text-[11px] font-black line-clamp-1 drop-shadow-lg">{title}</p>
            <div className="flex items-center gap-1.5">
              <p className="text-white/50 text-[9px]">الحلقة {ep}</p>
              {src.directUrl && (
                <span className="text-[7px] font-black text-emerald-400 bg-emerald-500/15 border border-emerald-500/20 px-1.5 rounded-full">
                  {src.directType === "hls" ? "HLS" : "MP4"} ⚡
                </span>
              )}
            </div>
          </div>
        </div>
        <div className="flex gap-1.5">
          <button onClick={snap} className="w-8 h-8 bg-black/60 rounded-full flex items-center justify-center border border-white/15 active:scale-90"><Camera className="w-3.5 h-3.5 text-white/70" /></button>
          <button onClick={() => setMuted(m => !m)} className="w-8 h-8 bg-black/60 rounded-full flex items-center justify-center border border-white/15 active:scale-90">
            {muted ? <VolumeX className="w-3.5 h-3.5 text-white/70" /> : <Volume2 className="w-3.5 h-3.5 text-white/70" />}
          </button>
          <button onClick={() => { const v = videoRef.current; if (v) (v.requestFullscreen || (v as any).webkitRequestFullscreen)?.call(v); }}
            className="w-8 h-8 bg-black/60 rounded-full flex items-center justify-center border border-white/15 active:scale-90">
            <Maximize2 className="w-3.5 h-3.5 text-white/70" />
          </button>
        </div>
      </div>

      {/* Video + tap to play/pause */}
      <div className="flex-1 relative bg-black flex items-center justify-center" onClick={toggle}>
        {buffering && <Loader2 className="absolute z-20 w-10 h-10 text-white/50 animate-spin pointer-events-none" />}
        <AnimatePresence>
          {ctrlVis && phase === "playing" && (
            <motion.div key={isPlaying ? "p" : "r"} initial={{ opacity: 0, scale: 0.7 }}
              animate={{ opacity: 1, scale: 1 }} exit={{ opacity: 0, scale: 0.9 }}
              className="absolute z-20 pointer-events-none">
              <div className="w-14 h-14 rounded-full bg-black/50 border border-white/20 flex items-center justify-center">
                {isPlaying ? <Pause className="w-6 h-6 text-white fill-white" /> : <Play className="w-6 h-6 text-white fill-white ml-0.5" />}
              </div>
            </motion.div>
          )}
        </AnimatePresence>
        <video ref={videoRef} className="w-full h-full object-contain" muted={muted} playsInline controls={false}
          onWaiting={() => setBuffering(true)}
          onCanPlay={() => setBuffering(false)}
          onPlaying={() => { setBuffering(false); setIsPlaying(true); }}
          onPause={() => setIsPlaying(false)}
          onTimeUpdate={() => { if (videoRef.current) { setProgress(videoRef.current.currentTime); setDuration(videoRef.current.duration || 0); } }}
          onEnded={onNext}
          onError={() => fail("خطأ في تحميل الفيديو")}
        />
      </div>

      {/* Progress bar */}
      {duration > 0 && (
        <div className={`absolute bottom-[68px] left-3 right-3 z-30 transition-opacity duration-300 ${ctrlVis ? "opacity-100" : "opacity-0"}`}
          onClick={e => {
            e.stopPropagation();
            const rect = (e.currentTarget as HTMLElement).getBoundingClientRect();
            const pct = (e.clientX - rect.left) / rect.width;
            if (videoRef.current) { videoRef.current.currentTime = pct * duration; setProgress(pct * duration); }
          }}>
          <div className="h-1 bg-white/15 rounded-full cursor-pointer">
            <div className="h-full bg-primary rounded-full relative" style={{ width: `${(progress / duration) * 100}%` }}>
              <div className="absolute right-0 top-1/2 -translate-y-1/2 w-3 h-3 bg-white rounded-full" />
            </div>
          </div>
          <div className="flex justify-between mt-1">
            <span className="text-[9px] text-white/35">{fmt(duration - progress)}</span>
            <span className="text-[9px] text-white/35">{fmt(progress)}</span>
          </div>
        </div>
      )}

      {/* Bottom controls */}
      <div className={`absolute bottom-0 left-0 right-0 z-30 flex items-center gap-2 px-3 pb-6 transition-opacity duration-300 ${ctrlVis ? "opacity-100" : "opacity-0 pointer-events-none"}`}
        dir="rtl" onClick={e => e.stopPropagation()}>
        <button onClick={onPrev} disabled={ep <= 1}
          className="flex items-center gap-1 bg-black/70 text-white/70 text-[10px] font-bold px-3 py-2 rounded-xl border border-white/15 disabled:opacity-30 active:scale-95 font-['Cairo'] shrink-0">
          <ChevronRight className="w-3.5 h-3.5" /> السابقة
        </button>
        <button onClick={() => setShowSheet(true)}
          className="flex-1 flex items-center justify-center gap-1.5 bg-black/70 text-white/55 text-[9px] font-bold py-2 rounded-xl border border-white/15 active:scale-95 font-['Cairo']">
          <List className="w-3 h-3" /> السيرفرات ({sources.length})
        </button>
        <button onClick={e => { e.stopPropagation(); onNextSrc(); }}
          className="flex items-center bg-white/10 text-white/55 px-2.5 py-2 rounded-xl border border-white/15 active:scale-95 shrink-0">
          <SkipForward className="w-3.5 h-3.5" />
        </button>
        <button onClick={onNext} disabled={ep >= totalEps && totalEps > 0}
          className="flex items-center gap-1 bg-primary text-white text-[10px] font-black px-3 py-2 rounded-xl disabled:opacity-30 active:scale-95 font-['Cairo'] shrink-0">
          التالية <ChevronLeft className="w-3.5 h-3.5" />
        </button>
      </div>

      {/* Server sheet */}
      <AnimatePresence>
        {showSheet && (
          <ServerSheet sources={sources} activeIdx={activeIdx} statuses={statuses}
            onSelect={s => { onSelectSource(s); setShowSheet(false); }}
            onClose={() => setShowSheet(false)} />
        )}
      </AnimatePresence>
    </div>
  );
}

/* ══════════════════════════════════════════════════════
   EMBED PLAYER
   - iframe fills ENTIRE screen (absolute inset-0)
   - Our controls overlay as dark gradient bars (top + bottom)
   - pointer-events:none on containers → clicks pass to video
   - pointer-events:auto on each button → we capture those only
   - Dark gradients hide site ads/controls at top & bottom
   - referrerpolicy="no-referrer" prevents referrer-based blocking
   - sandbox blocks popups (no allow-popups) and top-nav
══════════════════════════════════════════════════════ */
function EmbedPlayer({
  src, title, ep, totalEps,
  sources, activeIdx, statuses,
  onClose, onNext, onPrev, onSelectSource, onNextSrc,
}: {
  src: Source; title: string; ep: number; totalEps: number;
  sources: Source[]; activeIdx: number; statuses: Record<string, ProbeStatus>;
  onClose: () => void; onNext: () => void; onPrev: () => void;
  onSelectSource: (s: Source) => void; onNextSrc: () => void;
}) {
  const [loading, setLoading] = useState(true);
  const [showSheet, setShowSheet] = useState(false);
  const iframeRef = useRef<HTMLIFrameElement>(null);

  useEffect(() => { setLoading(true); }, [src.url]);

  function fullscreen() {
    const el = iframeRef.current; if (!el) return;
    const fn = el.requestFullscreen || (el as any).webkitRequestFullscreen;
    fn?.call(el);
  }

  return (
    <div className="fixed inset-0 z-50 bg-black" dir="ltr">

      {/* ── Site embed player — fills entire screen ──
          Direct URL (no proxy) = no CORS issues.
          referrerpolicy=no-referrer stops referrer-based blocking.
          sandbox: scripts + same-origin let the player work normally;
                   no allow-popups blocks pop-up ads entirely. */}
      <iframe
        ref={iframeRef}
        src={src.url}
        className="absolute inset-0 w-full h-full border-none"
        referrerPolicy="no-referrer"
        sandbox="allow-scripts allow-same-origin allow-presentation allow-forms"
        allow="autoplay; fullscreen; encrypted-media; picture-in-picture"
        onLoad={() => setLoading(false)}
        title={title}
      />

      {/* Loading overlay */}
      {loading && (
        <div className="absolute inset-0 z-10 bg-black/85 flex flex-col items-center justify-center gap-3 pointer-events-none">
          <Loader2 className="w-10 h-10 text-primary/60 animate-spin" />
          <p className="text-white/35 text-xs font-['Cairo']" dir="rtl">جارٍ تحميل المشغّل…</p>
        </div>
      )}

      {/* ── TOP overlay ──
          Dark gradient covers site header + top ads.
          pointer-events:none on container → video clicks pass through.
          Only button elements have pointer-events:auto. */}
      <div
        className="absolute top-0 left-0 right-0 z-20 flex items-start gap-2 px-3 pointer-events-none"
        style={{
          background: "linear-gradient(to bottom, rgba(0,0,0,0.93) 0%, rgba(0,0,0,0.6) 50%, transparent 100%)",
          paddingTop: "max(20px, env(safe-area-inset-top))",
          paddingBottom: "56px",
        }}
      >
        <button onClick={onClose}
          className="w-10 h-10 bg-black/60 backdrop-blur-sm rounded-full flex items-center justify-center border border-white/20 active:scale-90 pointer-events-auto shrink-0 mt-0.5">
          <X className="w-4 h-4 text-white" />
        </button>
        <div dir="rtl" className="flex-1 min-w-0 mt-1 select-none">
          <p className="text-white text-[13px] font-black line-clamp-1 drop-shadow-md">{title}</p>
          <div className="flex items-center gap-2 mt-0.5">
            <p className="text-white/50 text-[10px]">{ep === 0 ? "فيلم" : `الحلقة ${ep}`}</p>
            <span className="text-[9px] text-primary/70 font-bold bg-primary/10 border border-primary/20 px-1.5 py-px rounded-md">{src.name}</span>
          </div>
        </div>
        <button onClick={fullscreen}
          className="w-10 h-10 bg-black/60 backdrop-blur-sm rounded-full flex items-center justify-center border border-white/20 active:scale-90 pointer-events-auto shrink-0 mt-0.5">
          <Maximize2 className="w-4 h-4 text-white/70" />
        </button>
      </div>

      {/* ── BOTTOM overlay ──
          Dark gradient covers site player controls + bottom ads. */}
      <div
        className="absolute bottom-0 left-0 right-0 z-20 flex items-end gap-2 px-3 pointer-events-none"
        dir="rtl"
        style={{
          background: "linear-gradient(to top, rgba(0,0,0,0.93) 0%, rgba(0,0,0,0.6) 50%, transparent 100%)",
          paddingBottom: "max(24px, env(safe-area-inset-bottom))",
          paddingTop: "56px",
        }}
      >
        <button onClick={onPrev} disabled={ep <= 1}
          className="flex items-center gap-1 bg-black/75 backdrop-blur-sm text-white/80 text-[11px] font-bold px-3 py-2.5 rounded-xl border border-white/15 disabled:opacity-30 active:scale-95 font-['Cairo'] pointer-events-auto shrink-0">
          <ChevronRight className="w-3.5 h-3.5" /> السابقة
        </button>
        <button onClick={onNextSrc}
          className="flex-1 flex items-center justify-center gap-1.5 bg-black/75 backdrop-blur-sm text-amber-400 text-[11px] font-bold py-2.5 rounded-xl border border-amber-400/30 active:scale-95 font-['Cairo'] pointer-events-auto">
          <SkipForward className="w-3.5 h-3.5" /> الحلقة لا تعمل؟
        </button>
        <button onClick={() => setShowSheet(true)}
          className="w-10 h-10 bg-black/75 backdrop-blur-sm flex items-center justify-center rounded-xl border border-white/15 active:scale-95 pointer-events-auto shrink-0">
          <List className="w-4 h-4 text-white/60" />
        </button>
        <button onClick={onNext} disabled={ep >= totalEps && totalEps > 0}
          className="flex items-center gap-1 bg-primary text-white text-[11px] font-black px-3 py-2.5 rounded-xl disabled:opacity-30 active:scale-95 font-['Cairo'] pointer-events-auto shrink-0">
          التالية <ChevronLeft className="w-3.5 h-3.5" />
        </button>
      </div>

      <AnimatePresence>
        {showSheet && (
          <ServerSheet sources={sources} activeIdx={activeIdx} statuses={statuses}
            onSelect={s => { onSelectSource(s); setShowSheet(false); }}
            onClose={() => setShowSheet(false)} />
        )}
      </AnimatePresence>
    </div>
  );
}

/* ══════════════════════════════════════════════════════
   SERVER CARD (list view outside player)
══════════════════════════════════════════════════════ */
function ServerCard({ src, status, isActive, onSelect, onProbe }: {
  src: Source; status: ProbeStatus; isActive: boolean;
  onSelect: (s: Source) => void; onProbe: (s: Source) => void;
}) {
  const isDead = status === "dead";
  const label  = SITE_LABEL[src.site] || src.site;
  const hasDirect = Boolean(src.directUrl);
  const cardCls = isActive ? "bg-emerald-500/10 border-emerald-500/35"
    : isDead ? "bg-red-500/4 border-red-400/15 opacity-35"
    : hasDirect ? "bg-primary/5 border-primary/20"
    : "bg-[#111116] border-white/6";

  const statusEl =
    status === "testing" ? <Loader2 className="w-3.5 h-3.5 text-amber-400 animate-spin shrink-0" /> :
    status === "ok"      ? <CheckCircle2 className="w-3.5 h-3.5 text-emerald-400 shrink-0" /> :
    status === "dead"    ? <XCircle className="w-3.5 h-3.5 text-red-400 shrink-0" /> :
    isActive ? <CheckCircle2 className="w-3.5 h-3.5 text-emerald-400 shrink-0" /> :
    hasDirect ? <Zap className="w-3.5 h-3.5 text-primary shrink-0" /> :
    <div className="w-3.5 h-3.5 rounded-full border border-white/20 shrink-0" />;

  return (
    <div className={`w-full flex items-center gap-2.5 px-3 py-2.5 rounded-2xl border transition-all ${cardCls}`}>
      {statusEl}
      <button className="flex-1 min-w-0 text-right" onClick={() => !isDead && onSelect(src)} disabled={isDead}>
        <p className={`text-sm font-black font-['Cairo'] truncate ${isActive ? "text-emerald-300" : isDead ? "text-white/25" : hasDirect ? "text-primary/90" : "text-white/85"}`}>
          {src.name}
        </p>
        <div className="flex items-center gap-1.5">
          <p className="text-[9px] text-white/30 font-['Cairo']">{label}</p>
          {hasDirect && <span className="text-[7px] font-black text-primary/70 bg-primary/10 px-1 rounded">{src.directType?.toUpperCase()} مباشر</span>}
          {!hasDirect && <span className="text-[7px] text-white/20 bg-white/5 px-1 rounded">embed</span>}
        </div>
      </button>
      <QBadge q={src.quality} />
      <button onClick={() => onProbe(src)} disabled={status === "testing"}
        className={`w-7 h-7 rounded-xl flex items-center justify-center shrink-0 border transition-all active:scale-90
          ${status === "ok" ? "bg-emerald-500/15 border-emerald-500/25 text-emerald-400"
          : status === "dead" ? "bg-red-500/10 border-red-500/20 text-red-400"
          : "bg-white/5 border-white/10 text-white/30"}`}>
        {status === "testing" ? <Loader2 className="w-3 h-3 animate-spin" /> :
         status === "ok"  ? <Wifi className="w-3 h-3" /> :
         status === "dead"? <WifiOff className="w-3 h-3" /> :
         <Wifi className="w-3 h-3" />}
      </button>
      <button onClick={() => !isDead && onSelect(src)} disabled={isDead}
        className={`w-8 h-8 rounded-xl flex items-center justify-center shrink-0 border transition-all active:scale-90
          ${isActive ? "bg-emerald-500/20 border-emerald-500/35 text-emerald-400" : "bg-primary/15 border-primary/25 text-primary"}`}>
        <Play className="w-3.5 h-3.5 fill-current" />
      </button>
    </div>
  );
}

/* ══════════════════════════════════════════════════════
   LOADING SCREEN
══════════════════════════════════════════════════════ */
function LoadingScreen({ cover, title, ep, genres, sourcesCount, directCount }: {
  cover: string; title: string; ep: number; genres: string[]; sourcesCount: number; directCount: number;
}) {
  const bgUrl = GENRE_COVERS[genres?.[0]] || GENRE_COVERS["default"];
  return (
    <div className="min-h-screen flex flex-col items-center justify-center relative overflow-hidden" dir="rtl">
      <div className="absolute inset-0">
        <img src={cover || bgUrl} alt="" className="w-full h-full object-cover scale-125"
          style={{ filter: "blur(40px) brightness(0.2) saturate(1.4)" }} />
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
            {sourcesCount > 0
              ? directCount > 0 ? `✦ ${sourcesCount} مصدر · ${directCount} مباشر ⚡` : `✦ ${sourcesCount} مصدر متاح`
              : "يجري البحث في المصادر..."}
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
  const sp       = new URLSearchParams(window.location.search);
  const animeId  = parseInt(sp.get("anime") || "0");
  const ep       = parseInt(sp.get("ep") || "1");
  const alekSlug = sp.get("slug") || getCache(`alek-slug-${animeId}`);
  const mitSlug  = getCache(`mit-slug-${animeId}`);

  const [showPlayer, setShowPlayer]   = useState(false);
  const [anime, setAnime]             = useState<any>(null);
  const [sources, setSources]         = useState<Source[]>([]);
  const [active, setActive]           = useState<Source | null>(null);
  const [activeIdx, setActiveIdx]     = useState(0);
  const [statuses, setStatuses]       = useState<Record<string, ProbeStatus>>({});
  const [loading, setLoading]         = useState(true);
  const [streamDone, setStreamDone]   = useState(false);
  const [toast, setToast]             = useState<string | null>(null);

  const sseRef             = useRef<EventSource | null>(null);
  const seenUrls           = useRef(new Set<string>());
  const autoStarted        = useRef(false);
  const sourcesRef         = useRef<Source[]>([]);
  const activeIdxRef       = useRef(0);
  const statusesRef        = useRef<Record<string, ProbeStatus>>({});
  const embedFallbackTimer = useRef<ReturnType<typeof setTimeout> | null>(null);

  const title    = anime?.title?.romaji || anime?.title?.english || "أنمي";
  const totalEps = anime?.episodes || anime?.nextAiringEpisode?.episode || 999;
  const cover    = anime?.coverImage?.large || "";
  const genres   = anime?.genres || [];

  useEffect(() => { sourcesRef.current = sources; }, [sources]);
  useEffect(() => { activeIdxRef.current = activeIdx; }, [activeIdx]);
  useEffect(() => { statusesRef.current = statuses; }, [statuses]);

  /* ── Load metadata + start SSE ── */
  useEffect(() => {
    if (!animeId) { setLoading(false); return; }
    setLoading(true); setSources([]); setActive(null);
    setStatuses({}); setStreamDone(false); setShowPlayer(false);
    seenUrls.current.clear(); autoStarted.current = false;
    sseRef.current?.close();
    if (embedFallbackTimer.current) { clearTimeout(embedFallbackTimer.current); embedFallbackTimer.current = null; }

    const cacheKey = `${animeId}-${ep}`;
    (async () => {
      try {
        const aniRes = await fetch("https://graphql.anilist.co", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ query: ANILIST_Q, variables: { id: animeId } }),
          signal: AbortSignal.timeout(12000),
        });
        const animeData = (await aniRes.json()).data?.Media;
        setAnime(animeData);
        if (animeData) saveHistory(animeId, animeData.title?.romaji || "", animeData.coverImage?.large || "", ep, 0, animeData.episodes || 0);

        const romaji  = animeData?.title?.romaji  || "";
        const english = animeData?.title?.english || "";
        const malId   = animeData?.idMal || 0;

        const cached = getSrcCache(cacheKey);
        if (cached && cached.length > 0) {
          setSources(cached);
          const init: Record<string, ProbeStatus> = {};
          cached.forEach(s => { init[s.url] = "unknown"; });
          setStatuses(init);
          setLoading(false); setStreamDone(true);
          return;
        }

        setLoading(false);

        const params = new URLSearchParams({
          ep: String(ep), title: romaji, english,
          anilistId: String(animeId), malId: String(malId),
        });
        if (alekSlug) params.set("alekSlug", alekSlug);
        if (mitSlug)  params.set("mitSlug",  mitSlug);

        const es = new EventSource(`/api/anime/sources-stream?${params}`);
        sseRef.current = es;
        const accumulated: Source[] = [];

        es.onmessage = (e) => {
          if (e.data === "[DONE]") {
            es.close(); sseRef.current = null;
            setStreamDone(true);
            setSrcCache(cacheKey, accumulated);
            return;
          }
          if (e.data.startsWith("[SLUG]")) {
            try {
              const { alekSlug: as, mitSlug: ms } = JSON.parse(e.data.slice(6));
              if (as) setCache(`alek-slug-${animeId}`, as);
              if (ms) setCache(`mit-slug-${animeId}`,  ms);
            } catch {}
            return;
          }
          try {
            const src: Source = JSON.parse(e.data);
            if (!src.url || seenUrls.current.has(src.url)) return;
            seenUrls.current.add(src.url);
            accumulated.push(src);
            setSources(prev => {
              const updated = [...prev, src];
              updated.sort((a, b) => {
                const ad = a.directUrl ? 1 : 0, bd = b.directUrl ? 1 : 0;
                if (bd !== ad) return bd - ad;
                return b.qualityRank - a.qualityRank;
              });
              return updated;
            });
            setStatuses(prev => ({ ...prev, [src.url]: "unknown" }));

            // Background test embed sources
            if (!src.directUrl) {
              testEmbed(src.url).then(ok => {
                setStatuses(prev => ({ ...prev, [src.url]: ok ? "ok" : "dead" }));
              });
            }
          } catch {}
        };
        es.onerror = () => { es.close(); sseRef.current = null; setStreamDone(true); };
      } catch (err: any) {
        if (err.name !== "AbortError") console.error(err);
        setLoading(false); setStreamDone(true);
      }
    })();
    return () => { sseRef.current?.close(); sseRef.current = null; };
  }, [animeId, ep]);

  /* Background embed test — only mark DEAD on hard failures (CF/404/error).
     "no-video" is NOT dead: video loads dynamically via JS in the embed player. */
  async function testEmbed(url: string): Promise<boolean> {
    try {
      const r = await fetch(`/api/anime/test-embed?url=${encodeURIComponent(url)}`, { signal: AbortSignal.timeout(10000) });
      const d = await r.json();
      if (d.reason === "cloudflare" || d.reason === "404" || d.reason === "error") return false;
      return true;
    } catch { return true; }
  }

  /* ── Auto-play strategy ──
     1. Direct HLS/MP4 arrives → play immediately (best quality)
     2. Only embed sources arrive → start 3.5s timer to give direct sources time to arrive,
        then play best embed if still no direct
     3. Stream done with nothing started → play best available right away */
  useEffect(() => {
    if (autoStarted.current || showPlayer) return;

    // Priority 1: direct source → play instantly
    const directBest = sources.find(s => s.directUrl);
    if (directBest) {
      if (embedFallbackTimer.current) { clearTimeout(embedFallbackTimer.current); embedFallbackTimer.current = null; }
      autoStarted.current = true;
      setActive(directBest); setActiveIdx(sources.indexOf(directBest)); setShowPlayer(true);
      return;
    }

    // Priority 2: embed source available — arm 3.5s fallback timer (once)
    const embedBest = sources.find(s => (statusesRef.current[s.url] || "unknown") !== "dead");
    if (embedBest && !embedFallbackTimer.current) {
      embedFallbackTimer.current = setTimeout(() => {
        embedFallbackTimer.current = null;
        if (autoStarted.current) return;
        const s = sourcesRef.current.find(s2 => s2.directUrl)
          || sourcesRef.current.find(s2 => (statusesRef.current[s2.url] || "unknown") !== "dead")
          || sourcesRef.current[0];
        if (!s) return;
        autoStarted.current = true;
        setActive(s); setActiveIdx(sourcesRef.current.indexOf(s)); setShowPlayer(true);
      }, 3500);
    }

    // Stream done with no timer running and nothing started → play now
    if (streamDone && sources.length > 0 && !embedFallbackTimer.current) {
      const best = sources.find(s => (statusesRef.current[s.url] || "unknown") !== "dead") || sources[0];
      autoStarted.current = true;
      setActive(best); setActiveIdx(sources.indexOf(best)); setShowPlayer(true);
    }
  }, [sources, streamDone]);

  /* ── Probe a source URL ── */
  const probeSource = useCallback(async (src: Source) => {
    setStatuses(s => ({ ...s, [src.url]: "testing" }));
    try {
      const r = await fetch(`/api/anime/probe?url=${encodeURIComponent(src.url)}`, {
        signal: AbortSignal.timeout(8000),
      });
      const data = await r.json();
      setStatuses(s => ({ ...s, [src.url]: data.alive ? "ok" : "dead" }));
    } catch {
      setStatuses(s => ({ ...s, [src.url]: "dead" }));
    }
  }, []);

  function selectServer(src: Source) {
    const idx = sourcesRef.current.findIndex(s => s.url === src.url);
    setActive(src); setActiveIdx(idx >= 0 ? idx : 0);
    setShowPlayer(true);
    showToast("▶ جاري التشغيل...");
  }

  function goNextSrc() {
    const cur = activeIdxRef.current;
    const all = sourcesRef.current;
    // Skip dead embed sources
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
    const p = new URLSearchParams({ anime: String(animeId), ep: String(n) });
    if (alekSlug) p.set("slug", alekSlug);
    navigate(`/watch?${p}`);
  }

  const directSrcs  = sources.filter(s => s.directUrl);
  const embedSrcs   = sources.filter(s => !s.directUrl);
  const directCount = directSrcs.length;
  const aliveEmbeds = embedSrcs.filter(s => (statuses[s.url] || "unknown") !== "dead").length;

  /* Choose which player to show */
  const useEmbed = active && !active.directUrl;

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
            {useEmbed
              ? <EmbedPlayer src={active} {...sharedPlayerProps} />
              : <NativeVideoPlayer src={active} animeId={animeId} {...sharedPlayerProps} />
            }
          </motion.div>
        )}
      </AnimatePresence>

      {/* ── SERVER LIST VIEW ── */}
      <div className={showPlayer ? "hidden" : "flex flex-col min-h-screen"}>

        {loading && (
          <LoadingScreen cover={cover} title={title} ep={ep} genres={genres} sourcesCount={sources.length} directCount={directCount} />
        )}
        {!loading && sources.length === 0 && !streamDone && (
          <LoadingScreen cover={cover} title={title} ep={ep} genres={genres} sourcesCount={0} directCount={0} />
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
                    {directCount > 0 && (
                      <span className="text-[8px] font-black text-primary bg-primary/10 px-1.5 py-0.5 rounded-full">⚡ {directCount} مباشر</span>
                    )}
                    {aliveEmbeds > 0 && (
                      <span className="text-[8px] font-bold text-white/35 bg-white/5 px-1.5 py-0.5 rounded-full">{aliveEmbeds} embed</span>
                    )}
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
              {/* Active player hint */}
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
                <div className="flex items-center justify-between">
                  <p className="text-[10px] text-white/30 font-['Cairo']">
                    <Zap className="w-2.5 h-2.5 inline text-primary" /> مباشر · <Wifi className="w-2.5 h-2.5 inline" /> فحص الحلقة
                  </p>
                  {!streamDone && (
                    <div className="flex items-center gap-1.5">
                      <Loader2 className="w-3 h-3 text-amber-400 animate-spin" />
                      <span className="text-[9px] text-amber-400 font-['Cairo']">جارٍ جلب المزيد</span>
                    </div>
                  )}
                </div>
              )}

              {/* Direct sources */}
              {directSrcs.length > 0 && (
                <div>
                  <div className="flex items-center gap-2 mb-2">
                    <div className="h-px flex-1 bg-white/5" />
                    <span className="text-[8px] font-black text-primary bg-primary/10 border border-primary/20 px-2 py-0.5 rounded-lg flex items-center gap-1">
                      <Zap className="w-2.5 h-2.5" /> مشغّل مباشر
                    </span>
                    <div className="h-px flex-1 bg-white/5" />
                  </div>
                  <div className="space-y-2">
                    {directSrcs.map(src => (
                      <ServerCard key={src.url} src={src}
                        status={statuses[src.url] || "unknown"}
                        isActive={active?.url === src.url}
                        onSelect={selectServer} onProbe={probeSource} />
                    ))}
                  </div>
                </div>
              )}

              {/* Embed sources */}
              {embedSrcs.length > 0 && (
                <div>
                  <div className="flex items-center gap-2 mb-2">
                    <div className="h-px flex-1 bg-white/5" />
                    <span className="text-[8px] font-black text-white/30 bg-white/5 border border-white/8 px-2 py-0.5 rounded-lg">
                      مشغّلات المواقع
                    </span>
                    <div className="h-px flex-1 bg-white/5" />
                  </div>
                  <div className="space-y-2">
                    {embedSrcs.map(src => (
                      <ServerCard key={src.url} src={src}
                        status={statuses[src.url] || "unknown"}
                        isActive={active?.url === src.url}
                        onSelect={selectServer} onProbe={probeSource} />
                    ))}
                  </div>
                </div>
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
