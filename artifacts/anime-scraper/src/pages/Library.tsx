import { useEffect, useState, useCallback, useMemo } from "react";
import { Link } from "wouter";
import { BookMarked, History, Trash2, Play, Clock, ChevronRight, Home, Star, PlayCircle, Heart, Clapperboard, Search as SearchIcon, X } from "lucide-react";
import { useAuth } from "@/lib/auth-context";
import { loadWatchHistory, loadSavedIds, unsaveAnime } from "@/lib/db";
import { motion, AnimatePresence } from "framer-motion";

const ANIME_QUERY = `
query ($ids: [Int]) {
  Page(perPage: 50) {
    media(id_in: $ids, type: ANIME) {
      id title { romaji } coverImage { large } episodes averageScore status
      startDate { year } format season seasonYear
    }
  }
}`;

/* ── Load animation watch history from localStorage ── */
interface AnimHistItem {
  tmdbId: number | string;
  type: "movie" | "tv";
  ep?: number;
  season?: number;
  title: string;
  poster?: string;
  date: string;
  progressSec?: number;
}

function loadAnimHistory(): AnimHistItem[] {
  try {
    const raw = localStorage.getItem("anim-watch-history");
    if (!raw) return [];
    return (JSON.parse(raw) as any[]).map(x => ({
      ...x,
      tmdbId: x.tmdbId ?? x.id,
      poster: x.poster ?? x.cover,
    })) as AnimHistItem[];
  } catch { return []; }
}

function getAnimProgress(tmdbId: number | string, type: string, season = 1, ep = 1): number {
  try {
    return parseFloat(localStorage.getItem(`anim-wp-${tmdbId}-${type}-${season}-${ep}`) || "0") || 0;
  } catch { return 0; }
}

const FORMAT_LABEL: Record<string, string> = {
  TV: "مسلسل", MOVIE: "فيلم", OVA: "أوفا", ONA: "ONA", SPECIAL: "خاص",
};
const STATUS_LABEL: Record<string, { ar: string; cls: string }> = {
  FINISHED:  { ar: "مكتملة",   cls: "bg-red-500 text-white" },
  RELEASING: { ar: "يُبث",     cls: "bg-emerald-500 text-white" },
  NOT_YET:   { ar: "قريباً",   cls: "bg-yellow-500 text-black" },
};

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

function fmtTime(sec: number): string {
  const m = Math.floor(sec / 60);
  const s = Math.floor(sec % 60);
  return `${m}:${String(s).padStart(2, "0")}`;
}

/** Read saved progress in seconds from localStorage (wp-{animeId}-{ep}) */
function getProgress(animeId: number, ep: number): number {
  try { return parseFloat(localStorage.getItem(`wp-${animeId}-${ep}`) || "0") || 0; } catch { return 0; }
}

/** Progress percentage — uses 1440s (24min) as default episode duration */
function progressPct(progressSec: number, durationSec = 1440): number {
  if (!progressSec || progressSec <= 0) return 0;
  return Math.min(Math.round((progressSec / durationSec) * 100), 99);
}

function loadFavChars(): any[] {
  try { return JSON.parse(localStorage.getItem("fav-characters") || "[]"); } catch { return []; }
}

export default function Library() {
  const { user } = useAuth();
  const [tab, setTab] = useState<"continue" | "history" | "saved" | "chars">("continue");
  const [savedAnime, setSavedAnime] = useState<any[]>([]);
  const [history, setHistory] = useState<any[]>([]);
  const [animHistory, setAnimHistory] = useState<AnimHistItem[]>([]);
  const [loading, setLoading] = useState(false);
  const [sortBy, setSortBy] = useState<"name" | "date" | "score">("date");
  const [searchQuery, setSearchQuery] = useState("");
  const [favChars, setFavChars] = useState<any[]>(() => loadFavChars());

  const loadData = useCallback(async () => {
    const hist = await loadWatchHistory(user?.id ?? null);
    setHistory(hist);
    setAnimHistory(loadAnimHistory());

    const savedIds = await loadSavedIds(user?.id ?? null);
    if (savedIds.length === 0) { setSavedAnime([]); return; }
    setLoading(true);
    try {
      const r = await fetch("https://graphql.anilist.co", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ query: ANIME_QUERY, variables: { ids: savedIds } }),
      });
      const d = await r.json();
      setSavedAnime(d.data?.Page?.media || []);
    } catch { /* keep empty */ } finally {
      setLoading(false);
    }
  }, [user?.id]);

  useEffect(() => {
    let cancelled = false;
    (async () => {
      const hist = await loadWatchHistory(user?.id ?? null);
      if (!cancelled) setHistory(hist);
      if (!cancelled) setAnimHistory(loadAnimHistory());
      const savedIds = await loadSavedIds(user?.id ?? null);
      if (savedIds.length === 0) { if (!cancelled) setSavedAnime([]); return; }
      if (!cancelled) setLoading(true);
      try {
        const r = await fetch("https://graphql.anilist.co", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ query: ANIME_QUERY, variables: { ids: savedIds } }),
        });
        const d = await r.json();
        if (!cancelled) setSavedAnime(d.data?.Page?.media || []);
      } catch {} finally {
        if (!cancelled) setLoading(false);
      }
    })();
    return () => { cancelled = true; };
  }, [user?.id]);

  const removeFromSaved = (id: number) => {
    unsaveAnime(user?.id ?? null, id);
    setSavedAnime(prev => prev.filter(a => a.id !== id));
  };

  const removeHistory = (id: number, ep: number) => {
    const h = history.filter((x: any) => !(x.id === id && x.ep === ep));
    localStorage.setItem("watch-history", JSON.stringify(h));
    setHistory(h);
  };

  const clearHistory = () => {
    localStorage.removeItem("watch-history");
    setHistory([]);
  };

  /* ── Derive "continue watching" — anime items with progress > 30s ── */
  const animeContinue = history.reduce((acc: any[], item: any) => {
    const prog = getProgress(item.id, item.ep);
    if (prog < 30) return acc;
    if (acc.some(x => x.id === item.id && x.ep === item.ep)) return acc;
    return [...acc, { ...item, progressSec: prog, kind: "anime" }];
  }, []);

  /* ── Animation continue items ── */
  const animContinue = animHistory.reduce((acc: AnimHistItem[], item: AnimHistItem) => {
    const prog = getAnimProgress(item.tmdbId, item.type, item.season, item.ep);
    if (prog < 30) return acc;
    if (acc.some(x => x.tmdbId === item.tmdbId && x.ep === item.ep && x.season === item.season)) return acc;
    return [...acc, { ...item, progressSec: prog }];
  }, []);

  /* ── Merge and sort by date ── */
  const continueItems = [
    ...animeContinue.map((i: any) => ({ ...i, _kind: "anime" as const })),
    ...animContinue.map((i: AnimHistItem) => ({ ...i, _kind: "anim" as const })),
  ].sort((a, b) => ((b.date ?? "") > (a.date ?? "") ? 1 : -1)).slice(0, 20);

  const sq = searchQuery.toLowerCase().trim();

  const filteredContinue = useMemo(() =>
    continueItems.filter((i: any) => !sq || (i.title || "").toLowerCase().includes(sq)),
    [continueItems, sq]);

  const filteredSaved = useMemo(() => {
    let arr = [...savedAnime];
    const sorted = arr.sort((a, b) => {
      if (sortBy === "name") return (a.title?.romaji || "").localeCompare(b.title?.romaji || "");
      if (sortBy === "score") return (b.averageScore || 0) - (a.averageScore || 0);
      return 0;
    });
    return sq ? sorted.filter(a => (a.title?.romaji || a.title?.english || "").toLowerCase().includes(sq)) : sorted;
  }, [savedAnime, sortBy, sq]);

  const sortedSaved = filteredSaved;

  const tabCount = {
    continue: continueItems.length,
    history: history.length + animHistory.length,
    saved: savedAnime.length,
    chars: favChars.length,
  };

  const removeCharFav = (charId: number) => {
    const upd = favChars.filter((c: any) => c.id !== charId);
    localStorage.setItem("fav-characters", JSON.stringify(upd));
    setFavChars(upd);
  };

  return (
    <main className="bg-[#09090B] min-h-screen text-white pb-28" dir="rtl">

      {/* ── Header ── */}
      <div className="sticky top-0 z-20 bg-[#09090B]/95 backdrop-blur-xl border-b border-white/5 px-4 pt-4 pb-3">
        <h1 className="text-xl font-black font-['Cairo'] mb-3">قائمتي</h1>
        <div className="flex gap-1 bg-[#18181B] p-1 rounded-2xl mb-3">
          {(["continue", "history", "saved", "chars"] as const).map(t => {
            const labels = { continue: "متابعة", history: "السجل", saved: "المحفوظة", chars: "الشخصيات" };
            const icons = {
              continue: <PlayCircle className="w-3 h-3" />,
              history: <History className="w-3 h-3" />,
              saved: <BookMarked className="w-3 h-3" />,
              chars: <Heart className="w-3 h-3" />,
            };
            return (
              <button key={t} onClick={() => { setTab(t); if (t === "chars") setFavChars(loadFavChars()); }}
                className={`flex-1 py-2.5 rounded-xl text-[10px] font-black font-['Cairo'] transition-all flex items-center justify-center gap-1
                  ${tab === t ? "bg-primary text-white shadow-lg shadow-primary/20" : "text-white/40"}`}>
                {icons[t]}
                {labels[t]}
                {tabCount[t] > 0 && (
                  <span className={`text-[8px] px-1 py-0.5 rounded-full font-black ${tab === t ? "bg-white/20" : "bg-white/8 text-white/40"}`}>
                    {tabCount[t]}
                  </span>
                )}
              </button>
            );
          })}
        </div>
        {/* Search bar */}
        <div className="flex items-center gap-2 bg-[#111116] rounded-xl px-3 border border-white/[0.06]">
          <SearchIcon className="w-4 h-4 text-white/25 shrink-0" />
          <input
            type="text" value={searchQuery}
            onChange={e => setSearchQuery(e.target.value)}
            placeholder="ابحث في قائمتك..."
            className="flex-1 bg-transparent text-white py-2.5 outline-none text-[13px] font-['Cairo'] placeholder:text-white/22"
          />
          {searchQuery && (
            <button onClick={() => setSearchQuery("")} className="text-white/25 hover:text-white/60 active:scale-90">
              <X className="w-3.5 h-3.5" />
            </button>
          )}
        </div>
        {/* Sort bar — only on saved tab */}
        {tab === "saved" && savedAnime.length > 1 && (
          <div className="flex items-center gap-1.5 mt-2">
            <span className="text-[9px] text-white/25 font-['Cairo'] font-bold shrink-0">ترتيب:</span>
            {([["date", "الأحدث"], ["score", "التقييم"], ["name", "الاسم"]] as const).map(([v, lbl]) => (
              <button key={v} onClick={() => setSortBy(v)}
                className={`px-2.5 py-1 rounded-lg text-[10px] font-black font-['Cairo'] transition-all active:scale-95
                  ${sortBy === v ? "bg-primary/20 text-primary border border-primary/30" : "bg-white/4 text-white/35 border border-white/6"}`}>
                {lbl}
              </button>
            ))}
          </div>
        )}
      </div>

      {/* ── CONTINUE WATCHING TAB ── */}
      <AnimatePresence mode="wait">
        {tab === "continue" && (
          <motion.div key="continue" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            className="px-4 mt-4">
            {filteredContinue.length === 0 ? (
              <div className="flex flex-col items-center justify-center py-24 gap-5">
                <div className="w-20 h-20 rounded-full bg-white/4 border border-white/8 flex items-center justify-center">
                  <PlayCircle className="w-9 h-9 text-white/15" />
                </div>
                <div className="text-center">
                  <p className="text-white/40 font-black font-['Cairo'] text-sm">لا توجد حلقات قيد المشاهدة</p>
                  <p className="text-white/20 text-xs font-['Cairo'] mt-1">ابدأ مشاهدة أنمي أو أنيميشن وسيظهر هنا</p>
                </div>
                <Link href="/">
                  <button className="flex items-center gap-2 bg-primary/15 border border-primary/25 text-primary px-5 py-2.5 rounded-xl text-sm font-black font-['Cairo'] active:scale-95">
                    <Home className="w-4 h-4" /> الصفحة الرئيسية
                  </button>
                </Link>
              </div>
            ) : (
              <div className="space-y-3">
                {filteredContinue.map((item: any, i: number) => {
                  const isAnim = item._kind === "anim";
                  const pct = progressPct(item.progressSec);
                  const accent = isAnim ? "#06B6D4" : "#8B5CF6";
                  const cover = isAnim ? item.poster : item.cover;
                  const watchUrl = isAnim
                    ? `/animation/${item.type ?? "movie"}/${item.tmdbId}?ep=${item.ep ?? 1}&season=${item.season ?? 1}`
                    : `/watch?anime=${item.id}&ep=${item.ep}${item.cover ? `&cover=${encodeURIComponent(item.cover)}` : ""}${item.title ? `&title=${encodeURIComponent(item.title)}` : ""}`;
                  const epLabel = isAnim
                    ? (item.type === "tv" ? `ج${item.season ?? 1} ح${item.ep ?? 1}` : "فيلم")
                    : `ح ${item.ep}`;
                  return (
                    <motion.div key={isAnim ? `anim-${item.tmdbId}-${item.season}-${item.ep}` : `${item.id}-${item.ep}`}
                      initial={{ opacity: 0, y: 8 }} animate={{ opacity: 1, y: 0 }}
                      transition={{ delay: i * 0.04 }}>
                      <Link href={watchUrl}>
                        <div className="flex items-center gap-3 p-3 bg-[#111116] rounded-2xl border border-white/5 transition-all cursor-pointer active:scale-[0.98]"
                          style={{ borderColor: "rgba(255,255,255,0.05)" }}>
                          {/* Cover */}
                          <div className="relative shrink-0">
                            {cover
                              ? <img src={isAnim && cover ? `https://image.tmdb.org/t/p/w200${cover}` : cover} alt="" className="w-16 h-[84px] rounded-xl object-cover border border-white/10" />
                              : <div className="w-16 h-[84px] rounded-xl bg-white/5 flex items-center justify-center border border-white/10">
                                  {isAnim ? <Clapperboard className="w-6 h-6 text-white/20" /> : <PlayCircle className="w-6 h-6 text-white/20" />}
                                </div>
                            }
                            <div className="absolute inset-0 rounded-xl bg-black/30 flex items-center justify-center">
                              <div className="w-8 h-8 rounded-full flex items-center justify-center shadow-lg"
                                style={{ background: accent }}>
                                <Play className="w-4 h-4 text-white fill-white ml-0.5" />
                              </div>
                            </div>
                            <div className="absolute -bottom-1.5 left-1/2 -translate-x-1/2 bg-black/90 text-[8px] font-black px-1.5 py-0.5 rounded-full border whitespace-nowrap"
                              style={{ color: accent, borderColor: `${accent}44` }}>
                              {pct}%
                            </div>
                          </div>

                          {/* Info */}
                          <div className="flex-1 min-w-0">
                            <div className="flex items-center gap-1.5 mb-1">
                              <span className="text-[8px] font-black px-1.5 py-0.5 rounded-md"
                                style={{ background: `${accent}20`, color: accent, border: `1px solid ${accent}33` }}>
                                {isAnim ? "أنيميشن" : "أنمي"}
                              </span>
                            </div>
                            <p className="text-sm font-black text-white line-clamp-1 font-['Cairo'] leading-tight">{item.title}</p>
                            <div className="flex items-center gap-2 mt-1">
                              <span className="text-[10px] font-black font-['Cairo'] px-2 py-0.5 rounded-lg"
                                style={{ color: accent, background: `${accent}15`, border: `1px solid ${accent}25` }}>
                                {epLabel}
                              </span>
                            </div>
                            <div className="mt-2 w-full h-1.5 bg-white/8 rounded-full overflow-hidden">
                              <div className="h-full rounded-full transition-all"
                                style={{ width: `${pct || 3}%`, background: `linear-gradient(90deg,${accent},${accent}99)` }} />
                            </div>
                            <div className="flex items-center justify-between mt-1">
                              <span className="text-white/30 text-[9px] font-mono">{fmtTime(item.progressSec)}</span>
                              {item.date && (
                                <span className="text-white/20 text-[9px] font-['Cairo']">منذ {timeAgo(item.date)}</span>
                              )}
                            </div>
                          </div>
                          <ChevronRight className="w-4 h-4 text-white/20 shrink-0" />
                        </div>
                      </Link>
                    </motion.div>
                  );
                })}
              </div>
            )}
          </motion.div>
        )}

        {/* ── HISTORY TAB ── */}
        {tab === "history" && (
          <motion.div key="history" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            className="px-4 mt-4">
            {(() => {
              /* Merge anime + animation history sorted by date desc */
              const animeRows = history.map((item: any) => ({ ...item, _kind: "anime" as const }));
              const animRows  = animHistory.map((item: AnimHistItem) => ({ ...item, _kind: "anim" as const }));
              const merged = [...animeRows, ...animRows]
                .sort((a, b) => ((b.date ?? "") > (a.date ?? "") ? 1 : -1))
                .filter((item: any) => !sq || (item.title || "").toLowerCase().includes(sq));

              if (merged.length === 0) return (
                <div className="flex flex-col items-center justify-center py-24 gap-5">
                  <div className="w-20 h-20 rounded-full bg-white/4 border border-white/8 flex items-center justify-center">
                    <History className="w-9 h-9 text-white/15" />
                  </div>
                  <div className="text-center">
                    <p className="text-white/40 font-black font-['Cairo'] text-sm">لا توجد مشاهدات بعد</p>
                    <p className="text-white/20 text-xs font-['Cairo'] mt-1">ابدأ مشاهدة أنمي أو أنيميشن</p>
                  </div>
                  <Link href="/">
                    <button className="flex items-center gap-2 bg-primary/15 border border-primary/25 text-primary px-5 py-2.5 rounded-xl text-sm font-black font-['Cairo'] active:scale-95">
                      <Home className="w-4 h-4" /> الصفحة الرئيسية
                    </button>
                  </Link>
                </div>
              );

              return (
                <>
                  <div className="flex items-center justify-between mb-4">
                    <p className="text-[10px] text-white/30 font-['Cairo'] font-bold">{merged.length} عنصر</p>
                    <button onClick={() => { clearHistory(); localStorage.removeItem("anim-watch-history"); setAnimHistory([]); }}
                      className="flex items-center gap-1.5 text-red-400/60 text-[10px] font-bold font-['Cairo'] hover:text-red-400 active:scale-95">
                      <Trash2 className="w-3 h-3" /> مسح الكل
                    </button>
                  </div>
                  <div className="space-y-2.5">
                    {merged.map((item: any, i: number) => {
                      const isAnim = item._kind === "anim";
                      const accent = isAnim ? "#06B6D4" : "#8B5CF6";
                      const progressSec = isAnim
                        ? getAnimProgress(item.tmdbId, item.type, item.season, item.ep)
                        : getProgress(item.id, item.ep);
                      const pct = progressPct(progressSec);
                      const cover = isAnim ? item.poster : item.cover;
                      const coverSrc = isAnim && cover
                        ? (cover.startsWith("http") ? cover : `https://image.tmdb.org/t/p/w200${cover}`)
                        : cover;
                      const watchUrl = isAnim
                        ? `/animation/watch?id=${item.tmdbId}&type=${item.type ?? "movie"}&ep=${item.ep ?? 1}&season=${item.season ?? 1}&title=${encodeURIComponent(item.title)}&poster=${encodeURIComponent(cover ?? "")}`
                        : `/watch?anime=${item.id}&ep=${item.ep}${item.cover ? `&cover=${encodeURIComponent(item.cover)}` : ""}${item.title ? `&title=${encodeURIComponent(item.title)}` : ""}`;
                      const epLabel = isAnim
                        ? (item.type === "tv" ? `ج${item.season ?? 1} · ح${item.ep ?? 1}` : "فيلم")
                        : `الحلقة ${item.ep}`;
                      const kindLabel = isAnim ? "أنيميشن" : "أنمي";

                      return (
                        <motion.div key={isAnim ? `anim-${item.tmdbId}-${item.season}-${item.ep}-${i}` : `${item.id}-${item.ep}-${i}`}
                          initial={{ opacity: 0, y: 8 }} animate={{ opacity: 1, y: 0 }}
                          transition={{ delay: i * 0.04 }}>
                          <Link href={watchUrl}>
                            <div className="flex items-center gap-3 p-3 bg-[#111116] rounded-2xl border border-white/5 transition-all cursor-pointer active:scale-[0.98]"
                              style={{ borderColor: "rgba(255,255,255,0.05)" }}>
                              {/* Cover */}
                              <div className="relative shrink-0">
                                {coverSrc
                                  ? <img src={coverSrc} alt="" className="w-14 h-[72px] rounded-xl object-cover border border-white/10" />
                                  : <div className="w-14 h-[72px] rounded-xl bg-white/5 flex items-center justify-center border border-white/10">
                                      {isAnim ? <Clapperboard className="w-5 h-5 text-white/20" /> : <PlayCircle className="w-5 h-5 text-white/20" />}
                                    </div>
                                }
                                <div className="absolute inset-0 rounded-xl bg-black/25 flex items-center justify-center">
                                  <div className="w-7 h-7 rounded-full flex items-center justify-center shadow-lg"
                                    style={{ background: accent }}>
                                    <Play className="w-3.5 h-3.5 text-white fill-white ml-0.5" />
                                  </div>
                                </div>
                              </div>

                              {/* Info */}
                              <div className="flex-1 min-w-0">
                                <div className="flex items-center gap-1.5 mb-0.5">
                                  <span className="text-[8px] font-black px-1.5 py-0.5 rounded-md"
                                    style={{ background: `${accent}20`, color: accent, border: `1px solid ${accent}33` }}>
                                    {kindLabel}
                                  </span>
                                </div>
                                <p className="text-sm font-black text-white line-clamp-1 font-['Cairo'] leading-tight">{item.title}</p>
                                <div className="flex items-center gap-2 mt-1">
                                  <span className="text-[10px] font-black font-['Cairo'] px-2 py-0.5 rounded-lg"
                                    style={{ color: accent, background: `${accent}15`, border: `1px solid ${accent}25` }}>
                                    {epLabel}
                                  </span>
                                  {!isAnim && item.totalEps > 0 && (
                                    <span className="text-white/25 text-[9px] font-['Cairo']">من {item.totalEps}</span>
                                  )}
                                </div>
                                <div className="mt-2 w-full h-1 bg-white/8 rounded-full overflow-hidden">
                                  <div className="h-full rounded-full transition-all"
                                    style={{
                                      width: `${pct || 3}%`,
                                      background: pct > 80
                                        ? "linear-gradient(90deg,#10B981,#059669)"
                                        : `linear-gradient(90deg,${accent},${accent}99)`,
                                    }} />
                                </div>
                                <div className="flex items-center justify-between mt-1">
                                  {progressSec > 0
                                    ? <span className="text-white/25 text-[9px] font-mono">{fmtTime(progressSec)} · {pct}%</span>
                                    : <span className="text-white/20 text-[9px] font-['Cairo']">لم يُسجَّل تقدم</span>
                                  }
                                  {item.date && (
                                    <div className="flex items-center gap-0.5">
                                      <Clock className="w-2.5 h-2.5 text-white/20" />
                                      <span className="text-white/20 text-[9px] font-['Cairo']">منذ {timeAgo(item.date)}</span>
                                    </div>
                                  )}
                                </div>
                              </div>

                              {/* Remove */}
                              <button
                                onClick={e => {
                                  e.preventDefault(); e.stopPropagation();
                                  if (isAnim) {
                                    const updated = animHistory.filter(h =>
                                      !(String(h.tmdbId) === String(item.tmdbId) && h.ep === item.ep && h.season === item.season)
                                    );
                                    localStorage.setItem("anim-watch-history", JSON.stringify(updated));
                                    setAnimHistory(updated);
                                  } else {
                                    removeHistory(item.id, item.ep);
                                  }
                                }}
                                className="w-7 h-7 bg-white/5 rounded-xl flex items-center justify-center text-white/25 hover:text-red-400 hover:bg-red-500/10 transition-all shrink-0 active:scale-90"
                              >
                                <Trash2 className="w-3 h-3" />
                              </button>
                            </div>
                          </Link>
                        </motion.div>
                      );
                    })}
                  </div>
                </>
              );
            })()}
          </motion.div>
        )}

        {/* ── SAVED TAB ── */}
        {tab === "saved" && (
          <motion.div key="saved" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            className="px-4 mt-4">
            {/* Sort bar */}
            {savedAnime.length > 0 && (
              <div className="flex items-center gap-2 mb-4">
                <span className="text-[9px] text-white/25 font-bold font-['Cairo']">ترتيب بـ</span>
                {([["date", "التاريخ"], ["name", "الاسم"], ["score", "التقييم"]] as const).map(([id, label]) => (
                  <button key={id} onClick={() => setSortBy(id)}
                    className={`text-[10px] font-black px-2.5 py-1 rounded-lg font-['Cairo'] transition-all
                      ${sortBy === id ? "bg-primary/20 text-primary border border-primary/25" : "text-white/30 border border-white/8"}`}>
                    {label}
                  </button>
                ))}
              </div>
            )}

            {loading ? (
              <div className="grid grid-cols-2 gap-3">
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
              <div className="grid grid-cols-2 gap-3">
                {sortedSaved.map((anime, i) => {
                  const status = STATUS_LABEL[anime.status] || { ar: anime.status, cls: "bg-zinc-600 text-white" };
                  const year = anime.startDate?.year;
                  const format = FORMAT_LABEL[anime.format] || anime.format || "أنمي";
                  /* Find last watched episode for this anime */
                  const lastSeen = history.find(h => h.id === anime.id);
                  const lastProg = lastSeen ? getProgress(lastSeen.id, lastSeen.ep) : 0;
                  const lastPct = progressPct(lastProg);
                  return (
                    <motion.div key={anime.id} className="relative"
                      initial={{ opacity: 0, scale: 0.95 }} animate={{ opacity: 1, scale: 1 }}
                      transition={{ delay: i * 0.04 }}>
                      <Link href={`/episodes/${anime.id}`}>
                        <div className="group cursor-pointer">
                          {/* Image */}
                          <div className="relative aspect-[2/3] rounded-2xl overflow-hidden bg-[#18181B] border border-white/[0.07]">
                            <img
                              src={anime.coverImage?.large} alt=""
                              className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500"
                            />
                            <div className="absolute inset-0 bg-gradient-to-t from-black/75 via-transparent to-transparent" />
                            {/* Status badge */}
                            <div className={`absolute top-2 right-2 text-[8px] font-black px-2 py-0.5 rounded-md ${status.cls}`}>
                              {status.ar}
                            </div>
                            {/* Score */}
                            {anime.averageScore && (
                              <div className="absolute top-2 left-2 bg-black/70 text-yellow-400 text-[8px] px-1.5 py-0.5 rounded-lg font-black flex items-center gap-0.5">
                                <Star className="w-2 h-2 fill-current" /> {(anime.averageScore / 10).toFixed(2)}
                              </div>
                            )}
                            {/* Bottom info + progress */}
                            <div className="absolute bottom-0 left-0 right-0 p-2">
                              {lastSeen && (
                                <div className="mb-1.5">
                                  <div className="flex items-center justify-between mb-1">
                                    <span className="text-[8px] text-primary/90 font-black font-['Cairo']">ح {lastSeen.ep}</span>
                                    {lastPct > 0 && <span className="text-[8px] text-white/50 font-mono">{lastPct}%</span>}
                                  </div>
                                  <div className="w-full h-1 bg-white/15 rounded-full overflow-hidden">
                                    <div className="h-full rounded-full"
                                      style={{ width: `${lastPct || 5}%`, background: "linear-gradient(90deg,#8B5CF6,#6D28D9)" }} />
                                  </div>
                                </div>
                              )}
                              <p className="text-white/50 text-[8px] font-bold font-['Cairo']">
                                {year && `${year} · `}{format}
                              </p>
                            </div>
                            {/* Remove btn */}
                            <button
                              onClick={e => { e.preventDefault(); e.stopPropagation(); removeFromSaved(anime.id); }}
                              className="absolute top-7 left-1 w-5 h-5 bg-black/80 rounded-full flex items-center justify-center text-red-400 opacity-0 group-hover:opacity-100 active:opacity-100 transition-opacity"
                            >
                              <Trash2 className="w-2.5 h-2.5" />
                            </button>
                          </div>
                          {/* Title below */}
                          <div className="mt-1.5 flex items-start justify-between gap-1">
                            <p className="text-[11px] text-white/75 font-black font-['Cairo'] line-clamp-2 flex-1">{anime.title?.romaji}</p>
                            <ChevronRight className="w-3.5 h-3.5 text-white/20 mt-0.5 shrink-0" />
                          </div>
                        </div>
                      </Link>
                    </motion.div>
                  );
                })}
              </div>
            )}
          </motion.div>
        )}
      </AnimatePresence>

      {/* ── FAVOURITE CHARACTERS TAB ── */}
      <AnimatePresence mode="wait">
        {tab === "chars" && (
          <motion.div key="chars" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            className="px-4 mt-4">
            {favChars.length === 0 ? (
              <div className="flex flex-col items-center justify-center py-24 gap-5">
                <div className="w-20 h-20 rounded-full bg-pink-500/6 border border-pink-500/15 flex items-center justify-center">
                  <Heart className="w-9 h-9 text-pink-400/30" />
                </div>
                <div className="text-center">
                  <p className="text-white/40 font-black font-['Cairo'] text-sm">لا توجد شخصيات مفضلة</p>
                  <p className="text-white/20 text-xs font-['Cairo'] mt-1">اضغط ❤ على أي شخصية في صفحة الأنمي لحفظها</p>
                </div>
                <Link href="/">
                  <button className="flex items-center gap-2 bg-pink-500/10 border border-pink-500/20 text-pink-400 px-5 py-2.5 rounded-xl text-sm font-black font-['Cairo'] active:scale-95">
                    <Home className="w-4 h-4" /> استعرض الأنمي
                  </button>
                </Link>
              </div>
            ) : (
              <div className="grid grid-cols-4 gap-3">
                {favChars.map((char: any, i: number) => (
                  <motion.div key={char.id}
                    initial={{ opacity: 0, scale: 0.9 }} animate={{ opacity: 1, scale: 1 }}
                    transition={{ delay: i * 0.05 }}
                    className="flex flex-col items-center gap-1.5">
                    <Link href={`/anime/${char.animeId}`}>
                      <div className="relative w-full aspect-[3/4] rounded-xl overflow-hidden border border-white/8 cursor-pointer">
                        <img src={char.image} alt={char.name}
                          className="w-full h-full object-cover object-top" loading="lazy" />
                        <div className="absolute inset-0 bg-gradient-to-t from-black/60 to-transparent" />
                        {/* Remove fav button */}
                        <button
                          onClick={e => { e.preventDefault(); e.stopPropagation(); removeCharFav(char.id); }}
                          className="absolute top-1 right-1 w-6 h-6 rounded-full flex items-center justify-center active:scale-90"
                          style={{ background: "rgba(236,72,153,0.85)", backdropFilter: "blur(4px)" }}>
                          <Heart className="w-3 h-3 fill-white text-white" />
                        </button>
                      </div>
                    </Link>
                    <p className="text-[8px] text-white/60 font-bold text-center line-clamp-2 leading-tight px-0.5 w-full">
                      {char.name}
                    </p>
                    <p className="text-[7px] text-primary/60 font-bold text-center line-clamp-1 px-0.5 w-full -mt-0.5">
                      {char.animeName}
                    </p>
                  </motion.div>
                ))}
              </div>
            )}
          </motion.div>
        )}
      </AnimatePresence>
    </main>
  );
}
