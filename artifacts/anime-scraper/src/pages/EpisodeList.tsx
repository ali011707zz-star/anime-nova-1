import { useParams, useLocation } from "wouter";
import { useState, useEffect, useCallback } from "react";
import { ChevronRight, Loader2, Search, Eye, EyeOff, Play } from "lucide-react";
import { motion } from "framer-motion";

const ANIME_QUERY = `
query ($id: Int) {
  Media(id: $id, type: ANIME) {
    id idMal title { romaji english } coverImage { large extraLarge }
    episodes duration status nextAiringEpisode { episode }
    averageScore
  }
}`;

/* ─── Watched tracking ─── */
function getWatched(animeId: string): Set<number> {
  try { return new Set(JSON.parse(localStorage.getItem(`watched-${animeId}`) || "[]")); }
  catch { return new Set(); }
}
function setWatched(animeId: string, watched: Set<number>) {
  localStorage.setItem(`watched-${animeId}`, JSON.stringify([...watched]));
}

/* ─── Episode row ─── */
function EpisodeRow({
  n, anime, epData, animeId, watched, onToggleWatched, onWatch
}: {
  n: number; anime: any; epData: any; animeId: string;
  watched: boolean; onToggleWatched: (n: number) => void; onWatch: (n: number) => void;
}) {
  const ep = epData?.find((e: any) => e.mal_id === n || e.episode_id === n);
  const thumb = ep?.images?.jpg?.image_url || anime?.coverImage?.large;
  const epTitle = ep?.title || ep?.title_romanji || null;
  const durationMin = anime?.duration || 24;
  const dur = durationMin >= 60
    ? `${Math.floor(durationMin / 60)}:${String(durationMin % 60).padStart(2, "0")}:00`
    : `${String(durationMin).padStart(2, "0")}:00`;

  return (
    <motion.div
      initial={{ opacity: 0, y: 6 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ duration: 0.18, delay: Math.min(n * 0.03, 0.4) }}
      className={`flex items-center gap-3 px-4 py-3 border-b transition-colors active:bg-white/5
        ${watched ? "border-white/4 bg-white/[0.02]" : "border-white/[0.06]"}`}
    >
      {/* Thumbnail */}
      <button onClick={() => onWatch(n)} className="relative shrink-0 w-[110px] h-[62px] rounded-xl overflow-hidden bg-[#1C1C22] border border-white/8">
        <img src={thumb} alt="" className="w-full h-full object-cover" loading="lazy"
          onError={e => { (e.target as HTMLImageElement).src = anime?.coverImage?.large || ""; }} />
        {/* Duration badge */}
        <div className="absolute bottom-1 left-1 bg-black/75 text-white text-[9px] font-black px-1.5 py-0.5 rounded-md">
          {dur}
        </div>
        {/* Play overlay */}
        <div className="absolute inset-0 bg-black/0 hover:bg-black/30 transition-colors flex items-center justify-center">
          <div className="w-8 h-8 bg-black/50 rounded-full flex items-center justify-center opacity-0 hover:opacity-100 transition-opacity">
            <Play className="w-3.5 h-3.5 fill-white text-white" />
          </div>
        </div>
        {/* Watched overlay */}
        {watched && <div className="absolute inset-0 bg-primary/10 border border-primary/20 rounded-xl" />}
      </button>

      {/* Info */}
      <button onClick={() => onWatch(n)} className="flex-1 min-w-0 text-right">
        <p className={`text-sm font-black font-['Cairo'] ${watched ? "text-primary/70" : "text-white/90"}`}>
          الحلقة {n}
        </p>
        {epTitle && (
          <p className="text-[10px] text-white/35 font-['Cairo'] mt-0.5 line-clamp-2 leading-relaxed">
            {epTitle}
          </p>
        )}
        {!epTitle && (
          <p className="text-[10px] text-white/20 font-['Cairo'] mt-0.5">
            {anime?.title?.romaji}
          </p>
        )}
      </button>

      {/* Eye icon — toggle watched */}
      <button onClick={e => { e.stopPropagation(); onToggleWatched(n); }}
        className={`shrink-0 w-9 h-9 rounded-xl flex items-center justify-center border transition-all active:scale-90
          ${watched
            ? "bg-primary/15 border-primary/25 text-primary"
            : "bg-white/4 border-white/8 text-white/20 hover:text-white/45"}`}>
        {watched ? <Eye className="w-4 h-4" /> : <EyeOff className="w-4 h-4" />}
      </button>
    </motion.div>
  );
}

/* ════════════════════════════════════════════════
   MAIN PAGE
════════════════════════════════════════════════ */
export default function EpisodeListPage() {
  const params = useParams<{ id: string }>();
  const [, navigate] = useLocation();
  const [anime, setAnime]     = useState<any>(null);
  const [loading, setLoading] = useState(true);
  const [epData, setEpData]   = useState<any[]>([]);
  const [search, setSearch]   = useState("");
  const [watched, setWatched] = useState<Set<number>>(new Set());

  useEffect(() => {
    if (!params.id) return;
    setLoading(true);
    setEpData([]);
    setWatched(getWatched(params.id));

    fetch("https://graphql.anilist.co", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ query: ANIME_QUERY, variables: { id: parseInt(params.id) } }),
    }).then(r => r.json()).then(d => {
      const a = d.data?.Media;
      setAnime(a);
      /* Fetch episode data from Jikan if we have a MAL ID */
      if (a?.idMal) {
        fetch(`https://api.jikan.moe/v4/anime/${a.idMal}/episodes?page=1`)
          .then(r => r.json())
          .then(d => { if (d.data) setEpData(d.data); })
          .catch(() => {});
      }
    }).finally(() => setLoading(false));
  }, [params.id]);

  const toggleWatched = useCallback((n: number) => {
    setWatched(prev => {
      const next = new Set(prev);
      if (next.has(n)) next.delete(n); else next.add(n);
      setWatched(next);
      setWatched(next);
      localStorage.setItem(`watched-${params.id}`, JSON.stringify([...next]));
      return next;
    });
  }, [params.id]);

  function watchEp(n: number) {
    /* Mark as watched */
    setWatched(prev => {
      const next = new Set(prev);
      next.add(n);
      localStorage.setItem(`watched-${params.id}`, JSON.stringify([...next]));
      return next;
    });
    navigate(`/watch?anime=${params.id}&ep=${n}`);
  }

  if (loading) return (
    <div className="bg-[#09090B] min-h-screen flex items-center justify-center">
      <Loader2 className="w-10 h-10 text-primary animate-spin" />
    </div>
  );
  if (!anime) return (
    <div className="bg-[#09090B] min-h-screen flex items-center justify-center text-white/40 text-sm font-['Cairo']">
      لم يتم العثور على الأنمي
    </div>
  );

  const total    = anime.episodes || anime.nextAiringEpisode?.episode || 12;
  const allEps   = Array.from({ length: total }, (_, i) => i + 1);
  const filtered = search
    ? allEps.filter(n => n.toString().includes(search.trim()))
    : allEps;

  const watchedCount = [...watched].filter(n => n >= 1 && n <= total).length;

  return (
    <main className="bg-[#09090B] min-h-screen text-white" dir="rtl">

      {/* ── Sticky Header ── */}
      <div className="sticky top-0 z-50 bg-[#09090B]/97 backdrop-blur-xl border-b border-white/6">
        <div className="flex items-center gap-3 px-4 pt-safe pt-4 pb-3">
          <button onClick={() => window.history.back()}
            className="w-9 h-9 bg-white/5 rounded-xl flex items-center justify-center border border-white/8 shrink-0 active:scale-90">
            <ChevronRight className="w-5 h-5" />
          </button>
          <div className="flex-1 min-w-0">
            <h1 className="text-sm font-black font-['Cairo'] line-clamp-1">{anime.title.romaji}</h1>
            <div className="flex items-center gap-2 mt-0.5">
              <span className="text-[9px] text-primary font-bold">{total} حلقة</span>
              {watchedCount > 0 && (
                <span className="text-[9px] text-emerald-400 font-bold flex items-center gap-0.5">
                  <Eye className="w-2.5 h-2.5" /> {watchedCount} مشاهدة
                </span>
              )}
            </div>
          </div>
          {/* Progress bar */}
          <div className="shrink-0 flex flex-col items-end gap-1">
            <span className="text-[9px] text-white/30 font-bold">
              {total > 0 ? Math.round((watchedCount / total) * 100) : 0}%
            </span>
            <div className="w-16 h-1.5 bg-white/8 rounded-full overflow-hidden">
              <div className="h-full bg-primary rounded-full transition-all"
                style={{ width: `${total > 0 ? (watchedCount / total) * 100 : 0}%` }} />
            </div>
          </div>
        </div>

        {/* Search */}
        <div className="px-4 pb-3">
          <div className="flex items-center gap-2 bg-[#1C1C22] rounded-xl px-3 border border-white/6">
            <Search className="w-4 h-4 text-white/25 shrink-0" />
            <input type="number" value={search} onChange={e => setSearch(e.target.value)}
              placeholder="اذهب لحلقة..."
              className="flex-1 bg-transparent py-2.5 text-sm text-white outline-none font-['Cairo'] placeholder:text-white/25" />
          </div>
        </div>
      </div>

      {/* ── Anime banner ── */}
      <div className="relative overflow-hidden" style={{ height: 80 }}>
        <img src={anime.coverImage?.extraLarge || anime.coverImage?.large} alt=""
          className="w-full h-full object-cover object-top" />
        <div className="absolute inset-0 bg-gradient-to-r from-[#09090B] via-[#09090B]/80 to-transparent" />
        <div className="absolute inset-0 flex items-center px-4">
          <div>
            <p className="text-xs font-black font-['Cairo'] text-white/90 line-clamp-1">{anime.title.romaji}</p>
            <p className="text-[9px] text-white/40 font-['Cairo']">{total} حلقة</p>
          </div>
        </div>
      </div>

      {/* ── Episode List ── */}
      {filtered.length === 0 ? (
        <div className="flex items-center justify-center py-16">
          <p className="text-white/25 text-sm font-['Cairo']">لا توجد حلقات مطابقة</p>
        </div>
      ) : (
        <div className="pb-24">
          {filtered.map(n => (
            <EpisodeRow key={n} n={n} anime={anime} epData={epData}
              animeId={params.id!}
              watched={watched.has(n)}
              onToggleWatched={toggleWatched}
              onWatch={watchEp} />
          ))}
        </div>
      )}
    </main>
  );
}
