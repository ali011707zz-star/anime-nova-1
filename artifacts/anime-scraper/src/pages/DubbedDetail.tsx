import { API_BASE } from "@/lib/apiBase";
import { useState, useEffect, useRef, useCallback } from "react";
import { useParams, useLocation, useSearch } from "wouter";
import { ChevronRight, Play, Clock, Loader2, MessageCircle } from "lucide-react";
import { motion } from "framer-motion";
import { AnimeMascot } from "@/components/AnimeMascot";
import SEO from "@/components/SEO";

interface Season { label: string; arabicToonsId: string; }
interface Episode { number: number; epId: string; url: string; thumbnail?: string; }

const AT_IMG = "/api/dubbed/img?f=";

function imgSrc(img?: string): string | null {
  if (!img) return null;
  if (img.startsWith("http")) return img;
  if (img.startsWith("/api/dubbed/img")) return img;
  const f = img.split("?f=")[1] || img.split("/").pop();
  return f ? `${AT_IMG}${encodeURIComponent(f)}` : null;
}

function thumbSrc(t?: string): string | null {
  if (!t) return null;
  if (t.startsWith("http")) return t;
  if (t.startsWith("/api/dubbed/img")) return t;
  const f = t.split("?f=")[1] || t.split("/").pop();
  return f ? `${AT_IMG}${encodeURIComponent(f)}` : null;
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
  const [epProgress, setEpProgress] = useState<Record<number, number>>({});
  const tabsRef = useRef<HTMLDivElement>(null);

  const seasons = rawSeasons;
  const curSeason = seasons[selSeason];
  const poster = rawImg ? decodeURIComponent(rawImg) : null;
  const posterSrc = poster ? imgSrc(poster) : null;

  useEffect(() => {
    if (!curSeason) return;
    setEpLoading(true);
    setEpisodes([]);
    fetch(`${API_BASE}/api/dubbed/episodes?series=${encodeURIComponent(curSeason.arabicToonsId)}`)
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

  /* Scroll active season tab into view */
  useEffect(() => {
    if (!tabsRef.current) return;
    const active = tabsRef.current.querySelector("[data-active='true']") as HTMLElement | null;
    if (active) active.scrollIntoView({ inline: "center", block: "nearest", behavior: "smooth" });
  }, [selSeason]);

  const watchUrl = (ep: Episode) => {
    const at = seasons.map(s => s.arabicToonsId).join(",");
    const ps = encodeURIComponent(posterSrc || "");
    const tit = encodeURIComponent(title);
    const sl = encodeURIComponent(curSeason?.label || "الموسم 1");
    const seasonsEnc = encodeURIComponent(JSON.stringify(seasons));
    return `/dubbed/watch?epUrl=${encodeURIComponent(ep.url)}&title=${tit}&ep=${ep.number}&season=${sl}&poster=${ps}&at=${encodeURIComponent(at)}&seasons=${seasonsEnc}&img=${encodeURIComponent(rawImg)}&key=${encodeURIComponent(key || "")}`;
  };

  const progressPct = (ep: Episode) => {
    const t = epProgress[ep.number];
    if (!t) return 0;
    const dur = 22 * 60;
    return Math.min(100, Math.round((t / dur) * 100));
  };

  return (
    <main className="bg-[#09090B] min-h-screen text-white pb-28" dir="rtl">
      <SEO
        title={`${title} مدبلج`}
        description={`مشاهدة أنمي ${title} مدبلج بالعربية مجاناً بجودة عالية على أنمي نوفا.`}
        image={posterSrc || undefined}
        path={`/dubbed/${key}`}
      />

      {/* ── Sticky Header ── */}
      <div className="sticky top-0 z-20 bg-[#09090B]/97 backdrop-blur-xl border-b border-white/5">
        <div className="px-4 pt-4 pb-3 flex items-center gap-3">
          <button
            onClick={() => navigate("/dubbed")}
            className="w-9 h-9 shrink-0 flex items-center justify-center rounded-xl bg-white/5 border border-white/8 active:scale-90 transition-transform"
          >
            <ChevronRight className="w-4 h-4 text-white/70" />
          </button>
          <div className="flex-1 min-w-0">
            <p className="text-[10px] text-white/30 font-['Cairo']">كرتون مدبلج</p>
            <h1 className="text-[14px] font-black text-white font-['Cairo'] truncate leading-tight">{title}</h1>
          </div>
          {episodes.length > 0 && (
            <div className="shrink-0 px-2.5 py-1 rounded-xl text-[10px] font-black font-['Cairo']"
              style={{ background: "rgba(139,92,246,0.15)", border: "1px solid rgba(139,92,246,0.28)", color: "rgba(196,181,253,0.90)" }}>
              {episodes.length} حلقة
            </div>
          )}
        </div>

        {/* Season tabs — visual poster cards like AnimationEpisodes */}
        {seasons.length > 1 && (
          <div ref={tabsRef} className="flex gap-2.5 px-4 pb-3.5 overflow-x-auto" style={{ scrollbarWidth: "none" }}>
            {seasons.map((s, i) => {
              const isAct = i === selSeason;
              const seasonImgSrc = `/api/dubbed/img?f=cat_${s.arabicToonsId}.jpg`;
              return (
                <button
                  key={s.arabicToonsId}
                  data-active={isAct}
                  onClick={() => setSelSeason(i)}
                  className="shrink-0 relative overflow-hidden transition-all active:scale-95"
                  style={{
                    borderRadius: 14,
                    width: 80,
                    height: 108,
                    border: isAct ? "1.5px solid rgba(167,139,250,0.55)" : "1px solid rgba(255,255,255,0.08)",
                    boxShadow: isAct ? "0 0 22px rgba(139,92,246,0.22), 0 4px 16px rgba(0,0,0,0.45)" : "0 2px 8px rgba(0,0,0,0.30)",
                    transform: isAct ? "scale(1.04)" : "scale(1)",
                  }}
                >
                  <img
                    src={seasonImgSrc}
                    alt={s.label}
                    className="absolute inset-0 w-full h-full object-cover"
                    onError={(e) => { (e.target as HTMLImageElement).style.display = "none"; }}
                  />
                  <div className="absolute inset-0"
                    style={{ background: isAct
                      ? "linear-gradient(145deg, rgba(109,40,217,0.60), rgba(139,92,246,0.30))"
                      : "linear-gradient(145deg, rgba(30,20,55,0.80), rgba(15,10,30,0.90))" }} />
                  <div className="absolute inset-0"
                    style={{ background: "linear-gradient(to top, rgba(0,0,0,0.88) 0%, rgba(0,0,0,0.30) 55%, rgba(0,0,0,0.10) 100%)" }} />
                  {isAct && <div className="absolute inset-0" style={{ background: "rgba(139,92,246,0.15)" }} />}
                  <div className="absolute bottom-0 left-0 right-0 px-1.5 pb-1.5 text-center">
                    <p className="text-[8px] font-black font-['Cairo'] leading-tight"
                      style={{ color: isAct ? "#c4b5fd" : "rgba(255,255,255,0.70)" }}>
                      {s.label}
                    </p>
                  </div>
                  {isAct && (
                    <div className="absolute top-1.5 right-1.5 w-1.5 h-1.5 rounded-full bg-violet-400"
                      style={{ boxShadow: "0 0 6px rgba(167,139,250,0.80)" }} />
                  )}
                </button>
              );
            })}
          </div>
        )}
      </div>

      {/* ── Hero ── */}
      {posterSrc && (
        <div className="relative h-36 overflow-hidden">
          <img src={posterSrc} alt={title} className="absolute inset-0 w-full h-full object-cover opacity-20 blur-sm scale-105" />
          <div className="absolute inset-0 bg-gradient-to-b from-transparent via-[#09090B]/60 to-[#09090B]" />
          <div className="absolute bottom-0 left-0 right-0 px-4 pb-3 flex gap-3 items-end">
            <div className="w-14 aspect-[2/3] rounded-xl overflow-hidden shrink-0 border border-white/15 shadow-xl">
              <img src={posterSrc} alt={title} className="w-full h-full object-cover" />
            </div>
            <div className="pb-0.5">
              <h2 className="text-[15px] font-black font-['Cairo'] text-white leading-tight">{title}</h2>
              <div className="flex items-center gap-2 mt-1">
                <span className="px-2 py-0.5 rounded-lg text-[10px] font-black font-['Cairo']"
                  style={{ background: "rgba(124,58,237,0.25)", border: "1px solid rgba(124,58,237,0.35)", color: "#A78BFA" }}>
                  مدبلج عربي
                </span>
                {seasons.length === 1 && (
                  <span className="text-white/40 text-[10px] font-['Cairo']">{seasons[0].label}</span>
                )}
              </div>
            </div>
          </div>
        </div>
      )}

      {/* ── Episodes ── */}
      <div className="px-4 mt-4 space-y-2">
        {!posterSrc && (
          <div className="flex items-center gap-2 mb-4">
            <div className="w-1 h-5 rounded-full bg-[#7C3AED]" />
            <h3 className="text-[13px] font-black font-['Cairo'] text-white">الحلقات</h3>
          </div>
        )}

        {epLoading ? (
          <div className="flex flex-col items-center justify-center py-16 gap-3">
            <AnimeMascot mood="loading" />
            <p className="text-white/30 text-[11px] font-['Cairo']">جاري تحميل الحلقات…</p>
          </div>
        ) : episodes.length === 0 ? (
          <div className="flex flex-col items-center justify-center py-20 gap-4">
            <div className="w-14 h-14 rounded-2xl bg-white/4 border border-white/6 flex items-center justify-center">
              <Play className="w-6 h-6 text-white/15" />
            </div>
            <p className="text-white/25 text-sm font-['Cairo']">لا توجد حلقات لهذا الموسم</p>
          </div>
        ) : (
          episodes.map((ep, i) => {
            const thumb = thumbSrc(ep.thumbnail);
            const pct = progressPct(ep);
            const watched = pct >= 90;
            const progSec = epProgress[ep.number] || 0;
            return (
              <motion.div
                key={ep.epId}
                initial={{ opacity: 0, y: 8 }}
                animate={{ opacity: 1, y: 0 }}
                transition={{ delay: Math.min(i * 0.025, 0.3), duration: 0.2 }}
                whileTap={{ scale: 0.97 }}
                onClick={() => navigate(watchUrl(ep))}
                className={`flex items-center gap-3 p-3 rounded-2xl border cursor-pointer active:bg-white/8 transition-colors ${
                  watched ? "bg-white/3 border-white/4 opacity-55" : "bg-[#111116] border-white/6"
                }`}
              >
                {/* Thumbnail */}
                <div className="w-[88px] h-[52px] rounded-xl overflow-hidden bg-white/6 flex-shrink-0 relative">
                  {thumb
                    ? <img src={thumb} alt={`حلقة ${ep.number}`} className="w-full h-full object-cover" loading="lazy" />
                    : <div className="w-full h-full flex items-center justify-center">
                        <Play className="w-4 h-4 text-white/15" />
                      </div>
                  }
                  <div className="absolute inset-0 bg-gradient-to-t from-black/55 to-transparent" />
                  {/* Episode number badge */}
                  <div className="absolute bottom-1 right-1.5 text-[8px] font-black text-white/80 bg-black/60 px-1.5 py-[2px] rounded-md font-mono backdrop-blur-sm">
                    {ep.number}
                  </div>
                  {/* Progress bar */}
                  {pct > 0 && !watched && (
                    <div className="absolute bottom-0 left-0 right-0 h-[3px] bg-white/15">
                      <div className="h-full bg-[#7C3AED] transition-all" style={{ width: `${pct}%` }} />
                    </div>
                  )}
                  {/* Watched checkmark */}
                  {watched && (
                    <div className="absolute inset-0 flex items-center justify-center bg-black/45">
                      <div className="w-5 h-5 rounded-full bg-emerald-500/85 flex items-center justify-center">
                        <svg viewBox="0 0 12 12" className="w-3 h-3 text-white">
                          <path d="M2 6l3 3 5-5" stroke="currentColor" strokeWidth="1.8" strokeLinecap="round" strokeLinejoin="round" fill="none" />
                        </svg>
                      </div>
                    </div>
                  )}
                  {/* Play overlay */}
                  {!watched && (
                    <div className="absolute inset-0 flex items-center justify-center opacity-0 active:opacity-100 transition-opacity bg-black/30">
                      <div className="w-7 h-7 rounded-full bg-[#7C3AED]/80 flex items-center justify-center">
                        <Play className="w-3.5 h-3.5 text-white fill-white" />
                      </div>
                    </div>
                  )}
                </div>

                {/* Info */}
                <div className="flex-1 min-w-0 text-right">
                  <p className="text-[12px] font-black text-white font-['Cairo'] leading-tight">الحلقة {ep.number}</p>
                  {progSec > 30 && !watched && (
                    <span className="text-[8.5px] text-[#A78BFA]/70 font-['Cairo'] font-bold mt-0.5 block">
                      {Math.floor(progSec / 60)}:{String(Math.floor(progSec % 60)).padStart(2, "0")} ▶
                    </span>
                  )}
                </div>

                {/* Buttons */}
                <div className="flex flex-col gap-1.5 shrink-0">
                  <div className="w-8 h-8 rounded-xl flex items-center justify-center"
                    style={{ background: "rgba(139,92,246,0.12)", border: "1px solid rgba(139,92,246,0.22)" }}>
                    <Play className="w-3.5 h-3.5 text-[#A78BFA] fill-[#A78BFA]" />
                  </div>
                  <button
                    onClick={e => { e.stopPropagation(); navigate(watchUrl(ep) + "#comments"); }}
                    className="w-8 h-8 rounded-xl flex items-center justify-center active:scale-90 transition-transform"
                    style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.10)" }}
                  >
                    <MessageCircle className="w-3.5 h-3.5 text-white/40" />
                  </button>
                </div>
              </motion.div>
            );
          })
        )}
      </div>
    </main>
  );
}
