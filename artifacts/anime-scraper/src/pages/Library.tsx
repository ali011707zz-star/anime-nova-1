import { useEffect, useState } from "react";
import { Link } from "wouter";
import { BookMarked, History, Trash2, Play, Clock, ChevronRight, Home } from "lucide-react";
import { motion } from "framer-motion";

const ANIME_QUERY = `
query ($ids: [Int]) {
  Page(perPage: 50) {
    media(id_in: $ids, type: ANIME) {
      id title { romaji } coverImage { large } episodes averageScore status
    }
  }
}`;

function timeAgo(iso: string): string {
  try {
    const diff = (Date.now() - new Date(iso).getTime()) / 1000;
    if (diff < 3600) return `${Math.floor(diff / 60)} دقيقة`;
    if (diff < 86400) return `${Math.floor(diff / 3600)} ساعة`;
    if (diff < 604800) return `${Math.floor(diff / 86400)} يوم`;
    if (diff < 2592000) return `${Math.floor(diff / 604800)} أسبوع`;
    return `${Math.floor(diff / 2592000)} شهر`;
  } catch { return ""; }
}

export default function Library() {
  const [tab, setTab] = useState<"saved" | "history">("history");
  const [savedAnime, setSavedAnime] = useState<any[]>([]);
  const [history, setHistory] = useState<any[]>([]);
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    const savedIds: number[] = JSON.parse(localStorage.getItem("savedAnime") || "[]");
    const hist: any[] = JSON.parse(localStorage.getItem("watch-history") || "[]");
    setHistory(hist);

    if (savedIds.length === 0) { setSavedAnime([]); return; }
    setLoading(true);
    fetch("https://graphql.anilist.co", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ query: ANIME_QUERY, variables: { ids: savedIds } }),
    })
      .then(r => r.json())
      .then(d => setSavedAnime(d.data?.Page?.media || []))
      .finally(() => setLoading(false));
  }, []);

  const removeFromSaved = (id: number) => {
    const savedIds: number[] = JSON.parse(localStorage.getItem("savedAnime") || "[]");
    localStorage.setItem("savedAnime", JSON.stringify(savedIds.filter(i => i !== id)));
    setSavedAnime(prev => prev.filter(a => a.id !== id));
  };

  const removeHistory = (id: number, ep: number) => {
    const h = history.filter(x => !(x.id === id && x.ep === ep));
    localStorage.setItem("watch-history", JSON.stringify(h));
    setHistory(h);
  };

  const clearHistory = () => {
    localStorage.removeItem("watch-history");
    setHistory([]);
  };

  return (
    <main className="bg-[#09090B] min-h-screen text-white pb-28" dir="rtl">

      {/* Header */}
      <div className="sticky top-0 z-20 bg-[#09090B]/95 backdrop-blur-xl border-b border-white/5 px-4 pt-4 pb-3">
        <h1 className="text-xl font-black font-['Cairo'] mb-3">مكتبتي</h1>
        <div className="flex gap-2 bg-[#18181B] p-1 rounded-2xl">
          <button onClick={() => setTab("history")}
            className={`flex-1 py-2.5 rounded-xl text-xs font-black font-['Cairo'] transition-all flex items-center justify-center gap-2
              ${tab === "history" ? "bg-primary text-white shadow-lg shadow-primary/20" : "text-white/40"}`}>
            <History className="w-3.5 h-3.5" />
            سجل المشاهدة
            {history.length > 0 && (
              <span className={`text-[9px] px-1.5 py-0.5 rounded-full font-black
                ${tab === "history" ? "bg-white/20 text-white" : "bg-white/8 text-white/40"}`}>
                {history.length}
              </span>
            )}
          </button>
          <button onClick={() => setTab("saved")}
            className={`flex-1 py-2.5 rounded-xl text-xs font-black font-['Cairo'] transition-all flex items-center justify-center gap-2
              ${tab === "saved" ? "bg-primary text-white shadow-lg shadow-primary/20" : "text-white/40"}`}>
            <BookMarked className="w-3.5 h-3.5" />
            المحفوظة
            {savedAnime.length > 0 && (
              <span className={`text-[9px] px-1.5 py-0.5 rounded-full font-black
                ${tab === "saved" ? "bg-white/20 text-white" : "bg-white/8 text-white/40"}`}>
                {savedAnime.length}
              </span>
            )}
          </button>
        </div>
      </div>

      <div className="px-4 mt-4">

        {/* HISTORY */}
        {tab === "history" && (
          history.length === 0 ? (
            <div className="flex flex-col items-center justify-center py-24 gap-5">
              <div className="w-20 h-20 rounded-full bg-white/4 border border-white/8 flex items-center justify-center">
                <History className="w-9 h-9 text-white/15" />
              </div>
              <div className="text-center">
                <p className="text-white/40 font-black font-['Cairo'] text-sm">لا توجد مشاهدات بعد</p>
                <p className="text-white/20 text-xs font-['Cairo'] mt-1">ابدأ مشاهدة أنمي الآن</p>
              </div>
              <Link href="/">
                <button className="flex items-center gap-2 bg-primary/15 border border-primary/25 text-primary px-5 py-2.5 rounded-xl text-sm font-black font-['Cairo'] active:scale-95">
                  <Home className="w-4 h-4" /> الصفحة الرئيسية
                </button>
              </Link>
            </div>
          ) : (
            <>
              <div className="flex items-center justify-between mb-4">
                <p className="text-[10px] text-white/30 font-['Cairo'] font-bold">{history.length} مشاهدة</p>
                <button onClick={clearHistory} className="flex items-center gap-1.5 text-red-400/60 text-[10px] font-bold font-['Cairo'] hover:text-red-400 active:scale-95">
                  <Trash2 className="w-3 h-3" /> مسح الكل
                </button>
              </div>
              <div className="space-y-2.5">
                {history.map((item, i) => (
                  <motion.div key={`${item.id}-${item.ep}`}
                    initial={{ opacity: 0, y: 8 }} animate={{ opacity: 1, y: 0 }}
                    transition={{ delay: i * 0.04 }}>
                    <Link href={`/watch?anime=${item.id}&ep=${item.ep}`}>
                      <div className="flex items-center gap-3 p-3 bg-[#111116] rounded-2xl border border-white/5 hover:border-primary/20 transition-all cursor-pointer active:scale-[0.98]">
                        <div className="relative shrink-0">
                          <img src={item.cover} alt="" className="w-14 h-20 rounded-xl object-cover border border-white/10" />
                          <div className="absolute inset-0 rounded-xl bg-black/20 flex items-end justify-center pb-1">
                            <div className="w-6 h-6 bg-primary/90 rounded-full flex items-center justify-center">
                              <Play className="w-3 h-3 text-white fill-white" />
                            </div>
                          </div>
                        </div>
                        <div className="flex-1 min-w-0">
                          <p className="text-sm font-black text-white line-clamp-2 font-['Cairo'] leading-tight">{item.title}</p>
                          <div className="flex items-center gap-2 mt-1">
                            <span className="text-primary text-[10px] font-black font-['Cairo'] bg-primary/10 border border-primary/20 px-2 py-0.5 rounded-lg">
                              الحلقة {item.ep}
                            </span>
                          </div>
                          {item.date && (
                            <div className="flex items-center gap-1 mt-1.5">
                              <Clock className="w-2.5 h-2.5 text-white/25" />
                              <span className="text-white/25 text-[9px] font-['Cairo']">منذ {timeAgo(item.date)}</span>
                            </div>
                          )}
                        </div>
                        <button
                          onClick={e => { e.preventDefault(); e.stopPropagation(); removeHistory(item.id, item.ep); }}
                          className="w-7 h-7 bg-white/5 rounded-xl flex items-center justify-center text-white/25 hover:text-red-400 hover:bg-red-500/10 transition-all shrink-0 active:scale-90"
                        >
                          <Trash2 className="w-3 h-3" />
                        </button>
                      </div>
                    </Link>
                  </motion.div>
                ))}
              </div>
            </>
          )
        )}

        {/* SAVED */}
        {tab === "saved" && (
          loading ? (
            <div className="grid grid-cols-3 gap-3">
              {Array.from({ length: 6 }).map((_, i) => (
                <div key={i} className="aspect-[2/3] rounded-2xl bg-white/5 animate-pulse" />
              ))}
            </div>
          ) : savedAnime.length === 0 ? (
            <div className="flex flex-col items-center justify-center py-24 gap-5">
              <div className="w-20 h-20 rounded-full bg-white/4 border border-white/8 flex items-center justify-center">
                <BookMarked className="w-9 h-9 text-white/15" />
              </div>
              <div className="text-center">
                <p className="text-white/40 font-black font-['Cairo'] text-sm">لا توجد أنمي محفوظة</p>
                <p className="text-white/20 text-xs font-['Cairo'] mt-1">احفظ الأنمي من صفحة التفاصيل</p>
              </div>
              <Link href="/browse">
                <button className="flex items-center gap-2 bg-primary/15 border border-primary/25 text-primary px-5 py-2.5 rounded-xl text-sm font-black font-['Cairo'] active:scale-95">
                  تصفح الأنمي
                </button>
              </Link>
            </div>
          ) : (
            <div className="grid grid-cols-3 gap-3">
              {savedAnime.map((anime, i) => (
                <motion.div key={anime.id} className="relative group"
                  initial={{ opacity: 0, scale: 0.95 }} animate={{ opacity: 1, scale: 1 }}
                  transition={{ delay: i * 0.05 }}>
                  <Link href={`/anime/${anime.id}`}>
                    <div>
                      <div className="relative aspect-[2/3] rounded-2xl overflow-hidden bg-[#18181B] border border-white/5">
                        <img src={anime.coverImage?.large} alt="" className="w-full h-full object-cover" />
                        <div className="absolute inset-0 bg-gradient-to-t from-black/60 to-transparent" />
                        {anime.averageScore && (
                          <div className="absolute top-1.5 right-1.5 bg-black/70 text-yellow-400 text-[7px] px-1.5 py-0.5 rounded-lg font-black">
                            ⭐ {(anime.averageScore / 10).toFixed(1)}
                          </div>
                        )}
                      </div>
                      <p className="mt-1.5 text-[10px] text-white/70 truncate font-bold">{anime.title.romaji}</p>
                    </div>
                  </Link>
                  <button
                    onClick={() => removeFromSaved(anime.id)}
                    className="absolute top-1.5 left-1.5 w-6 h-6 bg-black/70 rounded-full flex items-center justify-center text-red-400 opacity-0 group-hover:opacity-100 active:opacity-100 transition-opacity"
                  >
                    <Trash2 className="w-3 h-3" />
                  </button>
                </motion.div>
              ))}
            </div>
          )
        )}
      </div>
    </main>
  );
}
