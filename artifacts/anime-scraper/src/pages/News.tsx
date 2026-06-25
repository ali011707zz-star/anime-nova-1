import { useState, useEffect } from "react";
import { Link } from "wouter";
import { ChevronRight, Clock, Eye, Share2, Loader2, TrendingUp, Newspaper, ExternalLink } from "lucide-react";
import { motion } from "framer-motion";

const UPCOMING_Q = `query {
  Page(perPage: 10) {
    media(type: ANIME, sort: START_DATE_DESC, status: NOT_YET_RELEASED, countryOfOrigin: "JP") {
      id title { romaji english } coverImage { large } startDate { year month }
      genres episodes format averageScore
    }
  }
}`;

const TRENDING_Q = `query {
  Page(perPage: 8) {
    media(type: ANIME, sort: TRENDING_DESC, countryOfOrigin: "JP", status: RELEASING) {
      id title { romaji } coverImage { large } description(asHtml: false)
      averageScore popularity episodes nextAiringEpisode { episode airingAt }
      genres bannerImage
    }
  }
}`;

const RECENTLY_AIRED_Q = `query {
  Page(perPage: 15) {
    airingSchedules(notYetAired: false, sort: TIME_DESC) {
      episode airingAt
      media {
        id title { romaji } coverImage { large } averageScore format
        nextAiringEpisode { episode }
      }
    }
  }
}`;

function timeAgo(ts: number): string {
  const diff = Date.now() / 1000 - ts;
  if (diff < 3600) return `منذ ${Math.floor(diff / 60)} دقيقة`;
  if (diff < 86400) return `منذ ${Math.floor(diff / 3600)} ساعة`;
  if (diff < 604800) return `منذ ${Math.floor(diff / 86400)} يوم`;
  return `منذ ${Math.floor(diff / 604800)} أسبوع`;
}

function monthAr(m: number): string {
  const ms = ["يناير","فبراير","مارس","أبريل","مايو","يونيو","يوليو","أغسطس","سبتمبر","أكتوبر","نوفمبر","ديسمبر"];
  return ms[m - 1] || "";
}

export default function News() {
  const [tab, setTab] = useState<"airing" | "upcoming" | "trending">("airing");
  const [airing, setAiring] = useState<any[]>([]);
  const [upcoming, setUpcoming] = useState<any[]>([]);
  const [trending, setTrending] = useState<any[]>([]);
  const [loading, setLoading] = useState(true);

  const fetch$ = async (query: string) => {
    const r = await fetch("/api/anilist", {
      method: "POST", headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ query }),
    });
    return (await r.json()).data?.Page;
  };

  useEffect(() => {
    setLoading(true);
    Promise.all([
      fetch$(RECENTLY_AIRED_Q),
      fetch$(UPCOMING_Q),
      fetch$(TRENDING_Q),
    ]).then(([a, u, t]) => {
      const schedules = (a?.airingSchedules || []).filter((s: any) => s.media);
      const seen = new Set<number>();
      const unique = schedules.filter((s: any) => {
        if (seen.has(s.media.id)) return false;
        seen.add(s.media.id); return true;
      });
      setAiring(unique);
      setUpcoming(u?.media || []);
      setTrending(t?.media || []);
    }).finally(() => setLoading(false));
  }, []);

  return (
    <main className="bg-[#09090B] min-h-screen text-white pb-28" dir="rtl">

      {/* Header */}
      <div className="sticky top-0 z-20 bg-[#09090B]/95 backdrop-blur-xl border-b border-white/5 px-4 pt-4 pb-3">
        <div className="flex items-center gap-3 mb-3">
          <div className="w-10 h-10 rounded-xl bg-primary/10 border border-primary/15 flex items-center justify-center shrink-0">
            <Newspaper className="w-5 h-5 text-primary" />
          </div>
          <div>
            <h1 className="text-xl font-black font-['Cairo']">أخبار الأنمي</h1>
            <p className="text-[10px] text-white/35 font-['Cairo']">آخر الإضافات والإصدارات</p>
          </div>
        </div>
        <div className="flex gap-2">
          {[
            { id: "airing",   label: "تُبث الآن" },
            { id: "upcoming", label: "قريباً" },
            { id: "trending", label: "الأكثر تداولاً" },
          ].map(t => (
            <button key={t.id} onClick={() => setTab(t.id as any)}
              className={`flex-1 py-2.5 rounded-xl text-[11px] font-black font-['Cairo'] transition-all
                ${tab === t.id ? "bg-primary text-white shadow-lg shadow-primary/20" : "bg-[#18181B] text-white/40 border border-white/6"}`}>
              {t.label}
            </button>
          ))}
        </div>
      </div>

      {loading ? (
        <div className="flex flex-col items-center justify-center py-24 gap-3">
          <div className="w-10 h-10 border-2 border-primary border-t-transparent rounded-full animate-spin" />
          <p className="text-white/30 text-xs font-['Cairo']">جاري التحميل...</p>
        </div>
      ) : (
        <div className="px-4 pt-4 space-y-3">

          {/* AIRING NOW */}
          {tab === "airing" && airing.map((sched: any, i: number) => (
            <motion.div key={sched.media.id}
              initial={{ opacity: 0, y: 12 }} animate={{ opacity: 1, y: 0 }}
              transition={{ delay: i * 0.05 }}>
              <Link href={`/anime/${sched.media.id}`}>
                <div className="flex items-center gap-3 p-3 bg-[#111116] border border-white/6 rounded-2xl active:bg-white/5 cursor-pointer">
                  <img src={sched.media.coverImage?.large} alt="" className="w-14 h-20 rounded-xl object-cover shrink-0 border border-white/10" />
                  <div className="flex-1 min-w-0">
                    <div className="flex items-center gap-1.5 mb-1">
                      <span className="text-[8px] bg-emerald-500/20 text-emerald-400 border border-emerald-500/20 px-1.5 py-0.5 rounded-full font-black">يُبث الآن</span>
                      {sched.media.format && (
                        <span className="text-[8px] bg-primary/15 text-primary border border-primary/20 px-1.5 py-0.5 rounded-full font-black">
                          {sched.media.format === "TV" ? "مسلسل" : sched.media.format}
                        </span>
                      )}
                    </div>
                    <p className="text-sm font-black text-white/90 line-clamp-2 font-['Cairo'] leading-tight">{sched.media.title.romaji}</p>
                    <div className="flex items-center gap-3 mt-1.5">
                      <div className="flex items-center gap-1 text-primary">
                        <Clock className="w-3 h-3" />
                        <span className="text-[9px] font-bold font-['Cairo']">{timeAgo(sched.airingAt)}</span>
                      </div>
                      <span className="text-[9px] text-white/35 font-['Cairo'] font-bold">الحلقة {sched.episode}</span>
                      {sched.media.averageScore && (
                        <span className="text-[9px] text-yellow-400 font-bold">⭐ {(sched.media.averageScore / 10).toFixed(1)}</span>
                      )}
                    </div>
                  </div>
                  <ChevronRight className="w-4 h-4 text-white/20 shrink-0 rotate-180" />
                </div>
              </Link>
            </motion.div>
          ))}

          {/* UPCOMING */}
          {tab === "upcoming" && upcoming.map((a: any, i: number) => (
            <motion.div key={a.id} initial={{ opacity: 0, y: 12 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: i * 0.05 }}>
              <Link href={`/anime/${a.id}`}>
                <div className="flex items-center gap-3 p-3 bg-[#111116] border border-white/6 rounded-2xl active:bg-white/5 cursor-pointer">
                  <img src={a.coverImage?.large} alt="" className="w-14 h-20 rounded-xl object-cover shrink-0 border border-white/10" />
                  <div className="flex-1 min-w-0">
                    <div className="flex items-center gap-1.5 mb-1">
                      <span className="text-[8px] bg-amber-500/20 text-amber-400 border border-amber-500/20 px-1.5 py-0.5 rounded-full font-black">قريباً</span>
                    </div>
                    <p className="text-sm font-black text-white/90 line-clamp-2 font-['Cairo'] leading-tight">{a.title.romaji}</p>
                    {a.title.english && <p className="text-[9px] text-white/30 font-['Cairo'] mt-0.5 truncate">{a.title.english}</p>}
                    <div className="flex items-center gap-3 mt-1.5">
                      {a.startDate?.year && (
                        <div className="flex items-center gap-1 text-amber-400">
                          <Clock className="w-3 h-3" />
                          <span className="text-[9px] font-bold font-['Cairo']">
                            {monthAr(a.startDate.month)} {a.startDate.year}
                          </span>
                        </div>
                      )}
                      {a.genres?.[0] && (
                        <span className="text-[9px] text-white/35 font-['Cairo']">{a.genres[0]}</span>
                      )}
                    </div>
                  </div>
                </div>
              </Link>
            </motion.div>
          ))}

          {/* TRENDING */}
          {tab === "trending" && trending.map((a: any, i: number) => (
            <motion.div key={a.id} initial={{ opacity: 0, y: 12 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: i * 0.05 }}>
              <Link href={`/anime/${a.id}`}>
                <div className="bg-[#111116] border border-white/6 rounded-2xl overflow-hidden active:bg-white/5 cursor-pointer">
                  {a.bannerImage && (
                    <div className="relative h-[100px] overflow-hidden">
                      <img src={a.bannerImage} alt="" className="w-full h-full object-cover" />
                      <div className="absolute inset-0 bg-gradient-to-t from-[#111116] to-transparent" />
                      <div className="absolute top-2 right-2 flex items-center gap-1 bg-red-500/80 text-white text-[8px] px-2 py-0.5 rounded-full font-black">
                        <TrendingUp className="w-2.5 h-2.5" /> #{i + 1} تريندنج
                      </div>
                    </div>
                  )}
                  <div className="flex gap-3 p-3">
                    {!a.bannerImage && (
                      <img src={a.coverImage?.large} alt="" className="w-12 h-16 rounded-xl object-cover shrink-0 border border-white/10" />
                    )}
                    <div className="flex-1 min-w-0">
                      {!a.bannerImage && (
                        <div className="flex items-center gap-1 mb-1">
                          <span className="text-[8px] bg-red-500/20 text-red-400 border border-red-500/20 px-1.5 py-0.5 rounded-full font-black">#{i + 1} تريندنج</span>
                        </div>
                      )}
                      <p className="text-sm font-black text-white/90 line-clamp-1 font-['Cairo']">{a.title.romaji}</p>
                      {a.description && (
                        <p className="text-[10px] text-white/35 font-['Cairo'] mt-0.5 line-clamp-2 leading-relaxed">
                          {a.description.replace(/<[^>]*>/g, "").slice(0, 100)}...
                        </p>
                      )}
                      <div className="flex items-center gap-3 mt-1.5">
                        {a.averageScore && <span className="text-[9px] text-yellow-400 font-bold">⭐ {(a.averageScore / 10).toFixed(1)}</span>}
                        {a.nextAiringEpisode && (
                          <span className="text-[9px] text-primary font-bold font-['Cairo']">الحلقة {a.nextAiringEpisode.episode} قريباً</span>
                        )}
                        {a.popularity && (
                          <div className="flex items-center gap-0.5 text-white/30">
                            <Eye className="w-2.5 h-2.5" />
                            <span className="text-[9px] font-bold">{(a.popularity / 1000).toFixed(0)}K</span>
                          </div>
                        )}
                      </div>
                    </div>
                  </div>
                </div>
              </Link>
            </motion.div>
          ))}
        </div>
      )}
    </main>
  );
}
