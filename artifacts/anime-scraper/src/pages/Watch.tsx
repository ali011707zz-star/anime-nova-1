import { useState, useEffect, useRef } from "react";
import { useLocation } from "wouter";
import Hls from "hls.js";
import {
  ChevronRight, ChevronLeft, Loader2, Play,
  AlertTriangle, Zap, Settings2, XCircle,
  Download, CheckCircle2, RefreshCw, SkipForward,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

const ANILIST_Q = `query ($id: Int) {
  Media(id: $id, type: ANIME) {
    id title { romaji english }
    episodes coverImage { large }
    nextAiringEpisode { episode }
  }
}`;

interface Source {
  name: string; url: string; quality: string; qualityRank: number; site: string;
  directUrl?: string; directType?: "hls" | "mp4";
}
type ProbeStatus = "unknown" | "testing" | "ok" | "dead" | "incompatible";

const SITE_LABEL: Record<string, string> = {
  animelek: "AnimeLek", mitanime: "MitAnime", witanime: "WitAnime",
  anime4up: "Anime4Up", animeblkom: "Blkom", "3asq": "3asq", animetitans: "Titans",
  animegate: "AnimeGate", araanime: "AraAnime", anime4arabs: "4Arabs", cached: "مخزن",
};

function saveHistory(id: number, title: string, cover: string, ep: number) {
  try {
    const h: any[] = JSON.parse(localStorage.getItem("watch-history") || "[]");
    localStorage.setItem("watch-history",
      JSON.stringify([
        { id, title, cover, ep, date: new Date().toISOString() },
        ...h.filter(x => !(x.id === id && x.ep === ep))
      ].slice(0, 30)));
  } catch {}
}
const getCache = (k: string) => localStorage.getItem(k) ?? "";
const setCache = (k: string, v: string) => localStorage.setItem(k, v);

/* ── Quality Badge ── */
function QBadge({ q }: { q: string }) {
  const u = (q || "").toUpperCase();
  if (u === "FHD" || u === "1080")
    return <span className="text-[9px] font-black px-1.5 py-0.5 rounded-md bg-emerald-500/20 text-emerald-300 border border-emerald-500/20">{q}</span>;
  if (u === "HD" || u === "720")
    return <span className="text-[9px] font-black px-1.5 py-0.5 rounded-md bg-blue-500/20 text-blue-300 border border-blue-500/20">{q}</span>;
  return <span className="text-[9px] font-black px-1.5 py-0.5 rounded-md bg-zinc-600/30 text-zinc-400 border border-zinc-500/20">{q || "SD"}</span>;
}

/* ── Native HLS/MP4 Player ── */
function NativePlayer({ videoUrl, videoType, onReady, onFail }: {
  videoUrl: string; videoType: "hls" | "mp4";
  onReady: () => void; onFail: () => void;
}) {
  const videoRef = useRef<HTMLVideoElement>(null);
  const hlsRef   = useRef<Hls | null>(null);

  useEffect(() => {
    const video = videoRef.current;
    if (!video || !videoUrl) return;
    hlsRef.current?.destroy(); hlsRef.current = null;
    video.removeAttribute("src");

    if (videoType === "hls") {
      if (Hls.isSupported()) {
        const hls = new Hls({ startLevel: -1, maxBufferLength: 60, enableWorker: true });
        hls.loadSource(videoUrl);
        hls.attachMedia(video);
        hls.on(Hls.Events.MANIFEST_PARSED, () => { video.play().catch(() => {}); onReady(); });
        hls.on(Hls.Events.ERROR, (_, d) => { if (d.fatal) onFail(); });
        hlsRef.current = hls;
      } else if (video.canPlayType("application/vnd.apple.mpegurl")) {
        video.src = videoUrl;
        video.addEventListener("loadedmetadata", () => { video.play().catch(() => {}); onReady(); }, { once: true });
        video.addEventListener("error", onFail, { once: true });
      } else { onFail(); }
    } else {
      video.src = videoUrl;
      video.addEventListener("loadedmetadata", () => { video.play().catch(() => {}); onReady(); }, { once: true });
      video.addEventListener("error", onFail, { once: true });
    }
    return () => { hlsRef.current?.destroy(); hlsRef.current = null; };
  }, [videoUrl, videoType]);

  return (
    <video
      ref={videoRef}
      className="w-full h-full bg-black"
      controls playsInline autoPlay
      style={{ outline: "none" }}
    />
  );
}

/* ── Loading Cover ── */
function CoverLoader({ cover, message }: { cover: string | null; message: string }) {
  return (
    <div className="flex flex-col items-center justify-center py-10 gap-0">
      <div className="relative w-36 h-36 mb-4">
        {cover ? (
          <img src={cover} alt="" className="w-full h-full object-cover rounded-3xl border-2 border-primary/30 shadow-2xl shadow-primary/20" />
        ) : (
          <div className="w-full h-full rounded-3xl bg-primary/10 border-2 border-primary/20" />
        )}
        <div className="absolute inset-0 rounded-3xl"
          style={{ background: "linear-gradient(180deg, transparent 50%, rgba(9,9,11,0.7) 100%)" }} />
        <div className="absolute -bottom-2 -right-2 w-9 h-9 bg-[#111116] border border-white/12 rounded-2xl flex items-center justify-center shadow-xl">
          <Loader2 className="w-4 h-4 text-primary animate-spin" />
        </div>
      </div>
      <p className="text-white/55 text-xs font-['Cairo'] font-bold">{message}</p>
      <p className="text-white/18 text-[10px] font-['Cairo'] mt-1">لحظة صبر...</p>
      <div className="w-full px-4 mt-6 space-y-2">
        {[1,2,3,4].map(i => (
          <div key={i} className="h-[60px] rounded-2xl bg-white/4 animate-pulse"
            style={{ animationDelay: `${i * 110}ms`, animationDuration: "1.5s" }} />
        ))}
      </div>
    </div>
  );
}

/* ── Server Card ── */
function ServerCard({ src, status, isActive, onSelect, onDownload, downloading }: {
  src: Source; status: ProbeStatus; isActive: boolean;
  onSelect: (s: Source) => void; onDownload: (s: Source) => void; downloading: boolean;
}) {
  const isDead = status === "dead" || status === "incompatible";
  const label  = SITE_LABEL[src.site] || src.site;

  const cardCls = isActive
    ? "bg-emerald-500/10 border-emerald-500/35"
    : isDead
    ? "bg-red-500/4 border-red-400/15 opacity-40 pointer-events-none"
    : "bg-[#111116] border-white/6";

  const statusEl =
    status === "testing"      ? <Loader2 className="w-4 h-4 text-amber-400 animate-spin shrink-0" /> :
    status === "ok"           ? <CheckCircle2 className="w-4 h-4 text-emerald-400 shrink-0" /> :
    status === "dead"         ? <XCircle className="w-4 h-4 text-red-400 shrink-0" /> :
    status === "incompatible" ? <XCircle className="w-4 h-4 text-orange-400 shrink-0" /> :
                                <Play className="w-4 h-4 text-white/25 shrink-0" />;

  return (
    <motion.div
      whileTap={!isDead ? { scale: 0.97 } : {}}
      className={`flex items-center gap-2.5 px-3.5 py-3 rounded-2xl border transition-all ${cardCls}`}
    >
      {statusEl}
      <div className="flex-1 min-w-0 text-right">
        <p className={`text-sm font-black font-['Cairo'] truncate ${isActive ? "text-emerald-300" : isDead ? "text-white/25" : "text-white/85"}`}>
          {src.name}
        </p>
        <p className="text-[9px] text-white/30 font-['Cairo']">{label}</p>
      </div>
      <QBadge q={src.quality} />
      <button
        onClick={() => !isDead && onSelect(src)}
        disabled={isDead || status === "testing"}
        className={`w-9 h-9 rounded-xl flex items-center justify-center shrink-0 border transition-all active:scale-90
          ${isActive ? "bg-emerald-500/20 border-emerald-500/35 text-emerald-400" : "bg-primary/15 border-primary/25 text-primary"}`}
      >
        {status === "testing" ? <Loader2 className="w-3.5 h-3.5 animate-spin" /> : <Play className="w-3.5 h-3.5 fill-current" />}
      </button>
      <button
        onClick={() => onDownload(src)}
        disabled={downloading || isDead}
        className={`w-9 h-9 rounded-xl flex items-center justify-center shrink-0 border transition-all active:scale-90
          ${downloading ? "bg-blue-500/15 border-blue-500/25 text-blue-400" : "bg-white/5 border-white/8 text-white/35 hover:text-white/65"}`}
      >
        {downloading ? <Loader2 className="w-3.5 h-3.5 animate-spin" /> : <Download className="w-3.5 h-3.5" />}
      </button>
    </motion.div>
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

  const [view, setView]           = useState<"servers" | "player">("servers");
  const [anime, setAnime]         = useState<any>(null);
  const [sources, setSources]     = useState<Source[]>([]);
  const [active, setActive]       = useState<Source | null>(null);
  const [statuses, setStatuses]   = useState<Record<string, ProbeStatus>>({});
  const [videoUrl, setVideoUrl]   = useState<string | null>(null);
  const [videoType, setVideoType] = useState<"hls" | "mp4" | null>(null);
  const [loading, setLoading]     = useState(true);
  const [loadMsg, setLoadMsg]     = useState("جاري تحميل البيانات...");
  const [playerReady, setPlayerReady] = useState(false);
  const [extracting, setExtracting]   = useState(false);
  const [toast, setToast]         = useState<string | null>(null);
  const [downloadingUrl, setDownloadingUrl] = useState<string | null>(null);
  const [autoPlaying, setAutoPlaying] = useState(false);

  const hasPlayerState  = useRef(false);
  const ignoreNextPop   = useRef(false);
  const autoPlayIdx     = useRef(0);
  const autoPlayActive  = useRef(false);

  const title = anime?.title?.romaji || anime?.title?.english || "أنمي";
  const total = anime?.episodes || anime?.nextAiringEpisode?.episode || 999;
  const cover = anime?.coverImage?.large || null;

  /* ── Push history state once on entering player ── */
  useEffect(() => {
    if (view === "player" && !hasPlayerState.current) {
      window.history.pushState({ novaView: "player" }, "");
      hasPlayerState.current = true;
    }
  }, [view]);

  /* ── Intercept device back button ── */
  useEffect(() => {
    const handler = () => {
      if (ignoreNextPop.current) { ignoreNextPop.current = false; return; }
      if (hasPlayerState.current) {
        setView("servers");
        hasPlayerState.current = false;
      }
    };
    window.addEventListener("popstate", handler);
    return () => window.removeEventListener("popstate", handler);
  }, []);

  function goBack() {
    if (view === "player") {
      setView("servers");
      if (hasPlayerState.current) {
        ignoreNextPop.current = true;
        hasPlayerState.current = false;
        window.history.go(-1);
      }
      return;
    }
    window.history.back();
  }

  /* ── Load anime + sources ── */
  useEffect(() => {
    if (!animeId) { setLoading(false); return; }
    setLoading(true); setSources([]); setActive(null);
    setVideoUrl(null); setVideoType(null); setStatuses({});
    setView("servers"); autoPlayActive.current = false; setAutoPlaying(false);

    (async () => {
      try {
        setLoadMsg("جاري تحميل بيانات الأنمي...");
        const aniRes = await fetch("https://graphql.anilist.co", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ query: ANILIST_Q, variables: { id: animeId } }),
          signal: AbortSignal.timeout(15000),
        });
        const animeData = (await aniRes.json()).data?.Media;
        setAnime(animeData);
        if (animeData) saveHistory(animeId, animeData.title?.romaji || "", animeData.coverImage?.large || "", ep);

        setLoadMsg("جاري جلب السيرفرات من 10 مواقع...");
        const params = new URLSearchParams({
          ep: String(ep),
          title: animeData?.title?.romaji || "",
          english: animeData?.title?.english || "",
          anilistId: String(animeId),
        });
        if (alekSlug) params.set("alekSlug", alekSlug);
        if (mitSlug)  params.set("mitSlug",  mitSlug);

        const srcRes = await fetch(`/api/anime/all-sources?${params}`, { signal: AbortSignal.timeout(35000) });
        if (srcRes.ok) {
          const data = await srcRes.json();
          const srcs: Source[] = data.sources || [];
          if (data.alekSlug) setCache(`alek-slug-${animeId}`, data.alekSlug);
          if (data.mitSlug)  setCache(`mit-slug-${animeId}`,  data.mitSlug);
          setSources(srcs);
          const init: Record<string, ProbeStatus> = {};
          srcs.forEach(s => { init[s.url] = "unknown"; });
          setStatuses(init);
        }
      } catch (err: any) {
        if (err.name !== "AbortError") console.error(err);
      } finally {
        setLoading(false);
      }
    })();
  }, [animeId, ep]);

  /* ── Try to extract video from a source (uses pre-extracted URL if available) ── */
  async function tryExtract(src: Source): Promise<boolean> {
    setStatuses(s => ({ ...s, [src.url]: "testing" }));
    try {
      // If we already have a direct video URL from server-side extraction, use it immediately
      if (src.directUrl && src.directType) {
        setVideoUrl(src.directUrl);
        setVideoType(src.directType);
        setActive(src);
        setPlayerReady(false);
        setStatuses(s => ({ ...s, [src.url]: "ok" }));
        return true;
      }
      // Otherwise, ask the server to extract it (fallback for embed-only sources)
      const res = await fetch(
        `/api/anime/extract-video?url=${encodeURIComponent(src.url)}&referer=${encodeURIComponent(src.url)}`,
        { signal: AbortSignal.timeout(22000) }
      );
      const data = await res.json();
      if (data.videoUrl) {
        setVideoUrl(data.videoUrl);
        setVideoType(data.videoType);
        setActive(src);
        setPlayerReady(false);
        setStatuses(s => ({ ...s, [src.url]: "ok" }));
        return true;
      }
    } catch {}
    setStatuses(s => ({ ...s, [src.url]: "incompatible" }));
    return false;
  }

  /* ── Select server (manual) ── */
  async function selectServer(src: Source) {
    if (statuses[src.url] === "testing" || extracting) return;
    autoPlayActive.current = false;
    setAutoPlaying(false);
    setExtracting(true);
    const ok = await tryExtract(src);
    setExtracting(false);
    if (ok) {
      setTimeout(() => setView("player"), 300);
    } else {
      showToast("❌ لا يمكن استخراج الفيديو من هذا السيرفر — جرب غيره");
    }
  }

  /* ── Auto Play: tries servers one by one until one works ── */
  async function startAutoPlay() {
    if (autoPlaying || extracting) return;
    const candidates = sources.filter(
      s => statuses[s.url] !== "dead" && statuses[s.url] !== "incompatible"
    );
    if (!candidates.length) { showToast("لا يوجد سيرفرات متاحة"); return; }

    autoPlayActive.current = true;
    setAutoPlaying(true);

    for (let i = 0; i < candidates.length; i++) {
      if (!autoPlayActive.current) break;
      autoPlayIdx.current = i;
      setExtracting(true);
      const ok = await tryExtract(candidates[i]);
      setExtracting(false);
      if (ok) {
        autoPlayActive.current = false;
        setAutoPlaying(false);
        setTimeout(() => setView("player"), 300);
        return;
      }
    }

    autoPlayActive.current = false;
    setAutoPlaying(false);
    showToast("⚠ لم يُعثر على سيرفر يعمل — حاول لاحقاً");
  }

  /* ── Download ── */
  async function handleDownload(src: Source) {
    if (downloadingUrl === src.url) return;
    setDownloadingUrl(src.url);
    showToast("جاري البحث عن رابط التنزيل...");
    try {
      const res = await fetch(
        `/api/anime/extract-video?url=${encodeURIComponent(src.url)}&referer=${encodeURIComponent(src.url)}`,
        { signal: AbortSignal.timeout(22000) }
      );
      const data = await res.json();
      if (data.videoUrl && data.videoType === "mp4") {
        const a = document.createElement("a");
        a.href = data.videoUrl; a.download = `${title}-ep${ep}.mp4`;
        document.body.appendChild(a); a.click(); document.body.removeChild(a);
        showToast("⬇ بدأ التنزيل...");
      } else if (data.videoUrl) {
        showToast("⚠ هذا السيرفر HLS — لا يدعم التنزيل المباشر");
      } else {
        showToast("❌ لا يوجد رابط تنزيل مباشر");
      }
    } catch { showToast("❌ تعذر الوصول للرابط"); }
    finally  { setDownloadingUrl(null); }
  }

  function showToast(msg: string) { setToast(msg); setTimeout(() => setToast(null), 3500); }

  function goEp(n: number) {
    const p = new URLSearchParams({ anime: String(animeId), ep: String(n) });
    if (alekSlug) p.set("slug", alekSlug);
    navigate(`/watch?${p}`);
  }

  const fhdSrcs     = sources.filter(s => s.qualityRank === 3);
  const hdSrcs      = sources.filter(s => s.qualityRank === 2);
  const sdSrcs      = sources.filter(s => s.qualityRank <= 1);
  const activeCount = sources.filter(
    s => statuses[s.url] !== "dead" && statuses[s.url] !== "incompatible"
  ).length;

  /* ════════════════ RENDER ════════════════ */
  return (
    <div className="bg-[#09090B] min-h-screen text-white" dir="rtl">

      {/* ══ PLAYER VIEW ══ */}
      <div style={{ display: view === "player" ? "block" : "none" }}>

        {/* Video */}
        <div className="relative bg-black w-full overflow-hidden" style={{ aspectRatio: "16/9", minHeight: "230px" }}>

          {videoUrl && videoType && (
            <NativePlayer
              videoUrl={videoUrl}
              videoType={videoType}
              onReady={() => setPlayerReady(true)}
              onFail={() => {
                if (active) setStatuses(s => ({ ...s, [active.url]: "dead" }));
                setView("servers");
                showToast("⚠ فشل التشغيل — جرب سيرفراً آخر");
              }}
            />
          )}

          {/* Loading */}
          {!playerReady && videoUrl && (
            <div className="absolute inset-0 z-20 flex flex-col items-center justify-center bg-[#080808] pointer-events-none">
              <Loader2 className="w-8 h-8 text-primary animate-spin mb-2" />
              <p className="text-white/30 text-[10px] font-['Cairo']">جاري تحميل الفيديو...</p>
            </div>
          )}

          {/* No video */}
          {!videoUrl && (
            <div className="absolute inset-0 z-20 flex flex-col items-center justify-center gap-2 bg-[#080808]">
              <p className="text-white/20 text-xs font-['Cairo']">اختر سيرفراً</p>
            </div>
          )}

          {/* Back */}
          <button onClick={goBack}
            className="absolute top-3 right-3 z-30 w-9 h-9 bg-black/65 backdrop-blur-md rounded-full flex items-center justify-center border border-white/15 active:scale-90">
            <ChevronRight className="w-5 h-5 text-white" />
          </button>

          {/* Ad-free badge */}
          {playerReady && (
            <div className="absolute top-3 left-3 z-30 flex items-center gap-1 bg-emerald-500/20 border border-emerald-500/25 px-2 py-1 rounded-lg">
              <CheckCircle2 className="w-3 h-3 text-emerald-400" />
              <span className="text-emerald-400 text-[9px] font-black font-['Cairo']">مشغل مدمج · بدون إعلانات</span>
            </div>
          )}

          {/* Change server pill */}
          {playerReady && (
            <button onClick={() => setView("servers")}
              className="absolute bottom-2 left-1/2 -translate-x-1/2 z-30 flex items-center gap-1.5 bg-black/70 backdrop-blur-md border border-white/15 text-white/70 text-[10px] font-black px-3 py-1 rounded-full font-['Cairo'] active:scale-95">
              <Settings2 className="w-2.5 h-2.5" /> تغيير السيرفر
            </button>
          )}
        </div>

        {/* Episode nav */}
        <div className="px-4 pt-3 pb-2 border-b border-white/5">
          <p className="text-[10px] text-white/35 font-['Cairo'] text-center mb-2">
            {title} — الحلقة {ep}
            {active && (
              <span className="text-emerald-400 mr-2">
                · {active.name} ({SITE_LABEL[active.site] || active.site})
              </span>
            )}
          </p>
          <div className="flex gap-2">
            <button disabled={ep <= 1} onClick={() => goEp(ep - 1)}
              className="flex-1 h-10 flex items-center justify-center gap-1.5 bg-[#1C1C22] rounded-2xl border border-white/6 disabled:opacity-30 text-xs font-bold font-['Cairo'] active:scale-[0.97]">
              <ChevronRight className="w-3.5 h-3.5" /> السابقة
            </button>
            <div className="w-14 h-10 bg-primary/10 border border-primary/20 rounded-2xl flex flex-col items-center justify-center shrink-0">
              <span className="text-[8px] text-white/30 font-bold leading-none">حلقة</span>
              <span className="text-base font-black text-primary leading-tight">{ep}</span>
            </div>
            <button disabled={ep >= total} onClick={() => goEp(ep + 1)}
              className="flex-1 h-10 flex items-center justify-center gap-1.5 bg-primary rounded-2xl disabled:opacity-30 text-xs font-black font-['Cairo'] shadow-lg shadow-primary/20 active:scale-[0.97]">
              التالية <ChevronLeft className="w-3.5 h-3.5" />
            </button>
          </div>
        </div>

        {/* Not working */}
        <div className="flex items-center justify-center gap-3 px-4 pt-3 pb-4">
          <span className="text-[10px] text-white/20 font-['Cairo']">الفيديو لا يعمل؟</span>
          <button onClick={() => setView("servers")}
            className="flex items-center gap-1.5 bg-primary/10 border border-primary/18 text-primary text-[10px] font-black px-3 py-1.5 rounded-xl font-['Cairo'] active:scale-95">
            <Settings2 className="w-2.5 h-2.5" /> جرب سيرفر آخر
          </button>
        </div>
      </div>

      {/* ══ SERVERS VIEW ══ */}
      <div style={{ display: view === "servers" ? "flex" : "none", flexDirection: "column", minHeight: "100vh" }}>

        {/* Sticky header */}
        <div className="sticky top-0 z-30 bg-[#09090B]/97 backdrop-blur-xl border-b border-white/6 px-4 pt-4 pb-3 shrink-0">
          <div className="flex items-center gap-3 mb-3">
            <button onClick={goBack}
              className="w-9 h-9 bg-white/6 border border-white/8 rounded-xl flex items-center justify-center active:scale-90 shrink-0">
              <ChevronRight className="w-4 h-4 text-white/65" />
            </button>
            <div className="flex-1 min-w-0">
              <h1 className="text-sm font-black font-['Cairo'] line-clamp-1">
                {loading ? "جاري التحميل..." : title}
              </h1>
              <p className="text-[10px] text-primary font-bold font-['Cairo']">
                الحلقة {ep}
                {!loading && sources.length > 0 && ` · ${sources.length} سيرفر من 6 مواقع`}
              </p>
            </div>
            {active && (
              <button onClick={() => setView("player")}
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
            <button disabled={ep >= total} onClick={() => goEp(ep + 1)}
              className="flex-1 h-9 flex items-center justify-center gap-1 bg-primary rounded-xl disabled:opacity-30 text-[11px] font-black font-['Cairo'] active:scale-[0.97]">
              التالية <ChevronLeft className="w-3.5 h-3.5" />
            </button>
          </div>
        </div>

        {/* Loading */}
        {loading && (
          <div className="flex-1 px-4 pt-4">
            <CoverLoader cover={cover} message={loadMsg} />
          </div>
        )}

        {/* Empty */}
        {!loading && sources.length === 0 && (
          <div className="flex-1 flex flex-col items-center justify-center gap-4 px-8 text-center">
            <AlertTriangle className="w-10 h-10 text-white/12" />
            <div>
              <p className="text-white/45 text-sm font-black font-['Cairo']">لا توجد سيرفرات متاحة</p>
              <p className="text-white/20 text-xs mt-1 font-['Cairo']">هذه الحلقة غير متوفرة حالياً</p>
            </div>
            <button onClick={() => window.location.reload()}
              className="bg-primary/15 border border-primary/25 text-primary text-xs px-5 py-2.5 rounded-xl font-['Cairo'] font-black active:scale-95">
              إعادة المحاولة
            </button>
          </div>
        )}

        {/* Sources */}
        {!loading && sources.length > 0 && (
          <div className="flex-1 px-4 pt-4 pb-10 space-y-4">

            {/* Info banner */}
            <div className="flex items-center gap-3 p-4 rounded-2xl border border-primary/12"
              style={{ background: "linear-gradient(135deg, rgba(139,92,246,0.10) 0%, rgba(109,40,217,0.04) 100%)" }}>
              <div className="w-9 h-9 rounded-xl bg-primary/18 border border-primary/22 flex items-center justify-center shrink-0">
                <Zap className="w-4 h-4 text-primary" />
              </div>
              <div>
                <p className="text-xs font-black text-white/80 font-['Cairo']">مشغل داخلي — بدون إعلانات</p>
                <p className="text-[10px] text-white/30 font-['Cairo'] mt-0.5">يستخرج الفيديو مباشرة · لا يفتح أي موقع خارجي</p>
              </div>
            </div>

            {/* Extracting indicator */}
            <AnimatePresence>
              {extracting && (
                <motion.div
                  initial={{ opacity: 0, y: -8 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0 }}
                  className="flex items-center gap-2.5 p-3.5 rounded-2xl bg-amber-500/10 border border-amber-500/25"
                >
                  <Loader2 className="w-4 h-4 text-amber-400 animate-spin shrink-0" />
                  <p className="text-xs font-bold text-amber-300 font-['Cairo']">
                    {autoPlaying
                      ? `جاري تجربة السيرفرات تلقائياً... (${autoPlayIdx.current + 1}/${activeCount})`
                      : "جاري استخراج رابط الفيديو..."}
                  </p>
                </motion.div>
              )}
            </AnimatePresence>

            {/* Auto play button */}
            {!extracting && !autoPlaying && (
              <button
                onClick={startAutoPlay}
                className="w-full h-12 flex items-center justify-center gap-2 bg-primary rounded-2xl text-white text-sm font-black font-['Cairo'] shadow-lg shadow-primary/25 active:scale-[0.97]"
              >
                <SkipForward className="w-4 h-4" />
                تشغيل تلقائي (أفضل سيرفر)
              </button>
            )}

            {/* Refresh */}
            {!loading && !extracting && (
              <button onClick={() => window.location.reload()}
                className="w-full h-10 flex items-center justify-center gap-2 bg-white/5 border border-white/8 rounded-xl text-white/40 text-xs font-bold font-['Cairo'] active:scale-[0.97]">
                <RefreshCw className="w-3.5 h-3.5" /> تحديث السيرفرات
              </button>
            )}

            {/* Quality groups */}
            {[
              { srcs: fhdSrcs, label: "1080", badge: "FHD", cls: "text-emerald-400 bg-emerald-500/15 border-emerald-500/20" },
              { srcs: hdSrcs,  label: "720",  badge: "HD",  cls: "text-blue-400 bg-blue-500/15 border-blue-500/20" },
              { srcs: sdSrcs,  label: "SD",   badge: "SD",  cls: "text-zinc-400 bg-zinc-500/15 border-zinc-500/20" },
            ].filter(g => g.srcs.length > 0).map(group => (
              <div key={group.label}>
                <div className="flex items-center gap-2 mb-3">
                  <div className="h-px flex-1 bg-white/5" />
                  <div className="flex items-center gap-1.5">
                    <span className="text-base font-black text-white/50">{group.label}</span>
                    <span className={`text-[9px] font-black px-2 py-0.5 rounded-lg border ${group.cls}`}>{group.badge}</span>
                  </div>
                  <div className="h-px flex-1 bg-white/5" />
                </div>
                <div className="space-y-2">
                  {group.srcs.map(src => (
                    <ServerCard
                      key={src.url} src={src}
                      status={statuses[src.url] || "unknown"}
                      isActive={active?.url === src.url}
                      onSelect={selectServer}
                      onDownload={handleDownload}
                      downloading={downloadingUrl === src.url}
                    />
                  ))}
                </div>
              </div>
            ))}
          </div>
        )}
      </div>

      {/* Toast */}
      <AnimatePresence>
        {toast && (
          <motion.div
            initial={{ opacity: 0, y: 24, scale: 0.94 }} animate={{ opacity: 1, y: 0, scale: 1 }}
            exit={{ opacity: 0, y: 12 }}
            className="fixed bottom-8 left-4 right-4 z-50 bg-[#1C1C22] border border-white/10 rounded-2xl px-4 py-3.5 text-center shadow-2xl"
          >
            <p className="text-sm text-white/85 font-['Cairo'] font-bold">{toast}</p>
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  );
}
