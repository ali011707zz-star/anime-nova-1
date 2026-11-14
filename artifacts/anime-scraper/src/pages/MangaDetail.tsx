import { API_BASE } from "@/lib/apiBase";
import { useState, useEffect } from "react";
import { useRoute, useLocation, useSearch } from "wouter";
import { ChevronRight, BookOpen, Star, Loader2, X, ChevronLeft, Tv, Download } from "lucide-react";

export default function MangaDetail() {
  const [, params] = useRoute("/manga/:id");
  const [, navigate] = useLocation();
  const searchStr = useSearch();
  const sp = new URLSearchParams(searchStr);
  const mangaId = params?.id ? decodeURIComponent(params.id) : "";
  const source = sp.get("source") || "manga";
  const fallbackTitle = sp.get("title") || "المانجا";
  const fallbackCover = sp.get("cover") || "";

  const [details, setDetails] = useState<any>(null);
  const [chapters, setChapters] = useState<any[]>([]);
  const [loading, setLoading] = useState(true);
  const [activeChapter, setActiveChapter] = useState<any | null>(null);
  const [pages, setPages] = useState<string[]>([]);
  const [pagesLoading, setPagesLoading] = useState(false);

  useEffect(() => {
    if (!mangaId) return;
    setLoading(true);
    fetch(
      `${API_BASE}/api/manga/details?id=${encodeURIComponent(mangaId)}&source=${encodeURIComponent(source)}&title=${encodeURIComponent(fallbackTitle)}`,
    )
      .then((r) => r.json())
      .then((d) => {
        setDetails(d?.manga || d || null);
        const ch = Array.isArray(d?.chapters)
          ? d.chapters
          : Array.isArray(d?.manga?.chapters)
            ? d.manga.chapters
            : [];
        setChapters(ch);
      })
      .catch(() => {})
      .finally(() => setLoading(false));
  }, [mangaId, source, fallbackTitle]);

  const openChapter = async (ch: any) => {
    setActiveChapter(ch);
    setPages([]);
    setPagesLoading(true);
    try {
      const chId = ch.id || ch.url || ch.slug || ch.number;
      const r = await fetch(
        `${API_BASE}/api/manga/chapter?id=${encodeURIComponent(String(chId))}&mangaId=${encodeURIComponent(mangaId)}&source=${encodeURIComponent(source)}`,
      );
      const d = await r.json();
      const imgs = Array.isArray(d?.pages)
        ? d.pages
        : Array.isArray(d?.images)
          ? d.images
          : [];
      setPages(imgs.map((p: any) => (typeof p === "string" ? p : p?.url || p?.src || "")).filter(Boolean));
    } catch {
      setPages([]);
    } finally {
      setPagesLoading(false);
    }
  };

  const title =
    details?.title_ar ||
    details?.title?.english ||
    details?.title?.romaji ||
    details?.title ||
    fallbackTitle;
  const cover =
    details?.coverImage?.extraLarge ||
    details?.coverImage?.large ||
    details?.cover ||
    details?.poster ||
    fallbackCover;
  const description = (details?.description_ar || details?.description || details?.synopsis || "")
    .replace(/<[^>]+>/g, "")
    .trim();

  return (
    <main
      className="min-h-screen pb-28 font-['Cairo']"
      style={{
        backgroundColor: "var(--bg-base, #090A0C)",
        color: "var(--text-main, #F3F4F6)",
      }}
      dir="rtl"
    >
      {/* Top Bar */}
      <div
        className="sticky top-0 z-20 backdrop-blur-xl border-b px-4 py-3 flex items-center gap-3"
        style={{
          backgroundColor: "var(--bg-base, #090A0C)",
          borderColor: "var(--border-subtle, rgba(255,255,255,0.08))",
        }}
      >
        <button
          onClick={() => navigate("/manga")}
          aria-label="رجوع"
          className="w-10 h-10 rounded-xl border flex items-center justify-center shrink-0 active:scale-95 transition-transform"
          style={{
            backgroundColor: "var(--bg-surface, #111317)",
            borderColor: "var(--border-subtle, rgba(255,255,255,0.08))",
          }}
        >
          <ChevronRight className="w-5 h-5 text-white/80" />
        </button>
        <h1 className="text-[16px] font-bold truncate flex-1 text-right">{title}</h1>
      </div>

      {loading ? (
        <div className="flex flex-col items-center justify-center py-24 gap-3">
          <Loader2 className="w-8 h-8 animate-spin text-[#06b6d4]" />
          <p className="text-xs font-semibold" style={{ color: "var(--text-muted, #94A3B8)" }}>
            جاري تحميل تفاصيل المانجا...
          </p>
        </div>
      ) : (
        <div className="max-w-5xl mx-auto px-4 pt-5">
          {/* Info Header */}
          <div
            className="flex flex-col sm:flex-row gap-4 p-4 rounded-2xl border"
            style={{
              backgroundColor: "var(--bg-surface, #111317)",
              borderColor: "var(--border-subtle, rgba(255,255,255,0.08))",
            }}
          >
            <div className="w-32 sm:w-40 aspect-[2/3] rounded-xl overflow-hidden shrink-0 mx-auto sm:mx-0 bg-black/30">
              {cover ? (
                <img src={cover} alt={title} className="w-full h-full object-cover" />
              ) : (
                <div className="w-full h-full flex items-center justify-center">
                  <BookOpen className="w-8 h-8 opacity-30" />
                </div>
              )}
            </div>
            <div className="flex-1 text-right space-y-2.5">
              <div className="flex items-center gap-2 flex-wrap">
                <span className="px-2.5 py-0.5 rounded-full text-[11px] font-bold bg-emerald-500/20 text-emerald-400 border border-emerald-500/30">
                  {source === "manhwa" ? "مانهوا" : "مانجا"}
                </span>
                {details?.averageScore && (
                  <span className="flex items-center gap-1 px-2.5 py-0.5 rounded-full text-[11px] font-bold bg-amber-500/20 text-amber-300">
                    <Star className="w-3 h-3 fill-current" />
                    {(details.averageScore / 10).toFixed(1)}
                  </span>
                )}
              </div>
              <h2 className="text-xl font-black">{title}</h2>
              {description && (
                <p
                  className="text-xs leading-relaxed line-clamp-5"
                  style={{ color: "var(--text-secondary, #CBD5E1)" }}
                >
                  {description}
                </p>
              )}
              {chapters.length > 0 && (
                <div className="pt-2">
                  <button
                    onClick={() => void openChapter(chapters[0])}
                    className="px-5 py-2.5 rounded-xl text-xs font-extrabold text-white bg-[#06b6d4] active:scale-95 transition-transform"
                  >
                    ابدأ القراءة الآن ({chapters.length} فصل)
                  </button>
                </div>
              )}
            </div>
          </div>

          {/* Chapters List */}
          <div className="mt-6">
            <div className="flex items-center justify-between mb-3">
              <div className="flex items-center gap-2">
                <div className="w-1 h-[18px] rounded-sm bg-[#06b6d4]" />
                <h3 className="text-[16px] font-extrabold">الفصول المتاحة ({chapters.length})</h3>
              </div>
            </div>

            {chapters.length === 0 ? (
              <div
                className="p-6 sm:p-8 rounded-3xl border text-center space-y-4 shadow-xl"
                style={{
                  backgroundColor: "var(--bg-surface, #111317)",
                  borderColor: "rgba(6, 182, 212, 0.25)",
                }}
              >
                <div className="w-14 h-14 rounded-2xl bg-cyan-500/15 border border-cyan-400/30 flex items-center justify-center mx-auto text-cyan-400">
                  <BookOpen className="w-7 h-7" />
                </div>
                <div>
                  <span className="inline-block px-3 py-1 rounded-full text-[11px] font-black bg-cyan-500/20 text-cyan-300 border border-cyan-500/30 mb-2 font-['Cairo']">
                    محتوى حصري للتطبيق
                  </span>
                  <h4 className="text-lg sm:text-xl font-black text-white font-['Cairo']">
                    المانجا والمانهوا حصرياً في تطبيق Anime NOVA
                  </h4>
                  <p className="text-xs sm:text-sm text-white/70 max-w-lg mx-auto leading-relaxed mt-1.5 font-['Cairo']">
                    حمّل التطبيق الآن واستمتع بقراءة فصول {title} وجميع أعمال المانجا والمانهوا الحصرية بجودة عالية وسرعة فائقة.
                  </p>
                </div>

                <div className="flex flex-col sm:flex-row items-center justify-center gap-3 pt-2">
                  <a
                    href="/Anime-Nova.apk?v=1.0.8"
                    download
                    className="w-full sm:w-auto px-6 py-3 rounded-2xl text-xs sm:text-sm font-black text-white bg-gradient-to-l from-cyan-600 to-cyan-500 flex items-center justify-center gap-2 shadow-lg shadow-cyan-900/30 active:scale-95 transition-transform font-['Cairo']"
                  >
                    <Download className="w-4 h-4" />
                    تحميل تطبيق الهاتف (Android)
                  </a>
                  <a
                    href="/nova.apk"
                    download
                    className="w-full sm:w-auto px-6 py-3 rounded-2xl text-xs sm:text-sm font-black text-white bg-white/10 hover:bg-white/15 border border-white/15 flex items-center justify-center gap-2 active:scale-95 transition-transform font-['Cairo']"
                  >
                    <Tv className="w-4 h-4 text-cyan-400" />
                    تحميل تطبيق التلفاز (TV APK)
                  </a>
                </div>

                {/* Downloader TV Code Box */}
                <div
                  className="mt-4 p-4 rounded-2xl border text-right max-w-md mx-auto"
                  style={{
                    backgroundColor: "rgba(6, 182, 212, 0.06)",
                    borderColor: "rgba(6, 182, 212, 0.22)",
                  }}
                >
                  <div className="flex items-center justify-between gap-3">
                    <div className="flex items-center gap-2">
                      <Tv className="w-5 h-5 text-cyan-400 shrink-0" />
                      <div>
                        <p className="text-xs font-bold text-white font-['Cairo']">كود تلفزيون أندرويد عبر Downloader</p>
                        <p className="text-[10px] text-white/50 font-['Cairo']">اكتب هذا الرمز داخل تطبيق Downloader على التلفاز</p>
                      </div>
                    </div>
                    <span className="px-3 py-1.5 rounded-xl bg-cyan-400 text-black font-black font-mono text-base tracking-wider shadow">
                      2576388
                    </span>
                  </div>
                  <div className="mt-2.5 pt-2 border-t border-cyan-400/15 flex items-center justify-between text-[11px] font-['Cairo']">
                    <span className="text-white/60">رابط التحميل المباشر:</span>
                    <a
                      href="https://aftv.news/2576388"
                      target="_blank"
                      rel="noreferrer"
                      className="font-mono text-cyan-300 underline hover:text-white"
                    >
                      aftv.news/2576388
                    </a>
                  </div>
                </div>
              </div>
            ) : (
              <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-2.5">
                {chapters.map((ch, idx) => (
                  <button
                    key={ch.id || idx}
                    onClick={() => void openChapter(ch)}
                    className="flex items-center justify-between p-3.5 rounded-xl border text-right transition-transform active:scale-[0.98]"
                    style={{
                      backgroundColor: "var(--bg-card, #14171C)",
                      borderColor: "var(--border-subtle, rgba(255,255,255,0.08))",
                    }}
                  >
                    <div>
                      <p className="text-[13px] font-bold">
                        {ch.title || `الفصل ${ch.number ?? idx + 1}`}
                      </p>
                      {ch.date && (
                        <p className="text-[10px] mt-0.5" style={{ color: "var(--text-muted, #94A3B8)" }}>
                          {ch.date}
                        </p>
                      )}
                    </div>
                    <ChevronLeft className="w-4 h-4 text-[#06b6d4]" />
                  </button>
                ))}
              </div>
            )}
          </div>
        </div>
      )}

      {/* Chapter Reader Modal */}
      {activeChapter && (
        <div className="fixed inset-0 z-[300] bg-black flex flex-col" dir="rtl">
          <div className="flex items-center justify-between px-4 py-3 bg-black/90 border-b border-white/10">
            <span className="text-sm font-bold text-white truncate">
              {activeChapter.title || `الفصل ${activeChapter.number || ""}`}
            </span>
            <button
              onClick={() => setActiveChapter(null)}
              aria-label="إغلاق القارئ"
              className="w-9 h-9 rounded-xl bg-white/10 text-white flex items-center justify-center"
            >
              <X className="w-5 h-5" />
            </button>
          </div>
          <div className="flex-1 overflow-y-auto">
            {pagesLoading ? (
              <div className="flex flex-col items-center justify-center py-24 gap-3 text-white">
                <Loader2 className="w-8 h-8 animate-spin text-[#06b6d4]" />
                <p className="text-xs">جاري تحميل صفحات الفصل...</p>
              </div>
            ) : pages.length === 0 ? (
              <div className="flex flex-col items-center justify-center py-24 gap-3 text-white/60">
                <p className="text-sm">تعذر تحميل صفحات هذا الفصل حالياً.</p>
              </div>
            ) : (
              <div className="max-w-3xl mx-auto flex flex-col items-center">
                {pages.map((src, i) => (
                  <img
                    key={i}
                    src={src}
                    alt={`صفحة ${i + 1}`}
                    loading="lazy"
                    className="w-full h-auto block"
                  />
                ))}
              </div>
            )}
          </div>
        </div>
      )}
    </main>
  );
}
