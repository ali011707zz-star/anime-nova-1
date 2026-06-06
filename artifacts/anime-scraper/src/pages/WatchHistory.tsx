import { useEffect, useState } from "react";
import { useLocation, Link } from "wouter";
import { ChevronRight, Play, Trash2, Clock, History } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

interface HistoryItem {
  id: number;
  title: string;
  cover: string;
  ep: number;
  date: string;
  totalEps: number;
}

function timeAgo(iso: string): string {
  try {
    const diff = (Date.now() - new Date(iso).getTime()) / 1000;
    if (diff < 60)    return "الآن";
    if (diff < 3600)  return `${Math.floor(diff / 60)} دقيقة`;
    if (diff < 86400) return `${Math.floor(diff / 3600)} ساعة`;
    if (diff < 604800) return `${Math.floor(diff / 86400)} يوم`;
    if (diff < 2592000) return `${Math.floor(diff / 604800)} أسبوع`;
    return `${Math.floor(diff / 2592000)} شهر`;
  } catch { return ""; }
}

function getProgress(animeId: number, ep: number): number {
  try { return parseFloat(localStorage.getItem(`wp-${animeId}-${ep}`) || "0") || 0; } catch { return 0; }
}

export default function WatchHistory() {
  const [, navigate] = useLocation();
  const [history, setHistory] = useState<HistoryItem[]>([]);

  useEffect(() => {
    try {
      const h = JSON.parse(localStorage.getItem("watch-history") || "[]");
      setHistory(h);
    } catch { setHistory([]); }
  }, []);

  function removeItem(id: number, ep: number) {
    const updated = history.filter(x => !(x.id === id && x.ep === ep));
    localStorage.setItem("watch-history", JSON.stringify(updated));
    setHistory(updated);
  }

  function clearAll() {
    localStorage.removeItem("watch-history");
    setHistory([]);
  }

  return (
    <main className="bg-[#09090B] min-h-screen text-white pb-32" dir="rtl">
      {/* Header */}
      <div className="sticky top-0 z-20 bg-[#09090B]/95 backdrop-blur-xl border-b border-white/5 px-4 pt-safe pt-4 pb-3">
        <div className="flex items-center gap-3 mb-0.5">
          <button
            onClick={() => { if (window.history.length > 1) window.history.back(); else navigate("/"); }}
            className="w-9 h-9 rounded-xl bg-white/6 border border-white/8 flex items-center justify-center active:scale-90 transition-transform shrink-0">
            <ChevronRight className="w-4 h-4 text-white/70" />
          </button>
          <h1 className="text-xl font-black font-['Cairo'] flex-1">سجل المشاهدة</h1>
          {history.length > 0 && (
            <button onClick={clearAll}
              className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl bg-red-500/10 border border-red-500/20 text-red-400/80 text-xs font-bold font-['Cairo'] active:scale-90 transition-transform">
              <Trash2 className="w-3.5 h-3.5" />
              مسح الكل
            </button>
          )}
        </div>
      </div>

      {/* Content */}
      <div className="px-4 mt-4">
        {history.length === 0 ? (
          <motion.div
            initial={{ opacity: 0, y: 16 }} animate={{ opacity: 1, y: 0 }}
            className="flex flex-col items-center justify-center py-28 gap-5">
            <div className="w-20 h-20 rounded-3xl bg-white/4 border border-white/7 flex items-center justify-center">
              <History className="w-9 h-9 text-white/15" />
            </div>
            <div className="text-center">
              <p className="text-white/50 font-black font-['Cairo'] text-base">لا يوجد سجل مشاهدة</p>
              <p className="text-white/22 text-sm font-['Cairo'] mt-1">ابدأ بمشاهدة أنمي ليظهر هنا</p>
            </div>
            <Link href="/">
              <button className="px-6 py-2.5 bg-primary rounded-2xl text-white text-sm font-black font-['Cairo'] active:scale-95 transition-transform">
                اكتشف أنمي
              </button>
            </Link>
          </motion.div>
        ) : (
          <div className="space-y-2.5">
            <AnimatePresence>
              {history.map((item, i) => {
                const progress = getProgress(item.id, item.ep);
                const pct = item.totalEps > 0 && progress > 0
                  ? Math.min(Math.round((progress / 1440) * 100), 99)
                  : 0;
                return (
                  <motion.div
                    key={`${item.id}-${item.ep}`}
                    initial={{ opacity: 0, y: 8 }}
                    animate={{ opacity: 1, y: 0 }}
                    exit={{ opacity: 0, x: 40 }}
                    transition={{ delay: i * 0.04, duration: 0.2 }}
                    className="flex items-center gap-3 bg-[#111116] border border-white/6 rounded-2xl p-3 active:bg-white/5 transition-colors">

                    {/* Cover */}
                    <Link href={`/anime/${item.id}`} className="shrink-0">
                      <div className="relative w-14 h-[78px] rounded-xl overflow-hidden bg-white/5">
                        {item.cover && (
                          <img src={item.cover} alt="" className="w-full h-full object-cover" loading="lazy" />
                        )}
                        {pct > 0 && (
                          <div className="absolute bottom-0 left-0 right-0 h-1 bg-white/15">
                            <div className="h-full bg-primary" style={{ width: `${pct}%` }} />
                          </div>
                        )}
                      </div>
                    </Link>

                    {/* Info */}
                    <div className="flex-1 min-w-0">
                      <Link href={`/anime/${item.id}`}>
                        <p className="text-white/90 text-sm font-black font-['Cairo'] line-clamp-1 leading-tight">{item.title}</p>
                      </Link>
                      <div className="flex items-center gap-1.5 mt-1 flex-wrap">
                        <span className="text-[11px] font-bold text-primary font-['Cairo']">الحلقة {item.ep}</span>
                        {item.totalEps > 0 && (
                          <>
                            <span className="text-white/18 text-[9px]">·</span>
                            <span className="text-white/30 text-[10px] font-['Cairo']">من {item.totalEps}</span>
                          </>
                        )}
                      </div>
                      <div className="flex items-center gap-1 mt-1">
                        <Clock className="w-2.5 h-2.5 text-white/22" />
                        <span className="text-white/28 text-[9px] font-['Cairo']">منذ {timeAgo(item.date)}</span>
                      </div>
                    </div>

                    {/* Actions */}
                    <div className="flex flex-col items-center gap-2 shrink-0">
                      <Link href={`/watch?anime=${item.id}&ep=${item.ep}&title=${encodeURIComponent(item.title)}`}>
                        <button className="w-10 h-10 rounded-xl bg-primary/15 border border-primary/25 flex items-center justify-center active:scale-90 transition-transform">
                          <Play className="w-4 h-4 text-primary fill-primary" />
                        </button>
                      </Link>
                      <button
                        onClick={() => removeItem(item.id, item.ep)}
                        className="w-10 h-10 rounded-xl bg-white/4 border border-white/7 flex items-center justify-center active:scale-90 transition-transform">
                        <Trash2 className="w-3.5 h-3.5 text-white/25" />
                      </button>
                    </div>
                  </motion.div>
                );
              })}
            </AnimatePresence>
          </div>
        )}
      </div>
    </main>
  );
}
