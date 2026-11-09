import { API_BASE } from "@/lib/apiBase";
import { useState, useEffect, useCallback, useRef } from "react";
import { Link, useLocation, useSearch } from "wouter";
import { Search, X, ChevronRight, BookOpen, Star, Loader2 } from "lucide-react";
import { motion } from "framer-motion";

type MangaTabId = "manga" | "manhwa" | "ongoing" | "completed";

const MANGA_TABS: { id: MangaTabId; label: string }[] = [
  { id: "manga", label: "المانجا" },
  { id: "manhwa", label: "المانهوا" },
  { id: "ongoing", label: "مستمرة" },
  { id: "completed", label: "مكتملة" },
];

export default function Manga() {
  const [, navigate] = useLocation();
  const searchStr = useSearch();
  const initialSource = new URLSearchParams(searchStr).get("source");
  const [tab, setTab] = useState<MangaTabId>(
    initialSource === "manhwa" ? "manhwa" : "manga",
  );
  const [searchOpen, setSearchOpen] = useState(false);
  const [query, setQuery] = useState("");
  const [debouncedQuery, setDebouncedQuery] = useState("");
  const [items, setItems] = useState<any[]>([]);
  const [page, setPage] = useState(1);
  const [hasMore, setHasMore] = useState(true);
  const [loading, setLoading] = useState(true);
  const [loadingMore, setLoadingMore] = useState(false);
  const [error, setError] = useState("");
  const loaderRef = useRef<HTMLDivElement | null>(null);

  useEffect(() => {
    const t = setTimeout(() => setDebouncedQuery(query.trim()), 350);
    return () => clearTimeout(t);
  }, [query]);

  const loadPage = useCallback(
    async (nextPage: number, reset: boolean) => {
      if (reset) {
        setLoading(true);
        setError("");
      } else {
        setLoadingMore(true);
      }
      try {
        const sourceParam = tab === "manhwa" ? "manhwa" : "manga";
        const statusParam =
          tab === "ongoing"
            ? "&status=releasing"
            : tab === "completed"
              ? "&status=finished"
              : "";
        const qParam = debouncedQuery
          ? `&q=${encodeURIComponent(debouncedQuery)}`
          : "";
        const res = await fetch(
          `${API_BASE}/api/manga/catalog?source=${sourceParam}&page=${nextPage}${statusParam}${qParam}`,
        );
        if (!res.ok) throw new Error("تعذر تحميل قائمة المانجا");
        const data = await res.json();
        const rawList = Array.isArray(data?.items)
          ? data.items
          : Array.isArray(data?.results)
            ? data.results
            : [];
        setItems((prev) => (reset ? rawList : [...prev, ...rawList]));
        setHasMore(Boolean(data?.hasNextPage ?? rawList.length >= 18));
        setPage(nextPage);
      } catch (err: any) {
        if (reset) setError(err?.message || "تعذر تحميل المانجا");
      } finally {
        setLoading(false);
        setLoadingMore(false);
      }
    },
    [tab, debouncedQuery],
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
      {/* Unified CatalogPageHeader matching mobile app/manga.tsx */}
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
              aria-label="بحث في المانجا"
              className="w-10 h-10 rounded-xl border flex items-center justify-center shrink-0 active:scale-95 transition-transform"
              style={{
                backgroundColor: "var(--bg-surface, #111317)",
                borderColor: "var(--border-subtle, rgba(255,255,255,0.08))",
                color: "var(--text-main, #F3F4F6)",
              }}
            >
              {searchOpen ? <X className="w-4 h-4" /> : <Search className="w-4 h-4" />}
            </button>

            <div className="flex-1 text-right">
              <h1 className="text-[20px] font-black leading-tight">المانجا والمانهوا</h1>
              <p
                className="text-[11px] font-semibold mt-0.5"
                style={{ color: "var(--text-muted, #94A3B8)" }}
              >
                فصول مترجمة بالعربية مع قارئ مدمج سريع
              </p>
            </div>

            <button
              onClick={() => navigate("/")}
              aria-label="رجوع"
              className="w-10 h-10 rounded-xl border flex items-center justify-center shrink-0 active:scale-95 transition-transform"
              style={{
                backgroundColor: "var(--bg-surface, #111317)",
                borderColor: "var(--border-subtle, rgba(255,255,255,0.08))",
                color: "var(--text-main, #F3F4F6)",
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
                placeholder="ابحث عن مانجا أو مانهوا..."
                autoFocus
                className="flex-1 bg-transparent text-[13px] font-semibold outline-none text-right"
                style={{ color: "var(--text-main, #F3F4F6)" }}
              />
              {query && (
                <button onClick={() => setQuery("")} aria-label="مسح البحث">
                  <X className="w-4 h-4" style={{ color: "var(--text-muted, #94A3B8)" }} />
                </button>
              )}
            </div>
          )}

          {/* CatalogTabs matching mobile */}
          <div className="flex items-center gap-2 overflow-x-auto pt-3 pb-0.5" style={{ scrollbarWidth: "none" }}>
            {MANGA_TABS.map((t) => {
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
            <p className="text-[13px] font-semibold" style={{ color: "var(--text-muted, #94A3B8)" }}>
              جاري تحميل المانجا...
            </p>
          </div>
        ) : error && items.length === 0 ? (
          <div className="flex flex-col items-center justify-center py-24 gap-3 text-center">
            <BookOpen className="w-10 h-10 opacity-40" />
            <p className="text-[13px] font-bold">{error}</p>
            <button
              onClick={() => void loadPage(1, true)}
              className="px-4 py-2 rounded-full text-xs font-bold text-white"
              style={{ backgroundColor: "var(--accent-primary, #7654C8)" }}
            >
              إعادة المحاولة
            </button>
          </div>
        ) : items.length === 0 ? (
          <div className="flex flex-col items-center justify-center py-24 gap-3 text-center">
            <BookOpen className="w-10 h-10 opacity-40" />
            <p className="text-[14px] font-bold">لا توجد نتائج مطابقة</p>
          </div>
        ) : (
          <>
            <div className="grid grid-cols-3 sm:grid-cols-4 md:grid-cols-5 lg:grid-cols-6 gap-2.5">
              {items.map((item, idx) => {
                const id = item.id || item.slug || idx;
                const title = item.title_ar || item.title?.english || item.title?.romaji || item.title || "مانجا";
                const cover = item.coverImage?.large || item.cover || item.poster || "";
                const score = item.averageScore ? (item.averageScore / 10).toFixed(1) : item.rating ? Number(item.rating).toFixed(1) : null;
                const isManhwa = tab === "manhwa" || item.countryOfOrigin === "KR" || item.source === "manhwa";
                const detailHref = `/manga/${encodeURIComponent(String(id))}?source=${isManhwa ? "manhwa" : "manga"}&title=${encodeURIComponent(title)}&cover=${encodeURIComponent(cover)}`;

                return (
                  <Link key={`${id}-${idx}`} href={detailHref}>
                    <motion.div whileTap={{ scale: 0.96 }} className="cursor-pointer group">
                      <div
                        className="relative aspect-[2/3] rounded-[14px] overflow-hidden border"
                        style={{
                          backgroundColor: "var(--bg-card, #14171C)",
                          borderColor: "var(--border-subtle, rgba(255,255,255,0.08))",
                        }}
                      >
                        {cover ? (
                          <img
                            src={cover}
                            alt={title}
                            loading="lazy"
                            className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300"
                            onError={(e) => {
                              (e.currentTarget as HTMLImageElement).style.display = "none";
                            }}
                          />
                        ) : (
                          <div className="w-full h-full flex items-center justify-center">
                            <BookOpen className="w-7 h-7 opacity-25" />
                          </div>
                        )}
                        <div className="absolute inset-0 bg-gradient-to-t from-black/90 via-black/15 to-transparent" />

                        <span
                          className="absolute top-2 right-2 px-2 py-0.5 rounded-full text-[9px] font-extrabold text-white"
                          style={{
                            backgroundColor: isManhwa ? "rgba(245,158,11,0.9)" : "rgba(16,185,129,0.88)",
                          }}
                        >
                          {isManhwa ? "مانهوا" : "مانجا"}
                        </span>

                        {score && (
                          <div className="absolute top-2 left-2 flex items-center gap-0.5 px-1.5 py-0.5 rounded-md bg-black/75 text-yellow-400 text-[9px] font-bold">
                            <Star className="w-2.5 h-2.5 fill-current" />
                            <span>{score}</span>
                          </div>
                        )}

                        <div className="absolute bottom-0 inset-x-0 p-2 text-right">
                          <p className="text-white text-[11px] font-bold line-clamp-2 leading-4">
                            {title}
                          </p>
                        </div>
                      </div>
                    </motion.div>
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
