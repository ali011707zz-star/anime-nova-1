import { useState, useEffect, useRef } from "react";
import { useParams, useLocation, useSearch } from "wouter";
import { ChevronRight, Play, Clock, Loader2, ChevronDown } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

interface Season { label: string; arabicToonsId: string; }
interface Episode { number: number; epId: string; url: string; thumbnail?: string; }

const AT_IMG = "/api/dubbed/img?f=";

function thumbSrc(t?: string) {
  if (!t) return null;
  if (t.startsWith("/api/dubbed/img")) return t;
  const f = t.split("?f=")[1] || t.split("/").pop();
  return f ? `${AT_IMG}${f}` : null;
}

function imgSrc(img?: string) {
  if (!img) return null;
  if (img.startsWith("http")) return img;
  if (img.startsWith("/api/dubbed/img")) return img;
  const f = img.split("?f=")[1] || img.split("/").pop();
  return f ? `${AT_IMG}${f}` : null;
}

export default function DubbedDetail() {
  const { key } = useParams<{ key: string }>();
  const search = useSearch();
  const [, navigate] = useLocation();

  const params = new URLSearchParams(search);
  const title = params.get("title") || decodeURIComponent(key || "");
  const rawImg = params.get("img") || "";
  const rawSeasons: Season[] = (() => {
    try { return JSON.parse(decodeURIComponent(params.get("seasons") || "[]")); } catch { return []; }
  })();

  const [selSeason, setSelSeason] = useState(0);
  const [episodes, setEpisodes] = useState<Episode[]>([]);
  const [epLoading, setEpLoading] = useState(false);
  const [showSeasonDrop, setShowSeasonDrop] = useState(false);
  const [epProgress, setEpProgress] = useState<Record<number, number>>({});
  const tabsRef = useRef<HTMLDivElement>(null);

  const seasons = rawSeasons;
  const curSeason = seasons[selSeason];

  useEffect(() => {
    if (!curSeason) return;
    setEpLoading(true);
    setEpisodes([]);
    fetch(`/api/dubbed/episodes?series=${encodeURIComponent(curSeason.arabicToonsId)}`)
      .then(r => r.json())
      .then(d => { setEpisodes(d.episodes || []); setEpLoading(false); })
      .catch(() => setEpLoading(false));
  }, [curSeason?.arabicToonsId]);

  useEffect(() => {
    if (!episodes.length || !curSeason) return;
    const prog: Record<number, number> = {};
    episodes.forEach(ep => {
      const k = `dubbed-wp-${curSeason.arabicToonsId}-${ep.number}`;
      const t = parseFloat(localStorage.getItem(k) || "0");
      if (t > 0) prog[ep.number] = t;
    });
    setEpProgress(prog);
  }, [episodes, curSeason]);

  const poster = rawImg ? decodeURIComponent(rawImg) : null;
  const posterSrc = poster ? (poster.startsWith("http") ? poster : imgSrc(poster)) : null;

  const watchUrl = (ep: Episode) => {
    const at = seasons.map(s => s.arabicToonsId).join(",");
    const ps = encodeURIComponent(posterSrc || "");
    const tit = encodeURIComponent(title);
    const sl = encodeURIComponent(curSeason?.label || "الموسم 1");
    return `/dubbed/watch?epUrl=${encodeURIComponent(ep.url)}&title=${tit}&ep=${ep.number}&season=${sl}&poster=${ps}&at=${encodeURIComponent(at)}`;
  };

  const progressPct = (ep: Episode) => {
    const t = epProgress[ep.number];
    if (!t) return 0;
    const dur = 22 * 60;
    return Math.min(100, Math.round((t / dur) * 100));
  };

  return (
    <main className="bg-[#09090B] min-h-screen text-white pb-28" dir="rtl">
      {/* Hero */}
      <div className="relative">
        {posterSrc && (
          <div className="absolute inset-0 h-64">
            <img src={posterSrc} alt={title} className="w-full h-full object-cover opacity-30 blur-sm" />
            <div className="absolute inset-0 bg-gradient-to-b from-black/40 via-[#09090B]/70 to-[#09090B]" />
          </div>
        )}
        {/* Header */}
        <div className="relative sticky top-0 z-20 bg-[#09090B]/90 backdrop-blur-xl border-b border-white/5 px-4 pt-4 pb-3 flex items-center gap-3">
          <button onClick={() => navigate("/dubbed")} className="w-9 h-9 shrink-0 flex items-center justify-center rounded-xl bg-white/5 border border-white/8 active:scale-90 transition-transform">
            <ChevronRight className="w-4 h-4 text-white/70" />
          </button>
          <div className="flex-1 min-w-0">
            <h1 className="text-base font-black font-['Cairo'] text-white truncate">{title}</h1>
          </div>
        </div>

        {/* Poster + info */}
        <div className="relative px-4 pt-4 pb-4 flex gap-4">
          <div className="w-24 shrink-0">
            <div className="aspect-[2/3] rounded-xl overflow-hidden bg-white/5 border border-white/8">
              {posterSrc ? (
                <img src={posterSrc} alt={title} className="w-full h-full object-cover" />
              ) : (
                <div className="w-full h-full flex items-center justify-center bg-gradient-to-br from-[#7C3AED]/30 to-[#4C1D95]/30">
                  <span className="text-3xl">📺</span>
                </div>
              )}
            </div>
          </div>
          <div className="flex-1 pt-2">
            <h2 className="text-lg font-black font-['Cairo'] text-white leading-tight">{title}</h2>
            <div className="flex items-center gap-2 mt-1">
              <span className="px-2 py-0.5 rounded-lg bg-[#7C3AED]/20 border border-[#7C3AED]/30 text-[#A78BFA] text-xs font-bold font-['Cairo']">
                مدبلج عربي
              </span>
              {episodes.length > 0 && (
                <span className="text-white/50 text-xs font-['Cairo']">{episodes.length} حلقة</span>
              )}
            </div>
            {seasons.length > 0 && (
              <div className="mt-3 relative" ref={tabsRef}>
                {seasons.length === 1 ? (
                  <span className="text-white/60 text-xs font-['Cairo']">{seasons[0].label}</span>
                ) : (
                  <>
                    <button
                      onClick={() => setShowSeasonDrop(o => !o)}
                      className="flex items-center gap-1.5 px-3 py-1.5 bg-white/5 border border-white/10 rounded-lg text-sm font-['Cairo'] text-white/80"
                    >
                      {curSeason?.label || "اختر الموسم"}
                      <ChevronDown className={`w-3.5 h-3.5 transition-transform ${showSeasonDrop ? "rotate-180" : ""}`} />
                    </button>
                    <AnimatePresence>
                      {showSeasonDrop && (
                        <motion.div
                          initial={{ opacity: 0, y: -8 }}
                          animate={{ opacity: 1, y: 0 }}
                          exit={{ opacity: 0, y: -8 }}
                          className="absolute top-10 right-0 z-30 bg-[#18181B] border border-white/10 rounded-xl shadow-2xl min-w-40 overflow-hidden"
                        >
                          {seasons.map((s, i) => (
                            <button
                              key={s.arabicToonsId}
                              onClick={() => { setSelSeason(i); setShowSeasonDrop(false); }}
                              className={`w-full text-right px-4 py-2.5 text-sm font-['Cairo'] transition-colors ${
                                i === selSeason ? "bg-[#7C3AED]/20 text-[#A78BFA]" : "text-white/70 hover:bg-white/5"
                              }`}
                            >
                              {s.label}
                            </button>
                          ))}
                        </motion.div>
                      )}
                    </AnimatePresence>
                  </>
                )}
              </div>
            )}
          </div>
        </div>
      </div>

      {/* Episodes */}
      <div className="px-4">
        <div className="flex items-center gap-2 mb-4">
          <div className="w-1 h-5 rounded-full bg-[#7C3AED]" />
          <h3 className="text-base font-black font-['Cairo'] text-white">الحلقات</h3>
        </div>

        {epLoading ? (
          <div className="flex items-center justify-center py-12">
            <Loader2 className="w-7 h-7 animate-spin text-[#7C3AED]" />
          </div>
        ) : episodes.length === 0 ? (
          <div className="text-center py-12 text-white/40 font-['Cairo']">لا توجد حلقات</div>
        ) : (
          <div className="space-y-2">
            {episodes.map(ep => {
              const thumb = thumbSrc(ep.thumbnail);
              const pct = progressPct(ep);
              return (
                <motion.div
                  key={ep.epId}
                  whileTap={{ scale: 0.98 }}
                  onClick={() => navigate(watchUrl(ep))}
                  className="flex items-center gap-3 bg-white/4 border border-white/6 rounded-xl p-3 cursor-pointer hover:bg-white/7 transition-colors active:scale-98"
                >
                  <div className="relative w-24 aspect-video rounded-lg overflow-hidden shrink-0 bg-white/5">
                    {thumb ? (
                      <img src={thumb} alt={`حلقة ${ep.number}`} className="w-full h-full object-cover" loading="lazy" />
                    ) : (
                      <div className="w-full h-full flex items-center justify-center">
                        <Play className="w-5 h-5 text-white/30" />
                      </div>
                    )}
                    {pct > 0 && (
                      <div className="absolute bottom-0 inset-x-0 h-1 bg-white/20 rounded-b-lg">
                        <div className="h-full bg-[#7C3AED] rounded-b-lg" style={{ width: `${pct}%` }} />
                      </div>
                    )}
                    <div className="absolute inset-0 flex items-center justify-center">
                      <div className="w-7 h-7 rounded-full bg-black/50 flex items-center justify-center">
                        <Play className="w-3.5 h-3.5 text-white fill-white" />
                      </div>
                    </div>
                  </div>
                  <div className="flex-1 min-w-0">
                    <p className="text-white text-sm font-bold font-['Cairo']">الحلقة {ep.number}</p>
                    {pct > 0 && (
                      <div className="flex items-center gap-1 mt-0.5">
                        <Clock className="w-3 h-3 text-[#A78BFA]" />
                        <span className="text-[#A78BFA] text-xs font-['Cairo']">{pct}% مشاهد</span>
                      </div>
                    )}
                  </div>
                </motion.div>
              );
            })}
          </div>
        )}
      </div>
    </main>
  );
}
