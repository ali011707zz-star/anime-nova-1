import { useState, useEffect, useRef } from "react";
import { useLocation, Link } from "wouter";
import {
  ChevronRight, ChevronLeft, Loader2, Play,
  AlertTriangle, Settings2, SkipForward, RefreshCw,
  Zap, CheckCircle2, XCircle, Maximize2, Home,
  List, Download, MonitorPlay,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

const ANILIST_Q = `query ($id: Int) {
  Media(id: $id, type: ANIME) {
    id idMal title { romaji english }
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
  animegate: "AnimeGate", araanime: "AraAnime", anime4arabs: "4Arabs",
  okanime: "OKAnime", db: "DB", cached: "مخزن",
};

function saveHistory(id: number, title: string, cover: string, ep: number) {
  try {
    const h: any[] = JSON.parse(localStorage.getItem("watch-history") || "[]");
    localStorage.setItem("watch-history",
      JSON.stringify([
        { id, title, cover, ep, date: new Date().toISOString() },
        ...h.filter(x => !(x.id === id && x.ep === ep))
      ].slice(0, 50)));
  } catch {}
}
const getCache = (k: string) => localStorage.getItem(k) ?? "";
const setCache = (k: string, v: string) => localStorage.setItem(k, v);

function getSrcCache(key: string): Source[] | null {
  try {
    const raw = localStorage.getItem(`srccache:${key}`);
    if (!raw) return null;
    const { ts, sources } = JSON.parse(raw);
    if (Date.now() - ts > 3600_000) return null;
    return sources;
  } catch { return null; }
}
function setSrcCache(key: string, sources: Source[]) {
  try { localStorage.setItem(`srccache:${key}`, JSON.stringify({ ts: Date.now(), sources })); } catch {}
}

/* ── Quality Badge ── */
function QBadge({ q }: { q: string }) {
  const u = (q || "").toUpperCase();
  if (u === "FHD" || u.includes("1080"))
    return <span className="text-[9px] font-black px-1.5 py-0.5 rounded-md bg-emerald-500/20 text-emerald-300 border border-emerald-500/20">{q}</span>;
  if (u === "HD" || u.includes("720"))
    return <span className="text-[9px] font-black px-1.5 py-0.5 rounded-md bg-blue-500/20 text-blue-300 border border-blue-500/20">{q}</span>;
  return <span className="text-[9px] font-black px-1.5 py-0.5 rounded-md bg-zinc-600/30 text-zinc-400 border border-zinc-500/20">{q || "SD"}</span>;
}

/* ── Iframe Player ── */
function IframePlayer({ embedUrl, onClose }: { embedUrl: string; onClose: () => void }) {
  const [loaded, setLoaded] = useState(false);
  const iframeRef = useRef<HTMLIFrameElement>(null);

  return (
    <div className="relative w-full bg-black" style={{ aspectRatio: "16/9", minHeight: 220 }}>
      {/* Loading overlay */}
      {!loaded && (
        <div className="absolute inset-0 z-20 flex flex-col items-center justify-center bg-black gap-3">
          <div className="relative">
            <div className="w-10 h-10 border-2 border-primary/20 rounded-full" />
            <div className="w-10 h-10 border-2 border-primary border-t-transparent rounded-full animate-spin absolute inset-0" />
          </div>
          <p className="text-white/40 text-[11px] font-['Cairo'] font-bold">جاري تحميل المشغّل...</p>
        </div>
      )}

      {/* Iframe */}
      <iframe
        ref={iframeRef}
        src={embedUrl}
        className="w-full h-full border-0"
        allowFullScreen
        allow="autoplay; fullscreen; picture-in-picture; encrypted-media"
        style={{ display: "block" }}
        onLoad={() => setLoaded(true)}
      />

      {/* Top overlay - covers site branding */}
      <div
        className="absolute top-0 left-0 right-0 z-10 pointer-events-none"
        style={{
          height: 52,
          background: "linear-gradient(180deg, rgba(0,0,0,0.92) 0%, rgba(0,0,0,0.6) 70%, transparent 100%)"
        }}
      />

      {/* Back button */}
      <button
        onClick={onClose}
        className="absolute top-2 right-2 z-30 w-9 h-9 bg-black/70 backdrop-blur-md rounded-full flex items-center justify-center border border-white/15 active:scale-90 pointer-events-auto"
      >
        <ChevronRight className="w-5 h-5 text-white" />
      </button>

      {/* Fullscreen hint */}
      <button
        onClick={() => iframeRef.current?.requestFullscreen?.()}
        className="absolute top-2 left-2 z-30 w-9 h-9 bg-black/70 backdrop-blur-md rounded-full flex items-center justify-center border border-white/15 active:scale-90 pointer-events-auto"
      >
        <Maximize2 className="w-4 h-4 text-white/70" />
      </button>
    </div>
  );
}

/* ── Server Card ── */
function ServerCard({
  src, status, isActive, onSelect,
}: {
  src: Source; status: ProbeStatus; isActive: boolean; onSelect: (s: Source) => void;
}) {
  const isDead = status === "dead" || status === "incompatible";
  const label  = SITE_LABEL[src.site] || src.site;

  const cardCls = isActive
    ? "bg-emerald-500/10 border-emerald-500/35"
    : isDead
    ? "bg-red-500/4 border-red-400/15 opacity-40"
    : "bg-[#111116] border-white/6 active:bg-white/6";

  const statusEl =
    status === "testing"      ? <Loader2 className="w-4 h-4 text-amber-400 animate-spin shrink-0" /> :
    status === "ok"           ? <CheckCircle2 className="w-4 h-4 text-emerald-400 shrink-0" /> :
    status === "dead"         ? <XCircle className="w-4 h-4 text-red-400 shrink-0" /> :
    status === "incompatible" ? <XCircle className="w-4 h-4 text-orange-400 shrink-0" /> :
                                <Play className="w-4 h-4 text-white/25 shrink-0" />;

  return (
    <motion.button
      whileTap={!isDead ? { scale: 0.97 } : {}}
      disabled={isDead || status === "testing"}
      onClick={() => !isDead && onSelect(src)}
      className={`w-full flex items-center gap-2.5 px-3.5 py-3 rounded-2xl border transition-all text-right ${cardCls}`}
    >
      {statusEl}
      <div className="flex-1 min-w-0 text-right">
        <p className={`text-sm font-black font-['Cairo'] truncate ${isActive ? "text-emerald-300" : isDead ? "text-white/25" : "text-white/85"}`}>
          {src.name}
        </p>
        <p className="text-[9px] text-white/30 font-['Cairo']">{label}</p>
      </div>
      <QBadge q={src.quality} />
      <div className={`w-8 h-8 rounded-xl flex items-center justify-center shrink-0 border transition-all
        ${isActive ? "bg-emerald-500/20 border-emerald-500/35 text-emerald-400" : "bg-primary/15 border-primary/25 text-primary"}`}>
        {status === "testing" ? <Loader2 className="w-3.5 h-3.5 animate-spin" /> : <Play className="w-3.5 h-3.5 fill-current" />}
      </div>
    </motion.button>
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
  const [embedUrl, setEmbedUrl]   = useState<string | null>(null);
  const [loading, setLoading]     = useState(true);
  const [loadMsg, setLoadMsg]     = useState("جاري تحميل بيانات الأنمي...");
  const [toast, setToast]         = useState<string | null>(null);
  const [streamDone, setStreamDone] = useState(false);

  const sseRef         = useRef<EventSource | null>(null);
  const seenUrls       = useRef(new Set<string>());
  const autoStarted    = useRef(false);

  const title = anime?.title?.romaji || anime?.title?.english || "أنمي";
  const total = anime?.episodes || anime?.nextAiringEpisode?.episode || 999;
  const cover = anime?.coverImage?.large || null;

  /* ── Load anime metadata + sources ── */
  useEffect(() => {
    if (!animeId) { setLoading(false); return; }
    setLoading(true); setSources([]); setActive(null);
    setEmbedUrl(null); setStatuses({}); setStreamDone(false);
    seenUrls.current.clear(); autoStarted.current = false;
    setView("servers");
    sseRef.current?.close();

    const cacheKey = `${animeId}-${ep}`;

    (async () => {
      try {
        // 1. Fetch anime metadata
        const aniRes = await fetch("https://graphql.anilist.co", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ query: ANILIST_Q, variables: { id: animeId } }),
          signal: AbortSignal.timeout(15000),
        });
        const animeData = (await aniRes.json()).data?.Media;
        setAnime(animeData);
        if (animeData) saveHistory(animeId, animeData.title?.romaji || "", animeData.coverImage?.large || "", ep);

        const romaji  = animeData?.title?.romaji || "";
        const english = animeData?.title?.english || "";
        const malId   = animeData?.idMal || 0;

        // 2. Check localStorage cache first
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

        setLoadMsg("جاري جلب السيرفرات...");
        setLoading(false);

        // 3. SSE streaming
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
        setLoading(false);
        setStreamDone(true);
      }
    })();

    return () => { sseRef.current?.close(); sseRef.current = null; };
  }, [animeId, ep]);

  /* ── Play a source directly in iframe ── */
  function playSource(src: Source) {
    const url = src.directUrl || src.url;
    setActive(src);
    setEmbedUrl(url);
    setStatuses(s => ({ ...s, [src.url]: "ok" }));
    setView("player");
  }

  /* ── Auto-play: plays first source as soon as it arrives ── */
  useEffect(() => {
    if (autoStarted.current || sources.length === 0 || view === "player") return;
    // Auto-play first source immediately
    autoStarted.current = true;
    playSource(sources[0]);
  }, [sources]);

  function selectServer(src: Source) {
    playSource(src);
    showToast("▶ جاري التشغيل...");
  }

  function showToast(msg: string) { setToast(msg); setTimeout(() => setToast(null), 3000); }

  function goEp(n: number) {
    const p = new URLSearchParams({ anime: String(animeId), ep: String(n) });
    if (alekSlug) p.set("slug", alekSlug);
    navigate(`/watch?${p}`);
  }

  const fhdSrcs = sources.filter(s => s.qualityRank === 3);
  const hdSrcs  = sources.filter(s => s.qualityRank === 2);
  const sdSrcs  = sources.filter(s => s.qualityRank <= 1);

  /* ════════════════ RENDER ════════════════ */
  return (
    <div className="bg-[#09090B] min-h-screen text-white" dir="rtl">

      {/* ══ PLAYER VIEW ══ */}
      <div style={{ display: view === "player" ? "block" : "none" }}>

        {/* Iframe player */}
        {embedUrl && (
          <IframePlayer
            key={embedUrl}
            embedUrl={embedUrl}
            onClose={() => setView("servers")}
          />
        )}

        {/* Episode nav strip */}
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

        {/* Quick actions */}
        <div className="flex items-center justify-center gap-3 px-4 pt-3 pb-4">
          <button onClick={() => setView("servers")}
            className="flex items-center gap-1.5 bg-primary/10 border border-primary/18 text-primary text-[10px] font-black px-3 py-2 rounded-xl font-['Cairo'] active:scale-95">
            <List className="w-3 h-3" /> كل السيرفرات
          </button>
          <Link href="/">
            <button className="flex items-center gap-1.5 bg-white/6 border border-white/8 text-white/50 text-[10px] font-black px-3 py-2 rounded-xl font-['Cairo'] active:scale-95">
              <Home className="w-3 h-3" /> الرئيسية
            </button>
          </Link>
        </div>

        {/* More sources strip (shows while streaming) */}
        {!streamDone && (
          <div className="flex items-center gap-2 mx-4 mb-3 p-3 rounded-xl bg-amber-500/8 border border-amber-500/15">
            <Loader2 className="w-3.5 h-3.5 text-amber-400 animate-spin shrink-0" />
            <p className="text-[10px] text-amber-300 font-['Cairo'] font-bold">جاري البحث عن سيرفرات إضافية... ({sources.length} حتى الآن)</p>
          </div>
        )}
      </div>

      {/* ══ SERVERS VIEW ══ */}
      <div style={{ display: view === "servers" ? "flex" : "none", flexDirection: "column", minHeight: "100vh" }}>

        {/* Sticky header */}
        <div className="sticky top-0 z-30 bg-[#09090B]/97 backdrop-blur-xl border-b border-white/6 px-4 pt-4 pb-3 shrink-0">
          <div className="flex items-center gap-3 mb-3">
            <button onClick={() => window.history.back()}
              className="w-9 h-9 bg-white/6 border border-white/8 rounded-xl flex items-center justify-center active:scale-90 shrink-0">
              <ChevronRight className="w-4 h-4 text-white/65" />
            </button>
            <div className="flex-1 min-w-0">
              <h1 className="text-sm font-black font-['Cairo'] line-clamp-1">
                {loading ? "جاري التحميل..." : title}
              </h1>
              <div className="flex items-center gap-2">
                <p className="text-[10px] text-primary font-bold font-['Cairo']">
                  الحلقة {ep}
                  {sources.length > 0 && ` · ${sources.length} سيرفر`}
                </p>
                {!streamDone && sources.length === 0 && (
                  <Loader2 className="w-3 h-3 text-primary animate-spin" />
                )}
              </div>
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

        {/* Loading initial */}
        {loading && (
          <div className="flex-1 flex flex-col items-center justify-center gap-4 px-8">
            {cover && <img src={cover} alt="" className="w-28 h-40 object-cover rounded-2xl border border-white/10 shadow-2xl" />}
            <div className="text-center">
              <Loader2 className="w-8 h-8 text-primary animate-spin mx-auto mb-2" />
              <p className="text-white/55 text-xs font-['Cairo'] font-bold">{loadMsg}</p>
            </div>
          </div>
        )}

        {/* Live streaming sources + empty state */}
        {!loading && (
          <div className="flex-1 px-4 pt-4 pb-28 space-y-4">

            {/* Streaming indicator */}
            {!streamDone && (
              <motion.div
                initial={{ opacity: 0, y: -8 }} animate={{ opacity: 1, y: 0 }}
                className="flex items-center gap-3 p-3.5 rounded-2xl bg-primary/8 border border-primary/15"
              >
                <div className="w-8 h-8 rounded-xl bg-primary/15 border border-primary/20 flex items-center justify-center shrink-0">
                  <Zap className="w-4 h-4 text-primary" />
                </div>
                <div className="flex-1">
                  <p className="text-xs font-black text-white/80 font-['Cairo']">جاري جلب السيرفرات...</p>
                  <p className="text-[10px] text-white/35 font-['Cairo']">تظهر السيرفرات فور توفرها</p>
                </div>
                <Loader2 className="w-4 h-4 text-primary animate-spin shrink-0" />
              </motion.div>
            )}

            {/* No sources */}
            {streamDone && sources.length === 0 && (
              <div className="flex flex-col items-center justify-center gap-4 py-16 text-center">
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

            {/* Active player hint */}
            {active && embedUrl && (
              <motion.button
                initial={{ opacity: 0, scale: 0.97 }} animate={{ opacity: 1, scale: 1 }}
                onClick={() => setView("player")}
                className="w-full flex items-center gap-3 p-3.5 rounded-2xl bg-emerald-500/10 border border-emerald-500/25 active:scale-[0.98]"
              >
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
                className="w-full h-10 flex items-center justify-center gap-2 bg-white/5 border border-white/8 rounded-xl text-white/40 text-xs font-bold font-['Cairo'] active:scale-[0.97]">
                <RefreshCw className="w-3.5 h-3.5" /> تحديث السيرفرات
              </button>
            )}

            {/* Quality groups */}
            {[
              { srcs: fhdSrcs, label: "1080p", badge: "FHD", cls: "text-emerald-400 bg-emerald-500/15 border-emerald-500/20" },
              { srcs: hdSrcs,  label: "720p",  badge: "HD",  cls: "text-blue-400 bg-blue-500/15 border-blue-500/20" },
              { srcs: sdSrcs,  label: "SD",    badge: "SD",  cls: "text-zinc-400 bg-zinc-500/15 border-zinc-500/20" },
            ].filter(g => g.srcs.length > 0).map(group => (
              <div key={group.label}>
                <div className="flex items-center gap-2 mb-3">
                  <div className="h-px flex-1 bg-white/5" />
                  <span className={`text-[9px] font-black px-2 py-0.5 rounded-lg border ${group.cls}`}>{group.badge}</span>
                  <div className="h-px flex-1 bg-white/5" />
                </div>
                <div className="space-y-2">
                  {group.srcs.map(src => (
                    <ServerCard
                      key={src.url} src={src}
                      status={statuses[src.url] || "unknown"}
                      isActive={active?.url === src.url}
                      onSelect={selectServer}
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
