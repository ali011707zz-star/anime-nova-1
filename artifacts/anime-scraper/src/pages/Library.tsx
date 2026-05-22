import { useEffect, useState } from 'react';
import { Link } from 'wouter';
import { BookMarked, History, Trash2, Play } from 'lucide-react';

const ANIME_QUERY = `
query ($ids: [Int]) {
  Page(perPage: 50) {
    media(id_in: $ids, type: ANIME) {
      id title { romaji } coverImage { large } episodes averageScore
    }
  }
}`;

export default function Library() {
  const [tab, setTab] = useState<'saved' | 'history'>('saved');
  const [savedAnime, setSavedAnime] = useState<any[]>([]);
  const [history, setHistory] = useState<any[]>([]);
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    const savedIds: number[] = JSON.parse(localStorage.getItem('savedAnime') || '[]');
    const hist: any[] = JSON.parse(localStorage.getItem('watch-history') || '[]');
    setHistory(hist);

    if (savedIds.length === 0) { setSavedAnime([]); return; }
    setLoading(true);
    fetch('https://graphql.anilist.co', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ query: ANIME_QUERY, variables: { ids: savedIds } }),
    }).then(r => r.json()).then(d => {
      setSavedAnime(d.data?.Page?.media || []);
    }).finally(() => setLoading(false));
  }, []);

  const removeFromSaved = (id: number) => {
    const savedIds: number[] = JSON.parse(localStorage.getItem('savedAnime') || '[]');
    localStorage.setItem('savedAnime', JSON.stringify(savedIds.filter(i => i !== id)));
    setSavedAnime(prev => prev.filter(a => a.id !== id));
  };

  const clearHistory = () => {
    localStorage.removeItem('watch-history');
    setHistory([]);
  };

  return (
    <main className="bg-[#09090B] min-h-screen text-white pb-28" dir="rtl">
      <div className="px-4 pt-4 pb-0">
        <h1 className="text-xl font-black font-['Cairo'] mb-4">مكتبتي</h1>
        <div className="flex gap-2 bg-[#18181B] p-1 rounded-2xl">
          <button onClick={() => setTab('saved')}
            className={`flex-1 py-2.5 rounded-xl text-xs font-black font-['Cairo'] transition-all flex items-center justify-center gap-2
              ${tab === 'saved' ? 'bg-primary text-white shadow-lg shadow-primary/20' : 'text-white/40'}`}>
            <BookMarked className="w-3.5 h-3.5" /> المحفوظة
          </button>
          <button onClick={() => setTab('history')}
            className={`flex-1 py-2.5 rounded-xl text-xs font-black font-['Cairo'] transition-all flex items-center justify-center gap-2
              ${tab === 'history' ? 'bg-primary text-white shadow-lg shadow-primary/20' : 'text-white/40'}`}>
            <History className="w-3.5 h-3.5" /> المشاهدة
          </button>
        </div>
      </div>

      <div className="px-4 mt-5">
        {tab === 'saved' && (
          loading ? (
            <div className="flex justify-center py-20">
              <div className="w-8 h-8 border-2 border-primary border-t-transparent rounded-full animate-spin" />
            </div>
          ) : savedAnime.length === 0 ? (
            <div className="flex flex-col items-center justify-center py-24 gap-4">
              <BookMarked className="w-14 h-14 text-white/10" />
              <p className="text-white/30 font-black font-['Cairo'] text-sm">لا توجد أنمي محفوظة</p>
              <p className="text-white/20 text-xs font-['Cairo']">احفظ الأنمي من صفحة التفاصيل</p>
            </div>
          ) : (
            <div className="grid grid-cols-3 gap-3">
              {savedAnime.map(anime => (
                <div key={anime.id} className="relative group">
                  <Link href={`/anime/${anime.id}`}>
                    <div>
                      <div className="relative aspect-[2/3] rounded-2xl overflow-hidden bg-[#18181B] border border-white/5">
                        <img src={anime.coverImage.large} alt="" className="w-full h-full object-cover" />
                        {anime.averageScore && (
                          <div className="absolute top-2 right-2 bg-black/70 text-yellow-400 text-[8px] px-1.5 py-0.5 rounded-lg font-black">
                            ⭐ {(anime.averageScore / 10).toFixed(1)}
                          </div>
                        )}
                      </div>
                      <p className="mt-1.5 text-[10px] text-white/70 truncate font-bold">{anime.title.romaji}</p>
                    </div>
                  </Link>
                  <button onClick={() => removeFromSaved(anime.id)}
                    className="absolute top-2 left-2 w-7 h-7 bg-black/70 rounded-full flex items-center justify-center text-red-400 opacity-0 group-hover:opacity-100 transition-opacity active:opacity-100">
                    <Trash2 className="w-3.5 h-3.5" />
                  </button>
                </div>
              ))}
            </div>
          )
        )}

        {tab === 'history' && (
          history.length === 0 ? (
            <div className="flex flex-col items-center justify-center py-24 gap-4">
              <History className="w-14 h-14 text-white/10" />
              <p className="text-white/30 font-black font-['Cairo'] text-sm">لا توجد مشاهدات بعد</p>
            </div>
          ) : (
            <>
              <button onClick={clearHistory} className="flex items-center gap-2 text-red-400 text-xs font-bold mb-4 font-['Cairo'] mr-auto ml-0">
                <Trash2 className="w-3.5 h-3.5" /> مسح السجل
              </button>
              <div className="space-y-3">
                {history.map((item, i) => (
                  <Link key={i} href={`/watch?anime=${item.id}&ep=${item.ep}`}>
                    <div className="flex items-center gap-3 p-3 bg-[#18181B] rounded-2xl border border-white/5 hover:border-primary/20 transition-all cursor-pointer active:scale-[0.98]">
                      <img src={item.cover} alt="" className="w-14 h-20 rounded-xl object-cover shrink-0 border border-white/10" />
                      <div className="flex-1 min-w-0">
                        <p className="text-sm font-black text-white line-clamp-2 font-['Cairo']">{item.title}</p>
                        <p className="text-primary text-[10px] font-bold mt-1 font-['Cairo']">الحلقة {item.ep}</p>
                        <p className="text-white/30 text-[9px] mt-0.5 font-['Cairo']">{item.date}</p>
                      </div>
                      <div className="w-9 h-9 bg-primary/20 rounded-full flex items-center justify-center shrink-0">
                        <Play className="w-4 h-4 text-primary" fill="currentColor" />
                      </div>
                    </div>
                  </Link>
                ))}
              </div>
            </>
          )
        )}
      </div>
    </main>
  );
}
