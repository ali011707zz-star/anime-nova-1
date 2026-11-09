import { API_BASE } from "@/lib/apiBase";
import { animeHref } from "@/lib/animeLink";
import { useState, useEffect, useCallback, useMemo, useRef } from "react";
import { Link, useLocation } from "wouter";
import { Search, X, ChevronRight, Loader2, Clock } from "lucide-react";

type UpcomingTabId = "all" | "tv" | "movies" | "ova";

const UPCOMING_TABS: { id: UpcomingTabId; label: string; formats: string[] }[] = [
  { id: "all", label: "الأكثر ترقباً", formats: ["TV", "TV_SHORT", "MOVIE", "OVA", "ONA"] },
  { id: "tv", label: "مسلسلات قادمة", formats: ["TV", "TV_SHORT"] },
  { id: "movies", label: "أفلام قادمة", formats: ["MOVIE"] },
  { id: "ova", label: "أوفا وأونا", formats: ["OVA", "ONA"] },
];

const SEASON_AR: Record<string, string> = {
  WINTER: "شتاء",
  SPRING: "ربيع",
  SUMMER: "صيف",
  FALL: "خريف",
};

const UPCOMING_QUERY = `
  query UpcomingCatalog($page: Int, $perPage: Int, $formats: [MediaFormat], $search: String) {
    Page(page: $page, perPage: $perPage) {
      pageInfo { hasNextPage }
      media(
        type: ANIME
        status: NOT_YET_RELEASED
        format_in: $formats
        search: $search
        sort: [POPULARITY_DESC]
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

export default function Upcoming() {
  const [, navigate] = useLocation();
  const [tab, setTab] = useState<UpcomingTabId>("all");
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

  const activeConfig = useMemo(
    () => UPCOMING_TABS.find((entry) => entry.id === tab) ?? UPCOMING_TABS[0],
    [tab],
  );

  const loadPage = useCallback(
    async (nextPage: number, reset: boolean) => {
      if (reset) setLoading(true);
      else setLoadingMore(true);
      try {
        const res = await fetch(`${API_BASE}/api/anilist`, {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({
            query: UPCOMING_QUERY,
            variables: {
              page: nextPage,
              perPage: 24,
              formats: activeConfig.formats,
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
    [activeConfig, debouncedQuery],
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
      {/* Header matching mobile app/upcoming.tsx */}
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
              aria-label="بحث في قادم قريباً"
              className="w-10 h-10 rounded-xl border flex items-center justify-center shrink-0"
              style={{
                backgroundColor: "var(--bg-surface, #111317)",
                borderColor: "var(--border-subtle, rgba(255,255,255,0.08))",
              }}
            >
              {searchOpen ? <X className="w-4 h-4" /> : <Search className="w-4 h-4" />}
            </button>

            <div className="flex-1 text-right">
              <h1 className="text-[20px] font-black leading-tight">قادم قريباً</h1>
              <p className="text-[11px] font-semibold mt-0.5" style={{ color: "var(--text-muted, #94A3B8)" }}>
                الأعمال المعلن عنها والمترقبة قبل بداية عرضها
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
                placeholder="ابحث في الأنميات القادمة..."
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

          {/* Upcoming Tabs */}
          <div className="flex items-center gap-2 overflow-x-auto pt-3 pb-0.5" style={{ scrollbarWidth: "none" }}>
            {UPCOMING_TABS.map((t) => {
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
        </div>
      </div>

      {/* Grid */}
      <div className="max-w-7xl mx-auto px-3.5 pt-4">
        {loading && items.length === 0 ? (
          <div className="flex flex-col items-center justify-center py-24 gap-3">
            <Loader2 className="w-8 h-8 animate-spin text-[#06b6d4]" />
            <p className="text-xs font-semibold" style={{ color: "var(--text-muted, #94A3B8)" }}>
              جاري تحميل الأنميات القادمة...
            </p>
          </div>
        ) : items.length === 0 ? (
          <div className="flex flex-col items-center justify-center py-24 gap-3">
            <Clock className="w-10 h-10 opacity-40" />
            <p className="text-sm font-bold">لا توجد أعمال قادمة مطابقة</p>
          </div>
        ) : (
          <>
            <div className="grid grid-cols-3 sm:grid-cols-4 md:grid-cols-5 lg:grid-cols-6 gap-2.5">
              {items.map((anime, index) => {
                const title = anime.title_ar || anime.title?.english || anime.title?.romaji || "أنمي";
                const seasonBadge =
                  anime.season && anime.seasonYear
                    ? `${SEASON_AR[anime.season] || anime.season} ${anime.seasonYear}`
                    : anime.seasonYear
                      ? `${anime.seasonYear}`
                      : "قريباً";
                return (
                  <Link key={`${anime.id}-${index}`} href={animeHref(anime)}>
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
                        <span className="absolute top-2 right-2 px-2 py-0.5 rounded-full text-[9px] font-extrabold bg-pink-500/90 text-white">
                          {seasonBadge}
                        </span>
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
