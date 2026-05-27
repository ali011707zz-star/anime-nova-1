import { useState, useEffect, useRef, useCallback } from "react";
import { useLocation } from "wouter";
import {
  ChevronRight, ChevronLeft, Play, Pause, Loader2,
  AlertTriangle, RefreshCw, Volume2, VolumeX,
  Maximize2, Minimize2, RotateCcw, RotateCw,
  Lock, Unlock, Zap, Camera, Globe,
  Settings, X, Wifi, WifiOff, List,
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
  if (q.includes("720") || q === "hd" || src.qualityRank >= 3) return "720p";
  if (q.includes("480") || src.qualityRank >= 2) return "480p";
  if (q.includes("360")) return "360p";
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
const CACHE_VER = "v4";
function getSrcCache(key: string): Source[] | null {
  try {
    const r = localStorage.getItem(`srccache:${CACHE_VER}:${key}`); if (!r) return null;
    const { ts, sources } = JSON.parse(r);
    if (Date.now() - ts > 1_800_000) return null; // 30 min expiry
    // Filter out expired/dead hosts only
    const cleaned = (sources as Source[]).filter(s =>
      !["dood.to","dood.la","doodstream","dood.watch"].some(h => s.url?.includes(h))
    );
    return cleaned.length > 0 ? cleaned : null;
  } catch { return null; }
}
function setSrcCache(k: string, s: Source[]) {
  try { localStorage.setItem(`srccache:${CACHE_VER}:${k}`, JSON.stringify({ ts: Date.now(), sources: s })); } catch {}
  // Clean up old cache keys
  try {
    for (const key of Object.keys(localStorage)) {
      if (key.startsWith("srccache:") && !key.startsWith(`srccache:${CACHE_VER}:`)) {
        localStorage.removeItem(key);
      }
    }
  } catch {}
}
function saveHistory(id: number, title: string, cover: string, ep: number, totalEps = 0) {
  try {
    const h: any[] = JSON.parse(localStorage.getItem("watch-history") || "[]");
    localStorage.setItem("watch-history", JSON.stringify([{ id, title, cover, ep, date: new Date().toISOString(), totalEps }, ...h.filter(x => !(x.id === id && x.ep === ep))].slice(0, 60)));
  } catch {}
}

/* ══════════════════════════════════ SERVER LIST ══════════════ */
function WifiStatus({ status }: { status: ProbeStatus }) {
  if (status === "testing") return <Loader2 className="w-4 h-4 text-amber-400 animate-spin" />;
  if (status === "ok") return <Wifi className="w-4 h-4 text-emerald-400" />;
  if (status === "dead") return <WifiOff className="w-4 h-4 text-red-400" />;
  return <Wifi className="w-4 h-4 text-white/25" />;
}

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
  for (const s of filtered) { const q = normalizeQuality(s); if (!groups[q]) groups[q] = []; groups[q].push(s); }

  const [probing, setProbing] = useState<string | null>(null);

  async function handlePlay(src: Source) {
    if (probing === src.url) return;
    // AnimeGG: re-extract fresh URL (for= token tied to CDN, need fresh each play)
    if (src.site === "animegg") {
      setProbing(src.url);
      onSetStatus(src.url, "testing");
      try {
        const ctrl = new AbortController();
        const t = setTimeout(() => ctrl.abort(), 10000);
        const r = await fetch(`/api/anime/extract-video?url=${encodeURIComponent(src.url)}`, { signal: ctrl.signal });
        clearTimeout(t);
        if (r.ok) {
          const d = await r.json();
          if (d.videoUrl) {
            const freshSrc: Source = { ...src, directUrl: d.videoUrl, directType: "mp4" };
            onSetStatus(src.url, "ok");
            onPlay(freshSrc);
            return;
          }
        }
      } catch {}
      finally { setProbing(null); }
      // fallback to cached directUrl if re-extract failed
      if (src.directUrl) { onSetStatus(src.url, "ok"); onPlay(src); }
      else { onSetStatus(src.url, "dead"); }
      return;
    }
    if (!src.directUrl) { onPlay(src); return; }
    const st = statuses[src.url];
    if (st === "ok") { onPlay(src); return; }
    setProbing(src.url);
    onSetStatus(src.url, "testing");
    try {
      const r = await fetch(`/api/anime/probe?url=${encodeURIComponent(src.directUrl)}`);
      const d = await r.json();
      if (d.alive) { onSetStatus(src.url, "ok"); onPlay(src); }
      else { onSetStatus(src.url, "dead"); }
    } catch {
      onSetStatus(src.url, "idle"); onPlay(src);
    } finally { setProbing(null); }
  }

  return (
    <div className="fixed inset-0 z-50 bg-[#09090f] flex flex-col overflow-hidden" dir="rtl">
      {/* Top bar */}
      <div className="flex items-center gap-3 px-4 pt-safe-top py-3 shrink-0 border-b border-white/5"
        style={{ paddingTop: "max(14px, env(safe-area-inset-top))" }}>
        <button onClick={onBack}
          className="w-9 h-9 rounded-xl bg-white/6 border border-white/8 flex items-center justify-center active:scale-90 transition-transform">
          <ChevronRight className="w-5 h-5 text-white/70" />
        </button>
        <div className="flex-1 min-w-0">
          <p className="text-white text-[13px] font-black font-['Cairo'] truncate">{title}</p>
          <p className="text-white/35 text-[11px] font-['Cairo']">الحلقة {ep}</p>
        </div>
        {cover && <img src={cover} alt="" className="w-9 h-12 rounded-lg object-cover border border-white/10 shrink-0" />}
      </div>

      {/* Loading indicator */}
      {!streamDone && (
        <div className="mx-4 mt-3 mb-1 px-4 py-2.5 rounded-2xl bg-amber-500/8 border border-amber-500/15 flex items-center gap-3 shrink-0">
          <motion.div className="w-1.5 h-1.5 rounded-full bg-amber-400 shrink-0"
            animate={{ opacity: [0.4,1,0.4] }} transition={{ duration: 1, repeat: Infinity }} />
          <p className="text-amber-300/80 text-[11px] font-['Cairo']">يجري البحث عن مصادر إضافية…</p>
        </div>
      )}

      {/* Lang tabs */}
      {(hasAr && hasEn) && (
        <div className="flex gap-2 px-4 pt-3 shrink-0">
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
      <div className="flex-1 overflow-y-auto px-4 pt-3 pb-8 space-y-5">
        {filtered.length === 0 && streamDone && (
          <div className="flex flex-col items-center justify-center gap-3 py-16">
            <AlertTriangle className="w-10 h-10 text-white/15" />
            <p className="text-white/35 text-sm font-['Cairo']">لا توجد مصادر متاحة</p>
          </div>
        )}
        {qualityOrder.filter(q => groups[q]?.length).map(quality => (
          <div key={quality}>
            <div className="flex items-center gap-3 mb-2">
              <div className="flex-1 h-px bg-white/7" />
              <span className="text-white/40 text-[10px] font-black font-mono tracking-widest">{quality}</span>
              <div className="flex-1 h-px bg-white/7" />
            </div>
            <div className="space-y-2">
              {groups[quality].map(src => {
                const st = statuses[src.url] || "idle";
                const isDead = st === "dead";
                const isProbing = probing === src.url;
                return (
                  <div key={src.url}
                    className={`flex items-center gap-3 px-4 py-3.5 rounded-2xl border transition-all
                      ${isDead ? "opacity-50 bg-red-500/5 border-red-500/20"
                        : st === "ok" ? "bg-emerald-500/5 border-emerald-500/20"
                        : "bg-white/4 border-white/8"}`}>
                    <div className="shrink-0"><WifiStatus status={isProbing ? "testing" : st} /></div>
                    <div className="flex-1 min-w-0">
                      <div className="flex items-center gap-2">
                        <p className="text-white/85 text-[13px] font-bold font-['Cairo'] truncate">{getServerShortName(src)}</p>
                        <span className={`text-[9px] font-black px-2 py-0.5 rounded-md shrink-0
                          ${getSubType(src) === "مدبلج" ? "bg-orange-500/20 text-orange-300 border border-orange-500/25" : "bg-violet-500/20 text-violet-300 border border-violet-500/25"}`}>
                          {getSubType(src)}
                        </span>
                        {src.directUrl
                          ? <Zap className="w-3 h-3 text-emerald-400 shrink-0" />
                          : <Globe className="w-3 h-3 text-sky-400/70 shrink-0" />}
                      </div>
                      <p className="text-white/30 text-[10px] font-['Cairo'] mt-0.5">{SITE_LABEL[src.site] || src.site}</p>
                    </div>
                    <button onClick={() => handlePlay(src)}
                      className={`w-10 h-10 rounded-xl border flex items-center justify-center active:scale-90 shrink-0 transition-all
                        ${isDead ? "bg-red-500/15 border-red-500/30"
                          : st === "ok" ? "bg-emerald-600/80 border-emerald-500/40"
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
  src, anime, ep, totalEps, sources, statuses,
  title: titleProp, cover: coverProp,
  onBack, onNextEp, onPrevEp, onNextSrc, onOpenList,
  extracting, streamDone,
}: {
  src: Source; anime: any; ep: number; totalEps: number;
  sources: Source[]; statuses: Record<string, ProbeStatus>;
  title: string; cover: string;
  onBack: () => void; onNextEp: () => void; onPrevEp: () => void;
  onNextSrc: () => void; onOpenList: () => void;
  extracting: boolean; streamDone: boolean;
}) {
  const videoRef   = useRef<HTMLVideoElement>(null);
  const hlsRef     = useRef<Hls | null>(null);
  const hideTimer  = useRef<ReturnType<typeof setTimeout> | null>(null);
  const progRef    = useRef<HTMLDivElement>(null);
  const pinchRef   = useRef<{ dist: number; scale: number } | null>(null);
  const tapTimer   = useRef<ReturnType<typeof setTimeout> | null>(null);
  const lastTap    = useRef<{ t: number; side: "l"|"r" } | null>(null);

  const [showCtrl,   setShowCtrl]   = useState(true);
  const [playing,    setPlaying]    = useState(false);
  const [buffering,  setBuffering]  = useState(true);
  const [failed,     setFailed]     = useState(false);
  const [skipping,   setSkipping]   = useState(false);
  const [locked,     setLocked]     = useState(false);
  const [muted,      setMuted]      = useState(false);
  const [fs,         setFs]         = useState(false);
  const [progress,   setProgress]   = useState(0);
  const [buffered,   setBuffered]   = useState(0);
  const [curTime,    setCurTime]    = useState(0);
  const [duration,   setDuration]   = useState(0);
  const [seekFlash,  setSeekFlash]  = useState<{side:"l"|"r";id:number}|null>(null);
  const [speed,      setSpeed]      = useState(1);
  const [showSpeed,  setShowSpeed]  = useState(false);
  const [videoScale, setVideoScale] = useState(1);
  const [volume,     setVolume]     = useState(100);
  const [showVol,    setShowVol]    = useState(false);
  const [isDragging, setIsDragging] = useState(false);
  const [thumbTime,  setThumbTime]  = useState<number|null>(null);
  const [thumbX,     setThumbX]     = useState(0);
  const [rotLocked,  setRotLocked]  = useState(false);

  const title = anime?.title?.romaji || anime?.title?.english || titleProp || "أنمي";
  const cover = anime?.coverImage?.large || coverProp || "";

  const isHls = src.directType === "hls";
  // AnimeGG CDN uses non-standard ports (8161, etc.) blocked by Replit proxy → play direct in browser
  const isDirectPlay = src.site === "animegg" && src.directType === "mp4";
  const playUrl = src.directUrl
    ? isHls
      ? `/api/anime/hls-proxy?url=${encodeURIComponent(src.directUrl)}&ref=${encodeURIComponent(src.url)}`
      : isDirectPlay
        ? src.directUrl
        : `/api/anime/video-proxy?url=${encodeURIComponent(src.directUrl)}&ref=${encodeURIComponent(src.url)}`
    : "";

  const subType  = getSubType(src);
  const qualLabel = normalizeQuality(src);
  const SPEEDS   = [0.5, 0.75, 1, 1.25, 1.5, 2];

  /* ── Back button ── */
  useEffect(() => {
    const handler = (e: PopStateEvent) => { e.preventDefault(); onBack(); };
    window.addEventListener("popstate", handler);
    window.history.pushState({ nova: true }, "");
    return () => window.removeEventListener("popstate", handler);
  }, []);

  /* ── Orientation lock ── */
  useEffect(() => {
    if (rotLocked) {
      try { (screen.orientation as any)?.lock?.("landscape").catch(() => {}); } catch {}
    } else {
      try { (screen.orientation as any)?.unlock?.(); } catch {}
    }
  }, [rotLocked]);

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
  useEffect(() => { const v = videoRef.current; if (v) v.playbackRate = speed; }, [speed]);

  /* ── Volume ── */
  useEffect(() => { const v = videoRef.current; if (v) v.volume = volume / 100; }, [volume]);

  /* ── Auto-skip on fail ── */
  useEffect(() => {
    if (!failed) return;
    setSkipping(true);
    const t = setTimeout(() => { setSkipping(false); onNextSrc(); }, 1500);
    return () => clearTimeout(t);
  }, [failed]);

  function handleFail() { setFailed(true); setBuffering(false); }

  /* ── Controls auto-hide ── */
  const scheduleHide = useCallback((ms = 3500) => {
    if (hideTimer.current) clearTimeout(hideTimer.current);
    hideTimer.current = setTimeout(() => setShowCtrl(false), ms);
  }, []);
  const reveal = useCallback((ms?: number) => { setShowCtrl(true); scheduleHide(ms); }, [scheduleHide]);

  useEffect(() => {
    reveal(); setShowCtrl(true);
    return () => { if (hideTimer.current) clearTimeout(hideTimer.current); };
  }, [src.url]);

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

  /* ── Pinch zoom ── */
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
  }

  /* ── Tap to seek / show controls ── */
  function handleVideoTap(e: React.MouseEvent | React.TouchEvent) {
    if (locked) return;
    if (showSpeed) { setShowSpeed(false); return; }
    const rect = (e.currentTarget as HTMLElement).getBoundingClientRect();
    const cX = "touches" in e ? e.changedTouches[0].clientX : (e as React.MouseEvent).clientX;
    const side: "l"|"r" = (cX - rect.left) < rect.width / 2 ? "l" : "r";
    const now = Date.now();
    const last = lastTap.current;
    if (last && now - last.t < 300 && last.side === side) {
      lastTap.current = null;
      if (tapTimer.current) { clearTimeout(tapTimer.current); tapTimer.current = null; }
      const v = videoRef.current; if (!v) return;
      v.currentTime = side === "r" ? Math.min(v.duration||0, v.currentTime + 10) : Math.max(0, v.currentTime - 10);
      setSeekFlash({ side, id: Date.now() });
      reveal();
    } else {
      lastTap.current = { t: now, side };
      if (tapTimer.current) clearTimeout(tapTimer.current);
      tapTimer.current = setTimeout(() => {
        tapTimer.current = null;
        if (showCtrl) { clearTimeout(hideTimer.current!); setShowCtrl(false); }
        else reveal();
      }, 220);
    }
  }

  /* ── Progress bar ── */
  function seekTo(e: React.MouseEvent<HTMLDivElement>) {
    const v = videoRef.current; if (!v || !v.duration) return;
    const rect = (e.currentTarget as HTMLElement).getBoundingClientRect();
    v.currentTime = Math.max(0, Math.min(1, (e.clientX - rect.left) / rect.width)) * v.duration;
    reveal();
  }
  function onProgMouseMove(e: React.MouseEvent<HTMLDivElement>) {
    if (!duration) return;
    const rect = (e.currentTarget as HTMLElement).getBoundingClientRect();
    const ratio = Math.max(0, Math.min(1, (e.clientX - rect.left) / rect.width));
    setThumbTime(ratio * duration);
    setThumbX((e.clientX - rect.left));
  }
  function onProgMouseLeave() { setThumbTime(null); }

  /* ── Progress touch drag ── */
  function onProgTouchStart(e: React.TouchEvent<HTMLDivElement>) {
    setIsDragging(true);
    const v = videoRef.current; if (!v || !v.duration) return;
    const rect = (e.currentTarget as HTMLElement).getBoundingClientRect();
    const ratio = Math.max(0, Math.min(1, (e.touches[0].clientX - rect.left) / rect.width));
    v.currentTime = ratio * v.duration;
  }
  function onProgTouchMove(e: React.TouchEvent<HTMLDivElement>) {
    const v = videoRef.current; if (!v || !v.duration) return;
    const rect = (e.currentTarget as HTMLElement).getBoundingClientRect();
    const ratio = Math.max(0, Math.min(1, (e.touches[0].clientX - rect.left) / rect.width));
    v.currentTime = ratio * v.duration;
    setThumbTime(ratio * duration);
    setThumbX(e.touches[0].clientX - rect.left);
  }
  function onProgTouchEnd() { setIsDragging(false); setThumbTime(null); }

  /* ── Play/Pause ── */
  function togglePlay() {
    const v = videoRef.current; if (!v) return;
    v.paused ? v.play().catch(() => {}) : v.pause();
    reveal();
  }
  function toggleMute() { const v = videoRef.current; if (!v) return; v.muted = !v.muted; setMuted(v.muted); }
  function toggleFs() {
    const el = document.getElementById("nova-player");
    if (!el) return;
    !document.fullscreenElement ? el.requestFullscreen?.().catch(()=>{}) : document.exitFullscreen?.().catch(()=>{});
  }

  /* ── Fullscreen event ── */
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
      setBuffered(v.duration ? v.buffered.end(v.buffered.length-1) / v.duration : 0);
  }

  const liveCount = sources.filter(s => (statuses[s.url]||"idle") !== "dead").length;

  return (
    <div id="nova-player" className="fixed inset-0 z-50 bg-black flex flex-col overflow-hidden select-none"
      style={{ touchAction: "none" }}>

      {/* ══ VIDEO ELEMENT ══ */}
      {playUrl && (
        <video ref={videoRef}
          className="absolute inset-0 w-full h-full"
          style={{ objectFit: "contain", transform: videoScale !== 1 ? `scale(${videoScale})` : undefined, transition: "transform 0.05s linear" }}
          playsInline autoPlay crossOrigin="anonymous"
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

      {/* ══ EXTRACTING OVERLAY ══ */}
      <AnimatePresence>
        {(extracting || (!playUrl && !failed)) && (
          <motion.div key="ext" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            className="absolute inset-0 bg-black/80 flex flex-col items-center justify-center gap-4 z-10">
            <motion.div className="w-16 h-16 rounded-full border-2 border-violet-500/30 flex items-center justify-center"
              animate={{ rotate: 360 }} transition={{ duration: 2, repeat: Infinity, ease: "linear" }}>
              <div className="w-10 h-10 rounded-full border-2 border-t-violet-500 border-violet-500/10" />
            </motion.div>
            <p className="text-white/60 text-sm font-['Cairo']">يجري استخراج الرابط…</p>
          </motion.div>
        )}
      </AnimatePresence>

      {/* ══ FAIL OVERLAY ══ */}
      <AnimatePresence>
        {failed && (
          <motion.div key="fail" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            className="absolute inset-0 bg-black/85 flex flex-col items-center justify-center gap-3 z-10">
            <AlertTriangle className="w-10 h-10 text-red-400/70" />
            <p className="text-white/55 text-sm font-['Cairo']">
              {skipping ? "جاري الانتقال للمصدر التالي…" : "فشل تشغيل المصدر"}
            </p>
            {skipping && (
              <motion.div className="w-32 h-0.5 bg-white/10 rounded-full overflow-hidden">
                <motion.div className="h-full bg-violet-500 rounded-full"
                  initial={{ width: "0%" }} animate={{ width: "100%" }} transition={{ duration: 1.5, ease: "linear" }} />
              </motion.div>
            )}
          </motion.div>
        )}
      </AnimatePresence>

      {/* ══ BUFFERING SPINNER ══ */}
      <AnimatePresence>
        {buffering && !extracting && playUrl && !failed && (
          <motion.div key="buf" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            className="absolute inset-0 flex items-center justify-center pointer-events-none z-10">
            <motion.div className="w-14 h-14 rounded-full border-[3px] border-t-white border-white/15"
              animate={{ rotate: 360 }} transition={{ duration: 0.8, repeat: Infinity, ease: "linear" }} />
          </motion.div>
        )}
      </AnimatePresence>

      {/* ══ SEEK FLASH ══ */}
      <AnimatePresence>
        {seekFlash && (
          <motion.div key={seekFlash.id}
            className={`absolute top-1/2 -translate-y-1/2 z-20 pointer-events-none flex flex-col items-center gap-1
              ${seekFlash.side === "l" ? "left-8" : "right-8"}`}
            initial={{ opacity: 1, scale: 0.8 }} animate={{ opacity: 0, scale: 1.1 }}
            transition={{ duration: 0.6 }}>
            {seekFlash.side === "l"
              ? <RotateCcw className="w-8 h-8 text-white" />
              : <RotateCw   className="w-8 h-8 text-white" />}
            <span className="text-white text-xs font-bold">10 ثانية</span>
          </motion.div>
        )}
      </AnimatePresence>

      {/* ══ CONTROLS OVERLAY ══ */}
      <AnimatePresence>
        {showCtrl && !locked && (
          <motion.div key="ctrl" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            transition={{ duration: 0.2 }}
            className="absolute inset-0 z-20 flex flex-col"
            onClick={handleVideoTap}
            onTouchStart={onPinchStart}
            onTouchMove={onPinchMove}
            onTouchEnd={onPinchEnd}
          >
            {/* ── TOP SECTION — title + icons ── */}
            <div className="bg-gradient-to-b from-black/85 via-black/40 to-transparent pt-safe-top px-4 pb-8 flex-shrink-0"
              style={{ paddingTop: "max(14px, env(safe-area-inset-top))" }}>
              {/* Icons row */}
              <div className="flex items-center justify-end gap-3 mb-3">
                <button onClick={(e) => { e.stopPropagation(); takeScreenshot(); }}
                  className="w-9 h-9 rounded-xl bg-black/30 border border-white/15 backdrop-blur flex items-center justify-center active:scale-90 transition-transform">
                  <Camera className="w-4 h-4 text-white/80" />
                </button>
                <button onClick={(e) => { e.stopPropagation(); setRotLocked(r => !r); }}
                  className={`w-9 h-9 rounded-xl border backdrop-blur flex items-center justify-center active:scale-90 transition-all
                    ${rotLocked ? "bg-amber-500/30 border-amber-400/40" : "bg-black/30 border-white/15"}`}>
                  <RotateCw className="w-4 h-4 text-white/80" />
                </button>
                <button onClick={(e) => { e.stopPropagation(); onBack(); }}
                  className="w-9 h-9 rounded-xl bg-black/30 border border-white/15 backdrop-blur flex items-center justify-center active:scale-90 transition-transform">
                  <X className="w-4 h-4 text-white/80" />
                </button>
              </div>
              {/* Title */}
              <h1 className="text-white text-[16px] font-black font-['Cairo'] leading-tight mb-1.5" dir="ltr">{title}</h1>
              {/* Episode meta */}
              <div className="flex items-center gap-2 flex-wrap" dir="rtl">
                <span className="text-white/55 text-[12px] font-['Cairo']">الحلقة {ep}</span>
                <span className="text-white/20">•</span>
                <span className={`text-[11px] font-bold font-['Cairo'] ${getLang(src) === "ar" ? "text-emerald-300/80" : "text-blue-300/80"}`}>
                  {getLang(src) === "ar" ? "عربية" : "إنجليزية"}
                </span>
                <span className="text-white/20">•</span>
                <span className={`text-[11px] font-bold font-['Cairo'] ${subType === "مدبلج" ? "text-orange-300/80" : "text-violet-300/80"}`}>
                  {subType}
                </span>
                <span className="text-white/20">•</span>
                <span className="text-white/55 text-[11px] font-mono">{qualLabel}</span>
              </div>
              {/* Server name */}
              <p className="text-white/25 text-[10px] font-['Cairo'] mt-1">{getServerShortName(src)}</p>
            </div>

            {/* ── CENTER — seek buttons ── */}
            <div className="flex-1 flex items-center justify-between px-8 pointer-events-none">
              <button
                className="w-16 h-16 rounded-full bg-black/35 border border-white/20 backdrop-blur flex flex-col items-center justify-center gap-0.5 active:scale-90 transition-transform pointer-events-auto"
                onClick={(e) => { e.stopPropagation(); const v = videoRef.current; if (v) { v.currentTime = Math.max(0, v.currentTime - 10); setSeekFlash({ side:"l", id: Date.now() }); reveal(); } }}>
                <RotateCcw className="w-6 h-6 text-white" />
                <span className="text-white text-[9px] font-bold leading-none">10</span>
              </button>
              <button
                className="w-16 h-16 rounded-full bg-black/35 border border-white/20 backdrop-blur flex flex-col items-center justify-center gap-0.5 active:scale-90 transition-transform pointer-events-auto"
                onClick={(e) => { e.stopPropagation(); const v = videoRef.current; if (v) { v.currentTime = Math.min(v.duration||0, v.currentTime + 10); setSeekFlash({ side:"r", id: Date.now() }); reveal(); } }}>
                <RotateCw className="w-6 h-6 text-white" />
                <span className="text-white text-[9px] font-bold leading-none">10</span>
              </button>
            </div>

            {/* ── BOTTOM — controls ── */}
            <div className="bg-gradient-to-t from-black/90 via-black/50 to-transparent px-4 pb-safe-bottom"
              style={{ paddingBottom: "max(16px, env(safe-area-inset-bottom))" }}>

              {/* Speed popup */}
              <AnimatePresence>
                {showSpeed && (
                  <motion.div initial={{ opacity: 0, y: 8 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0, y: 8 }}
                    className="flex gap-2 justify-center mb-3">
                    {SPEEDS.map(s => (
                      <button key={s} onClick={(e) => { e.stopPropagation(); setSpeed(s); setShowSpeed(false); }}
                        className={`px-3 py-1.5 rounded-full text-[12px] font-bold font-['Cairo'] transition-all
                          ${speed === s ? "bg-violet-600 text-white" : "bg-white/10 text-white/60 border border-white/15"}`}>
                        {s}×
                      </button>
                    ))}
                  </motion.div>
                )}
              </AnimatePresence>

              {/* Time + progress */}
              <div className="flex items-center gap-3 mb-2">
                <span className="text-white/70 text-[11px] font-mono tabular-nums w-10 text-left">{fmtTime(curTime)}</span>
                <div className="flex-1 relative h-7 flex items-center cursor-pointer group"
                  ref={progRef}
                  onClick={(e) => { e.stopPropagation(); seekTo(e); }}
                  onMouseMove={(e) => { e.stopPropagation(); onProgMouseMove(e); }}
                  onMouseLeave={onProgMouseLeave}
                  onTouchStart={(e) => { e.stopPropagation(); onProgTouchStart(e); }}
                  onTouchMove={(e) => { e.stopPropagation(); onProgTouchMove(e); }}
                  onTouchEnd={(e) => { e.stopPropagation(); onProgTouchEnd(); }}>
                  {/* Track */}
                  <div className="w-full h-[3px] bg-white/20 rounded-full relative overflow-hidden">
                    {/* Buffered */}
                    <div className="absolute h-full bg-white/25 rounded-full" style={{ width: `${buffered*100}%` }} />
                    {/* Progress */}
                    <div className="absolute h-full bg-rose-500 rounded-full" style={{ width: `${progress*100}%` }} />
                  </div>
                  {/* Thumb */}
                  <div className="absolute w-4 h-4 rounded-full bg-white shadow-lg border-2 border-rose-400 transform -translate-x-1/2 -translate-y-1/2 top-1/2"
                    style={{ left: `${progress*100}%` }} />
                  {/* Time preview tooltip */}
                  {thumbTime !== null && (
                    <div className="absolute -top-8 bg-black/80 text-white text-[11px] font-mono px-2 py-0.5 rounded-lg pointer-events-none"
                      style={{ left: Math.max(20, Math.min(thumbX, (progRef.current?.offsetWidth || 200) - 20)) }}>
                      {fmtTime(thumbTime)}
                    </div>
                  )}
                </div>
                <span className="text-white/40 text-[11px] font-mono tabular-nums w-10 text-right">{fmtTime(duration)}</span>
              </div>

              {/* Main controls row */}
              <div className="flex items-center justify-between">
                {/* Left: speed + lock */}
                <div className="flex items-center gap-3">
                  <button onClick={(e) => { e.stopPropagation(); setShowSpeed(s => !s); }}
                    className="flex items-center gap-1.5 px-3 py-2 rounded-xl bg-white/8 border border-white/10 active:scale-90 transition-transform">
                    <Settings className="w-3.5 h-3.5 text-white/70" />
                    <span className="text-white/70 text-[12px] font-bold font-mono">{speed}×</span>
                  </button>
                  <button onClick={(e) => { e.stopPropagation(); setLocked(true); }}
                    className="w-9 h-9 rounded-xl bg-white/8 border border-white/10 flex items-center justify-center active:scale-90 transition-transform">
                    <Unlock className="w-4 h-4 text-white/70" />
                  </button>
                </div>

                {/* Center: Play/Pause */}
                <button onClick={(e) => { e.stopPropagation(); togglePlay(); }}
                  className="w-16 h-16 rounded-full bg-white flex items-center justify-center active:scale-90 transition-transform shadow-xl">
                  {buffering
                    ? <Loader2 className="w-7 h-7 text-black animate-spin" />
                    : playing
                    ? <Pause className="w-7 h-7 text-black fill-black" />
                    : <Play  className="w-7 h-7 text-black fill-black ml-1" />}
                </button>

                {/* Right: servers + fullscreen */}
                <div className="flex items-center gap-3">
                  <button onClick={(e) => { e.stopPropagation(); onOpenList(); }}
                    className="flex items-center gap-1.5 px-3 py-2 rounded-xl bg-white/8 border border-white/10 active:scale-90 transition-transform">
                    <Zap className="w-3.5 h-3.5 text-violet-400" />
                    <span className="text-white/70 text-[12px] font-bold font-['Cairo']">{liveCount}</span>
                  </button>
                  <button onClick={(e) => { e.stopPropagation(); toggleFs(); }}
                    className="w-9 h-9 rounded-xl bg-white/8 border border-white/10 flex items-center justify-center active:scale-90 transition-transform">
                    {fs ? <Minimize2 className="w-4 h-4 text-white/70" /> : <Maximize2 className="w-4 h-4 text-white/70" />}
                  </button>
                </div>
              </div>

              {/* Bottom action bar */}
              <div className="flex items-center justify-between mt-3 pt-2 border-t border-white/8">
                {/* Ep navigation */}
                <div className="flex items-center gap-2">
                  <button onClick={(e) => { e.stopPropagation(); ep > 1 && onPrevEp(); }}
                    disabled={ep <= 1}
                    className="flex items-center gap-1 px-3 py-1.5 rounded-xl bg-white/7 border border-white/10 active:scale-90 transition-transform disabled:opacity-30">
                    <ChevronRight className="w-4 h-4 text-white/60" />
                    <span className="text-white/60 text-[11px] font-['Cairo']">سابقة</span>
                  </button>
                  <button onClick={(e) => { e.stopPropagation(); ep < totalEps && onNextEp(); }}
                    disabled={ep >= totalEps}
                    className="flex items-center gap-1 px-3 py-1.5 rounded-xl bg-white/7 border border-white/10 active:scale-90 transition-transform disabled:opacity-30">
                    <span className="text-white/60 text-[11px] font-['Cairo']">تالية</span>
                    <ChevronRight className="w-4 h-4 text-white/60 rotate-180" />
                  </button>
                </div>

                {/* Action buttons */}
                <div className="flex items-center gap-2 bg-[#2a2510]/80 border border-amber-500/20 rounded-2xl px-3 py-2">
                  <button onClick={(e) => { e.stopPropagation(); toggleMute(); }}
                    className="w-8 h-8 rounded-xl flex items-center justify-center active:scale-90 transition-transform">
                    {muted ? <VolumeX className="w-4 h-4 text-amber-300/70" /> : <Volume2 className="w-4 h-4 text-amber-300/70" />}
                  </button>
                  <button onClick={(e) => { e.stopPropagation(); takeScreenshot(); }}
                    className="w-8 h-8 rounded-xl flex items-center justify-center active:scale-90 transition-transform">
                    <Camera className="w-4 h-4 text-amber-300/70" />
                  </button>
                  <button onClick={(e) => { e.stopPropagation(); onNextSrc(); }}
                    className="w-8 h-8 rounded-xl flex items-center justify-center active:scale-90 transition-transform">
                    <RefreshCw className="w-4 h-4 text-amber-300/70" />
                  </button>
                </div>
              </div>
            </div>
          </motion.div>
        )}
      </AnimatePresence>

      {/* ══ LOCKED OVERLAY ══ */}
      <AnimatePresence>
        {locked && (
          <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            className="absolute inset-0 z-30 flex items-end justify-center pb-10"
            onClick={() => setLocked(false)}>
            <div className="flex items-center gap-2 px-4 py-2.5 rounded-2xl bg-black/60 border border-white/15 backdrop-blur">
              <Lock className="w-4 h-4 text-amber-400" />
              <span className="text-amber-300/80 text-[12px] font-bold font-['Cairo']">الشاشة مقفلة · اضغط للفتح</span>
            </div>
          </motion.div>
        )}
      </AnimatePresence>

      {/* ══ TAP TO SHOW CONTROLS (when hidden) ══ */}
      {!showCtrl && !locked && (
        <div className="absolute inset-0 z-10"
          onClick={handleVideoTap}
          onTouchStart={onPinchStart}
          onTouchMove={onPinchMove}
          onTouchEnd={onPinchEnd}
        />
      )}
    </div>
  );
}

/* ══════════════════════════════════ LOADING SCREEN ══════════ */
function LoadingScreen({ cover, title, ep, streamDone, sourcesCount }: {
  cover: string; title: string; ep: number; streamDone: boolean; sourcesCount: number;
}) {
  return (
    <div className="fixed inset-0 z-50 bg-[#09090f] flex flex-col items-center justify-center gap-5" dir="rtl">
      {cover && (
        <div className="relative">
          <img src={cover} alt="" className="w-24 h-32 rounded-2xl object-cover opacity-60 blur-[1px]" />
          <div className="absolute inset-0 rounded-2xl bg-gradient-to-t from-[#09090f] via-transparent to-transparent" />
        </div>
      )}
      <motion.div initial={{ opacity: 0, y: 10 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: 0.15 }}
        className="text-center px-8">
        {title && <h2 className="text-white text-[14px] font-black font-['Cairo'] mb-1">{title}</h2>}
        <div className="flex items-center justify-center gap-1.5 text-white/35 text-[12px] font-['Cairo']">
          <span>الحلقة {ep}</span>
          {sourcesCount > 0 && <><span>·</span><span>{sourcesCount} مصدر</span></>}
        </div>
      </motion.div>
      {!streamDone && (
        <div className="flex items-center gap-1.5">
          {[0,1,2,3,4].map(i => (
            <motion.div key={i} className="w-1.5 h-1.5 rounded-full bg-violet-500"
              animate={{ opacity:[0.2,1,0.2], scale:[0.7,1.3,0.7] }}
              transition={{ duration: 1.3, repeat: Infinity, delay: i*0.18 }} />
          ))}
        </div>
      )}
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
        <button onClick={onBack} className="flex items-center gap-2 px-4 py-2.5 rounded-xl bg-white/5 border border-white/9 text-white/55 text-[13px] font-bold font-['Cairo'] active:scale-95 transition-transform">
          <ChevronRight className="w-4 h-4" /> رجوع
        </button>
        <button onClick={onRefresh} className="flex items-center gap-2 px-4 py-2.5 rounded-xl bg-violet-600 text-white text-[13px] font-bold font-['Cairo'] active:scale-95 transition-transform">
          <RefreshCw className="w-4 h-4" /> إعادة المحاولة
        </button>
      </div>
    </div>
  );
}

/* ══════════════════════════════════ IFRAME PLAYER ══════════ */
function IframePlayer({
  src, ep, totalEps, title: titleProp, cover: coverProp, anime,
  onBack, onOpenList, onNextEp, onPrevEp,
}: {
  src: Source; ep: number; totalEps: number; title: string; cover: string; anime: any;
  onBack: () => void; onOpenList: () => void;
  onNextEp: () => void; onPrevEp: () => void;
}) {
  const [cfBlock,  setCfBlock]  = useState(false);
  const [iframeOk, setIframeOk] = useState(false);
  const title  = anime?.title?.romaji || anime?.title?.english || titleProp;
  const proxyUrl = `/api/anime/proxy-embed?url=${encodeURIComponent(src.url)}`;

  useEffect(() => {
    const handler = (e: PopStateEvent) => { e.preventDefault(); onBack(); };
    window.addEventListener("popstate", handler);
    window.history.pushState({ nova: true }, "");
    return () => window.removeEventListener("popstate", handler);
  }, []);

  useEffect(() => {
    const handler = (e: MessageEvent) => {
      if (e.data?.type === "nova-cf-block") setCfBlock(true);
    };
    window.addEventListener("message", handler);
    return () => window.removeEventListener("message", handler);
  }, []);

  return (
    <motion.div
      className="fixed inset-0 z-50 bg-black flex flex-col"
      initial={{ opacity: 0, y: 24 }}
      animate={{ opacity: 1, y: 0 }}
      exit={{ opacity: 0, y: 24 }}
      transition={{ duration: 0.28, ease: [0.22, 1, 0.36, 1] }}
      dir="rtl"
    >
      {/* Top bar */}
      <div className="flex items-center gap-3 px-4 bg-[#0a0a12] border-b border-white/5 shrink-0"
        style={{ paddingTop: "max(14px, env(safe-area-inset-top))", paddingBottom: 10 }}>
        <button onClick={onBack}
          className="w-9 h-9 rounded-xl bg-white/6 border border-white/8 flex items-center justify-center active:scale-90 transition-transform shrink-0">
          <ChevronRight className="w-5 h-5 text-white/70" />
        </button>
        <div className="flex-1 min-w-0">
          <p className="text-white text-[13px] font-black font-['Cairo'] truncate">{title}</p>
          <p className="text-white/35 text-[11px] font-['Cairo']">
            {SITE_LABEL[src.site] || src.site} · الحلقة {ep}
          </p>
        </div>
        <button onClick={onOpenList}
          className="flex items-center gap-1.5 text-[11px] font-bold text-white/50 border border-white/10 rounded-xl px-3 py-2 font-['Cairo'] active:scale-90 transition-transform shrink-0">
          <List className="w-3.5 h-3.5" /> السيرفرات
        </button>
      </div>

      {/* iframe area */}
      <div className="relative flex-1 bg-black overflow-hidden">
        {!iframeOk && !cfBlock && (
          <div className="absolute inset-0 flex flex-col items-center justify-center gap-3 z-10 bg-black">
            <Loader2 className="w-8 h-8 text-violet-500 animate-spin" />
            <p className="text-white/30 text-[11px] font-['Cairo']">جاري تحميل المشغّل…</p>
          </div>
        )}
        {cfBlock ? (
          <div className="absolute inset-0 flex flex-col items-center justify-center gap-5 bg-[#0a0a12]">
            <div className="w-16 h-16 rounded-2xl bg-amber-500/10 border border-amber-500/20 flex items-center justify-center">
              <Globe className="w-7 h-7 text-amber-400/70" />
            </div>
            <div className="text-center px-8">
              <p className="text-white/60 text-[14px] font-black font-['Cairo']">محتوى محمي</p>
              <p className="text-white/25 text-[11px] mt-1 font-['Cairo']">لا يمكن تحميل هذا السيرفر</p>
            </div>
            <button onClick={onOpenList}
              className="flex items-center gap-2 px-5 py-2.5 rounded-xl bg-violet-600 text-white text-[13px] font-bold font-['Cairo'] active:scale-95 transition-transform">
              <List className="w-4 h-4" /> جرب سيرفراً آخر
            </button>
          </div>
        ) : (
          <iframe
            key={src.url}
            src={proxyUrl}
            className="absolute inset-0 w-full h-full border-0"
            onLoad={() => setIframeOk(true)}
            sandbox="allow-scripts allow-same-origin allow-forms allow-presentation"
            allow="autoplay; fullscreen; picture-in-picture; encrypted-media"
            allowFullScreen
            referrerPolicy="no-referrer"
          />
        )}
      </div>

      {/* Episode nav */}
      <div className="flex items-center justify-between px-6 bg-[#0a0a12] border-t border-white/5 shrink-0"
        style={{ paddingTop: 10, paddingBottom: "max(10px, env(safe-area-inset-bottom))" }}>
        <button onClick={onPrevEp} disabled={ep <= 1}
          className="flex items-center gap-1.5 text-[12px] font-bold text-white/45 disabled:opacity-20 font-['Cairo'] active:scale-95 transition-transform">
          <ChevronRight className="w-4 h-4" /> السابقة
        </button>
        <div className="flex items-center gap-1.5">
          <Globe className="w-3 h-3 text-violet-400/60" />
          <span className="text-white/20 text-[10px] font-['Cairo']">iframe</span>
        </div>
        <button onClick={onNextEp} disabled={ep >= totalEps}
          className="flex items-center gap-1.5 text-[12px] font-bold text-white/45 disabled:opacity-20 font-['Cairo'] active:scale-95 transition-transform flex-row-reverse">
          <ChevronLeft className="w-4 h-4" /> التالية
        </button>
      </div>
    </motion.div>
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
  const extractingRef = useRef(false);
  const triedRef      = useRef(new Set<string>());
  const autoPlayedRef = useRef(false);

  const title    = anime?.title?.romaji || anime?.title?.english || titleParam || "أنمي";
  const totalEps = anime?.episodes || anime?.nextAiringEpisode?.episode || 999;
  const cover    = anime?.coverImage?.large || "";

  useEffect(() => { sourcesRef.current = sources; }, [sources]);
  useEffect(() => { activeRef.current  = active;  }, [active]);

  function sortSources(srcs: Source[]): Source[] {
    return [...srcs].sort((a, b) => {
      if ((b.directUrl?1:0) !== (a.directUrl?1:0)) return (b.directUrl?1:0) - (a.directUrl?1:0);
      if (b.qualityRank !== a.qualityRank) return b.qualityRank - a.qualityRank;
      const sc: Record<string,number> = { animelek:12, animeblkom:11, anime3rb:10, animeiat:9, goldenanimaniac:8, animegg:7 };
      return (sc[b.site]||3) - (sc[a.site]||3);
    });
  }
  function dedupSources(srcs: Source[]): Source[] {
    const siteCounts = new Map<string,number>();
    return srcs.filter(s => {
      const site = s.site || "unknown";
      const n = siteCounts.get(site) || 0;
      if (!s.directUrl && n >= 3) return false;
      siteCounts.set(site, n + 1);
      return true;
    });
  }

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

  useEffect(() => { if (sources.length > 0 && phase === "loading") setPhase("servers"); }, [sources.length]);
  useEffect(() => { if (streamDone && phase === "loading") setPhase("servers"); }, [streamDone]);

  /* ── Auto-play best directUrl source when stream completes ── */
  useEffect(() => {
    if (!streamDone || autoPlayedRef.current || phase !== "servers") return;
    const best = sources.find(s => s.directUrl && (statuses[s.url] !== "dead"));
    if (best) { autoPlayedRef.current = true; playSource(best); }
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [streamDone, sources.length, phase]);

  /* ── Auto-probe directUrl sources ── */
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

  const EMBED_ONLY_FE = ["vidbm","uptostream","playerwish","wishfast","streamvid","streamlare","vidmoly","asnwish","share4max","megamax.me"];

  async function triggerExtract(src: Source) {
    if (src.directUrl || extractingRef.current) return;
    triedRef.current.add(src.url);
    // Embed-only sites → don't extract, let IframePlayer handle it
    if (EMBED_ONLY_FE.some(h => src.url.includes(h))) { return; }
    extractingRef.current = true; setExtracting(true);

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
      extractingRef.current = false; setExtracting(false);
      if (goNext) setTimeout(() => goNextSrc(), 0);
    };

    try {
      const ctrl = new AbortController();
      const t = setTimeout(() => ctrl.abort(), 5000);
      const res = await fetch(`/api/anime/extract-video?url=${encodeURIComponent(src.url)}`, { signal: ctrl.signal });
      clearTimeout(t);
      if (res.ok) {
        const ss = await res.json();
        if (ss.videoUrl) { applyExtracted(ss.videoUrl, src.url); done(); return; }
      }
    } catch {}

    done(true);
  }

  function playSource(src: Source) {
    setActive(src); setPhase("player");
    if (!src.directUrl) triggerExtract(src);
  }

  function goNextSrc() {
    const all = sourcesRef.current;
    const cur = activeRef.current ? all.indexOf(activeRef.current) : -1;
    for (let i = cur + 1; i < all.length; i++) {
      const s = all[i];
      if ((statuses[s.url] || "idle") === "dead") continue;
      if (triedRef.current.has(s.url)) continue;
      playSource(s); return;
    }
    triedRef.current.clear(); setPhase("servers");
  }

  function goEp(n: number) {
    navigate(`/watch?${new URLSearchParams({ anime: String(animeId), ep: String(n), title })}`);
  }
  function handleBack() {
    if (animeId) navigate(`/anime/${animeId}`);
    else if (window.history.length > 1) window.history.back();
    else navigate("/");
  }
  function handleRefresh() { localStorage.removeItem(`srccache:${animeId}-${ep}`); window.location.reload(); }

  const isIframeMode = phase === "player" && !!active && !active.directUrl && !extracting;

  /* ════ RENDER ════ */
  if (pageLoad || (phase === "loading" && sources.length === 0 && !streamDone)) {
    return <LoadingScreen cover={cover} title={title} ep={ep} streamDone={streamDone} sourcesCount={sources.length} />;
  }
  if (streamDone && sources.length === 0) {
    return <NoSources onRefresh={handleRefresh} onBack={handleBack} />;
  }

  /* ── Iframe mode: no directUrl and extraction finished/skipped ── */
  if (isIframeMode) {
    return (
      <IframePlayer
        src={active!} ep={ep} totalEps={totalEps} title={title} cover={cover} anime={anime}
        onBack={() => { setPhase("servers"); setActive(null); }}
        onOpenList={() => { setPhase("servers"); setActive(null); }}
        onNextEp={() => ep < totalEps ? goEp(ep + 1) : undefined}
        onPrevEp={() => ep > 1 ? goEp(ep - 1) : undefined}
      />
    );
  }

  /* ── Native player: has directUrl ── */
  if (phase === "player" && active) {
    return (
      <VideoPlayer
        src={active} anime={anime} ep={ep} totalEps={totalEps}
        sources={sources} statuses={statuses}
        title={title} cover={cover}
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
    <AnimatePresence mode="wait">
      <motion.div key="servers"
        initial={{ opacity: 0, y: 12 }}
        animate={{ opacity: 1, y: 0 }}
        exit={{ opacity: 0, y: -12 }}
        transition={{ duration: 0.22, ease: "easeOut" }}
        className="fixed inset-0"
      >
        <ServerListPage
          anime={anime} ep={ep} title={title} cover={cover}
          sources={sources} statuses={statuses} streamDone={streamDone}
          onPlay={playSource}
          onBack={handleBack}
          onSetStatus={(url, status) => setStatuses(prev => ({ ...prev, [url]: status }))}
        />
      </motion.div>
    </AnimatePresence>
  );
}
