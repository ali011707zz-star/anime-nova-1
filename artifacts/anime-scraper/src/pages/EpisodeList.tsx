import { useParams, useLocation } from "wouter";
import { useState, useEffect, useCallback, useRef, useMemo } from "react";
import { ChevronRight, ChevronLeft, Loader2, Search, Eye, EyeOff, Play, Star, MessageCircle, Send, X } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

interface EpComment { id: string; text: string; time: string; }

function getEpComments(animeId: string, ep: number): EpComment[] {
  try { return JSON.parse(localStorage.getItem(`epcomments-${animeId}-${ep}`) || "[]"); }
  catch { return []; }
}
function saveEpComments(animeId: string, ep: number, list: EpComment[]) {
  localStorage.setItem(`epcomments-${animeId}-${ep}`, JSON.stringify(list));
}

const ANIME_QUERY = `
query ($id: Int) {
  Media(id: $id, type: ANIME) {
    id idMal title { romaji english } coverImage { large extraLarge }
    bannerImage episodes duration status nextAiringEpisode { episode }
    averageScore genres
  }
}`;

function getWatched(animeId: string): Set<number> {
  try { return new Set(JSON.parse(localStorage.getItem(`watched-${animeId}`) || "[]")); }
  catch { return new Set(); }
}

const PAGE_SIZE = 100;

/* ── Episode Row ── */
function EpisodeRow({
  n, anime, epData, animeId, watched, commentCount, arEpTitle, onToggleWatched, onWatch, onComment
}: {
  n: number; anime: any; epData: any; animeId: string;
  watched: boolean; commentCount: number; arEpTitle?: string;
  onToggleWatched: (n: number) => void; onWatch: (n: number) => void; onComment: (n: number) => void;
}) {
  const ep = epData?.find((e: any) => e.mal_id === n || e.episode_id === n);
  const thumb = ep?.images?.jpg?.image_url || anime?.coverImage?.large;
  const displayTitle = arEpTitle || null; // Only show Arabic titles — no English episode titles
  const durationMin = anime?.duration || 24;
  const dur = durationMin >= 60
    ? `${Math.floor(durationMin / 60)}:${String(durationMin % 60).padStart(2, "0")}:00`
    : `${String(durationMin).padStart(2, "0")}:00`;

  return (
    <div
      className={`flex items-center gap-2.5 px-3 py-2.5 border-b transition-all active:bg-white/5
        ${watched ? "border-white/4 bg-primary/[0.03]" : "border-white/[0.05]"}`}
    >
      {/* Thumbnail */}
      <button onClick={() => onWatch(n)}
        className="relative shrink-0 w-[86px] h-[49px] rounded-xl overflow-hidden bg-[#1C1C22] border border-white/8 active:scale-95 transition-transform">
        <img src={thumb} alt="" className="w-full h-full object-cover"
          loading="lazy"
          onError={e => { (e.target as HTMLImageElement).src = anime?.coverImage?.large || ""; }} />
        <div className="absolute inset-0 bg-gradient-to-t from-black/50 to-transparent" />
        <div className="absolute bottom-1 left-1 bg-black/75 text-white text-[8px] font-black px-1 py-0.5 rounded-md">
          {dur}
        </div>
        <div className="absolute inset-0 flex items-center justify-center opacity-0 hover:opacity-100 transition-opacity bg-black/20">
          <div className="w-6 h-6 bg-primary/90 rounded-full flex items-center justify-center shadow-lg">
            <Play className="w-3 h-3 fill-white text-white" />
          </div>
        </div>
        {watched && (
          <div className="absolute inset-0 border-2 border-primary/40 rounded-xl" />
        )}
      </button>

      {/* Info */}
      <button onClick={() => onWatch(n)} className="flex-1 min-w-0 text-right">
        <p className={`text-[13px] font-black font-['Cairo'] ${watched ? "text-primary/80" : "text-white/90"}`}>
          الحلقة {n}
        </p>
        {displayTitle && (
          <p className="text-[9px] font-['Cairo'] mt-0.5 line-clamp-2 leading-relaxed text-white/50" dir="rtl">
            {displayTitle}
          </p>
        )}
      </button>

      {/* Comment button */}
      <motion.button
        onClick={e => { e.stopPropagation(); onComment(n); }}
        whileTap={{ scale: 0.82 }}
        className="shrink-0 w-7 h-7 rounded-lg flex flex-col items-center justify-center border border-white/8 bg-white/4 text-white/30 relative"
      >
        <MessageCircle className="w-3.5 h-3.5" />
        {commentCount > 0 && (
          <span className="absolute -top-1 -left-1 min-w-[13px] h-[13px] bg-primary rounded-full text-[7px] font-black text-white flex items-center justify-center px-0.5">
            {commentCount}
          </span>
        )}
      </motion.button>

      {/* Eye icon — with animation */}
      <motion.button
        onClick={e => { e.stopPropagation(); onToggleWatched(n); }}
        whileTap={{ scale: 0.82 }}
        className={`shrink-0 w-7 h-7 rounded-lg flex items-center justify-center border transition-all
          ${watched
            ? "bg-primary/15 border-primary/30 text-primary"
            : "bg-white/4 border-white/8 text-white/20 hover:text-white/45"}`}
      >
        {watched ? <Eye className="w-3.5 h-3.5" /> : <EyeOff className="w-3.5 h-3.5" />}
      </motion.button>
    </div>
  );
}

/* ── Episode Comment Sheet ── */
function EpCommentSheet({ epNum, animeId, onClose }: { epNum: number; animeId: string; onClose: () => void }) {
  const [comments, setComments] = useState<EpComment[]>(() => getEpComments(animeId, epNum));
  const [newText, setNewText] = useState("");
  const inputRef = useRef<HTMLInputElement>(null);

  useEffect(() => { setTimeout(() => inputRef.current?.focus(), 300); }, []);

  function addComment() {
    const text = newText.trim();
    if (!text) return;
    const updated: EpComment[] = [...comments, {
      id: Date.now().toString(),
      text,
      time: new Date().toLocaleTimeString("ar-SA", { hour: "2-digit", minute: "2-digit" }),
    }];
    setComments(updated);
    saveEpComments(animeId, epNum, updated);
    setNewText("");
  }

  return (
    <>
      <motion.div
        initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
        onClick={onClose}
        className="fixed inset-0 bg-black/75 backdrop-blur-sm z-[100]"
      />
      <motion.div
        initial={{ y: "100%" }} animate={{ y: 0 }} exit={{ y: "100%" }}
        transition={{ type: "spring", damping: 30, stiffness: 300 }}
        className="fixed bottom-0 left-0 right-0 h-[70vh] bg-[#0d0d10] rounded-t-[28px] z-[101] flex flex-col border-t border-white/8"
      >
        {/* Header */}
        <div className="flex items-center justify-between px-5 py-4 border-b border-white/6 shrink-0" dir="rtl">
          <div className="flex items-center gap-2">
            <MessageCircle className="w-4 h-4 text-primary" />
            <h2 className="text-sm font-black font-['Cairo']">تعليقات الحلقة {epNum}</h2>
            {comments.length > 0 && (
              <span className="text-[9px] bg-primary/15 text-primary px-2 py-0.5 rounded-full font-black">{comments.length}</span>
            )}
          </div>
          <button onClick={onClose} className="w-8 h-8 bg-white/6 rounded-full flex items-center justify-center active:scale-90">
            <X className="w-4 h-4 text-white/50" />
          </button>
        </div>

        {/* Comments */}
        <div className="flex-1 overflow-y-auto p-4 space-y-3" dir="rtl">
          {comments.length === 0 ? (
            <div className="flex flex-col items-center justify-center h-full gap-3 opacity-30">
              <MessageCircle className="w-10 h-10" />
              <p className="text-sm font-bold font-['Cairo']">لا تعليقات على هذه الحلقة بعد</p>
            </div>
          ) : comments.map(c => (
            <motion.div key={c.id} initial={{ opacity: 0, y: 6 }} animate={{ opacity: 1, y: 0 }} className="flex gap-3">
              <div className="w-8 h-8 rounded-xl bg-gradient-to-br from-primary/40 to-primary/20 flex items-center justify-center text-primary font-black text-sm shrink-0 border border-primary/20">م</div>
              <div className="flex-1 min-w-0">
                <div className="flex items-center gap-2 mb-1">
                  <span className="text-xs font-black font-['Cairo']">مستخدم نوفا</span>
                  <span className="text-[9px] text-white/25">{c.time}</span>
                </div>
                <p className="text-xs text-white/65 bg-white/5 px-3 py-2.5 rounded-2xl border border-white/5 font-['Cairo'] leading-relaxed">{c.text}</p>
              </div>
            </motion.div>
          ))}
        </div>

        {/* Input */}
        <div className="px-4 py-3 border-t border-white/6 shrink-0" dir="rtl">
          <div className="flex items-center gap-2 bg-[#111116] rounded-2xl px-4 py-2.5 border border-white/8">
            <input
              ref={inputRef}
              value={newText}
              onChange={e => setNewText(e.target.value)}
              onKeyDown={e => e.key === "Enter" && addComment()}
              placeholder="اكتب تعليقك على هذه الحلقة..."
              className="flex-1 bg-transparent text-white text-sm outline-none font-['Cairo'] placeholder:text-white/25"
            />
            <motion.button whileTap={{ scale: 0.9 }} onClick={addComment} disabled={!newText.trim()}
              className="w-8 h-8 bg-primary rounded-xl flex items-center justify-center shrink-0 disabled:opacity-40">
              <Send className="w-3.5 h-3.5 text-white" />
            </motion.button>
          </div>
        </div>
      </motion.div>
    </>
  );
}

/* ════════════════════════════════════════════════════════ */
export default function EpisodeListPage() {
  const params = useParams<{ id: string }>();
  const [, navigate] = useLocation();
  const [anime, setAnime]     = useState<any>(null);
  const [loading, setLoading] = useState(true);
  const [epData, setEpData]   = useState<any[]>([]);
  const [search, setSearch]   = useState("");
  const [page, setPage]       = useState(1);
  const [watched, setWatched] = useState<Set<number>>(new Set());
  const [activeCommentEp, setActiveCommentEp] = useState<number | null>(null);
  const [epCommentCounts, setEpCommentCounts] = useState<Record<number, number>>({});
  const [arEpTitles, setArEpTitles] = useState<Record<number, string>>({});
  const translateCtrl = useRef<AbortController | null>(null);

  useEffect(() => {
    if (!params.id) return;
    setLoading(true);
    setEpData([]);
    setPage(1);
    setSearch("");
    setWatched(getWatched(params.id));
    setEpCommentCounts({});
    setActiveCommentEp(null);
    setArEpTitles({});

    fetch("https://graphql.anilist.co", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ query: ANIME_QUERY, variables: { id: parseInt(params.id) } }),
    }).then(r => r.json()).then(d => {
      const a = d.data?.Media;
      setAnime(a);
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
      localStorage.setItem(`watched-${params.id}`, JSON.stringify([...next]));
      return next;
    });
  }, [params.id]);

  function openComment(n: number) { setActiveCommentEp(n); }

  function closeComment() {
    if (activeCommentEp !== null && params.id) {
      const count = getEpComments(params.id, activeCommentEp).length;
      setEpCommentCounts(prev => ({ ...prev, [activeCommentEp]: count }));
    }
    setActiveCommentEp(null);
  }

  function watchEp(n: number) {
    setWatched(prev => {
      const next = new Set(prev);
      next.add(n);
      localStorage.setItem(`watched-${params.id}`, JSON.stringify([...next]));
      return next;
    });
    const t = encodeURIComponent(anime?.title?.romaji || "");
    const eng = encodeURIComponent(anime?.title?.english || "");
    const cvr = encodeURIComponent(anime?.coverImage?.large || anime?.coverImage?.medium || "");
    navigate(`/watch?anime=${params.id}&ep=${n}${t ? `&title=${t}` : ""}${eng ? `&english=${eng}` : ""}${cvr ? `&cover=${cvr}` : ""}`);
  }

  const total = anime
    ? (anime.status === "RELEASING" && anime.nextAiringEpisode?.episode
        ? anime.nextAiringEpisode.episode - 1
        : (anime.episodes || anime.nextAiringEpisode?.episode || 12))
    : 0;
  const allEps = useMemo(() => Array.from({ length: total }, (_, i) => i + 1), [total]);
  const watchedCount = useMemo(() => [...watched].filter(n => n >= 1 && n <= total).length, [watched, total]);
  const pct = total > 0 ? Math.round((watchedCount / total) * 100) : 0;

  const isSearching = search.trim().length > 0;
  const searchNum = isSearching ? parseInt(search.trim()) : NaN;

  const filtered = useMemo(() => {
    if (!isSearching) return allEps;
    return allEps.filter(n => n.toString().includes(search.trim()));
  }, [allEps, search, isSearching]);

  const totalPages = isSearching ? 1 : Math.ceil(total / PAGE_SIZE);
  const currentPage = isSearching ? 1 : Math.min(page, totalPages);

  useEffect(() => {
    if (!isNaN(searchNum) && searchNum >= 1 && searchNum <= total) {
      const targetPage = Math.ceil(searchNum / PAGE_SIZE);
      setPage(targetPage);
    }
  }, [searchNum, total]);

  const displayedEps = useMemo(() => {
    if (isSearching) return filtered;
    const start = (currentPage - 1) * PAGE_SIZE;
    return allEps.slice(start, start + PAGE_SIZE);
  }, [allEps, filtered, isSearching, currentPage]);

  /* ── Load cached Arabic titles + translate missing ones per page ── */
  useEffect(() => {
    if (!params.id || !displayedEps.length) return;

    // 1. Load already-cached titles from localStorage
    const cached: Record<number, string> = {};
    for (const n of displayedEps) {
      const v = localStorage.getItem(`ep-title-ar-${params.id}-${n}`);
      if (v) cached[n] = v;
    }
    if (Object.keys(cached).length > 0) {
      setArEpTitles(prev => ({ ...prev, ...cached }));
    }

    // 2. Collect untranslated English titles for batch translation
    const toTranslate: { n: number; title: string }[] = [];
    for (const n of displayedEps) {
      if (cached[n]) continue; // already have Arabic
      // Get English title from Jikan epData
      const ep = epData?.find((e: any) => e.mal_id === n || e.episode_id === n);
      const engTitle = ep?.title || ep?.title_romanji || null;
      if (engTitle) toTranslate.push({ n, title: engTitle });
    }
    if (!toTranslate.length) return;

    // 3. Batch-translate (join with separator, translate once, split back)
    if (translateCtrl.current) translateCtrl.current.abort();
    const ctrl = new AbortController();
    translateCtrl.current = ctrl;

    const SEP = "\n§§§\n";
    const combined = toTranslate.map(t => t.title).join(SEP);
    fetch(`/api/anime/translate?text=${encodeURIComponent(combined)}&from=en&to=ar`, { signal: ctrl.signal })
      .then(r => r.ok ? r.json() : null)
      .then((d: any) => {
        if (!d?.translated) return;
        const parts: string[] = d.translated.split(/\n§§§\n|\n§§§|\n ---§§§--- \n/);
        const updates: Record<number, string> = {};
        toTranslate.forEach((t, i) => {
          const ar = parts[i]?.trim();
          if (ar && ar.length > 1 && ar !== t.title) {
            localStorage.setItem(`ep-title-ar-${params.id}-${t.n}`, ar);
            updates[t.n] = ar;
          }
        });
        if (Object.keys(updates).length > 0) {
          setArEpTitles(prev => ({ ...prev, ...updates }));
        }
      })
      .catch(() => {});

    return () => ctrl.abort();
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [displayedEps, epData, params.id]);

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

  return (
    <main className="bg-[#09090B] min-h-screen text-white" dir="rtl">

      {/* ── HERO BANNER ── */}
      <div className="relative w-full overflow-hidden" style={{ height: 220 }}>
        <motion.img
          initial={{ scale: 1.08, opacity: 0 }}
          animate={{ scale: 1, opacity: 1 }}
          transition={{ duration: 0.25, ease: [0.22, 1, 0.36, 1] }}
          src={anime.bannerImage || anime.coverImage?.extraLarge || anime.coverImage?.large}
          alt=""
          className="w-full h-full object-cover"
        />
        <div className="absolute inset-0 bg-gradient-to-t from-[#09090B] via-[#09090B]/60 to-transparent" />
        <div className="absolute inset-0 bg-gradient-to-r from-[#09090B]/20 to-transparent" />

        <button onClick={() => { navigate(params.id ? `/anime/${params.id}` : "/"); }}
          className="absolute top-4 right-4 w-9 h-9 bg-black/50 backdrop-blur-md rounded-2xl flex items-center justify-center border border-white/10 active:scale-90 transition-transform">
          <ChevronRight className="w-4 h-4 text-white" />
        </button>

        <div className="absolute bottom-0 right-0 left-0 px-4 pb-4">
          <div className="flex items-end gap-3">
            <img src={anime.coverImage?.large} alt=""
              className="w-16 rounded-xl object-cover border border-white/10 shadow-xl shrink-0"
              style={{ height: 88 }} />
            <div className="flex-1 min-w-0 pb-1">
              <h1 className="text-base font-black font-['Cairo'] text-white line-clamp-1 drop-shadow-lg">
                {anime.title?.romaji}
              </h1>
              <div className="flex items-center gap-2 mt-1 flex-wrap">
                <span className="text-[9px] text-primary font-black">{total} حلقة</span>
                {watchedCount > 0 && (
                  <span className="text-[9px] text-emerald-400 font-bold flex items-center gap-0.5">
                    <Eye className="w-2.5 h-2.5" /> {watchedCount} مشاهدة
                  </span>
                )}
                {anime.averageScore && (
                  <span className="text-[9px] text-yellow-400 font-bold flex items-center gap-0.5">
                    <Star className="w-2.5 h-2.5 fill-current" /> {(anime.averageScore / 10).toFixed(1)}
                  </span>
                )}
              </div>
            </div>
          </div>
        </div>
      </div>

      {/* ── Sticky header + search ── */}
      <div className="sticky top-0 z-50 bg-[#09090B]/97 backdrop-blur-xl border-b border-white/6">
        <div className="flex items-center gap-3 px-4 pt-3 pb-2">
          <div className="flex-1 flex items-center gap-2">
            <div className="flex-1 h-1.5 bg-white/8 rounded-full overflow-hidden">
              <motion.div
                className="h-full bg-primary rounded-full"
                initial={{ width: 0 }}
                animate={{ width: `${pct}%` }}
                transition={{ duration: 0.25, ease: "easeOut" }}
              />
            </div>
            <span className="text-[9px] text-white/30 font-bold shrink-0">{pct}%</span>
          </div>
        </div>
        <div className="px-4 pb-3">
          <div className="flex items-center gap-2 bg-[#1C1C22] rounded-xl px-3 border border-white/6">
            <Search className="w-4 h-4 text-white/25 shrink-0" />
            <input
              type="number"
              value={search}
              onChange={e => setSearch(e.target.value)}
              placeholder="اذهب لحلقة..."
              className="flex-1 bg-transparent py-2.5 text-sm text-white outline-none font-['Cairo'] placeholder:text-white/25"
            />
          </div>
        </div>
        {/* Page range label */}
        {!isSearching && totalPages > 1 && (
          <div className="px-4 pb-2 flex items-center justify-between">
            <span className="text-[10px] text-white/30 font-bold font-['Cairo']">
              الحلقات {(currentPage - 1) * PAGE_SIZE + 1}–{Math.min(currentPage * PAGE_SIZE, total)}
            </span>
            <span className="text-[10px] text-white/20 font-bold">
              صفحة {currentPage} / {totalPages}
            </span>
          </div>
        )}
      </div>

      {/* ── Episode list ── */}
      {displayedEps.length === 0 ? (
        <div className="flex items-center justify-center py-16">
          <p className="text-white/25 text-sm font-['Cairo']">لا توجد حلقات مطابقة</p>
        </div>
      ) : (
        <div className="pb-32">
          {displayedEps.map(n => (
            <EpisodeRow
              key={n} n={n} anime={anime} epData={epData}
              animeId={params.id!}
              watched={watched.has(n)}
              commentCount={epCommentCounts[n] ?? getEpComments(params.id!, n).length}
              arEpTitle={arEpTitles[n]}
              onToggleWatched={toggleWatched}
              onWatch={watchEp}
              onComment={openComment}
            />
          ))}
        </div>
      )}

      {/* ── Pagination controls ── */}
      {!isSearching && totalPages > 1 && (
        <div className="flex items-center justify-center gap-3 py-6 px-4 pb-28">
          <button
            onClick={() => { setPage(p => Math.max(1, p - 1)); window.scrollTo(0,0); }}
            disabled={currentPage <= 1}
            className="flex items-center gap-1.5 px-4 py-2.5 bg-white/6 border border-white/10 rounded-xl text-sm font-bold font-['Cairo'] disabled:opacity-30 active:scale-95 transition-transform"
          >
            <ChevronRight className="w-4 h-4" />
            السابق
          </button>

          {/* Page number pills */}
          <div className="flex items-center gap-1">
            {Array.from({ length: Math.min(totalPages, 5) }, (_, i) => {
              let p: number;
              if (totalPages <= 5) p = i + 1;
              else if (currentPage <= 3) p = i + 1;
              else if (currentPage >= totalPages - 2) p = totalPages - 4 + i;
              else p = currentPage - 2 + i;
              return (
                <button key={p} onClick={() => { setPage(p); window.scrollTo(0,0); }}
                  className={`w-8 h-8 rounded-lg text-xs font-black transition-all
                    ${p === currentPage ? "bg-primary text-white" : "bg-white/6 text-white/40 hover:bg-white/10"}`}>
                  {p}
                </button>
              );
            })}
          </div>

          <button
            onClick={() => { setPage(p => Math.min(totalPages, p + 1)); window.scrollTo(0,0); }}
            disabled={currentPage >= totalPages}
            className="flex items-center gap-1.5 px-4 py-2.5 bg-white/6 border border-white/10 rounded-xl text-sm font-bold font-['Cairo'] disabled:opacity-30 active:scale-95 transition-transform"
          >
            التالي
            <ChevronLeft className="w-4 h-4" />
          </button>
        </div>
      )}

      {/* ── Per-episode comment sheet ── */}
      <AnimatePresence>
        {activeCommentEp !== null && params.id && (
          <EpCommentSheet
            key={activeCommentEp}
            epNum={activeCommentEp}
            animeId={params.id}
            onClose={closeComment}
          />
        )}
      </AnimatePresence>
    </main>
  );
}
