import { API_BASE } from "@/lib/apiBase";
import { animeHref } from "@/lib/animeLink";
import { useState, useEffect, useCallback, useMemo, useRef } from "react";
import { Link, useLocation } from "wouter";
import { Search, X, ChevronRight, Star, Loader2, Calendar } from "lucide-react";

type SeasonName = "WINTER" | "SPRING" | "SUMMER" | "FALL";
type SeasonTabId = "current" | "next" | "previous" | "all";

const SEASON_LABELS: Record<SeasonName, string> = {
  WINTER: "شتاء",
  SPRING: "ربيع",
  SUMMER: "صيف",
  FALL: "خريف",
};

const SEASON_ORDER: SeasonName[] = ["WINTER", "SPRING", "SUMMER", "FALL"];
const SEASON_TABS: { id: SeasonTabId; label: string }[] = [
  { id: "current", label: "الموسم الحالي" },
  { id: "next", label: "الموسم القادم" },
  { id: "previous", label: "الموسم السابق" },
  { id: "all", label: "جميع المواسم" },
];

function getCurrentSeasonInfo(): { season: SeasonName; year: number } {
  const now = new Date();
  const month = now.getMonth() + 1;
  const year = now.getFullYear();
  if (month <= 3) return { season: "WINTER", year };
  if (month <= 6) return { season: "SPRING", year };
  if (month <= 9) return { season: "SUMMER", year };
  return { season: "FALL", year };
}

function shiftSeason(season: SeasonName, year: number, delta: -1 | 1): { season: SeasonName; year: number } {
  const index = SEASON_ORDER.indexOf(season);
  const nextIndex = index + delta;
  if (nextIndex < 0) return { season: "FALL", year: year - 1 };
  if (nextIndex >= SEASON_ORDER.length) return { season: "WINTER", year: year + 1 };
  return { season: SEASON_ORDER[nextIndex], year };
}

const SEASON_QUERY = `
  query SeasonCatalog($page: Int, $perPage: Int, $season: MediaSeason, $seasonYear: Int, $search: String) {
    Page(page: $page, perPage: $perPage) {
      pageInfo { hasNextPage }
      media(
        type: ANIME
        season: $season
        seasonYear: $seasonYear
        search: $search
        format_in: [TV, TV_SHORT, MOVIE, OVA, ONA]
        sort: [POPULARITY_DESC, SCORE_DESC]
        isAdult: false
        genre_not_in: ["Hentai"]
      ) {
        id
        title { romaji english native }
        coverImage { large extraLarge }
        averageScore
        episodes
        status
        format
        season
        seasonYear
      }
    }
  }
`;

export default function Seasons() {
  const [, navigate] = useLocation();
  const current = useMemo(() => getCurrentSeasonInfo(), []);
  const nextSeason = useMemo(() => shiftSeason(current.season, current.year, 1), [current]);
  const prevSeason = useMemo(() => shiftSeason(current.season, current.year, -1), [current]);
  const years = useMemo(
    () => Array.from({ length: 18 }, (_, idx) => current.year + 1 - idx),
    [current.year],
  );

  const [tab, setTab] = useState<SeasonTabId>("current");
  const [selectedYear, setSelectedYear] = useState(current.year);
  const [selectedSeason, setSelectedSeason] = useState<SeasonName>(current.season);
  const [searchOpen, setSearchOpen] = useState(false);
  const [query, setQuery] = useState("");
  const [debouncedQuery, setDebouncedQuery] = useState("");
  const [items, setItems] = useState<any[]>([]);
  const [page, setPage] = useState(1);
  const [hasMore, setHasMore] = useState(true);
  const [loading, setLoading] = useState(true);
  const [loadingMore, setLoadingMore] = useState(false);
  const loaderRef = useRef<HTMLDivElement | null>(null);

  useEffect(() => {
    const t = setTimeout(() => setDebouncedQuery(query.trim()), 350);
    return () => clearTimeout(t);
  }, [query]);

  const activeWindow = useMemo(() => {
    if (tab === "current") return current;
    if (tab === "next") return nextSeason;
    if (tab === "previous") return prevSeason;
    return { season: selectedSeason, year: selectedYear };
  }, [current, nextSeason, prevSeason, selectedSeason, selectedYear, tab]);

  const subtitle = `${SEASON_LABELS[activeWindow.season]} ${activeWindow.year}`;

  const loadPage = useCallback(
    async (nextPage: number, reset: boolean) => {
      if (reset) setLoading(true);
      else setLoadingMore(true);
      try {
        const res = await fetch(`${API_BASE}/api/anilist`, {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({
            query: SEASON_QUERY,
            variables: {
              page: nextPage,
              perPage: 24,
              season: activeWindow.season,
              seasonYear: activeWindow.year,
              search: debouncedQuery || undefined,
            },
          }),
        });
        const json = await res.json();
        const media = json?.data?.Page?.media || [];
        setItems((prev) => (reset ? media : [...prev, ...media]));
        setHasMore(Boolean(json?.data?.Page?.pageInfo?.hasNextPage));
        setPage(nextPage);
      } catch {
        if (reset) setItems([]);
      } finally {
        setLoading(false);
        setLoadingMore(false);
      }
    },
    [activeWindow.season, activeWindow.year, debouncedQuery],
  );

  useEffect(() => {
    void loadPage(1, true);
  }, [loadPage]);

  useEffect(() => {
    if (!loaderRef.current) return;
    const obs = new IntersectionObserver(
      (entries) => {
        if (entries[0]?.isIntersecting && hasMore && !loading && !loadingMore) {
          void loadPage(page + 1, false);
        }
      },
      { threshold: 0.1 },
    );
    obs.observe(loaderRef.current);
    return () => obs.disconnect();
  }, [hasMore, loading, loadingMore, page, loadPage]);

  return (
    <main
      className="min-h-screen pb-28 font-['Cairo']"
      style={{
        backgroundColor: "var(--bg-base, #090A0C)",
        color: "var(--text-main, #F3F4F6)",
      }}
      dir="rtl"
    >
      {/* Header matching mobile app/seasons.tsx */}
      <div
        className="sticky top-0 z-20 backdrop-blur-xl border-b px-4 pt-3.5 pb-3"
        style={{
          backgroundColor: "var(--bg-base, #090A0C)",
          borderColor: "var(--border-subtle, rgba(255,255,255,0.08))",
        }}
      >
        <div className="max-w-7xl mx-auto">
          <div className="flex items-center justify-between gap-2.5">
            <button
              onClick={() => {
                if (searchOpen) {
                  setQuery("");
                  setSearchOpen(false);
                } else {
                  setSearchOpen(true);
                }
              }}
              aria-label="بحث في المواسم"
              className="w-10 h-10 rounded-xl border flex items-center justify-center shrink-0"
              style={{
                backgroundColor: "var(--bg-surface, #111317)",
                borderColor: "var(--border-subtle, rgba(255,255,255,0.08))",
              }}
            >
              {searchOpen ? <X className="w-4 h-4" /> : <Search className="w-4 h-4" />}
            </button>

            <div className="flex-1 text-right">
              <h1 className="text-[20px] font-black leading-tight">المواسم</h1>
              <p className="text-[11px] font-semibold mt-0.5" style={{ color: "var(--text-muted, #94A3B8)" }}>
                تصفح مواسم الأنمي حسب السنة والفصل • {subtitle}
              </p>
            </div>

            <button
              onClick={() => navigate("/")}
              aria-label="رجوع"
              className="w-10 h-10 rounded-xl border flex items-center justify-center shrink-0"
              style={{
                backgroundColor: "var(--bg-surface, #111317)",
                borderColor: "var(--border-subtle, rgba(255,255,255,0.08))",
              }}
            >
              <ChevronRight className="w-5 h-5" />
            </button>
            <div className="flex-1 text-right">
              <h1 className="text-[20px] font-black leading-tight">المواسم</h1>
              <p className="text-[11px] font-semibold mt-0.5" style={{ color: "var(--text-muted, #94A3B8)" }}>
                تصفح مواسم الأنمي حسب السنة والفصل • {subtitle}
              </p>
            </div>
            <button
              onClick={() => {
                if (searchOpen) {
                  setQuery("");
                  setSearchOpen(false);
                } else {
                  setSearchOpen(true);
                }
              }}
              aria-label="بحث في المواسم"
              className="w-10 h-10 rounded-xl border flex items-center justify-center shrink-0"
              style={{
                backgroundColor: "var(--bg-surface, #111317)",
                borderColor: "var(--border-subtle, rgba(255,255,255,0.08))",
              }}
            >
              {searchOpen ? <X className="w-4 h-4" /> : <Search className="w-4 h-4" />}
            </button>
          </div>

          {searchOpen && (
            <div
              className="mt-3 flex items-center gap-2 h-[42px] rounded-xl px-3 border"
              style={{
                backgroundColor: "var(--bg-surface, #111317)",
                borderColor: "var(--border-subtle, rgba(255,255,255,0.08))",
              }}
            >
              <Search className="w-4 h-4 shrink-0" style={{ color: "var(--text-muted, #94A3B8)" }} />
              <input
                value={query}
                onChange={(e) => setQuery(e.target.value)}
                placeholder={`ابحث داخل موسم ${subtitle}...`}
                autoFocus
                className="flex-1 bg-transparent text-[13px] font-semibold outline-none text-right"
              />
              {query && (
                <button onClick={() => setQuery("")}>
                  <X className="w-4 h-4" style={{ color: "var(--text-muted, #94A3B8)" }} />
                </button>
              )}
            </div>
          )}

          {/* Season Tabs */}
          <div className="flex items-center gap-2 overflow-x-auto pt-3 pb-0.5" style={{ scrollbarWidth: "none" }}>
            {SEASON_TABS.map((t) => {
              const active = tab === t.id;
              return (
                <button
                  key={t.id}
                  onClick={() => setTab(t.id)}
                  className="shrink-0 px-3.5 py-2 rounded-full text-[12px] font-extrabold border transition-all whitespace-nowrap"
                  style={{
                    backgroundColor: active ? "var(--accent-primary, #7654C8)" : "var(--bg-surface, #111317)",
                    borderColor: active ? "var(--accent-primary, #7654C8)" : "var(--border-subtle, rgba(255,255,255,0.08))",
                    color: active ? "#FFFFFF" : "var(--text-secondary, #CBD5E1)",
                  }}
                >
                  {t.label}
                </button>
              );
            })}
          </div>

          {/* All Seasons Picker */}
          {tab === "all" && (
            <div className="pt-2.5 space-y-2">
              <div className="flex items-center gap-2 overflow-x-auto" style={{ scrollbarWidth: "none" }}>
                {SEASON_ORDER.map((s) => {
                  const active = selectedSeason === s;
                  return (
                    <button
                      key={s}
                      onClick={() => setSelectedSeason(s)}
                      className="shrink-0 px-3 py-1.5 rounded-full text-[12px] font-extrabold border whitespace-nowrap"
                      style={{
                        backgroundColor: active ? "var(--accent-primary, #7654C8)" : "var(--bg-surface, #111317)",
                        borderColor: active ? "var(--accent-primary, #7654C8)" : "var(--border-subtle, rgba(255,255,255,0.08))",
                        color: active ? "#FFFFFF" : "var(--text-secondary, #CBD5E1)",
                      }}
                    >
                      {SEASON_LABELS[s]}
                    </button>
                  );
                })}
              </div>
              <div className="flex items-center gap-2 overflow-x-auto" style={{ scrollbarWidth: "none" }}>
                {years.map((y) => {
                  const active = selectedYear === y;
                  return (
                    <button
                      key={y}
                      onClick={() => setSelectedYear(y)}
                      className="shrink-0 px-3 py-1.5 rounded-full text-[12px] font-extrabold border font-mono whitespace-nowrap"
                      style={{
                        backgroundColor: active ? "#06b6d4" : "var(--bg-surface, #111317)",
                        borderColor: active ? "#06b6d4" : "var(--border-subtle, rgba(255,255,255,0.08))",
                        color: active ? "#FFFFFF" : "var(--text-secondary, #CBD5E1)",
                      }}
                    >
                      {y}
                    </button>
                  );
                })}
              </div>
            </div>
          )}
        </div>
      </div>

      {/* Grid */}
      <div className="max-w-7xl mx-auto px-3.5 pt-4">
        {loading && items.length === 0 ? (
          <div className="flex flex-col items-center justify-center py-24 gap-3">
            <Loader2 className="w-8 h-8 animate-spin text-[#06b6d4]" />
            <p className="text-xs font-semibold" style={{ color: "var(--text-muted, #94A3B8)" }}>
              جاري تحميل أعمال الموسم...
            </p>
          </div>
        ) : items.length === 0 ? (
          <div className="flex flex-col items-center justify-center py-24 gap-3">
            <Calendar className="w-10 h-10 opacity-40" />
            <p className="text-sm font-bold">لا توجد أعمال مسجلة لهذا الموسم</p>
          </div>
        ) : (
          <>
            <div className="grid grid-cols-3 sm:grid-cols-4 md:grid-cols-5 lg:grid-cols-6 gap-2.5">
              {items.map((anime) => {
                const title = anime.title_ar || anime.title?.english || anime.title?.romaji || "أنمي";
                return (
                  <Link key={anime.id} href={animeHref(anime)}>
                    <div className="cursor-pointer group">
                      <div
                        className="relative aspect-[2/3] rounded-[14px] overflow-hidden border"
                        style={{
                          backgroundColor: "var(--bg-card, #14171C)",
                          borderColor: "var(--border-subtle, rgba(255,255,255,0.08))",
                        }}
                      >
                        {anime.coverImage?.large && (
                          <img
                            src={anime.coverImage.large}
                            alt={title}
                            loading="lazy"
                            className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300"
                          />
                        )}
                        <div className="absolute inset-0 bg-gradient-to-t from-black/90 via-black/15 to-transparent" />
                        <span className="absolute top-2 right-2 px-2 py-0.5 rounded-full text-[9px] font-extrabold bg-[#06b6d4]/90 text-white">
                          {subtitle}
                        </span>
                        {anime.averageScore && (
                          <div className="absolute top-2 left-2 flex items-center gap-0.5 px-1.5 py-0.5 rounded-md bg-black/75 text-yellow-400 text-[9px] font-bold">
                            <Star className="w-2.5 h-2.5 fill-current" />
                            <span>{(anime.averageScore / 10).toFixed(1)}</span>
                          </div>
                        )}
                        <div className="absolute bottom-0 inset-x-0 p-2 text-right">
                          <p className="text-white text-[11px] font-bold line-clamp-2 leading-4">
                            {title}
                          </p>
                        </div>
                      </div>
                    </div>
                  </Link>
                );
              })}
            </div>
            <div ref={loaderRef} className="py-8 flex items-center justify-center">
              {loadingMore && <Loader2 className="w-6 h-6 animate-spin text-[#06b6d4]" />}
            </div>
          </>
        )}
      </div>
    </main>
  );
}
