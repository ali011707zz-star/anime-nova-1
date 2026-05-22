import { useState, useEffect, useRef, useCallback } from "react";
import { useLocation, Link } from "wouter";
import {
  ChevronRight, ChevronLeft, Loader2, Play, AlertTriangle,
  RefreshCw, Zap, CheckCircle2, XCircle, Maximize2, List,
  Download, MonitorPlay, RotateCcw, Camera, X, Wifi, WifiOff,
  SkipBack, SkipForward, Shield,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

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
  animelek: "AnimeLek", mitanime: "MitAnime", witanime: "WitAnime",
  anime4up: "Anime4Up", animeblkom: "Blkom", animetitans: "Titans",
  okanime: "OKAnime", db: "DB", cached: "مخزن",
};

const GENRE_COVERS: Record<string, string> = {
  "Action":     "https://s4.anilist.co/file/anilistcdn/media/anime/banner/21459-YEFGheQDsxJHQ8bE.jpg",
  "Adventure":  "https://s4.anilist.co/file/anilistcdn/media/anime/banner/113415-e1G39MX3vOSx.jpg",
  "Fantasy":    "https://s4.anilist.co/file/anilistcdn/media/anime/banner/101922-YfZFWRpWmEsm.jpg",
  "Sci-Fi":     "https://s4.anilist.co/file/anilistcdn/media/anime/banner/5114-Z6FPGv2zJhsA.jpg",
  "Drama":      "https://s4.anilist.co/file/anilistcdn/media/anime/banner/9253-1OdQ1obJ4kC.jpg",
  "Romance":    "https://s4.anilist.co/file/anilistcdn/media/anime/banner/101921-KmrCkHJqkGaX.jpg",
  "Comedy":     "https://s4.anilist.co/file/anilistcdn/media/anime/banner/21202-RnWIstMLZFMQ.jpg",
  "Horror":     "https://s4.anilist.co/file/anilistcdn/media/anime/banner/98478-3SKiH2T02S1D.jpg",
  "default":    "https://s4.anilist.co/file/anilistcdn/media/anime/banner/21-YpzLs2jBPpyBY.jpg",
};

/* ── Cache helpers ── */
const getCache = (k: string) => localStorage.getItem(k) ?? "";
const setCache = (k: string, v: string) => localStorage.setItem(k, v);

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

/* ── History with elapsed time ── */
function saveHistory(id: number, title: string, cover: string, ep: number, elapsed = 0, totalEps = 0) {
  try {
    const h: any[] = JSON.parse(localStorage.getItem("watch-history") || "[]");
    const existing = h.find(x => x.id === id && x.ep === ep);
    const entry = {
      id, title, cover, ep, date: new Date().toISOString(),
      elapsed: Math.max(elapsed, existing?.elapsed || 0),
      totalEps,
    };
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

/* ── Quality Badge ── */
function QBadge({ q }: { q: string }) {
  const u = (q || "").toUpperCase();
  if (u.includes("1080") || u === "FHD")
    return <span className="text-[8px] font-black px-1.5 py-0.5 rounded-md bg-emerald-500/20 text-emerald-300 border border-emerald-500/20">1080p</span>;
  if (u.includes("720") || u === "HD")
    return <span className="text-[8px] font-black px-1.5 py-0.5 rounded-md bg-blue-500/20 text-blue-300 border border-blue-500/20">720p</span>;
  return <span className="text-[8px] font-black px-1.5 py-0.5 rounded-md bg-zinc-600/30 text-zinc-400 border border-zinc-500/20">SD</span>;
}

/* ── Inline Player (ad-blocked iframe) ── */
function InlinePlayer({
  embedUrl, title, ep, totalEps, animeId, cover, onClose, onNext, onPrev, onServers,
}: {
  embedUrl: string; title: string; ep: number; totalEps: number; animeId: number;
  cover: string; onClose: () => void; onNext: () => void; onPrev: () => void; onServers: () => void;
}) {
  const [loaded, setLoaded] = useState(false);
  const [proxyHtml, setProxyHtml] = useState<string | null>(null);
  const [proxyFailed, setProxyFailed] = useState(false);
  const iframeRef = useRef<HTMLIFrameElement>(null);
  const startRef = useRef(Date.now());
  const elapsedRef = useRef(0);
  const timerRef = useRef<ReturnType<typeof setInterval> | null>(null);

  /* fetch proxied HTML for ad blocking */
  useEffect(() => {
    setLoaded(false); setProxyHtml(null); setProxyFailed(false);
    startRef.current = Date.now();
    elapsedRef.current = 0;

    fetch(`/api/anime/proxy-embed?url=${encodeURIComponent(embedUrl)}`)
      .then(r => { if (!r.ok) throw new Error("proxy " + r.status); return r.text(); })
      .then(html => setProxyHtml(html))
      .catch(() => setProxyFailed(true));

    /* track elapsed time every 15s */
    timerRef.current = setInterval(() => {
      elapsedRef.current = Math.floor((Date.now() - startRef.current) / 1000);
      updateElapsed(animeId, ep, elapsedRef.current);
    }, 15_000);

    return () => { if (timerRef.current) clearInterval(timerRef.current); };
  }, [embedUrl, animeId, ep]);

  const handleFullscreen = () => {
    const el = iframeRef.current as any;
    if (!el) return;
    (el.requestFullscreen || el.webkitRequestFullscreen || el.mozRequestFullScreen)?.call(el);
  };

  const handleDownload = () => {
    const a = document.createElement("a");
    a.href = embedUrl; a.target = "_blank"; a.rel = "noopener"; a.click();
  };

  const handleScreenshot = () => {
    try {
      const canvas = document.createElement("canvas");
      canvas.width = 1280; canvas.height = 720;
      const ctx = canvas.getContext("2d")!;
      ctx.fillStyle = "#000";
      ctx.fillRect(0, 0, 1280, 720);
      ctx.fillStyle = "#fff";
      ctx.font = "bold 28px Cairo";
      ctx.textAlign = "center";
      ctx.fillText(`${title} — الحلقة ${ep}`, 640, 360);
      canvas.toBlob(b => {
        if (!b) return;
        const url = URL.createObjectURL(b);
        const a = document.createElement("a"); a.href = url;
        a.download = `${title}-ep${ep}.png`; a.click();
        URL.revokeObjectURL(url);
      });
    } catch {}
  };

  const iframeSrc = proxyFailed ? embedUrl : undefined;
  const iframeSrcDoc = (!proxyFailed && proxyHtml) ? proxyHtml : undefined;

  return (
    <div className="fixed inset-0 z-50 bg-black flex flex-col" dir="ltr">

      {/* ── Top bar overlay ── */}
      <div className="absolute top-0 left-0 right-0 z-20 pointer-events-none"
        style={{ background: "linear-gradient(180deg,rgba(0,0,0,0.88) 0%,rgba(0,0,0,0.5) 60%,transparent 100%)", height: 72 }} />

      {/* Top controls (pointer-events: auto) */}
      <div className="absolute top-0 left-0 right-0 z-30 flex items-center justify-between px-3 pt-4 pb-2">
        {/* Right: back + title */}
        <div className="flex items-center gap-2" dir="rtl">
          <button onClick={onClose}
            className="w-9 h-9 bg-black/60 backdrop-blur-sm rounded-full flex items-center justify-center border border-white/15 active:scale-90 shrink-0">
            <X className="w-4 h-4 text-white" />
          </button>
          <div className="min-w-0">
            <p className="text-white text-[11px] font-black line-clamp-1 drop-shadow-lg" dir="rtl">{title}</p>
            <p className="text-white/60 text-[9px] font-bold drop-shadow-lg" dir="rtl">الحلقة {ep}</p>
          </div>
        </div>
        {/* Left: action buttons */}
        <div className="flex items-center gap-1.5">
          <button onClick={handleScreenshot}
            className="w-8 h-8 bg-black/60 backdrop-blur-sm rounded-full flex items-center justify-center border border-white/15 active:scale-90">
            <Camera className="w-3.5 h-3.5 text-white/80" />
          </button>
          <button onClick={handleFullscreen}
            className="w-8 h-8 bg-black/60 backdrop-blur-sm rounded-full flex items-center justify-center border border-white/15 active:scale-90">
            <Maximize2 className="w-3.5 h-3.5 text-white/80" />
          </button>
          <button onClick={handleDownload}
            className="w-8 h-8 bg-black/60 backdrop-blur-sm rounded-full flex items-center justify-center border border-white/15 active:scale-90">
            <Download className="w-3.5 h-3.5 text-white/80" />
          </button>
        </div>
      </div>

      {/* ── Ad shield badge ── */}
      {!proxyFailed && proxyHtml && (
        <div className="absolute top-3 left-1/2 -translate-x-1/2 z-30 flex items-center gap-1 bg-emerald-500/20 border border-emerald-500/30 px-2 py-0.5 rounded-full">
          <Shield className="w-2.5 h-2.5 text-emerald-400" />
          <span className="text-[8px] font-black text-emerald-400">محجوب الإعلانات</span>
        </div>
      )}

      {/* ── Loading overlay ── */}
      {!loaded && (
        <div className="absolute inset-0 z-20 flex flex-col items-center justify-center bg-black gap-4">
          <div className="relative">
            {cover && (
              <img src={cover} alt="" className="w-20 h-28 object-cover rounded-2xl border border-white/10 shadow-2xl" />
            )}
            <div className="absolute -inset-4 flex items-end justify-center pb-1">
              <div className="flex gap-1">
                {[0,1,2].map(i => (
                  <div key={i} className="w-1.5 h-1.5 bg-primary rounded-full animate-bounce"
                    style={{ animationDelay: `${i * 0.15}s` }} />
                ))}
              </div>
            </div>
          </div>
          <p className="text-white/50 text-[11px] font-['Cairo'] font-bold">لحظة من فضلك، نحن نجهز الفيديو</p>
        </div>
      )}

      {/* ── Main iframe ── */}
      <div className="flex-1 relative">
        {(iframeSrcDoc !== undefined || iframeSrc !== undefined) && (
          <iframe
            ref={iframeRef}
            key={embedUrl}
            {...(iframeSrcDoc !== undefined ? { srcDoc: iframeSrcDoc } : { src: iframeSrc! })}
            className="w-full h-full border-0"
            allowFullScreen
            allow="autoplay; fullscreen; picture-in-picture; encrypted-media"
            sandbox={iframeSrcDoc
              ? "allow-scripts allow-forms allow-presentation allow-fullscreen allow-pointer-lock allow-downloads"
              : "allow-scripts allow-same-origin allow-forms allow-presentation allow-fullscreen allow-pointer-lock allow-downloads"}
            referrerPolicy="no-referrer"
            style={{ display: "block" }}
            onLoad={() => setLoaded(true)}
          />
        )}
        {!iframeSrcDoc && !iframeSrc && !proxyFailed && (
          <div className="w-full h-full flex items-center justify-center bg-black">
            <Loader2 className="w-8 h-8 text-primary animate-spin" />
          </div>
        )}
      </div>

      {/* ── Bottom bar ── */}
      <div className="absolute bottom-0 left-0 right-0 z-20 pointer-events-none"
        style={{ background: "linear-gradient(0deg,rgba(0,0,0,0.88) 0%,rgba(0,0,0,0.5) 60%,transparent 100%)", height: 80 }} />

      <div className="absolute bottom-0 left-0 right-0 z-30 flex items-center justify-between px-3 pb-4 gap-2" dir="rtl">
        <button onClick={onPrev} disabled={ep <= 1}
          className="flex items-center gap-1 bg-black/70 backdrop-blur-sm text-white/70 text-[10px] font-bold px-3 py-2 rounded-xl border border-white/15 disabled:opacity-30 active:scale-95 font-['Cairo'] shrink-0">
          <ChevronRight className="w-3.5 h-3.5" /> السابقة
        </button>

        <button onClick={onServers}
          className="flex-1 flex items-center justify-center gap-1.5 bg-black/70 backdrop-blur-sm text-white/60 text-[9px] font-bold py-2 rounded-xl border border-white/15 active:scale-95 font-['Cairo']">
          <List className="w-3 h-3" /> السيرفرات
        </button>

        <button onClick={onNext} disabled={ep >= totalEps && totalEps > 0}
          className="flex items-center gap-1 bg-primary/90 backdrop-blur-sm text-white text-[10px] font-black px-3 py-2 rounded-xl disabled:opacity-30 active:scale-95 font-['Cairo'] shrink-0">
          التالية <ChevronLeft className="w-3.5 h-3.5" />
        </button>
      </div>
    </div>
  );
}

/* ── Source card with probe button ── */
function ServerCard({
  src, status, isActive, onSelect, onProbe,
}: {
  src: Source; status: ProbeStatus; isActive: boolean;
  onSelect: (s: Source) => void; onProbe: (s: Source) => void;
}) {
  const isDead = status === "dead";
  const label  = SITE_LABEL[src.site] || src.site;

  const cardCls = isActive
    ? "bg-emerald-500/10 border-emerald-500/35"
    : isDead ? "bg-red-500/4 border-red-400/15 opacity-40"
    : "bg-[#111116] border-white/6 active:bg-white/6";

  const statusEl =
    status === "testing" ? <Loader2 className="w-3.5 h-3.5 text-amber-400 animate-spin shrink-0" /> :
    status === "ok"      ? <CheckCircle2 className="w-3.5 h-3.5 text-emerald-400 shrink-0" /> :
    status === "dead"    ? <XCircle className="w-3.5 h-3.5 text-red-400 shrink-0" /> :
    isActive ? <CheckCircle2 className="w-3.5 h-3.5 text-emerald-400 shrink-0" /> :
    <div className="w-3.5 h-3.5 rounded-full border border-white/20 shrink-0" />;

  return (
    <div className={`w-full flex items-center gap-2.5 px-3 py-2.5 rounded-2xl border transition-all ${cardCls}`}>
      {statusEl}
      <button className="flex-1 min-w-0 text-right" onClick={() => !isDead && onSelect(src)} disabled={isDead}>
        <p className={`text-sm font-black font-['Cairo'] truncate ${isActive ? "text-emerald-300" : isDead ? "text-white/25" : "text-white/85"}`}>
          {src.name}
        </p>
        <p className="text-[9px] text-white/30 font-['Cairo']">{label}</p>
      </button>
      <QBadge q={src.quality} />
      <button
        onClick={() => onProbe(src)}
        disabled={status === "testing"}
        title="فحص الرابط"
        className={`w-7 h-7 rounded-xl flex items-center justify-center shrink-0 border transition-all active:scale-90
          ${status === "ok" ? "bg-emerald-500/15 border-emerald-500/25 text-emerald-400"
          : status === "dead" ? "bg-red-500/10 border-red-500/20 text-red-400"
          : "bg-white/5 border-white/10 text-white/30 hover:text-white/60"}`}>
        {status === "testing" ? <Loader2 className="w-3 h-3 animate-spin" /> :
         status === "ok" ? <Wifi className="w-3 h-3" /> :
         status === "dead" ? <WifiOff className="w-3 h-3" /> :
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

/* ── Stylish loading screen with anime image ── */
function LoadingScreen({ cover, title, ep, genres, sourcesCount }: {
  cover: string; title: string; ep: number; genres: string[]; sourcesCount: number;
}) {
  const genreKey = genres?.[0] || "default";
  const bgUrl = GENRE_COVERS[genreKey] || GENRE_COVERS["default"];

  return (
    <div className="min-h-screen flex flex-col items-center justify-center relative overflow-hidden" dir="rtl">
      {/* Blurred background */}
      <div className="absolute inset-0">
        <img src={cover || bgUrl} alt="" className="w-full h-full object-cover scale-110" style={{ filter: "blur(20px) brightness(0.3)" }} />
      </div>
      <div className="absolute inset-0" style={{ background: "linear-gradient(180deg, rgba(0,0,0,0.7) 0%, rgba(9,9,11,0.9) 100%)" }} />

      {/* Content */}
      <div className="relative z-10 flex flex-col items-center gap-5 px-8 text-center">
        {cover && (
          <motion.div
            initial={{ scale: 0.85, opacity: 0 }}
            animate={{ scale: 1, opacity: 1 }}
            transition={{ duration: 0.5 }}
            className="relative"
          >
            <img src={cover} alt="" className="w-32 h-44 object-cover rounded-3xl border border-white/15 shadow-[0_20px_60px_rgba(0,0,0,0.8)]" />
            {/* Glow */}
            <div className="absolute -inset-3 rounded-3xl opacity-40 blur-2xl"
              style={{ background: "radial-gradient(circle, rgba(139,92,246,0.6) 0%, transparent 70%)" }} />
          </motion.div>
        )}

        <div>
          <h2 className="text-white text-lg font-black font-['Cairo'] drop-shadow-xl">{title}</h2>
          <p className="text-primary text-sm font-bold font-['Cairo'] mt-0.5">الحلقة {ep}</p>
        </div>

        {/* Animated loading dots */}
        <div className="flex flex-col items-center gap-2">
          <div className="flex gap-2 items-center">
            <Loader2 className="w-4 h-4 text-primary animate-spin" />
            <span className="text-white/60 text-[11px] font-['Cairo'] font-bold">
              {sourcesCount > 0 ? `${sourcesCount} سيرفر متاح — جارٍ البحث عن المزيد...` : "جارٍ البحث عن المصادر..."}
            </span>
          </div>
          {sourcesCount > 0 && (
            <p className="text-white/30 text-[9px] font-['Cairo']">سيبدأ التشغيل تلقائياً</p>
          )}
        </div>
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
  const [statuses, setStatuses]       = useState<Record<string, ProbeStatus>>({});
  const [loading, setLoading]         = useState(true);
  const [streamDone, setStreamDone]   = useState(false);
  const [toast, setToast]             = useState<string | null>(null);

  const sseRef      = useRef<EventSource | null>(null);
  const seenUrls    = useRef(new Set<string>());
  const autoStarted = useRef(false);

  const title     = anime?.title?.romaji || anime?.title?.english || "أنمي";
  const totalEps  = anime?.episodes || anime?.nextAiringEpisode?.episode || 999;
  const cover     = anime?.coverImage?.large || "";
  const genres    = anime?.genres || [];

  /* ── Load metadata + start SSE ── */
  useEffect(() => {
    if (!animeId) { setLoading(false); return; }
    setLoading(true); setSources([]); setActive(null);
    setStatuses({}); setStreamDone(false); setShowPlayer(false);
    seenUrls.current.clear(); autoStarted.current = false;
    sseRef.current?.close();

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

        // Check cache
        const cached = getSrcCache(cacheKey);
        if (cached && cached.length > 0) {
          setSources(cached);
          const init: Record<string, ProbeStatus> = {};
          cached.forEach(s => { init[s.url] = "unknown"; });
          setStatuses(init);
          setLoading(false);
          setStreamDone(true);
          return;
        }

        setLoading(false);

        // SSE streaming
        const params = new URLSearchParams({
          ep: String(ep), title: romaji, english, anilistId: String(animeId), malId: String(malId),
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
            setSources(prev => [...prev, src]);
            setStatuses(prev => ({ ...prev, [src.url]: "unknown" }));
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

  /* ── Auto-play first source ── */
  useEffect(() => {
    if (autoStarted.current || sources.length === 0 || showPlayer) return;
    autoStarted.current = true;
    setActive(sources[0]);
    setShowPlayer(true);
  }, [sources]);

  /* ── Probe / check a source URL ── */
  const probeSource = useCallback(async (src: Source) => {
    setStatuses(s => ({ ...s, [src.url]: "testing" }));
    try {
      const r = await fetch(`/api/anime/proxy-embed?url=${encodeURIComponent(src.url)}`, {
        signal: AbortSignal.timeout(8000),
      });
      setStatuses(s => ({ ...s, [src.url]: r.ok ? "ok" : "dead" }));
    } catch {
      setStatuses(s => ({ ...s, [src.url]: "dead" }));
    }
  }, []);

  function selectServer(src: Source) {
    setActive(src);
    setShowPlayer(true);
    showToast("▶ جاري التشغيل...");
  }

  function showToast(msg: string) { setToast(msg); setTimeout(() => setToast(null), 2500); }

  function goEp(n: number) {
    const p = new URLSearchParams({ anime: String(animeId), ep: String(n) });
    if (alekSlug) p.set("slug", alekSlug);
    navigate(`/watch?${p}`);
  }

  const fhdSrcs = sources.filter(s => s.qualityRank >= 3);
  const hdSrcs  = sources.filter(s => s.qualityRank === 2);
  const sdSrcs  = sources.filter(s => s.qualityRank <= 1);

  /* ════════════════ RENDER ════════════════ */
  return (
    <div className="bg-[#09090B] min-h-screen text-white" dir="rtl">

      {/* ── FULLSCREEN PLAYER (fixed overlay) ── */}
      <AnimatePresence>
        {showPlayer && active && (
          <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}>
            <InlinePlayer
              key={active.url}
              embedUrl={active.url}
              title={title} ep={ep} totalEps={totalEps}
              animeId={animeId} cover={cover}
              onClose={() => setShowPlayer(false)}
              onNext={() => ep < totalEps ? goEp(ep + 1) : undefined}
              onPrev={() => ep > 1 ? goEp(ep - 1) : undefined}
              onServers={() => setShowPlayer(false)}
            />
          </motion.div>
        )}
      </AnimatePresence>

      {/* ── SERVERS / LOADING VIEW ── */}
      <div className={showPlayer ? "hidden" : "flex flex-col min-h-screen"}>

        {/* Loading with anime cover */}
        {loading && (
          <LoadingScreen cover={cover} title={title} ep={ep} genres={genres} sourcesCount={sources.length} />
        )}

        {/* Sources loading (no sources yet but SSE running) */}
        {!loading && sources.length === 0 && !streamDone && (
          <LoadingScreen cover={cover} title={title} ep={ep} genres={genres} sourcesCount={0} />
        )}

        {/* Sticky header */}
        {(!loading && (sources.length > 0 || streamDone)) && (
          <>
            <div className="sticky top-0 z-30 bg-[#09090B]/97 backdrop-blur-xl border-b border-white/6 px-4 pt-4 pb-3 shrink-0">
              <div className="flex items-center gap-3 mb-3">
                <button onClick={() => window.history.back()}
                  className="w-9 h-9 bg-white/6 border border-white/8 rounded-xl flex items-center justify-center active:scale-90 shrink-0">
                  <ChevronRight className="w-4 h-4 text-white/65" />
                </button>
                <div className="flex-1 min-w-0">
                  <h1 className="text-sm font-black font-['Cairo'] line-clamp-1">{title}</h1>
                  <div className="flex items-center gap-2">
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

            {/* Sources body */}
            <div className="flex-1 px-4 pt-4 pb-28 space-y-3">

              {/* Active player hint */}
              {active && (
                <motion.button
                  initial={{ opacity: 0, scale: 0.97 }} animate={{ opacity: 1, scale: 1 }}
                  onClick={() => setShowPlayer(true)}
                  className="w-full flex items-center gap-3 p-3.5 rounded-2xl bg-emerald-500/10 border border-emerald-500/25 active:scale-[0.98]">
                  <div className="w-9 h-9 rounded-xl bg-emerald-500/20 border border-emerald-500/30 flex items-center justify-center shrink-0">
                    <MonitorPlay className="w-4 h-4 text-emerald-400" />
                  </div>
                  <div className="flex-1 text-right">
                    <p className="text-xs font-black text-emerald-300 font-['Cairo']">يعمل الآن: {active.name}</p>
                    <p className="text-[10px] text-emerald-400/60 font-['Cairo']">اضغط للعودة للمشغّل</p>
                  </div>
                  <Play className="w-4 h-4 text-emerald-400 fill-emerald-400 shrink-0" />
                </motion.button>
              )}

              {/* Refresh */}
              {streamDone && (
                <button onClick={() => { localStorage.removeItem(`srccache:${animeId}-${ep}`); window.location.reload(); }}
                  className="w-full h-9 flex items-center justify-center gap-2 bg-white/5 border border-white/8 rounded-xl text-white/40 text-xs font-bold font-['Cairo'] active:scale-[0.97]">
                  <RefreshCw className="w-3.5 h-3.5" /> تحديث السيرفرات
                </button>
              )}

              {/* No sources */}
              {streamDone && sources.length === 0 && (
                <div className="flex flex-col items-center justify-center gap-4 py-16 text-center">
                  <AlertTriangle className="w-10 h-10 text-white/12" />
                  <div>
                    <p className="text-white/45 text-sm font-black font-['Cairo']">لا توجد سيرفرات متاحة</p>
                    <p className="text-white/20 text-xs mt-1 font-['Cairo']">هذه الحلقة غير متوفرة حالياً</p>
                  </div>
                </div>
              )}

              {/* Probe all hint */}
              {sources.length > 0 && (
                <div className="flex items-center justify-between">
                  <p className="text-[10px] text-white/30 font-['Cairo']">اضغط <Wifi className="w-2.5 h-2.5 inline" /> لفحص الرابط</p>
                  {!streamDone && (
                    <div className="flex items-center gap-1.5">
                      <Loader2 className="w-3 h-3 text-amber-400 animate-spin" />
                      <span className="text-[9px] text-amber-400 font-['Cairo']">جارٍ جلب المزيد</span>
                    </div>
                  )}
                </div>
              )}

              {/* Quality groups */}
              {[
                { srcs: fhdSrcs, badge: "1080p", cls: "text-emerald-400 bg-emerald-500/15 border-emerald-500/20" },
                { srcs: hdSrcs,  badge: "720p",  cls: "text-blue-400 bg-blue-500/15 border-blue-500/20" },
                { srcs: sdSrcs,  badge: "SD",    cls: "text-zinc-400 bg-zinc-500/15 border-zinc-500/20" },
              ].filter(g => g.srcs.length > 0).map(group => (
                <div key={group.badge}>
                  <div className="flex items-center gap-2 mb-2">
                    <div className="h-px flex-1 bg-white/5" />
                    <span className={`text-[8px] font-black px-2 py-0.5 rounded-lg border ${group.cls}`}>{group.badge}</span>
                    <div className="h-px flex-1 bg-white/5" />
                  </div>
                  <div className="space-y-2">
                    {group.srcs.map(src => (
                      <ServerCard
                        key={src.url} src={src}
                        status={statuses[src.url] || "unknown"}
                        isActive={active?.url === src.url}
                        onSelect={selectServer}
                        onProbe={probeSource}
                      />
                    ))}
                  </div>
                </div>
              ))}
            </div>
          </>
        )}
      </div>

      {/* Toast */}
      <AnimatePresence>
        {toast && (
          <motion.div
            initial={{ opacity: 0, y: 24 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0, y: 12 }}
            className="fixed bottom-8 left-4 right-4 z-[100] bg-[#1C1C22] border border-white/10 rounded-2xl px-4 py-3 text-center shadow-2xl">
            <p className="text-sm text-white/85 font-['Cairo'] font-bold">{toast}</p>
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  );
}
