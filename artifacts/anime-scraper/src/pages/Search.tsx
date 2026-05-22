import { useState, useEffect } from 'react';
import { Search as SearchIcon, X, Loader2 } from 'lucide-react';
import AnimeCard from '@/components/anime/AnimeCard';

const SEARCH_QUERY = `
query ($search: String, $page: Int, $perPage: Int) {
  Page(page: $page, perPage: $perPage) {
    media(search: $search, type: ANIME, sort: [SEARCH_MATCH, POPULARITY_DESC]) {
      id title { romaji english native } coverImage { large } averageScore episodes format
    }
  }
}`;

// Arabic → English common transliterations for better search accuracy
const AR_TO_EN: Record<string, string> = {
  "ناروتو": "Naruto", "هانتر": "Hunter", "ون بيس": "One Piece",
  "ون بيسي": "One Piece", "دراغون بول": "Dragon Ball", "دراجون بول": "Dragon Ball",
  "ديمون سلاير": "Demon Slayer", "كيميتسو": "Kimetsu", "هجوم العمالقة": "Shingeki no Kyojin",
  "هجوم": "Attack", "العمالقة": "Kyojin", "ابطال بوكو": "Boku no Hero",
  "بوكو نو هيرو": "Boku no Hero", "بلاتش": "Bleach", "بليتش": "Bleach",
  "فيري تيل": "Fairy Tail", "الكيميائي": "Fullmetal Alchemist",
  "سوورد ارت اونلاين": "Sword Art Online", "توكيو غول": "Tokyo Ghoul",
  "دياب": "Diablo", "ريزيرو": "Re:Zero", "تيتان": "Titan",
};

function translateQuery(q: string): string {
  const trimmed = q.trim();
  if (AR_TO_EN[trimmed]) return AR_TO_EN[trimmed];
  // Check if query contains Arabic characters
  if (/[\u0600-\u06FF]/.test(trimmed)) {
    // Try partial match
    for (const [ar, en] of Object.entries(AR_TO_EN)) {
      if (trimmed.includes(ar)) return trimmed.replace(ar, en);
    }
  }
  return trimmed;
}

export default function Search() {
  const [query, setQuery] = useState('');
  const [results, setResults] = useState<any[]>([]);
  const [loading, setLoading] = useState(false);
  const [history, setHistory] = useState<string[]>(() => JSON.parse(localStorage.getItem('searchHistory') || '[]'));

  useEffect(() => {
    if (!query.trim()) { setResults([]); return; }
    const timer = setTimeout(async () => {
      setLoading(true);
      try {
        const searchTerm = translateQuery(query);
        const res = await fetch('https://graphql.anilist.co', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ query: SEARCH_QUERY, variables: { search: searchTerm, page: 1, perPage: 24 } }),
        });
        const json = await res.json();
        setResults(json.data?.Page?.media || []);
        const updated = [query, ...history.filter(h => h !== query)].slice(0, 8);
        setHistory(updated);
        localStorage.setItem('searchHistory', JSON.stringify(updated));
      } finally {
        setLoading(false);
      }
    }, 400);
    return () => clearTimeout(timer);
  }, [query]);

  return (
    <main className="bg-[#0A0A0F] min-h-screen text-white pb-24" dir="rtl">
      <div className="px-4 pt-4 pb-3 sticky top-0 bg-[#0A0A0F]/90 backdrop-blur-md z-10">
        <div className="flex items-center gap-3 bg-[#18181B] rounded-2xl px-4 border border-white/5">
          <SearchIcon className="w-5 h-5 text-[#71717A] shrink-0" />
          <input
            type="text"
            value={query}
            onChange={e => setQuery(e.target.value)}
            placeholder="ابحث عن أنمي..."
            className="flex-1 bg-transparent text-white py-3 outline-none text-sm font-bold font-['Cairo'] placeholder:text-[#71717A]"
            autoFocus
          />
          {query && (
            <button onClick={() => { setQuery(''); setResults([]); }} className="text-[#71717A] hover:text-white">
              <X className="w-5 h-5" />
            </button>
          )}
        </div>
      </div>

      {loading && <div className="flex items-center justify-center py-10"><Loader2 className="w-8 h-8 text-primary animate-spin" /></div>}

      {!query && history.length > 0 && (
        <div className="px-4 mt-2">
          <div className="flex items-center justify-between mb-3">
            <h2 className="text-xs font-black text-[#A1A1AA] font-['Cairo']">البحث الأخير</h2>
            <button onClick={() => { setHistory([]); localStorage.removeItem('searchHistory'); }} className="text-[10px] text-primary font-bold font-['Cairo']">مسح الكل</button>
          </div>
          <div className="flex flex-wrap gap-2">
            {history.map((h, i) => (
              <button key={i} onClick={() => setQuery(h)} className="text-xs font-bold bg-[#18181B] text-[#A1A1AA] px-3 py-1.5 rounded-xl border border-white/5 hover:border-primary/30 transition-all active:scale-95 font-['Cairo']">
                {h}
              </button>
            ))}
          </div>
        </div>
      )}

      {results.length > 0 && (
        <div className="px-4 mt-4 grid grid-cols-3 gap-3">
          {results.map(anime => <AnimeCard key={anime.id} anime={anime} />)}
        </div>
      )}

      {query && !loading && results.length === 0 && (
        <div className="text-center py-20 text-[#71717A]">
          <p className="font-bold text-sm font-['Cairo']">لا توجد نتائج لـ "{query}"</p>
        </div>
      )}
    </main>
  );
}
