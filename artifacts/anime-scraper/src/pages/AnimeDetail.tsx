import { useParams, useLocation } from "wouter";
import { useState, useEffect } from "react";
import { Link } from "wouter";
import {
  ChevronRight, Play, Star, MessageCircle, Bookmark,
  X, Loader2
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

const DETAIL_Q = `
query ($id: Int) {
  Media(id: $id, type: ANIME) {
    id idMal title { romaji english native }
    description bannerImage
    coverImage { large extraLarge }
    averageScore status episodes duration seasonYear season format
    genres
    studios(isMain: true) { nodes { name } }
    characters(perPage: 8, sort: [ROLE, RELEVANCE]) {
      edges { node { id name { full } image { large } } }
    }
    recommendations(perPage: 6, sort: [RATING_DESC]) {
      nodes {
        mediaRecommendation {
          id title { romaji } coverImage { large } averageScore
        }
      }
    }
  }
}`;

const STATUS: Record<string, string> = {
  RELEASING: "يُبث حالياً", FINISHED: "مكتمل",
  NOT_YET_RELEASED: "قريباً", CANCELLED: "ملغى", HIATUS: "متوقف",
};
const SEASON: Record<string, string> = {
  WINTER: "شتاء", SPRING: "ربيع", SUMMER: "صيف", FALL: "خريف",
};
const FORMAT: Record<string, string> = {
  TV: "مسلسل", MOVIE: "فيلم", OVA: "OVA", ONA: "ONA",
  SPECIAL: "خاص", MUSIC: "موسيقي", TV_SHORT: "قصير",
};
const GENRE: Record<string, string> = {
  "Action": "أكشن", "Adventure": "مغامرة", "Comedy": "كوميدي",
  "Drama": "دراما", "Fantasy": "فانتازيا", "Horror": "رعب",
  "Mecha": "ميكا", "Music": "موسيقى", "Mystery": "غموض",
  "Psychological": "نفسي", "Romance": "رومانسي", "Sci-Fi": "خيال علمي",
  "Slice of Life": "حياة يومية", "Sports": "رياضي",
  "Supernatural": "خوارق", "Thriller": "إثارة", "Ecchi": "إيتشي",
  "Harem": "حريم", "Isekai": "إيسيكاي", "Military": "عسكري",
  "School": "مدرسي", "Magic": "سحر", "Historical": "تاريخي",
  "Demons": "شياطين", "Samurai": "ساموراي", "Space": "فضاء",
  "Mahou Shoujo": "ماهو شوجو", "Super Power": "قوى خارقة",
  "Vampire": "مصاصي دماء", "Game": "ألعاب", "Kids": "أطفال",
  "Parody": "محاكاة ساخرة", "Police": "بوليسي", "Seinen": "سيينين",
  "Shoujo": "شوجو", "Shounen": "شونين",
};

export default function AnimeDetail() {
  const params = useParams<{ id: string }>();
  const [, navigate] = useLocation();
  const [anime, setAnime]           = useState<any>(null);
  const [loading, setLoading]       = useState(true);
  const [showFull, setShowFull]     = useState(false);
  const [showComments, setShowComments] = useState(false);
  const [comments, setComments]     = useState<any[]>([]);
  const [newComment, setNewComment] = useState("");
  const [saved, setSaved]           = useState(false);
  const [descAr, setDescAr]         = useState<string | null>(null);
  const [translating, setTranslating] = useState(false);

  useEffect(() => {
    if (!params.id) return;
    setLoading(true);
    setDescAr(null);
    const savedList: number[] = JSON.parse(localStorage.getItem("savedAnime") || "[]");
    setSaved(savedList.includes(parseInt(params.id)));
    const savedC = localStorage.getItem(`comments-${params.id}`);
    if (savedC) setComments(JSON.parse(savedC));

    fetch("https://graphql.anilist.co", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ query: DETAIL_Q, variables: { id: parseInt(params.id) } }),
    }).then(r => r.json()).then(d => {
      const a = d.data?.Media;
      setAnime(a);
      if (a?.description) {
        const cached = localStorage.getItem(`desc-ar-${params.id}`);
        if (cached) { setDescAr(cached); return; }
        // Strip HTML tags and decode HTML entities
        const stripped = a.description
          .replace(/<br\s*\/?>/gi, " ")
          .replace(/<[^>]*>/gm, "")
          .replace(/&amp;/g, "&").replace(/&lt;/g, "<").replace(/&gt;/g, ">")
          .replace(/&quot;/g, '"').replace(/&#039;/g, "'").replace(/&nbsp;/g, " ")
          .replace(/\s+/g, " ").trim();
        const raw = stripped.substring(0, 480);
        setTranslating(true);
        // Try two translation services — MyMemory first, then LibreTranslate fallback
        (async () => {
          try {
            const r = await fetch(`/api/anime/translate?text=${encodeURIComponent(raw)}`);
            const d = await r.json();
            if (d.translated && d.translated !== raw && d.translated.length > 10) {
              setDescAr(d.translated);
              localStorage.setItem(`desc-ar-${params.id}`, d.translated);
            } else {
              // If same as input (not translated), show cleaned original
              setDescAr(stripped);
            }
          } catch {
            setDescAr(stripped);
          } finally {
            setTranslating(false);
          }
        })();
      }
    }).finally(() => setLoading(false));
  }, [params.id]);

  const toggleSave = () => {
    const list: number[] = JSON.parse(localStorage.getItem("savedAnime") || "[]");
    const id = parseInt(params.id!);
    const upd = saved ? list.filter(i => i !== id) : [...list, id];
    localStorage.setItem("savedAnime", JSON.stringify(upd));
    setSaved(!saved);
  };

  const addComment = () => {
    if (!newComment.trim()) return;
    const c = { id: Date.now(), text: newComment, user: "مستخدم نوفا", time: "الآن" };
    const upd = [c, ...comments];
    setComments(upd);
    localStorage.setItem(`comments-${params.id}`, JSON.stringify(upd));
    setNewComment("");
  };

  if (loading) return (
    <div className="bg-[#09090B] min-h-screen flex items-center justify-center">
      <Loader2 className="w-10 h-10 text-primary animate-spin" />
    </div>
  );
  if (!anime) return (
    <div className="bg-[#09090B] min-h-screen flex items-center justify-center">
      <div className="text-center" dir="rtl">
        <p className="text-red-400 font-bold font-['Cairo'] mb-4">الأنمي غير موجود</p>
        <button onClick={() => window.history.back()} className="text-primary font-['Cairo'] text-sm font-bold">← رجوع</button>
      </div>
    </div>
  );

  const descText = descAr || anime.description?.replace(/<[^>]*>/gm, "") || "لا توجد قصة متاحة";

  return (
    <main className="bg-[#09090B] min-h-screen pb-32 text-white" dir="rtl">
      {/* Hero Banner */}
      <div className="relative w-full overflow-hidden" style={{ height: 260 }}>
        <img src={anime.bannerImage || anime.coverImage?.extraLarge || anime.coverImage?.large}
          alt="" className="w-full h-full object-cover" />
        <div className="absolute inset-0 bg-gradient-to-t from-[#09090B] via-[#09090B]/50 to-black/20" />
        <button onClick={() => window.history.back()}
          className="absolute top-5 right-4 w-10 h-10 bg-black/50 backdrop-blur-md rounded-full flex items-center justify-center border border-white/10 z-10 active:scale-90">
          <ChevronRight className="w-5 h-5 text-white" />
        </button>
      </div>

      {/* Cover + Info */}
      <div className="px-4 -mt-16 relative z-10 flex gap-4 items-end">
        <div className="w-28 h-40 rounded-2xl overflow-hidden border-2 border-[#18181B] shadow-2xl shrink-0">
          <img src={anime.coverImage?.large} alt="" className="w-full h-full object-cover" />
        </div>
        <div className="flex-1 pb-2 min-w-0">
          <h1 className="text-lg font-black text-white line-clamp-2 leading-tight font-['Cairo']">{anime.title.romaji}</h1>
          {anime.title.english && <p className="text-[10px] text-white/40 mt-0.5 line-clamp-1">{anime.title.english}</p>}
          <div className="flex flex-wrap gap-1.5 mt-2">
            {anime.averageScore && (
              <span className="bg-yellow-500/20 text-yellow-400 px-2 py-0.5 rounded-lg text-[10px] font-black flex items-center gap-1">
                <Star className="w-2.5 h-2.5 fill-current" /> {(anime.averageScore / 10).toFixed(1)}
              </span>
            )}
            <span className={`px-2 py-0.5 rounded-lg text-[10px] font-black font-['Cairo'] ${anime.status === "RELEASING" ? "bg-green-500/20 text-green-400" : "bg-white/10 text-white/50"}`}>
              {STATUS[anime.status] || anime.status}
            </span>
            {anime.format && FORMAT[anime.format] && (
              <span className="bg-white/8 text-white/50 px-2 py-0.5 rounded-lg text-[10px] font-black font-['Cairo']">{FORMAT[anime.format]}</span>
            )}
            {anime.episodes && (
              <span className="bg-primary/20 text-primary px-2 py-0.5 rounded-lg text-[10px] font-black font-['Cairo']">{anime.episodes} حلقة</span>
            )}
          </div>
        </div>
      </div>

      {/* Genres */}
      <div className="px-4 mt-4 flex flex-wrap gap-2">
        {anime.genres?.slice(0, 6).map((g: string) => (
          <span key={g} className="text-[10px] font-bold bg-primary/10 text-primary px-2.5 py-1 rounded-xl border border-primary/15 font-['Cairo']">
            {GENRE[g] || g}
          </span>
        ))}
        {anime.seasonYear && (
          <span className="text-[10px] font-bold bg-white/5 text-white/40 px-2.5 py-1 rounded-xl border border-white/8 font-['Cairo']">
            {SEASON[anime.season] || ""} {anime.seasonYear}
          </span>
        )}
      </div>

      {/* Actions */}
      <div className="px-4 mt-5 flex flex-col gap-2.5">
        {/* مشاهدة الآن */}
        <Link href={`/episodes/${params.id}`}>
          <button className="w-full h-14 bg-primary text-white rounded-2xl font-black flex items-center justify-center gap-3 shadow-lg shadow-primary/25 active:scale-[0.98] transition-all text-base font-['Cairo']">
            <Play className="w-5 h-5 fill-white" /> مشاهدة الآن
          </button>
        </Link>
        <div className="flex gap-2.5">
          <button onClick={() => setShowComments(true)}
            className="flex-1 h-12 bg-[#1C1C22] text-white rounded-2xl text-xs font-bold flex items-center justify-center gap-2 border border-white/6 active:scale-[0.98] transition-all font-['Cairo']">
            <MessageCircle className="w-4 h-4 text-primary" /> التعليقات ({comments.length})
          </button>
          <button onClick={toggleSave}
            className={`flex-1 h-12 rounded-2xl text-xs font-bold flex items-center justify-center gap-2 border active:scale-[0.98] transition-all font-['Cairo'] ${saved ? "bg-primary/20 border-primary/30 text-primary" : "bg-[#1C1C22] border-white/6 text-white/70"}`}>
            <Bookmark className={`w-4 h-4 ${saved ? "fill-current" : ""}`} /> {saved ? "محفوظ" : "حفظ"}
          </button>
        </div>
      </div>

      {/* Synopsis — Arabic */}
      <div className="mt-7 px-4">
        <div className="flex items-center gap-2 mb-3">
          <div className="w-1 h-5 bg-primary rounded-full" />
          <h2 className="text-base font-black font-['Cairo']">القصة</h2>
          {translating && <Loader2 className="w-3.5 h-3.5 text-primary animate-spin mr-1" />}
          {descAr && !translating && (
            <span className="text-[9px] bg-emerald-500/15 text-emerald-400 border border-emerald-500/20 px-2 py-0.5 rounded-lg font-black">مترجم</span>
          )}
        </div>
        <div className="bg-[#1C1C22]/60 border border-white/5 rounded-2xl p-4">
          <p className={`text-[#C4C4C4] leading-relaxed text-sm font-['Cairo'] ${!showFull ? "line-clamp-4" : ""}`}>
            {descText}
          </p>
          {descText.length > 200 && (
            <button onClick={() => setShowFull(p => !p)} className="mt-2 text-primary text-xs font-black font-['Cairo']">
              {showFull ? "عرض أقل ▲" : "عرض المزيد ▼"}
            </button>
          )}
        </div>
      </div>

      {/* Characters */}
      {anime.characters?.edges?.length > 0 && (
        <div className="mt-7">
          <div className="flex items-center gap-2 mb-3 px-4">
            <div className="w-1 h-5 bg-primary rounded-full" />
            <h2 className="text-base font-black font-['Cairo']">الشخصيات</h2>
          </div>
          <div className="flex gap-3 overflow-x-auto px-4 pb-2 no-scrollbar">
            {anime.characters.edges.map((e: any) => (
              <div key={e.node.id} className="shrink-0 w-[68px] text-center">
                <img src={e.node.image.large} alt="" className="w-[68px] h-[68px] rounded-2xl object-cover border border-white/10 mb-1.5" />
                <p className="text-[9px] text-white/50 font-bold truncate">{e.node.name.full}</p>
              </div>
            ))}
          </div>
        </div>
      )}

      {/* Recommendations */}
      {anime.recommendations?.nodes?.filter((n: any) => n.mediaRecommendation).length > 0 && (
        <div className="mt-7 px-4">
          <div className="flex items-center gap-2 mb-3">
            <div className="w-1 h-5 bg-primary rounded-full" />
            <h2 className="text-base font-black font-['Cairo']">أنمي مشابه</h2>
          </div>
          <div className="grid grid-cols-3 gap-3">
            {anime.recommendations.nodes.map((n: any) => {
              const rec = n.mediaRecommendation;
              if (!rec) return null;
              return (
                <Link key={rec.id} href={`/anime/${rec.id}`}>
                  <div className="cursor-pointer group">
                    <div className="relative aspect-[2/3] rounded-2xl overflow-hidden bg-[#1C1C22] border border-white/6">
                      <img src={rec.coverImage.large} alt="" className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500" />
                      {rec.averageScore && (
                        <div className="absolute top-1.5 right-1.5 bg-black/70 text-yellow-400 text-[8px] px-1.5 py-0.5 rounded-lg font-black">
                          ⭐ {(rec.averageScore / 10).toFixed(1)}
                        </div>
                      )}
                    </div>
                    <h3 className="mt-1.5 text-[10px] text-white/60 font-bold truncate">{rec.title.romaji}</h3>
                  </div>
                </Link>
              );
            })}
          </div>
        </div>
      )}

      {/* Comments Sheet */}
      <AnimatePresence>
        {showComments && (
          <>
            <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
              onClick={() => setShowComments(false)} className="fixed inset-0 bg-black/80 backdrop-blur-sm z-[100]" />
            <motion.div initial={{ y: "100%" }} animate={{ y: 0 }} exit={{ y: "100%" }}
              transition={{ type: "spring", damping: 30, stiffness: 300 }}
              className="fixed bottom-0 left-0 right-0 h-[80vh] bg-[#111116] rounded-t-[28px] z-[101] flex flex-col border-t border-white/8">
              <div className="flex items-center justify-between p-5 border-b border-white/5">
                <h2 className="text-lg font-black font-['Cairo']">التعليقات ({comments.length})</h2>
                <button onClick={() => setShowComments(false)} className="w-8 h-8 bg-white/5 rounded-full flex items-center justify-center">
                  <X className="w-4 h-4" />
                </button>
              </div>
              <div className="flex-1 overflow-y-auto p-5 space-y-4">
                {comments.length === 0 ? (
                  <div className="flex flex-col items-center justify-center h-full opacity-20 gap-2">
                    <MessageCircle className="w-10 h-10" />
                    <p className="text-sm font-bold font-['Cairo']">كن أول من يعلق!</p>
                  </div>
                ) : comments.map(c => (
                  <div key={c.id} className="flex gap-3">
                    <div className="w-9 h-9 rounded-xl bg-primary/20 flex items-center justify-center text-primary font-black text-sm shrink-0">م</div>
                    <div>
                      <div className="flex items-center gap-2 mb-1">
                        <span className="text-xs font-black font-['Cairo']">{c.user}</span>
                        <span className="text-[9px] text-white/30">{c.time}</span>
                      </div>
                      <p className="text-xs text-white/70 bg-white/5 p-3 rounded-2xl border border-white/5 font-['Cairo']">{c.text}</p>
                    </div>
                  </div>
                ))}
              </div>
              <div className="p-4 border-t border-white/5" dir="rtl">
                <div className="flex gap-2 bg-[#09090B] rounded-2xl p-2 pr-4 border border-white/8">
                  <input value={newComment} onChange={e => setNewComment(e.target.value)}
                    onKeyDown={e => e.key === "Enter" && addComment()}
                    placeholder="اكتب تعليقك..." className="flex-1 bg-transparent text-white text-sm outline-none font-['Cairo']" />
                  <button onClick={addComment} className="bg-primary text-white px-4 py-2 rounded-xl text-xs font-black font-['Cairo']">نشر</button>
                </div>
              </div>
            </motion.div>
          </>
        )}
      </AnimatePresence>
    </main>
  );
}
