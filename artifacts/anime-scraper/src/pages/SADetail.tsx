import { API_BASE } from "@/lib/apiBase";
import { useState, useEffect } from "react";
import { useParams, useLocation, useSearch } from "wouter";
import { ChevronRight, Play, Loader2, Star, Zap } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import SEO from "@/components/SEO";

interface Episode {
  id: string;
  epName: number | string;
  name: string;
  date?: string;
}

interface AnimeInfo {
  id: string;
  name: string;
  story?: string;
  score?: number | string;
  type?: string;
  anime_status?: string;
  anime_release?: string | number;
  genre?: Array<{ name: string }>;
  image: string;
  background?: string;
  total?: number;
  episodes: Episode[];
}

export default function SADetail() {
  const { id } = useParams<{ id: string }>();
  const search = useSearch();
  const [, navigate] = useLocation();

  const params  = new URLSearchParams(search);
  const name    = params.get("name") || decodeURIComponent(id || "");
  const imgHint = params.get("img")  || "";

  const [info, setInfo]         = useState<AnimeInfo | null>(null);
  const [loading, setLoading]   = useState(true);
  const [epProgress, setEpProgress] = useState<Record<string, number>>({});
  const [showStory, setShowStory]   = useState(false);

  useEffect(() => {
    if (!id) return;
    setLoading(true);
    fetch(`${API_BASE}/api/sanime/info?id=${encodeURIComponent(id)}`)
      .then(r => r.json())
      .then(d => { setInfo(d); setLoading(false); })
      .catch(() => setLoading(false));
  }, [id]);

  useEffect(() => {
    if (!info?.episodes?.length) return;
    const prog: Record<string, number> = {};
    info.episodes.forEach(ep => {
      const t = parseFloat(localStorage.getItem(`sa-wp-${id}-${ep.epName}`) || "0");
      if (t > 0) prog[String(ep.epName)] = t;
    });
    setEpProgress(prog);
  }, [info, id]);

  const poster = info?.image || (imgHint ? decodeURIComponent(imgHint) : "");
  const bg     = info?.background || poster;

  const watchUrl = (ep: Episode) =>
    `/sanime/watch?id=${encodeURIComponent(id || "")}&ep=${encodeURIComponent(String(ep.epName))}&name=${encodeURIComponent(info?.name || name)}&epName=${encodeURIComponent(ep.name)}&poster=${encodeURIComponent(poster)}&animeId=${encodeURIComponent(id || "")}`;

  const progressPct = (ep: Episode) => {
    const t = epProgress[String(ep.epName)];
    if (!t) return 0;
    const dur = 22 * 60;
    return Math.min(100, Math.round((t / dur) * 100));
  };

  if (loading) {
    return (
      <div className="fixed inset-0 bg-[#09090B] flex items-center justify-center" dir="rtl">
        {imgHint && (
          <div className="absolute inset-0">
            <img src={decodeURIComponent(imgHint)} alt="" className="w-full h-full object-cover blur-3xl opacity-10 scale-125" />
            <div className="absolute inset-0 bg-[#09090B]/80" />
          </div>
        )}
        <Loader2 className="w-8 h-8 animate-spin text-[#7C3AED] relative z-10" />
      </div>
    );
  }

  return (
    <main className="bg-[#09090B] min-h-screen text-white pb-28" dir="rtl">
      <SEO
        title={`${info?.name || name} — سـAnime`}
        description={info?.story?.slice(0, 150) || `مشاهدة ${info?.name || name} بجودة عالية بروابط دائمة`}
        image={poster}
        path={`/sanime/${id}`}
      />

      {/* Background blur */}
      {bg && (
        <div className="fixed inset-0 pointer-events-none z-0">
          <img src={bg} alt="" className="w-full h-full object-cover scale-125 blur-3xl opacity-10 saturate-150" />
          <div className="absolute inset-0 bg-gradient-to-b from-[#09090B]/70 via-[#09090B]/50 to-[#09090B]" />
        </div>
      )}

      {/* Sticky header */}
      <div className="sticky top-0 z-20 bg-[#09090B]/95 backdrop-blur-xl border-b border-white/5">
        <div className="px-4 pt-4 pb-3 flex items-center gap-3">
          <button onClick={() => navigate("/sanime")}
            className="w-9 h-9 shrink-0 flex items-center justify-center rounded-xl bg-white/5 border border-white/8 active:scale-90 transition-transform">
            <ChevronRight className="w-4 h-4 text-white/70" />
          </button>
          <div className="flex-1 min-w-0">
            <p className="text-[10px] text-white/30 font-['Cairo']">سـAnime</p>
            <h1 className="text-[14px] font-black text-white font-['Cairo'] truncate leading-tight">{info?.name || name}</h1>
          </div>
          {info?.episodes?.length > 0 && (
            <div className="shrink-0 px-2.5 py-1 rounded-xl text-[10px] font-black font-['Cairo']"
              style={{ background: "rgba(139,92,246,0.15)", border: "1px solid rgba(139,92,246,0.28)", color: "rgba(196,181,253,0.90)" }}>
              {info.episodes.length} حلقة
            </div>
          )}
        </div>
      </div>

      <div className="relative z-10 px-4 pt-4">
        {/* Hero */}
        <div className="flex gap-4 mb-5">
          <div className="shrink-0 w-28 aspect-[2/3] rounded-2xl overflow-hidden shadow-2xl border border-white/8">
            {poster ? (
              <img src={poster} alt={info?.name || name} className="w-full h-full object-cover" />
            ) : (
              <div className="w-full h-full flex items-center justify-center bg-gradient-to-br from-[#7C3AED]/30 to-[#4C1D95]/30">
                <span className="text-4xl">📺</span>
              </div>
            )}
          </div>
          <div className="flex-1 min-w-0 flex flex-col justify-center gap-2">
            <h2 className="text-base font-black font-['Cairo'] text-white leading-tight line-clamp-2">{info?.name || name}</h2>

            {/* Badges */}
            <div className="flex flex-wrap gap-1.5">
              {info?.anime_status && (
                <span className={`px-2 py-0.5 rounded-lg text-[10px] font-bold font-['Cairo'] ${info.anime_status === "مستمر"
                  ? "bg-green-500/15 border border-green-500/25 text-green-400"
                  : "bg-white/8 border border-white/12 text-white/60"}`}>
                  {info.anime_status}
                </span>
              )}
              {info?.type && (
                <span className="px-2 py-0.5 rounded-lg text-[10px] font-bold font-['Cairo'] bg-white/8 border border-white/12 text-white/60">
                  {info.type}
                </span>
              )}
              {info?.anime_release && (
                <span className="px-2 py-0.5 rounded-lg text-[10px] font-bold font-['Cairo'] bg-white/8 border border-white/12 text-white/60">
                  {info.anime_release}
                </span>
              )}
              {info?.score && (
                <span className="flex items-center gap-0.5 px-2 py-0.5 rounded-lg text-[10px] font-bold font-['Cairo'] bg-amber-500/15 border border-amber-500/25 text-amber-300">
                  <Star className="w-2.5 h-2.5 fill-amber-300" />
                  {info.score}
                </span>
              )}
            </div>

            {/* Permanent link badge */}
            <span className="flex items-center gap-1 w-fit px-2 py-0.5 rounded-lg text-[10px] font-bold font-['Cairo']"
              style={{ background: "rgba(16,185,129,0.12)", border: "1px solid rgba(16,185,129,0.22)", color: "#6ee7b7" }}>
              <Zap className="w-2.5 h-2.5" />
              روابط دائمة · MP4 مباشر
            </span>

            {/* Genres */}
            {info?.genre && info.genre.length > 0 && (
              <div className="flex flex-wrap gap-1">
                {info.genre.slice(0, 4).map((g: any) => (
                  <span key={g.name} className="px-2 py-0.5 rounded-lg text-[9px] font-['Cairo'] bg-[#7C3AED]/12 border border-[#7C3AED]/20 text-violet-300/70">
                    {g.name}
                  </span>
                ))}
              </div>
            )}
          </div>
        </div>

        {/* Story */}
        {info?.story && (
          <div className="mb-5 p-3.5 rounded-2xl bg-white/[0.04] border border-white/8">
            <p className={`text-xs text-white/65 font-['Cairo'] leading-relaxed ${showStory ? "" : "line-clamp-3"}`}>
              {info.story}
            </p>
            {info.story.length > 150 && (
              <button onClick={() => setShowStory(v => !v)}
                className="mt-1.5 text-[10px] text-violet-400 font-['Cairo'] font-bold">
                {showStory ? "أقل ▲" : "المزيد ▼"}
              </button>
            )}
          </div>
        )}

        {/* Episodes */}
        <div>
          <p className="text-xs font-bold font-['Cairo'] text-white/50 mb-3">
            {info?.episodes?.length ? `الحلقات (${info.episodes.length})` : "الحلقات"}
          </p>

          {!info?.episodes?.length ? (
            <div className="text-center py-10 text-white/30 text-sm font-['Cairo']">
              لا توجد حلقات متاحة حالياً
            </div>
          ) : (
            <div className="grid grid-cols-1 gap-2">
              <AnimatePresence>
                {info.episodes.map((ep, i) => {
                  const pct = progressPct(ep);
                  return (
                    <motion.div
                      key={ep.id || ep.epName}
                      initial={{ opacity: 0, y: 8 }}
                      animate={{ opacity: 1, y: 0 }}
                      transition={{ delay: Math.min(i * 0.008, 0.15) }}
                    >
                      <button
                        onClick={() => navigate(watchUrl(ep))}
                        className="w-full flex items-center gap-3 p-3 rounded-xl border text-right transition-all active:scale-[0.98]"
                        style={{
                          background: pct > 0
                            ? "linear-gradient(135deg,rgba(124,58,237,0.10),rgba(79,70,229,0.06))"
                            : "rgba(255,255,255,0.025)",
                          borderColor: pct > 0 ? "rgba(139,92,246,0.22)" : "rgba(255,255,255,0.07)",
                        }}
                      >
                        <div className="w-9 h-9 shrink-0 rounded-xl flex items-center justify-center"
                          style={{ background: pct > 0 ? "rgba(124,58,237,0.25)" : "rgba(255,255,255,0.06)" }}>
                          <Play className={`w-3.5 h-3.5 ${pct > 0 ? "text-violet-300 fill-violet-300" : "text-white/40"}`} />
                        </div>
                        <div className="flex-1 min-w-0">
                          <p className="text-sm font-bold font-['Cairo'] text-white/90 truncate">{ep.name}</p>
                          <div className="flex items-center gap-2 mt-0.5">
                            {ep.date && <span className="text-[10px] text-white/30 font-['Cairo']">{ep.date.split(" ")[0]}</span>}
                            {pct > 0 && (
                              <span className="text-[9px] text-violet-400/70 font-['Cairo'] font-bold">{pct}% شوهد</span>
                            )}
                          </div>
                          {pct > 0 && (
                            <div className="mt-1.5 h-0.5 rounded-full bg-white/8 overflow-hidden">
                              <div className="h-full rounded-full bg-violet-500/60" style={{ width: `${pct}%` }} />
                            </div>
                          )}
                        </div>
                        <span className="shrink-0 text-[11px] font-bold font-['Cairo'] text-white/25 tabular-nums">
                          {ep.epName}
                        </span>
                      </button>
                    </motion.div>
                  );
                })}
              </AnimatePresence>
            </div>
          )}
        </div>
      </div>
    </main>
  );
}
