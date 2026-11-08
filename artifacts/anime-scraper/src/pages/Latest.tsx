import { API_BASE } from "@/lib/apiBase";
import { useCallback, useEffect, useMemo, useState } from "react";
import { Link, useLocation } from "wouter";
import { ChevronRight, RotateCw, Star, Tv, Calendar } from "lucide-react";

const CACHE_KEY = "nova-latest-episodes-v4";

const RATING_QUERY = `
  query LatestEpisodeRatings($ids: [Int]) {
    Page {
      media(id_in: $ids, type: ANIME) {
        id
        averageScore
      }
    }
  }
`;

type LatestFilter = "all" | "today" | "top";

function normalizeLatestEpisodeItem(item: any, fallbackSource = "anslayer"): any {
  const rawAniListId = Number(item?.anilistId ?? item?.anilist_id ?? item?.animeId ?? 0);
  const rawAnimeSlayerId = Number(
    item?.anslayerId ??
      item?.anime_id ??
      (item?.source === "anslayer" ? item?.animeId : 0) ??
      0,
  );
  const rawAwAnimeId = item?.awAnimeId ?? item?.aw_anime_id ?? "";
  const animeId = Number.isInteger(rawAniListId) && rawAniListId > 0 ? rawAniListId : 0;
  const anslayerId = Number.isInteger(rawAnimeSlayerId) && rawAnimeSlayerId > 0 ? rawAnimeSlayerId : 0;
  const name = String(item?.name ?? item?.title ?? "").trim();
  const titleVariants = Array.from(
    new Set(
      [
        ...(Array.isArray(item?.titleVariants) ? item.titleVariants : []),
        item?.romaji,
        item?.english,
        item?.native,
        name,
      ].filter((v): v is string => typeof v === "string" && v.trim().length > 1),
    ),
  );
  const titleAr =
    typeof item?.title_ar === "string" && /[\u0600-\u06FF]/.test(item.title_ar)
      ? item.title_ar.trim()
      : typeof item?.titleAr === "string" && /[\u0600-\u06FF]/.test(item.titleAr)
        ? item.titleAr.trim()
        : "";
  const updatedAt =
    item?.updatedAt ??
    item?.updated_at ??
    item?.latest_episode_at ??
    item?.latest_episode_date ??
    item?.published_at ??
    item?.imported_at ??
    null;

  return {
    ...item,
    animeId,
    anilistId: animeId || undefined,
    anslayerId,
    awAnimeId: String(rawAwAnimeId || "").trim(),
    source: item?.source || fallbackSource,
    name,
    titleAr,
    title_ar: titleAr,
    cover: String(item?.cover ?? item?.poster ?? "").trim(),
    romaji: String(item?.romaji ?? "").trim(),
    english: String(item?.english ?? "").trim(),
    native: String(item?.native ?? "").trim(),
    titleVariants,
    averageScore: Number.isFinite(Number(item?.averageScore)) ? Number(item.averageScore) : null,
    updatedAt,
  };
}

function timestamp(value: unknown): number | null {
  if (typeof value === "number" && Number.isFinite(value)) {
    return value < 1_000_000_000_000 ? value * 1000 : value;
  }
  if (typeof value !== "string" || !value.trim()) return null;
  const parsed = Date.parse(value);
  return Number.isFinite(parsed) ? parsed : null;
}

function isToday(value: unknown): boolean {
  if (value === "NEW") return true;
  const valueMs = timestamp(value);
  if (valueMs === null) return false;
  const date = new Date(valueMs);
  const now = new Date();
  return (
    date.getFullYear() === now.getFullYear() &&
    date.getMonth() === now.getMonth() &&
    date.getDate() === now.getDate()
  );
}

function timeAgo(value: unknown): string {
  if (value === "NEW") return "جديد اليوم";
  const valueMs = timestamp(value);
  if (valueMs === null) return "تحديث حديث";
  const minutes = Math.max(0, Math.floor((Date.now() - valueMs) / 60_000));
  if (minutes < 60) return `منذ ${Math.max(minutes, 1)} دقيقة`;
  const hours = Math.floor(minutes / 60);
  if (hours < 24) return `منذ ${hours} ساعة`;
  const days = Math.floor(hours / 24);
  return `منذ ${days} يوم`;
}

function watchHref(item: any): string {
  const titles = Array.from(
    new Set(
      [
        ...(item.titleVariants || []),
        item.romaji,
        item.english,
        item.native,
        item.name,
      ].filter((v): v is string => typeof v === "string" && v.trim().length > 1),
    ),
  );
  return (
    `/watch?anime=${encodeURIComponent(String(item.animeId || 0))}` +
    `&anilistId=${encodeURIComponent(String(item.anilistId || item.animeId || 0))}` +
    `&anslayerId=${encodeURIComponent(String(item.anslayerId || ""))}` +
    `&awAnimeId=${encodeURIComponent(String(item.awAnimeId || ""))}` +
    `&ep=${encodeURIComponent(String(item.episode))}` +
    `&totalEps=${encodeURIComponent(String(item.episode))}` +
    `&title=${encodeURIComponent(item.romaji || item.name || "")}` +
    `&english=${encodeURIComponent(item.english || "")}` +
    `&native=${encodeURIComponent(item.native || "")}` +
    `&titles=${encodeURIComponent(JSON.stringify(titles))}` +
    `&cover=${encodeURIComponent(item.cover || "")}` +
    `&titleAr=${encodeURIComponent(item.titleAr || "")}` +
    `&site=${encodeURIComponent(item.source || "anslayer")}` +
    `&fromLatest=1&latestSource=${encodeURIComponent(item.source || "anslayer")}`
  );
}

export default function Latest() {
  const [, navigate] = useLocation();
  const [items, setItems] = useState<any[]>([]);
  const [filter, setFilter] = useState<LatestFilter>("all");
  const [loading, setLoading] = useState(true);
  const [refreshing, setRefreshing] = useState(false);
  const [error, setError] = useState("");

  const load = useCallback(async (force = false) => {
    if (force) setRefreshing(true);
    else setLoading(true);
    setError("");
    try {
      if (!force) {
        try {
          const cached = localStorage.getItem(CACHE_KEY);
          if (cached) {
            const parsed = JSON.parse(cached);
            if (Array.isArray(parsed) && parsed.length) {
              setItems(
                parsed
                  .map((it) => normalizeLatestEpisodeItem(it))
                  .filter((it) => it.source === "anslayer"),
              );
            }
          }
        } catch {}
      }

      const res = await fetch(`${API_BASE}/api/anime/anslayer-latest`, {
        cache: "no-store",
      });
      if (!res.ok) throw new Error("تعذّر تحميل أحدث الحلقات");
      const payload = await res.json();
      const raw = Array.isArray(payload) ? payload : payload?.items || [];
      const fresh = raw
        .map((it: any) => normalizeLatestEpisodeItem(it, "anslayer"))
        .filter(
          (it: any) =>
            (it.animeId > 0 || it.anslayerId > 0 || Boolean(it.awAnimeId)) &&
            it.name &&
            Number(it.episode) > 0,
        );
      setItems(fresh);
      try {
        localStorage.setItem(CACHE_KEY, JSON.stringify(fresh));
      } catch {}

      const ids = Array.from(new Set(fresh.map((it: any) => it.animeId).filter((id: number) => id > 0)));
      if (ids.length) {
        try {
          const r = await fetch(`${API_BASE}/api/anilist`, {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({ query: RATING_QUERY, variables: { ids: ids.slice(0, 50) } }),
          });
          const d = await r.json();
          const mediaList = d?.data?.Page?.media || [];
          const scoreMap = new Map<number, number | null>(
            mediaList.map((m: any) => [m.id, m.averageScore ?? null]),
          );
          const withScores = fresh.map((it: any) => ({
            ...it,
            averageScore: scoreMap.get(it.animeId) ?? it.averageScore ?? null,
          }));
          setItems(withScores);
          try {
            localStorage.setItem(CACHE_KEY, JSON.stringify(withScores));
          } catch {}
        } catch {}
      }
    } catch (err: any) {
      setError(err?.message || "تعذّر تحميل أحدث الحلقات");
    } finally {
      setLoading(false);
      setRefreshing(false);
    }
  }, []);

  useEffect(() => {
    void load(false);
  }, [load]);

  const visibleItems = useMemo(() => {
    if (filter === "today") {
      const todayItems = items.filter((it) => isToday(it.updatedAt));
      return todayItems.length ? todayItems : items;
    }
    if (filter === "top") {
      return [...items]
        .filter((it) => (it.averageScore ?? 0) > 0)
        .sort((a, b) => (b.averageScore ?? 0) - (a.averageScore ?? 0));
    }
    return items;
  }, [filter, items]);

  return (
    <main className="min-h-screen bg-[#020617] text-white pb-28 font-['Cairo']" dir="rtl">
      {/* Header matching mobile app/latest.tsx */}
      <div className="sticky top-0 z-20 bg-[#020617]/95 backdrop-blur-xl px-4 pt-4 pb-3 border-b border-white/[0.07]">
        <div className="flex items-start justify-between gap-3">
          <div className="flex items-start gap-2.5 flex-1">
            <button
              onClick={() => navigate("/")}
              className="w-10 h-10 rounded-xl bg-[#0f172a] border border-white/10 flex items-center justify-center active:scale-95 transition-transform shrink-0"
              aria-label="رجوع"
            >
              <ChevronRight className="w-5 h-5 text-slate-200" />
            </button>
            <div className="flex-1 text-right">
              <div className="flex items-center gap-2 flex-wrap">
                <h1 className="text-[21px] font-black text-slate-50 leading-7">أحدث الحلقات</h1>
                <span
                  className="px-2.5 py-0.5 rounded-full text-[10px] font-bold text-sky-400"
                  style={{
                    backgroundColor: "rgba(2, 132, 199, 0.25)",
                    border: "1px solid #0284c7",
                  }}
                >
                  مباشر
                </span>
              </div>
              <p className="text-[11px] font-semibold text-slate-400 mt-0.5">
                حلقات مضافة حديثاً مع تشغيل مباشر
              </p>
            </div>
          </div>

          <button
            onClick={() => void load(true)}
            className="w-10 h-10 rounded-xl bg-[#0f172a] border border-white/10 flex items-center justify-center active:scale-95 transition-transform shrink-0"
            aria-label="تحديث أحدث الحلقات"
          >
            <RotateCw className={`w-4 h-4 text-sky-400 ${refreshing ? "animate-spin" : ""}`} />
          </button>
        </div>

        {/* Filter pills matching mobile app/latest.tsx */}
        <div className="flex items-center gap-2 mt-3">
          {(
            [
              ["all", "الكل"],
              ["today", "اليوم"],
              ["top", "الأعلى تقييماً"],
            ] as const
          ).map(([key, label]) => {
            const active = filter === key;
            return (
              <button
                key={key}
                onClick={() => setFilter(key)}
                className="px-4 py-1.5 rounded-full text-[12px] font-bold transition-colors"
                style={{
                  backgroundColor: active ? "#0284c7" : "#0f172a",
                  border: `1px solid ${active ? "#38bdf8" : "rgba(255,255,255,0.08)"}`,
                  color: active ? "#ffffff" : "#94a3b8",
                }}
              >
                {label}
              </button>
            );
          })}
        </div>
      </div>

      {/* Grid matching mobile app/latest.tsx */}
      <div className="px-3.5 pt-3.5">
        {loading && items.length === 0 ? (
          <div className="flex flex-col items-center justify-center py-24 gap-3">
            <div className="w-8 h-8 rounded-full border-2 border-sky-500 border-t-transparent animate-spin" />
            <p className="text-[13px] font-semibold text-slate-400">جاري تحميل أحدث الحلقات...</p>
          </div>
        ) : error && items.length === 0 ? (
          <div className="flex flex-col items-center justify-center py-24 gap-3">
            <p className="text-[13px] font-semibold text-slate-400">{error}</p>
            <button
              onClick={() => void load(true)}
              className="px-4 py-2.5 rounded-xl bg-[#0284c7] text-white text-[12px] font-bold"
            >
              إعادة المحاولة
            </button>
          </div>
        ) : visibleItems.length === 0 ? (
          <div className="flex flex-col items-center justify-center py-24 gap-3 text-slate-400">
            <Calendar className="w-10 h-10 opacity-40" />
            <p className="text-[13px] font-semibold">لا توجد حلقات ضمن هذا التصنيف.</p>
          </div>
        ) : (
          <div className="grid grid-cols-3 sm:grid-cols-4 md:grid-cols-5 lg:grid-cols-6 gap-2.5">
            {visibleItems.map((item, idx) => (
              <Link
                key={`${item.source}-${item.animeId || item.anslayerId || item.awAnimeId}-${item.episode}-${idx}`}
                href={watchHref(item)}
              >
                <div className="flex flex-col cursor-pointer group active:scale-[0.97] transition-transform">
                  <div
                    className="relative w-full aspect-[1/1.48] rounded-[16px] overflow-hidden bg-[#0f172a]"
                    style={{ border: "1px solid rgba(255,255,255,0.08)" }}
                  >
                    {item.cover ? (
                      <img
                        src={item.cover}
                        alt={item.name || ""}
                        className="w-full h-full object-cover"
                        loading="lazy"
                        onError={(e) => {
                          const target = e.currentTarget;
                          const fallback = item.animeId
                            ? `https://img.anili.st/media/${item.animeId}`
                            : "";
                          if (fallback && target.src !== fallback) {
                            target.src = fallback;
                          } else {
                            target.style.display = "none";
                          }
                        }}
                      />
                    ) : (
                      <div className="w-full h-full flex items-center justify-center bg-[#0f172a]">
                        <Tv className="w-7 h-7 text-slate-600" />
                      </div>
                    )}
                    <div
                      className="absolute inset-x-0 bottom-0 h-16 pointer-events-none"
                      style={{
                        background: "linear-gradient(to top, rgba(0,0,0,0.88), transparent)",
                      }}
                    />
                    <div
                      className="absolute top-2 right-2 px-2.5 py-0.5 rounded-full text-[10px] font-bold text-white"
                      style={{ backgroundColor: "#0284c7" }}
                    >
                      حلقة {item.episode}
                    </div>
                    {item.averageScore != null && filter === "top" && (
                      <div
                        className="absolute top-2 left-2 flex items-center gap-1 px-1.5 py-0.5 rounded-[10px] text-[9px] font-bold text-white"
                        style={{ backgroundColor: "rgba(0,0,0,0.68)" }}
                      >
                        <Star className="w-2.5 h-2.5 text-yellow-300 fill-yellow-300" />
                        <span>{(item.averageScore / 10).toFixed(1)}</span>
                      </div>
                    )}
                    <span
                      className="absolute right-2 bottom-1.5 text-[9.5px] font-bold text-slate-200 truncate max-w-[90%]"
                      style={{ textShadow: "0 1px 3px rgba(0,0,0,0.9)" }}
                    >
                      {timeAgo(item.updatedAt)}
                    </span>
                  </div>
                  <div className="pt-1.5 px-0.5 text-right">
                    <p className="text-[12px] font-bold text-slate-50 truncate">
                      {item.titleAr || item.name}
                    </p>
                    <p className="text-[10px] font-semibold text-slate-400 truncate mt-0.5">
                      {item.english || item.romaji || item.name}
                    </p>
                  </div>
                </div>
              </Link>
            ))}
          </div>
        )}
      </div>
    </main>
  );
}
