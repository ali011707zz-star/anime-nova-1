import { useState, useEffect, useRef, useCallback } from "react";
import { useLocation } from "wouter";
import {
  ChevronRight, ChevronLeft, Play, Pause, Loader2,
  AlertTriangle, RefreshCw, Volume2, VolumeX,
  Maximize2, Minimize2, SkipForward, X,
  Wifi, WifiOff, RotateCcw, RotateCw, Lock, Unlock,
  CheckCircle, Zap, Camera,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import Hls from "hls.js";

/* ══════════════════════════════════ ANILIST ══════════════════ */
const ANILIST_Q = `query ($id: Int) {
  Media(id: $id, type: ANIME) {
    id idMal title { romaji english }
    episodes coverImage { large extraLarge }
    nextAiringEpisode { episode }
    bannerImage genres
  }
}`;

/* ══════════════════════════════════ TYPES ════════════════════ */
interface Source {
  name: string; url: string; quality: string; qualityRank: number; site: string;
  directUrl?: string; directType?: "hls" | "mp4";
}
type ProbeStatus = "idle" | "testing" | "ok" | "dead";

/* ══════════════════════════════════ CONSTANTS ════════════════ */
const SITE_LABEL: Record<string, string> = {
  vidnest: "AnimePahe", animapahe: "AnimePahe",
  shahiid: "شاهيد",    animegg: "AnimeGG",
  animelek: "AnimeLek", animedar: "AnimeDar",
  allanime: "AllAnime", anime4up: "Anime4up",
  animephoenix: "Phoenix", myanime: "MyAnime",
  animekayan: "Kayan",  witanime: "WitAnime",
  animerco: "Animerco", animeblkom: "بلكوم",
  animeiat: "AnimeIat", anime3rb:   "Anime3rb",
  goldenanimaniac: "Golden",
};

/* ══════════════════════════════════ HELPERS ══════════════════ */
function fmtTime(s: number) {
  if (!isFinite(s) || s < 0) return "0:00";
  const h = Math.floor(s / 3600), m = Math.floor((s % 3600) / 60), ss = Math.floor(s % 60);
  if (h > 0) return `${h}:${String(m).padStart(2,"0")}:${String(ss).padStart(2,"0")}`;
  return `${m}:${String(ss).padStart(2,"0")}`;
}

function normalizeQuality(src: Source): string {
  const q = (src.quality || "").toLowerCase();
  if (q.includes("1080") || src.qualityRank >= 5) return "1080p";
  if (q.includes("720")  || q === "hd" || src.qualityRank >= 3) return "720p";
  if (q.includes("480")  || src.qualityRank >= 2) return "480p";
  if (q.includes("360"))  return "360p";
  return "HD";
}

function getSubType(src: Source): string {
  const n = src.name;
  if (n.includes("مدبلج")) return "مدبلج";
  if (n.includes("مترجم")) return "مترجم";
  if (n.toLowerCase().includes("dub")) return "مدبلج";
  return "مترجم";
}

function getLang(src: Source): "ar" | "en" {
  if (src.site === "animegg" || src.name.toLowerCase().includes("إنجليزي") || src.name.toLowerCase().includes("english")) return "en";
  return "ar";
}

function getServerShortName(src: Source): string {
  const parts = src.name.split("·").map(p => p.trim());
  if (parts.length >= 2) {
    const id = parts[1].replace(/مترجم|مدبلج|إنجليزي|عربي|·HD|·SD/gi,"").replace(/\s+/g," ").trim();
    if (id.length > 0 && id.length <= 20) return id;
  }
  return (SITE_LABEL[src.site] || parts[0]).slice(0, 15);
}

/* ══════════════════════════════════ CACHE ════════════════════ */
function getSrcCache(key: string): Source[] | null {
  try {
    const r = localStorage.getItem(`srccache:${key}`); if (!r) return null;
    const { ts, sources } = JSON.parse(r);
    if (Date.now() - ts > 3_600_000) return null;
    return sources;
  } catch { return null; }
}
function setSrcCache(k: string, s: Source[]) {
  try { localStorage.setItem(`srccache:${k}`, JSON.stringify({ ts: Date.now(), sources: s })); } catch {}
}
function saveHistory(id: number, title: string, cover: string, ep: number, totalEps = 0) {
  try {
    const h: any[] = JSON.parse(localStorage.getItem("watch-history") || "[]");
    localStorage.setItem("watch-history", JSON.stringify([{ id, title, cover, ep, date: new Date().toISOString(), totalEps }, ...h.filter(x => !(x.id === id && x.ep === ep))].slice(0, 60)));
  } catch {}
}

/* ══════════════════════════════════ WIFI ICON ════════════════ */
function WifiStatus({ status }: { status: ProbeStatus }) {
  if (status === "testing") return <Loader2 className="w-5 h-5 text-amber-400 animate-spin" />;
  if (status === "ok")   return <Wifi className="w-5 h-5 text-emerald-400" />;
  if (status === "dead") return <WifiOff className="w-5 h-5 text-red-400" />;
  return <Wifi className="w-5 h-5 text-white/30" />;
}

/* ══════════════════════════════════ SERVER LIST PAGE ═════════ */
function ServerListPage({
  anime, ep, title: titleProp, cover: coverProp,
  sources, statuses, streamDone,
  onPlay, onBack, onSetStatus,
}: {
  anime: any; ep: number; title: string; cover: string;
  sources: Source[]; statuses: Record<string, ProbeStatus>; streamDone: boolean;
  onPlay: (s: Source) => void; onBack: () => void;
  onSetStatus: (url: string, status: ProbeStatus) => void;
}) {
  const [lang, setLang] = useState<"all" | "ar" | "en">("all");
  const title = anime?.title?.romaji || anime?.title?.english || titleProp || "";
  const cover = anime?.coverImage?.large || coverProp || "";

  const filtered = sources.filter(s => lang === "all" || getLang(s) === lang);
  const hasAr = sources.some(s => getLang(s) === "ar");
  const hasEn = sources.some(s => getLang(s) === "en");

  const qualityOrder = ["1080p", "720p", "HD", "480p", "360p"];
  const groups: Record<string, Source[]> = {};
  for (const s of filtered) {
    const q = normalizeQuality(s);
    if (!groups[q]) groups[q] = [];
    groups[q].push(s);
  }

  const [probing, setProbing] = useState<string | null>(null);

  async function handlePlay(src: Source) {
    // Already probing this source → ignore re-click
    if (probing === src.url) return;

    // No directUrl → can't probe meaningfully; send to player for extraction
    if (!src.directUrl) { onPlay(src); return; }

    const st = statuses[src.url];

    // Already confirmed alive → play immediately
    if (st === "ok") { onPlay(src); return; }

    // Currently dead → re-probe before giving up
    // (allow user to retry by clicking dead server again)
    if (st !== "dead") {
      // If already dead on second click, just try anyway as fallback
    }

    // Probe then decide
    setProbing(src.url);
    onSetStatus(src.url, "testing");
    try {
      const r = await fetch(`/api/anime/probe?url=${encodeURIComponent(src.directUrl)}`);
      const d = await r.json();
      if (d.alive) {
        onSetStatus(src.url, "ok");
        onPlay(src);
      } else {
        onSetStatus(src.url, "dead");
        // Don't play — keep showing dead (red) status
      }
    } catch {
      onSetStatus(src.url, "idle");
      onPlay(src); // network error → try anyway
    } finally {
      setProbing(null);
    }
  }

  return (
    <div className="fixed inset-0 z-50 bg-[#0c0c14] flex flex-col overflow-hidden" dir="rtl">

      {/* Top bar */}
      <div className="flex items-center gap-3 px-4 pt-safe-top py-3 shrink-0" style={{ paddingTop: "max(12px, env(safe-area-inset-top))" }}>
        <button onClick={onBack} className="w-10 h-10 rounded-xl bg-white/6 border border-white/8 flex items-center justify-center active:scale-90">
          <ChevronRight className="w-5 h-5 text-white/70" />
        </button>
        <div className="flex-1 min-w-0">
          <p className="text-white text-[13px] font-black font-['Cairo'] truncate">{title}</p>
          <p className="text-white/35 text-[11px] font-['Cairo']">الحلقة {ep}</p>
        </div>
        {cover && <img src={cover} alt="" className="w-10 h-14 rounded-lg object-cover border border-white/8 shrink-0" />}
      </div>

      {/* Info bar */}
      {!streamDone && (
        <div className="mx-4 mb-3 px-4 py-2.5 rounded-2xl bg-amber-500/8 border border-amber-500/15 flex items-center gap-3 shrink-0">
          <motion.div className="w-1.5 h-1.5 rounded-full bg-amber-400 shrink-0"
            animate={{ opacity: [0.4, 1, 0.4] }} transition={{ duration: 1, repeat: Infinity }} />
          <p className="text-amber-300/80 text-[11px] font-['Cairo']">يجري البحث عن مصادر إضافية…</p>
        </div>
      )}

      {/* Lang tabs */}
      {(hasAr && hasEn) && (
        <div className="flex gap-2 px-4 mb-3 shrink-0">
          {([["all","الكل"],["ar","🇸🇦 عربي"],["en","🇬🇧 إنجليزي"]] as const).map(([v, label]) => (
            <button key={v} onClick={() => setLang(v)}
              className={`px-3.5 py-1.5 rounded-full text-[12px] font-bold font-['Cairo'] transition-all active:scale-95
                ${lang === v ? "bg-violet-600 text-white" : "bg-white/7 border border-white/10 text-white/55"}`}>
              {label}
            </button>
          ))}
        </div>
      )}

      {/* Source groups */}
      <div className="flex-1 overflow-y-auto px-4 pb-8 space-y-5">
        {filtered.length === 0 && streamDone && (
          <div className="flex flex-col items-center justify-center gap-3 py-16">
            <AlertTriangle className="w-10 h-10 text-white/15" />
            <p className="text-white/35 text-sm font-['Cairo']">لا توجد مصادر متاحة</p>
          </div>
        )}

        {qualityOrder.filter(q => groups[q]?.length).map(quality => (
          <div key={quality}>
            {/* Quality header */}
            <div className="flex items-center gap-3 mb-2">
              <div className="flex-1 h-px bg-white/8" />
              <span className="text-white/55 text-[11px] font-black font-mono tracking-widest">{quality.toUpperCase()}</span>
              <div className="flex-1 h-px bg-white/8" />
            </div>

            {/* Source rows */}
            <div className="space-y-2">
              {groups[quality].map(src => {
                const st = statuses[src.url] || "idle";
                const isDead = st === "dead";
                const isProbing = probing === src.url;
                return (
                  <div key={src.url}
                    className={`flex items-center gap-3 px-4 py-3.5 rounded-2xl border transition-all
                      ${isDead
                        ? "opacity-50 bg-red-500/5 border-red-500/20"
                        : st === "ok"
                        ? "bg-emerald-500/5 border-emerald-500/20 active:bg-emerald-500/8"
                        : "bg-white/5 border-white/8 active:bg-white/8"}`}>

                    {/* WiFi */}
                    <div className="shrink-0">
                      <WifiStatus status={isProbing ? "testing" : st} />
                    </div>

                    {/* Name */}
                    <div className="flex-1 min-w-0">
                      <div className="flex items-center gap-2">
                        <p className="text-white/85 text-[13px] font-bold font-['Cairo'] truncate">{getServerShortName(src)}</p>
                        <span className={`text-[9px] font-black px-2 py-0.5 rounded-md shrink-0
                          ${getSubType(src) === "مدبلج" ? "bg-orange-500/20 text-orange-300 border border-orange-500/25" : "bg-violet-500/20 text-violet-300 border border-violet-500/25"}`}>
                          {getSubType(src)}
                        </span>
                        {src.directUrl && <Zap className="w-3 h-3 text-emerald-400 shrink-0" />}
                      </div>
                      <p className="text-white/30 text-[10px] font-['Cairo'] mt-0.5">{SITE_LABEL[src.site] || src.site}</p>
                    </div>

                    {/* Play / Probe button */}
                    <button onClick={() => handlePlay(src)}
                      className={`w-10 h-10 rounded-xl border flex items-center justify-center active:scale-90 shrink-0 transition-all
                        ${isDead
                          ? "bg-red-500/15 border-red-500/30"
                          : st === "ok"
                          ? "bg-emerald-600/80 border-emerald-500/40"
                          : "bg-violet-600/80 border-violet-500/40"}`}>
                      {isProbing
                        ? <Loader2 className="w-4 h-4 text-white animate-spin" />
                        : isDead
                        ? <RefreshCw className="w-3.5 h-3.5 text-red-300" />
                        : <Play className="w-4 h-4 text-white fill-white ml-0.5" />}
                    </button>
                  </div>
                );
              })}
            </div>
          </div>
        ))}
      </div>
    </div>
  );
}

/* ══════════════════════════════════ VIDEO PLAYER ══════════════ */
function VideoPlayer({
  src, title, ep, totalEps, sources, statuses,
  onBack, onNextEp, onPrevEp, onNextSrc, onOpenList,
  extracting, streamDone,
}: {
  src: Source; title: string; ep: number; totalEps: number;
  sources: Source[]; statuses: Record<string, ProbeStatus>;
  onBack: () => void; onNextEp: () => void; onPrevEp: () => void;
  onNextSrc: () => void; onOpenList: () => void;
  extracting: boolean; streamDone: boolean;
}) {
  const videoRef   = useRef<HTMLVideoElement>(null);
  const hlsRef     = useRef<Hls | null>(null);
  const hideTimer  = useRef<ReturnType<typeof setTimeout> | null>(null);
  const progRef    = useRef<HTMLDivElement>(null);

  const [showCtrl,  setShowCtrl]  = useState(true);
  const [playing,   setPlaying]   = useState(false);
  const [buffering, setBuffering] = useState(true);
  const [failed,    setFailed]    = useState(false);
  const [skipping,  setSkipping]  = useState(false);
  const [locked,    setLocked]    = useState(false);
  const [muted,     setMuted]     = useState(false);
  const [fs,        setFs]        = useState(false);
  const [progress,  setProgress]  = useState(0);
  const [buffered,  setBuffered]  = useState(0);
  const [curTime,   setCurTime]   = useState(0);
  const [duration,  setDuration]  = useState(0);
  const [seekFlash, setSeekFlash] = useState<{side:"l"|"r"; id:number}|null>(null);
  const [speed,     setSpeed]     = useState(1);
  const [showSpeed, setShowSpeed] = useState(false);
  const [videoScale, setVideoScale] = useState(1);

  const pinchRef = useRef<{ dist: number; scale: number } | null>(null);

  const isHls   = src.directType === "hls";
  // Always proxy - never try direct (IP-tied URLs)
  const playUrl = src.directUrl
    ? isHls
      ? `/api/anime/hls-proxy?url=${encodeURIComponent(src.directUrl)}&ref=${encodeURIComponent(src.url)}`
      : `/api/anime/video-proxy?url=${encodeURIComponent(src.directUrl)}&ref=${encodeURIComponent(src.url)}`
    : "";

  /* ── Back button (hardware + browser) ── */
  useEffect(() => {
    const handler = (e: PopStateEvent) => { e.preventDefault(); onBack(); };
    window.addEventListener("popstate", handler);
    // Push a state so back button fires popstate instead of leaving the page
    window.history.pushState({ nova: true }, "");
    return () => window.removeEventListener("popstate", handler);
  }, []);

  /* ── Orientation: allow natural rotation (don't force landscape) ── */
  useEffect(() => {
    try { (screen.orientation as any)?.unlock?.(); } catch {}
  }, []);

  /* ── HLS / MP4 setup ── */
  useEffect(() => {
    setFailed(false); setBuffering(true); setProgress(0);
    setCurTime(0); setDuration(0); setPlaying(false);
    if (!playUrl) return;
    const v = videoRef.current; if (!v) return;
    hlsRef.current?.destroy(); hlsRef.current = null;

    if (isHls && Hls.isSupported()) {
      const hls = new Hls({ enableWorker: true, maxBufferLength: 30, fragLoadingTimeOut: 25000, manifestLoadingTimeOut: 15000 });
      hlsRef.current = hls;
      hls.loadSource(playUrl);
      hls.attachMedia(v);
      hls.on(Hls.Events.MANIFEST_PARSED, () => v.play().catch(() => {}));
      hls.on(Hls.Events.ERROR, (_, d) => { if (d.fatal) handleFail(); });
    } else if (isHls && v.canPlayType("application/vnd.apple.mpegurl")) {
      v.src = playUrl; v.play().catch(() => {});
    } else if (!isHls) {
      v.src = playUrl; v.load(); v.play().catch(() => {});
    } else { handleFail(); }
    return () => { hlsRef.current?.destroy(); hlsRef.current = null; };
  }, [playUrl]);

  /* ── Speed ── */
  useEffect(() => {
    const v = videoRef.current; if (v) v.playbackRate = speed;
  }, [speed]);

  /* ── Auto-skip on fail ── */
  useEffect(() => {
    if (!failed) return;
    setSkipping(true);
    const t = setTimeout(() => { setSkipping(false); onNextSrc(); }, 1500);
    return () => clearTimeout(t);
  }, [failed]);

  function handleFail() { setFailed(true); setBuffering(false); }

  /* ── Controls hide ── */
  const scheduleHide = useCallback((ms = 3500) => {
    if (hideTimer.current) clearTimeout(hideTimer.current);
    hideTimer.current = setTimeout(() => setShowCtrl(false), ms);
  }, []);
  const reveal = useCallback((ms?: number) => { setShowCtrl(true); scheduleHide(ms); }, [scheduleHide]);

  useEffect(() => {
    reveal(); setShowCtrl(true);
    return () => { if (hideTimer.current) clearTimeout(hideTimer.current); };
  }, [src.url]);

  /* ── Pinch-to-zoom handlers ── */
  function onPinchStart(e: React.TouchEvent) {
    if (e.touches.length === 2) {
      const dx = e.touches[0].clientX - e.touches[1].clientX;
      const dy = e.touches[0].clientY - e.touches[1].clientY;
      pinchRef.current = { dist: Math.hypot(dx, dy), scale: videoScale };
    }
  }
  function onPinchMove(e: React.TouchEvent) {
    if (e.touches.length === 2 && pinchRef.current) {
      const dx = e.touches[0].clientX - e.touches[1].clientX;
      const dy = e.touches[0].clientY - e.touches[1].clientY;
      const ratio = Math.hypot(dx, dy) / pinchRef.current.dist;
      setVideoScale(Math.min(3.5, Math.max(1, pinchRef.current.scale * ratio)));
    }
  }
  function onPinchEnd(e: React.TouchEvent) {
    if (e.touches.length < 2) pinchRef.current = null;
    // Snap back to 1 on quick release (optional double-tap to reset)
  }

  /* ── Screenshot ── */
  function takeScreenshot() {
    const v = videoRef.current; if (!v) return;
    try {
      const canvas = document.createElement("canvas");
      canvas.width = v.videoWidth || v.clientWidth;
      canvas.height = v.videoHeight || v.clientHeight;
      canvas.getContext("2d")?.drawImage(v, 0, 0, canvas.width, canvas.height);
      const link = document.createElement("a");
      link.href = canvas.toDataURL("image/png");
      link.download = `nova-${title.replace(/\s+/g,"-")}-ep${ep}.png`;
      link.click();
    } catch {}
    reveal();
  }

  /* ── Tap handler ── */
  function handleTap(e: React.MouseEvent | React.TouchEvent) {
    if (locked) return;
    if (showSpeed) { setShowSpeed(false); return; }
    const rect = (e.currentTarget as HTMLElement).getBoundingClientRect();
    const cX = "touches" in e ? e.changedTouches[0].clientX : (e as React.MouseEvent).clientX;
    const side = (cX - rect.left) < rect.width / 2 ? "l" : "r";
    // Use timeout to detect double-tap
    if ((e as any)._tapped) return;
    (e as any)._tapped = true;
    const current = Date.now();
    if ((handleTap as any)._lastTap && current - (handleTap as any)._lastTap < 300 && (handleTap as any)._lastSide === side) {
      // Double tap
      delete (handleTap as any)._lastTap;
      const v = videoRef.current; if (!v) return;
      v.currentTime = side === "r" ? Math.min(v.duration||0, v.currentTime + 10) : Math.max(0, v.currentTime - 10);
      setSeekFlash({ side, id: Date.now() });
      reveal();
    } else {
      (handleTap as any)._lastTap = current;
      (handleTap as any)._lastSide = side;
      if (showCtrl) { clearTimeout(hideTimer.current!); setShowCtrl(false); }
      else reveal();
    }
  }

  /* ── Progress bar click ── */
  function seekTo(e: React.MouseEvent<HTMLDivElement>) {
    const v = videoRef.current; if (!v || !v.duration) return;
    const rect = (e.currentTarget as HTMLElement).getBoundingClientRect();
    v.currentTime = Math.max(0, Math.min(1, (e.clientX - rect.left) / rect.width)) * v.duration;
    reveal();
  }

  /* ── Play toggle ── */
  function togglePlay() {
    const v = videoRef.current; if (!v) return;
    v.paused ? v.play().catch(() => {}) : v.pause();
    reveal();
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
    !document.fullscreenElement ? el.requestFullscreen?.().catch(()=>{}) : document.exitFullscreen?.().catch(()=>{});
  }
  useEffect(() => {
    const fn = () => setFs(!!document.fullscreenElement);
    document.addEventListener("fullscreenchange", fn);
    return () => document.removeEventListener("fullscreenchange", fn);
  }, []);

  /* ── Time tracking ── */
  function onTimeUpdate() {
    const v = videoRef.current; if (!v) return;
    setCurTime(v.currentTime); setDuration(v.duration || 0);
    setProgress(v.duration ? v.currentTime / v.duration : 0);
    if (v.buffered.length > 0)
      setBuffered(v.duration ? v.buffered.end(v.buffered.length - 1) / v.duration : 0);
  }

  const subType = getSubType(src);
  const qualLabel = normalizeQuality(src);
  const liveCount = sources.filter(s => (statuses[s.url] || "idle") !== "dead").length;
  const SPEEDS = [0.5, 0.75, 1, 1.25, 1.5, 2];

  return (
    <div id="nova-player" className="fixed inset-0 z-50 bg-black overflow-hidden" dir="ltr"
      style={{ touchAction: "manipulation" }}>

      {/* ── VIDEO ── */}
      {playUrl && (
        <video ref={videoRef} className="absolute inset-0 w-full h-full"
          style={{ objectFit: "contain", transform: videoScale !== 1 ? `scale(${videoScale})` : undefined, transition: "transform 0.05s linear" }}
          playsInline autoPlay
          onCanPlay={() => { setBuffering(false); reveal(4000); }}
          onPlay={() => { setPlaying(true); scheduleHide(); }}
          onPause={() => setPlaying(false)}
          onWaiting={() => setBuffering(true)}
          onPlaying={() => setBuffering(false)}
          onTimeUpdate={onTimeUpdate}
          onError={handleFail}
          onEnded={() => setPlaying(false)}
        />
      )}

      {/* ── EXTRACTING ── */}
      <AnimatePresence>
        {(extracting || (!playUrl && !failed)) && (
          <motion.div key="ext" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            className="absolute inset-0 z-[8] bg-black/94 flex flex-col items-center justify-center gap-6">
            <div className="relative w-20 h-20">
              <motion.div className="absolute inset-0 rounded-full border-2 border-violet-500/15 border-t-violet-400"
                animate={{ rotate: 360 }} transition={{ duration: 1.6, repeat: Infinity, ease: "linear" }} />
              <motion.div className="absolute inset-3 rounded-full border border-violet-400/20 border-b-violet-300/60"
                animate={{ rotate: -360 }} transition={{ duration: 2.4, repeat: Infinity, ease: "linear" }} />
              <div className="absolute inset-0 flex items-center justify-center">
                <motion.div className="w-3 h-3 rounded-full bg-violet-400"
                  animate={{ scale: [0.8, 1.2, 0.8], opacity: [0.5, 1, 0.5] }}
                  transition={{ duration: 1.8, repeat: Infinity }} />
              </div>
            </div>
            <p className="text-white/45 text-[12px] font-['Cairo'] tracking-wide" dir="rtl">يُحضَّر الفيديو…</p>
          </motion.div>
        )}
      </AnimatePresence>

      {/* ── BUFFERING ── */}
      <AnimatePresence>
        {buffering && playUrl && !failed && !extracting && (
          <motion.div key="buf" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            className="absolute inset-0 z-[7] flex items-center justify-center pointer-events-none">
            <motion.div className="w-11 h-11 rounded-full border-2 border-white/8 border-t-white/55"
              animate={{ rotate: 360 }} transition={{ duration: 0.9, repeat: Infinity, ease: "linear" }} />
          </motion.div>
        )}
      </AnimatePresence>

      {/* ── SKIP ANIMATION ── */}
      <AnimatePresence>
        {skipping && (
          <motion.div key="skip" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            className="absolute inset-0 z-[9] bg-black/88 flex flex-col items-center justify-center gap-4">
            <SkipForward className="w-9 h-9 text-violet-300" />
            <p className="text-white/55 text-[12px] font-['Cairo']" dir="rtl">الانتقال للمصدر التالي…</p>
          </motion.div>
        )}
      </AnimatePresence>

      {/* ── SEEK RIPPLE ── */}
      <AnimatePresence>
        {seekFlash && (
          <motion.div key={seekFlash.id} initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            transition={{ duration: 0.14 }}
            className={`absolute top-0 bottom-0 z-[11] w-2/5 flex items-center pointer-events-none
              ${seekFlash.side === "r" ? "right-0 justify-end pr-8" : "left-0 justify-start pl-8"}`}
            style={{ background: seekFlash.side === "r"
              ? "radial-gradient(ellipse at 80% 50%,rgba(139,92,246,0.22) 0%,transparent 70%)"
              : "radial-gradient(ellipse at 20% 50%,rgba(139,92,246,0.22) 0%,transparent 70%)" }}>
            <div className="flex flex-col items-center gap-1">
              {seekFlash.side === "r" ? <RotateCw className="w-7 h-7 text-white/75" /> : <RotateCcw className="w-7 h-7 text-white/75" />}
              <span className="text-white/60 text-[10px] font-bold font-['Cairo']">10 ث</span>
            </div>
          </motion.div>
        )}
      </AnimatePresence>

      {/* ── LOCK INDICATOR ── */}
      {locked && (
        <div className="absolute top-4 left-1/2 -translate-x-1/2 z-[25] flex items-center gap-2 px-4 py-2 rounded-full bg-black/60 backdrop-blur-md border border-white/12"
          onClick={() => setLocked(false)}>
          <Lock className="w-4 h-4 text-amber-400" />
          <span className="text-white/70 text-[11px] font-['Cairo']">اضغط للفتح</span>
        </div>
      )}

      {/* ── TAP + PINCH AREA ── */}
      <div className="absolute inset-0 z-[10]"
        style={{ pointerEvents: "auto", touchAction: "none", WebkitTapHighlightColor: "transparent" }}
        onClick={handleTap}
        onTouchStart={onPinchStart}
        onTouchMove={onPinchMove}
        onTouchEnd={onPinchEnd}
      />
      {/* Reset zoom on double-tap when zoomed */}
      {videoScale > 1 && (
        <div className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 z-[22] pointer-events-none">
          <div className="bg-black/50 backdrop-blur-sm rounded-full px-3 py-1 border border-white/15">
            <span className="text-white/70 text-[11px] font-mono">{videoScale.toFixed(1)}×</span>
          </div>
        </div>
      )}

      {/* ══════════ CONTROLS ══════════════════════════════════════ */}
      <AnimatePresence>
        {showCtrl && !locked && (
          <motion.div key="ctrl" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            transition={{ duration: 0.18 }} className="absolute inset-0 z-[20] pointer-events-none">

            {/* TOP gradient + info */}
            <div className="absolute top-0 left-0 right-0 pointer-events-auto"
              style={{ background: "linear-gradient(to bottom,rgba(0,0,0,0.85) 0%,rgba(0,0,0,0.3) 65%,transparent 100%)", paddingTop: "max(14px,env(safe-area-inset-top))", paddingBottom: 20 }}>
              <div className="flex items-start justify-between px-4 gap-4">
                {/* Title + meta (top-left, LTR layout so it's on the left) */}
                <div className="min-w-0 flex-1" dir="rtl">
                  <p className="text-white text-[14px] font-black font-['Cairo'] leading-tight truncate">{title}</p>
                  <p className="text-white/45 text-[11px] font-['Cairo'] leading-tight mt-0.5">
                    {qualLabel} · {subType} · الحلقة {ep === 0 ? "فيلم" : ep}
                  </p>
                </div>
                {/* Top-right controls */}
                <div className="flex items-center gap-2 shrink-0">
                  {/* Next source */}
                  <button onClick={e => { e.stopPropagation(); onOpenList(); }}
                    className="w-9 h-9 rounded-xl bg-black/40 backdrop-blur-sm border border-white/12 flex flex-col items-center justify-center active:scale-90 relative">
                    <Wifi className="w-4 h-4 text-white/65" />
                    {liveCount > 0 && (
                      <span className="absolute -top-1 -right-1 w-4 h-4 rounded-full bg-violet-500 text-white text-[8px] font-black flex items-center justify-center">{liveCount}</span>
                    )}
                  </button>
                  {/* Close → go back to server list */}
                  <button onClick={e => { e.stopPropagation(); onBack(); }}
                    className="w-9 h-9 rounded-xl bg-black/40 backdrop-blur-sm border border-white/12 flex items-center justify-center active:scale-90">
                    <X className="w-4 h-4 text-white/65" />
                  </button>
                </div>
              </div>
            </div>

            {/* CENTER: ep nav + play/pause */}
            <div className="absolute inset-0 flex items-center justify-center gap-12 pointer-events-auto">
              <button onClick={e => { e.stopPropagation(); onPrevEp(); }} disabled={ep <= 1}
                className="w-12 h-12 rounded-full bg-black/30 backdrop-blur-sm border border-white/10 flex items-center justify-center disabled:opacity-15 active:scale-90">
                <ChevronRight className="w-5 h-5 text-white/80" />
              </button>
              <button onClick={e => { e.stopPropagation(); togglePlay(); reveal(); }}
                className="w-[72px] h-[72px] rounded-full bg-black/35 backdrop-blur-md border border-white/15 flex items-center justify-center active:scale-90 shadow-2xl">
                {buffering && playUrl
                  ? <Loader2 className="w-8 h-8 text-white animate-spin" />
                  : playing
                  ? <Pause className="w-8 h-8 text-white fill-white" />
                  : <Play className="w-8 h-8 text-white fill-white ml-1" />}
              </button>
              <button onClick={e => { e.stopPropagation(); onNextEp(); }} disabled={ep >= totalEps && totalEps > 0}
                className="w-12 h-12 rounded-full bg-black/30 backdrop-blur-sm border border-white/10 flex items-center justify-center disabled:opacity-15 active:scale-90">
                <ChevronLeft className="w-5 h-5 text-white/80" />
              </button>
            </div>

            {/* BOTTOM: progress + controls */}
            <div className="absolute bottom-0 left-0 right-0 pointer-events-auto"
              style={{ background: "linear-gradient(to top,rgba(0,0,0,0.9) 0%,rgba(0,0,0,0.4) 55%,transparent 100%)", paddingBottom: "max(14px,env(safe-area-inset-bottom))" }}>

              {/* Time + progress */}
              {playUrl && (
                <div className="px-4 pb-1 pt-3">
                  {/* Time row */}
                  <div className="flex items-center justify-between mb-2">
                    <span className="text-white/60 text-[11px] font-mono tabular-nums">{fmtTime(curTime)}</span>
                    <span className="text-white/35 text-[11px] font-mono tabular-nums">{fmtTime(duration)}</span>
                  </div>
                  {/* Progress bar */}
                  <div className="relative h-6 flex items-center cursor-pointer group" onClick={seekTo} ref={progRef}>
                    <div className="w-full h-[3px] rounded-full bg-white/15 relative group-hover:h-[5px] transition-all duration-150">
                      <div className="absolute inset-y-0 left-0 bg-white/22 rounded-full" style={{ width: `${buffered*100}%` }} />
                      <div className="absolute inset-y-0 left-0 bg-gradient-to-r from-orange-500 to-amber-400 rounded-full" style={{ width: `${progress*100}%` }} />
                    </div>
                    {/* Red dot thumb */}
                    <div className="absolute w-4 h-4 rounded-full bg-red-500 shadow-lg border-2 border-white/80 -translate-x-1/2 -translate-y-1/2 top-1/2 pointer-events-none"
                      style={{ left: `${progress*100}%` }} />
                  </div>
                </div>
              )}

              {/* Controls row */}
              <div className="flex items-center gap-2 px-4 pt-2 pb-1">
                {/* Speed */}
                <div className="relative">
                  <button onClick={e => { e.stopPropagation(); setShowSpeed(!showSpeed); }}
                    className="px-2.5 h-8 rounded-lg bg-black/30 border border-white/10 text-white/60 text-[11px] font-bold font-mono active:scale-90">
                    {speed}×
                  </button>
                  <AnimatePresence>
                    {showSpeed && (
                      <motion.div initial={{ opacity: 0, y: 4 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0, y: 4 }}
                        className="absolute bottom-10 left-0 bg-[#14141e] border border-white/12 rounded-xl overflow-hidden shadow-2xl z-30"
                        onClick={e => e.stopPropagation()}>
                        {SPEEDS.map(sp => (
                          <button key={sp} onClick={() => { setSpeed(sp); setShowSpeed(false); }}
                            className={`flex items-center justify-between w-full px-4 py-2.5 text-[12px] font-mono active:bg-white/8
                              ${speed === sp ? "text-violet-300 bg-violet-500/10" : "text-white/65"}`}>
                            {sp}×
                            {speed === sp && <CheckCircle className="w-3.5 h-3.5 text-violet-400" />}
                          </button>
                        ))}
                      </motion.div>
                    )}
                  </AnimatePresence>
                </div>

                {/* -10s */}
                <button onClick={e => { e.stopPropagation(); const v=videoRef.current; if(v) v.currentTime=Math.max(0,v.currentTime-10); reveal(); }}
                  className="w-9 h-9 rounded-xl bg-black/30 border border-white/8 flex items-center justify-center active:scale-90">
                  <RotateCcw className="w-4 h-4 text-white/60" />
                </button>

                <div className="flex-1" />

                {/* Volume / Mute */}
                <button onClick={e => { e.stopPropagation(); toggleMute(); reveal(); }}
                  className="w-9 h-9 rounded-xl bg-black/30 border border-white/8 flex items-center justify-center active:scale-90">
                  {muted ? <VolumeX className="w-4 h-4 text-white/60" /> : <Volume2 className="w-4 h-4 text-white/60" />}
                </button>

                {/* +10s */}
                <button onClick={e => { e.stopPropagation(); const v=videoRef.current; if(v) v.currentTime=Math.min(v.duration||0,v.currentTime+10); reveal(); }}
                  className="w-9 h-9 rounded-xl bg-black/30 border border-white/8 flex items-center justify-center active:scale-90">
                  <RotateCw className="w-4 h-4 text-white/60" />
                </button>

                {/* Screenshot */}
                <button onClick={e => { e.stopPropagation(); takeScreenshot(); }}
                  className="w-9 h-9 rounded-xl bg-black/30 border border-white/8 flex items-center justify-center active:scale-90">
                  <Camera className="w-4 h-4 text-white/60" />
                </button>

                {/* Reset zoom (shown only when zoomed) */}
                {videoScale > 1 && (
                  <button onClick={e => { e.stopPropagation(); setVideoScale(1); reveal(); }}
                    className="px-2 h-9 rounded-xl bg-violet-600/50 border border-violet-500/40 flex items-center justify-center active:scale-90">
                    <span className="text-white/80 text-[10px] font-bold font-mono">1×</span>
                  </button>
                )}

                {/* Lock */}
                <button onClick={e => { e.stopPropagation(); setLocked(true); }}
                  className="w-9 h-9 rounded-xl bg-black/30 border border-white/8 flex items-center justify-center active:scale-90">
                  <Unlock className="w-4 h-4 text-white/60" />
                </button>

                {/* Fullscreen */}
                <button onClick={e => { e.stopPropagation(); toggleFs(); reveal(); }}
                  className="w-9 h-9 rounded-xl bg-black/30 border border-white/8 flex items-center justify-center active:scale-90">
                  {fs ? <Minimize2 className="w-4 h-4 text-white/60" /> : <Maximize2 className="w-4 h-4 text-white/60" />}
                </button>
              </div>
            </div>
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  );
}

/* ══════════════════════════════════ LOADING SCREEN ══════════ */
function LoadingScreen({ cover, title, ep, streamDone, sourcesCount }: {
  cover: string; title: string; ep: number; streamDone: boolean; sourcesCount: number;
}) {
  return (
    <div className="fixed inset-0 z-50 bg-[#09090f] flex flex-col items-center justify-center overflow-hidden" dir="rtl">
      {cover && (
        <>
          <div className="absolute inset-0">
            <img src={cover} alt="" className="w-full h-full object-cover scale-110"
              style={{ filter: "blur(55px) brightness(0.1) saturate(1.6)" }} />
          </div>
          <div className="absolute inset-0" style={{ background: "linear-gradient(to bottom,rgba(0,0,0,0.5) 0%,#09090f 60%)" }} />
        </>
      )}
      <div className="relative z-10 flex flex-col items-center gap-7 px-6 text-center w-full max-w-xs">
        {cover && (
          <motion.div initial={{ y: 20, opacity: 0, scale: 0.9 }} animate={{ y: 0, opacity: 1, scale: 1 }}
            transition={{ duration: 0.6, ease: [0.22, 1, 0.36, 1] }} className="relative">
            <div className="absolute -inset-8 rounded-full blur-[60px] opacity-45" style={{ background: "radial-gradient(circle,rgba(139,92,246,0.7),transparent 70%)" }} />
            <img src={cover} alt="" className="relative w-32 h-48 object-cover rounded-2xl shadow-2xl border border-violet-500/18" />
            <div className="absolute -bottom-3 left-1/2 -translate-x-1/2 bg-violet-600 text-white text-[11px] font-black px-4 py-1 rounded-full shadow-lg whitespace-nowrap">
              {ep === 0 ? "فيلم" : `الحلقة ${ep}`}
            </div>
          </motion.div>
        )}
        <motion.div initial={{ opacity: 0, y: 10 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: 0.25 }}
          className="flex flex-col items-center gap-3">
          <h2 className="text-white text-[15px] font-black font-['Cairo'] line-clamp-2">{title}</h2>
          <p className="text-white/30 text-[12px] font-['Cairo']">
            {streamDone && sourcesCount === 0
              ? "لا توجد مصادر متاحة"
              : sourcesCount > 0
              ? `${sourcesCount} مصدر · جاري التحقق منها…`
              : "يجري البحث عن المصادر…"}
          </p>
        </motion.div>
        {!streamDone && (
          <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} transition={{ delay: 0.5 }}
            className="flex items-center gap-1.5">
            {[0,1,2,3,4].map(i => (
              <motion.div key={i} className="w-1.5 h-1.5 rounded-full bg-violet-500"
                animate={{ opacity: [0.2,1,0.2], scale: [0.7,1.3,0.7] }}
                transition={{ duration: 1.3, repeat: Infinity, delay: i*0.18 }} />
            ))}
          </motion.div>
        )}
      </div>
    </div>
  );
}

/* ══════════════════════════════════ NO SOURCES ══════════════ */
function NoSources({ onRefresh, onBack }: { onRefresh: () => void; onBack: () => void }) {
  return (
    <div className="fixed inset-0 z-50 bg-[#09090f] flex flex-col items-center justify-center gap-5" dir="rtl">
      <div className="w-14 h-14 rounded-2xl bg-white/4 border border-white/7 flex items-center justify-center">
        <AlertTriangle className="w-6 h-6 text-white/20" />
      </div>
      <div className="text-center">
        <p className="text-white/55 text-[14px] font-black font-['Cairo']">لا توجد مصادر</p>
        <p className="text-white/25 text-[12px] mt-1 font-['Cairo']">الحلقة غير متوفرة حالياً</p>
      </div>
      <div className="flex gap-3">
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

/* ══════════════════════════════════ WATCH PAGE ══════════════ */
export default function WatchPage() {
  const [, navigate] = useLocation();
  const sp        = new URLSearchParams(window.location.search);
  const animeId   = parseInt(sp.get("anime") || "0");
  const ep        = parseInt(sp.get("ep") || "1");
  const titleParam = sp.get("title") || "";

  const [anime,      setAnime]      = useState<any>(null);
  const [sources,    setSources]    = useState<Source[]>([]);
  const [statuses,   setStatuses]   = useState<Record<string, ProbeStatus>>({});
  const [active,     setActive]     = useState<Source | null>(null);
  const [pageLoad,   setPageLoad]   = useState(true);
  const [streamDone, setStreamDone] = useState(false);
  const [phase,      setPhase]      = useState<"loading"|"servers"|"player">("loading");
  const [extracting, setExtracting] = useState(false);

  const sseRef        = useRef<EventSource | null>(null);
  const seenUrls      = useRef(new Set<string>());
  const sourcesRef    = useRef<Source[]>([]);
  const activeRef     = useRef<Source | null>(null);
  const extractingRef = useRef(false);   // sync ref to avoid stale-closure issues
  const triedRef      = useRef(new Set<string>()); // tracks urls already attempted for extraction
  const autoPlayedRef = useRef(false);  // prevent double auto-play

  const title    = anime?.title?.romaji || anime?.title?.english || titleParam || "أنمي";
  const totalEps = anime?.episodes || anime?.nextAiringEpisode?.episode || 999;
  const cover    = anime?.coverImage?.large || "";
  const genres   = anime?.genres || [];

  useEffect(() => { sourcesRef.current = sources; }, [sources]);
  useEffect(() => { activeRef.current  = active;  }, [active]);

  /* ── Source utils ── */
  function sortSources(srcs: Source[]): Source[] {
    return [...srcs].sort((a, b) => {
      if ((b.directUrl?1:0) !== (a.directUrl?1:0)) return (b.directUrl?1:0) - (a.directUrl?1:0);
      if (b.qualityRank !== a.qualityRank) return b.qualityRank - a.qualityRank;
      const sc: Record<string,number> = { shahiid:13, animelek:12, animedar:11, vidnest:10, animapahe:9, anime4up:8, animeblkom:7, animeiat:6, anime3rb:6, goldenanimaniac:5, animegg:4 };
      return (sc[b.site]||3) - (sc[a.site]||3);
    });
  }
  function dedupSources(srcs: Source[]): Source[] {
    const seen = new Map<string,number>();
    return srcs.filter(s => {
      let host = ""; try { host = new URL(s.url).hostname.replace(/^(www\.|vid\.|player\.)/,""); } catch {}
      const n = seen.get(host) || 0; if (n >= 2) return false; seen.set(host, n+1); return true;
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
        es.close(); sseRef.current = null; setStreamDone(true);
        setSrcCache(`${animeId}-${ep}`, acc); return;
      }
      try {
        const src: Source = JSON.parse(e.data);
        const key = src.directUrl || src.url;
        if (!src.url || seenUrls.current.has(key)) return;
        seenUrls.current.add(key);
        acc.push(src);
        setSources(prev => dedupSources(sortSources([...prev, src])));
        setStatuses(prev => ({ ...prev, [src.url]: "idle" }));
      } catch {}
    };
    es.onerror = () => { es.close(); sseRef.current = null; setStreamDone(true); };
  }

  /* ── Init ── */
  useEffect(() => {
    if (!animeId) { setPageLoad(false); setPhase("servers"); return; }
    setPageLoad(true); setSources([]); setActive(null); setStatuses({});
    setStreamDone(false); setPhase("loading");
    seenUrls.current.clear(); sseRef.current?.close();
    autoPlayedRef.current = false; triedRef.current.clear();

    (async () => {
      try {
        const cached = getSrcCache(`${animeId}-${ep}`);
        if (cached && cached.length > 0) {
          setSources(cached);
          const init: Record<string,ProbeStatus> = {};
          cached.forEach(s => { init[s.url] = "idle"; });
          setStatuses(init); setPageLoad(false); setStreamDone(true); setPhase("servers"); return;
        }
        if (titleParam) {
          setPageLoad(false);
          startSSE(titleParam, "", 0);
          fetch("https://graphql.anilist.co", { method: "POST", headers: { "Content-Type": "application/json" },
            body: JSON.stringify({ query: ANILIST_Q, variables: { id: animeId } }), signal: AbortSignal.timeout(12000) })
            .then(r => r.json()).then(j => { const d = j.data?.Media; if (d) { setAnime(d); saveHistory(animeId, d.title?.romaji||"", d.coverImage?.large||"", ep, d.episodes||0); } }).catch(() => {});
          return;
        }
        const res = await fetch("https://graphql.anilist.co", { method: "POST", headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ query: ANILIST_Q, variables: { id: animeId } }), signal: AbortSignal.timeout(12000) });
        const d = (await res.json()).data?.Media;
        setAnime(d); if (d) saveHistory(animeId, d.title?.romaji||"", d.coverImage?.large||"", ep, d.episodes||0);
        setPageLoad(false);
        startSSE(d?.title?.romaji||"", d?.title?.english||"", d?.idMal||0);
      } catch { setPageLoad(false); setStreamDone(true); setPhase("servers"); }
    })();
    return () => { sseRef.current?.close(); sseRef.current = null; };
  }, [animeId, ep]);

  /* ── When SSE arrives → auto-switch to servers page ── */
  useEffect(() => {
    if (sources.length > 0 && phase === "loading") setPhase("servers");
  }, [sources.length]);

  /* ── Also switch to servers when stream done ── */
  useEffect(() => {
    if (streamDone && phase === "loading") setPhase("servers");
  }, [streamDone]);

  /* ── Auto-play first directUrl source when stream finishes ── */
  useEffect(() => {
    if (!streamDone || phase !== "servers" || autoPlayedRef.current) return;
    const best = sourcesRef.current.find(s => s.directUrl && (statuses[s.url] || "idle") !== "dead");
    if (!best) return;
    autoPlayedRef.current = true;
    setTimeout(() => playSource(best), 400); // small delay so server list is visible first
  }, [streamDone, phase]);

  /* ── Auto-probe directUrl sources in background ── */
  useEffect(() => {
    if (phase !== "servers") return;
    sources.forEach(src => {
      if (!src.directUrl || (statuses[src.url] && statuses[src.url] !== "idle")) return;
      setStatuses(prev => ({ ...prev, [src.url]: "testing" }));
      fetch(`/api/anime/probe?url=${encodeURIComponent(src.directUrl!)}`)
        .then(r => r.json())
        .then(d => setStatuses(prev => ({ ...prev, [src.url]: d.alive ? "ok" : "dead" })))
        .catch(() => setStatuses(prev => ({ ...prev, [src.url]: "idle" })));
    });
  }, [phase, sources]);

  /* ── Manual probe (on play click) ── */
  function probeSource(src: Source) {
    const url = src.directUrl || src.url;
    setStatuses(prev => ({ ...prev, [src.url]: "testing" }));
    fetch(`/api/anime/probe?url=${encodeURIComponent(url)}`)
      .then(r => r.json())
      .then(d => setStatuses(prev => ({ ...prev, [src.url]: d.alive ? "ok" : "dead" })))
      .catch(() => setStatuses(prev => ({ ...prev, [src.url]: "idle" })));
  }

  /* ── Embed-only hosts (skip server + browser extraction) ── */
  const EMBED_ONLY_FE = ["vidbm","uptostream","playerwish","wishfast","streamvid","streamlare","vidmoly","asnwish","share4max","megamax.me"];

  /* ── Extract any source (server-side first, then browser) ── */
  async function triggerExtract(src: Source) {
    if (src.directUrl || extractingRef.current) return;

    // Mark as tried (goNextSrc will skip this URL on its next run)
    triedRef.current.add(src.url);

    // Skip known embed-only hosts — setTimeout BREAKS the synchronous recursion!
    if (EMBED_ONLY_FE.some(h => src.url.includes(h))) { setTimeout(() => goNextSrc(), 0); return; }

    extractingRef.current = true;
    setExtracting(true);

    const applyExtracted = (raw: string, ref: string) => {
      const isHls = raw.includes(".m3u8") || raw.includes("uwu.m3u8") || raw.includes("animanga.fun");
      const directUrl = isHls
        ? `/api/anime/hls-proxy?url=${encodeURIComponent(raw)}&ref=${encodeURIComponent(ref)}`
        : `/api/anime/video-proxy?url=${encodeURIComponent(raw)}&ref=${encodeURIComponent(src.url)}`;
      const updated: Source = { ...src, directUrl, directType: isHls ? "hls" : "mp4" };
      setActive(updated);
      setSources(prev => prev.map(s => s.url === src.url ? updated : s));
    };

    const done = (goNext = false) => {
      extractingRef.current = false;
      setExtracting(false);
      // setTimeout breaks the sync call stack to prevent "Maximum call stack exceeded"
      if (goNext) setTimeout(() => goNextSrc(), 0);
    };

    // Step 1: Server-side deep extraction (streamwish, filemoon, vidhide, streamtape, etc.)
    try {
      const res = await fetch(`/api/anime/extract-video?url=${encodeURIComponent(src.url)}`);
      if (res.ok) {
        const ss = await res.json();
        if (ss.videoUrl) { applyExtracted(ss.videoUrl, src.url); done(); return; }
      }
    } catch {}

    // Step 2: Browser-based extraction (Playwright — vidnest/AnimePahe, CF-protected)
    try {
      const res = await fetch(`/api/anime/browser-extract?url=${encodeURIComponent(src.url)}&timeout=25`);
      if (res.ok) {
        const data = await res.json();
        const raw: string = data.directUrl || "";
        if (raw) {
          let ref = src.url;
          if (raw.includes("animanga.fun")) {
            try {
              const pu = new URL(raw);
              const hdr = JSON.parse(pu.searchParams.get("headers") || "{}");
              ref = hdr["Referer"] || hdr["referer"] || src.url;
            } catch {}
          }
          applyExtracted(raw, ref); done(); return;
        }
      }
    } catch {}

    // Both failed → skip to next
    done(true);
  }

  /* ── Play source ── */
  function playSource(src: Source) {
    setActive(src); setPhase("player");
    if (!src.directUrl) triggerExtract(src);
  }

  /* ── Next source ── */
  function goNextSrc() {
    const all = sourcesRef.current;
    const cur = activeRef.current ? all.indexOf(activeRef.current) : -1;
    for (let i = cur + 1; i < all.length; i++) {
      const s = all[i];
      if ((statuses[s.url] || "idle") === "dead") continue;
      if (triedRef.current.has(s.url)) continue; // skip already-tried (loop prevention)
      playSource(s); return;
    }
    // All sources tried or dead → back to server list; reset tried set for user retry
    triedRef.current.clear();
    setPhase("servers");
  }

  /* ── Episode nav ── */
  function goEp(n: number) {
    navigate(`/watch?${new URLSearchParams({ anime: String(animeId), ep: String(n), title })}`);
  }

  function handleBack() { window.history.back(); }
  function handleRefresh() { localStorage.removeItem(`srccache:${animeId}-${ep}`); window.location.reload(); }

  /* ════════ RENDER ════════════════════════════════════════════ */

  if (pageLoad || (phase === "loading" && sources.length === 0 && !streamDone)) {
    return <LoadingScreen cover={cover} title={title} ep={ep} streamDone={streamDone} sourcesCount={sources.length} />;
  }

  if (streamDone && sources.length === 0) {
    return <NoSources onRefresh={handleRefresh} onBack={handleBack} />;
  }

  if (phase === "player" && active) {
    return (
      <VideoPlayer
        src={active} title={title} ep={ep} totalEps={totalEps}
        sources={sources} statuses={statuses}
        onBack={() => setPhase("servers")}
        onNextEp={() => ep < totalEps ? goEp(ep + 1) : undefined}
        onPrevEp={() => ep > 1 ? goEp(ep - 1) : undefined}
        onNextSrc={goNextSrc}
        onOpenList={() => setPhase("servers")}
        extracting={extracting}
        streamDone={streamDone}
      />
    );
  }

  return (
    <ServerListPage
      anime={anime} ep={ep} title={title} cover={cover}
      sources={sources} statuses={statuses} streamDone={streamDone}
      onPlay={playSource}
      onBack={handleBack}
      onSetStatus={(url, status) => setStatuses(prev => ({ ...prev, [url]: status }))}
    />
  );
}
