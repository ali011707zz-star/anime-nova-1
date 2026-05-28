import { useState, useEffect, useRef, useCallback } from "react";
import { useLocation } from "wouter";
import {
  ChevronRight, ChevronLeft, Play, Pause, Loader2,
  AlertTriangle, RefreshCw, X, Maximize2, Minimize2,
  Settings, List,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

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
type Quality = "1080p FHD" | "720p HD" | "360p SD";
interface StreamData {
  servers: Record<Quality, string[]>;
  total: number;
  animeId?: number;
}

/* ══════════════════════════════════ HELPERS ══════════════════ */
function saveHistory(id: number, title: string, cover: string, ep: number, totalEps = 0) {
  try {
    const h: any[] = JSON.parse(localStorage.getItem("watch-history") || "[]");
    localStorage.setItem("watch-history", JSON.stringify(
      [{ id, title, cover, ep, date: new Date().toISOString(), totalEps },
       ...h.filter(x => !(x.id === id && x.ep === ep))].slice(0, 60)
    ));
  } catch {}
}

const QUALITY_LABELS: Quality[] = ["1080p FHD", "720p HD", "360p SD"];
const QUALITY_SHORT: Record<Quality, string> = {
  "1080p FHD": "1080",
  "720p HD": "720",
  "360p SD": "360",
};

/* ══════════════════════════════════ LOADING SCREEN ══════════ */
function LoadingScreen({ cover, title, ep }: { cover: string; title: string; ep: number }) {
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
        <p className="text-white/35 text-[12px] font-['Cairo']">جاري تشغيل الحلقة {ep}…</p>
      </motion.div>
      <div className="flex items-center gap-1.5">
        {[0,1,2,3,4].map(i => (
          <motion.div key={i} className="w-1.5 h-1.5 rounded-full bg-violet-500"
            animate={{ opacity:[0.2,1,0.2], scale:[0.7,1.3,0.7] }}
            transition={{ duration: 1.3, repeat: Infinity, delay: i*0.18 }} />
        ))}
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
        <button onClick={onBack}
          className="flex items-center gap-2 px-4 py-2.5 rounded-xl bg-white/5 border border-white/9 text-white/55 text-[13px] font-bold font-['Cairo'] active:scale-95 transition-transform">
          <ChevronRight className="w-4 h-4" /> رجوع
        </button>
        <button onClick={onRefresh}
          className="flex items-center gap-2 px-4 py-2.5 rounded-xl bg-violet-600 text-white text-[13px] font-bold font-['Cairo'] active:scale-95 transition-transform">
          <RefreshCw className="w-4 h-4" /> إعادة المحاولة
        </button>
      </div>
    </div>
  );
}

/* ══════════════════════════════════ QUALITY PICKER ══════════ */
function QualityPicker({
  cover, title, ep,
  streamData, onPick, onBack,
}: {
  cover: string; title: string; ep: number;
  streamData: StreamData;
  onPick: (q: Quality) => void;
  onBack: () => void;
}) {
  return (
    <div className="fixed inset-0 z-50 bg-[#09090f] flex flex-col" dir="rtl">
      {/* Top bar */}
      <div className="flex items-center gap-3 px-4 py-3 border-b border-white/5"
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

      {/* Content */}
      <div className="flex-1 flex flex-col items-center justify-center gap-6 px-6">
        {cover && (
          <div className="relative">
            <img src={cover} alt="" className="w-28 h-36 rounded-2xl object-cover opacity-70" />
            <div className="absolute inset-0 rounded-2xl bg-gradient-to-t from-[#09090f]/80 to-transparent" />
          </div>
        )}
        <div className="text-center">
          <p className="text-white/55 text-[13px] font-['Cairo'] mb-1">اختر جودة التشغيل</p>
          <p className="text-white/25 text-[11px] font-['Cairo']">يمكنك تغييرها لاحقاً أثناء المشاهدة</p>
        </div>

        {/* Quality buttons */}
        <div className="flex gap-3 justify-center">
          {QUALITY_LABELS.map(q => {
            const count = streamData.servers[q]?.length || 0;
            return (
              <button key={q} onClick={() => onPick(q)}
                className="flex flex-col items-center gap-1.5 px-5 py-4 rounded-2xl bg-white/5 border border-white/10 active:scale-90 transition-all hover:bg-violet-600/20 hover:border-violet-500/40">
                <span className="text-white font-black text-[18px] font-mono">{QUALITY_SHORT[q]}</span>
                <span className="text-white/40 text-[9px] font-bold uppercase tracking-widest">
                  {q.split(" ")[1]}
                </span>
                <span className="text-white/25 text-[9px] font-['Cairo']">{count} سيرفر</span>
              </button>
            );
          })}
        </div>
      </div>
    </div>
  );
}

/* ══════════════════════════════════ EPISODE PLAYER ═════════ */
function EpisodePlayer({
  servers, quality, allServers,
  title, cover, ep, totalEps,
  onBack, onNextEp, onPrevEp, onChangeQuality,
}: {
  servers: string[]; quality: Quality; allServers: Record<Quality, string[]>;
  title: string; cover: string; ep: number; totalEps: number;
  onBack: () => void; onNextEp: () => void; onPrevEp: () => void;
  onChangeQuality: (q: Quality) => void;
}) {
  const [currentServer, setCurrentServer] = useState(0);
  const [iframeLoaded, setIframeLoaded] = useState(false);
  const [iframeErr,    setIframeErr]    = useState(false);
  const [retrying,     setRetrying]     = useState(false);
  const [showQuality,  setShowQuality]  = useState(false);
  const [fs,           setFs]           = useState(false);
  const retryCount     = useRef(0);
  const retryTimer     = useRef<ReturnType<typeof setTimeout> | null>(null);

  const currentUrl = servers[currentServer] || "";

  /* ── Reset on quality/server change ── */
  useEffect(() => {
    setCurrentServer(0);
    setIframeLoaded(false);
    setIframeErr(false);
    setRetrying(false);
    retryCount.current = 0;
    if (retryTimer.current) clearTimeout(retryTimer.current);
  }, [quality, servers]);

  /* ── Back button handler ── */
  useEffect(() => {
    const handler = (e: PopStateEvent) => { e.preventDefault(); onBack(); };
    window.addEventListener("popstate", handler);
    window.history.pushState({ nova: true }, "");
    return () => window.removeEventListener("popstate", handler);
  }, []);

  /* ── Fullscreen ── */
  useEffect(() => {
    const fn = () => setFs(!!document.fullscreenElement);
    document.addEventListener("fullscreenchange", fn);
    return () => document.removeEventListener("fullscreenchange", fn);
  }, []);

  function toggleFs() {
    const el = document.getElementById("nova-player");
    if (!el) return;
    !document.fullscreenElement
      ? el.requestFullscreen?.().catch(() => {})
      : document.exitFullscreen?.().catch(() => {});
  }

  /* ── Fallback logic: wait 2s then try next server ── */
  function handleIframeError() {
    if (retryCount.current >= 3) {
      setIframeErr(true); return;
    }
    retryCount.current++;
    setRetrying(true);
    retryTimer.current = setTimeout(() => {
      setRetrying(false);
      if (currentServer + 1 < servers.length) {
        setCurrentServer(s => s + 1);
        setIframeLoaded(false);
        setIframeErr(false);
      } else {
        setIframeErr(true);
      }
    }, 2000); // 2s delay before next server
  }

  function tryNextServer() {
    if (retryTimer.current) clearTimeout(retryTimer.current);
    if (currentServer + 1 < servers.length) {
      setCurrentServer(s => s + 1);
      setIframeLoaded(false); setIframeErr(false); setRetrying(false);
      retryCount.current++;
    }
  }

  function tryPrevServer() {
    if (retryTimer.current) clearTimeout(retryTimer.current);
    if (currentServer > 0) {
      setCurrentServer(s => s - 1);
      setIframeLoaded(false); setIframeErr(false); setRetrying(false);
    }
  }

  return (
    <motion.div id="nova-player"
      className="fixed inset-0 z-50 bg-black flex flex-col"
      initial={{ opacity: 0, y: 20 }}
      animate={{ opacity: 1, y: 0 }}
      exit={{ opacity: 0, y: 20 }}
      transition={{ duration: 0.25, ease: [0.22, 1, 0.36, 1] }}
      dir="rtl"
    >
      {/* ── Top bar ── */}
      <div className="flex items-center gap-3 px-4 bg-black/80 backdrop-blur border-b border-white/8 shrink-0 z-20"
        style={{ paddingTop: "max(12px, env(safe-area-inset-top))", paddingBottom: 10 }}>
        <button onClick={onBack}
          className="w-9 h-9 rounded-xl bg-white/8 border border-white/12 flex items-center justify-center active:scale-90 transition-transform shrink-0">
          <ChevronRight className="w-5 h-5 text-white/70" />
        </button>
        <div className="flex-1 min-w-0">
          <p className="text-white text-[13px] font-black font-['Cairo'] truncate">{title}</p>
          <div className="flex items-center gap-1.5 text-white/35 text-[10px] font-['Cairo']">
            <span>الحلقة {ep}</span>
            <span>·</span>
            <span className="text-violet-300/60 font-bold">{quality}</span>
            <span>·</span>
            <span>سيرفر {currentServer + 1}/{servers.length}</span>
          </div>
        </div>

        {/* Quality change button */}
        <button onClick={() => setShowQuality(s => !s)}
          className={`flex items-center gap-1.5 px-3 py-2 rounded-xl border text-[11px] font-bold font-mono transition-all active:scale-90 shrink-0
            ${showQuality ? "bg-violet-600 border-violet-400 text-white" : "bg-white/8 border-white/12 text-white/60"}`}>
          <Settings className="w-3.5 h-3.5" />
          {QUALITY_SHORT[quality]}p
        </button>

        <button onClick={toggleFs}
          className="w-9 h-9 rounded-xl bg-white/8 border border-white/12 flex items-center justify-center active:scale-90 transition-transform shrink-0">
          {fs ? <Minimize2 className="w-4 h-4 text-white/60" /> : <Maximize2 className="w-4 h-4 text-white/60" />}
        </button>
      </div>

      {/* ── Quality picker overlay ── */}
      <AnimatePresence>
        {showQuality && (
          <motion.div key="qpick"
            initial={{ opacity: 0, y: -8 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0, y: -8 }}
            className="absolute top-[60px] left-0 right-0 z-30 flex justify-center px-4 pt-2">
            <div className="bg-[#12121e] border border-white/12 rounded-2xl px-4 py-3 flex gap-3 shadow-2xl">
              <p className="text-white/30 text-[10px] font-['Cairo'] self-center ml-2">الجودة:</p>
              {QUALITY_LABELS.map(q => (
                <button key={q} onClick={() => { onChangeQuality(q); setShowQuality(false); }}
                  className={`flex flex-col items-center gap-0.5 px-4 py-2.5 rounded-xl border transition-all active:scale-90
                    ${q === quality
                      ? "bg-violet-600 border-violet-500 text-white"
                      : "bg-white/5 border-white/10 text-white/50 hover:bg-white/10"}`}>
                  <span className="font-black text-[16px] font-mono">{QUALITY_SHORT[q]}</span>
                  <span className="text-[8px] font-bold opacity-70 uppercase tracking-wider">{q.split(" ")[1]}</span>
                </button>
              ))}
            </div>
          </motion.div>
        )}
      </AnimatePresence>

      {/* ── iframe area ── */}
      <div className="relative flex-1 bg-black overflow-hidden" onClick={() => setShowQuality(false)}>

        {/* Loading spinner */}
        {!iframeLoaded && !iframeErr && !retrying && currentUrl && (
          <div className="absolute inset-0 flex flex-col items-center justify-center gap-3 z-10 bg-black pointer-events-none">
            <Loader2 className="w-8 h-8 text-violet-500 animate-spin" />
            <p className="text-white/30 text-[11px] font-['Cairo']">جاري تحميل المشغّل…</p>
          </div>
        )}

        {/* Retrying overlay */}
        {retrying && (
          <div className="absolute inset-0 flex flex-col items-center justify-center gap-3 z-10 bg-black">
            <motion.div className="w-16 h-16 rounded-full border-[3px] border-t-violet-500 border-violet-500/15"
              animate={{ rotate: 360 }} transition={{ duration: 0.8, repeat: Infinity, ease: "linear" }} />
            <p className="text-white/50 text-[13px] font-['Cairo']">جاري الانتقال للسيرفر التالي…</p>
            <motion.div className="w-32 h-0.5 bg-white/10 rounded-full overflow-hidden">
              <motion.div className="h-full bg-violet-500 rounded-full"
                initial={{ width: "0%" }} animate={{ width: "100%" }} transition={{ duration: 2, ease: "linear" }} />
            </motion.div>
          </div>
        )}

        {/* Error state */}
        {iframeErr && (
          <div className="absolute inset-0 flex flex-col items-center justify-center gap-5 bg-[#0a0a12] z-10">
            <div className="w-16 h-16 rounded-2xl bg-red-500/10 border border-red-500/20 flex items-center justify-center">
              <AlertTriangle className="w-7 h-7 text-red-400/70" />
            </div>
            <div className="text-center px-8">
              <p className="text-white/60 text-[14px] font-black font-['Cairo']">فشل تحميل المصدر</p>
              <p className="text-white/25 text-[11px] mt-1 font-['Cairo']">جُرّبت {retryCount.current} سيرفرات</p>
            </div>
            <div className="flex gap-3">
              {currentServer > 0 && (
                <button onClick={tryPrevServer}
                  className="flex items-center gap-2 px-4 py-2.5 rounded-xl bg-white/5 border border-white/10 text-white/55 text-[13px] font-bold font-['Cairo'] active:scale-95 transition-transform">
                  <ChevronRight className="w-4 h-4" /> السابق
                </button>
              )}
              {currentServer + 1 < servers.length && (
                <button onClick={tryNextServer}
                  className="flex items-center gap-2 px-4 py-2.5 rounded-xl bg-violet-600 text-white text-[13px] font-bold font-['Cairo'] active:scale-95 transition-transform">
                  <RefreshCw className="w-4 h-4" /> سيرفر آخر
                </button>
              )}
            </div>
          </div>
        )}

        {/* Iframe */}
        {currentUrl && !retrying && (
          <iframe
            key={`${currentUrl}-${currentServer}`}
            src={currentUrl}
            className="absolute inset-0 w-full h-full border-0"
            onLoad={() => setIframeLoaded(true)}
            onError={handleIframeError}
            sandbox="allow-scripts allow-same-origin allow-forms allow-presentation allow-pointer-lock"
            allow="autoplay; fullscreen; picture-in-picture; encrypted-media"
            allowFullScreen
            referrerPolicy="no-referrer"
          />
        )}
      </div>

      {/* ── Bottom bar ── */}
      <div className="flex items-center justify-between px-6 bg-black/80 backdrop-blur border-t border-white/8 shrink-0"
        style={{ paddingTop: 10, paddingBottom: "max(10px, env(safe-area-inset-bottom))" }}>
        <button onClick={onPrevEp} disabled={ep <= 1}
          className="flex items-center gap-1.5 text-[12px] font-bold text-white/45 disabled:opacity-20 font-['Cairo'] active:scale-95 transition-transform">
          <ChevronRight className="w-4 h-4" /> السابقة
        </button>

        {/* Server switcher */}
        <div className="flex items-center gap-2">
          {servers.map((_, i) => (
            <button key={i} onClick={() => {
              if (retryTimer.current) clearTimeout(retryTimer.current);
              setCurrentServer(i);
              setIframeLoaded(false); setIframeErr(false); setRetrying(false);
            }}
              className={`w-6 h-6 rounded-lg text-[9px] font-black transition-all active:scale-90
                ${i === currentServer ? "bg-violet-600 text-white" : "bg-white/8 border border-white/12 text-white/40"}`}>
              {i + 1}
            </button>
          ))}
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

  // Read URL params once (stable refs)
  const sp           = useRef(new URLSearchParams(window.location.search)).current;
  const animeId      = parseInt(sp.get("anime") || "0");
  const ep           = parseInt(sp.get("ep") || "1");
  const titleParam   = sp.get("title") || "";
  const englishParam = sp.get("english") || "";

  const [anime,       setAnime]      = useState<any>(null);
  const [streamData,  setStreamData] = useState<StreamData | null>(null);
  const [quality,     setQuality]    = useState<Quality>("720p HD");
  const [phase,       setPhase]      = useState<"loading" | "quality" | "player" | "nosrc">("loading");
  const [loadingDone, setLoadingDone] = useState(false);
  const [fetchDone,   setFetchDone]  = useState(false);
  const fetchStarted = useRef(false); // guard: only one fetch per ep

  const title    = anime?.title?.romaji || anime?.title?.english || titleParam || "أنمي";
  const totalEps = anime?.episodes || anime?.nextAiringEpisode?.episode || 999;
  const cover    = anime?.coverImage?.large || "";

  /* ── Fetch AniPub servers — called once per (ep, title) ── */
  const doFetchServers = useCallback((t: string, e: string) => {
    if (fetchStarted.current) return;
    fetchStarted.current = true;
    const params = new URLSearchParams({ title: t, english: e, ep: String(ep) });
    fetch(`/api/anime/anipub-stream?${params}`)
      .then(r => { if (!r.ok) throw new Error(String(r.status)); return r.json(); })
      .then((d: StreamData) => { setStreamData(d); setFetchDone(true); })
      .catch(() => setFetchDone(true));
  }, [ep]);

  /* ── 1.5s loading delay ── */
  useEffect(() => {
    const t = setTimeout(() => setLoadingDone(true), 1500);
    return () => clearTimeout(t);
  }, []);

  /* ── Fetch AniList metadata ── */
  useEffect(() => {
    if (!animeId) return;
    fetch("https://graphql.anilist.co", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ query: ANILIST_Q, variables: { id: animeId } }),
      signal: AbortSignal.timeout(12000),
    })
      .then(r => r.json())
      .then(j => {
        const d = j.data?.Media;
        if (d) {
          setAnime(d);
          saveHistory(animeId, d.title?.romaji || "", d.coverImage?.large || "", ep, d.episodes || 0);
          // If we haven't started fetching yet (no title in URL), use AniList title
          if (!fetchStarted.current) {
            doFetchServers(d.title?.romaji || "", d.title?.english || "");
          }
        }
      })
      .catch(() => {});
  }, [animeId]);

  /* ── Start AniPub fetch immediately if we have URL title ── */
  useEffect(() => {
    if (titleParam || englishParam) {
      doFetchServers(titleParam, englishParam);
    }
  }, []); // mount only

  /* ── Advance phase once both timers are done ── */
  useEffect(() => {
    if (!loadingDone || !fetchDone) return;
    if (!streamData) { setPhase("nosrc"); return; }
    const hasAny = QUALITY_LABELS.some(q => (streamData.servers[q]?.length || 0) > 0);
    setPhase(hasAny ? "quality" : "nosrc");
  }, [loadingDone, fetchDone, streamData]);

  function goEp(n: number) {
    navigate(`/watch?${new URLSearchParams({ anime: String(animeId), ep: String(n), title: titleParam, english: englishParam })}`);
  }
  function handleBack() {
    if (animeId) navigate(`/anime/${animeId}`);
    else if (window.history.length > 1) window.history.back();
    else navigate("/");
  }
  function handleRefresh() { window.location.reload(); }

  const servers = streamData?.servers[quality] || [];

  /* ════ RENDER ════ */
  if (phase === "loading") {
    return <LoadingScreen cover={cover} title={title} ep={ep} />;
  }
  if (phase === "nosrc") {
    return <NoSources onRefresh={handleRefresh} onBack={handleBack} />;
  }
  if (phase === "quality") {
    return (
      <AnimatePresence mode="wait">
        <motion.div key="quality"
          initial={{ opacity: 0, y: 12 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0, y: -12 }}
          transition={{ duration: 0.22, ease: "easeOut" }} className="fixed inset-0">
          <QualityPicker
            cover={cover} title={title} ep={ep}
            streamData={streamData!}
            onPick={q => { setQuality(q); setPhase("player"); }}
            onBack={handleBack}
          />
        </motion.div>
      </AnimatePresence>
    );
  }

  return (
    <AnimatePresence mode="wait">
      <motion.div key="player" className="fixed inset-0">
        <EpisodePlayer
          servers={servers}
          quality={quality}
          allServers={streamData!.servers}
          title={title} cover={cover} ep={ep} totalEps={totalEps}
          onBack={() => setPhase("quality")}
          onNextEp={() => ep < totalEps ? goEp(ep + 1) : undefined}
          onPrevEp={() => ep > 1 ? goEp(ep - 1) : undefined}
          onChangeQuality={q => setQuality(q)}
        />
      </motion.div>
    </AnimatePresence>
  );
}
